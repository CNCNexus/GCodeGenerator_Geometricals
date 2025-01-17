from tkSimpleDialog import *
from Tkinter import *
from tkFont import Font
from math import *
import PIL.Image
import PIL.ImageTk
from GeometricalFrame import *

import tkMessageBox
import os

CR = "\n"


#----------------------------------------------------------------------------
#
# This class define your GCode generator
#
# It is a subclass from GeometricalFrame and provide a couple of functionalities
# like an image frame, a standard input entries frame, your "own" entries Frame
# and standard Buttons
#
# Copy this file into your your own file. Typical filenames are <kind shape>
# like ContourArc or ContourRect or PocketArc, ...
#
#
#
#----------------------------------------------------------------------------
class PocketCircle(GeometricalFrame):

    #
    # define your own images to describe your GCode-Generator
    def init(self):
        path = "/Users/bernhardklein/Public/local-workspace/python/geometricals/GCodeGenerator_Geometricals/"
        path = "./"
        self.__imageNames = [
            # left down
            path + "img/pocket/PocketCircle.005.png"
        ]

    #-------------------------------------------------------------
    # change image, if an other center point was used
    #-------------------------------------------------------------
    def _changeImage(self, value):
        print len(self.__imageNames)
        i = int(value) - 1
        if (i >= 5): i = 4

        p = self.__imageNames[i]
        self.img = PIL.Image.open(p)
        self.photo = PIL.ImageTk.PhotoImage(self.img)
        Label(
            self.frmImage, image=self.photo).grid(
                row=0, column=0, sticky=W + E + N + S, columnspan=2)

    #-------------------------------------------------------------
    # her you should insert your own widgets which are important
    # for generating your own GCode
    #-------------------------------------------------------------
    def _frmIndividualContent(self):
        self.init()
        row = 0
        #choices = [1,2,3]
        choices = [1]

        self.__CC = StringVar()
        self.__CC.set(choices[0])
        self._changeImage(self.__CC.get())
        # new in V012.5 --
        self.setMaterialDict(self.selectedMaterial.get())
        #-----------------
        Label(
            self.frmButtonsIndividualContent, text='Coordinate Center').grid(
                row=row, column=0, sticky=W)
        OptionMenu(
            self.frmButtonsIndividualContent,
            self.__CC,
            *choices,
            command=self._changeImage).grid(
                row=row, column=1)

        row += 1
        self.__unit = StringVar()
        self.__unit.set("G21")
        Label(
            self.frmButtonsIndividualContent, text='Unit').grid(
                row=row, column=0, sticky=W)
        ttk.Radiobutton(
            self.frmButtonsIndividualContent,
            text="mm",
            variable=self.__unit,
            value="G21").grid(
                row=row, column=1, sticky=W)
        ttk.Radiobutton(
            self.frmButtonsIndividualContent,
            text="inch",
            variable=self.__unit,
            value="G20").grid(
                row=row, column=2, sticky=W)

        row += 1
        self.__dir = StringVar()
        self.__dir.set("G02")
        Label(
            self.frmButtonsIndividualContent, text='Contour direction').grid(
                row=row, column=0, sticky=W)
        ttk.Radiobutton(
            self.frmButtonsIndividualContent,
            text="CW (G02)",
            variable=self.__dir,
            value="G02").grid(
                row=row, column=1, sticky=W)
        ttk.Radiobutton(
            self.frmButtonsIndividualContent,
            text="CCW (G03)",
            variable=self.__dir,
            value=1).grid(
                row=row, column=2, sticky=W)

        row += 1
        self.tooldia = StringVar(value="6.0")
        self.__stepover = StringVar(value="50")
        Label(
            self.frmButtonsIndividualContent, text="Tool diameter").grid(
                row=row, column=0, sticky=W)
        FloatEntry(
            self.frmButtonsIndividualContent,
            width=10,
            mandatory=False,
            textvariable=self.tooldia).grid(
                row=row, column=1, sticky=W)
        Label(
            self.frmButtonsIndividualContent, text="Stepover tooldia %").grid(
                row=row, column=2, sticky=W)
        FloatEntry(
            self.frmButtonsIndividualContent,
            width=10,
            textvariable=self.__stepover,
            mandatory=False).grid(
                row=row, column=3, sticky=W)

        # #row += 1
        # self.__radius = StringVar(value="10.0")
        # Label(self.frmButtonsIndividualContent, text="Edge radius (R)").grid(
        #     row=row, column=2, sticky=W)
        # FloatEntry(self.frmButtonsIndividualContent, width=10, mandatory=False,
        #     textvariable=self.__radius).grid(row=row, column=3, sticky=W)

        row += 1
        self.__centerX = StringVar(value="0.0")
        self.__centerY = StringVar(value="0.0")
        Label(
            self.frmButtonsIndividualContent, text='Center X').grid(
                row=row, column=0, sticky=W)
        Label(
            self.frmButtonsIndividualContent, text='Center Y').grid(
                row=row, column=2, sticky=W)
        FloatEntry(
            self.frmButtonsIndividualContent,
            width=10,
            mandatory=True,
            textvariable=self.__centerX).grid(
                row=row, column=1, sticky=W)
        FloatEntry(
            self.frmButtonsIndividualContent,
            width=10,
            mandatory=True,
            textvariable=self.__centerY).grid(
                row=row, column=3, sticky=W)

        row += 1
        self.__radiusOuter = StringVar(value="30.0")
        self.__radiusInner = StringVar(value="0.0")
        Label(
            self.frmButtonsIndividualContent, text="Radius outer circle").grid(
                row=row, column=0, sticky=W)
        Label(
            self.frmButtonsIndividualContent, text="Radius inner").grid(
                row=row, column=2, sticky=W)
        FloatEntry(
            self.frmButtonsIndividualContent,
            width=5,
            textvariable=self.__radiusOuter).grid(
                row=row, column=1, sticky=W)
        FloatEntry(
            self.frmButtonsIndividualContent,
            width=5,
            textvariable=self.__radiusInner).grid(
                row=row, column=3, sticky=W)

        row += 1
        self.__depthtotal = StringVar(value="-1.5")
        self.__depthstep = StringVar(value="-0.5")
        Label(
            self.frmButtonsIndividualContent, text="Total depth").grid(
                row=row, column=0, sticky=W)
        Label(
            self.frmButtonsIndividualContent,
            text="depth cutting per step").grid(
                row=row, column=2, sticky=W)
        FloatEntry(
            self.frmButtonsIndividualContent,
            width=5,
            textvariable=self.__depthtotal,
            mandatory=True).grid(
                row=row, column=1, sticky=W)
        FloatEntry(
            self.frmButtonsIndividualContent,
            width=5,
            textvariable=self.__depthstep,
            mandatory=True).grid(
                row=row, column=3, sticky=W)

        row += 1
        self.__speed_XY_G00 = StringVar(value=self._standardGCodeSeq[
            "TRAVEL_SPEEDXYZ"][0])
        self.__speed_Z_G00 = StringVar(value=self._standardGCodeSeq[
            "TRAVEL_SPEEDXYZ"][2])
        Label(
            self.frmButtonsIndividualContent, text="Feed (G00 X/Y)").grid(
                row=row, column=0, sticky=W)
        Label(
            self.frmButtonsIndividualContent, text="Feed (G00 Z)").grid(
                row=row, column=2, sticky=W)
        FloatEntry(
            self.frmButtonsIndividualContent,
            width=5,
            textvariable=self.__speed_XY_G00,
            mandatory=False).grid(
                row=row, column=1, sticky=W)
        FloatEntry(
            self.frmButtonsIndividualContent,
            width=5,
            textvariable=self.__speed_Z_G00,
            mandatory=False).grid(
                row=row, column=3, sticky=W)

        row += 1
        self.speed_XY_G02G03 = StringVar(value="80.0")
        self.speed_Z_G01 = StringVar(value="50.0")
        Label(
            self.frmButtonsIndividualContent, text="Feed (G01 X/Y)").grid(
                row=row, column=0, sticky=W)
        Label(
            self.frmButtonsIndividualContent, text="Feed (G01 Z)").grid(
                row=row, column=2, sticky=W)
        FloatEntry(
            self.frmButtonsIndividualContent,
            width=5,
            textvariable=self.speed_XY_G02G03,
            mandatory=False).grid(
                row=row, column=1, sticky=W)
        FloatEntry(
            self.frmButtonsIndividualContent,
            width=5,
            textvariable=self.speed_Z_G01,
            mandatory=False).grid(
                row=row, column=3, sticky=W)

        row += 1
        self.__start_Z = StringVar(value=self._standardGCodeSeq["ZAXIS"][0])
        Label(
            self.frmButtonsIndividualContent, text="Start Z").grid(
                row=row, column=0, sticky=W)
        FloatEntry(
            self.frmButtonsIndividualContent,
            width=10,
            textvariable=self.__start_Z,
            mandatory=False).grid(
                row=row, column=1, sticky=W)

        #row += 1
        self.__safety_Z = StringVar(value=self._standardGCodeSeq["ZAXIS"][1])
        Label(
            self.frmButtonsIndividualContent, text="Safety Z").grid(
                row=row, column=2, sticky=W)
        FloatEntry(
            self.frmButtonsIndividualContent,
            width=10,
            textvariable=self.__safety_Z,
            mandatory=False).grid(
                row=row, column=3, sticky=W)

        #-----------------------------------------------------
        self.upateMaterialFields(self.material.current())
        self.frmButtonsIndividualContent.pack(expand=True, fill=BOTH)
        pass

    def userInputValidation(self):
        '''
        this class is used to validate necessary user input fields
        '''
        print("userInputValidation")
        radii = (float(self.__radiusOuter.get()),
                 float(self.__radiusInner.get()))
        toolDia = float(self.tooldia.get())
        stepover = float(self.__stepover.get())

        if (radii[0] <= 0.0):
            self.MessageBox(
                state="ERROR",
                title="ERROR",
                text="outer radius should be greater 0.0")
            return False

        if (radii[1] < 0.0):
            self.MessageBox(
                state="ERROR",
                title="ERROR",
                text="inner radius should be greater or equal 0.0")
            return False

        if (radii[0] < radii[1]):
            self.MessageBox(
                state="ERROR",
                title="ERROR",
                text="outer radius should be greater inner radius")
            return False

        if (toolDia <= 0.0 or toolDia > radii[0]):
            self.MessageBox(
                state="ERROR",
                title="ERROR",
                text=
                "Tool diamater should be greater than 0.0 and less than outer radius"
            )
            return False

        if (stepover < 30 or stepover > 90):
            self.MessageBox(
                state="ERROR",
                title="ERROR",
                text="Stepover should be in range 30-90%")
            return False

        if (abs(float(self.__depthtotal.get())) < abs(
                float(self.__depthstep.get()))):
            self.MessageBox(
                state="ERROR",
                title="ERROR",
                text="Total depth should be deeper or equal depth step")
            return False

        if (float(self.__start_Z.get()) <= 0.0
                or float(self.__safety_Z.get()) <= 0.0):
            self.MessageBox(
                state="ERROR",
                title="ERROR",
                text="Z parameter values should be greater than 0.0")
            return False

        if (float(self.tooldia.get()) <= 0.0):
            self.MessageBox(
                state="ERROR",
                title="ERROR",
                text="Tooldiamter should greater than 0.0")
            return False

        return True

    #-------------------------------------------------------------
    # here you generate your GCode.
    # some of this code should be used every time.
    # insert your code bettween marked rows
    #-------------------------------------------------------------
    def generateGCode(self):
        '''
        for a pocket in an rounded rectangle, even what user set as reference point, we
        recalculate it to inner contour and start with milling on outer line
        of this contour until we touch outer line contour
        '''
        cPoint = (float(self.__centerX.get()), float(self.__centerY.get()))
        radii = (float(self.__radiusOuter.get()),
                 float(self.__radiusInner.get()))

        toolDia = float(self.tooldia.get())

        stepover = float(self.__stepover.get())
        stepover = round(toolDia - (float(toolDia * stepover) / 100), 1)

        zPos = {
            "safetyZ": float(self.__safety_Z.get()),
            "startZ": float(self.__start_Z.get())
        }

        depth = (
            float(self.__depthtotal.get()),
            float(self.__depthstep.get()),
        )

        dir = self.__dir.get()

        feeds = {
            "XYG0": float(self.__speed_XY_G00.get()),
            "XYGn": float(self.speed_XY_G02G03.get()),
            "ZG0": float(self.__speed_Z_G00.get()),
            "ZGn": float(self.speed_Z_G01.get())
        }
        gc = ""
        gc += self.getGCode_Preamble()
        # set Unit
        gc += self.__unit.get() + CR
        # set Z axis
        gc += CR + "(set Z saftey position)" + CR
        gc += "G00 Z{0:08.3f} F{1:05.1f} {2}".format(zPos["safetyZ"],
                                                     feeds["ZG0"], CR)

        #
        # even which center point user choosed, we start on
        # center point object - left down (5)

        # set start postion X/Y
        gc += CR + "(set center position)" + CR
        gc += "G00 X{0:08.3f} Y{1:08.3f} F{2:05.1f} {3}".format(
            cPoint[0], cPoint[1], feeds["XYG0"], CR)
        #
        # generate as many shape steps are needed until depthtotal is reached
        # cut an Arc
        step = float(self.__depthstep.get())
        #        depth = float(self.__depthtotal.get())
        z = step
        loop = ""
        gc += CR + "(------- start shape -------------)" + CR

        # start with shape
        gc += CR + "(move Z-axis to start postion near surface)" + CR
        gc += "G00 Z{0:08.3f} F{1:05.1f} {2}".format(zPos["startZ"],
                                                     feeds["ZG0"], CR)
        spaces = "".ljust(2)
        #----------------------------------------------------------------------
        # This loop asume, that you try to mill into your object.
        # if not needed for your shape, remove this part and rewrite
        #----------------------------------------------------------------------
        #

        # we do not use G41/G42 ! - we calculate it for G02 vecorts
        # we start with inner contour and from this ContourRect
        # left outside - in this case we have an offset of half tool dia
        offset = toolDia / 2.0
        toPosition = radii[0] - radii[1]
        currentPosition = offset
        pocketMillTracks = []
        x = 1
        finished = False
        #
        # start at "3 a clock" position
        cPoint = (cPoint[0] + radii[0], cPoint[1])
        while (not finished):
            print(
                "cPointX {} oRadius {} iRadius {} toPosition {} currentPosition {}"
                .format(cPoint[0], radii[0], radii[1], toPosition,
                        currentPosition))
            if (currentPosition + (toolDia / 2.0) >= toPosition):
                # oh, we over shot, we have to reduce offset to a value
                # which is the difference between width - currentPosition
                currentPosition += (toPosition - currentPosition) - (
                    toolDia / 2.0)
                # this is our last track
                finished = True


