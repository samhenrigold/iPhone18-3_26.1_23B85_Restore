uint64_t sub_A0814()
{
  v1 = *(v0 + 2008);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1792);
  v4 = *(v0 + 1192);
  v10 = *(v0 + 1176);
  v5 = *(v0 + 1168);
  v6 = *(v0 + 1160);
  v7 = *(v0 + 712);

  sub_16F70(v7, &qword_137598, &unk_107EB0);
  (*(v5 + 8))(v10, v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_A0BAC()
{
  v24 = v0;

  v1 = v0[250];
  swift_errorRetain();
  v2 = sub_106D10();
  v3 = sub_106FB0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23[0] = v5;
    *v4 = 136315138;
    v0[68] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v6 = sub_106E30();
    v8 = sub_722E8(v6, v7, v23);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Error in RF path: %s", v4, 0xCu);
    sub_2738(v5);
  }

  v9 = v0[226];
  v10 = v0[224];
  v11 = v0[150];
  v12 = v0[149];
  v22 = v0[147];
  v13 = v0[146];
  v21 = v0[145];
  v20 = v0[89];
  v14 = sub_106750();
  v0[10] = v14;
  v0[11] = &protocol witness table for ABCReport;
  v15 = sub_1A924(v0 + 7);
  *v15 = sub_1045F0();
  v16 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v17 = sub_106690();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  (*(*(v14 - 8) + 104))(v15, enum case for ABCReport.dialog(_:), v14);
  sub_1064D0();
  sub_2738(v0 + 7);
  swift_willThrow();

  sub_16F70(v20, &qword_137598, &unk_107EB0);
  (*(v13 + 8))(v22, v21);

  v18 = v0[1];

  return v18();
}

uint64_t sub_A1124(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2040) = a1;
  *(v3 + 2048) = v1;

  if (v1)
  {
    v4 = sub_A14B8;
  }

  else
  {
    v4 = sub_A1264;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_A1264()
{
  sub_A7C74(v0[78], type metadata accessor for ModifyAllDisableConciseParameters);
  sub_104CF0();
  v1 = swift_task_alloc();
  v0[257] = v1;
  *v1 = v0;
  v1[1] = sub_A1338;
  v2 = v0[147];
  v3 = v0[136];
  v4 = v0[118];
  v5 = v0[72];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v5, v4, v2, v3, 0);
}

uint64_t sub_A1338()
{
  v2 = *v1;
  *(*v1 + 2064) = v0;

  v3 = v2[255];
  (*(v2[116] + 8))(v2[118], v2[115]);

  if (v0)
  {
    v4 = sub_A653C;
  }

  else
  {
    v4 = sub_A1A5C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_A14B8()
{
  v27 = v0;
  v1 = v0[136];
  v2 = v0[135];
  v3 = v0[134];
  sub_A7C74(v0[78], type metadata accessor for ModifyAllDisableConciseParameters);
  (*(v2 + 8))(v1, v3);
  v4 = v0[256];
  swift_errorRetain();
  v5 = sub_106D10();
  v6 = sub_106FB0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26[0] = v8;
    *v7 = 136315138;
    v0[68] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v9 = sub_106E30();
    v11 = sub_722E8(v9, v10, v26);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "Error in RF path: %s", v7, 0xCu);
    sub_2738(v8);
  }

  v12 = v0[226];
  v13 = v0[224];
  v14 = v0[150];
  v15 = v0[149];
  v25 = v0[147];
  v16 = v0[146];
  v24 = v0[145];
  v23 = v0[89];
  v17 = sub_106750();
  v0[10] = v17;
  v0[11] = &protocol witness table for ABCReport;
  v18 = sub_1A924(v0 + 7);
  *v18 = sub_1045F0();
  v19 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v20 = sub_106690();
  (*(*(v20 - 8) + 104))(v18, v19, v20);
  (*(*(v17 - 8) + 104))(v18, enum case for ABCReport.dialog(_:), v17);
  sub_1064D0();
  sub_2738(v0 + 7);
  swift_willThrow();

  sub_16F70(v23, &qword_137598, &unk_107EB0);
  (*(v16 + 8))(v25, v24);

  v21 = v0[1];

  return v21();
}

uint64_t sub_A1A5C()
{
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1792);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 1168);
  v11 = *(v0 + 1160);
  v12 = *(v0 + 1176);
  v5 = *(v0 + 1088);
  v6 = *(v0 + 1080);
  v7 = *(v0 + 1072);
  v10 = *(v0 + 712);

  (*(v6 + 8))(v5, v7);
  sub_16F70(v10, &qword_137598, &unk_107EB0);
  (*(v4 + 8))(v12, v11);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_A1E10(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2088) = a1;
  *(v3 + 2096) = v1;

  if (v1)
  {
    v4 = sub_A21A4;
  }

  else
  {
    v4 = sub_A1F50;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_A1F50()
{
  sub_A7C74(v0[76], type metadata accessor for ModifyAllDisableParameters);
  sub_104CF0();
  v1 = swift_task_alloc();
  v0[263] = v1;
  *v1 = v0;
  v1[1] = sub_A2024;
  v2 = v0[147];
  v3 = v0[136];
  v4 = v0[117];
  v5 = v0[72];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v5, v4, v2, v3, 0);
}

uint64_t sub_A2024()
{
  v2 = *v1;
  *(*v1 + 2112) = v0;

  v3 = v2[261];
  (*(v2[116] + 8))(v2[117], v2[115]);

  if (v0)
  {
    v4 = sub_A6ABC;
  }

  else
  {
    v4 = sub_A7CDC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_A21A4()
{
  v27 = v0;
  v1 = v0[136];
  v2 = v0[135];
  v3 = v0[134];
  sub_A7C74(v0[76], type metadata accessor for ModifyAllDisableParameters);
  (*(v2 + 8))(v1, v3);
  v4 = v0[262];
  swift_errorRetain();
  v5 = sub_106D10();
  v6 = sub_106FB0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26[0] = v8;
    *v7 = 136315138;
    v0[68] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v9 = sub_106E30();
    v11 = sub_722E8(v9, v10, v26);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "Error in RF path: %s", v7, 0xCu);
    sub_2738(v8);
  }

  v12 = v0[226];
  v13 = v0[224];
  v14 = v0[150];
  v15 = v0[149];
  v25 = v0[147];
  v16 = v0[146];
  v24 = v0[145];
  v23 = v0[89];
  v17 = sub_106750();
  v0[10] = v17;
  v0[11] = &protocol witness table for ABCReport;
  v18 = sub_1A924(v0 + 7);
  *v18 = sub_1045F0();
  v19 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v20 = sub_106690();
  (*(*(v20 - 8) + 104))(v18, v19, v20);
  (*(*(v17 - 8) + 104))(v18, enum case for ABCReport.dialog(_:), v17);
  sub_1064D0();
  sub_2738(v0 + 7);
  swift_willThrow();

  sub_16F70(v23, &qword_137598, &unk_107EB0);
  (*(v16 + 8))(v25, v24);

  v21 = v0[1];

  return v21();
}

uint64_t sub_A2748()
{
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1176);
  v3 = *(v0 + 1168);
  v4 = *(v0 + 1160);
  v5 = *(v0 + 1152);
  v6 = *(v0 + 1080);
  v7 = *(v0 + 1072);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_A2AC8()
{
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1176);
  v3 = *(v0 + 1168);
  v4 = *(v0 + 1160);
  v5 = *(v0 + 1152);
  v6 = *(v0 + 1080);
  v7 = *(v0 + 1072);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_A2E48()
{
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1176);
  v3 = *(v0 + 1168);
  v4 = *(v0 + 1160);
  v5 = *(v0 + 1144);
  v6 = *(v0 + 1080);
  v7 = *(v0 + 1072);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_A31C8()
{
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1176);
  v3 = *(v0 + 1168);
  v4 = *(v0 + 1160);
  v5 = *(v0 + 1144);
  v6 = *(v0 + 1080);
  v7 = *(v0 + 1072);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_A3548()
{
  v22 = v0;

  v1 = v0[166];
  swift_errorRetain();
  v2 = sub_106D10();
  v3 = sub_106FB0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21[0] = v5;
    *v4 = 136315138;
    v0[71] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v6 = sub_106E30();
    v8 = sub_722E8(v6, v7, v21);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Error in RF path: %s", v4, 0xCu);
    sub_2738(v5);
  }

  v9 = v0[162];
  v10 = v0[150];
  v11 = v0[149];
  v20 = v0[147];
  v12 = v0[146];
  v19 = v0[145];
  v13 = sub_106750();
  v0[50] = v13;
  v0[51] = &protocol witness table for ABCReport;
  v14 = sub_1A924(v0 + 47);
  *v14 = sub_1045F0();
  v15 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v16 = sub_106690();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  (*(*(v13 - 8) + 104))(v14, enum case for ABCReport.dialog(_:), v13);
  sub_1064D0();
  sub_2738(v0 + 47);
  swift_willThrow();

  (*(v12 + 8))(v20, v19);

  v17 = v0[1];

  return v17();
}

uint64_t sub_A3A84()
{
  v22 = v0;
  (*(v0[135] + 8))(v0[141], v0[134]);
  v1 = v0[178];
  swift_errorRetain();
  v2 = sub_106D10();
  v3 = sub_106FB0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21[0] = v5;
    *v4 = 136315138;
    v0[71] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v6 = sub_106E30();
    v8 = sub_722E8(v6, v7, v21);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Error in RF path: %s", v4, 0xCu);
    sub_2738(v5);
  }

  v9 = v0[162];
  v10 = v0[150];
  v11 = v0[149];
  v20 = v0[147];
  v12 = v0[146];
  v19 = v0[145];
  v13 = sub_106750();
  v0[50] = v13;
  v0[51] = &protocol witness table for ABCReport;
  v14 = sub_1A924(v0 + 47);
  *v14 = sub_1045F0();
  v15 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v16 = sub_106690();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  (*(*(v13 - 8) + 104))(v14, enum case for ABCReport.dialog(_:), v13);
  sub_1064D0();
  sub_2738(v0 + 47);
  swift_willThrow();

  (*(v12 + 8))(v20, v19);

  v17 = v0[1];

  return v17();
}

uint64_t sub_A3FD0()
{
  v22 = v0;
  (*(v0[135] + 8))(v0[140], v0[134]);
  v1 = v0[188];
  swift_errorRetain();
  v2 = sub_106D10();
  v3 = sub_106FB0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21[0] = v5;
    *v4 = 136315138;
    v0[71] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v6 = sub_106E30();
    v8 = sub_722E8(v6, v7, v21);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Error in RF path: %s", v4, 0xCu);
    sub_2738(v5);
  }

  v9 = v0[162];
  v10 = v0[150];
  v11 = v0[149];
  v20 = v0[147];
  v12 = v0[146];
  v19 = v0[145];
  v13 = sub_106750();
  v0[50] = v13;
  v0[51] = &protocol witness table for ABCReport;
  v14 = sub_1A924(v0 + 47);
  *v14 = sub_1045F0();
  v15 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v16 = sub_106690();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  (*(*(v13 - 8) + 104))(v14, enum case for ABCReport.dialog(_:), v13);
  sub_1064D0();
  sub_2738(v0 + 47);
  swift_willThrow();

  (*(v12 + 8))(v20, v19);

  v17 = v0[1];

  return v17();
}

uint64_t sub_A451C()
{
  v22 = v0;
  (*(v0[135] + 8))(v0[140], v0[134]);
  v1 = v0[190];
  swift_errorRetain();
  v2 = sub_106D10();
  v3 = sub_106FB0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21[0] = v5;
    *v4 = 136315138;
    v0[71] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v6 = sub_106E30();
    v8 = sub_722E8(v6, v7, v21);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Error in RF path: %s", v4, 0xCu);
    sub_2738(v5);
  }

  v9 = v0[162];
  v10 = v0[150];
  v11 = v0[149];
  v20 = v0[147];
  v12 = v0[146];
  v19 = v0[145];
  v13 = sub_106750();
  v0[50] = v13;
  v0[51] = &protocol witness table for ABCReport;
  v14 = sub_1A924(v0 + 47);
  *v14 = sub_1045F0();
  v15 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v16 = sub_106690();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  (*(*(v13 - 8) + 104))(v14, enum case for ABCReport.dialog(_:), v13);
  sub_1064D0();
  sub_2738(v0 + 47);
  swift_willThrow();

  (*(v12 + 8))(v20, v19);

  v17 = v0[1];

  return v17();
}

uint64_t sub_A4A68()
{
  v22 = v0;

  v1 = v0[194];
  swift_errorRetain();
  v2 = sub_106D10();
  v3 = sub_106FB0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21[0] = v5;
    *v4 = 136315138;
    v0[70] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v6 = sub_106E30();
    v8 = sub_722E8(v6, v7, v21);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Error in RF path: %s", v4, 0xCu);
    sub_2738(v5);
  }

  v9 = v0[162];
  v10 = v0[150];
  v11 = v0[149];
  v20 = v0[147];
  v12 = v0[146];
  v19 = v0[145];
  v13 = sub_106750();
  v0[35] = v13;
  v0[36] = &protocol witness table for ABCReport;
  v14 = sub_1A924(v0 + 32);
  *v14 = sub_1045F0();
  v15 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v16 = sub_106690();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  (*(*(v13 - 8) + 104))(v14, enum case for ABCReport.dialog(_:), v13);
  sub_1064D0();
  sub_2738(v0 + 32);
  swift_willThrow();

  (*(v12 + 8))(v20, v19);

  v17 = v0[1];

  return v17();
}

uint64_t sub_A4FA4()
{
  v22 = v0;
  (*(v0[135] + 8))(v0[139], v0[134]);
  v1 = v0[210];
  swift_errorRetain();
  v2 = sub_106D10();
  v3 = sub_106FB0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21[0] = v5;
    *v4 = 136315138;
    v0[70] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v6 = sub_106E30();
    v8 = sub_722E8(v6, v7, v21);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Error in RF path: %s", v4, 0xCu);
    sub_2738(v5);
  }

  v9 = v0[162];
  v10 = v0[150];
  v11 = v0[149];
  v20 = v0[147];
  v12 = v0[146];
  v19 = v0[145];
  v13 = sub_106750();
  v0[35] = v13;
  v0[36] = &protocol witness table for ABCReport;
  v14 = sub_1A924(v0 + 32);
  *v14 = sub_1045F0();
  v15 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v16 = sub_106690();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  (*(*(v13 - 8) + 104))(v14, enum case for ABCReport.dialog(_:), v13);
  sub_1064D0();
  sub_2738(v0 + 32);
  swift_willThrow();

  (*(v12 + 8))(v20, v19);

  v17 = v0[1];

  return v17();
}

uint64_t sub_A54F0()
{
  v22 = v0;
  (*(v0[135] + 8))(v0[138], v0[134]);
  v1 = v0[223];
  swift_errorRetain();
  v2 = sub_106D10();
  v3 = sub_106FB0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21[0] = v5;
    *v4 = 136315138;
    v0[70] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v6 = sub_106E30();
    v8 = sub_722E8(v6, v7, v21);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Error in RF path: %s", v4, 0xCu);
    sub_2738(v5);
  }

  v9 = v0[162];
  v10 = v0[150];
  v11 = v0[149];
  v20 = v0[147];
  v12 = v0[146];
  v19 = v0[145];
  v13 = sub_106750();
  v0[35] = v13;
  v0[36] = &protocol witness table for ABCReport;
  v14 = sub_1A924(v0 + 32);
  *v14 = sub_1045F0();
  v15 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v16 = sub_106690();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  (*(*(v13 - 8) + 104))(v14, enum case for ABCReport.dialog(_:), v13);
  sub_1064D0();
  sub_2738(v0 + 32);
  swift_willThrow();

  (*(v12 + 8))(v20, v19);

  v17 = v0[1];

  return v17();
}

uint64_t sub_A5A3C()
{
  v24 = v0;
  (*(v0[135] + 8))(v0[137], v0[134]);
  v1 = v0[239];
  swift_errorRetain();
  v2 = sub_106D10();
  v3 = sub_106FB0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23[0] = v5;
    *v4 = 136315138;
    v0[69] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v6 = sub_106E30();
    v8 = sub_722E8(v6, v7, v23);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Error in RF path: %s", v4, 0xCu);
    sub_2738(v5);
  }

  v9 = v0[226];
  v10 = v0[224];
  v11 = v0[150];
  v12 = v0[149];
  v22 = v0[147];
  v13 = v0[146];
  v21 = v0[145];
  v20 = v0[89];
  v14 = sub_106750();
  v0[20] = v14;
  v0[21] = &protocol witness table for ABCReport;
  v15 = sub_1A924(v0 + 17);
  *v15 = sub_1045F0();
  v16 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v17 = sub_106690();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  (*(*(v14 - 8) + 104))(v15, enum case for ABCReport.dialog(_:), v14);
  sub_1064D0();
  sub_2738(v0 + 17);
  swift_willThrow();

  sub_16F70(v20, &qword_137598, &unk_107EB0);
  (*(v13 + 8))(v22, v21);

  v18 = v0[1];

  return v18();
}

uint64_t sub_A5FBC()
{
  v24 = v0;
  (*(v0[135] + 8))(v0[137], v0[134]);
  v1 = v0[245];
  swift_errorRetain();
  v2 = sub_106D10();
  v3 = sub_106FB0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23[0] = v5;
    *v4 = 136315138;
    v0[69] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v6 = sub_106E30();
    v8 = sub_722E8(v6, v7, v23);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Error in RF path: %s", v4, 0xCu);
    sub_2738(v5);
  }

  v9 = v0[226];
  v10 = v0[224];
  v11 = v0[150];
  v12 = v0[149];
  v22 = v0[147];
  v13 = v0[146];
  v21 = v0[145];
  v20 = v0[89];
  v14 = sub_106750();
  v0[20] = v14;
  v0[21] = &protocol witness table for ABCReport;
  v15 = sub_1A924(v0 + 17);
  *v15 = sub_1045F0();
  v16 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v17 = sub_106690();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  (*(*(v14 - 8) + 104))(v15, enum case for ABCReport.dialog(_:), v14);
  sub_1064D0();
  sub_2738(v0 + 17);
  swift_willThrow();

  sub_16F70(v20, &qword_137598, &unk_107EB0);
  (*(v13 + 8))(v22, v21);

  v18 = v0[1];

  return v18();
}

uint64_t sub_A653C()
{
  v24 = v0;
  (*(v0[135] + 8))(v0[136], v0[134]);
  v1 = v0[258];
  swift_errorRetain();
  v2 = sub_106D10();
  v3 = sub_106FB0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23[0] = v5;
    *v4 = 136315138;
    v0[68] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v6 = sub_106E30();
    v8 = sub_722E8(v6, v7, v23);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Error in RF path: %s", v4, 0xCu);
    sub_2738(v5);
  }

  v9 = v0[226];
  v10 = v0[224];
  v11 = v0[150];
  v12 = v0[149];
  v22 = v0[147];
  v13 = v0[146];
  v21 = v0[145];
  v20 = v0[89];
  v14 = sub_106750();
  v0[10] = v14;
  v0[11] = &protocol witness table for ABCReport;
  v15 = sub_1A924(v0 + 7);
  *v15 = sub_1045F0();
  v16 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v17 = sub_106690();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  (*(*(v14 - 8) + 104))(v15, enum case for ABCReport.dialog(_:), v14);
  sub_1064D0();
  sub_2738(v0 + 7);
  swift_willThrow();

  sub_16F70(v20, &qword_137598, &unk_107EB0);
  (*(v13 + 8))(v22, v21);

  v18 = v0[1];

  return v18();
}

uint64_t sub_A6ABC()
{
  v24 = v0;
  (*(v0[135] + 8))(v0[136], v0[134]);
  v1 = v0[264];
  swift_errorRetain();
  v2 = sub_106D10();
  v3 = sub_106FB0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23[0] = v5;
    *v4 = 136315138;
    v0[68] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v6 = sub_106E30();
    v8 = sub_722E8(v6, v7, v23);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Error in RF path: %s", v4, 0xCu);
    sub_2738(v5);
  }

  v9 = v0[226];
  v10 = v0[224];
  v11 = v0[150];
  v12 = v0[149];
  v22 = v0[147];
  v13 = v0[146];
  v21 = v0[145];
  v20 = v0[89];
  v14 = sub_106750();
  v0[10] = v14;
  v0[11] = &protocol witness table for ABCReport;
  v15 = sub_1A924(v0 + 7);
  *v15 = sub_1045F0();
  v16 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v17 = sub_106690();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  (*(*(v14 - 8) + 104))(v15, enum case for ABCReport.dialog(_:), v14);
  sub_1064D0();
  sub_2738(v0 + 7);
  swift_willThrow();

  sub_16F70(v20, &qword_137598, &unk_107EB0);
  (*(v13 + 8))(v22, v21);

  v18 = v0[1];

  return v18();
}

uint64_t sub_A703C(uint64_t *a1)
{
  v2 = sub_104670();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106210();
  v6 = sub_75DD4(0, v5, 0);
  (*(v3 + 8))(v5, v2);

  *a1 = v6;
  sub_106100();
  sub_25E4(&qword_139740, &unk_10A0B0);
  sub_105160();
  v7 = sub_1060F0();

  a1[1] = v7;
  return result;
}

uint64_t sub_A7170(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_A7218;

  return sub_90714(a1, a2);
}

uint64_t sub_A7218()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_A734C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_A734C()
{
  v0[3] = v0[5];
  sub_25E4(&qword_1376C0, &unk_1080D0);
  sub_1064E0();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_A7418(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1CA94;

  return sub_D5F44(a1);
}

uint64_t sub_A74D4(uint64_t a1, void *a2)
{
  sub_25E4(&qword_1374F0, &qword_1080F0);
  v5 = swift_task_alloc();
  v6 = sub_106630();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_169D8(a1, a2, v5);
  sub_16F70(v5, &qword_1374F0, &qword_1080F0);

  v8 = *(v2 + 8);

  return v8(v7);
}

unint64_t sub_A75F8()
{
  result = qword_139738;
  if (!qword_139738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139738);
  }

  return result;
}

