%

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
G00 X-050.000 Y-035.000 F200.0 

(-- START DEPTH Loop --)
  (-- START Track Loop  --)

  (-- next depth z -000.500 --)
   G01 X-047.000 Y-032.000 F0080.000
   G01 Z-000.500 F0050.000
   G01 X-047.000 Y0032.000 F0080.000
   G01 X0047.000 Y0032.000 F0080.000
   G01 X0047.000 Y-032.000 F0080.000
   G01 X-047.000 Y-032.000 F0080.000

  (-- next depth z -000.500 --)
   G01 X-045.500 Y-030.500 F0080.000
   G01 Z-000.500 F0050.000
   G01 X-045.500 Y0030.500 F0080.000
   G01 X0045.500 Y0030.500 F0080.000
   G01 X0045.500 Y-030.500 F0080.000
   G01 X-045.500 Y-030.500 F0080.000

  (-- next depth z -000.500 --)
   G01 X-044.000 Y-029.000 F0080.000
   G01 Z-000.500 F0050.000
   G01 X-044.000 Y0029.000 F0080.000
   G01 X0044.000 Y0029.000 F0080.000
   G01 X0044.000 Y-029.000 F0080.000
   G01 X-044.000 Y-029.000 F0080.000

  (-- next depth z -000.500 --)
   G01 X-042.500 Y-027.500 F0080.000
   G01 Z-000.500 F0050.000
   G01 X-042.500 Y0027.500 F0080.000
   G01 X0042.500 Y0027.500 F0080.000
   G01 X0042.500 Y-027.500 F0080.000
   G01 X-042.500 Y-027.500 F0080.000

  (-- next depth z -000.500 --)
   G01 X-041.000 Y-026.000 F0080.000
   G01 Z-000.500 F0050.000
   G01 X-041.000 Y0026.000 F0080.000
   G01 X0041.000 Y0026.000 F0080.000
   G01 X0041.000 Y-026.000 F0080.000
   G01 X-041.000 Y-026.000 F0080.000

  (-- next depth z -000.500 --)
   G01 X-039.500 Y-024.500 F0080.000
   G01 Z-000.500 F0050.000
   G01 X-039.500 Y0024.500 F0080.000
   G01 X0039.500 Y0024.500 F0080.000
   G01 X0039.500 Y-024.500 F0080.000
   G01 X-039.500 Y-024.500 F0080.000

  (-- next depth z -000.500 --)
   G01 X-038.000 Y-023.000 F0080.000
   G01 Z-000.500 F0050.000
   G01 X-038.000 Y0023.000 F0080.000
   G01 X0038.000 Y0023.000 F0080.000
   G01 X0038.000 Y-023.000 F0080.000
   G01 X-038.000 Y-023.000 F0080.000

  (-- next depth z -000.500 --)
   G01 X-036.500 Y-021.500 F0080.000
   G01 Z-000.500 F0050.000
   G01 X-036.500 Y0021.500 F0080.000
   G01 X0036.500 Y0021.500 F0080.000
   G01 X0036.500 Y-021.500 F0080.000
   G01 X-036.500 Y-021.500 F0080.000

  (-- next depth z -000.500 --)
   G01 X-035.000 Y-020.000 F0080.000
   G01 Z-000.500 F0050.000
   G01 X-035.000 Y0020.000 F0080.000
   G01 X0035.000 Y0020.000 F0080.000
   G01 X0035.000 Y-020.000 F0080.000
   G01 X-035.000 Y-020.000 F0080.000

  (-- next depth z -000.500 --)
   G01 X-033.500 Y-018.500 F0080.000
   G01 Z-000.500 F0050.000
   G01 X-033.500 Y0018.500 F0080.000
   G01 X0033.500 Y0018.500 F0080.000
   G01 X0033.500 Y-018.500 F0080.000
   G01 X-033.500 Y-018.500 F0080.000

  (-- next depth z -000.500 --)
   G01 X-032.000 Y-017.000 F0080.000
   G01 Z-000.500 F0050.000
   G01 X-032.000 Y0017.000 F0080.000
   G01 X0032.000 Y0017.000 F0080.000
   G01 X0032.000 Y-017.000 F0080.000
   G01 X-032.000 Y-017.000 F0080.000

  (-- next depth z -000.500 --)
   G01 X-030.500 Y-015.500 F0080.000
   G01 Z-000.500 F0050.000
   G01 X-030.500 Y0015.500 F0080.000
   G01 X0030.500 Y0015.500 F0080.000
   G01 X0030.500 Y-015.500 F0080.000
   G01 X-030.500 Y-015.500 F0080.000

  (-- next depth z -000.500 --)
   G01 X-029.000 Y-014.000 F0080.000
   G01 Z-000.500 F0050.000
   G01 X-029.000 Y0014.000 F0080.000
   G01 X0029.000 Y0014.000 F0080.000
   G01 X0029.000 Y-014.000 F0080.000
   G01 X-029.000 Y-014.000 F0080.000

  (-- next depth z -000.500 --)
   G01 X-027.500 Y-012.500 F0080.000
   G01 Z-000.500 F0050.000
   G01 X-027.500 Y0012.500 F0080.000
   G01 X0027.500 Y0012.500 F0080.000
   G01 X0027.500 Y-012.500 F0080.000
   G01 X-027.500 Y-012.500 F0080.000

  (-- next depth z -000.500 --)
   G01 X-026.000 Y-011.000 F0080.000
   G01 Z-000.500 F0050.000
   G01 X-026.000 Y0011.000 F0080.000
   G01 X0026.000 Y0011.000 F0080.000
   G01 X0026.000 Y-011.000 F0080.000
   G01 X-026.000 Y-011.000 F0080.000

  (-- next depth z -000.500 --)
   G01 X-024.500 Y-009.500 F0080.000
   G01 Z-000.500 F0050.000
   G01 X-024.500 Y0009.500 F0080.000
   G01 X0024.500 Y0009.500 F0080.000
   G01 X0024.500 Y-009.500 F0080.000
   G01 X-024.500 Y-009.500 F0080.000

  (-- next depth z -000.500 --)
   G01 X-023.000 Y-008.000 F0080.000
   G01 Z-000.500 F0050.000
   G01 X-023.000 Y0008.000 F0080.000
   G01 X0023.000 Y0008.000 F0080.000
   G01 X0023.000 Y-008.000 F0080.000
   G01 X-023.000 Y-008.000 F0080.000

  (-- next depth z -000.500 --)
   G01 X-021.500 Y-006.500 F0080.000
   G01 Z-000.500 F0050.000
   G01 X-021.500 Y0006.500 F0080.000
   G01 X0021.500 Y0006.500 F0080.000
   G01 X0021.500 Y-006.500 F0080.000
   G01 X-021.500 Y-006.500 F0080.000

  (-- next depth z -000.500 --)
   G01 X-020.000 Y-005.000 F0080.000
   G01 Z-000.500 F0050.000
   G01 X-020.000 Y0005.000 F0080.000
   G01 X0020.000 Y0005.000 F0080.000
   G01 X0020.000 Y-005.000 F0080.000
   G01 X-020.000 Y-005.000 F0080.000

  (-- next depth z -000.500 --)
   G01 X-018.500 Y-003.500 F0080.000
   G01 Z-000.500 F0050.000
   G01 X-018.500 Y0003.500 F0080.000
   G01 X0018.500 Y0003.500 F0080.000
   G01 X0018.500 Y-003.500 F0080.000
   G01 X-018.500 Y-003.500 F0080.000

  (-- next depth z -000.500 --)
   G01 X-017.000 Y-002.000 F0080.000
   G01 Z-000.500 F0050.000
   G01 X-017.000 Y0002.000 F0080.000
   G01 X0017.000 Y0002.000 F0080.000
   G01 X0017.000 Y-002.000 F0080.000
   G01 X-017.000 Y-002.000 F0080.000

  (-- next depth z -000.500 --)
   G01 X-015.500 Y-000.500 F0080.000
   G01 Z-000.500 F0050.000
   G01 X-015.500 Y0000.500 F0080.000
   G01 X0015.500 Y0000.500 F0080.000
   G01 X0015.500 Y-000.500 F0080.000
   G01 X-015.500 Y-000.500 F0080.000

  (-- next depth z -000.500 --)
   G01 X-014.000 Y0001.000 F0080.000
   G01 Z-000.500 F0050.000
   G01 X-014.000 Y-001.000 F0080.000
   G01 X0014.000 Y-001.000 F0080.000
   G01 X0014.000 Y0001.000 F0080.000
   G01 X-014.000 Y0001.000 F0080.000

  (-- next depth z -000.500 --)
   G01 X-012.500 Y0002.500 F0080.000
   G01 Z-000.500 F0050.000
   G01 X-012.500 Y-002.500 F0080.000
   G01 X0012.500 Y-002.500 F0080.000
   G01 X0012.500 Y0002.500 F0080.000
   G01 X-012.500 Y0002.500 F0080.000

  (-- next depth z -000.500 --)
   G01 X-011.000 Y0004.000 F0080.000
   G01 Z-000.500 F0050.000
   G01 X-011.000 Y-004.000 F0080.000
   G01 X0011.000 Y-004.000 F0080.000
   G01 X0011.000 Y0004.000 F0080.000
   G01 X-011.000 Y0004.000 F0080.000
  (-- END Track Loop  --)
  (-- START Track Loop  --)

  (-- next depth z -001.000 --)
   G01 X-047.000 Y-032.000 F0080.000
   G01 Z-001.000 F0050.000
   G01 X-047.000 Y0032.000 F0080.000
   G01 X0047.000 Y0032.000 F0080.000
   G01 X0047.000 Y-032.000 F0080.000
   G01 X-047.000 Y-032.000 F0080.000

  (-- next depth z -001.000 --)
   G01 X-045.500 Y-030.500 F0080.000
   G01 Z-001.000 F0050.000
   G01 X-045.500 Y0030.500 F0080.000
   G01 X0045.500 Y0030.500 F0080.000
   G01 X0045.500 Y-030.500 F0080.000
   G01 X-045.500 Y-030.500 F0080.000

  (-- next depth z -001.000 --)
   G01 X-044.000 Y-029.000 F0080.000
   G01 Z-001.000 F0050.000
   G01 X-044.000 Y0029.000 F0080.000
   G01 X0044.000 Y0029.000 F0080.000
   G01 X0044.000 Y-029.000 F0080.000
   G01 X-044.000 Y-029.000 F0080.000

  (-- next depth z -001.000 --)
   G01 X-042.500 Y-027.500 F0080.000
   G01 Z-001.000 F0050.000
   G01 X-042.500 Y0027.500 F0080.000
   G01 X0042.500 Y0027.500 F0080.000
   G01 X0042.500 Y-027.500 F0080.000
   G01 X-042.500 Y-027.500 F0080.000

  (-- next depth z -001.000 --)
   G01 X-041.000 Y-026.000 F0080.000
   G01 Z-001.000 F0050.000
   G01 X-041.000 Y0026.000 F0080.000
   G01 X0041.000 Y0026.000 F0080.000
   G01 X0041.000 Y-026.000 F0080.000
   G01 X-041.000 Y-026.000 F0080.000

  (-- next depth z -001.000 --)
   G01 X-039.500 Y-024.500 F0080.000
   G01 Z-001.000 F0050.000
   G01 X-039.500 Y0024.500 F0080.000
   G01 X0039.500 Y0024.500 F0080.000
   G01 X0039.500 Y-024.500 F0080.000
   G01 X-039.500 Y-024.500 F0080.000

  (-- next depth z -001.000 --)
   G01 X-038.000 Y-023.000 F0080.000
   G01 Z-001.000 F0050.000
   G01 X-038.000 Y0023.000 F0080.000
   G01 X0038.000 Y0023.000 F0080.000
   G01 X0038.000 Y-023.000 F0080.000
   G01 X-038.000 Y-023.000 F0080.000

  (-- next depth z -001.000 --)
   G01 X-036.500 Y-021.500 F0080.000
   G01 Z-001.000 F0050.000
   G01 X-036.500 Y0021.500 F0080.000
   G01 X0036.500 Y0021.500 F0080.000
   G01 X0036.500 Y-021.500 F0080.000
   G01 X-036.500 Y-021.500 F0080.000

  (-- next depth z -001.000 --)
   G01 X-035.000 Y-020.000 F0080.000
   G01 Z-001.000 F0050.000
   G01 X-035.000 Y0020.000 F0080.000
   G01 X0035.000 Y0020.000 F0080.000
   G01 X0035.000 Y-020.000 F0080.000
   G01 X-035.000 Y-020.000 F0080.000

  (-- next depth z -001.000 --)
   G01 X-033.500 Y-018.500 F0080.000
   G01 Z-001.000 F0050.000
   G01 X-033.500 Y0018.500 F0080.000
   G01 X0033.500 Y0018.500 F0080.000
   G01 X0033.500 Y-018.500 F0080.000
   G01 X-033.500 Y-018.500 F0080.000

  (-- next depth z -001.000 --)
   G01 X-032.000 Y-017.000 F0080.000
   G01 Z-001.000 F0050.000
   G01 X-032.000 Y0017.000 F0080.000
   G01 X0032.000 Y0017.000 F0080.000
   G01 X0032.000 Y-017.000 F0080.000
   G01 X-032.000 Y-017.000 F0080.000

  (-- next depth z -001.000 --)
   G01 X-030.500 Y-015.500 F0080.000
   G01 Z-001.000 F0050.000
   G01 X-030.500 Y0015.500 F0080.000
   G01 X0030.500 Y0015.500 F0080.000
   G01 X0030.500 Y-015.500 F0080.000
   G01 X-030.500 Y-015.500 F0080.000

  (-- next depth z -001.000 --)
   G01 X-029.000 Y-014.000 F0080.000
   G01 Z-001.000 F0050.000
   G01 X-029.000 Y0014.000 F0080.000
   G01 X0029.000 Y0014.000 F0080.000
   G01 X0029.000 Y-014.000 F0080.000
   G01 X-029.000 Y-014.000 F0080.000

  (-- next depth z -001.000 --)
   G01 X-027.500 Y-012.500 F0080.000
   G01 Z-001.000 F0050.000
   G01 X-027.500 Y0012.500 F0080.000
   G01 X0027.500 Y0012.500 F0080.000
   G01 X0027.500 Y-012.500 F0080.000
   G01 X-027.500 Y-012.500 F0080.000

  (-- next depth z -001.000 --)
   G01 X-026.000 Y-011.000 F0080.000
   G01 Z-001.000 F0050.000
   G01 X-026.000 Y0011.000 F0080.000
   G01 X0026.000 Y0011.000 F0080.000
   G01 X0026.000 Y-011.000 F0080.000
   G01 X-026.000 Y-011.000 F0080.000

  (-- next depth z -001.000 --)
   G01 X-024.500 Y-009.500 F0080.000
   G01 Z-001.000 F0050.000
   G01 X-024.500 Y0009.500 F0080.000
   G01 X0024.500 Y0009.500 F0080.000
   G01 X0024.500 Y-009.500 F0080.000
   G01 X-024.500 Y-009.500 F0080.000

  (-- next depth z -001.000 --)
   G01 X-023.000 Y-008.000 F0080.000
   G01 Z-001.000 F0050.000
   G01 X-023.000 Y0008.000 F0080.000
   G01 X0023.000 Y0008.000 F0080.000
   G01 X0023.000 Y-008.000 F0080.000
   G01 X-023.000 Y-008.000 F0080.000

  (-- next depth z -001.000 --)
   G01 X-021.500 Y-006.500 F0080.000
   G01 Z-001.000 F0050.000
   G01 X-021.500 Y0006.500 F0080.000
   G01 X0021.500 Y0006.500 F0080.000
   G01 X0021.500 Y-006.500 F0080.000
   G01 X-021.500 Y-006.500 F0080.000

  (-- next depth z -001.000 --)
   G01 X-020.000 Y-005.000 F0080.000
   G01 Z-001.000 F0050.000
   G01 X-020.000 Y0005.000 F0080.000
   G01 X0020.000 Y0005.000 F0080.000
   G01 X0020.000 Y-005.000 F0080.000
   G01 X-020.000 Y-005.000 F0080.000

  (-- next depth z -001.000 --)
   G01 X-018.500 Y-003.500 F0080.000
   G01 Z-001.000 F0050.000
   G01 X-018.500 Y0003.500 F0080.000
   G01 X0018.500 Y0003.500 F0080.000
   G01 X0018.500 Y-003.500 F0080.000
   G01 X-018.500 Y-003.500 F0080.000

  (-- next depth z -001.000 --)
   G01 X-017.000 Y-002.000 F0080.000
   G01 Z-001.000 F0050.000
   G01 X-017.000 Y0002.000 F0080.000
   G01 X0017.000 Y0002.000 F0080.000
   G01 X0017.000 Y-002.000 F0080.000
   G01 X-017.000 Y-002.000 F0080.000

  (-- next depth z -001.000 --)
   G01 X-015.500 Y-000.500 F0080.000
   G01 Z-001.000 F0050.000
   G01 X-015.500 Y0000.500 F0080.000
   G01 X0015.500 Y0000.500 F0080.000
   G01 X0015.500 Y-000.500 F0080.000
   G01 X-015.500 Y-000.500 F0080.000

  (-- next depth z -001.000 --)
   G01 X-014.000 Y0001.000 F0080.000
   G01 Z-001.000 F0050.000
   G01 X-014.000 Y-001.000 F0080.000
   G01 X0014.000 Y-001.000 F0080.000
   G01 X0014.000 Y0001.000 F0080.000
   G01 X-014.000 Y0001.000 F0080.000

  (-- next depth z -001.000 --)
   G01 X-012.500 Y0002.500 F0080.000
   G01 Z-001.000 F0050.000
   G01 X-012.500 Y-002.500 F0080.000
   G01 X0012.500 Y-002.500 F0080.000
   G01 X0012.500 Y0002.500 F0080.000
   G01 X-012.500 Y0002.500 F0080.000

  (-- next depth z -001.000 --)
   G01 X-011.000 Y0004.000 F0080.000
   G01 Z-001.000 F0050.000
   G01 X-011.000 Y-004.000 F0080.000
   G01 X0011.000 Y-004.000 F0080.000
   G01 X0011.000 Y0004.000 F0080.000
   G01 X-011.000 Y0004.000 F0080.000
  (-- END Track Loop  --)
  (-- START Track Loop  --)

  (-- next depth z -001.500 --)
   G01 X-047.000 Y-032.000 F0080.000
   G01 Z-001.500 F0050.000
   G01 X-047.000 Y0032.000 F0080.000
   G01 X0047.000 Y0032.000 F0080.000
   G01 X0047.000 Y-032.000 F0080.000
   G01 X-047.000 Y-032.000 F0080.000

  (-- next depth z -001.500 --)
   G01 X-045.500 Y-030.500 F0080.000
   G01 Z-001.500 F0050.000
   G01 X-045.500 Y0030.500 F0080.000
   G01 X0045.500 Y0030.500 F0080.000
   G01 X0045.500 Y-030.500 F0080.000
   G01 X-045.500 Y-030.500 F0080.000

  (-- next depth z -001.500 --)
   G01 X-044.000 Y-029.000 F0080.000
   G01 Z-001.500 F0050.000
   G01 X-044.000 Y0029.000 F0080.000
   G01 X0044.000 Y0029.000 F0080.000
   G01 X0044.000 Y-029.000 F0080.000
   G01 X-044.000 Y-029.000 F0080.000

  (-- next depth z -001.500 --)
   G01 X-042.500 Y-027.500 F0080.000
   G01 Z-001.500 F0050.000
   G01 X-042.500 Y0027.500 F0080.000
   G01 X0042.500 Y0027.500 F0080.000
   G01 X0042.500 Y-027.500 F0080.000
   G01 X-042.500 Y-027.500 F0080.000

  (-- next depth z -001.500 --)
   G01 X-041.000 Y-026.000 F0080.000
   G01 Z-001.500 F0050.000
   G01 X-041.000 Y0026.000 F0080.000
   G01 X0041.000 Y0026.000 F0080.000
   G01 X0041.000 Y-026.000 F0080.000
   G01 X-041.000 Y-026.000 F0080.000

  (-- next depth z -001.500 --)
   G01 X-039.500 Y-024.500 F0080.000
   G01 Z-001.500 F0050.000
   G01 X-039.500 Y0024.500 F0080.000
   G01 X0039.500 Y0024.500 F0080.000
   G01 X0039.500 Y-024.500 F0080.000
   G01 X-039.500 Y-024.500 F0080.000

  (-- next depth z -001.500 --)
   G01 X-038.000 Y-023.000 F0080.000
   G01 Z-001.500 F0050.000
   G01 X-038.000 Y0023.000 F0080.000
   G01 X0038.000 Y0023.000 F0080.000
   G01 X0038.000 Y-023.000 F0080.000
   G01 X-038.000 Y-023.000 F0080.000

  (-- next depth z -001.500 --)
   G01 X-036.500 Y-021.500 F0080.000
   G01 Z-001.500 F0050.000
   G01 X-036.500 Y0021.500 F0080.000
   G01 X0036.500 Y0021.500 F0080.000
   G01 X0036.500 Y-021.500 F0080.000
   G01 X-036.500 Y-021.500 F0080.000

  (-- next depth z -001.500 --)
   G01 X-035.000 Y-020.000 F0080.000
   G01 Z-001.500 F0050.000
   G01 X-035.000 Y0020.000 F0080.000
   G01 X0035.000 Y0020.000 F0080.000
   G01 X0035.000 Y-020.000 F0080.000
   G01 X-035.000 Y-020.000 F0080.000

  (-- next depth z -001.500 --)
   G01 X-033.500 Y-018.500 F0080.000
   G01 Z-001.500 F0050.000
   G01 X-033.500 Y0018.500 F0080.000
   G01 X0033.500 Y0018.500 F0080.000
   G01 X0033.500 Y-018.500 F0080.000
   G01 X-033.500 Y-018.500 F0080.000

  (-- next depth z -001.500 --)
   G01 X-032.000 Y-017.000 F0080.000
   G01 Z-001.500 F0050.000
   G01 X-032.000 Y0017.000 F0080.000
   G01 X0032.000 Y0017.000 F0080.000
   G01 X0032.000 Y-017.000 F0080.000
   G01 X-032.000 Y-017.000 F0080.000

  (-- next depth z -001.500 --)
   G01 X-030.500 Y-015.500 F0080.000
   G01 Z-001.500 F0050.000
   G01 X-030.500 Y0015.500 F0080.000
   G01 X0030.500 Y0015.500 F0080.000
   G01 X0030.500 Y-015.500 F0080.000
   G01 X-030.500 Y-015.500 F0080.000

  (-- next depth z -001.500 --)
   G01 X-029.000 Y-014.000 F0080.000
   G01 Z-001.500 F0050.000
   G01 X-029.000 Y0014.000 F0080.000
   G01 X0029.000 Y0014.000 F0080.000
   G01 X0029.000 Y-014.000 F0080.000
   G01 X-029.000 Y-014.000 F0080.000

  (-- next depth z -001.500 --)
   G01 X-027.500 Y-012.500 F0080.000
   G01 Z-001.500 F0050.000
   G01 X-027.500 Y0012.500 F0080.000
   G01 X0027.500 Y0012.500 F0080.000
   G01 X0027.500 Y-012.500 F0080.000
   G01 X-027.500 Y-012.500 F0080.000

  (-- next depth z -001.500 --)
   G01 X-026.000 Y-011.000 F0080.000
   G01 Z-001.500 F0050.000
   G01 X-026.000 Y0011.000 F0080.000
   G01 X0026.000 Y0011.000 F0080.000
   G01 X0026.000 Y-011.000 F0080.000
   G01 X-026.000 Y-011.000 F0080.000

  (-- next depth z -001.500 --)
   G01 X-024.500 Y-009.500 F0080.000
   G01 Z-001.500 F0050.000
   G01 X-024.500 Y0009.500 F0080.000
   G01 X0024.500 Y0009.500 F0080.000
   G01 X0024.500 Y-009.500 F0080.000
   G01 X-024.500 Y-009.500 F0080.000

  (-- next depth z -001.500 --)
   G01 X-023.000 Y-008.000 F0080.000
   G01 Z-001.500 F0050.000
   G01 X-023.000 Y0008.000 F0080.000
   G01 X0023.000 Y0008.000 F0080.000
   G01 X0023.000 Y-008.000 F0080.000
   G01 X-023.000 Y-008.000 F0080.000

  (-- next depth z -001.500 --)
   G01 X-021.500 Y-006.500 F0080.000
   G01 Z-001.500 F0050.000
   G01 X-021.500 Y0006.500 F0080.000
   G01 X0021.500 Y0006.500 F0080.000
   G01 X0021.500 Y-006.500 F0080.000
   G01 X-021.500 Y-006.500 F0080.000

  (-- next depth z -001.500 --)
   G01 X-020.000 Y-005.000 F0080.000
   G01 Z-001.500 F0050.000
   G01 X-020.000 Y0005.000 F0080.000
   G01 X0020.000 Y0005.000 F0080.000
   G01 X0020.000 Y-005.000 F0080.000
   G01 X-020.000 Y-005.000 F0080.000

  (-- next depth z -001.500 --)
   G01 X-018.500 Y-003.500 F0080.000
   G01 Z-001.500 F0050.000
   G01 X-018.500 Y0003.500 F0080.000
   G01 X0018.500 Y0003.500 F0080.000
   G01 X0018.500 Y-003.500 F0080.000
   G01 X-018.500 Y-003.500 F0080.000

  (-- next depth z -001.500 --)
   G01 X-017.000 Y-002.000 F0080.000
   G01 Z-001.500 F0050.000
   G01 X-017.000 Y0002.000 F0080.000
   G01 X0017.000 Y0002.000 F0080.000
   G01 X0017.000 Y-002.000 F0080.000
   G01 X-017.000 Y-002.000 F0080.000

  (-- next depth z -001.500 --)
   G01 X-015.500 Y-000.500 F0080.000
   G01 Z-001.500 F0050.000
   G01 X-015.500 Y0000.500 F0080.000
   G01 X0015.500 Y0000.500 F0080.000
   G01 X0015.500 Y-000.500 F0080.000
   G01 X-015.500 Y-000.500 F0080.000

  (-- next depth z -001.500 --)
   G01 X-014.000 Y0001.000 F0080.000
   G01 Z-001.500 F0050.000
   G01 X-014.000 Y-001.000 F0080.000
   G01 X0014.000 Y-001.000 F0080.000
   G01 X0014.000 Y0001.000 F0080.000
   G01 X-014.000 Y0001.000 F0080.000

  (-- next depth z -001.500 --)
   G01 X-012.500 Y0002.500 F0080.000
   G01 Z-001.500 F0050.000
   G01 X-012.500 Y-002.500 F0080.000
   G01 X0012.500 Y-002.500 F0080.000
   G01 X0012.500 Y0002.500 F0080.000
   G01 X-012.500 Y0002.500 F0080.000

  (-- next depth z -001.500 --)
   G01 X-011.000 Y0004.000 F0080.000
   G01 Z-001.500 F0050.000
   G01 X-011.000 Y-004.000 F0080.000
   G01 X0011.000 Y-004.000 F0080.000
   G01 X0011.000 Y0004.000 F0080.000
   G01 X-011.000 Y0004.000 F0080.000
  (-- END Track Loop  --)
(-- END DEPTH loop --)
G01 X0000.000 Y0000.000 Z0010.000 F200.0 
G00 Z10 F100 
M2

%
