%
(--------------------------)
(          __              )
(  _(\    |@@|             )
( (__/\__ \--/ __          )
(    \___|----|  |   __    )
(        \ }{ /\ )_ / _\   )
(        /\__/\ \__O (__   )
(       (--/\--)    \__/   )
(       _)(  )(_           )
(      `---''---`          )
(    (c) by LunaX 2018     )
(--------------------------)
        

(set preamble)
G21 G90 G64 G17 G40 G49
G21

(set Z saftey position)
G00 Z0010.000 F200.0 

(set center position)
G00 X0000.000 Y0000.000 F200.0 

(------- start shape -------------)

(move Z-axis to start postion near surface)
G00 Z0003.000 F200.0 
(-- Step #001 Z-000.200 --) 
  G01 X0000.000 Y0000.000 F080.0 
  G01 Z-000.200 F050.0 (relative position)
  G01 G90 X0000.000 F080.0 (absolute position) 
  G02 X0001.200 I0001.200 
  G02 X-002.400 I-001.800 
  G02 X0002.400 I0002.400 
  G02 X-003.600 I-003.000 
  G02 X0003.600 I0003.600 
  G02 X-004.800 I-004.200 
  G02 X0004.800 I0004.800 
  G02 X-006.000 I-005.400 
  G02 X0006.000 I0006.000 
  G02 X-007.200 I-006.600 
  G02 X0007.200 I0007.200 
  G02 X-008.400 I-007.800 
  G02 X0008.400 I0008.400 
  G02 X-009.600 I-009.000 
  G02 X0009.600 I0009.600 
  G02 X-010.800 I-010.200 
  G02 X0010.800 I0010.800 
  G02 X-012.000 I-011.400 
  G02 X0012.000 I0012.000 
  G02 X-013.200 I-012.600 
  G02 X0013.200 I0013.200 
  G02 X-014.400 I-013.800 
  G02 X0014.400 I0014.400 
  G02 X-015.600 I-015.000 
  G02 X0015.600 I0015.600 
  G02 X-016.800 I-016.200 
  G02 X0016.800 I0016.800 
  G02 X-018.000 I-017.400 
  G02 X0018.000 I0018.000 
  G02 X-019.200 I-018.600 
  G02 X0019.200 I0019.200 
  G02 X-020.400 I-019.800 
  G02 X0020.400 I0020.400 
  G02 X-021.600 I-021.000 
  G02 X0021.600 I0021.600 
  G02 X-022.800 I-022.200 
  G02 X0022.800 I0022.800 
  G02 X-024.000 I-023.400 
  (-- END current depth --)
(-- Step #002 Z-000.200 --) 
  G01 X0000.000 Y0000.000 F080.0 
  G01 G91 Z-000.200 F050.0 (relative position)
  G01 G90 X0000.000 F080.0 (absolute position) 
  G02 X0001.200 I0001.200 
  G02 X-002.400 I-001.800 
  G02 X0002.400 I0002.400 
  G02 X-003.600 I-003.000 
  G02 X0003.600 I0003.600 
  G02 X-004.800 I-004.200 
  G02 X0004.800 I0004.800 
  G02 X-006.000 I-005.400 
  G02 X0006.000 I0006.000 
  G02 X-007.200 I-006.600 
  G02 X0007.200 I0007.200 
  G02 X-008.400 I-007.800 
  G02 X0008.400 I0008.400 
  G02 X-009.600 I-009.000 
  G02 X0009.600 I0009.600 
  G02 X-010.800 I-010.200 
  G02 X0010.800 I0010.800 
  G02 X-012.000 I-011.400 
  G02 X0012.000 I0012.000 
  G02 X-013.200 I-012.600 
  G02 X0013.200 I0013.200 
  G02 X-014.400 I-013.800 
  G02 X0014.400 I0014.400 
  G02 X-015.600 I-015.000 
  G02 X0015.600 I0015.600 
  G02 X-016.800 I-016.200 
  G02 X0016.800 I0016.800 
  G02 X-018.000 I-017.400 
  G02 X0018.000 I0018.000 
  G02 X-019.200 I-018.600 
  G02 X0019.200 I0019.200 
  G02 X-020.400 I-019.800 
  G02 X0020.400 I0020.400 
  G02 X-021.600 I-021.000 
  G02 X0021.600 I0021.600 
  G02 X-022.800 I-022.200 
  G02 X0022.800 I0022.800 
  G02 X-024.000 I-023.400 
  (-- END current depth --)
(-- Step #003 Z-000.200 --) 
  G01 X0000.000 Y0000.000 F080.0 
  G01 G91 Z-000.200 F050.0 (relative position)
  G01 G90 X0000.000 F080.0 (absolute position) 
  G02 X0001.200 I0001.200 
  G02 X-002.400 I-001.800 
  G02 X0002.400 I0002.400 
  G02 X-003.600 I-003.000 
  G02 X0003.600 I0003.600 
  G02 X-004.800 I-004.200 
  G02 X0004.800 I0004.800 
  G02 X-006.000 I-005.400 
  G02 X0006.000 I0006.000 
  G02 X-007.200 I-006.600 
  G02 X0007.200 I0007.200 
  G02 X-008.400 I-007.800 
  G02 X0008.400 I0008.400 
  G02 X-009.600 I-009.000 
  G02 X0009.600 I0009.600 
  G02 X-010.800 I-010.200 
  G02 X0010.800 I0010.800 
  G02 X-012.000 I-011.400 
  G02 X0012.000 I0012.000 
  G02 X-013.200 I-012.600 
  G02 X0013.200 I0013.200 
  G02 X-014.400 I-013.800 
  G02 X0014.400 I0014.400 
  G02 X-015.600 I-015.000 
  G02 X0015.600 I0015.600 
  G02 X-016.800 I-016.200 
  G02 X0016.800 I0016.800 
  G02 X-018.000 I-017.400 
  G02 X0018.000 I0018.000 
  G02 X-019.200 I-018.600 
  G02 X0019.200 I0019.200 
  G02 X-020.400 I-019.800 
  G02 X0020.400 I0020.400 
  G02 X-021.600 I-021.000 
  G02 X0021.600 I0021.600 
  G02 X-022.800 I-022.200 
  G02 X0022.800 I0022.800 
  G02 X-024.000 I-023.400 
  (-- END current depth --)
(-- Step #004 Z-000.200 --) 
  G01 X0000.000 Y0000.000 F080.0 
  G01 G91 Z-000.200 F050.0 (relative position)
  G01 G90 X0000.000 F080.0 (absolute position) 
  G02 X0001.200 I0001.200 
  G02 X-002.400 I-001.800 
  G02 X0002.400 I0002.400 
  G02 X-003.600 I-003.000 
  G02 X0003.600 I0003.600 
  G02 X-004.800 I-004.200 
  G02 X0004.800 I0004.800 
  G02 X-006.000 I-005.400 
  G02 X0006.000 I0006.000 
  G02 X-007.200 I-006.600 
  G02 X0007.200 I0007.200 
  G02 X-008.400 I-007.800 
  G02 X0008.400 I0008.400 
  G02 X-009.600 I-009.000 
  G02 X0009.600 I0009.600 
  G02 X-010.800 I-010.200 
  G02 X0010.800 I0010.800 
  G02 X-012.000 I-011.400 
  G02 X0012.000 I0012.000 
  G02 X-013.200 I-012.600 
  G02 X0013.200 I0013.200 
  G02 X-014.400 I-013.800 
  G02 X0014.400 I0014.400 
  G02 X-015.600 I-015.000 
  G02 X0015.600 I0015.600 
  G02 X-016.800 I-016.200 
  G02 X0016.800 I0016.800 
  G02 X-018.000 I-017.400 
  G02 X0018.000 I0018.000 
  G02 X-019.200 I-018.600 
  G02 X0019.200 I0019.200 
  G02 X-020.400 I-019.800 
  G02 X0020.400 I0020.400 
  G02 X-021.600 I-021.000 
  G02 X0021.600 I0021.600 
  G02 X-022.800 I-022.200 
  G02 X0022.800 I0022.800 
  G02 X-024.000 I-023.400 
  (-- END current depth --)
(-- Step #005 Z-000.200 --) 
  G01 X0000.000 Y0000.000 F080.0 
  G01 G91 Z-000.200 F050.0 (relative position)
  G01 G90 X0000.000 F080.0 (absolute position) 
  G02 X0001.200 I0001.200 
  G02 X-002.400 I-001.800 
  G02 X0002.400 I0002.400 
  G02 X-003.600 I-003.000 
  G02 X0003.600 I0003.600 
  G02 X-004.800 I-004.200 
  G02 X0004.800 I0004.800 
  G02 X-006.000 I-005.400 
  G02 X0006.000 I0006.000 
  G02 X-007.200 I-006.600 
  G02 X0007.200 I0007.200 
  G02 X-008.400 I-007.800 
  G02 X0008.400 I0008.400 
  G02 X-009.600 I-009.000 
  G02 X0009.600 I0009.600 
  G02 X-010.800 I-010.200 
  G02 X0010.800 I0010.800 
  G02 X-012.000 I-011.400 
  G02 X0012.000 I0012.000 
  G02 X-013.200 I-012.600 
  G02 X0013.200 I0013.200 
  G02 X-014.400 I-013.800 
  G02 X0014.400 I0014.400 
  G02 X-015.600 I-015.000 
  G02 X0015.600 I0015.600 
  G02 X-016.800 I-016.200 
  G02 X0016.800 I0016.800 
  G02 X-018.000 I-017.400 
  G02 X0018.000 I0018.000 
  G02 X-019.200 I-018.600 
  G02 X0019.200 I0019.200 
  G02 X-020.400 I-019.800 
  G02 X0020.400 I0020.400 
  G02 X-021.600 I-021.000 
  G02 X0021.600 I0021.600 
  G02 X-022.800 I-022.200 
  G02 X0022.800 I0022.800 
  G02 X-024.000 I-023.400 
  (-- END current depth --)
(-- Step #006 Z-000.200 --) 
  G01 X0000.000 Y0000.000 F080.0 
  G01 G91 Z-000.200 F050.0 (relative position)
  G01 G90 X0000.000 F080.0 (absolute position) 
  G02 X0001.200 I0001.200 
  G02 X-002.400 I-001.800 
  G02 X0002.400 I0002.400 
  G02 X-003.600 I-003.000 
  G02 X0003.600 I0003.600 
  G02 X-004.800 I-004.200 
  G02 X0004.800 I0004.800 
  G02 X-006.000 I-005.400 
  G02 X0006.000 I0006.000 
  G02 X-007.200 I-006.600 
  G02 X0007.200 I0007.200 
  G02 X-008.400 I-007.800 
  G02 X0008.400 I0008.400 
  G02 X-009.600 I-009.000 
  G02 X0009.600 I0009.600 
  G02 X-010.800 I-010.200 
  G02 X0010.800 I0010.800 
  G02 X-012.000 I-011.400 
  G02 X0012.000 I0012.000 
  G02 X-013.200 I-012.600 
  G02 X0013.200 I0013.200 
  G02 X-014.400 I-013.800 
  G02 X0014.400 I0014.400 
  G02 X-015.600 I-015.000 
  G02 X0015.600 I0015.600 
  G02 X-016.800 I-016.200 
  G02 X0016.800 I0016.800 
  G02 X-018.000 I-017.400 
  G02 X0018.000 I0018.000 
  G02 X-019.200 I-018.600 
  G02 X0019.200 I0019.200 
  G02 X-020.400 I-019.800 
  G02 X0020.400 I0020.400 
  G02 X-021.600 I-021.000 
  G02 X0021.600 I0021.600 
  G02 X-022.800 I-022.200 
  G02 X0022.800 I0022.800 
  G02 X-024.000 I-023.400 
  (-- END current depth --)
(-- Step #007 Z-000.050 --) 
  G01 X0000.000 Y0000.000 F080.0 
  G01 G91 Z-000.050 F050.0 (relative position)
  G01 G90 X0000.000 F080.0 (absolute position) 
  G02 X0001.200 I0001.200 
  G02 X-002.400 I-001.800 
  G02 X0002.400 I0002.400 
  G02 X-003.600 I-003.000 
  G02 X0003.600 I0003.600 
  G02 X-004.800 I-004.200 
  G02 X0004.800 I0004.800 
  G02 X-006.000 I-005.400 
  G02 X0006.000 I0006.000 
  G02 X-007.200 I-006.600 
  G02 X0007.200 I0007.200 
  G02 X-008.400 I-007.800 
  G02 X0008.400 I0008.400 
  G02 X-009.600 I-009.000 
  G02 X0009.600 I0009.600 
  G02 X-010.800 I-010.200 
  G02 X0010.800 I0010.800 
  G02 X-012.000 I-011.400 
  G02 X0012.000 I0012.000 
  G02 X-013.200 I-012.600 
  G02 X0013.200 I0013.200 
  G02 X-014.400 I-013.800 
  G02 X0014.400 I0014.400 
  G02 X-015.600 I-015.000 
  G02 X0015.600 I0015.600 
  G02 X-016.800 I-016.200 
  G02 X0016.800 I0016.800 
  G02 X-018.000 I-017.400 
  G02 X0018.000 I0018.000 
  G02 X-019.200 I-018.600 
  G02 X0019.200 I0019.200 
  G02 X-020.400 I-019.800 
  G02 X0020.400 I0020.400 
  G02 X-021.600 I-021.000 
  G02 X0021.600 I0021.600 
  G02 X-022.800 I-022.200 
  G02 X0022.800 I0022.800 
  G02 X-024.000 I-023.400 
  (-- END current depth --)
(-- END --)
G01 Z0010.000 F100.0 
G01 X0000.000 Y0000.000 F100.0 
G00 Z10 F100 
M2

%