void sub_A764C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v18 = a1;
  v5 = sub_104670();
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _swiftEmptyArrayStorage;
  v19 = _swiftEmptyArrayStorage;
  v8 = a3 >> 1;
  v10 = (v9 + 8);
  v11 = a2;
LABEL_2:
  v12 = v11;
  while (v8 != v12)
  {
    if (v11 < a2 || v12 >= v8)
    {
      __break(1u);
      return;
    }

    v13 = v12 + 1;
    v14 = *(v18 + 8 * v12);
    sub_106210();
    v15 = sub_75DD4(0, v7, 0);
    (*v10)(v7, v5);

    v12 = v13;
    if (v15)
    {
      sub_106EC0();
      if (*(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v19 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_106F10();
      }

      sub_106F20();
      v17 = v19;
      v11 = v13;
      goto LABEL_2;
    }
  }
}

id *sub_A7804(id *a1, uint64_t a2, unint64_t a3)
{
  v33 = a1;
  v5 = sub_25E4(&qword_137DC0, &unk_10A0A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_106AE0();
  v9 = __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v31 = &v27 - v14;
  v15 = a3 >> 1;
  v16 = (a3 >> 1) - a2;
  if (a3 >> 1 == a2)
  {
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v17 = (v13 + 48);
    v30 = v13;
    v32 = (v13 + 32);
    if (a2 > v15)
    {
      v15 = a2;
    }

    v18 = v15 - a2;
    v19 = &v33[a2];
    v33 = _swiftEmptyArrayStorage;
    v28 = (v13 + 48);
    v29 = v11;
    while (v18)
    {
      v20 = *v19;
      sub_769D4(0, 0xE000000000000000, 0, 0xE000000000000000, v7);

      if ((*v17)(v7, 1, v8) == 1)
      {
        result = sub_16F70(v7, &qword_137DC0, &unk_10A0A0);
      }

      else
      {
        v21 = v31;
        v22 = *v32;
        (*v32)(v31);
        (v22)(v11, v21, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_AD840(0, v33[2] + 1, 1, v33);
        }

        v24 = v33[2];
        v23 = v33[3];
        if (v24 >= v23 >> 1)
        {
          v33 = sub_AD840((v23 > 1), v24 + 1, 1, v33);
        }

        v25 = v33;
        v33[2] = (v24 + 1);
        v26 = v25 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v24;
        v11 = v29;
        result = (v22)(v26, v29, v8);
        v17 = v28;
      }

      --v18;
      ++v19;
      if (!--v16)
      {
        return v33;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_A7B00(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v4 = a2 >> 62;
    if (!(a2 >> 62))
    {
      v5 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
      goto LABEL_4;
    }
  }

  v10 = result;
  v5 = sub_107270();
  result = v10;
LABEL_4:
  if (v5 >= result)
  {
    v6 = result;
  }

  else
  {
    v6 = v5;
  }

  if (v5 < 0)
  {
    v6 = result;
  }

  if (result)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v5 < v7)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v4)
  {
    result = sub_107270();
    if (result >= v7)
    {
      result = sub_107270();
      goto LABEL_18;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  result = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (result < v7)
  {
    goto LABEL_32;
  }

LABEL_18:
  if (result < v5)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v5 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if ((v3 & 0xC000000000000001) == 0 || v7 == v5)
  {

    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }

LABEL_28:

    return sub_107280();
  }

  if (v7 < v5)
  {
    sub_106AA0();

    v8 = v7;
    do
    {
      v9 = v8 + 1;
      sub_1071B0(v8);
      v8 = v9;
    }

    while (v5 != v9);
    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }

    goto LABEL_28;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_A7C74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_A7D44()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  sub_25E4(&qword_137880, &unk_108290);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_108210;
  *(v4 + 32) = 0x6C6562616CLL;
  *(v4 + 40) = 0xE500000000000000;
  sub_14994(v0, v3, &qword_137598, &unk_107EB0);
  v5 = sub_106160();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_16F70(v3, &qword_137598, &unk_107EB0);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v5;
    v7 = sub_1A924((v4 + 48));
    (*(v6 + 32))(v7, v3, v5);
  }

  strcpy((v4 + 80), "noAlarmExists");
  *(v4 + 94) = -4864;
  NotFoundParameters = type metadata accessor for SearchQueryNotFoundParameters(0);
  *(v4 + 96) = *(v0 + NotFoundParameters[5]);
  *(v4 + 120) = &type metadata for Bool;
  *(v4 + 128) = 0x6F43686372616573;
  *(v4 + 136) = 0xEF6E6F697469646ELL;
  v9 = *(v0 + NotFoundParameters[6]);
  v10 = sub_25E4(&qword_137888, &unk_10A130);
  *(v4 + 144) = v9;
  *(v4 + 168) = v10;
  *(v4 + 176) = 1701669236;
  *(v4 + 184) = 0xE400000000000000;
  v11 = *(v0 + NotFoundParameters[7]);
  if (v11)
  {
    v12 = sub_1060A0();
  }

  else
  {
    v12 = 0;
    *(v4 + 200) = 0;
    *(v4 + 208) = 0;
  }

  *(v4 + 192) = v11;
  *(v4 + 216) = v12;

  return v4;
}

uint64_t sub_A7FA0()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v30 - v2;
  sub_25E4(&qword_137880, &unk_108290);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1082C0;
  *(v4 + 32) = 0xD000000000000016;
  *(v4 + 40) = 0x800000000010C590;
  sub_14994(v0, v3, &qword_137598, &unk_107EB0);
  v5 = sub_106160();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_16F70(v3, &qword_137598, &unk_107EB0);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v5;
    v7 = sub_1A924((v4 + 48));
    (*(v6 + 32))(v7, v3, v5);
  }

  *(v4 + 80) = 7368801;
  *(v4 + 88) = 0xE300000000000000;
  SuccessMultiParameters = type metadata accessor for SearchQuerySuccessMultiParameters(0);
  v9 = *(v0 + SuccessMultiParameters[5]);
  if (v9)
  {
    v10 = sub_106100();
    v11 = v9;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
  }

  *(v4 + 96) = v11;
  *(v4 + 120) = v10;
  *(v4 + 128) = 0xD000000000000020;
  *(v4 + 136) = 0x800000000010DAC0;
  *(v4 + 144) = *(v0 + SuccessMultiParameters[6]);
  *(v4 + 168) = &type metadata for Bool;
  *(v4 + 176) = 0x6E69577473726966;
  *(v4 + 184) = 0xEF657A6953776F64;
  v12 = v0 + SuccessMultiParameters[7];
  if (*(v12 + 8))
  {
    v13 = 0;
    *(v4 + 200) = 0;
    *(v4 + 208) = 0;
    v14 = 0;
  }

  else
  {
    v14 = *v12;
    v13 = &type metadata for Double;
  }

  *(v4 + 192) = v14;
  *(v4 + 216) = v13;
  strcpy((v4 + 224), "hideSleepAlarm");
  *(v4 + 239) = -18;
  *(v4 + 240) = *(v0 + SuccessMultiParameters[8]);
  *(v4 + 264) = &type metadata for Bool;
  strcpy((v4 + 272), "isConclusion");
  *(v4 + 285) = 0;
  *(v4 + 286) = -5120;
  *(v4 + 288) = *(v0 + SuccessMultiParameters[9]);
  *(v4 + 312) = &type metadata for Bool;
  strcpy((v4 + 320), "isFirstWindow");
  *(v4 + 334) = -4864;
  *(v4 + 336) = *(v0 + SuccessMultiParameters[10]);
  *(v4 + 360) = &type metadata for Bool;
  strcpy((v4 + 368), "isLastWindow");
  *(v4 + 381) = 0;
  *(v4 + 382) = -5120;
  *(v4 + 384) = *(v0 + SuccessMultiParameters[11]);
  *(v4 + 408) = &type metadata for Bool;
  *(v4 + 416) = 0xD000000000000016;
  *(v4 + 424) = 0x800000000010DAF0;
  *(v4 + 432) = *(v0 + SuccessMultiParameters[12]);
  *(v4 + 456) = &type metadata for Bool;
  *(v4 + 464) = 0x736D657469;
  *(v4 + 472) = 0xE500000000000000;
  v15 = *(v0 + SuccessMultiParameters[13]);
  v16 = sub_25E4(&qword_137B40, &unk_108390);
  *(v4 + 480) = v15;
  *(v4 + 504) = v16;
  *(v4 + 512) = 0xD000000000000013;
  *(v4 + 520) = 0x800000000010DB10;
  v17 = v0 + SuccessMultiParameters[14];
  if (*(v17 + 8))
  {
    v18 = 0;
    *(v4 + 536) = 0u;
    v19 = 0;
  }

  else
  {
    v19 = *v17;
    v18 = &type metadata for Double;
  }

  *(v4 + 528) = v19;
  *(v4 + 552) = v18;
  *(v4 + 560) = 0x616C417065656C73;
  *(v4 + 568) = 0xEA00000000006D72;
  v20 = *(v0 + SuccessMultiParameters[15]);
  if (v20)
  {
    v21 = type metadata accessor for AlarmAlarm(0);
    v22 = v20;
  }

  else
  {
    v22 = 0;
    v21 = 0;
    *(v4 + 584) = 0u;
  }

  *(v4 + 576) = v22;
  *(v4 + 600) = v21;
  *(v4 + 608) = 0x6574496C61746F74;
  *(v4 + 616) = 0xEA0000000000736DLL;
  v23 = v0 + SuccessMultiParameters[16];
  if (*(v23 + 8))
  {
    v24 = 0;
    *(v4 + 632) = 0u;
    v25 = 0;
  }

  else
  {
    v25 = *v23;
    v24 = &type metadata for Double;
  }

  *(v4 + 624) = v25;
  *(v4 + 648) = v24;
  *(v4 + 656) = 0x6953776F646E6977;
  *(v4 + 664) = 0xEA0000000000657ALL;
  v26 = v0 + SuccessMultiParameters[17];
  if (*(v26 + 8))
  {
    v27 = 0;
    *(v4 + 680) = 0u;
    v28 = 0;
  }

  else
  {
    v28 = *v26;
    v27 = &type metadata for Double;
  }

  *(v4 + 672) = v28;
  *(v4 + 696) = v27;

  return v4;
}

uint64_t sub_A84A0()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v25 - v2;
  sub_25E4(&qword_137880, &unk_108290);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_109670;
  *(v4 + 32) = 0x6D72616C61;
  *(v4 + 40) = 0xE500000000000000;
  v5 = *v0;
  if (*v0)
  {
    v6 = type metadata accessor for AlarmAlarm(0);
    v7 = v5;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 72) = v6;
  *(v4 + 80) = 7368801;
  *(v4 + 88) = 0xE300000000000000;
  v8 = v0[1];
  if (v8)
  {
    v9 = sub_106100();
    v10 = v8;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
  }

  *(v4 + 96) = v10;
  *(v4 + 120) = v9;
  *(v4 + 128) = 0xD000000000000012;
  *(v4 + 136) = 0x800000000010DB30;
  if (v0[3])
  {
    v11 = 0;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0;
    v12 = 0;
  }

  else
  {
    v12 = v0[2];
    v11 = &type metadata for Double;
  }

  *(v4 + 144) = v12;
  *(v4 + 168) = v11;
  *(v4 + 176) = 0xD000000000000012;
  *(v4 + 184) = 0x800000000010DB50;
  *(v4 + 192) = *(v0 + 25);
  *(v4 + 216) = &type metadata for Bool;
  *(v4 + 224) = 0x616C417065656C73;
  *(v4 + 232) = 0xEA00000000006D72;
  v13 = v0[4];
  if (v13)
  {
    v14 = type metadata accessor for AlarmAlarm(0);
    v15 = v13;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    *(v4 + 248) = 0;
    *(v4 + 256) = 0;
  }

  *(v4 + 240) = v15;
  *(v4 + 264) = v14;
  *(v4 + 272) = 0xD000000000000010;
  *(v4 + 280) = 0x800000000010DB70;
  if (v0[6])
  {
    v16 = 0;
    *(v4 + 296) = 0;
    *(v4 + 304) = 0;
    v17 = 0;
  }

  else
  {
    v17 = v0[5];
    v16 = &type metadata for Double;
  }

  *(v4 + 288) = v17;
  *(v4 + 312) = v16;
  *(v4 + 320) = 0xD000000000000014;
  *(v4 + 328) = 0x800000000010DB90;
  *(v4 + 336) = *(v0 + 49);
  *(v4 + 360) = &type metadata for Bool;
  *(v4 + 368) = 0xD000000000000012;
  *(v4 + 376) = 0x800000000010C670;
  SuccessSingleParameters = type metadata accessor for SearchQuerySuccessSingleParameters(0);
  sub_14994(v0 + SuccessSingleParameters[11], v3, &qword_137598, &unk_107EB0);
  v19 = sub_106160();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v3, 1, v19) == 1)
  {

    sub_16F70(v3, &qword_137598, &unk_107EB0);
    *(v4 + 384) = 0u;
    *(v4 + 400) = 0u;
  }

  else
  {
    *(v4 + 408) = v19;
    v21 = sub_1A924((v4 + 384));
    (*(v20 + 32))(v21, v3, v19);
  }

  *(v4 + 416) = 0xD000000000000012;
  *(v4 + 424) = 0x800000000010DBB0;
  *(v4 + 432) = *(v0 + SuccessSingleParameters[12]);
  *(v4 + 456) = &type metadata for Bool;
  *(v4 + 464) = 0xD000000000000011;
  *(v4 + 472) = 0x800000000010C690;
  v22 = *(v0 + SuccessSingleParameters[13]);
  if (v22)
  {
    v23 = sub_1060A0();
  }

  else
  {
    v23 = 0;
    *(v4 + 488) = 0;
    *(v4 + 496) = 0;
  }

  *(v4 + 480) = v22;
  *(v4 + 504) = v23;

  return v4;
}

uint64_t sub_A8884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_14994(a1, v11, &unk_137430, &qword_107DC0);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_16F70(a1, &unk_137430, &qword_107DC0);
  return v12;
}