#    def __createPocketTracks(self, cPoint, r, feeds, depth, offset=0.0 ):
            t = self.__createPocketTracks(
                cPoint,
                radii[0],  # outer radius
                feeds,
                z,
                currentPosition)
            pocketMillTracks.append(t)
            x += 1
            currentPosition += stepover

        #
        # it's time to generate the real gCode
        #
        # Every round we mill all tracks in the same detph
        # than we increase depth as long as we reached total depthStep

        gc += CR + "(-- START DEPTH Loop --)" + CR
        z = 0.0
        while (abs(z) < abs(depth[0])):
            # set next Z depth
            if ((abs(depth[0]) - abs(z)) < abs(depth[1])):
                # this happens, if a small amount is the rest
                z -= (abs(depth[0]) - abs(z))
                print "rest Z: {}".format(z)
            else:
                z -= abs(depth[1])
                print "new Z: {}".format(z)

            loop += CR
            gc += spaces + "(-- START Track Loop  --)" + CR
            for t in pocketMillTracks:
                # every track contain a fixed number of separate gCode
                # commands
                spaces2 = spaces.ljust(2)
                # set new depth
                gc += CR + spaces2 + "(-- next depth z {0:08.3f} --){1}".format(
                    z, CR)
                for cmd in t:
                    #
                    # combine all parameter to one command
                    gc += spaces2
                    print cmd
                    #
                    # pattern to recognize special command set
                    regFloat = r"{\d:\d+\.\d+f}"
                    for p in range(len(cmd)):
                        if isinstance(cmd[p], basestring):
                            x = re.findall(regFloat, cmd[p], re.UNICODE)
                            if (len(x) != 0):
                                #print "RegFloat found"
                                gc += cmd[p].format(float(z))
                            else:
                                # normal string
                                gc += " " + cmd[p]
                        if isinstance(cmd[p], float):
                            gc += "{0:08.3f}".format(cmd[p])
                        if isinstance(cmd[p], int):
                            gc += "{0:05d}".format(cmd[p])
                    gc += CR

            gc += spaces + "(-- END Track Loop  --)" + CR
            pass

        gc += "(-- END DEPTH loop --)" + CR
        gc += self.getGCode_Homeing(cPoint[0], cPoint[1], zPos["safetyZ"],
                                    feeds["XYG0"])
        gc += self.getGCode_Postamble()
        gc += CR
        return gc

    def __createPocketTracks(self, cPoint, r, feeds, depth, offset=0.0):
        '''
        This method create for a track all needed GCode parameters and save
        them in a list. This list is used (afterwards) to create the real
        GCode commands

        This method is called in a loop with a new offset. The offset describes
        next millings position
        '''
        x = cPoint[0]
        y = cPoint[1]

        # sequence to mill a rounded rectangle
        seq = [
            #start
            ("G00", "X", x - offset, "Y", y, "F", feeds["XYG0"]),
            # G01 Zxxx Fyyy
            (
                "G01",
                "Z",
                "{0:08.3f}",
                "F",
                feeds["ZGn"],
            ),
            # G02, F X Y I
            ("G02", "I", -(r - offset), "F", feeds["XYGn"]),
        ]
        #print "{1}---- offset {0} -----".format(offset,CR)
        print seq
        return seq