uint64_t sub_A8AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E4(&qword_137598, &unk_107EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_A8B84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E4(&qword_137598, &unk_107EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_A8C48(uint64_t a1)
{
  sub_A9480(319, &qword_1378F8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_A9480(319, &qword_137900, &type metadata accessor for SpeakableString, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_A9480(319, &unk_137908, &type metadata accessor for DialogCalendar, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_A8D90(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_25E4(&qword_137598, &unk_107EB0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

void *sub_A8E6C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_25E4(&qword_137598, &unk_107EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_A8F1C(uint64_t a1)
{
  sub_A9480(319, &unk_137A20, type metadata accessor for AlarmAlarm, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_A9480(319, &qword_137A10, &type metadata accessor for SirikitApp, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_A90C8();
      if (v3 <= 0x3F)
      {
        sub_A9480(319, &qword_1378F8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_A9480(319, &unk_137908, &type metadata accessor for DialogCalendar, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_A90C8()
{
  if (!qword_139898)
  {
    v0 = sub_1070E0();
    if (!v1)
    {
      atomic_store(v0, &qword_139898);
    }
  }
}

uint64_t sub_A912C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E4(&qword_137598, &unk_107EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 52));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_A9208(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E4(&qword_137598, &unk_107EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }

  return result;
}

void sub_A92CC(uint64_t a1)
{
  sub_A9480(319, &qword_1378F8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_A9480(319, &qword_137A10, &type metadata accessor for SirikitApp, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_A90C8();
      if (v3 <= 0x3F)
      {
        sub_A9480(319, &qword_137A18, type metadata accessor for AlarmAlarm, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          sub_A9480(319, &unk_137A20, type metadata accessor for AlarmAlarm, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_A9480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_A94E4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1045E0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 dateTime];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = v8;
  sub_104570();

  v10 = sub_104580();
  if (v11 & 1) != 0 || (v53 = v10, v12 = sub_1045A0(), (v13))
  {
    (*(v5 + 8))(v7, v4);
LABEL_5:

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
LABEL_6:
    *a2 = v14;
    *(a2 + 8) = v15;
    *(a2 + 16) = v16;
    *(a2 + 24) = v17;
    *(a2 + 32) = v18;
    *(a2 + 40) = v19;
    return;
  }

  v20 = v12;
  v21 = [a1 label];
  if (v21)
  {
    v22 = v21;
    v23 = sub_106E20();
    v47 = v24;
    v48 = v23;
  }

  else
  {
    v47 = 0xE000000000000000;
    v48 = 0;
  }

  v25 = [a1 repeatSchedule];
  v26 = _swiftEmptyArrayStorage;
  v51 = v5;
  v52 = v4;
  v49 = v7;
  v50 = v20;
  if (!v25)
  {
LABEL_24:
    v36 = [a1 enabled];
    if (v36)
    {
      v37 = v36;
      v19 = [v36 BOOLValue];

      v38 = v26[2];
      if (v38)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v19 = 1;
      v38 = v26[2];
      if (v38)
      {
LABEL_26:
        v54 = _swiftEmptyArrayStorage;
        sub_83444(0, v38, 0);
        v39 = 32;
        v18 = v54;
        do
        {
          v40 = sub_106BD0();
          v54 = v18;
          v42 = v18[2];
          v41 = v18[3];
          if (v42 >= v41 >> 1)
          {
            v43 = a1;
            v44 = v40;
            sub_83444((v41 > 1), v42 + 1, 1);
            v40 = v44;
            a1 = v43;
            v18 = v54;
          }

          v18[2] = (v42 + 1);
          v18[v42 + 4] = v40;
          v39 += 8;
          --v38;
        }

        while (v38);
        (*(v51 + 8))(v49, v52);

        goto LABEL_33;
      }
    }

    (*(v51 + 8))(v49, v52);
    v18 = _swiftEmptyArrayStorage;
LABEL_33:
    v14 = v53;
    v15 = v50;
    v17 = v47;
    v16 = v48;
    goto LABEL_6;
  }

  v27 = v25;
  v46 = a1;
  sub_1069A0();
  v28 = sub_106EE0();

  if (!(v28 >> 62))
  {
    v29 = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
    if (v29)
    {
      goto LABEL_13;
    }

LABEL_23:

    a1 = v46;
    goto LABEL_24;
  }

  v29 = sub_107270();
  if (!v29)
  {
    goto LABEL_23;
  }

LABEL_13:
  v54 = _swiftEmptyArrayStorage;
  sub_83404(0, v29 & ~(v29 >> 63), 0);
  if ((v29 & 0x8000000000000000) == 0)
  {
    v30 = 0;
    v26 = v54;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v31 = sub_1071C0();
      }

      else
      {
        v31 = *(v28 + 8 * v30 + 32);
      }

      v32 = v31;
      v33 = [v31 repeatSchedule];

      v54 = v26;
      v35 = v26[2];
      v34 = v26[3];
      if (v35 >= v34 >> 1)
      {
        sub_83404((v34 > 1), v35 + 1, 1);
        v26 = v54;
      }

      ++v30;
      v26[2] = (v35 + 1);
      v26[v35 + 4] = v33;
    }

    while (v29 != v30);
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t sub_A9944()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  sub_25E4(&qword_137880, &unk_108290);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_108210;
  *(v4 + 32) = 0x6D72616C61;
  *(v4 + 40) = 0xE500000000000000;
  v5 = *v0;
  if (*v0)
  {
    v6 = type metadata accessor for AlarmAlarm(0);
    v7 = v5;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 72) = v6;
  *(v4 + 80) = 7368801;
  *(v4 + 88) = 0xE300000000000000;
  v8 = v0[1];
  if (v8)
  {
    v9 = sub_106100();
    v10 = v8;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
  }

  *(v4 + 96) = v10;
  *(v4 + 120) = v9;
  *(v4 + 128) = 0x6C6562614C77656ELL;
  *(v4 + 136) = 0xE800000000000000;
  v11 = type metadata accessor for ModifyAlarmIntentHandledRenameParameters(0);
  sub_14994(v0 + *(v11 + 24), v3, &qword_137598, &unk_107EB0);
  v12 = sub_106160();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v3, 1, v12) == 1)
  {

    sub_16F70(v3, &qword_137598, &unk_107EB0);
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
  }

  else
  {
    *(v4 + 168) = v12;
    v14 = sub_1A924((v4 + 144));
    (*(v13 + 32))(v14, v3, v12);
  }

  *(v4 + 176) = 0x616C417065656C73;
  *(v4 + 184) = 0xEA00000000006D72;
  v15 = *(v0 + *(v11 + 28));
  if (v15)
  {
    v16 = type metadata accessor for AlarmAlarm(0);
  }

  else
  {
    v16 = 0;
    *(v4 + 200) = 0;
    *(v4 + 208) = 0;
  }

  *(v4 + 192) = v15;
  *(v4 + 216) = v16;

  return v4;
}

uint64_t sub_A9BCC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for ModifyAlarmIntentHandledRenameParameters(0);
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_A9C64, 0, 0);
}

uint64_t sub_A9C64()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  *v1 = 0;
  *(v1 + 1) = 0;
  v4 = *(v2 + 24);
  v5 = sub_106160();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  *&v1[*(v2 + 28)] = 0;
  v3(v1);
  v6 = sub_A9944();
  v0[7] = v6;
  v9 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_A9DA8;

  return v9(0xD00000000000001FLL, 0x800000000010DC30, v6);
}

uint64_t sub_A9DA8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_A9F68;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_A9EF4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_A9EF4()
{
  sub_AA60C(v0[6]);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_A9F68()
{
  sub_AA60C(*(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_A9FD8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return _swift_task_switch(sub_A9FFC, 0, 0);
}

uint64_t sub_A9FFC()
{
  v0[2] = 0;
  v1 = v0[5];
  v0[3] = 0;
  v0[4] = 0;
  v1(v0 + 2);
  v3 = v0[2];
  v2 = v0[3];
  v0[8] = v3;
  v0[9] = v2;
  v4 = v0[4];
  sub_25E4(&qword_137880, &unk_108290);
  v5 = swift_allocObject();
  v0[10] = v5;
  *(v5 + 16) = xmmword_109690;
  *(v5 + 32) = 0x6D72616C61;
  *(v5 + 40) = 0xE500000000000000;
  if (v3)
  {
    v6 = type metadata accessor for AlarmAlarm(0);
    v7 = v3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
  }

  *(v5 + 48) = v7;
  *(v5 + 72) = v6;
  *(v5 + 80) = 7368801;
  *(v5 + 88) = 0xE300000000000000;
  if (v2)
  {
    v8 = sub_106100();
    v9 = v2;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
  }

  *(v5 + 96) = v9;
  *(v5 + 120) = v8;
  *(v5 + 128) = 0x616C417065656C73;
  *(v5 + 136) = 0xEA00000000006D72;
  v10 = 0;
  if (v4)
  {
    v10 = type metadata accessor for AlarmAlarm(0);
  }

  else
  {
    *(v5 + 152) = 0;
    *(v5 + 160) = 0;
  }

  v0[11] = v4;
  *(v5 + 144) = v4;
  *(v5 + 168) = v10;
  v13 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_AA1FC;

  return v13(0xD00000000000001DLL, 0x800000000010DC10, v5);
}

uint64_t sub_AA1FC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_AA3C4;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_AA348;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_AA348()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 112);

  return v1(v2);
}

uint64_t sub_AA3C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_AA43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_14994(a1, v11, &unk_137430, &qword_107DC0);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_16F70(a1, &unk_137430, &qword_107DC0);
  return v12;
}

uint64_t sub_AA60C(uint64_t a1)
{
  v2 = type metadata accessor for ModifyAlarmIntentHandledRenameParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_AA67C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_25E4(&qword_137598, &unk_107EB0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_AA758(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_25E4(&qword_137598, &unk_107EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_AA808(uint64_t a1)
{
  sub_AA8FC(319, &unk_137A20, type metadata accessor for AlarmAlarm);
  if (v1 <= 0x3F)
  {
    sub_AA8FC(319, &qword_137A10, &type metadata accessor for SirikitApp);
    if (v2 <= 0x3F)
    {
      sub_AA8FC(319, &qword_1378F8, &type metadata accessor for SpeakableString);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_AA8FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1070E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_AA950(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25E4(&qword_137500, &qword_107E10);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v79 - v8;
  v10 = sub_105590();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1DB58(v2);
  if (result)
  {
    return result;
  }

  v80 = v7;
  v81 = v9;
  if (qword_136DB0 != -1)
  {
    swift_once();
  }

  v15 = sub_106D20();
  v16 = sub_135C4(v15, qword_139A90);
  v17 = sub_106D10();
  v18 = sub_106FC0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "Resolved alarmSearch from RRaaS is nil!", v19, 2u);
  }

  v20 = sub_AD230(a1);
  if (v20 && (, v21 = sub_105F80(), , v21))
  {
    v22 = sub_105F00();

    v23 = v22 ^ 1;
  }

  else
  {
    v23 = 1;
  }

  v82 = v23;

  v24 = sub_106D10();
  v25 = sub_106FC0();

  if (os_log_type_enabled(v24, v25))
  {
    v79[0] = v11;
    v79[1] = v16;
    v26 = 7104878;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v83 = v28;
    *v27 = 136315394;
    if (v20 && sub_105F80())
    {
      v29 = sub_105F00();

      v30 = (v29 & 1) == 0;
      if (v29)
      {
        v26 = 1702195828;
      }

      else
      {
        v26 = 0x65736C6166;
      }

      if (v30)
      {
        v31 = 0xE500000000000000;
      }

      else
      {
        v31 = 0xE400000000000000;
      }
    }

    else
    {
      v31 = 0xE300000000000000;
    }

    v32 = sub_722E8(v26, v31, &v83);

    *(v27 + 4) = v32;
    *(v27 + 12) = 1024;
    *(v27 + 14) = v82 & 1;
    _os_log_impl(&dword_0, v24, v25, "In toINAlarmSearch: SiriInference.meridiemSetByUser = %s, isMeridianInferred = %{BOOL}d", v27, 0x12u);
    sub_2738(v28);

    v11 = v79[0];
  }

  else
  {
  }

  sub_106A50();
  v33 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v34 = sub_106E10();
  v35 = [v33 initWithIdentifier:0 displayString:v34];

  if (sub_AC160())
  {
    v36 = 3;
  }

  else if (sub_AC5E0())
  {
    v36 = 2;
  }

  else
  {
    v36 = 0;
  }

  [v35 setAlarmReferenceType:v36];
  sub_AB868();
  if (v37)
  {
    v38 = sub_106E10();
  }

  else
  {
    v38 = 0;
  }

  [v35 setLabel:v38];

  [v35 setAlarmSearchStatus:sub_ACA60()];
  v39 = sub_ACBCC();
  (*(v11 + 104))(v13, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v10);
  v40 = sub_AB75C(v13, v39);

  (*(v11 + 8))(v13, v10);
  v41 = [objc_allocWithZone(NSNumber) initWithBool:v40];
  [v35 setIncludeSleepAlarm:v41];

  [v35 setPeriod:sub_ACF8C()];
  v42 = sub_106F50();
  [v35 setIsMeridianInferred:v42];

  if (v20 && sub_105F70())
  {

    if (!sub_1058F0() || (v43 = sub_105980(), , !v43) || (v44 = sub_1058C0(), , !v44))
    {

      v53 = sub_106D10();
      v54 = sub_106FC0();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v83 = v56;
        *v55 = 136315138;
        if (sub_105F70())
        {
          v57 = sub_105F60();
          v59 = v58;
        }

        else
        {
          v57 = 0;
          v59 = 0xE000000000000000;
        }

        v72 = sub_722E8(v57, v59, &v83);

        *(v55 + 4) = v72;
        _os_log_impl(&dword_0, v53, v54, "Found time range info from SiriInference: %s", v55, 0xCu);
        sub_2738(v56);
      }

      else
      {
      }

      isa = sub_105F20().super.isa;

      v71 = &selRef_setTimeRange_;
      goto LABEL_61;
    }
  }

  v45 = sub_106D10();
  v46 = sub_106FC0();

  if (!os_log_type_enabled(v45, v46))
  {

    if (!v20)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  v47 = swift_slowAlloc();
  v48 = swift_slowAlloc();
  v83 = v48;
  *v47 = 136315138;
  if (v20)
  {
    v49 = sub_105F80();
    if (v49)
    {
      v50 = sub_105EF0();
      v52 = v51;

      v49 = v50;
      goto LABEL_48;
    }
  }

  else
  {
    v49 = 0;
  }

  v52 = 0xE000000000000000;
LABEL_48:
  v60 = sub_722E8(v49, v52, &v83);

  *(v47 + 4) = v60;
  _os_log_impl(&dword_0, v45, v46, "Found time point info from SiriInference: %s", v47, 0xCu);
  sub_2738(v48);

  if (!v20)
  {
LABEL_52:
    v65 = sub_1045E0();
    (*(*(v65 - 8) + 56))(v81, 1, 1, v65);
    goto LABEL_55;
  }

LABEL_49:

  v61 = sub_105F30(0, 0);

  if (!v61)
  {
    goto LABEL_52;
  }

  v62 = [v61 startDateComponents];

  if (v62)
  {
    v63 = v80;
    sub_104570();

    v64 = 0;
  }

  else
  {
    v64 = 1;
    v63 = v80;
  }

  v66 = sub_1045E0();
  v67 = *(v66 - 8);
  (*(v67 + 56))(v63, v64, 1, v66);
  v68 = v63;
  v69 = v81;
  sub_1D68C(v68, v81);
  if ((*(v67 + 48))(v69, 1, v66) != 1)
  {
    isa = sub_104560().super.isa;
    (*(v67 + 8))(v69, v66);
    goto LABEL_56;
  }

LABEL_55:
  isa = 0;
LABEL_56:
  v71 = &selRef_setTime_;
LABEL_61:
  [v35 *v71];

  v73 = v35;
  v74 = sub_106D10();
  v75 = sub_106FC0();
  v76 = v73;

  if (os_log_type_enabled(v74, v75))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v77 = 138412290;
    *(v77 + 4) = v76;
    *v78 = v76;
    v76 = v76;
    _os_log_impl(&dword_0, v74, v75, "alarmSearch Converted from UsoEntity_common_Alarm: %@", v77, 0xCu);
    sub_16F70(v78, &qword_137578, &unk_10B4E0);
  }

  return v76;
}

uint64_t sub_AB3EC(uint64_t a1)
{
  if (sub_1058F0())
  {
    v1 = sub_105960();

    if (v1)
    {

      v2 = sub_106220();

      if (v2)
      {
        if (qword_136DB0 != -1)
        {
          swift_once();
        }

        v3 = sub_106D20();
        sub_135C4(v3, qword_139A90);

        v4 = sub_106D10();
        v5 = sub_106FC0();

        if (!os_log_type_enabled(v4, v5))
        {
          goto LABEL_17;
        }

        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v18 = v7;
        *v6 = 136315138;
        sub_105F90();
        sub_ADB60(&qword_139AC8, &type metadata accessor for DateTime, &protocol conformance descriptor for DateTime);
        v8 = sub_107340();
        v10 = sub_722E8(v8, v9, &v18);

        *(v6 + 4) = v10;
        v11 = "Got inferred alarm time from endDateTime: %s";
LABEL_16:
        _os_log_impl(&dword_0, v4, v5, v11, v6, 0xCu);
        sub_2738(v7);

LABEL_17:

        goto LABEL_18;
      }
    }
  }

  if (!sub_105910())
  {
    return 0;
  }

  v12 = sub_105C90();

  if (!v12)
  {
    return 0;
  }

  v2 = sub_106220();

  if (v2)
  {
    if (qword_136DB0 != -1)
    {
      swift_once();
    }

    v13 = sub_106D20();
    sub_135C4(v13, qword_139A90);

    v4 = sub_106D10();
    v5 = sub_106FC0();

    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_17;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    sub_105F90();
    sub_ADB60(&qword_139AC8, &type metadata accessor for DateTime, &protocol conformance descriptor for DateTime);
    v14 = sub_107340();
    v16 = sub_722E8(v14, v15, &v18);

    *(v6 + 4) = v16;
    v11 = "Got inferred alarm time from recurringDateTime: %s";
    goto LABEL_16;
  }

LABEL_18:

  return v2;
}

BOOL sub_AB75C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_105590();
    ++v2;
    sub_ADB60(&qword_139AB0, &type metadata accessor for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues, &protocol conformance descriptor for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues);
  }

  while ((sub_106E00() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_AB868()
{
  v0 = sub_104EC0();
  v42 = *(v0 - 8);
  v43 = v0;
  __chkstk_darwin(v0);
  v41 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_105060();
  v39 = *(v2 - 8);
  v40 = v2;
  __chkstk_darwin(v2);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_105030();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v44 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_106200();
  __chkstk_darwin(v6 - 8);
  v47 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_25E4(&qword_138CB8, &qword_1097D0);
  __chkstk_darwin(v48);
  v49 = &v37 - v8;
  v9 = sub_1064A0();
  v50 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1064C0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_105590();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_105920();
  if (v21)
  {
    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v23 = sub_106E60();

      return v23;
    }
  }

  v25 = sub_ACBCC();
  (*(v17 + 104))(v19, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v16);
  v26 = sub_AB75C(v19, v25);

  (*(v17 + 8))(v19, v16);
  if (v26)
  {
    (*(v50 + 104))(v11, enum case for AppInstallUtil.Domain.sleep(_:), v9);
    sub_1064B0();
    v27 = sub_106470();
    (*(v13 + 8))(v15, v12);
    if ((v27 & 1) == 0)
    {
      type metadata accessor for AlarmBaseCATs_Sync(0);
      sub_1061E0();
      sub_1060D0();
      v28 = v49;
      sub_1060C0();

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_16F70(v28, &qword_138CB8, &qword_1097D0);
      }

      else
      {
        v30 = v44;
        v29 = v45;
        v31 = v46;
        (*(v45 + 32))(v44, v28, v46);
        v32 = sub_105020();
        if (*(v32 + 16))
        {
          v33 = v38;
          v34 = v39;
          v35 = v40;
          (*(v39 + 16))(v38, v32 + ((*(v34 + 80) + 32) & ~*(v34 + 80)), v40);

          v36 = v41;
          sub_105050();
          (*(v34 + 8))(v33, v35);
          v23 = sub_104EB0();
          (*(v42 + 8))(v36, v43);
          (*(v29 + 8))(v30, v31);
          return v23;
        }

        (*(v29 + 8))(v30, v31);
      }
    }
  }

  return 0;
}

id *sub_ABEB8(uint64_t a1)
{
  if (sub_105910())
  {
    sub_105C90();
  }

  if (sub_106220())
  {
    isa = sub_105F20().super.isa;
    v2 = INDateComponentsRange.alarmRepeatSchedule.getter();

    if (v2 >> 62)
    {
      v3 = sub_107270();
    }

    else
    {
      v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    }

    if (v3)
    {
      v4 = sub_105F20().super.isa;
      v5 = INDateComponentsRange.alarmRepeatSchedule.getter();

      return v5;
    }

    else
    {
      v15 = sub_84190();

      return v15;
    }
  }

  else
  {
    if (qword_136DB0 != -1)
    {
      swift_once();
    }

    v7 = sub_106D20();
    sub_135C4(v7, qword_139A90);

    v8 = sub_106D10();
    v9 = sub_106FC0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;

      sub_25E4(&qword_139AA8, "FW");
      v12 = sub_106E30();
      v14 = sub_722E8(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_0, v8, v9, "Can NOT get recurringTime from recurringDateTime: %s", v10, 0xCu);
      sub_2738(v11);
    }

    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_AC114()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_139A90);
  sub_135C4(v0, qword_139A90);
  return sub_106A80();
}

uint64_t sub_AC160()
{
  v0 = sub_105A10();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v22 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25E4(&qword_139AF0, &qword_10A2A8);
  __chkstk_darwin(v3);
  v5 = &v21 - v4;
  v6 = sub_25E4(&qword_139AF8, &qword_10A2B0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v21 - v11;
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  if (sub_105820())
  {
    sub_105A00();
  }

  else
  {
    (*(v1 + 56))(v14, 1, 1, v0);
  }

  (*(v1 + 104))(v12, enum case for UsoEntity_common_Quantifier.DefinedValues.common_Quantifier_All(_:), v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v15 = *(v3 + 48);
  sub_14994(v14, v5, &qword_139AF8, &qword_10A2B0);
  sub_14994(v12, &v5[v15], &qword_139AF8, &qword_10A2B0);
  v16 = *(v1 + 48);
  if (v16(v5, 1, v0) != 1)
  {
    sub_14994(v5, v9, &qword_139AF8, &qword_10A2B0);
    if (v16(&v5[v15], 1, v0) != 1)
    {
      v18 = v22;
      (*(v1 + 32))(v22, &v5[v15], v0);
      sub_ADB60(&qword_139B00, &type metadata accessor for UsoEntity_common_Quantifier.DefinedValues, &protocol conformance descriptor for UsoEntity_common_Quantifier.DefinedValues);
      v17 = sub_106E00();
      v19 = *(v1 + 8);
      v19(v18, v0);
      sub_16F70(v12, &qword_139AF8, &qword_10A2B0);
      sub_16F70(v14, &qword_139AF8, &qword_10A2B0);
      v19(v9, v0);
      sub_16F70(v5, &qword_139AF8, &qword_10A2B0);
      return v17 & 1;
    }

    sub_16F70(v12, &qword_139AF8, &qword_10A2B0);
    sub_16F70(v14, &qword_139AF8, &qword_10A2B0);
    (*(v1 + 8))(v9, v0);
    goto LABEL_9;
  }

  sub_16F70(v12, &qword_139AF8, &qword_10A2B0);
  sub_16F70(v14, &qword_139AF8, &qword_10A2B0);
  if (v16(&v5[v15], 1, v0) != 1)
  {
LABEL_9:
    sub_16F70(v5, &qword_139AF0, &qword_10A2A8);
    v17 = 0;
    return v17 & 1;
  }

  sub_16F70(v5, &qword_139AF8, &qword_10A2B0);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_AC5E0()
{
  v0 = sub_105B30();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v22 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25E4(&qword_1376F8, &qword_1080F8);
  __chkstk_darwin(v3);
  v5 = &v21 - v4;
  v6 = sub_25E4(&qword_137700, &qword_108100);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v21 - v11;
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  if (sub_105830())
  {
    sub_105B20();
  }

  else
  {
    (*(v1 + 56))(v14, 1, 1, v0);
  }

  (*(v1 + 104))(v12, enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Next(_:), v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v15 = *(v3 + 48);
  sub_14994(v14, v5, &qword_137700, &qword_108100);
  sub_14994(v12, &v5[v15], &qword_137700, &qword_108100);
  v16 = *(v1 + 48);
  if (v16(v5, 1, v0) != 1)
  {
    sub_14994(v5, v9, &qword_137700, &qword_108100);
    if (v16(&v5[v15], 1, v0) != 1)
    {
      v18 = v22;
      (*(v1 + 32))(v22, &v5[v15], v0);
      sub_ADB60(&qword_137708, &type metadata accessor for UsoEntity_common_ListPosition.DefinedValues, &protocol conformance descriptor for UsoEntity_common_ListPosition.DefinedValues);
      v17 = sub_106E00();
      v19 = *(v1 + 8);
      v19(v18, v0);
      sub_16F70(v12, &qword_137700, &qword_108100);
      sub_16F70(v14, &qword_137700, &qword_108100);
      v19(v9, v0);
      sub_16F70(v5, &qword_137700, &qword_108100);
      return v17 & 1;
    }

    sub_16F70(v12, &qword_137700, &qword_108100);
    sub_16F70(v14, &qword_137700, &qword_108100);
    (*(v1 + 8))(v9, v0);
    goto LABEL_9;
  }

  sub_16F70(v12, &qword_137700, &qword_108100);
  sub_16F70(v14, &qword_137700, &qword_108100);
  if (v16(&v5[v15], 1, v0) != 1)
  {
LABEL_9:
    sub_16F70(v5, &qword_1376F8, &qword_1080F8);
    v17 = 0;
    return v17 & 1;
  }

  sub_16F70(v5, &qword_137700, &qword_108100);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_ACA60()
{
  v0 = sub_105590();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_ACBCC();
  v5 = *(v1 + 104);
  v5(v3, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesNotSet(_:), v0);
  v6 = sub_AB75C(v3, v4);
  v7 = *(v1 + 8);
  v7(v3, v0);
  if (v6)
  {

    return 2;
  }

  else
  {
    v5(v3, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSet(_:), v0);
    v9 = sub_AB75C(v3, v4);

    v7(v3, v0);
    return v9;
  }
}

id *sub_ACBCC()
{
  v0 = sub_25E4(&qword_139AB8, "FW");
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_105590();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v21 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1058E0();
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)); i; i = sub_107270())
  {
    v9 = 0;
    v24 = v6 & 0xC000000000000001;
    v10 = (v19 + 48);
    v20 = (v19 + 32);
    v18 = (v19 + 56);
    v11 = _swiftEmptyArrayStorage;
    v22 = i;
    v23 = v7;
    while (v24)
    {
      sub_1071C0();
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_24;
      }

LABEL_11:
      sub_105810();
      if (v25)
      {
        sub_105600();
      }

      sub_1055A0();
      sub_1059C0();

      if (v26)
      {
        sub_105580();

        if ((*v10)(v2, 1, v3) != 1)
        {
          v13 = *v20;
          (*v20)(v21, v2, v3);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_AD868(0, v11[2] + 1, 1, v11, &qword_139AC0, "FW", &type metadata accessor for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues);
          }

          v15 = v11[2];
          v14 = v11[3];
          if (v15 >= v14 >> 1)
          {
            v11 = sub_AD868((v14 > 1), v15 + 1, 1, v11, &qword_139AC0, "FW", &type metadata accessor for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues);
          }

          v11[2] = (v15 + 1);
          v13(v11 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v15, v21, v3);
          goto LABEL_7;
        }
      }

      else
      {

        (*v18)(v2, 1, 1, v3);
      }

      sub_16F70(v2, &qword_139AB8, "FW");
LABEL_7:
      ++v9;
      v7 = v23;
      if (v12 == v22)
      {
        goto LABEL_28;
      }
    }

    if (v9 >= *(v7 + 16))
    {
      goto LABEL_25;
    }

    v12 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_11;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_28:

  return v11;
}

uint64_t sub_ACF8C()
{
  v0 = sub_25E4(&qword_139AE8, &qword_10A2A0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v15 - v4;
  if (!sub_1058F0() || (v6 = sub_105980(), , !v6) || (v7 = sub_1058B0(), , !v7))
  {
    if (!sub_1058F0() || (v8 = sub_105970(), , !v8))
    {
      v13 = sub_105B50();
      (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
      goto LABEL_10;
    }
  }

  sub_105B40();

  v9 = sub_105B50();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v5, 1, v9) != 1)
  {
    sub_14994(v5, v3, &qword_139AE8, &qword_10A2A0);
    v12 = (*(v10 + 88))(v3, v9);
    if (v12 == enum case for UsoEntity_common_DateTimeRange.DefinedValues.common_DateTimeRange_Afternoon(_:))
    {
      v11 = 2;
      goto LABEL_11;
    }

    if (v12 == enum case for UsoEntity_common_DateTimeRange.DefinedValues.common_DateTimeRange_Night(_:))
    {
      v11 = 4;
      goto LABEL_11;
    }

    if (v12 == enum case for UsoEntity_common_DateTimeRange.DefinedValues.common_DateTimeRange_Evening(_:))
    {
      v11 = 3;
      goto LABEL_11;
    }

    if (v12 == enum case for UsoEntity_common_DateTimeRange.DefinedValues.common_DateTimeRange_Morning(_:))
    {
      v11 = 1;
      goto LABEL_11;
    }

    (*(v10 + 8))(v3, v9);
LABEL_10:
    v11 = 0;
  }

LABEL_11:
  sub_16F70(v5, &qword_139AE8, &qword_10A2A0);
  return v11;
}

uint64_t sub_AD230(uint64_t a1)
{
  if (sub_1058F0())
  {
    sub_105960();
  }

  v1 = sub_106230();

  if (v1)
  {
    if (qword_136DB0 != -1)
    {
      swift_once();
    }

    v2 = sub_106D20();
    sub_135C4(v2, qword_139A90);

    v3 = sub_106D10();
    v4 = sub_106FC0();

    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_16;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    sub_105F90();
    sub_ADB60(&qword_139AC8, &type metadata accessor for DateTime, &protocol conformance descriptor for DateTime);
    v7 = sub_107340();
    v9 = sub_722E8(v7, v8, &v16);

    *(v5 + 4) = v9;
    v10 = "Got time range from endDateTime: %s";
LABEL_15:
    _os_log_impl(&dword_0, v3, v4, v10, v5, 0xCu);
    sub_2738(v6);

LABEL_16:

    return v1;
  }

  if (sub_105910())
  {
    sub_105C90();
  }

  v1 = sub_106230();

  if (v1)
  {
    if (qword_136DB0 != -1)
    {
      swift_once();
    }

    v11 = sub_106D20();
    sub_135C4(v11, qword_139A90);

    v3 = sub_106D10();
    v4 = sub_106FC0();

    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_16;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    sub_105F90();
    sub_ADB60(&qword_139AC8, &type metadata accessor for DateTime, &protocol conformance descriptor for DateTime);
    v12 = sub_107340();
    v14 = sub_722E8(v12, v13, &v16);

    *(v5 + 4) = v14;
    v10 = "Got time range from recurringDateTime: %s";
    goto LABEL_15;
  }

  return v1;
}

id *sub_AD590(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_25E4(&qword_1376D0, &unk_1080E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_AD6C4(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_25E4(&qword_139620, &qword_109D18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

id *sub_AD868(id *result, int64_t a2, char a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_25E4(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = (2 * ((result - v16) / v15));
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

id *sub_ADA44(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_25E4(&qword_139B08, &qword_10A2B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 48));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_ADB60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_ADBA8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_106960();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&off_1307E0 + a1);

  return v5(a2, v6, v4);
}

uint64_t sub_ADC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = sub_1065A0();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v5 = sub_1053C0();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v6 = sub_1053E0();
  v3[22] = v6;
  v3[23] = *(v6 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v7 = sub_105380();
  v3[26] = v7;
  v3[27] = *(v7 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return _swift_task_switch(sub_ADE38, 0, 0);
}

uint64_t sub_ADE38()
{
  v143 = v0;
  if (qword_136DB8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v4 = *(v0 + 88);
  v5 = sub_106D20();
  sub_135C4(v5, qword_139B10);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_106D10();
  v8 = sub_106FC0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 240);
  v12 = *(v0 + 208);
  v11 = *(v0 + 216);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v142[0] = v138;
    *v13 = 136315138;
    sub_B0A94(&unk_1374D0, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v14 = sub_107340();
    v16 = v15;
    v139 = *(v11 + 8);
    v139(v10, v12);
    v17 = sub_722E8(v14, v16, v142);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_0, v7, v8, "AlarmDisambiguation.parsePromptResult(input:items:) parsing input: %s", v13, 0xCu);
    sub_2738(v138);
  }

  else
  {

    v139 = *(v11 + 8);
    v139(v10, v12);
  }

  v18 = *(v0 + 200);
  v20 = *(v0 + 176);
  v19 = *(v0 + 184);
  sub_105360();
  v21 = (*(v19 + 88))(v18, v20);
  if (v21 == enum case for Parse.NLv3IntentOnly(_:))
  {
    goto LABEL_7;
  }

  if (v21 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v22 = *(v0 + 200);
    (*(*(v0 + 184) + 96))(v22, *(v0 + 176));
    sub_25E4(&qword_13B010, &unk_1087A0);

    v23 = sub_105E80();
    (*(*(v23 - 8) + 8))(v22, v23);
LABEL_10:
    v6(*(v0 + 224), *(v0 + 88), *(v0 + 208));
    v24 = sub_106D10();
    v25 = sub_106FC0();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 224);
    v28 = *(v0 + 208);
    if (v26)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v142[0] = v30;
      *v29 = 136315138;
      sub_105360();
      v31 = sub_106E30();
      v33 = v32;
      v139(v27, v28);
      v34 = sub_722E8(v31, v33, v142);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_0, v24, v25, "AlarmDisambiguation.parsePromptResult(input:items:) nlv3 parse: %s", v29, 0xCu);
      sub_2738(v30);
    }

    else
    {

      v139(v27, v28);
    }

    v35 = sub_AFEDC(*(v0 + 88));
    if (v35)
    {
      v36 = v35;
      v37 = sub_106D10();
      v38 = sub_106FC0();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v142[0] = v140;
        *v39 = 136315138;
        v40 = v36;
        v41 = [v40 description];
        v42 = sub_106E20();
        v44 = v43;

        v45 = sub_722E8(v42, v44, v142);

        *(v39 + 4) = v45;
        _os_log_impl(&dword_0, v37, v38, "AlarmDisambiguation.parsePromptResult(input:items:) Using parsed AlarmSearch: %s", v39, 0xCu);
        sub_2738(v140);
      }

      [v36 alarmReferenceType];
      v46 = sub_106970();
      if (v46 == sub_106970())
      {
        v47 = sub_106D10();
        v48 = sub_106FC0();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&dword_0, v47, v48, "AlarmDisambiguation.parsePromptResult(input:items:) User mentioned .all for disambiguation", v49, 2u);
        }

        v50 = *(v0 + 96);

        goto LABEL_34;
      }

      v54 = v36;
      v55 = sub_106D10();
      v56 = sub_106FC0();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v142[0] = v58;
        *v57 = 136315138;
        v59 = v54;
        v60 = [v59 description];
        v61 = sub_106E20();
        v63 = v62;

        v64 = sub_722E8(v61, v63, v142);

        *(v57 + 4) = v64;
        _os_log_impl(&dword_0, v55, v56, "AlarmDisambiguation.parsePromptResult(input:items:) Filtering disambiguation results using alarmSearch: %s", v57, 0xCu);
        sub_2738(v58);
      }

      v65 = *(v0 + 104);
      *(v0 + 72) = *(v0 + 96);
      v66 = swift_task_alloc();
      *(v66 + 16) = v65;
      *(v66 + 24) = v54;
      sub_106F40();

      swift_getWitnessTable();
      v50 = sub_1071F0();

      v67 = sub_106F30();
      if (v67 >= 2 && sub_106F30() == v67)
      {
      }

      else
      {
        *(v0 + 80) = v50;
        swift_getWitnessTable();
        v88 = sub_106F90();

        if ((v88 & 1) == 0)
        {
LABEL_34:

          v89 = *(v0 + 8);

          return v89(v50);
        }
      }
    }

    else
    {
      v51 = sub_106D10();
      v52 = sub_106FC0();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_0, v51, v52, "AlarmDisambiguation.parsePromptResult(input:items:) No AlarmSearch from parse", v53, 2u);
      }
    }

    v50 = 0;
    goto LABEL_34;
  }

  if (v21 == enum case for Parse.directInvocation(_:))
  {
    v68 = *(v0 + 200);
    v70 = *(v0 + 160);
    v69 = *(v0 + 168);
    v72 = *(v0 + 136);
    v71 = *(v0 + 144);
    (*(*(v0 + 184) + 96))(v68, *(v0 + 176));
    (*(v71 + 32))(v69, v68, v72);
    v73 = *(v71 + 16);
    v73(v70, v69, v72);
    v74 = sub_106D10();
    v75 = sub_106FC0();
    v76 = os_log_type_enabled(v74, v75);
    v77 = *(v0 + 160);
    if (v76)
    {
      v78 = *(v0 + 144);
      v79 = *(v0 + 152);
      v80 = *(v0 + 136);
      v81 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v142[0] = v141;
      *v81 = 136315138;
      v73(v79, v77, v80);
      v82 = sub_106E30();
      v84 = v83;
      v85 = *(v78 + 8);
      v85(v77, v80);
      v86 = sub_722E8(v82, v84, v142);
      v87 = v85;

      *(v81 + 4) = v86;
      _os_log_impl(&dword_0, v74, v75, "AlarmDisambiguation.parsePromptResult(input:items:) direct invocation: %s", v81, 0xCu);
      sub_2738(v141);
    }

    else
    {
      v103 = *(v0 + 136);
      v102 = *(v0 + 144);

      v87 = *(v102 + 8);
      v87(v77, v103);
    }

    v104 = sub_1053B0();
    if (v104)
    {
      v105 = v104;
      v106 = *(v0 + 120);
      v107 = *(v0 + 128);
      v108 = *(v0 + 112);
      (*(v106 + 104))(v107, enum case for DirectInvocationUtils.Alarm.UserInfoKey.alarmId(_:), v108);
      v109 = sub_106590();
      v111 = v110;
      (*(v106 + 8))(v107, v108);
      if (*(v105 + 16))
      {
        v112 = sub_32658(v109, v111);
        v114 = v113;

        if (v114)
        {
          sub_135FC(*(v105 + 56) + 32 * v112, v0 + 16);

          if (*(v0 + 40))
          {
            if (swift_dynamicCast())
            {
              v115 = sub_106A30();
              v117 = v116;

              if (v117)
              {

                v118 = sub_106D10();
                v119 = sub_106FA0();

                if (os_log_type_enabled(v118, v119))
                {
                  v120 = swift_slowAlloc();
                  v121 = swift_slowAlloc();
                  v142[0] = v121;
                  *v120 = 136315138;

                  v122 = sub_722E8(v115, v117, v142);

                  *(v120 + 4) = v122;
                  _os_log_impl(&dword_0, v118, v119, "AlarmDisambiguation.parsePromptResult(input:items:) Direct invocation alarm ID: %s", v120, 0xCu);
                  sub_2738(v121);
                }

                v123 = *(v0 + 168);
                v124 = *(v0 + 136);
                v125 = *(v0 + 104);
                *(v0 + 64) = *(v0 + 96);
                v126 = swift_task_alloc();
                v126[2] = v125;
                v126[3] = v115;
                v126[4] = v117;
                sub_106F40();

                swift_getWitnessTable();
                v50 = sub_1071F0();

                v87(v123, v124);
                goto LABEL_34;
              }
            }

            goto LABEL_55;
          }

LABEL_54:
          sub_16F70(v0 + 16, &qword_137490, qword_108C80);
LABEL_55:
          v127 = sub_106D10();
          v128 = sub_106FB0();
          if (os_log_type_enabled(v127, v128))
          {
            v129 = swift_slowAlloc();
            *v129 = 0;
            _os_log_impl(&dword_0, v127, v128, "AlarmDisambiguation.parsePromptResult(input:items:) No alarmId in direct invocation", v129, 2u);
          }

          v130 = *(v0 + 168);
          v131 = *(v0 + 136);

          sub_25E4(&qword_137DD8, &unk_1085D0);
          sub_26E48();
          swift_allocError();
          *v132 = 0;
          swift_willThrow();
          v87(v130, v131);
          goto LABEL_60;
        }
      }

      else
      {
      }
    }

    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_54;
  }

  if (v21 == enum case for Parse.NLv4IntentOnly(_:) || v21 == enum case for Parse.uso(_:))
  {
LABEL_7:
    (*(*(v0 + 184) + 8))(*(v0 + 200), *(v0 + 176));
    goto LABEL_10;
  }

  v6(*(v0 + 232), *(v0 + 88), *(v0 + 208));
  v91 = sub_106D10();
  v92 = sub_106FB0();
  v93 = os_log_type_enabled(v91, v92);
  v94 = *(v0 + 232);
  v95 = *(v0 + 208);
  if (v93)
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v142[0] = v97;
    *v96 = 136315138;
    sub_105360();
    v98 = sub_106E30();
    v100 = v99;
    v139(v94, v95);
    v101 = sub_722E8(v98, v100, v142);

    *(v96 + 4) = v101;
    _os_log_impl(&dword_0, v91, v92, "AlarmDisambiguation.parsePromptResult(input:items:) Unsupported parse: %s", v96, 0xCu);
    sub_2738(v97);
  }

  else
  {

    v139(v94, v95);
  }

  v133 = *(v0 + 200);
  v134 = *(v0 + 176);
  v135 = *(v0 + 184);
  sub_25E4(&qword_137DD8, &unk_1085D0);
  sub_26E48();
  swift_allocError();
  *v136 = 0;
  swift_willThrow();
  (*(v135 + 8))(v133, v134);
LABEL_60:

  v137 = *(v0 + 8);

  return v137();
}

void sub_AEF38(void *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v3 = sub_105380();
  v100 = *(v3 - 8);
  v101 = v3;
  __chkstk_darwin(v3);
  v99 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1065A0();
  v103 = *(v5 - 8);
  v104 = v5;
  __chkstk_darwin(v5);
  v102 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1053C0();
  v106 = *(v7 - 1);
  v107 = v7;
  __chkstk_darwin(v7);
  v105 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_105460();
  v97 = *(v9 - 8);
  v98 = v9;
  __chkstk_darwin(v9);
  v11 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_105410();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1053E0();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v94 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v94 - v18;
  v20 = sub_105E80();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v94 - v25;
  v108 = a1;
  sub_105360();
  v27 = (*(v15 + 88))(v19, v14);
  if (v27 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v15 + 96))(v19, v14);
LABEL_5:
    v28 = *(v21 + 32);
    v28(v26, v19, v20);
    v28(v24, v26, v20);
    type metadata accessor for AlarmNLIntent(0);
    swift_allocObject();
    v29 = sub_B3800(v24);
    if (qword_136DB8 != -1)
    {
      swift_once();
    }

    v30 = sub_106D20();
    sub_135C4(v30, qword_139B10);

    v31 = sub_106D10();
    v32 = sub_106FC0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v111 = v34;
      *v33 = 136315138;
      v110 = v29;
      sub_B0A94(&qword_137480, type metadata accessor for AlarmNLIntent, &unk_10A860);
      v35 = sub_105620();
      v37 = sub_722E8(v35, v36, &v111);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_0, v31, v32, "AlarmDisambiguation.determineWindowInputType(input:) alarmNLIntent: %s", v33, 0xCu);
      sub_2738(v34);
    }

    v38 = sub_B372C();
    if (v38 <= 1)
    {
      if (v38)
      {
        sub_1052F0();
      }

      else
      {
        sub_105300();
      }

      goto LABEL_28;
    }

    if (v38 == 2)
    {
      sub_105310();
LABEL_28:

      return;
    }

    goto LABEL_46;
  }

  if (v27 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v15 + 96))(v19, v14);
    sub_25E4(&qword_13B010, &unk_1087A0);

    goto LABEL_5;
  }

  if (v27 != enum case for Parse.directInvocation(_:))
  {
    if (v27 == enum case for Parse.NLv4IntentOnly(_:))
    {
      (*(v15 + 96))(v19, v14);
      sub_106650();
      swift_unknownObjectRelease();
      return;
    }

    if (v27 == enum case for Parse.uso(_:))
    {
      (*(v15 + 96))(v19, v14);
      v66 = v95;
      v67 = v96;
      (*(v95 + 32))(v13, v19, v96);
      sub_105400();
      sub_105450();
      (*(v97 + 8))(v11, v98);
      sub_106640();

      (*(v66 + 8))(v13, v67);
      return;
    }

    if (qword_136DB8 != -1)
    {
      swift_once();
    }

    v68 = sub_106D20();
    sub_135C4(v68, qword_139B10);
    v70 = v99;
    v69 = v100;
    v71 = v101;
    (*(v100 + 16))(v99, v108, v101);
    v72 = sub_106D10();
    v73 = sub_106FB0();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *&v111 = v107;
      *v74 = 136315138;
      LODWORD(v106) = v73;
      sub_105360();
      v75 = sub_106E30();
      v76 = v70;
      v78 = v77;
      (*(v69 + 8))(v76, v71);
      v79 = sub_722E8(v75, v78, &v111);

      *(v74 + 4) = v79;
      _os_log_impl(&dword_0, v72, v106, "AlarmDisambiguation.determineWindowInputType(input:) Received an unsupported parse for disambiguation window prompt: %s", v74, 0xCu);
      sub_2738(v107);
    }

    else
    {

      (*(v69 + 8))(v70, v71);
    }

    (*(v15 + 8))(v19, v14);
    goto LABEL_46;
  }

  (*(v15 + 96))(v19, v14);
  v40 = v105;
  v39 = v106;
  v41 = v19;
  v42 = v107;
  (*(v106 + 32))(v105, v41, v107);
  if (qword_136DB8 != -1)
  {
    swift_once();
  }

  v43 = sub_106D20();
  sub_135C4(v43, qword_139B10);
  v44 = sub_106D10();
  v45 = sub_106FC0();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_0, v44, v45, "AlarmDisambiguation.determineWindowInputType(input:) Received directInvocation", v46, 2u);
  }

  v47 = sub_1053B0();
  if (!v47)
  {
    (*(v39 + 8))(v40, v42);
    v111 = 0u;
    v112 = 0u;
LABEL_42:
    sub_16F70(&v111, &qword_137490, qword_108C80);
    goto LABEL_46;
  }

  v48 = v47;
  v50 = v102;
  v49 = v103;
  v51 = v104;
  (*(v103 + 104))(v102, enum case for DirectInvocationUtils.Alarm.UserInfoKey.alarmId(_:), v104);
  v52 = sub_106590();
  v54 = v53;
  (*(v49 + 8))(v50, v51);
  if (!*(v48 + 16))
  {

    goto LABEL_40;
  }

  v55 = sub_32658(v52, v54);
  v57 = v56;

  if ((v57 & 1) == 0)
  {
LABEL_40:

    v111 = 0u;
    v112 = 0u;
    goto LABEL_41;
  }

  sub_135FC(*(v48 + 56) + 32 * v55, &v111);

  if (!*(&v112 + 1))
  {
LABEL_41:
    (*(v39 + 8))(v40, v42);
    goto LABEL_42;
  }

  if (swift_dynamicCast())
  {
    v58 = sub_106A30();
    v60 = v59;

    if (v60)
    {

      v61 = sub_106D10();
      v62 = sub_106FA0();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *&v111 = v64;
        *v63 = 136315138;
        v65 = sub_722E8(v58, v60, &v111);

        *(v63 + 4) = v65;
        _os_log_impl(&dword_0, v61, v62, "AlarmDisambiguation.determineWindowInputType(input:) Direct invocation alarm ID: %s", v63, 0xCu);
        sub_2738(v64);
      }

      else
      {
      }

      sub_105300();
      (*(v39 + 8))(v40, v42);
      return;
    }
  }

  (*(v39 + 8))(v40, v42);
LABEL_46:
  v80 = sub_AFEDC(v108);
  if (v80)
  {
    v81 = v80;
    if (qword_136DB8 != -1)
    {
      swift_once();
    }

    v82 = sub_106D20();
    sub_135C4(v82, qword_139B10);
    v83 = v81;
    v84 = sub_106D10();
    v85 = sub_106FA0();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *&v111 = v87;
      *v86 = 136315138;
      v88 = v83;
      v89 = [v88 description];
      v90 = sub_106E20();
      v92 = v91;

      v93 = sub_722E8(v90, v92, &v111);

      *(v86 + 4) = v93;
      _os_log_impl(&dword_0, v84, v85, "AlarmDisambiguation.determineWindowInputType(input:) Parsed AlarmSearch: %s", v86, 0xCu);
      sub_2738(v87);
    }

    sub_105300();
  }

  else
  {
    sub_1052E0();
  }
}

uint64_t sub_AFD8C()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_139B10);
  sub_135C4(v0, qword_139B10);
  return sub_106A80();
}

uint64_t sub_AFDD8(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 identifier];
  if (v5)
  {
    v6 = v5;
    sub_106E20();
  }

  v7 = sub_106A30();
  v9 = v8;

  if (v9)
  {
    if (v7 == a2 && v9 == a3)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_107370();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

id sub_AFEDC(void *a1)
{
  v98 = a1;
  v85 = sub_105460();
  v88 = *(v85 - 8);
  __chkstk_darwin(v85);
  v87 = &v79 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_105410();
  v84 = *(v86 - 8);
  v2 = __chkstk_darwin(v86);
  v82 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v83 = &v79 - v5;
  __chkstk_darwin(v4);
  v89 = &v79 - v6;
  v97 = sub_1053E0();
  v7 = *(v97 - 8);
  v8 = __chkstk_darwin(v97);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v79 - v11;
  v13 = sub_105380();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v96 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v91 = &v79 - v18;
  __chkstk_darwin(v17);
  v20 = &v79 - v19;
  if (qword_136DB8 != -1)
  {
    swift_once();
  }

  v21 = sub_106D20();
  v22 = sub_135C4(v21, qword_139B10);
  v92 = *(v14 + 16);
  v93 = v14 + 16;
  v92(v20, v98, v13);
  v95 = v22;
  v23 = sub_106D10();
  v24 = sub_106FC0();
  v25 = os_log_type_enabled(v23, v24);
  v94 = v14;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v90 = v7;
    v27 = v26;
    v80 = swift_slowAlloc();
    v99[0] = v80;
    *v27 = 136315138;
    sub_B0A94(&unk_1374D0, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v28 = sub_107340();
    v81 = v12;
    v30 = v29;
    v31 = *(v14 + 8);
    v31(v20, v13);
    v32 = sub_722E8(v28, v30, v99);
    v12 = v81;

    *(v27 + 4) = v32;
    _os_log_impl(&dword_0, v23, v24, "AlarmDisambiguation.parseAlarmSearchFromPromptInput(input:) parsing input: %s", v27, 0xCu);
    sub_2738(v80);

    v7 = v90;
  }

  else
  {

    v31 = *(v14 + 8);
    v31(v20, v13);
  }

  sub_105360();
  v33 = (*(v7 + 88))(v12, v97);
  v34 = v96;
  if (v33 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v7 + 8))(v12, v97);
    goto LABEL_10;
  }

  if (v33 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v7 + 96))(v12, v97);
    sub_25E4(&qword_13B010, &unk_1087A0);

    v35 = sub_105E80();
    (*(*(v35 - 8) + 8))(v12, v35);
LABEL_10:
    v36 = v91;
    v92(v91, v98, v13);
    v37 = sub_106D10();
    v38 = sub_106FC0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v13;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v99[0] = v41;
      *v40 = 136315138;
      sub_105360();
      v42 = sub_106E30();
      v43 = v10;
      v45 = v44;
      v31(v36, v39);
      v46 = sub_722E8(v42, v45, v99);
      v10 = v43;

      *(v40 + 4) = v46;
      _os_log_impl(&dword_0, v37, v38, "AlarmDisambiguation.parseAlarmSearchFromPromptInput(input:) nlv3 parse: %s", v40, 0xCu);
      sub_2738(v41);
    }

    else
    {

      v31(v36, v13);
    }

    sub_105360();
    type metadata accessor for AlarmNLIntent(0);
    swift_allocObject();
    result = sub_B3EE4(v10);
    if (result)
    {
      v48 = sub_B68AC();

      return v48;
    }

    return result;
  }

  if (v33 == enum case for Parse.directInvocation(_:))
  {
    v49 = sub_106D10();
    v50 = sub_106FC0();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_0, v49, v50, "AlarmDisambiguation.parseAlarmSearchFromPromptInput(input:) direct invocation", v51, 2u);
    }

    (*(v7 + 8))(v12, v97);
  }

  else
  {
    if (v33 == enum case for Parse.NLv4IntentOnly(_:))
    {
      (*(v7 + 96))(v12, v97);
      ObjectType = swift_getObjectType();
      v48 = SIRINLUUserDialogAct.alarmSearch.getter(ObjectType);
      swift_unknownObjectRelease();
      return v48;
    }

    if (v33 == enum case for Parse.uso(_:))
    {
      (*(v7 + 96))(v12, v97);
      v53 = v84;
      v54 = v89;
      v55 = v86;
      (*(v84 + 32))(v89, v12, v86);
      v56 = *(v53 + 16);
      v57 = v83;
      v56(v83, v54, v55);
      v58 = sub_106D10();
      v59 = sub_106FC0();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v99[0] = v98;
        *v60 = 136315138;
        v56(v82, v57, v55);
        v61 = sub_106E30();
        v63 = v62;
        v64 = *(v53 + 8);
        v64(v57, v55);
        v65 = sub_722E8(v61, v63, v99);

        *(v60 + 4) = v65;
        _os_log_impl(&dword_0, v58, v59, "AlarmDisambiguation.parseAlarmSearchFromPromptInput(input:) USO parse: %s", v60, 0xCu);
        sub_2738(v98);
      }

      else
      {

        v64 = *(v53 + 8);
        v64(v57, v55);
      }

      v76 = v87;
      v77 = v89;
      v78 = sub_105400();
      v48 = Siri_Nlu_External_UserParse.alarmSearch.getter(v78);
      (*(v88 + 8))(v76, v85);
      v64(v77, v55);
      return v48;
    }

    v90 = v7;
    v92(v96, v98, v13);
    v66 = sub_106D10();
    v67 = sub_106FB0();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = v13;
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v99[0] = v70;
      *v69 = 136315138;
      sub_105360();
      v71 = sub_106E30();
      v72 = v34;
      v74 = v73;
      v31(v72, v68);
      v75 = sub_722E8(v71, v74, v99);

      *(v69 + 4) = v75;
      _os_log_impl(&dword_0, v66, v67, "AlarmDisambiguation.parseAlarmSearchFromPromptInput(input:) Unsupported parse: %s", v69, 0xCu);
      sub_2738(v70);
    }

    else
    {

      v31(v34, v13);
    }

    (*(v90 + 8))(v12, v97);
  }

  return 0;
}

uint64_t sub_B0A94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id *sub_B0ADC(unint64_t a1)
{
  v68 = sub_105240();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25E4(&qword_139B28, &qword_10A2C8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = (&v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v77 = (&v65 - v7);
  v8 = sub_104E30();
  v70 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v79 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v76 = (&v65 - v12);
  v13 = __chkstk_darwin(v11);
  *&v75 = &v65 - v14;
  __chkstk_darwin(v13);
  v73 = &v65 - v15;
  v16 = sub_104D80();
  v78 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v74 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v85 = (&v65 - v19);
  if (a1 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_107270())
  {
    v82 = v8;
    v69 = v6;
    v21 = 0;
    v87 = a1 & 0xFFFFFFFFFFFFFF8;
    v88 = a1 & 0xC000000000000001;
    v80 = a1;
    v81 = 0x800000000010C460;
    v83 = (v70 + 32);
    v71 = (v70 + 8);
    v72 = (v70 + 16);
    v22 = (v78 + 32);
    v86 = _swiftEmptyArrayStorage;
    v84 = i;
    do
    {
      if (v88)
      {
        v24 = sub_1071C0();
      }

      else
      {
        if (v21 >= *(v87 + 16))
        {
          goto LABEL_40;
        }

        v24 = *(v80 + 8 * v21 + 32);
      }

      v25 = v24;
      a1 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v26 = [v24 label];
      if (v26)
      {
        v27 = v26;
        sub_106E20();

        v89 = 0;
        v90 = 0xE000000000000000;
        sub_107190(20);

        v89 = 0xD000000000000012;
        v90 = v81;
        v91._countAndFlagsBits = sub_106E60();
        sub_106E80(v91);

        v28 = v75;
        sub_104E20();
        v29 = v82;
        v30 = v73;
        (*v83)(v73, v28, v82);
        sub_7AA9C(v77);
        (*v72)(v76, v30, v29);
        v31 = v74;
        sub_104D70();

        (*v71)(v30, v29);
        v8 = *v22;
        (*v22)(v85, v31, v16);
        v32 = v86;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_AD7F0(0, v32[2] + 1, 1, v32);
        }

        v34 = v32[2];
        v33 = v32[3];
        v86 = v32;
        v6 = (v34 + 1);
        i = v84;
        if (v34 >= v33 >> 1)
        {
          v86 = sub_AD7F0((v33 > 1), v34 + 1, 1, v86);
        }

        v35 = v85;
        v36 = v86;
        v86[2] = v6;
        (v8)(v36 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v34, v35, v16);
      }

      else
      {
      }

      ++v21;
    }

    while (a1 != i);
    v8 = 0;
    v77 = (v70 + 48);
    v78 = v70 + 56;
    v37 = _swiftEmptyArrayStorage;
    *&v23 = 136315138;
    v75 = v23;
    v38 = v80;
    v39 = v69;
    v40 = v82;
    while (1)
    {
      if (v88)
      {
        v41 = sub_1071C0();
      }

      else
      {
        if (v8 >= *(v87 + 16))
        {
          goto LABEL_42;
        }

        v41 = *(v38 + 8 * v8 + 32);
      }

      v42 = v41;
      v16 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v43 = [v41 identifier];
      v85 = v37;
      if (v43)
      {
        v44 = v43;
        sub_106E20();

        v89 = 0;
        v90 = 0xE000000000000000;
        v6 = &v89;
        sub_107190(20);

        v89 = 0xD000000000000012;
        v90 = v81;
        a1 = 0x64496D72616C61;
        v92._countAndFlagsBits = sub_106E60();
        sub_106E80(v92);
        v40 = v82;

        sub_104E20();
        v45 = 0;
      }

      else
      {
        if (qword_136D28 != -1)
        {
          swift_once();
        }

        v46 = sub_106D20();
        sub_135C4(v46, qword_138C90);
        v47 = v42;
        v6 = sub_106D10();
        v48 = sub_106FB0();

        if (os_log_type_enabled(v6, v48))
        {
          v49 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v89 = v76;
          *v49 = v75;
          v50 = v47;
          v51 = [v50 description];
          v52 = sub_106E20();
          v54 = v53;

          v55 = v52;
          v39 = v69;
          v56 = sub_722E8(v55, v54, &v89);
          v38 = v80;

          *(v49 + 4) = v56;
          _os_log_impl(&dword_0, v6, v48, "DisplayHints failed to extract alarm ID from alarm: %s", v49, 0xCu);
          a1 = v76;
          sub_2738(v76);

          v40 = v82;
        }

        v45 = 1;
      }

      (*v78)(v39, v45, 1, v40);

      v57 = (*v77)(v39, 1, v40);
      v58 = v84;
      v37 = v85;
      if (v57 == 1)
      {
        sub_16F70(v39, &qword_139B28, &qword_10A2C8);
      }

      else
      {
        a1 = *v83;
        (*v83)(v79, v39, v40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_AD818(0, v37[2] + 1, 1, v37);
        }

        v60 = v37[2];
        v59 = v37[3];
        v6 = (v60 + 1);
        if (v60 >= v59 >> 1)
        {
          v37 = sub_AD818((v59 > 1), v60 + 1, 1, v37);
        }

        v37[2] = v6;
        (a1)(v37 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v60, v79, v40);
      }

      ++v8;
      if (v16 == v58)
      {
        v61 = v86;
        goto LABEL_45;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

  v61 = _swiftEmptyArrayStorage;
LABEL_45:
  v62 = v66;
  sub_105220();
  v63 = sub_105230();

  (*(v67 + 8))(v62, v68);
  v89 = v61;
  sub_728A8(v63);
  return v89;
}

uint64_t sub_B14FC()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_139B30);
  sub_135C4(v0, qword_139B30);
  return sub_106A60();
}

uint64_t sub_B1548()
{
  sub_25E4(&qword_139F60, &qword_10A8A8);
  swift_allocObject();
  result = sub_1055D0();
  qword_13B8E0 = result;
  return result;
}

uint64_t sub_B15AC()
{
  sub_25E4(&qword_139F70, &qword_10A8B0);
  swift_allocObject();
  result = sub_1055D0();
  qword_13B8E8 = result;
  return result;
}

uint64_t sub_B1614()
{
  sub_25E4(&qword_139F60, &qword_10A8A8);
  swift_allocObject();
  result = sub_1055D0();
  qword_13B8F0 = result;
  return result;
}

uint64_t sub_B167C()
{
  sub_25E4(&qword_139F60, &qword_10A8A8);
  swift_allocObject();
  result = sub_1055D0();
  qword_13B8F8 = result;
  return result;
}

uint64_t sub_B16EC()
{
  sub_25E4(&qword_139F60, &qword_10A8A8);
  swift_allocObject();
  result = sub_1055D0();
  qword_13B900 = result;
  return result;
}

uint64_t sub_B1754()
{
  sub_25E4(&qword_139F90, &qword_10A8C0);
  swift_allocObject();
  result = sub_1055D0();
  qword_13B908 = result;
  return result;
}

uint64_t sub_B17BC()
{
  sub_25E4(&qword_139F90, &qword_10A8C0);
  swift_allocObject();
  result = sub_1055D0();
  qword_13B910 = result;
  return result;
}

uint64_t sub_B1828()
{
  sub_25E4(&qword_139FA0, &qword_10A8C8);
  swift_allocObject();
  result = sub_1055D0();
  qword_13B918 = result;
  return result;
}

uint64_t sub_B1898()
{
  sub_25E4(&qword_139F80, &qword_10A8B8);
  swift_allocObject();
  result = sub_1055D0();
  qword_13B920 = result;
  return result;
}

uint64_t sub_B1908()
{
  sub_25E4(&qword_139FB0, &qword_10A8D0);
  swift_allocObject();
  result = sub_1055D0();
  qword_13B928 = result;
  return result;
}

uint64_t sub_B19AC(char a1)
{
  result = 0x7473726966;
  switch(a1)
  {
    case 1:
      return 0x646E6F636573;
    case 2:
      return 0x6472696874;
    case 3:
      return 0x687472756F66;
    case 4:
      return 0x6874666966;
    case 5:
      return 0x6874786973;
    case 6:
      return 0x68746E65766573;
    case 7:
      return 0x687468676965;
    case 8:
      return 0x68746E696ELL;
    case 9:
      return 0x68746E6574;
    case 10:
      return 0x68746E6576656C65;
    case 11:
      return 0x6874666C657774;
    case 12:
      v4 = 1919510644;
      goto LABEL_25;
    case 13:
      v4 = 1920298854;
      goto LABEL_25;
    case 14:
      v3 = 1952868710;
      return v3 | 0x746E656500000000;
    case 15:
      v3 = 1954048371;
      return v3 | 0x746E656500000000;
    case 16:
      return 0x6565746E65766573;
    case 17:
      v4 = 1751607653;
      goto LABEL_25;
    case 18:
      v4 = 1701734766;
LABEL_25:
      result = v4 | 0x6E65657400000000;
      break;
    case 19:
      result = 0x746569746E657774;
      break;
    case 20:
    case 23:
    case 24:
      result = 0x662079746E657774;
      break;
    case 21:
      result = 0x732079746E657774;
      break;
    case 22:
      result = 0x742079746E657774;
      break;
    case 25:
      result = 1953718636;
      break;
    case 26:
      result = 0x656C6464696DLL;
      break;
    case 27:
      result = 1954047342;
      break;
    case 28:
      result = 0x73756F6976657270;
      break;
    case 29:
      result = 0x6F54646E6F636573;
      break;
    case 30:
      result = 0x4C6F546472696874;
      break;
    case 31:
      result = 6647407;
      break;
    case 32:
      result = 2037277037;
      break;
    case 33:
      result = 6645876;
      break;
    case 34:
      result = 0x6573656874;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_B1D7C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_B19AC(*a1);
  v5 = v4;
  if (v3 == sub_B19AC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_107370();
  }

  return v8 & 1;
}

Swift::Int sub_B1E04()
{
  v1 = *v0;
  sub_107400();
  sub_B19AC(v1);
  sub_106E70();

  return sub_107420();
}

uint64_t sub_B1E68(uint64_t a1)
{
  sub_B19AC(*v1);
  sub_106E70();
}

Swift::Int sub_B1EBC(uint64_t a1)
{
  v2 = *v1;
  sub_107400();
  sub_B19AC(v2);
  sub_106E70();

  return sub_107420();
}

unint64_t sub_B1F1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_B8A14(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_B1F4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_B19AC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_B1F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_B8A68();
  v5 = sub_B8ABC();
  v6 = sub_B8B10();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

uint64_t sub_B2038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v8 = a4(a1, a2, a3);
  v9 = a5();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v8, v9);
}

uint64_t sub_B20AC()
{
  v1 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmVerb;
  result = *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmVerb);
  if (result == 12)
  {
    if (qword_136DD0 != -1)
    {
      swift_once();
    }

    type metadata accessor for AlarmNLIntent(0);
    sub_B8664(&qword_139F48, &unk_10A830);
    sub_105870();
    result = v3;
    *(v0 + v1) = v3;
  }

  return result;
}

uint64_t sub_B2180()
{
  v1 = (v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmId);
  v2 = *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmId);
  v3 = *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmId + 8);
  v4 = v2;
  if (v3 == 1)
  {
    if (qword_136DC8 != -1)
    {
      swift_once();
    }

    type metadata accessor for AlarmNLIntent(0);
    sub_B8664(&qword_139F48, &unk_10A830);
    sub_105870();
    v4 = v8;
    v5 = *v1;
    v6 = v1[1];
    *v1 = v8;
    v1[1] = v9;

    sub_B8854(v5, v6);
  }

  sub_B8CD4(v2, v3);
  return v4;
}

uint64_t sub_B2290()
{
  v1 = (v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmLabel);
  v2 = *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmLabel);
  v3 = *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmLabel + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v4 = sub_B8930();
    v5 = *v1;
    v6 = v1[1];
    *v1 = v4;
    v1[1] = v7;

    sub_B8854(v5, v6);
  }

  sub_B8CD4(v2, v3);
  return v4;
}

uint64_t sub_B2324()
{
  v1 = (v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewLabel);
  v2 = *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewLabel);
  v3 = *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewLabel + 8);
  v4 = v2;
  if (v3 == 1)
  {
    if (qword_136DE0 != -1)
    {
      swift_once();
    }

    type metadata accessor for AlarmNLIntent(0);
    sub_B8664(&qword_139F48, &unk_10A830);
    sub_105870();
    v4 = v10;
    if (v11)
    {
      v4 = sub_106E60();
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = *v1;
    v8 = v1[1];
    *v1 = v4;
    v1[1] = v6;

    sub_B8854(v7, v8);
  }

  sub_B8CD4(v2, v3);
  return v4;
}

uint64_t sub_B245C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25E4(&qword_139FC0, &qword_10A8D8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmTime;
  swift_beginAccess();
  sub_14994(v2 + v10, v9, &qword_139FC0, &qword_10A8D8);
  v11 = sub_25E4(&qword_13AFE0, &qword_10A320);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return sub_7C278(v9, a1, &qword_13AFE0, &qword_10A320);
  }

  sub_16F70(v9, &qword_139FC0, &qword_10A8D8);
  if (qword_136DF0 != -1)
  {
    swift_once();
  }

  v13 = sub_1055E0();
  sub_B26B0(v13, v14, a1);

  sub_14994(a1, v7, &qword_13AFE0, &qword_10A320);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_57A78(v7, v2 + v10, &qword_139FC0, &qword_10A8D8);
  return swift_endAccess();
}

uint64_t sub_B26B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v110 = a1;
  v111 = a2;
  v107 = a3;
  v3 = sub_105700();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v94 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v91 - v8;
  __chkstk_darwin(v7);
  v95 = &v91 - v10;
  v11 = sub_25E4(&qword_13A048, &qword_10A948);
  __chkstk_darwin(v11 - 8);
  v98 = &v91 - v12;
  v101 = sub_105790();
  v100 = *(v101 - 8);
  v13 = __chkstk_darwin(v101);
  v96 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v97 = &v91 - v15;
  v16 = sub_25E4(&qword_13A050, &qword_10A950);
  __chkstk_darwin(v16 - 8);
  v109 = &v91 - v17;
  v102 = sub_105800();
  v108 = *(v102 - 8);
  v18 = __chkstk_darwin(v102);
  v20 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v99 = &v91 - v21;
  v22 = sub_25E4(&qword_13A058, &qword_10A958);
  __chkstk_darwin(v22 - 8);
  v24 = &v91 - v23;
  v25 = sub_105860();
  v105 = *(v25 - 8);
  v106 = v25;
  __chkstk_darwin(v25);
  v104 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_25E4(&qword_137488, &qword_10A960);
  __chkstk_darwin(v27 - 8);
  v29 = &v91 - v28;
  sub_105E70();
  v30 = sub_1058A0();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_16F70(v29, &qword_137488, &qword_10A960);
    if (qword_136DC0 != -1)
    {
LABEL_44:
      swift_once();
    }

    v32 = sub_106D20();
    sub_135C4(v32, qword_139B30);
    v33 = v111;

    v34 = sub_106D10();
    v35 = sub_106FC0();

    v36 = os_log_type_enabled(v34, v35);
    v37 = v107;
    if (v36)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v114[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_722E8(v110, v33, v114);
      _os_log_impl(&dword_0, v34, v35, "No child nodes found when searching for node: %s)", v38, 0xCu);
      sub_2738(v39);
    }

    v40 = v4[7];
    v41 = v37;
    v42 = 1;
    v43 = v3;
    return v40(v41, v42, 1, v43);
  }

  v92 = v4;
  v93 = v3;
  v4 = sub_105890();
  (*(v31 + 8))(v29, v30);
  v3 = v4[2];
  v45 = v111;
  if (v3)
  {
    v46 = 0;
    v47 = (v4 + 4);
    while (1)
    {
      if (v46 >= v4[2])
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      sub_262C(v47, &v112);
      sub_1A8E0(&v112, v113);
      v45 = v111;
      if (sub_1055F0() == v110 && v48 == v45)
      {
        break;
      }

      v50 = sub_107370();

      if (v50)
      {
        goto LABEL_18;
      }

      ++v46;
      sub_2738(&v112);
      v47 += 40;
      if (v3 == v46)
      {
        goto LABEL_16;
      }
    }

LABEL_18:

    sub_1AD44(&v112, v114);
    sub_25E4(&qword_13A060, &qword_10A968);
    v51 = v106;
    v52 = swift_dynamicCast();
    v53 = v105;
    (*(v105 + 56))(v24, v52 ^ 1u, 1, v51);
    if ((*(v53 + 48))(v24, 1, v51) == 1)
    {
      goto LABEL_19;
    }

    (*(v53 + 32))(v104, v24, v51);
    v63 = sub_105850();
    v64 = *(v63 + 16);
    v65 = v102;
    if (v64)
    {
      v3 = 0;
      v103 = (v108 + 8);
      v4 = &qword_10A950;
      while (v3 < *(v63 + 16))
      {
        (*(v108 + 16))(v20, v63 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v3, v65);
        sub_105720();
        v66 = v109;
        v67 = sub_105710();
        if ((*(*(v67 - 8) + 48))(v66, 1, v67) != 1)
        {

          sub_16F70(v66, &qword_13A050, &qword_10A950);
          v70 = v99;
          (*(v108 + 32))(v99, v20, v65);
          v71 = v98;
          sub_1057A0();
          v72 = v100;
          v73 = v101;
          v74 = (*(v100 + 48))(v71, 1, v101);
          v68 = v93;
          v69 = v92;
          if (v74 == 1)
          {
            (*v103)(v70, v65);
            (*(v105 + 8))(v104, v106);
            sub_16F70(v71, &qword_13A048, &qword_10A948);
            goto LABEL_30;
          }

          v75 = v97;
          (*(v72 + 32))(v97, v71, v73);
          v76 = v96;
          (*(v72 + 16))(v96, v75, v73);
          if ((*(v72 + 88))(v76, v73) != enum case for TerminalElement.Value.dateTime(_:))
          {
            v89 = *(v72 + 8);
            v89(v75, v73);
            (*v103)(v70, v102);
            (*(v105 + 8))(v104, v106);
            v89(v76, v73);
            goto LABEL_30;
          }

          (*(v72 + 96))(v76, v73);
          v77 = v95;
          v108 = v69[4];
          v109 = (v69 + 4);
          (v108)(v95, v76, v68);
          if (qword_136DC0 != -1)
          {
            swift_once();
          }

          v78 = sub_106D20();
          sub_135C4(v78, qword_139B30);
          v79 = v69[2];
          v80 = v9;
          v79(v9, v77, v68);
          v81 = v111;

          v82 = sub_106D10();
          v83 = sub_106FC0();

          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v114[0] = swift_slowAlloc();
            *v84 = 136315394;
            *(v84 + 4) = sub_722E8(v110, v81, v114);
            *(v84 + 12) = 2080;
            v79(v94, v80, v68);
            v85 = sub_106E30();
            v87 = v86;
            (v69[1])(v80, v68);
            v88 = sub_722E8(v85, v87, v114);

            *(v84 + 14) = v88;
            _os_log_impl(&dword_0, v82, v83, "Extracted original dateTime value for node named: %s) – %s", v84, 0x16u);
            swift_arrayDestroy();
            v77 = v95;
          }

          else
          {

            (v69[1])(v80, v68);
          }

          (*(v100 + 8))(v97, v101);
          (*v103)(v99, v102);
          (*(v105 + 8))(v104, v106);
          v90 = v107;
          (v108)(v107, v77, v68);
          v40 = v69[7];
          v41 = v90;
          v42 = 0;
          goto LABEL_31;
        }

        ++v3;
        (*v103)(v20, v65);
        sub_16F70(v66, &qword_13A050, &qword_10A950);
        if (v64 == v3)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_43;
    }

LABEL_29:
    (*(v105 + 8))(v104, v106);

    v68 = v93;
    v69 = v92;
LABEL_30:
    v41 = v107;
    v40 = v69[7];
    v42 = 1;
LABEL_31:
    v43 = v68;
    return v40(v41, v42, 1, v43);
  }

LABEL_16:

  (*(v105 + 56))(v24, 1, 1, v106);
LABEL_19:
  sub_16F70(v24, &qword_13A058, &qword_10A958);
  if (qword_136DC0 != -1)
  {
    swift_once();
  }

  v54 = sub_106D20();
  sub_135C4(v54, qword_139B30);

  v55 = sub_106D10();
  v56 = sub_106FC0();

  v57 = os_log_type_enabled(v55, v56);
  v58 = v93;
  v59 = v92;
  v60 = v107;
  if (v57)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v114[0] = v62;
    *v61 = 136315138;
    *(v61 + 4) = sub_722E8(v110, v45, v114);
    _os_log_impl(&dword_0, v55, v56, "No dateTime value for node named: %s)", v61, 0xCu);
    sub_2738(v62);
  }

  return (v59[7])(v60, 1, 1, v58);
}

uint64_t sub_B3584()
{
  v1 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmAttributes;
  result = *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmAttributes);
  if (result == 15)
  {
    if (qword_136E00 != -1)
    {
      swift_once();
    }

    type metadata accessor for AlarmNLIntent(0);
    sub_B8664(&qword_139F48, &unk_10A830);
    sub_105870();
    result = v3;
    *(v0 + v1) = v3;
  }

  return result;
}

uint64_t sub_B3658()
{
  v1 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmReference;
  result = *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmReference);
  if (result == 36)
  {
    if (qword_136E08 != -1)
    {
      swift_once();
    }

    type metadata accessor for AlarmNLIntent(0);
    sub_B8664(&qword_139F48, &unk_10A830);
    sub_105870();
    result = v3;
    *(v0 + v1) = v3;
  }

  return result;
}

uint64_t sub_B372C()
{
  v1 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmConfirmation;
  result = *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmConfirmation);
  if (result == 4)
  {
    if (qword_136E10 != -1)
    {
      swift_once();
    }

    type metadata accessor for AlarmNLIntent(0);
    sub_B8664(&qword_139F48, &unk_10A830);
    sub_105870();
    result = v3;
    *(v0 + v1) = v3;
  }

  return result;
}

uint64_t sub_B3800(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent_domainOntologyNode;
  sub_25E4(&qword_139F58, &qword_10A8A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_109670;
  if (qword_136DC8 != -1)
  {
    swift_once();
  }

  v6 = qword_13B8E0;
  v7 = sub_25E4(&qword_139F60, &qword_10A8A8);
  *(v5 + 56) = v7;
  v8 = sub_B880C(&qword_139F68, &qword_139F60, &qword_10A8A8, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v5 + 64) = v8;
  *(v5 + 32) = v6;
  v9 = qword_136DD0;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_13B8E8;
  *(v5 + 96) = sub_25E4(&qword_139F70, &qword_10A8B0);
  *(v5 + 104) = sub_B880C(&qword_139F78, &qword_139F70, &qword_10A8B0, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v5 + 72) = v10;
  v11 = qword_136DD8;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_13B8F0;
  *(v5 + 136) = v7;
  *(v5 + 144) = v8;
  *(v5 + 112) = v12;
  v13 = qword_136DE0;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_13B8F8;
  *(v5 + 176) = v7;
  *(v5 + 184) = v8;
  *(v5 + 152) = v14;
  v15 = qword_136DE8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_13B900;
  *(v5 + 216) = v7;
  *(v5 + 224) = v8;
  *(v5 + 192) = v16;
  v17 = qword_136E08;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_13B920;
  *(v5 + 256) = sub_25E4(&qword_139F80, &qword_10A8B8);
  *(v5 + 264) = sub_B880C(&qword_139F88, &qword_139F80, &qword_10A8B8, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v5 + 232) = v18;
  v19 = qword_136DF0;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = qword_13B908;
  v21 = sub_25E4(&qword_139F90, &qword_10A8C0);
  *(v5 + 296) = v21;
  v22 = sub_B880C(&qword_139F98, &qword_139F90, &qword_10A8C0, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v5 + 304) = v22;
  *(v5 + 272) = v20;
  v23 = qword_136DF8;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_13B910;
  *(v5 + 336) = v21;
  *(v5 + 344) = v22;
  *(v5 + 312) = v24;
  v25 = qword_136E00;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_13B918;
  *(v5 + 376) = sub_25E4(&qword_139FA0, &qword_10A8C8);
  *(v5 + 384) = sub_B880C(&qword_139FA8, &qword_139FA0, &qword_10A8C8, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v5 + 352) = v26;
  v27 = qword_136E10;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = qword_13B928;
  *(v5 + 416) = sub_25E4(&qword_139FB0, &qword_10A8D0);
  *(v5 + 424) = sub_B880C(&qword_139FB8, &qword_139FB0, &qword_10A8D0, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v5 + 392) = v28;
  sub_1055C0();
  swift_allocObject();

  *(v2 + v4) = sub_1055B0();
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmVerb) = 12;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmId) = xmmword_10A2D0;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmLabel) = xmmword_10A2D0;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewLabel) = xmmword_10A2D0;
  v29 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmTime;
  v30 = sub_25E4(&qword_13AFE0, &qword_10A320);
  v31 = *(*(v30 - 8) + 56);
  v31(v2 + v29, 1, 1, v30);
  v31(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewTime, 1, 1, v30);
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmAttributes) = 15;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmReference) = 36;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmConfirmation) = 4;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredTime) = 1;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredProposedTime) = 1;
  v32 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewDateTimeFromStartTime;
  v33 = sub_25E4(&qword_137500, &qword_107E10);
  (*(*(v33 - 8) + 56))(v2 + v32, 1, 1, v33);
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredDateTimeRange) = 1;
  v34 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent_intent;
  v35 = sub_105E80();
  (*(*(v35 - 8) + 32))(v2 + v34, a1, v35);
  return v2;
}

uint64_t sub_B3EE4(char *a1)
{
  v2 = v1;
  v4 = sub_1053E0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v61 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v62 = &v61 - v9;
  __chkstk_darwin(v8);
  v11 = &v61 - v10;
  v12 = sub_105E80();
  v64 = *(v12 - 1);
  v65 = v12;
  __chkstk_darwin(v12);
  v63 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent_domainOntologyNode;
  sub_25E4(&qword_139F58, &qword_10A8A0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_109670;
  if (qword_136DC8 != -1)
  {
    swift_once();
  }

  v67 = a1;
  v15 = qword_13B8E0;
  v16 = sub_25E4(&qword_139F60, &qword_10A8A8);
  *(v14 + 56) = v16;
  v17 = sub_B880C(&qword_139F68, &qword_139F60, &qword_10A8A8, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v14 + 64) = v17;
  *(v14 + 32) = v15;
  v18 = qword_136DD0;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_13B8E8;
  *(v14 + 96) = sub_25E4(&qword_139F70, &qword_10A8B0);
  *(v14 + 104) = sub_B880C(&qword_139F78, &qword_139F70, &qword_10A8B0, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v14 + 72) = v19;
  v20 = qword_136DD8;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_13B8F0;
  *(v14 + 136) = v16;
  *(v14 + 144) = v17;
  *(v14 + 112) = v21;
  v22 = qword_136DE0;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_13B8F8;
  *(v14 + 176) = v16;
  *(v14 + 184) = v17;
  *(v14 + 152) = v23;
  v24 = qword_136DE8;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_13B900;
  *(v14 + 216) = v16;
  *(v14 + 224) = v17;
  *(v14 + 192) = v25;
  v26 = qword_136E08;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_13B920;
  *(v14 + 256) = sub_25E4(&qword_139F80, &qword_10A8B8);
  *(v14 + 264) = sub_B880C(&qword_139F88, &qword_139F80, &qword_10A8B8, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v14 + 232) = v27;
  v28 = qword_136DF0;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_13B908;
  v30 = sub_25E4(&qword_139F90, &qword_10A8C0);
  *(v14 + 296) = v30;
  v31 = sub_B880C(&qword_139F98, &qword_139F90, &qword_10A8C0, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v14 + 304) = v31;
  *(v14 + 272) = v29;
  v32 = qword_136DF8;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = qword_13B910;
  *(v14 + 336) = v30;
  *(v14 + 344) = v31;
  *(v14 + 312) = v33;
  v34 = qword_136E00;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = qword_13B918;
  *(v14 + 376) = sub_25E4(&qword_139FA0, &qword_10A8C8);
  *(v14 + 384) = sub_B880C(&qword_139FA8, &qword_139FA0, &qword_10A8C8, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v14 + 352) = v35;
  v36 = qword_136E10;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = qword_13B928;
  *(v14 + 416) = sub_25E4(&qword_139FB0, &qword_10A8D0);
  *(v14 + 424) = sub_B880C(&qword_139FB8, &qword_139FB0, &qword_10A8D0, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v14 + 392) = v37;
  sub_1055C0();
  swift_allocObject();

  *(v2 + v66) = sub_1055B0();
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmVerb) = 12;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmId) = xmmword_10A2D0;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmLabel) = xmmword_10A2D0;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewLabel) = xmmword_10A2D0;
  v38 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmTime;
  v39 = sub_25E4(&qword_13AFE0, &qword_10A320);
  v40 = *(*(v39 - 8) + 56);
  v40(v2 + v38, 1, 1, v39);
  v40(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewTime, 1, 1, v39);
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmAttributes) = 15;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmReference) = 36;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmConfirmation) = 4;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredTime) = 1;
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredProposedTime) = 1;
  v41 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewDateTimeFromStartTime;
  v42 = sub_25E4(&qword_137500, &qword_107E10);
  (*(*(v42 - 8) + 56))(v2 + v41, 1, 1, v42);
  *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredDateTimeRange) = 1;
  v43 = *(v5 + 16);
  v44 = v67;
  v43(v11, v67, v4);
  v45 = (*(v5 + 88))(v11, v4);
  if (v45 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v5 + 8))(v44, v4);
    (*(v5 + 96))(v11, v4);
LABEL_25:
    v46 = v63;
    v47 = *(v64 + 32);
    v48 = v65;
    v47(v63, v11, v65);
    v47((v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent_intent), v46, v48);
    return v2;
  }

  if (v45 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v5 + 8))(v44, v4);
    (*(v5 + 96))(v11, v4);
    sub_25E4(&qword_13B010, &unk_1087A0);

    goto LABEL_25;
  }

  if (qword_136DC0 != -1)
  {
    swift_once();
  }

  v66 = v11;
  v49 = sub_106D20();
  sub_135C4(v49, qword_139B30);
  v50 = v62;
  v43(v62, v44, v4);
  v51 = sub_106D10();
  v52 = sub_106FB0();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v68 = v65;
    *v53 = 136315138;
    v43(v61, v50, v4);
    v54 = sub_106E30();
    v56 = v55;
    v57 = *(v5 + 8);
    v57(v50, v4);
    v58 = sub_722E8(v54, v56, &v68);

    *(v53 + 4) = v58;
    _os_log_impl(&dword_0, v51, v52, "Unknown parse type: %s", v53, 0xCu);
    sub_2738(v65);

    v59 = v67;
  }

  else
  {

    v57 = *(v5 + 8);
    v57(v44, v4);
    v59 = v50;
  }

  v57(v59, v4);
  v57(v66, v4);

  sub_B8854(*(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmId), *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmId + 8));
  sub_B8854(*(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmLabel), *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmLabel + 8));
  sub_B8854(*(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewLabel), *(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewLabel + 8));
  sub_16F70(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmTime, &qword_139FC0, &qword_10A8D8);
  sub_16F70(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewTime, &qword_139FC0, &qword_10A8D8);
  sub_B8868(*(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredTime));
  sub_B8878(*(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredProposedTime));
  sub_16F70(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewDateTimeFromStartTime, &qword_139FC8, &unk_10A8E0);
  sub_B8878(*(v2 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredDateTimeRange));
  type metadata accessor for AlarmNLIntent(0);
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_B4AF8()
{
  v0 = sub_B20AC();
  if (v0 <= 6)
  {
    if (v0 > 2)
    {
      if ((v0 - 3) >= 2)
      {
        v1 = [objc_allocWithZone(sub_1067A0()) init];
        v2 = sub_B68AC();
        [v1 setAlarmSearch:v2];

        [v1 setOperation:sub_B75C0()];
LABEL_14:

        return v1;
      }

      goto LABEL_17;
    }

    if (v0)
    {
      if (v0 == 1)
      {
        v1 = [objc_allocWithZone(sub_106840()) init];
        v5 = sub_B68AC();
        [v1 setAlarmSearch:v5];

        goto LABEL_14;
      }

LABEL_18:
      sub_1068D0();

      return sub_23088(v8);
    }

LABEL_15:
    sub_106800();

    return sub_22C8C(v6);
  }

  if (v0 <= 8)
  {
    if (v0 == 7)
    {
LABEL_17:
      sub_106870();

      v7 = sub_232D4();

      return v7;
    }

    goto LABEL_18;
  }

  if (v0 == 9)
  {
    if (qword_136DC0 != -1)
    {
      swift_once();
    }

    v9 = sub_106D20();
    sub_135C4(v9, qword_139B30);

    v10 = sub_106D10();
    v11 = sub_106FB0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315138;
      sub_25E4(&qword_137568, &qword_10A8F0);
      v14 = sub_106E30();
      v16 = sub_722E8(v14, v15, &v17);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_0, v10, v11, "Received unexpected alarmVerb %s, return createAlarmIntent anyways.", v12, 0xCu);
      sub_2738(v13);
    }

    return [objc_allocWithZone(sub_106800()) init];
  }

  else
  {
    if (v0 != 10)
    {
      goto LABEL_15;
    }

    v3 = objc_allocWithZone(sub_1068B0());

    return [v3 init];
  }
}

uint64_t sub_B4E38()
{
  v0 = sub_105700();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25E4(&qword_13AFE0, &qword_10A320);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = sub_25E4(&qword_13A018, &qword_10A8F8);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_25E4(&qword_13A038, &qword_10A938);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - v11;
  v13 = sub_25E4(&qword_13A040, &qword_10A940);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v32 - v17;
  sub_B245C(v6);
  if ((*(v1 + 48))(v6, 1, v0))
  {
    v19 = &qword_13AFE0;
    v20 = &qword_10A320;
    v21 = v6;
LABEL_7:
    sub_16F70(v21, v19, v20);
    v26 = sub_1057B0();
    (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
LABEL_8:
    v27 = 0;
    goto LABEL_9;
  }

  (*(v1 + 16))(v3, v6, v0);
  sub_16F70(v6, &qword_13AFE0, &qword_10A320);
  sub_105680();
  (*(v1 + 8))(v3, v0);
  v22 = sub_105780();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v9, 1, v22) == 1)
  {
    v19 = &qword_13A018;
    v20 = &qword_10A8F8;
    v21 = v9;
    goto LABEL_7;
  }

  sub_105770();
  (*(v23 + 8))(v9, v22);
  v24 = sub_105740();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v12, 1, v24) == 1)
  {
    v19 = &qword_13A038;
    v20 = &qword_10A938;
    v21 = v12;
    goto LABEL_7;
  }

  sub_105730();
  (*(v25 + 8))(v12, v24);
  v29 = sub_1057B0();
  v30 = *(v29 - 8);
  v27 = 0;
  if ((*(v30 + 48))(v18, 1, v29) != 1)
  {
    sub_14994(v18, v16, &qword_13A040, &qword_10A940);
    v31 = (*(v30 + 88))(v16, v29);
    if (v31 == enum case for TerminalElement.Period.morning(_:))
    {
      v27 = 1;
      goto LABEL_9;
    }

    if (v31 == enum case for TerminalElement.Period.noon(_:))
    {
      v27 = 5;
      goto LABEL_9;
    }

    if (v31 == enum case for TerminalElement.Period.afternoon(_:))
    {
      v27 = 2;
      goto LABEL_9;
    }

    if (v31 == enum case for TerminalElement.Period.evening(_:))
    {
      v27 = 3;
      goto LABEL_9;
    }

    v27 = 4;
    if (v31 != enum case for TerminalElement.Period.night(_:) && v31 != enum case for TerminalElement.Period.tonight(_:))
    {
      (*(v30 + 8))(v16, v29);
      goto LABEL_8;
    }
  }

LABEL_9:
  sub_16F70(v18, &qword_13A040, &qword_10A940);
  return v27;
}

Class sub_B53C4()
{
  v1 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredTime;
  v2 = *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredTime);
  v3 = v2;
  if (v2 == (&dword_0 + 1))
  {
    v3 = sub_B5434();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_B8868(v4);
  }

  sub_B8CC4(v2);
  return v3;
}

Class sub_B5434()
{
  v0 = sub_105700();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25E4(&qword_13AFE0, &qword_10A320);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_B245C(&v11 - v5);
  if ((*(v1 + 48))(v6, 1, v0))
  {
    sub_16F70(v6, &qword_13AFE0, &qword_10A320);
  }

  else
  {
    (*(v1 + 16))(v3, v6, v0);
    sub_16F70(v6, &qword_13AFE0, &qword_10A320);
    v8 = sub_105690();
    (*(v1 + 8))(v3, v0);
    if (v8)
    {

      v9 = sub_106220();

      if (v9)
      {
        isa = sub_105F20().super.isa;

        return isa;
      }
    }
  }

  return 0;
}

uint64_t sub_B5640()
{
  v0 = sub_25E4(&qword_13AFE0, &qword_10A320);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_105700();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  sub_B245C(v2);
  if ((*(v4 + 48))(v2, 1, v3))
  {
    sub_16F70(v2, &qword_13AFE0, &qword_10A320);
  }

  else
  {
    (*(v4 + 16))(v7, v2, v3);
    sub_16F70(v2, &qword_13AFE0, &qword_10A320);
    sub_B583C(v9);
    v10 = *(v4 + 8);
    v10(v7, v3);
    sub_105690();
    v10(v9, v3);
  }

  v11 = sub_106220();

  return v11;
}

uint64_t sub_B583C@<X0>(uint64_t a1@<X8>)
{
  v19[3] = a1;
  v1 = sub_25E4(&qword_13A020, &unk_10A910);
  __chkstk_darwin(v1 - 8);
  v2 = sub_25E4(&qword_13A018, &qword_10A8F8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v19[0] = v19 - v6;
  v7 = sub_25E4(&qword_13A028, &qword_10BB50);
  __chkstk_darwin(v7 - 8);
  v19[1] = v19 - v8;
  v9 = sub_25E4(&unk_13AFD0, &qword_10A920);
  __chkstk_darwin(v9 - 8);
  v19[2] = v19 - v10;
  v11 = sub_25E4(&unk_13AFC0, &qword_10A928);
  __chkstk_darwin(v11 - 8);
  v12 = sub_25E4(&qword_13A030, &qword_10A930);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  sub_105650();
  v16 = sub_105750();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_1056E0();
  sub_1056F0();
  sub_1056A0();
  sub_105660();
  v17 = sub_105780();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  sub_1056C0();
  sub_1056B0();
  sub_1056D0();
  return sub_105670();
}

uint64_t sub_B5BA8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25E4(&qword_137500, &qword_107E10);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v26 - v7;
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  if (sub_B5620())
  {
    v11.super.isa = sub_105F20().super.isa;
    v12 = sub_1045E0();
    v13 = *(*(v12 - 8) + 56);
    v14 = 1;
    v13(v10, 1, 1, v12);
    v15 = [(objc_class *)v11.super.isa startDateComponents];
    if (v15)
    {
      v16 = v15;
      sub_104570();

      v14 = 0;
    }

    v13(v8, v14, 1, v12);
    v17 = [(objc_class *)v11.super.isa recurrenceRule];
    v18 = objc_allocWithZone(INDateComponentsRange);
    v19 = sub_B86A8(v10, v8, v17);
    v20 = [v19 endDateComponents];
    if (v20)
    {
      v21 = v20;
      sub_104570();

      v22 = 0;
      v11.super.isa = v19;
      v19 = v21;
    }

    else
    {

      v22 = 1;
    }

    v13(v5, v22, 1, v12);
    return sub_7C278(v5, a1, &qword_137500, &qword_107E10);
  }

  else
  {
    v23 = sub_1045E0();
    v24 = *(*(v23 - 8) + 56);

    return v24(a1, 1, 1, v23);
  }
}

uint64_t sub_B5E60@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25E4(&qword_139FC8, &unk_10A8E0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewDateTimeFromStartTime;
  swift_beginAccess();
  sub_14994(v1 + v9, v8, &qword_139FC8, &unk_10A8E0);
  v10 = sub_25E4(&qword_137500, &qword_107E10);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_7C278(v8, a1, &qword_137500, &qword_107E10);
  }

  sub_16F70(v8, &qword_139FC8, &unk_10A8E0);
  sub_B6070(a1);
  sub_14994(a1, v6, &qword_137500, &qword_107E10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_57A78(v6, v1 + v9, &qword_139FC8, &unk_10A8E0);
  return swift_endAccess();
}

uint64_t sub_B6070@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25E4(&qword_137500, &qword_107E10);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v41 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v41 - v10;
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  v14 = sub_105700();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25E4(&qword_13AFE0, &qword_10A320);
  __chkstk_darwin(v18 - 8);
  v20 = &v41 - v19;
  sub_B245C(&v41 - v19);
  if ((*(v15 + 48))(v20, 1, v14))
  {
    sub_16F70(v20, &qword_13AFE0, &qword_10A320);
  }

  else
  {
    (*(v15 + 16))(v17, v20, v14);
    sub_16F70(v20, &qword_13AFE0, &qword_10A320);
    v27 = sub_105690();
    (*(v15 + 8))(v17, v14);
    if (v27)
    {

      v28 = sub_106220();

      v42 = a1;
      if (v28)
      {
        v29.super.isa = sub_105F20().super.isa;
      }

      else
      {
        v29.super.isa = 0;
      }

      v30 = sub_1045E0();
      v31 = *(*(v30 - 8) + 56);
      v31(v13, 1, 1, v30);
      if (v29.super.isa)
      {
        v32 = [(objc_class *)v29.super.isa startDateComponents];
        if (v32)
        {
          v33 = v32;
          sub_104570();

          v34 = 0;
        }

        else
        {
          v34 = 1;
        }

        v31(v8, v34, 1, v30);
        sub_7C278(v8, v11, &qword_137500, &qword_107E10);
      }

      else
      {
        v31(v11, 1, 1, v30);
      }

      v35 = [(objc_class *)v29.super.isa recurrenceRule];
      v36 = objc_allocWithZone(INDateComponentsRange);
      v37 = sub_B86A8(v13, v11, v35);
      v38 = [v37 endDateComponents];
      if (v38)
      {
        v39 = v38;
        sub_104570();

        v40 = 0;
        v37 = v39;
      }

      else
      {
        v40 = 1;
      }

      v31(v5, v40, 1, v30);
      return sub_7C278(v5, v42, &qword_137500, &qword_107E10);
    }
  }

  if (qword_136DC0 != -1)
  {
    swift_once();
  }

  v21 = sub_106D20();
  sub_135C4(v21, qword_139B30);
  v22 = sub_106D10();
  v23 = sub_106FC0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "No alarmTime node in parse in alarmNewDateTimeFromStartTime", v24, 2u);
  }

  v25 = sub_1045E0();
  return (*(*(v25 - 8) + 56))(a1, 1, 1, v25);
}

uint64_t sub_B65C0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  v5 = v4;
  if (v4 == 1)
  {
    v5 = a2(v2);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;

    sub_B8878(v6);
  }

  sub_B8CB4(v4);
  return v5;
}

uint64_t sub_B6630()
{
  v0 = sub_105700();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25E4(&qword_13AFE0, &qword_10A320);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  sub_B245C(&v14 - v5);
  if ((*(v1 + 48))(v6, 1, v0))
  {
    sub_16F70(v6, &qword_13AFE0, &qword_10A320);
  }

  else
  {
    (*(v1 + 16))(v3, v6, v0);
    sub_16F70(v6, &qword_13AFE0, &qword_10A320);
    v12 = sub_105690();
    (*(v1 + 8))(v3, v0);
    if (v12)
    {

      v13 = sub_106230();

      return v13;
    }
  }

  if (qword_136DC0 != -1)
  {
    swift_once();
  }

  v7 = sub_106D20();
  sub_135C4(v7, qword_139B30);
  v8 = sub_106D10();
  v9 = sub_106FC0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "No alarmTime node in parse in inferredDateTimeRange", v10, 2u);
  }

  return 0;
}

id sub_B68AC()
{
  v1 = v0;
  v2 = sub_105700();
  v93 = *(v2 - 8);
  v94 = v2;
  __chkstk_darwin(v2);
  v90 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25E4(&qword_13AFE0, &qword_10A320);
  __chkstk_darwin(v4 - 8);
  v6 = &v86 - v5;
  v7 = sub_25E4(&qword_13A018, &qword_10A8F8);
  __chkstk_darwin(v7 - 8);
  v91 = &v86 - v8;
  v9 = sub_1045E0();
  v88 = *(v9 - 8);
  v89 = v9;
  __chkstk_darwin(v9);
  v87 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_106290();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25E4(&qword_1376F0, &unk_10A900);
  __chkstk_darwin(v15 - 8);
  v17 = &v86 - v16;
  v18 = sub_B3658();
  if (v18 == 35)
  {
    goto LABEL_10;
  }

  if (sub_B19AC(v18) == 6647407 && v19 == 0xE300000000000000)
  {
  }

  else
  {
    v20 = sub_107370();

    if ((v20 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  sub_105B10();
  swift_allocObject();
  sub_105B00();
  v21 = sub_105950();

  if (!v21)
  {
LABEL_10:
    if (sub_B65A0() && (v24 = sub_105F80(), , v24))
    {
      v25 = sub_105F00();

      v26 = v25 ^ 1;
    }

    else
    {
      v26 = 1;
    }

    if (qword_136DC0 != -1)
    {
      swift_once();
    }

    v92 = v6;
    v27 = sub_106D20();
    sub_135C4(v27, qword_139B30);

    v28 = sub_106D10();
    v29 = sub_106FC0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v96 = v31;
      *v30 = 136315138;
      v95 = *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredDateTimeRange);

      sub_25E4(&qword_139AA8, "FW");
      v32 = sub_106E30();
      v34 = sub_722E8(v32, v33, &v96);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_0, v28, v29, "inferredDateTimeRange: %s", v30, 0xCu);
      sub_2738(v31);
    }

    v35 = sub_106D10();
    v36 = sub_106FC0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = v26;
      v38 = 7104878;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v96 = v40;
      *v39 = 136315394;
      v41 = *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredDateTimeRange);
      if (v41 && (, v42 = sub_105F80(), sub_B8878(v41), v42))
      {
        v43 = sub_105F00();

        if (v43)
        {
          v38 = 1702195828;
        }

        else
        {
          v38 = 0x65736C6166;
        }

        if (v43)
        {
          v44 = 0xE400000000000000;
        }

        else
        {
          v44 = 0xE500000000000000;
        }
      }

      else
      {
        v44 = 0xE300000000000000;
      }

      v45 = sub_722E8(v38, v44, &v96);

      *(v39 + 4) = v45;
      *(v39 + 12) = 1024;
      *(v39 + 14) = v37 & 1;
      _os_log_impl(&dword_0, v35, v36, "In alarmNLv3Intent.alarmSearch: SiriInference.meridiemSetByUser = %s, isMeridianInferred = %{BOOL}d", v39, 0x12u);
      sub_2738(v40);
    }

    sub_B2180();
    if (v46)
    {
      v47 = sub_106E10();
    }

    else
    {
      v47 = 0;
    }

    sub_106A50();
    v48 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v49 = sub_106E10();
    v50 = [v48 initWithIdentifier:v47 displayString:v49];

    if (sub_B3584())
    {
      v51 = 2 * (*(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmReference) == 27);
    }

    else
    {
      v51 = 3;
    }

    [v50 setAlarmReferenceType:v51];
    if (sub_B4E38())
    {
      [v50 setTime:0];
      v52 = *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredDateTimeRange);
      if (v52)
      {

        v53 = sub_105F10(1);
        sub_B8878(v52);
      }

      else
      {
        v53 = 0;
      }

      [v50 setTimeRange:v53];
    }

    else
    {
      v54 = v92;
      sub_B245C(v92);
      v55 = v93;
      v56 = v94;
      if ((*(v93 + 48))(v54, 1, v94))
      {
        sub_16F70(v54, &qword_13AFE0, &qword_10A320);
        isa = 0;
      }

      else
      {
        v58 = v90;
        (*(v55 + 16))(v90, v54, v56);
        sub_16F70(v54, &qword_13AFE0, &qword_10A320);
        v59 = v91;
        sub_105680();
        (*(v55 + 8))(v58, v56);
        v60 = sub_105780();
        v61 = *(v60 - 8);
        if ((*(v61 + 48))(v59, 1, v60) == 1)
        {
          sub_16F70(v59, &qword_13A018, &qword_10A8F8);
          isa = 0;
        }

        else
        {
          sub_105760();
          (*(v61 + 8))(v59, v60);
          v62 = v87;
          sub_105EE0();

          isa = sub_104560().super.isa;
          (*(v88 + 8))(v62, v89);
        }
      }

      [v50 setTime:isa];

      [v50 setTimeRange:0];
    }

    sub_B2290();
    if (v63)
    {
      v64 = sub_106E10();
    }

    else
    {
      v64 = 0;
    }

    [v50 setLabel:v64];

    v65 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmAttributes;
    v66 = *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmAttributes);
    if (v66 == 5)
    {
      v67 = 1;
    }

    else
    {
      v67 = 2 * (v66 == 6);
    }

    [v50 setAlarmSearchStatus:v67];
    v68 = *(v1 + v65) == 11;
    sub_1F7B8();
    v69 = sub_107090(v68).super.super.isa;
    [v50 setIncludeSleepAlarm:v69];

    [v50 setPeriod:sub_B4E38()];
    v70 = sub_106F50();
    [v50 setIsMeridianInferred:v70];
    goto LABEL_53;
  }

  sub_106280();
  sub_106270();
  (*(v12 + 8))(v14, v11);
  v22 = sub_106D80();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v17, 1, v22) == 1)
  {

    sub_16F70(v17, &qword_1376F0, &unk_10A900);
    goto LABEL_10;
  }

  sub_106AA0();
  v72 = sub_106D50();
  (*(v23 + 8))(v17, v22);
  if (!v72)
  {

    goto LABEL_10;
  }

  v73 = [v72 identifier];
  if (!v73)
  {

    goto LABEL_10;
  }

  v74 = v73;
  v75 = sub_106E20();
  v77 = v76;
  if (qword_136DC0 != -1)
  {
    swift_once();
  }

  v78 = sub_106D20();
  sub_135C4(v78, qword_139B30);

  v79 = sub_106D10();
  v80 = sub_106FC0();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v96 = v82;
    *v81 = 136315138;
    v83 = sub_722E8(v75, v77, &v96);

    *(v81 + 4) = v83;
    _os_log_impl(&dword_0, v79, v80, "Resolved alarm from SRR. Using its id %s to search alarm.", v81, 0xCu);
    sub_2738(v82);
  }

  else
  {
  }

  sub_106A50();
  v84 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v85 = sub_106E10();
  v50 = [v84 initWithIdentifier:v74 displayString:v85];

  sub_1F7B8();
  v70 = sub_107090(1).super.super.isa;
  [v50 setIncludeSleepAlarm:v70];

LABEL_53:
  return v50;
}

uint64_t sub_B75C0()
{
  v0 = sub_B20AC();
  if (v0 == 5)
  {
    return 1;
  }

  if (v0 == 6)
  {
    return 2;
  }

  if (qword_136DC0 != -1)
  {
    swift_once();
  }

  v2 = sub_106D20();
  sub_135C4(v2, qword_139B30);

  v3 = sub_106D10();
  v4 = sub_106FB0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    sub_25E4(&qword_137568, &qword_10A8F0);
    v7 = sub_106E30();
    v9 = sub_722E8(v7, v8, &v10);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Invalid alarmChangeStatusOperation based on alarmVerb %s", v5, 0xCu);
    sub_2738(v6);
  }

  return 0;
}

uint64_t sub_B7768()
{
  v1 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent_intent;
  v2 = sub_105E80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_B8854(*(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmId), *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmId + 8));
  sub_B8854(*(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmLabel), *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmLabel + 8));
  sub_B8854(*(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewLabel), *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewLabel + 8));
  sub_16F70(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmTime, &qword_139FC0, &qword_10A8D8);
  sub_16F70(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewTime, &qword_139FC0, &qword_10A8D8);
  sub_B8868(*(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredTime));
  sub_B8878(*(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredProposedTime));
  sub_16F70(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmNewDateTimeFromStartTime, &qword_139FC8, &unk_10A8E0);
  sub_B8878(*(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___inferredDateTimeRange));
  return v0;
}

uint64_t sub_B78AC()
{
  sub_B7768();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AlarmNLIntent(uint64_t a1)
{
  result = qword_139BD8;
  if (!qword_139BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_B7958(uint64_t a1)
{
  sub_105E80();
  if (v1 <= 0x3F)
  {
    sub_B7ADC(319, &qword_139BE8, &qword_13AFE0, &qword_10A320);
    if (v2 <= 0x3F)
    {
      sub_B7ADC(319, &unk_139BF0, &qword_137500, &qword_107E10);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_B7ADC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_14EB0(a3, a4);
    v5 = sub_1070E0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AlarmNLIntent.AlarmReference(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDE)
  {
    goto LABEL_17;
  }

  if (a2 + 34 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 34) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 34;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 34;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 34;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v8 = v6 - 35;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmNLIntent.AlarmReference(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDE)
  {
    v4 = 0;
  }

  if (a2 > 0xDD)
  {
    v5 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 34;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlarmNLIntent.AlarmAttributes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmNLIntent.AlarmAttributes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlarmNLIntent.AlarmVerb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmNLIntent.AlarmVerb(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_B7F34()
{
  result = qword_139EA8;
  if (!qword_139EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139EA8);
  }

  return result;
}

unint64_t sub_B7FD0()
{
  result = qword_139EC0;
  if (!qword_139EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139EC0);
  }

  return result;
}

unint64_t sub_B8028()
{
  result = qword_139EC8;
  if (!qword_139EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139EC8);
  }

  return result;
}

unint64_t sub_B8080()
{
  result = qword_139ED0;
  if (!qword_139ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139ED0);
  }

  return result;
}

unint64_t sub_B811C()
{
  result = qword_139EE8;
  if (!qword_139EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139EE8);
  }

  return result;
}

unint64_t sub_B8174()
{
  result = qword_139EF0;
  if (!qword_139EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139EF0);
  }

  return result;
}

unint64_t sub_B81CC()
{
  result = qword_139EF8;
  if (!qword_139EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139EF8);
  }

  return result;
}

unint64_t sub_B8268()
{
  result = qword_139F10;
  if (!qword_139F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139F10);
  }

  return result;
}

unint64_t sub_B82C0()
{
  result = qword_139F18;
  if (!qword_139F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139F18);
  }

  return result;
}

unint64_t sub_B8318()
{
  result = qword_139F20;
  if (!qword_139F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139F20);
  }

  return result;
}

unint64_t sub_B83B4()
{
  result = qword_139F38;
  if (!qword_139F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139F38);
  }

  return result;
}

unint64_t sub_B840C()
{
  result = qword_139F40;
  if (!qword_139F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139F40);
  }

  return result;
}

uint64_t sub_B8460@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent_intent;
  v5 = sub_105E80();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_B84F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NLIntentWrapper.traversableIntentNode.getter(a1, WitnessTable);
}

uint64_t sub_B8554(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NLIntentWrapper.traversableOntologyNode.getter(a1, WitnessTable);
}

uint64_t sub_B85A8(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_105620();
}

uint64_t sub_B8664(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AlarmNLIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_B86A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_1045E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  isa = 0;
  if (v10(a1, 1, v8) != 1)
  {
    isa = sub_104560().super.isa;
    (*(v9 + 8))(a1, v8);
  }

  if (v10(a2, 1, v8) == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_104560().super.isa;
    (*(v9 + 8))(a2, v8);
  }

  v13 = [v4 initWithStartDateComponents:isa endDateComponents:v12 recurrenceRule:a3];

  return v13;
}

uint64_t sub_B880C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_14EB0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_B8854(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_B8868(id a1)
{
  if (a1 != &dword_0 + 1)
  {
  }
}

uint64_t sub_B8878(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_B8888()
{
  result = qword_139FD0;
  if (!qword_139FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139FD0);
  }

  return result;
}

unint64_t sub_B88DC()
{
  result = qword_139FD8;
  if (!qword_139FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139FD8);
  }

  return result;
}

uint64_t sub_B8930()
{
  if (qword_136DD8 != -1)
  {
    swift_once();
  }

  type metadata accessor for AlarmNLIntent(0);
  sub_B8664(&qword_139F48, &unk_10A830);
  sub_105870();
  if (!v3)
  {
    return 0;
  }

  result = v2;
  v1 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v1 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v1)
  {

    return 0;
  }

  return result;
}

unint64_t sub_B8A14(uint64_t a1, uint64_t a2)
{
  v2 = sub_107390();

  if (v2 >= 0x23)
  {
    return 35;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_B8A68()
{
  result = qword_139FE0;
  if (!qword_139FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139FE0);
  }

  return result;
}

unint64_t sub_B8ABC()
{
  result = qword_139FE8;
  if (!qword_139FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139FE8);
  }

  return result;
}

unint64_t sub_B8B10()
{
  result = qword_139FF0;
  if (!qword_139FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139FF0);
  }

  return result;
}

unint64_t sub_B8B64()
{
  result = qword_139FF8;
  if (!qword_139FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139FF8);
  }

  return result;
}

unint64_t sub_B8BB8()
{
  result = qword_13A000;
  if (!qword_13A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13A000);
  }

  return result;
}

unint64_t sub_B8C0C()
{
  result = qword_13A008;
  if (!qword_13A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13A008);
  }

  return result;
}

unint64_t sub_B8C60()
{
  result = qword_13A010;
  if (!qword_13A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13A010);
  }

  return result;
}

uint64_t sub_B8CB4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

id sub_B8CC4(id result)
{
  if (result != &dword_0 + 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_B8CD4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t type metadata accessor for ChangeAlarmStatusCATsSimple(uint64_t a1)
{
  result = qword_13A068;
  if (!qword_13A068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_B8D8C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_B8DAC, 0, 0);
}

uint64_t sub_B8DAC()
{
  v1 = v0[2];
  sub_25E4(&qword_137880, &unk_108290);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_107FC0;
  *(v2 + 32) = 0x616C417065656C73;
  *(v2 + 40) = 0xEA00000000006D72;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for AlarmAlarm(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v6 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_B8EF8;

  return v6(0xD00000000000002DLL, 0x800000000010DF40, v2);
}

uint64_t sub_B8EF8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_B9618, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_B9050(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_B9070, 0, 0);
}

uint64_t sub_B9070()
{
  v1 = v0[2];
  sub_25E4(&qword_137880, &unk_108290);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_107FC0;
  *(v2 + 32) = 0x616C417065656C73;
  *(v2 + 40) = 0xEA00000000006D72;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for AlarmAlarm(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v6 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_B91BC;

  return v6(0xD00000000000002CLL, 0x800000000010DF10, v2);
}

uint64_t sub_B91BC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_B9314, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_B9314()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_B9378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_2A84(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_106170();
  (*(v6 + 8))(a2, v5);
  sub_2AF4(a1);
  return v12;
}

uint64_t sub_B9500(uint64_t a1, uint64_t a2)
{
  v3 = sub_106200();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v4 + 16))(v6, a2, v3);
  v7 = sub_106180();
  (*(v4 + 8))(a2, v3);
  return v7;
}

uint64_t sub_B9630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25E4(&qword_1374F0, &qword_1080F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_B9700(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_25E4(&qword_1374F0, &qword_1080F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s21ConfirmIntentStrategyVMa(uint64_t a1)
{
  result = qword_13A128;
  if (!qword_13A128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_B97FC(uint64_t a1)
{
  sub_1B2C0();
  if (v1 <= 0x3F)
  {
    sub_B9880(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_B9880(uint64_t a1)
{
  if (!qword_13A138)
  {
    sub_106630();
    v1 = sub_1070E0();
    if (!v2)
    {
      atomic_store(v1, &qword_13A138);
    }
  }
}

uint64_t sub_B98D8()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13A0B8);
  sub_135C4(v0, qword_13A0B8);
  return sub_106A80();
}

uint64_t sub_B9924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_25E4(&unk_1374C0, &unk_1087B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  if (qword_136E18 != -1)
  {
    swift_once();
  }

  v9 = sub_106D20();
  sub_135C4(v9, qword_13A0B8);
  v10 = sub_106D10();
  v11 = sub_106FC0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "SnoozeAlarm.ConfirmIntentStrategy.actionForInput() called.", v12, 2u);
  }

  v13 = *(_s21ConfirmIntentStrategyVMa(0) + 20);
  v14 = enum case for DecideAction.PromptExpectation.confirmation(_:);
  v15 = sub_106450();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v8, v14, v15);
  (*(v16 + 56))(v8, 0, 1, v15);
  sub_3D83C(a1, v3 + v13, 0, v8, a2);
  return sub_16F70(v8, &unk_1374C0, &unk_1087B0);
}

uint64_t sub_B9B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_25E4(&unk_137460, &unk_108C60);
  v3[5] = swift_task_alloc();
  v4 = sub_1050D0();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_B9C20, 0, 0);
}

uint64_t sub_B9C20()
{
  if (qword_136E18 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  sub_135C4(v1, qword_13A0B8);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SnoozeAlarm.ConfirmIntentStrategy.parseConfirmationResponse() called.", v4, 2u);
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];

  sub_1174C(v9, v5);
  (*(v6 + 16))(v7, v5, v8);
  (*(v6 + 56))(v7, 0, 1, v8);
  sub_25E4(&qword_139638, &unk_109D20);
  sub_105170();
  sub_1068B0();
  sub_105080();
  (*(v6 + 8))(v5, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_B9E08(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_25E4(&qword_1375A8, &qword_10AA90);
  v2[9] = swift_task_alloc();
  v3 = sub_105030();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  sub_104D60();
  v2[13] = swift_task_alloc();
  v4 = sub_1051E0();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = sub_106D20();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v6 = sub_106300();
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();
  v7 = sub_106320();
  v2[23] = v7;
  v2[24] = *(v7 - 8);
  v2[25] = swift_task_alloc();
  v8 = sub_106370();
  v2[26] = v8;
  v2[27] = *(v8 - 8);
  v2[28] = swift_task_alloc();
  sub_25E4(&qword_137598, &unk_107EB0);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v9 = sub_104FF0();
  v2[33] = v9;
  v2[34] = *(v9 - 8);
  v2[35] = swift_task_alloc();
  v10 = sub_106960();
  v2[36] = v10;
  v2[37] = *(v10 - 8);
  v2[38] = swift_task_alloc();
  sub_25E4(&qword_1374F0, &qword_1080F0);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();

  return _swift_task_switch(sub_BA25C, 0, 0);
}

uint64_t sub_BA25C()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 64);
  v3 = *(_s21ConfirmIntentStrategyVMa(0) + 20);
  sub_14994(v2 + v3, v1, &qword_1374F0, &qword_1080F0);
  v4 = sub_106630();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(v1, 1, v4);
  v8 = *(v0 + 328);
  if (v7 == 1)
  {
    sub_16F70(*(v0 + 328), &qword_1374F0, &qword_1080F0);
  }

  else
  {
    v9 = sub_106520();
    (*(v5 + 8))(v8, v4);
    if (v9)
    {
      v82 = sub_106C00();

      goto LABEL_6;
    }
  }

  v82 = 0;
LABEL_6:
  v10 = *(v0 + 320);
  v11 = *(v0 + 304);
  v12 = *(v0 + 280);
  (*(*(v0 + 296) + 104))(v11, enum case for AlarmNLv4Constants.AlarmVerb.snooze(_:), *(v0 + 288));
  sub_BD9B4(v11, v12);
  sub_14994(v2 + v3, v10, &qword_1374F0, &qword_1080F0);
  v13 = v6(v10, 1, v4);
  v14 = *(v0 + 320);
  v80 = v5;
  v83 = v3;
  if (v13 == 1)
  {
    v15 = v6;
    v16 = v2;
    sub_16F70(v14, &qword_1374F0, &qword_1080F0);
  }

  else
  {
    v17 = sub_106520();
    (*(v5 + 8))(v14, v4);
    if (v17)
    {
      sub_106C50();
      v19 = v18;

      if (v19)
      {
        v15 = v6;
        v16 = v2;
        sub_106E50();

        v20 = 0;
        goto LABEL_13;
      }
    }

    v15 = v6;
    v16 = v2;
  }

  v20 = 1;
LABEL_13:
  v21 = *(v0 + 312);
  v22 = *(v0 + 256);
  v23 = sub_106160();
  v81 = *(v23 - 8);
  v24 = *(v81 + 56);
  v25 = v22;
  v26 = v23;
  v24(v25, v20, 1);
  sub_14994(v16 + v83, v21, &qword_1374F0, &qword_1080F0);
  v27 = v15(v21, 1, v4);
  v28 = *(v0 + 312);
  if (v27 == 1)
  {
    sub_16F70(*(v0 + 312), &qword_1374F0, &qword_1080F0);
    v29 = 1;
    v30 = v26;
  }

  else
  {
    v31 = sub_106520();
    (*(v80 + 8))(v28, v4);
    v30 = v26;
    if (v31 && (sub_106C60(), v33 = v32, v31, v33))
    {
      sub_106E50();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }
  }

  v35 = *(v0 + 216);
  v34 = *(v0 + 224);
  v36 = *(v0 + 208);
  (v24)(*(v0 + 248), v29, 1, v30);
  sub_106360();
  v37 = sub_106350();
  (*(v35 + 8))(v34, v36);
  if (v37)
  {
    v38 = sub_105040();

    v40 = sub_1070B0();
    v42 = v41;

    *(v0 + 336) = v42;
    if (v42)
    {
      v43 = sub_105040();
      v45 = v44;

      v46 = sub_1070B0();
      v48 = v47;

      *(v0 + 344) = v48;
      if (v48)
      {
        (*(*(v0 + 168) + 104))(*(v0 + 176), enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), *(v0 + 160));
        if (qword_136E18 != -1)
        {
          swift_once();
        }

        v49 = *(v0 + 144);
        v50 = *(v0 + 152);
        v51 = *(v0 + 136);
        v52 = sub_135C4(v51, qword_13A0B8);
        (*(v49 + 16))(v50, v52, v51);
        mach_absolute_time();
        sub_106330();
        if (qword_136D20 != -1)
        {
          swift_once();
        }

        v53 = swift_task_alloc();
        *(v0 + 352) = v53;
        v53[1] = vextq_s8(*(v0 + 248), *(v0 + 248), 8uLL);
        v53[2].i64[0] = v46;
        v53[2].i64[1] = v48;
        v53[3].i64[0] = v40;
        v53[3].i64[1] = v42;
        v54 = swift_task_alloc();
        *(v0 + 360) = v54;
        *v54 = v0;
        v54[1] = sub_BAD7C;

        return sub_7CF48(v82 & 1, (v82 & 1) == 0, sub_BCA0C, v53);
      }
    }

    if (qword_136E18 != -1)
    {
      swift_once();
    }

    sub_135C4(*(v0 + 136), qword_13A0B8);
    v70 = sub_106D10();
    v71 = sub_106FB0();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_0, v70, v71, "Could not create direct invocation for confirm or reject actions.", v72, 2u);
    }

    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_26E48();
    swift_allocError();
    *v73 = 0;
    swift_willThrow();
    v75 = *(v0 + 272);
    v74 = *(v0 + 280);
    v77 = *(v0 + 256);
    v76 = *(v0 + 264);
    v78 = *(v0 + 248);
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    sub_16F70(v78, &qword_137598, &unk_107EB0);
    sub_16F70(v77, &qword_137598, &unk_107EB0);
    (*(v75 + 8))(v74, v76);

    v79 = *(v0 + 8);

    return v79();
  }

  else
  {
    if (qword_136D18 != -1)
    {
      swift_once();
    }

    v56 = *(v0 + 256);
    v57 = *(v0 + 240);
    sub_25E4(&qword_137880, &unk_108290);
    v58 = swift_allocObject();
    *(v0 + 400) = v58;
    *(v58 + 16) = xmmword_108210;
    *(v58 + 32) = 0x6E6F737265507369;
    *(v58 + 40) = 0xEA00000000006C61;
    *(v58 + 48) = (v82 & 1) == 0;
    *(v58 + 72) = &type metadata for Bool;
    *(v58 + 80) = 0x6E756D6D6F437369;
    *(v58 + 88) = 0xEA00000000006C61;
    *(v58 + 96) = v82 & 1;
    *(v58 + 120) = &type metadata for Bool;
    *(v58 + 128) = 0x614E656369766564;
    *(v58 + 136) = 0xEA0000000000656DLL;
    sub_14994(v56, v57, &qword_137598, &unk_107EB0);
    v59 = *(v81 + 48);
    v60 = v59(v57, 1, v30);
    v61 = *(v0 + 240);
    if (v60 == 1)
    {
      sub_16F70(*(v0 + 240), &qword_137598, &unk_107EB0);
      *(v58 + 144) = 0u;
      *(v58 + 160) = 0u;
    }

    else
    {
      *(v58 + 168) = v30;
      v62 = sub_1A924((v58 + 144));
      (*(v81 + 32))(v62, v61, v30);
    }

    v63 = *(v0 + 248);
    v64 = *(v0 + 232);
    *(v58 + 176) = 0x656D614E6D6F6F72;
    *(v58 + 184) = 0xE800000000000000;
    sub_14994(v63, v64, &qword_137598, &unk_107EB0);
    v65 = v59(v64, 1, v30);
    v66 = *(v0 + 232);
    if (v65 == 1)
    {
      sub_16F70(*(v0 + 232), &qword_137598, &unk_107EB0);
      *(v58 + 192) = 0u;
      *(v58 + 208) = 0u;
    }

    else
    {
      *(v58 + 216) = v30;
      v67 = sub_1A924((v58 + 192));
      (*(v81 + 32))(v67, v66, v30);
    }

    v84 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
    v68 = swift_task_alloc();
    *(v0 + 408) = v68;
    *v68 = v0;
    v68[1] = sub_BB368;
    v69 = *(v0 + 96);

    return v84(v69, 0xD000000000000024, 0x800000000010DFE0, v58);
  }
}

uint64_t sub_BAD7C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {

    v5 = sub_BBCAC;
  }

  else
  {
    *(v4 + 376) = a1;

    v5 = sub_BAF0C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_BAF0C(uint64_t a1)
{
  v2 = v1[35];
  sub_104D00();
  *(swift_task_alloc() + 16) = v2;
  sub_1051B0();

  v3 = swift_task_alloc();
  v1[48] = v3;
  *v3 = v1;
  v3[1] = sub_BB008;
  v4 = v1[25];
  v5 = v1[16];
  v6 = v1[7];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v6, v5, v4);
}

uint64_t sub_BB008()
{
  v2 = *(*v1 + 376);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  *(*v1 + 392) = v0;

  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    v6 = sub_BBE7C;
  }

  else
  {
    v6 = sub_BB198;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_BB198()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  (*(v0[24] + 8))(v0[25], v0[23]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[34];
  v5 = v0[35];
  v7 = v0[32];
  v6 = v0[33];
  sub_16F70(v0[31], &qword_137598, &unk_107EB0);
  sub_16F70(v7, &qword_137598, &unk_107EB0);
  (*(v4 + 8))(v5, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_BB368()
{
  v2 = *v1;
  v2[52] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_BBAEC, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[53] = v3;
    *v3 = v2;
    v3[1] = sub_BB4FC;
    v4 = v2[38];

    return sub_863DC(v4);
  }
}

uint64_t sub_BB4FC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 432) = v1;

  if (v1)
  {
    v5 = sub_BB91C;
  }

  else
  {
    *(v4 + 440) = a1;
    v5 = sub_BB624;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_BB624()
{
  v18 = *(v0 + 304);
  v1 = *(v0 + 280);
  v16 = *(v0 + 296);
  v17 = *(v0 + 288);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v13 = *(v0 + 96);
  v4 = *(v0 + 72);
  v14 = *(v0 + 88);
  v15 = *(v0 + 80);
  v5 = *(v0 + 56);
  sub_1A8E0(*(v0 + 64), *(*(v0 + 64) + 24));
  sub_104CC0();
  (*(v3 + 16))(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  v6 = sub_105430();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v5[3] = v6;
  v5[4] = &protocol witness table for AceOutput;
  sub_1A924(v5);
  sub_104EE0();

  sub_16F70(v0 + 16, &qword_1375B0, &qword_107EC0);
  sub_16F70(v4, &qword_1375A8, &qword_10AA90);
  (*(v14 + 8))(v13, v15);
  (*(v16 + 8))(v18, v17);
  v7 = *(v0 + 272);
  v8 = *(v0 + 280);
  v10 = *(v0 + 256);
  v9 = *(v0 + 264);
  sub_16F70(*(v0 + 248), &qword_137598, &unk_107EB0);
  sub_16F70(v10, &qword_137598, &unk_107EB0);
  (*(v7 + 8))(v8, v9);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_BB91C()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];
  (*(v0[37] + 8))(v0[38], v0[36]);
  sub_16F70(v5, &qword_137598, &unk_107EB0);
  sub_16F70(v4, &qword_137598, &unk_107EB0);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_BBAEC()
{

  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];
  (*(v0[37] + 8))(v0[38], v0[36]);
  sub_16F70(v5, &qword_137598, &unk_107EB0);
  sub_16F70(v4, &qword_137598, &unk_107EB0);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_BBCAC()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];
  (*(v0[37] + 8))(v0[38], v0[36]);
  sub_16F70(v5, &qword_137598, &unk_107EB0);
  sub_16F70(v4, &qword_137598, &unk_107EB0);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_BBE7C()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];
  (*(v0[37] + 8))(v0[38], v0[36]);
  sub_16F70(v5, &qword_137598, &unk_107EB0);
  sub_16F70(v4, &qword_137598, &unk_107EB0);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_BC04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_25E4(&qword_137598, &unk_107EB0);
  __chkstk_darwin(v10 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for SnoozeConfirmOtherRoomParameters(0);
  sub_7C2E0(a2, a1 + v13[5]);
  sub_7C2E0(a3, a1 + v13[8]);

  sub_106130();
  v14 = sub_106160();
  v15 = *(*(v14 - 8) + 56);
  v15(v12, 0, 1, v14);
  sub_1A814(v12, a1);

  sub_106130();
  v15(v12, 0, 1, v14);
  return sub_1A814(v12, a1 + v13[9]);
}

uint64_t sub_BC1CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_25E4(&qword_1375A8, &qword_10AA90);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  sub_1051D0();
  v6 = sub_104FF0();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a2, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  return sub_1051C0();
}

uint64_t sub_BC2D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1CE64;

  return sub_B9B24(a1, a2, a3);
}

uint64_t sub_BC388(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v1;
  v3[1] = sub_BC430;

  return sub_B9E08(a1);
}

uint64_t sub_BC430()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_BC564, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_BC564()
{
  v0[3] = v0[5];
  sub_25E4(&qword_1376C0, &unk_1080D0);
  sub_1064E0();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_BC630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CE64;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:)(a1, a2, a3, a4);
}

uint64_t sub_BC6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CE64;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:)(a1, a2, a3, a4);
}

uint64_t sub_BC7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CE64;

  return ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:)(a1, a2, a3, a4);
}

uint64_t sub_BC87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA94;

  return ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:)(a1, a2, a3, a4);
}

uint64_t sub_BC940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1CE64;

  return ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:)(a1, a2, a3, a4, a5);
}

uint64_t sub_BCA84()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  sub_25E4(&qword_137880, &unk_108290);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_109670;
  strcpy((v4 + 32), "isMixedAlarms");
  *(v4 + 46) = -4864;
  *(v4 + 48) = *v0;
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 80) = 0xD000000000000010;
  *(v4 + 88) = 0x800000000010C5B0;
  *(v4 + 96) = v0[1];
  *(v4 + 120) = &type metadata for Bool;
  *(v4 + 128) = 0xD000000000000018;
  *(v4 + 136) = 0x800000000010C5D0;
  *(v4 + 144) = v0[2];
  *(v4 + 168) = &type metadata for Bool;
  *(v4 + 176) = 0xD000000000000012;
  *(v4 + 184) = 0x800000000010C5F0;
  *(v4 + 192) = v0[3];
  *(v4 + 216) = &type metadata for Bool;
  *(v4 + 224) = 0xD000000000000016;
  *(v4 + 232) = 0x800000000010C610;
  *(v4 + 240) = v0[4];
  *(v4 + 264) = &type metadata for Bool;
  *(v4 + 272) = 0xD000000000000016;
  *(v4 + 280) = 0x800000000010C630;
  *(v4 + 288) = v0[5];
  *(v4 + 312) = &type metadata for Bool;
  *(v4 + 320) = 0xD000000000000017;
  *(v4 + 328) = 0x800000000010C650;
  *(v4 + 336) = v0[6];
  *(v4 + 360) = &type metadata for Bool;
  *(v4 + 368) = 0x68637461577369;
  *(v4 + 376) = 0xE700000000000000;
  *(v4 + 384) = v0[7];
  *(v4 + 408) = &type metadata for Bool;
  *(v4 + 416) = 0xD000000000000012;
  *(v4 + 424) = 0x800000000010C670;
  v5 = type metadata accessor for DeleteAlarmIntentHandledMultipleParameters(0);
  sub_14994(&v0[*(v5 + 48)], v3, &qword_137598, &unk_107EB0);
  v6 = sub_106160();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v3, 1, v6) == 1)
  {
    sub_16F70(v3, &qword_137598, &unk_107EB0);
    *(v4 + 432) = 0u;
    *(v4 + 448) = 0u;
  }

  else
  {
    *(v4 + 456) = v6;
    v8 = sub_1A924((v4 + 432));
    (*(v7 + 32))(v8, v3, v6);
  }

  *(v4 + 464) = 0xD000000000000011;
  *(v4 + 472) = 0x800000000010C690;
  v9 = *&v0[*(v5 + 52)];
  if (v9)
  {
    v10 = sub_1060A0();
  }

  else
  {
    v10 = 0;
    *(v4 + 488) = 0;
    *(v4 + 496) = 0;
  }

  *(v4 + 480) = v9;
  *(v4 + 504) = v10;

  return v4;
}

uint64_t sub_BCDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_14994(a1, v11, &unk_137430, &qword_107DC0);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_16F70(a1, &unk_137430, &qword_107DC0);
  return v12;
}

uint64_t sub_BCF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E4(&qword_137598, &unk_107EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 52));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_BD070(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E4(&qword_137598, &unk_107EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 48);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 52)) = a2;
  }

  return result;
}

uint64_t sub_BD14C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137598, &unk_107EB0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_BD1D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137598, &unk_107EB0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_BD274(uint64_t a1)
{
  sub_7EC90(319, &qword_1378F8, &type metadata accessor for SpeakableString);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_BD2FC()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13A2F8);
  sub_135C4(v0, qword_13A2F8);
  return sub_106A80();
}

uint64_t sub_BD348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a2;
    sub_106AA0();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = a1 + 40;
    do
    {
      v7 = objc_allocWithZone(ObjCClassFromMetadata);

      v8 = sub_106E10();
      v9 = sub_106E10();
      [v7 initWithIdentifier:v8 displayString:v9];

      sub_106EC0();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_106F10();
      }

      sub_106F20();
      v6 += 16;
      --v2;
    }

    while (v2);
    a2 = v4;
  }

  sub_BD4A4(_swiftEmptyArrayStorage, a2);
}

uint64_t sub_BD4A4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25E4(&qword_1376F0, &unk_10A900);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v44 = sub_106D80();
  v40 = *(v44 - 8);
  v7 = __chkstk_darwin(v44);
  v43 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v35 - v9;
  v41 = sub_1046B0();
  v38 = *(v41 - 1);
  __chkstk_darwin(v41);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = a2;
  sub_104FE0();
  v46 = _swiftEmptyArrayStorage;
  v12 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_34:
    v13 = sub_107270();
  }

  else
  {
    v13 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v14 = 0;
  v45 = a1 & 0xC000000000000001;
  while (v13 != v14)
  {
    if (v45)
    {
      v15 = sub_1071C0();
    }

    else
    {
      if (v14 >= *(v12 + 16))
      {
        goto LABEL_31;
      }

      v15 = *(a1 + 8 * v14 + 32);
    }

    v16 = v15;
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    sub_783D0();
    v19 = v18;

    ++v14;
    if (v19)
    {
      sub_106EC0();
      if (*(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v46 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_106F10();
      }

      sub_106F20();
      v14 = v17;
    }
  }

  sub_104F80();
  sub_1046A0();
  v42 = sub_104690();
  v21 = v20;
  (*(v38 + 8))(v11, v41);
  if (v13)
  {
    v22 = 0;
    v41 = (v40 + 48);
    v23 = (v40 + 32);
    v11 = _swiftEmptyArrayStorage;
    v37 = v6;
    v38 = a1;
    v36 = v21;
    do
    {
      if (v45)
      {
        v24 = sub_1071C0();
      }

      else
      {
        if (v22 >= *(v12 + 16))
        {
          goto LABEL_33;
        }

        v24 = *(a1 + 8 * v22 + 32);
      }

      v25 = v24;
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_32;
      }

      sub_7BCB0(v42, v21, v22, 0, v6);

      v27 = v44;
      if ((*v41)(v6, 1, v44) == 1)
      {
        sub_16F70(v6, &qword_1376F0, &unk_10A900);
      }

      else
      {
        v28 = v13;
        v29 = v12;
        v30 = *v23;
        v31 = v39;
        (*v23)(v39, v6, v27);
        v30(v43, v31, v27);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_AD69C(0, v11[2] + 1, 1, v11);
        }

        v33 = v11[2];
        v32 = v11[3];
        v12 = v29;
        if (v33 >= v32 >> 1)
        {
          v11 = sub_AD69C((v32 > 1), v33 + 1, 1, v11);
        }

        v13 = v28;
        v11[2] = (v33 + 1);
        v30(v11 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v33, v43, v44);
        v6 = v37;
        a1 = v38;
        v21 = v36;
      }

      ++v22;
    }

    while (v26 != v13);
  }

  return sub_104F40();
}