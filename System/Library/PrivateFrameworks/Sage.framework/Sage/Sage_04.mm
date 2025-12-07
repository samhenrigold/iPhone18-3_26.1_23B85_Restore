uint64_t sub_1B5E4A69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B5E4A6C0, 0, 0);
}

uint64_t sub_1B5E4A6C0()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData);
  *(v0 + 64) = v1;
  return sub_1B5E5EF74(sub_1B5E4A6E8, v1);
}

uint64_t sub_1B5E4A6E8()
{
  sub_1B5E01DFC();
  *(v0 + 72) = *(*(v0 + 64) + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_tools);

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1B5E4A77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B5E4A79C, 0, 0);
}

uint64_t sub_1B5E4A79C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData);
  *(v0 + 32) = v1;
  return sub_1B5E5EF74(sub_1B5E4A7C4, v1);
}

uint64_t sub_1B5E4A7C4()
{
  sub_1B5E01DFC();
  *(*(v0 + 32) + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_tools) = *(v0 + 24);

  sub_1B5E2CF4C();

  return v1();
}

void sub_1B5E4A834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B5E601CC();
  v5 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  sub_1B5E01CF8(v5);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5E5F57C();
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  sub_1B5EA5160();
  v8 = swift_allocBox();
  v10 = v9;
  sub_1B5EA5140();
  sub_1B5EA5920();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v11, v12, v13, v14);
  sub_1B5E5FB08();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v8;
  v15[5] = v4;
  v15[6] = v7;

  v16 = v4;
  v17 = v7;
  v18 = sub_1B5E5FF20();
  sub_1B5E2A07C(v18, v19, v20, v21, v15);

  sub_1B5EA5A70();

  sub_1B5E2D094(v10);
  sub_1B5E2D1D8();
  v22 = sub_1B5E5FBCC();
  v23(v22);

  sub_1B5E601B8();
}

uint64_t sub_1B5E4A988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v7 = sub_1B5EA5160();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1B5E4AA58, 0, 0);
}

uint64_t sub_1B5E4AA58()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData);
  *(v0 + 112) = v1;
  return sub_1B5E5EF74(sub_1B5E4AA80, v1);
}

uint64_t sub_1B5E4AA80()
{
  sub_1B5E60190();
  sub_1B5E34EC0();
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_toolChoice;
  sub_1B5E2D094(v1 + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_toolChoice);
  (*(v3 + 16))(v2, v1 + v5, v4);
  sub_1B5E2CE58();
  sub_1B5E5FEF8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B5E4AB18()
{
  sub_1B5E60190();
  sub_1B5E34EC0();
  v1 = *(v0 + 72);
  sub_1B5E2D240(*(v0 + 104));
  v2 = sub_1B5E5F324();
  v3(v2);
  dispatch_group_leave(v1);

  sub_1B5E2CF4C();
  sub_1B5E5FEF8();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

void sub_1B5E4ABB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B5E601CC();
  sub_1B5E5FFD0();
  sub_1B5EA5160();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  sub_1B5E01CF8(v6);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v7);
  sub_1B5E5F57C();
  sub_1B5EA5920();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v8, v9, v10, v11);
  v12 = sub_1B5E5FD58();
  v13(v12);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v4;
  sub_1B5E5F688();
  v15();
  v16 = v4;
  v17 = sub_1B5E5FF20();
  sub_1B5E2A07C(v17, v18, v19, v20, v14);

  sub_1B5E601B8();
}

uint64_t sub_1B5E4AD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B5E4AD44, 0, 0);
}

uint64_t sub_1B5E4AD44()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData);
  *(v0 + 56) = v1;
  return sub_1B5E5EF74(sub_1B5E4AD6C, v1);
}

uint64_t sub_1B5E4AD6C()
{
  sub_1B5E2CED8();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_toolChoice;
  sub_1B5E34E78(v1 + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_toolChoice);
  sub_1B5EA5160();
  sub_1B5DF5EB8();
  (*(v4 + 24))(v1 + v3, v2);
  swift_endAccess();
  sub_1B5E2CF4C();

  return v5();
}

void sub_1B5E4AE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B5E601CC();
  v5 = v4;
  v7 = v6;
  v8 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  sub_1B5E01CF8(v8);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5E5F1E8();
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  sub_1B5E5F910();
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  sub_1B5EA5920();
  v12 = sub_1B5E5F2F8();
  sub_1B5DF3658(v12, v13, v14, v15);
  sub_1B5E5FB08();
  v16 = swift_allocObject();
  sub_1B5E5FDB8(v16);
  v17 = v3;
  v18 = v10;
  v19 = sub_1B5E5F844();
  sub_1B5E2A07C(v19, v20, v21, v5, v7);

  sub_1B5EA5A70();

  sub_1B5E2D094(v11 + 16);

  sub_1B5E601B8();
}

uint64_t sub_1B5E4AF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B5E4AF7C, 0, 0);
}

uint64_t sub_1B5E4AF7C()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData);
  *(v0 + 64) = v1;
  return sub_1B5E5EF74(sub_1B5E4AFA4, v1);
}

uint64_t sub_1B5E4AFA4()
{
  sub_1B5E01DFC();
  *(v0 + 72) = *(*(v0 + 64) + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_instructionsTemplateVariableBindings);

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1B5E4B018()
{
  sub_1B5E2CED8();
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[5];
  sub_1B5E2D240(v3 + 16);
  *(v3 + 16) = v1;

  dispatch_group_leave(v2);
  sub_1B5E2CF4C();

  return v4();
}

uint64_t sub_1B5E4B0BC()
{
  sub_1B5E5FC04();
  v3 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  sub_1B5E01CF8(v3);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5E5F1E8();
  sub_1B5EA5920();
  v5 = sub_1B5E5F2F8();
  sub_1B5DF3658(v5, v6, v7, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;
  v9[5] = v2;
  v10 = v1;

  v11 = sub_1B5E5F844();
  sub_1B5E2A07C(v11, v12, v13, v0, v9);
}

uint64_t sub_1B5E4B17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B5E4B19C, 0, 0);
}

uint64_t sub_1B5E4B19C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData);
  *(v0 + 32) = v1;
  return sub_1B5E5EF74(sub_1B5E4B1C4, v1);
}

uint64_t sub_1B5E4B1C4()
{
  sub_1B5E01DFC();
  *(*(v0 + 32) + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_instructionsTemplateVariableBindings) = *(v0 + 24);

  sub_1B5E2CF4C();

  return v1();
}

uint64_t sub_1B5E4B234(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1B5E5EF74(sub_1B5E4B250, 0);
}

uint64_t sub_1B5E4B250()
{
  sub_1B5E01DFC();
  swift_task_alloc();
  sub_1B5E34EEC();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_1B5E5EF28;

  return sub_1B5E2F324();
}

uint64_t sub_1B5E4B2EC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1B5E5EF74(sub_1B5E4B308, 0);
}

uint64_t sub_1B5E4B308()
{
  sub_1B5E01DFC();
  swift_task_alloc();
  sub_1B5E34EEC();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_1B5E4B3A4;

  return sub_1B5E2F604();
}

uint64_t sub_1B5E4B3A4()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v1 = *v0;
  sub_1B5E2CE38();
  *v2 = v1;

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E4B4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B5E4B4C8, 0, 0);
}

uint64_t sub_1B5E4B4C8()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData);
  *(v0 + 64) = v1;
  return sub_1B5E5EF74(sub_1B5E4B4F0, v1);
}

void sub_1B5E4B53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B5E601CC();
  v6 = v5;
  v8 = v7;
  v9 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  sub_1B5E01CF8(v9);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v10);
  sub_1B5E5F1E8();
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  sub_1B5EA5920();
  v13 = sub_1B5E5F2F8();
  sub_1B5DF3658(v13, v14, v15, v16);
  sub_1B5E5FB08();
  v17 = swift_allocObject();
  sub_1B5E5FDB8(v17);
  v18 = v4;
  v19 = v11;
  v20 = sub_1B5E5F844();
  sub_1B5E2A07C(v20, v21, v22, v6, v8);

  sub_1B5EA5A70();

  sub_1B5E2D094(v12 + 16);

  sub_1B5E601B8();
}

uint64_t sub_1B5E4B648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B5E4B66C, 0, 0);
}

uint64_t sub_1B5E4B66C()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData);
  *(v0 + 64) = v1;
  return sub_1B5E5EF74(sub_1B5E4B694, v1);
}

uint64_t sub_1B5E4B6C0()
{
  sub_1B5E2CED8();
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[9] > 1;
  sub_1B5E2D240(v2 + 16);
  *(v2 + 16) = v3;
  dispatch_group_leave(v1);
  sub_1B5E2CF4C();

  return v4();
}

BOOL sub_1B5E4B744(uint64_t a1)
{
  v1 = sub_1B5EA4230();
  v2 = [v1 domain];
  v3 = sub_1B5EA56A0();
  v5 = v4;

  if (v3 == sub_1B5EA56A0() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_1B5E5FE98();

    if ((v8 & 1) == 0)
    {

      return 0;
    }
  }

  v9 = [v1 code];

  return v9 == 4097;
}

BOOL sub_1B5E4B81C(uint64_t a1)
{
  v1 = sub_1B5EA4230();
  v2 = [v1 domain];
  v3 = sub_1B5EA56A0();
  v5 = v4;

  if (v3 == sub_1B5EA56A0() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_1B5E5FE98();

    if ((v8 & 1) == 0)
    {

      return 0;
    }
  }

  v9 = [v1 code];

  return v9 == 4099;
}

void sub_1B5E4B8F4(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v79 = a1;
  v80 = a2;
  v5 = sub_1B5EA53B0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v73 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v73 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v74 = &v73 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v75 = &v73 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v73 - v16;
  v17 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_client;
  v81 = v2;
  swift_beginAccess();
  v86 = 0;
  v18 = (v6 + 16);
  v82 = (v6 + 8);
  v19 = 1;
  *&v20 = 138412802;
  v77 = v20;
  v78 = v5;
  while (1)
  {
    if (v19 == 4)
    {
      if (qword_1EB90CE80 != -1)
      {
        swift_once();
      }

      v33 = sub_1B5DFD794(v5, qword_1EB90CE88);
      swift_beginAccess();
      v34 = v76;
      (*v18)(v76, v33, v5);
      v35 = v86;
      v36 = v86;
      v37 = sub_1B5EA5380();
      v38 = v5;
      v39 = sub_1B5EA5A40();
      if (os_log_type_enabled(v37, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 134218242;
        *(v40 + 4) = 3;
        *(v40 + 12) = 2112;
        if (!v35)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v42 = v41;
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 14) = v43;
        *v42 = v43;
        _os_log_impl(&dword_1B5DED000, v37, v39, "failed after %ld attempts with error: %@", v40, 0x16u);
        sub_1B5DF4428(v42, &unk_1EB90F890, &qword_1B5EB6DC0);
        MEMORY[0x1B8C8B330](v42, -1, -1);
        MEMORY[0x1B8C8B330](v40, -1, -1);

        (*v82)(v34, v78);
      }

      else
      {

        (*v82)(v34, v38);
        if (!v35)
        {
LABEL_38:
          __break(1u);
          return;
        }
      }

      swift_willThrow();
      return;
    }

    sub_1B5E5EEBC(v81 + v17, v83, &qword_1EB90EBB0, &qword_1B5EB6D78);
    v21 = v84;
    if (!v84)
    {
      __break(1u);
      goto LABEL_37;
    }

    v22 = v85;
    sub_1B5DF3BFC(v83, v84);
    v23 = v4;
    (*(v22 + 16))(v79, v80, MEMORY[0x1E69E7CA8] + 8, v21, v22);
    if (!v4)
    {
      break;
    }

    sub_1B5DF3FB8(v83);
    if (sub_1B5E4B81C(v4))
    {
      if (qword_1EB90CE80 != -1)
      {
        swift_once();
      }

      v51 = sub_1B5DFD794(v5, qword_1EB90CE88);
      swift_beginAccess();
      v52 = v74;
      (*v18)(v74, v51, v5);
      v53 = v4;
      v54 = sub_1B5EA5380();
      v55 = sub_1B5EA5A40();

      v56 = os_log_type_enabled(v54, v55);
      v57 = v86;
      if (v56)
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v58 = 138412290;
        v60 = v4;
        v61 = _swift_stdlib_bridgeErrorToNSError();
        *(v58 + 4) = v61;
        *v59 = v61;
        _os_log_impl(&dword_1B5DED000, v54, v55, "connection was invalidated %@", v58, 0xCu);
        sub_1B5DF4428(v59, &unk_1EB90F890, &qword_1B5EB6DC0);
        MEMORY[0x1B8C8B330](v59, -1, -1);
        MEMORY[0x1B8C8B330](v58, -1, -1);
      }

      (*v82)(v52, v78);
      sub_1B5EA5130();
      sub_1B5E47A4C(&qword_1EB90EBE0, 255, MEMORY[0x1E69A0A68]);
      swift_allocError();
      sub_1B5EA4EF0();
      swift_willThrow();

      return;
    }

    if (!sub_1B5E4B744(v4))
    {
      if (qword_1EB90CE80 != -1)
      {
        swift_once();
      }

      v62 = sub_1B5DFD794(v5, qword_1EB90CE88);
      swift_beginAccess();
      v63 = v73;
      (*v18)(v73, v62, v5);
      v64 = v4;
      v65 = sub_1B5EA5380();
      v66 = sub_1B5EA5A40();

      v67 = os_log_type_enabled(v65, v66);
      v68 = v86;
      if (v67)
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v69 = 138412290;
        v71 = v4;
        v72 = _swift_stdlib_bridgeErrorToNSError();
        *(v69 + 4) = v72;
        *v70 = v72;
        _os_log_impl(&dword_1B5DED000, v65, v66, "encountered non-retryable error %@", v69, 0xCu);
        sub_1B5DF4428(v70, &unk_1EB90F890, &qword_1B5EB6DC0);
        MEMORY[0x1B8C8B330](v70, -1, -1);
        MEMORY[0x1B8C8B330](v69, -1, -1);
      }

      (*v82)(v63, v78);
      swift_willThrow();

      return;
    }

    if (qword_1EB90CE80 != -1)
    {
      swift_once();
    }

    v24 = sub_1B5DFD794(v5, qword_1EB90CE88);
    swift_beginAccess();
    (*v18)(v11, v24, v5);
    v25 = v4;
    v26 = sub_1B5EA5380();
    v27 = sub_1B5EA5A40();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = v77;
      v30 = v23;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      *(v28 + 12) = 2048;
      *(v28 + 14) = v19;
      *(v28 + 22) = 2048;
      *(v28 + 24) = 3;
      _os_log_impl(&dword_1B5DED000, v26, v27, "encountered retryable error: %@, will retry with attempt %ld/%ld", v28, 0x20u);
      sub_1B5DF4428(v29, &unk_1EB90F890, &qword_1B5EB6DC0);
      v32 = v29;
      v5 = v78;
      MEMORY[0x1B8C8B330](v32, -1, -1);
      MEMORY[0x1B8C8B330](v28, -1, -1);
    }

    else
    {
    }

    (*v82)(v11, v5);
    v4 = 0;
    ++v19;
    v86 = v23;
  }

  sub_1B5DF3FB8(v83);
  if (qword_1EB90CE80 != -1)
  {
    swift_once();
  }

  v44 = sub_1B5DFD794(v5, qword_1EB90CE88);
  swift_beginAccess();
  v45 = v75;
  (*v18)(v75, v44, v5);
  v46 = sub_1B5EA5380();
  v47 = sub_1B5EA5A40();
  v48 = os_log_type_enabled(v46, v47);
  v49 = v86;
  if (v48)
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_1B5DED000, v46, v47, "messaged replied", v50, 2u);
    MEMORY[0x1B8C8B330](v50, -1, -1);
  }

  else
  {
  }

  (*v82)(v45, v78);
}

void sub_1B5E4C324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B5DFD8A8();
  v24 = v23;
  v25 = sub_1B5DF33E0(&qword_1EB90EC18, &qword_1B5EB6E90);
  sub_1B5E01CF8(v25);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v26);
  sub_1B5DFA50C();
  v125 = v27;
  sub_1B5E34DC8();
  v124 = sub_1B5EA53B0();
  sub_1B5DF5DA8();
  v123 = v28;
  MEMORY[0x1EEE9AC00](v29);
  sub_1B5DFD7E8();
  sub_1B5E26144(v31 - v30);
  v131 = sub_1B5DF33E0(&qword_1EB90DBA0, &qword_1B5EAFC90);
  sub_1B5DF5DA8();
  v135 = v32;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v33);
  sub_1B5DFA50C();
  sub_1B5E26144(v34);
  v148 = sub_1B5DF33E0(&qword_1EB90E630, &unk_1B5EB60A0);
  sub_1B5DF5DA8();
  v142 = v35;
  MEMORY[0x1EEE9AC00](v36);
  sub_1B5DFD7F8();
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v37);
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v38);
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v39);
  sub_1B5E5FF90();
  sub_1B5E26144(v40);
  v149 = sub_1B5DF33E0(&qword_1EB90EBB8, &qword_1B5EB6D80);
  sub_1B5DF5DA8();
  v132 = v41;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v42);
  sub_1B5E08868();
  sub_1B5EA4340();
  sub_1B5DF5DA8();
  v143 = v43;
  v144 = v44;
  MEMORY[0x1EEE9AC00](v43);
  sub_1B5E5FF9C();
  sub_1B5E26144(v45);
  v138 = v46;
  MEMORY[0x1EEE9AC00](v47);
  v49 = v122 - v48;
  v152 = MEMORY[0x1E69E7CC0];
  v153 = MEMORY[0x1E69E7CC0];
  v128 = sub_1B5E4D620(v24, &v153, &v152);
  v127 = 0;
  sub_1B5EA4330();
  v50 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_registrationRequests;
  sub_1B5E2D094(&v21[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_registrationRequests]);
  v145 = v21;
  v51 = *&v21[v50];

  v147 = v49;
  sub_1B5E4D778(v49, v51);
  sub_1B5E43350();

  if (v20)
  {
    v146 = v50;
    v52 = *(v20 + 16);
    v53 = v149;
    if (v52)
    {
      v54 = v132 + 16;
      v55 = *(v132 + 16);
      sub_1B5E34D90();
      v57 = v20 + v56;
      v58 = *(v54 + 56);
      do
      {
        v55(v22, v57, v53);
        v151 = 0;
        sub_1B5EA59A0();
        (*(v54 - 8))(v22, v53);
        v57 += v58;
        --v52;
      }

      while (v52);
    }

    v50 = v146;
  }

  v59 = v152;
  v60 = v145;
  sub_1B5E34E78(&v145[v50]);

  swift_isUniquelyReferenced_nonNull_native();
  v150 = *&v60[v50];
  v129 = v59;
  sub_1B5EA0214();
  *&v60[v50] = v150;
  v61 = swift_endAccess();
  v63 = 0;
  v139 = v144 + 16;
  v137 = v144 + 32;
  v146 = v153;
  v141 = *(v153 + 16);
  v64 = v140;
  v65 = v143;
  while (v141 != v63)
  {
    if (v63 >= *(v146 + 16))
    {
      __break(1u);
LABEL_27:
      sub_1B5E5EF54(&qword_1EB90CE80, v62);
      goto LABEL_12;
    }

    sub_1B5E34D40();
    v60 = v136;
    sub_1B5E5EEBC(v67 + v66 + *(v68 + 72) * v63++, v136, &qword_1EB90E630, &unk_1B5EB60A0);
    sub_1B5E5F910();
    v69 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v70 = v144;
    (*(v144 + 16))(v64, v147, v65);
    v71 = (*(v70 + 80) + 24) & ~*(v70 + 80);
    v72 = swift_allocObject();
    *(v72 + 16) = v69;
    (*(v70 + 32))(v72 + v71, v64, v65);
    sub_1B5EA5980();
    v73 = sub_1B5E5F758();
    v61 = sub_1B5DF4428(v73, v74, &unk_1B5EB60A0);
  }

  MEMORY[0x1EEE9AC00](v61);
  v75 = v128;
  v122[-4] = v145;
  v122[-3] = v75;
  v122[-2] = v147;
  v60 = v127;
  sub_1B5E4B8F4(sub_1B5E5EE64, &v122[-6]);
  if (!v60)
  {

    goto LABEL_20;
  }

  if (qword_1EB90CE80 != -1)
  {
    goto LABEL_27;
  }

LABEL_12:
  v76 = v124;
  v77 = sub_1B5DFD794(v124, qword_1EB90CE88);
  sub_1B5E2D094(v77);
  v78 = v123;
  v79 = v126;
  (*(v123 + 16))(v126, v77, v76);
  v80 = v60;
  v81 = sub_1B5EA5380();
  v82 = sub_1B5EA5A40();

  v83 = os_log_type_enabled(v81, v82);
  v84 = v122[1];
  if (v83)
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v87 = sub_1B5E5FC3C();
    v150 = v87;
    *v85 = 136315394;
    *(v85 + 4) = sub_1B5E5B1CC();
    *(v85 + 12) = 2112;
    v88 = v60;
    v89 = _swift_stdlib_bridgeErrorToNSError();
    *(v85 + 14) = v89;
    *v86 = v89;
    _os_log_impl(&dword_1B5DED000, v81, v82, "%s error %@", v85, 0x16u);
    sub_1B5DF4428(v86, &unk_1EB90F890, &qword_1B5EB6DC0);
    sub_1B5E5F764();
    sub_1B5DF3FB8(v87);
    sub_1B5E2D07C();
    sub_1B5E2D07C();

    (*(v78 + 8))(v126, v76);
  }

  else
  {

    (*(v78 + 8))(v79, v76);
  }

  v90 = *(v146 + 16);
  if (v90)
  {
    sub_1B5E34D40();
    v92 = v146 + v91;
    v94 = *(v93 + 72);
    do
    {
      sub_1B5E5EEBC(v92, v84, &qword_1EB90E630, &unk_1B5EB60A0);
      v150 = v60;
      v95 = v60;
      sub_1B5EA59A0();
      sub_1B5DF4428(v84, &qword_1EB90E630, &unk_1B5EB60A0);
      v92 += v94;
      --v90;
    }

    while (v90);
  }

  sub_1B5E5FFC4();
  v96 = v140;
  v97(v140, v147, v143);
  sub_1B5DF33E0(&qword_1EB90EBD8, &qword_1B5EB6DA0);
  v98 = v125;
  sub_1B5DF5DF0();
  sub_1B5DF3658(v99, v100, v101, v102);
  sub_1B5E34E78(&v145[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionRequests]);
  sub_1B5E43BE0(v98, v96);
  swift_endAccess();

LABEL_20:
  v103 = v131;
  v104 = v130;
  v105 = v146;
  v106 = *(v146 + 16);
  if (v106)
  {
    v150 = MEMORY[0x1E69E7CC0];
    sub_1B5E5B778(0, v106, 0);
    v107 = v150;
    sub_1B5E34D40();
    v109 = v105 + v108;
    v145 = *(v110 + 72);
    v111 = (v135 + 32);
    v142 = (v132 + 8);
    do
    {
      v112 = v133;
      sub_1B5E5EEBC(v109, v133, &qword_1EB90E630, &unk_1B5EB60A0);
      v113 = v134;
      sub_1B5E5EE70(v112, v134, &qword_1EB90E630, &unk_1B5EB60A0);
      v114 = *(v148 + 48);
      v115 = *v111;
      v116 = sub_1B5E5FA54();
      v115(v116);
      (*v142)(v113 + v114, v149);
      v150 = v107;
      v118 = *(v107 + 2);
      v117 = *(v107 + 3);
      if (v118 >= v117 >> 1)
      {
        v121 = sub_1B5E34E0C(v117);
        sub_1B5E5B778(v121, v118 + 1, 1);
        v107 = v150;
      }

      *(v107 + 2) = v118 + 1;
      sub_1B5E34D40();
      (v115)(&v107[v119 + *(v120 + 72) * v118], v104, v103);
      v109 += v145;
      --v106;
    }

    while (v106);
  }

  (*(v144 + 8))(v147, v143);

  sub_1B5DFD8C0();
}

uint64_t sub_1B5E4CDFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t **a4@<X8>)
{
  v73 = a4;
  v68 = a3;
  v81 = a2;
  v82 = a1;
  v4 = sub_1B5DF33E0(&unk_1EB90E780, &unk_1B5EB60F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v66 = &v62 - v5;
  v62 = sub_1B5EA50B0();
  v65 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B5DF33E0(&qword_1EB90EDB8, &qword_1B5EB7198);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v69 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v62 - v10;
  v63 = sub_1B5EA42B0();
  MEMORY[0x1EEE9AC00](v63);
  v80 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B5EA4E90();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v79 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1B5DF33E0(&qword_1EB90E630, &unk_1B5EB60A0);
  v14 = *(v83 - 8);
  v78 = v83 - 8;
  v76 = v14;
  v77 = v14;
  MEMORY[0x1EEE9AC00](v83);
  v75 = &v62 - v15;
  v16 = sub_1B5DF33E0(&qword_1EB90EC08, &qword_1B5EB6DD0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v62 - v18;
  v20 = sub_1B5DF33E0(&qword_1EB90EBB8, &qword_1B5EB6D80);
  v74 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v62 - v21;
  v23 = sub_1B5DF33E0(&qword_1EB90DBA0, &qword_1B5EAFC90);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v62 - v25;
  sub_1B5EA4ED0();
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8790], v16);
  sub_1B5EA5970();
  v27 = v19;
  v28 = v20;
  v29 = v74;
  (*(v17 + 8))(v27, v16);
  v30 = *(v83 + 48);
  v72 = v24;
  v31 = *(v24 + 16);
  v32 = v75;
  v70 = v26;
  v31(v75, v26, v23);
  v33 = *(v29 + 16);
  v71 = v22;
  v33(v32 + v30, v22, v28);
  v34 = v81;
  sub_1B5E32A58();
  v35 = *(*v34 + 16);
  sub_1B5E32AFC(v35);
  v36 = *v34;
  *(v36 + 16) = v35 + 1;
  sub_1B5E5EE70(v32, v36 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v76 + 72) * v35, &qword_1EB90E630, &unk_1B5EB60A0);
  sub_1B5EA4E60();
  sub_1B5EA4E70();
  v37 = objc_allocWithZone(type metadata accessor for DocumentXPCEnvelope(0));
  DocumentXPCEnvelope.init(sealing:)();
  v39 = v38;
  v40 = *v34;
  v81 = v39;
  if (v39)
  {
    v41 = v69;
    sub_1B5E2EEAC(v40, v69);
    v42 = v83;
    result = sub_1B5DF46E0(v41, 1, v83);
    if (result != 1)
    {
      v44 = *(v42 + 48);
      v45 = v68;
      sub_1B5E32A40();
      v46 = *(*v45 + 16);
      sub_1B5E32AE4(v46);
      (*(v29 + 8))(v71, v28);
      v47 = *(v72 + 8);
      v47(v70, v23);
      v48 = *v45;
      *(v48 + 16) = v46 + 1;
      (*(v29 + 32))(v48 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v46, v41 + v44, v28);
      result = (v47)(v41, v23);
LABEL_6:
      *v73 = v81;
      return result;
    }

    __break(1u);
  }

  else
  {
    v49 = v63;
    v79 = v23;
    v80 = v28;
    v50 = v65;
    v51 = v66;
    v52 = v64;
    v53 = v67;
    sub_1B5E2EEAC(v40, v67);
    v54 = v83;
    result = sub_1B5DF46E0(v53, 1, v83);
    if (result != 1)
    {
      v55 = *(v54 + 48);
      sub_1B5EA4E60();
      sub_1B5DF3658(v51, 0, 1, v49);
      v56 = v52;
      sub_1B5EA50A0();
      sub_1B5EA5130();
      sub_1B5E47A4C(&qword_1EB90EBE0, 255, MEMORY[0x1E69A0A68]);
      v57 = swift_allocError();
      sub_1B5EA50D0();
      (*(v50 + 8))(v56, v62);
      v84 = v57;
      v58 = v80;
      sub_1B5EA59A0();
      v59 = *(v29 + 8);
      v59(v71, v58);
      v60 = *(v72 + 8);
      v61 = v79;
      v60(v70, v79);
      v59((v53 + v55), v58);
      result = (v60)(v53, v61);
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B5E4D620(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v6 = result;
  v7 = 0;
  v8 = *(result + 16);
  v9 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v8 == v7)
    {
      return v9;
    }

    if (v7 >= v8)
    {
      break;
    }

    v10 = sub_1B5EA4E90();
    v12 = *(v10 - 8);
    result = v10 - 8;
    v11 = v12;
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_13;
    }

    result = sub_1B5E4CDFC(v6 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v7, a2, a3, &v14);
    if (v3)
    {

      return v9;
    }

    ++v7;
    if (v14)
    {
      MEMORY[0x1B8C8A450](result);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B5EA5860();
      }

      result = sub_1B5EA5880();
      v9 = v15;
      v7 = v13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1B5E4D778(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1B5E5AF88();
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5E4D7C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (sub_1B5E5AF88(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = sub_1B5DF33E0(&qword_1EB90EBD8, &qword_1B5EB6DA0);
    (*(*(v8 - 8) + 16))(a2, v7 + *(*(v8 - 8) + 72) * v6, v8);
    v9 = a2;
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v11 = sub_1B5DF33E0(&qword_1EB90EBD8, &qword_1B5EB6DA0);
    v9 = a2;
    v10 = 1;
  }

  return sub_1B5DF3658(v9, v10, 1, v11);
}

double sub_1B5E4D8BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1B5E5AE4C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1B5E5E268(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1B5E4D934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1B5E5AE4C(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_1B5E43768();
    v12 = sub_1B5DF33E0(v10, v11);
    sub_1B5DF5EB8();
    (*(v13 + 16))(a4, v9 + *(v13 + 72) * v8, v12);
    v14 = sub_1B5E34D9C();
    v17 = v12;
  }

  else
  {
    v18 = sub_1B5E43768();
    sub_1B5DF33E0(v18, v19);
    sub_1B5DF5DF0();
  }

  return sub_1B5DF3658(v14, v15, v16, v17);
}

void *sub_1B5E4D9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B5DF33E0(&qword_1EB90ED88, &qword_1B5EB7170);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  (*(v5 + 16))(&v13 - v6, a1, v4);
  LODWORD(a1) = (*(v5 + 88))(v7, v4);
  v8 = *MEMORY[0x1E69E8760];
  result = (*(v5 + 8))(v7, v4);
  if (a1 == v8)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      sub_1B5E5441C();
    }

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v12 = result;
      swift_beginAccess();
      sub_1B5E5D1E0();
      swift_endAccess();
    }
  }

  return result;
}

void sub_1B5E4DBBC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SessionConfiguration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1B5DFDA5C(*(a2 + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData) + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_configuration, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = objc_allocWithZone(type metadata accessor for SessionConfigurationXPCEnvelope());
  SessionConfigurationXPCEnvelope.init(sealing:)();
  v9 = v8;
  type metadata accessor for DocumentXPCEnvelope(0);
  v10 = sub_1B5EA5840();
  v11 = sub_1B5EA4310();
  [a1 registerWithConfiguration:v9 documents:v10 requestUUID:v11 delegate:a2];
}

void sub_1B5E4DCD4()
{
  sub_1B5DFD8A8();
  v117 = v0;
  v110 = v1;
  v111 = v2;
  v108 = v3;
  v109 = v4;
  v106 = v5;
  v107 = v6;
  v103 = v7;
  v118 = sub_1B5EA4CC0();
  sub_1B5DF5DA8();
  v9 = v8;
  v97 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1B5E5FF7C();
  v116 = v12;
  sub_1B5E34DC8();
  v113 = sub_1B5EA4D20();
  sub_1B5DF5DA8();
  v119 = v13;
  v92 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1B5E5FF7C();
  v112 = v16;
  v17 = sub_1B5DF33E0(&qword_1EB90E6A0, &qword_1B5EB60D8);
  v18 = sub_1B5E01C50(v17);
  v94 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1B5E5FB70();
  v105 = v0;
  v22 = sub_1B5EA4820();
  v115 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v104 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1B5EA5470();
  v25 = *(v102 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v85 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *(v25 + 16);
  v81 = v25 + 16;
  v80();
  v27 = *(v23 + 16);
  v100 = v23 + 16;
  v101 = v27;
  v27(&v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v106, v22);
  sub_1B5E5EEBC(v107, v0, &qword_1EB90E6A0, &qword_1B5EB60D8);
  v28 = v119;
  v29 = *(v119 + 16);
  v98 = v119 + 16;
  v99 = v29;
  v29(v112, v108, v113);
  v114 = v9;
  v30 = *(v9 + 16);
  v95 = v9 + 16;
  v96 = v30;
  v30(v116, v109, v118);
  v31 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v32 = (v26 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (*(v23 + 80) + v32 + 8) & ~*(v23 + 80);
  v34 = *(v23 + 80);
  v86 = v34;
  v35 = *(v94 + 80);
  v94 = v24 + v35;
  v36 = (v24 + v35 + v33) & ~v35;
  v87 = v35;
  v89 = *(v28 + 80);
  v93 = v21 + v89;
  v37 = (v21 + v89 + v36) & ~v89;
  v90 = *(v9 + 80);
  v92 += v90;
  v38 = (v92 + v37) & ~v90;
  v91 = v34 | v89 | v90 | v35 | 7;
  v88 = v97 + 7;
  v39 = (v97 + 7 + v38) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  (*(v25 + 32))(v40 + v31, v85, v102);
  *(v40 + v32) = v117;
  v41 = *(v23 + 32);
  v84 = v23 + 32;
  v85 = v41;
  (v41)(v40 + v33, v104, v115);
  sub_1B5E5EE70(v105, v40 + v36, &qword_1EB90E6A0, &qword_1B5EB60D8);
  v42 = *(v119 + 32);
  v119 += 32;
  v83 = v42;
  v43 = v112;
  v44 = v113;
  v42((v40 + v37), v112, v113);
  v45 = *(v114 + 32);
  v114 += 32;
  v82 = v45;
  v97 = v40;
  v46 = v116;
  v47 = v118;
  v45((v40 + v38), v116, v118);
  v48 = (v40 + v39);
  v49 = v111;
  *v48 = v110;
  v48[1] = v49;
  sub_1B5DF33E0(&qword_1EB90ED50, &qword_1B5EB7130);
  v79 = swift_allocBox();
  sub_1B5DF33E0(&qword_1EB90ED58, &qword_1B5EB7138);
  sub_1B5DF5DF0();
  sub_1B5DF3658(v50, v51, v52, v53);
  sub_1B5DF33E0(&qword_1EB90E938, &qword_1B5EB6690);
  v78 = swift_allocBox();
  v54 = v102;
  (v80)(v55, v103, v102);
  sub_1B5E5F704();
  sub_1B5DF3658(v56, v57, v58, v54);
  sub_1B5DF33E0(&qword_1EB90ED60, &qword_1B5EB7140);
  v103 = swift_allocBox();
  sub_1B5EA46F0();
  v59 = sub_1B5E5F2F8();
  sub_1B5DF3658(v59, v60, v61, v62);
  sub_1B5E5F910();
  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v64 = v104;
  v101(v104, v106, v115);
  v65 = v105;
  sub_1B5E5EEBC(v107, v105, &qword_1EB90E6A0, &qword_1B5EB60D8);
  v99(v43, v108, v44);
  v96(v46, v109, v47);
  v66 = (v86 + 40) & ~v86;
  v67 = (v94 + v66) & ~v87;
  v68 = (v93 + v67) & ~v89;
  v69 = (v92 + v68) & ~v90;
  v70 = (v88 + v69) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  v72 = v78;
  *(v71 + 2) = v63;
  *(v71 + 3) = v72;
  *(v71 + 4) = v79;
  (v85)(&v71[v66], v64, v115);
  sub_1B5E5EE70(v65, &v71[v67], &qword_1EB90E6A0, &qword_1B5EB60D8);
  v83(&v71[v68], v112, v113);
  v82(&v71[v69], v116, v118);
  v73 = &v71[v70];
  v74 = v111;
  *v73 = v110;
  *(v73 + 1) = v74;
  *&v71[(v70 + 23) & 0xFFFFFFFFFFFFFFF8] = v103;
  sub_1B5E5F8F8();
  v75 = swift_allocObject();
  *(v75 + 16) = sub_1B5E5E560;
  *(v75 + 24) = v71;
  swift_bridgeObjectRetain_n();
  v76 = v117;
  sub_1B5DFD8C0();
}

uint64_t sub_1B5E4E544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v14;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = sub_1B5EA5450();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  sub_1B5DF33E0(&qword_1EB90E928, &qword_1B5EB6688);
  v8[14] = swift_task_alloc();
  v10 = sub_1B5EA5160();
  v8[15] = v10;
  v8[16] = *(v10 - 8);
  v8[17] = swift_task_alloc();
  v11 = sub_1B5EA5470();
  v8[18] = v11;
  v8[19] = *(v11 - 8);
  v8[20] = swift_task_alloc();
  sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  sub_1B5DF33E0(&qword_1EB90E938, &qword_1B5EB6690);
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B5E4E7DC, 0, 0);
}

uint64_t sub_1B5E4E7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1B5E5F808();
  sub_1B5E5F904();
  v22 = v18[18];
  (*(v18[19] + 16))(v18[30], v18[3], v22);
  sub_1B5E5F704();
  sub_1B5DF3658(v23, v24, v25, v22);
  v18[31] = sub_1B5EA47C0();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v26, v27, v28, v29);
  v18[32] = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData;
  v30 = v18[29];
  sub_1B5E5EEBC(v18[30], v30, &qword_1EB90E938, &qword_1B5EB6690);
  sub_1B5E5F280(v30);
  if (!v31)
  {
    (*(v18[19] + 32))(v18[20], v18[29], v18[18]);
    sub_1B5E4A674();
    v18[33] = v49;
    sub_1B5E49FF8();
    v18[34] = v50;
    sub_1B5E4A834(v50, v51, v52, v53);
    sub_1B5E5F624();
    sub_1B5E5F400();

    return MEMORY[0x1EEE6DFA0](v54, v55, v56);
  }

  v32 = v18[31];
  v34 = v18[25];
  v33 = v18[26];
  sub_1B5DF4428(v18[29], &qword_1EB90E938, &qword_1B5EB6690);
  v35 = sub_1B5E5F318();
  sub_1B5E5EEBC(v35, v36, v37, v38);
  v54 = sub_1B5E5F20C(v34);
  if (v31)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v54, v55, v56);
  }

  sub_1B5E5F650();
  sub_1B5DF4428(v19, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  sub_1B5DF4428(v33, &qword_1EB90E938, &qword_1B5EB6690);
  sub_1B5E2D1D8();
  (*(v39 + 32))(v20, v21, v32);

  sub_1B5E5F1D8();
  sub_1B5E5F400();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1B5E4EA40()
{
  sub_1B5E01DFC();
  sub_1B5E2E05C();
  *(v0 + 288) = v1;
  swift_task_alloc();
  sub_1B5E34EEC();
  *(v0 + 296) = v2;
  *v2 = v3;
  v2[1] = sub_1B5E4EB14;

  return sub_1B5E51F34();
}

uint64_t sub_1B5E4EB14()
{
  sub_1B5E2CED8();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v5 = *v1;
  sub_1B5E2CE38();
  *v6 = v5;
  *(v3 + 304) = v0;

  if (v0)
  {
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B5E4EC30()
{
  sub_1B5E60190();
  sub_1B5E34EC0();
  v1 = sub_1B5E5F758();
  sub_1B5DF4428(v1, v2, &unk_1B5EB6EB0);
  v3 = sub_1B5E5F318();
  sub_1B5E5EE70(v3, v4, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  result = sub_1B5EA5460();
  v0[39] = result;
  v6 = *(result + 16);
  v0[40] = v6;
  v0[41] = 0;
  if (v6)
  {
    if (*(result + 16))
    {
      v7 = v0[31];
      v8 = sub_1B5E5FAEC(v0[13]);
      v9(v8);
      sub_1B5DF5DF0();
      sub_1B5DF3658(v10, v11, v12, v7);
      v13 = swift_task_alloc();
      v0[42] = v13;
      *v13 = v0;
      sub_1B5E5F378(v13);
      sub_1B5E5FEF8();

      return sub_1B5E2E434();
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v15 = v0[22];

  v16 = sub_1B5E5F318();
  sub_1B5E5EEBC(v16, v17, v18, v19);
  result = sub_1B5E5F20C(v15);
  if (v20)
  {
    goto LABEL_11;
  }

  v21 = swift_task_alloc();
  v0[44] = v21;
  *v21 = v0;
  sub_1B5E5F468(v21);
  sub_1B5E5FEF8();

  return sub_1B5E5795C();
}

uint64_t sub_1B5E4EDB0()
{
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v5 = *v1;
  sub_1B5E2CE38();
  *v6 = v5;
  v3[43] = v0;

  if (v0)
  {
    v7 = v3[23];
    v9 = v3[12];
    v8 = v3[13];
    v10 = v3[11];

    (*(v9 + 8))(v8, v10);
    sub_1B5DF4428(v7, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  }

  else
  {
    v11 = v3[23];
    (*(v3[12] + 8))(v3[13], v3[11]);
    sub_1B5DF4428(v11, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1B5E4EF5C()
{
  sub_1B5E2CED8();
  v1 = v0[40];
  v2 = v0[41] + 1;
  v0[41] = v2;
  result = v0[39];
  if (v2 == v1)
  {
    v4 = v0[22];

    v5 = sub_1B5E5F318();
    sub_1B5E5EEBC(v5, v6, v7, v8);
    result = sub_1B5E5F20C(v4);
    if (!v9)
    {
      v10 = swift_task_alloc();
      v0[44] = v10;
      *v10 = v0;
      sub_1B5E5F468(v10);

      return sub_1B5E5795C();
    }

LABEL_11:
    __break(1u);
    return result;
  }

  if (v2 >= *(result + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v0[31];
  sub_1B5E5FEE4();
  v17(v16, v12 + v13 + *(v14 + 56) * v15);
  sub_1B5DF5DF0();
  sub_1B5DF3658(v18, v19, v20, v11);
  v21 = swift_task_alloc();
  v0[42] = v21;
  *v21 = v0;
  sub_1B5E5F378(v21);

  return sub_1B5E2E434();
}

uint64_t sub_1B5E4F0BC()
{
  sub_1B5E2CED8();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v5 = *v1;
  sub_1B5E2CE38();
  *v6 = v5;
  v3[45] = v0;

  if (v0)
  {
  }

  else
  {
    sub_1B5E2D1D8();
    v8 = *(v7 + 8);
    v3[46] = v8;
    v3[47] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8();
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B5E4F210()
{
  sub_1B5E01DFC();
  v1 = v0[21];
  sub_1B5E5EEBC(v0[26], v1, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  result = sub_1B5E5F20C(v1);
  if (v3)
  {
    __break(1u);
  }

  else
  {

    swift_task_alloc();
    sub_1B5E34EEC();
    v0[48] = v4;
    *v4 = v5;
    v4[1] = sub_1B5E4F2F0;

    return sub_1B5E54698();
  }

  return result;
}

uint64_t sub_1B5E4F2F0()
{
  sub_1B5E2CED8();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v5 = *v1;
  sub_1B5E2CE38();
  *v6 = v5;
  *(v3 + 392) = v0;

  if (v0)
  {
  }

  else
  {
    v7 = *(v3 + 368);

    v8 = sub_1B5DFA488();
    v7(v8);
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B5E4F414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1B5E5F808();
  sub_1B5E5F904();
  v19 = v18[30];
  v20 = v18[28];
  v21 = v18[19];
  v63 = v18[20];
  v64 = v18[27];
  v23 = v18[17];
  v22 = v18[18];
  v24 = v18[15];
  sub_1B5DF4428(v18[14], &qword_1EB90E928, &qword_1B5EB6688);
  sub_1B5DF4428(v20, &qword_1EB90E938, &qword_1B5EB6690);
  v25 = sub_1B5E5F508();
  v26(v25);
  (*(v21 + 8))(v63, v22);
  sub_1B5DF4428(v19, &qword_1EB90E938, &qword_1B5EB6690);
  sub_1B5E5FBA4();
  sub_1B5E5EE70(v27, v28, v29, &qword_1B5EB6690);
  v30 = v18[18];
  sub_1B5E5FBA4();
  sub_1B5E5EEBC(v31, v32, v33, &qword_1B5EB6690);
  v34 = sub_1B5E5F8E0();
  if (sub_1B5DF46E0(v34, v35, v30) != 1)
  {
    (*(v18[19] + 32))(v18[20], v18[29], v18[18]);
    sub_1B5E4A674();
    v18[33] = v57;
    sub_1B5E49FF8();
    v18[34] = v58;
    sub_1B5E4A834(v58, v59, v60, v61);
    sub_1B5E5F624();
    sub_1B5E5F400();

    return MEMORY[0x1EEE6DFA0](v43, v44, v45);
  }

  v36 = v18[31];
  v38 = v18[25];
  v37 = v18[26];
  sub_1B5DF4428(v18[29], &qword_1EB90E938, &qword_1B5EB6690);
  v39 = sub_1B5E5F318();
  sub_1B5E5EEBC(v39, v40, v41, v42);
  v43 = sub_1B5E5F20C(v38);
  if (v46)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v43, v44, v45);
  }

  sub_1B5E5F650();
  sub_1B5DF4428(v23, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  sub_1B5DF4428(v37, &qword_1EB90E938, &qword_1B5EB6690);
  sub_1B5E2D1D8();
  (*(v47 + 32))(v24, &qword_1B5EB6690, v36);

  sub_1B5E5F1D8();
  sub_1B5E5F400();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, v63, v64, a16, a17, a18);
}

uint64_t sub_1B5E4F6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1B5E2D0E0();
  sub_1B5E2D1E4();
  v18 = sub_1B5E5FA28();
  sub_1B5DF4428(v18, &qword_1EB90E928, &qword_1B5EB6688);
  sub_1B5DF4428(v16, &qword_1EB90E938, &qword_1B5EB6690);
  v19 = sub_1B5E5F508();
  v20(v19);
  v21 = sub_1B5E5FA54();
  v22(v21);
  sub_1B5DF4428(v17, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  v23 = sub_1B5E5F324();
  sub_1B5DF4428(v23, v24, &qword_1B5EB6690);
  sub_1B5E5F0BC();

  sub_1B5E2CF4C();
  sub_1B5E2D0AC();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1B5E4F804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1B5E2D0E0();
  sub_1B5E2D1E4();
  v18 = sub_1B5E5FA28();
  sub_1B5DF4428(v18, &qword_1EB90E928, &qword_1B5EB6688);
  sub_1B5DF4428(v16, &qword_1EB90E938, &qword_1B5EB6690);
  v19 = sub_1B5E5F508();
  v20(v19);
  v21 = sub_1B5E5FA54();
  v22(v21);
  sub_1B5DF4428(v17, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  v23 = sub_1B5E5F324();
  sub_1B5DF4428(v23, v24, &qword_1B5EB6690);
  sub_1B5E5F0BC();

  sub_1B5E2CF4C();
  sub_1B5E2D0AC();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1B5E4F954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1B5E2D0E0();
  sub_1B5E2D1E4();
  v17 = v16[31];
  v18 = v16[28];
  v19 = v16[26];
  v34 = v16[30];
  v35 = v16[22];
  sub_1B5DF4428(v16[14], &qword_1EB90E928, &qword_1B5EB6688);
  sub_1B5DF4428(v18, &qword_1EB90E938, &qword_1B5EB6690);
  v20 = sub_1B5E5FB14();
  v21(v20);
  v22 = sub_1B5E5F508();
  v23(v22);
  sub_1B5DF4428(v19, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  sub_1B5DF4428(v34, &qword_1EB90E938, &qword_1B5EB6690);
  sub_1B5E2D1D8();
  (*(v24 + 8))(v35, v17);
  sub_1B5E5F0BC();

  sub_1B5E2CF4C();
  sub_1B5E2D0AC();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, v34, v35, a14, a15, a16);
}

uint64_t sub_1B5E4FAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1B5E2D0E0();
  sub_1B5E2D1E4();
  v38 = v16[46];
  v39 = v16[47];
  v35 = v16[30];
  v17 = v16[28];
  v18 = v16[26];
  v36 = v16[21];
  v37 = v16[31];
  sub_1B5DF4428(v16[14], &qword_1EB90E928, &qword_1B5EB6688);
  sub_1B5DF4428(v17, &qword_1EB90E938, &qword_1B5EB6690);
  v19 = sub_1B5E5FB14();
  v20(v19);
  v21 = sub_1B5E5F508();
  v22(v21);
  sub_1B5DF4428(v18, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  sub_1B5E5FA60();
  sub_1B5DF4428(v23, v24, v25);
  v38(v36, v37);
  sub_1B5E5F0BC();

  sub_1B5E2CF4C();
  sub_1B5E2D0AC();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, a14, a15, a16);
}

uint64_t sub_1B5E4FC78@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v49 = a8;
  v50 = a9;
  v45 = a7;
  v46 = a3;
  v42 = a5;
  v43 = a6;
  v41 = a4;
  v56 = a2;
  v47 = a10;
  v48 = a11;
  v55 = sub_1B5EA4CC0();
  v53 = *(v55 - 8);
  v44 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1B5EA4D20();
  v12 = *(v52 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B5DF33E0(&qword_1EB90E6A0, &qword_1B5EB60D8);
  v40 = *(v14 - 8);
  v15 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v35 - v16;
  v38 = &v35 - v16;
  v18 = sub_1B5EA4820();
  v37 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v19 + 16))(v21, v41, v18);
  sub_1B5E5EEBC(v42, v17, &qword_1EB90E6A0, &qword_1B5EB60D8);
  v36 = v12;
  (*(v12 + 16))(v51, v43, v52);
  v23 = v53;
  (*(v53 + 16))(v54, v45, v55);
  v24 = (*(v19 + 80) + 40) & ~*(v19 + 80);
  v25 = (v20 + *(v40 + 80) + v24) & ~*(v40 + 80);
  v26 = (v15 + *(v12 + 80) + v25) & ~*(v12 + 80);
  v27 = (v13 + *(v23 + 80) + v26) & ~*(v23 + 80);
  v28 = (v44 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v30 = v56;
  *(v29 + 2) = v39;
  *(v29 + 3) = v30;
  *(v29 + 4) = v46;
  (*(v19 + 32))(&v29[v24], v21, v37);
  sub_1B5E5EE70(v38, &v29[v25], &qword_1EB90E6A0, &qword_1B5EB60D8);
  (*(v36 + 32))(&v29[v26], v51, v52);
  (*(v53 + 32))(&v29[v27], v54, v55);
  v31 = &v29[v28];
  v32 = v48;
  v33 = v47;
  *v31 = v49;
  v31[1] = v33;
  *&v29[(v28 + 23) & 0xFFFFFFFFFFFFFFF8] = v32;

  sub_1B5DF33E0(&qword_1EB90EC90, &qword_1B5EB7080);
  return sub_1B5EA59D0();
}

uint64_t sub_1B5E5011C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[57] = v17;
  v8[58] = v18;
  v8[55] = a7;
  v8[56] = a8;
  v8[53] = a5;
  v8[54] = a6;
  v8[51] = a1;
  v8[52] = a2;
  v9 = sub_1B5EA47C0();
  v8[59] = v9;
  v8[60] = *(v9 - 8);
  v8[61] = swift_task_alloc();
  sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
  v8[62] = swift_task_alloc();
  v10 = sub_1B5EA5450();
  v8[63] = v10;
  v8[64] = *(v10 - 8);
  v8[65] = swift_task_alloc();
  sub_1B5DF33E0(&qword_1EB90ED60, &qword_1B5EB7140);
  v8[66] = swift_task_alloc();
  v8[67] = swift_task_alloc();
  v11 = sub_1B5DF33E0(&qword_1EB90ED68, &qword_1B5EB7148);
  v8[68] = v11;
  v8[69] = *(v11 - 8);
  v8[70] = swift_task_alloc();
  sub_1B5DF33E0(&qword_1EB90E928, &qword_1B5EB6688);
  v8[71] = swift_task_alloc();
  v12 = sub_1B5EA5160();
  v8[72] = v12;
  v8[73] = *(v12 - 8);
  v8[74] = swift_task_alloc();
  sub_1B5DF33E0(&qword_1EB90ED50, &qword_1B5EB7130);
  v8[75] = swift_task_alloc();
  v8[76] = swift_task_alloc();
  sub_1B5DF33E0(&qword_1EB90E938, &qword_1B5EB6690);
  v8[77] = swift_task_alloc();
  v8[78] = swift_task_alloc();
  v8[79] = swift_task_alloc();
  v8[80] = swift_task_alloc();
  v8[81] = swift_task_alloc();
  v13 = sub_1B5EA5470();
  v8[82] = v13;
  v8[83] = *(v13 - 8);
  v8[84] = swift_task_alloc();
  v14 = sub_1B5EA53B0();
  v8[85] = v14;
  v8[86] = *(v14 - 8);
  v8[87] = swift_task_alloc();
  v8[88] = swift_projectBox();
  v8[89] = swift_projectBox();
  v8[90] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1B5E50560, 0, 0);
}

uint64_t sub_1B5E50560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B5E5FA98();
  sub_1B5E5FC6C();
  sub_1B5E2D094(*(v20 + 416) + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v20 + 728) = Strong;
  if (!Strong)
  {
    if (qword_1EB90CE80 != -1)
    {
      Strong = sub_1B5E5EF54(&qword_1EB90CE80, v23);
    }

    v35 = sub_1B5E5F41C(Strong, qword_1EB90CE88);
    sub_1B5E2D094(v35);
    v36 = sub_1B5E5F1F8();
    v37(v36);
    v38 = sub_1B5EA5380();
    sub_1B5EA5A40();
    sub_1B5E5FA8C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = sub_1B5E34E60();
      sub_1B5E34EA8(v40);
      sub_1B5E34F28(&dword_1B5DED000, v41, v42, "Provider has been destroyed, can't complete request");
      sub_1B5E34DF0();
    }

    v43 = sub_1B5E5F318();
    v44(v43);
    sub_1B5EA5130();
    sub_1B5E5EF3C();
    v47 = sub_1B5E47A4C(v45, 255, v46);
    v78 = sub_1B5E5F23C(v47);
    sub_1B5EA50C0();
    swift_willThrow();
    sub_1B5E5F2C8();

    sub_1B5E2CF4C();
    goto LABEL_9;
  }

  v24 = *(v20 + 720);
  v25 = *(v20 + 712);
  v26 = *(v20 + 704);
  *(v20 + 736) = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData;
  sub_1B5E2D094(v26);
  sub_1B5E2D094(v25);
  sub_1B5E2D240(v25);
  sub_1B5E2D094(v24);
  sub_1B5E2D240(v26);
  sub_1B5E2D094(v26);
  sub_1B5E2D094(v26);
  sub_1B5E2D240(v25);
  sub_1B5E2D240(v24);
  v27 = *(v20 + 656);
  v28 = *(v20 + 648);
  sub_1B5E5EEBC(*(v20 + 704), v28, &qword_1EB90E938, &qword_1B5EB6690);
  v29 = sub_1B5E5F58C();
  if (sub_1B5DF46E0(v29, v30, v27) == 1)
  {
    v31 = *(v20 + 648);
    v32 = *(v20 + 408);

    sub_1B5DF4428(v31, &qword_1EB90E938, &qword_1B5EB6690);
    *v32 = 0u;
    *(v32 + 16) = 0u;
    *(v32 + 32) = 0;
    sub_1B5E5F174();
    a10 = v34;
    a11 = v33;
    a12 = *(v20 + 536);
    a13 = *(v20 + 528);
    a14 = *(v20 + 520);
    a15 = *(v20 + 496);
    v78 = *(v20 + 488);

    sub_1B5E5F1D8();
LABEL_9:
    sub_1B5E5F8B8();

    return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, v78, a17, a18, a19, a20);
  }

  v57 = sub_1B5E5F9FC();
  v58(v57);
  sub_1B5E4A674();
  *(v20 + 744) = v59;
  v60 = sub_1B5E5F318();
  sub_1B5E5EEBC(v60, v61, &qword_1EB90ED50, &qword_1B5EB7130);
  *(v20 + 752) = sub_1B5DF33E0(&qword_1EB90ED58, &qword_1B5EB7138);
  v62 = sub_1B5E5F644();
  sub_1B5DF46E0(v62, v63, v64);
  sub_1B5E6015C();
  if (v28 != 1)
  {
    sub_1B5E5F2A0();
    v69 = sub_1B5E5F20C(v28);
    if (!v70)
    {
      swift_task_alloc();
      sub_1B5E34EEC();
      *(v20 + 840) = v75;
      *v75 = v76;
      sub_1B5E5F000(v75);
      sub_1B5E5F8B8();

      return MEMORY[0x1EEE6DB98](v69);
    }

LABEL_22:
    __break(1u);
    return MEMORY[0x1EEE6DB98](v69);
  }

  sub_1B5E5FD08();
  *(v20 + 768) = *(&qword_1EB90ED50 + v21);
  v65 = sub_1B5E5FBCC();
  sub_1B5E5EEBC(v65, v66, v67, v68);
  v69 = sub_1B5E5F5A8(&qword_1B5EB7130, 1, v26);
  if (v70)
  {
    __break(1u);
    goto LABEL_22;
  }

  sub_1B5E5F8B8();

  return MEMORY[0x1EEE6DFA0](v71, v72, v73);
}

uint64_t sub_1B5E50A70()
{
  sub_1B5E2CED8();
  v1 = v0[83];
  sub_1B5E2E05C();
  v0[97] = v2;
  v0[98] = *(v1 + 8);
  v0[99] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3 = sub_1B5E5F940();
  v4(v3);
  v5 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B5E50B14()
{
  sub_1B5E5F808();
  sub_1B5E5F904();
  v1 = v0[94];
  v31 = v0[89];
  v32 = v0[90];
  v33 = v0[84];
  v2 = v0[75];
  v3 = v0[70];
  v4 = v0[67];
  sub_1B5E52DC8();

  sub_1B5EA59B0();
  v5 = sub_1B5E5F308();
  v6(v5);
  sub_1B5E5F704();
  sub_1B5DF3658(v7, v8, v9, v1);
  sub_1B5E5EC7C(v2, v31, &qword_1EB90ED50, &qword_1B5EB7130);
  sub_1B5EA46E0();
  sub_1B5EA46F0();
  sub_1B5E5F704();
  sub_1B5DF3658(v10, v11, v12, v13);
  sub_1B5E5EC7C(v4, v32, &qword_1EB90ED60, &qword_1B5EB7140);
  v14 = sub_1B5EA5460();
  v0[100] = v14;
  v15 = *(v14 + 16);
  v0[101] = v15;
  v0[102] = 0;
  if (!v15)
  {
    sub_1B5E5FE50();
    sub_1B5DF4428(v4, &qword_1EB90E928, &qword_1B5EB6688);
    sub_1B5DF4428(v33, &qword_1EB90E938, &qword_1B5EB6690);
    v25 = sub_1B5E5F308();
    v26(v25);
    sub_1B5E5F2A0();
    v14 = sub_1B5E5F20C(v3);
    if (!v27)
    {
      swift_task_alloc();
      sub_1B5E34EEC();
      v0[105] = v28;
      *v28 = v29;
      sub_1B5E5F000(v28);
      sub_1B5E5F400();

      return MEMORY[0x1EEE6DB98](v14);
    }

LABEL_11:
    __break(1u);
    return MEMORY[0x1EEE6DB98](v14);
  }

  if (!*(v14 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v0[59];
  v17 = sub_1B5E5FAEC(v0[65]);
  v18(v17);
  sub_1B5DF5DF0();
  sub_1B5DF3658(v19, v20, v21, v16);
  v22 = swift_task_alloc();
  v0[103] = v22;
  *v22 = v0;
  sub_1B5E5F438(v22);
  sub_1B5E5F400();

  return sub_1B5E2E434();
}

uint64_t sub_1B5E50D9C()
{
  sub_1B5E60190();
  sub_1B5E34EC0();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v5 = *v1;
  sub_1B5E2CE38();
  *v6 = v5;
  v3[104] = v0;

  if (v0)
  {
    v7 = v3[62];

    v8 = sub_1B5E5F758();
    v9(v8);
    sub_1B5DF4428(v7, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  }

  else
  {
    v10 = v3[62];
    (*(v3[64] + 8))(v3[65], v3[63]);
    sub_1B5DF4428(v10, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  }

  sub_1B5E5F8EC();
  sub_1B5E5FEF8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B5E50F1C()
{
  sub_1B5E60190();
  sub_1B5E34EC0();
  v5 = v2[102] + 1;
  v2[102] = v5;
  if (v5 == v2[101])
  {
    sub_1B5E5FE50();
    sub_1B5DF4428(v3, &qword_1EB90E928, &qword_1B5EB6688);
    sub_1B5DF4428(v1, &qword_1EB90E938, &qword_1B5EB6690);
    v6 = sub_1B5E5F308();
    v7(v6);
    sub_1B5E5F2A0();
    v4 = sub_1B5E5F20C(v0);
    if (!v8)
    {
      swift_task_alloc();
      sub_1B5E34EEC();
      v2[105] = v9;
      *v9 = v10;
      sub_1B5E5F000(v9);
      sub_1B5E5FEF8();

      return MEMORY[0x1EEE6DB98](v4);
    }

LABEL_11:
    __break(1u);
    return MEMORY[0x1EEE6DB98](v4);
  }

  if (v5 >= *(v2[100] + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v2[59];
  sub_1B5E5FEE4();
  v13();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v14, v15, v16, v12);
  v17 = swift_task_alloc();
  v2[103] = v17;
  *v17 = v2;
  sub_1B5E5F438(v17);
  sub_1B5E5FEF8();

  return sub_1B5E2E434();
}

uint64_t sub_1B5E510B0()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v5 = *v1;
  sub_1B5E2CE38();
  *v6 = v5;
  *(v3 + 848) = v0;

  if (!v0)
  {
    swift_endAccess();
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B5E511B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1B5E5F808();
  sub_1B5E5F904();
  if (*(v18 + 80))
  {
    v19 = *(v18 + 720);
    sub_1B5DF17A8((v18 + 56), v18 + 16);
    sub_1B5E34E78(v19);
    sub_1B5EA46F0();
    v20 = sub_1B5E5F8E0();
    result = sub_1B5E5F5A8(v20, v21, v22);
    if (!v24)
    {
      v25 = *(v18 + 728);
      v26 = *(v18 + 408);
      sub_1B5EA46D0();
      swift_endAccess();

      v27 = sub_1B5E5F758();
      v28(v27);
      sub_1B5DF17A8((v18 + 16), v26);
      sub_1B5E5F174();
      sub_1B5E5F2C8();

      sub_1B5E5F1D8();
      sub_1B5E5F400();

      return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v37 = *(v18 + 752);
  v38 = *(v18 + 712);
  v39 = *(v18 + 600);
  v40 = *(v18 + 528);
  sub_1B5DF4428(v18 + 56, &qword_1EB90ED78, &qword_1B5EB7160);
  v41 = sub_1B5E5F2F8();
  sub_1B5DF3658(v41, v42, v43, v37);
  sub_1B5E5EC7C(v39, v38, &qword_1EB90ED50, &qword_1B5EB7130);
  v44 = sub_1B5E5F8D4();
  sub_1B5E5EEBC(v44, v45, v46, v47);
  sub_1B5EA46F0();
  result = sub_1B5E5F280(v40);
  if (v24)
  {
    goto LABEL_11;
  }

  sub_1B5EA46C0();
  sub_1B5E2D1D8();
  v48 = sub_1B5E5F324();
  v49(v48);
  v50 = swift_task_alloc();
  *(v18 + 856) = v50;
  *v50 = v18;
  v50[1] = sub_1B5E51454;
  sub_1B5E5F780(*(v18 + 488));
  sub_1B5E5F400();

  return sub_1B5E5795C();
}

uint64_t sub_1B5E51454()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v5 = *v1;
  sub_1B5E2CE38();
  *v6 = v5;
  *(v3 + 864) = v0;

  if (v0)
  {

    v7 = sub_1B5E2CE58();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    swift_task_alloc();
    sub_1B5E34EEC();
    *(v3 + 872) = v10;
    *v10 = v11;
    v10[1] = sub_1B5E515B4;

    return sub_1B5E54698();
  }
}

uint64_t sub_1B5E515B4()
{
  sub_1B5E2CED8();
  sub_1B5E2CE48();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 880) = v0;

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B5E516D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1B5E5F808();
  sub_1B5E5F904();
  v19 = *(v18 + 656);
  v20 = *(v18 + 616);
  (*(*(v18 + 480) + 8))(*(v18 + 488), *(v18 + 472));
  v21 = sub_1B5E5F318();
  v22(v21);
  sub_1B5E5FB98();
  sub_1B5E5EC7C(v23, v24, v25, &qword_1B5EB6690);
  v26 = sub_1B5E5F78C();
  sub_1B5E5EEBC(v26, v27, &qword_1EB90E938, &qword_1B5EB6690);
  sub_1B5E5F5A8(v20, 1, v19);
  if (v34)
  {
    v28 = (v18 + 616);
  }

  else
  {
    sub_1B5E5FB98();
    sub_1B5DF4428(v29, v30, v31);
    v32 = *(v18 + 656);
    v33 = *(v18 + 648);
    sub_1B5E5EEBC(*(v18 + 704), v33, &qword_1EB90E938, &qword_1B5EB6690);
    sub_1B5E5F5A8(v33, 1, v32);
    if (!v34)
    {
      v46 = sub_1B5E5F9FC();
      v47(v46);
      sub_1B5E4A674();
      *(v18 + 744) = v48;
      v49 = sub_1B5E5F318();
      sub_1B5E5EEBC(v49, v50, &qword_1EB90ED50, &qword_1B5EB7130);
      *(v18 + 752) = sub_1B5DF33E0(&qword_1EB90ED58, &qword_1B5EB7138);
      v51 = sub_1B5E5F644();
      sub_1B5DF46E0(v51, v52, v53);
      sub_1B5E6015C();
      if (&qword_1B5EB6690 == 1)
      {
        sub_1B5E5FD08();
        *(v18 + 768) = *(&qword_1EB90ED50 + &qword_1B5EB6690);
        v54 = sub_1B5E5FBCC();
        sub_1B5E5EEBC(v54, v55, v56, v57);
        v58 = sub_1B5E5F5A8(&qword_1B5EB7130, 1, v32);
        if (!v34)
        {
          sub_1B5E5F400();

          return MEMORY[0x1EEE6DFA0](v59, v60, v61);
        }

        __break(1u);
      }

      else
      {
        sub_1B5E5F2A0();
        v58 = sub_1B5E5F20C(&qword_1B5EB6690);
        if (!v34)
        {
          swift_task_alloc();
          sub_1B5E34EEC();
          *(v18 + 840) = v63;
          *v63 = v64;
          sub_1B5E5F000(v63);
          sub_1B5E5F400();

          return MEMORY[0x1EEE6DB98](v58);
        }
      }

      __break(1u);
      return MEMORY[0x1EEE6DB98](v58);
    }

    v28 = (v18 + 648);
  }

  v35 = *v28;
  v36 = *(v18 + 408);

  sub_1B5DF4428(v35, &qword_1EB90E938, &qword_1B5EB6690);
  *v36 = 0u;
  *(v36 + 16) = 0u;
  *(v36 + 32) = 0;
  sub_1B5E5F174();
  sub_1B5E5F2C8();

  sub_1B5E5F1D8();
  sub_1B5E5F400();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1B5E51A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B5E5FA98();
  sub_1B5E5FC6C();
  v21 = *(v20 + 784);
  v22 = *(v20 + 640);
  v23 = *(v20 + 568);

  sub_1B5DF4428(v23, &qword_1EB90E928, &qword_1B5EB6688);
  sub_1B5DF4428(v22, &qword_1EB90E938, &qword_1B5EB6690);
  v24 = sub_1B5E5FA54();
  v25(v24);
  v26 = sub_1B5E5F324();
  v21(v26);
  sub_1B5E5F030();

  sub_1B5E2CF4C();
  sub_1B5E5F8B8();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1B5E51B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B5E5FA98();
  sub_1B5E5FC6C();
  v21 = *(v20 + 728);
  swift_endAccess();

  v22 = sub_1B5E5F308();
  v23(v22);
  sub_1B5E5F030();

  sub_1B5E2CF4C();
  sub_1B5E5F8B8();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1B5E51C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B5E5FA98();
  sub_1B5E5FC6C();
  sub_1B5E5FC14();
  v20 = sub_1B5E5F758();
  v21(v20);
  v22 = sub_1B5E5F324();
  v23(v22);
  sub_1B5E5F030();

  sub_1B5E2CF4C();
  sub_1B5E5F8B8();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1B5E51D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B5E5FA98();
  sub_1B5E5FC6C();
  sub_1B5E5FC14();
  v20 = sub_1B5E5F758();
  v21(v20);
  v22 = sub_1B5E5F324();
  v23(v22);
  sub_1B5E5F030();

  sub_1B5E2CF4C();
  sub_1B5E5F8B8();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1B5E51EAC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = sub_1B5DF33E0(&qword_1EB90ED68, &qword_1B5EB7148);
  sub_1B5E5EFE8();
  a2[4] = sub_1B5E5ECD0(v4, &qword_1EB90ED68, &qword_1B5EB7148);
  sub_1B5E5E724(a2);
  return a1();
}

uint64_t sub_1B5E51F34()
{
  sub_1B5E01DFC();
  *(v1 + 112) = v19;
  *(v1 + 120) = v0;
  *(v1 + 80) = v17;
  *(v1 + 96) = v18;
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  v10 = sub_1B5EA4340();
  *(v1 + 128) = v10;
  sub_1B5E01C50(v10);
  *(v1 + 136) = v11;
  *(v1 + 144) = sub_1B5E2D0C8();
  v12 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1B5E51FF8()
{
  sub_1B5E5F904();
  v1 = *(v0 + 144);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 40);
  v10 = *(v0 + 24);
  v11 = *(v0 + 64);
  v12 = *(v0 + 48);
  v13 = *(v0 + 96);
  v9 = *(v0 + 80);
  sub_1B5EA4330();
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v10;
  *(v5 + 48) = v4;
  *(v5 + 56) = v12;
  *(v5 + 72) = v11;
  *(v5 + 88) = v9;
  *(v5 + 104) = v13;
  *(v5 + 120) = v3;
  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
  *v6 = v0;
  v6[1] = sub_1B5E5215C;
  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DE38](v7);
}

uint64_t sub_1B5E5215C()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v5 = *v1;
  sub_1B5E2CE38();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (!v0)
  {
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B5E5225C()
{
  sub_1B5E01DFC();
  (*(v0[17] + 8))(v0[18], v0[16]);

  sub_1B5E5F1D8();

  return v1();
}

uint64_t sub_1B5E522D0()
{
  sub_1B5E2CED8();

  v0 = sub_1B5E5F324();
  v1(v0);

  sub_1B5E2CF4C();

  return v2();
}

void sub_1B5E52354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v80 = a8;
  v78 = a7;
  v76 = a6;
  v74 = a5;
  v72 = a4;
  v88 = a1;
  v79 = a15;
  v77 = a14;
  v75 = a13;
  v73 = a12;
  v71 = a11;
  v70 = a10;
  v69 = a9;
  v17 = sub_1B5DF33E0(&qword_1EB90EC30, &qword_1B5EB6EA8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v62[-v18];
  v20 = sub_1B5EA4340();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v87 = &v62[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v66 = &v62[-v24];
  v82 = sub_1B5EA53B0();
  v86 = *(v82 - 8);
  v25 = MEMORY[0x1EEE9AC00](v82);
  v83 = &v62[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v68 = &v62[-v27];
  v28 = sub_1B5DF33E0(&qword_1EB90EC18, &qword_1B5EB6E90);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v62[-v29];
  v31 = sub_1B5DF33E0(&qword_1EB90EBD8, &qword_1B5EB6DA0);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v62[-v33];
  v35 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionRequests;
  swift_beginAccess();
  v36 = *(a2 + v35);

  v89 = a3;
  sub_1B5E4D7C8(v36, v30);

  v37 = sub_1B5DF46E0(v30, 1, v31);
  v81 = v20;
  if (v37 == 1)
  {
    sub_1B5DF4428(v30, &qword_1EB90EC18, &qword_1B5EB6E90);
    v38 = *(v21 + 16);
    v39 = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  else
  {
    v65 = a2;
    (*(v32 + 32))(v34, v30, v31);
    v40 = v32;
    if (qword_1EB90CE80 != -1)
    {
      swift_once();
    }

    v41 = v82;
    v42 = sub_1B5DFD794(v82, qword_1EB90CE88);
    swift_beginAccess();
    (*(v86 + 16))(v68, v42, v41);
    v43 = *(v21 + 16);
    v84 = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v44 = v66;
    v85 = v43;
    v43(v66, v89, v20);
    v45 = sub_1B5EA5380();
    v46 = sub_1B5EA5A40();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v67 = v19;
      v48 = v47;
      v64 = swift_slowAlloc();
      v90 = v64;
      *v48 = 136315138;
      sub_1B5E47A4C(&qword_1EB90ECB0, 255, MEMORY[0x1E69695A8]);
      v63 = v46;
      sub_1B5EA5ED0();
      (*(v21 + 8))(v44, v81);
      v49 = sub_1B5E5B1CC();
      v20 = v81;

      *(v48 + 4) = v49;
      _os_log_impl(&dword_1B5DED000, v45, v63, "Clash in uuid: %s for a new complete one shot request. Finishing previous one shot request!", v48, 0xCu);
      v50 = v64;
      sub_1B5DF3FB8(v64);
      MEMORY[0x1B8C8B330](v50, -1, -1);
      v51 = v48;
      v19 = v67;
      MEMORY[0x1B8C8B330](v51, -1, -1);
    }

    else
    {

      (*(v21 + 8))(v44, v20);
    }

    (*(v86 + 8))(v68, v41);
    a2 = v65;
    v90 = 0;
    sub_1B5EA59A0();
    (*(v40 + 8))(v34, v31);
    v39 = v84;
    v38 = v85;
  }

  v52 = v87;
  v53 = v89;
  v84 = v39;
  v85 = v38;
  v38(v87, v89, v20);
  v54 = sub_1B5DF33E0(&qword_1EB90EBE8, &qword_1B5EB6DA8);
  (*(*(v54 - 8) + 16))(v19, v88, v54);
  sub_1B5DF3658(v19, 0, 1, v54);
  swift_beginAccess();
  sub_1B5E43E28(v19, v52);
  v55 = swift_endAccess();
  MEMORY[0x1EEE9AC00](v55);
  v56 = v72;
  *&v62[-112] = a2;
  *&v62[-104] = v56;
  v57 = v76;
  *&v62[-96] = v74;
  *&v62[-88] = v57;
  v58 = v80;
  *&v62[-80] = v78;
  *&v62[-72] = v58;
  v59 = v70;
  *&v62[-64] = v69;
  *&v62[-56] = v59;
  v60 = v73;
  *&v62[-48] = v71;
  *&v62[-40] = v60;
  v61 = v77;
  *&v62[-32] = v75;
  *&v62[-24] = v61;
  *&v62[-16] = v79;
  *&v62[-8] = v53;
  sub_1B5E4B8F4(sub_1B5E5E220, &v62[-128]);
}

void sub_1B5E52DC8()
{
  sub_1B5DFD8A8();
  v1 = sub_1B5DF33E0(&qword_1EB90EC88, &qword_1B5EB7078);
  sub_1B5DF5DA8();
  v3 = v2;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5E5F1E8();
  v5 = sub_1B5EA4340();
  sub_1B5DF5DA8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5DFD7E8();
  v11 = v10 - v9;
  sub_1B5EA4330();
  sub_1B5DF33E0(&qword_1EB90EC90, &qword_1B5EB7080);
  (*(v3 + 104))(v0, *MEMORY[0x1E69E8790], v1);
  sub_1B5E5FBCC();
  sub_1B5EA59E0();
  (*(v7 + 8))(v11, v5);
  sub_1B5DFD8C0();
}

void sub_1B5E52FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v61 = a8;
  v59 = a7;
  v57 = a6;
  v55 = a5;
  v53 = a4;
  v68 = a1;
  v60 = a15;
  v58 = a14;
  v56 = a13;
  v54 = a12;
  v52 = a11;
  v51 = a10;
  v50 = a9;
  v48 = sub_1B5EA53B0();
  v47[3] = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v47[2] = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1B5EA4340();
  v18 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v49 = v19;
  v66 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B5DF33E0(&qword_1EB90EBD8, &qword_1B5EB6DA0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v47 - v22;
  v24 = sub_1B5DF33E0(&qword_1EB90EC18, &qword_1B5EB6E90);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v63 = v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v47 - v27;
  v29 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionRequests;
  swift_beginAccess();
  v64 = a2;
  v62 = v29;
  v30 = *(a2 + v29);

  v67 = a3;
  sub_1B5E4D7C8(v30, v28);

  if (sub_1B5DF46E0(v28, 1, v20))
  {
    sub_1B5DF4428(v28, &qword_1EB90EC18, &qword_1B5EB6E90);
  }

  else
  {
    (*(v21 + 16))(v23, v28, v20);
    sub_1B5DF4428(v28, &qword_1EB90EC18, &qword_1B5EB6E90);
    v69 = 0;
    sub_1B5EA59A0();
    (*(v21 + 8))(v23, v20);
  }

  v31 = *(v18 + 16);
  v32 = v66;
  v33 = v67;
  v34 = v65;
  v31(v66, v67, v65);
  v35 = v63;
  (*(v21 + 16))(v63, v68, v20);
  sub_1B5DF3658(v35, 0, 1, v20);
  v36 = v64;
  swift_beginAccess();
  sub_1B5E43BE0(v35, v32);
  swift_endAccess();
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v47[1] = v18 + 16;
  v47[0] = v31;
  v31(v32, v33, v34);
  v38 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v37;
  (*(v18 + 32))(v39 + v38, v32, v34);
  v49 = v20;
  v40 = sub_1B5EA5980();
  MEMORY[0x1EEE9AC00](v40);
  v41 = v53;
  v47[-14] = v36;
  v47[-13] = v41;
  v42 = v57;
  v47[-12] = v55;
  v47[-11] = v42;
  v43 = v61;
  v47[-10] = v59;
  v47[-9] = v43;
  v44 = v51;
  v47[-8] = v50;
  v47[-7] = v44;
  v45 = v54;
  v47[-6] = v52;
  v47[-5] = v45;
  v46 = v58;
  v47[-4] = v56;
  v47[-3] = v46;
  v47[-2] = v60;
  v47[-1] = v33;
  sub_1B5E4B8F4(sub_1B5E5E05C, &v47[-16]);
}

void sub_1B5E537FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B5DF33E0(&qword_1EB90EC18, &qword_1B5EB6E90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1B5DF33E0(&qword_1EB90ECA8, &qword_1B5EB7098);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  (*(v8 + 16))(&v17 - v9, a1, v7);
  LODWORD(a1) = (*(v8 + 88))(v10, v7);
  v11 = *MEMORY[0x1E69E8760];
  (*(v8 + 8))(v10, v7);
  if (a1 == v11)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      sub_1B5E5441C();
    }

    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = v14;
      swift_beginAccess();
      sub_1B5E5D330(v6);
      sub_1B5DF4428(v6, &qword_1EB90EC18, &qword_1B5EB6E90);
      swift_endAccess();
    }

    else
    {
      v16 = sub_1B5DF33E0(&qword_1EB90EBD8, &qword_1B5EB6DA0);
      sub_1B5DF3658(v6, 1, 1, v16);
      sub_1B5DF4428(v6, &qword_1EB90EC18, &qword_1B5EB6E90);
    }
  }
}

void sub_1B5E53A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, const char **a28)
{
  sub_1B5DFD8A8();
  v161 = v30;
  v154 = v31;
  v148 = v32;
  v174 = v33;
  v153 = v34;
  v156 = v35;
  v37 = v36;
  v173 = v38;
  v170 = a23;
  v171 = a24;
  v165 = a21;
  v166 = a22;
  v39 = sub_1B5EA5350();
  sub_1B5DF5DA8();
  v146 = v40;
  MEMORY[0x1EEE9AC00](v41);
  sub_1B5DFD7F8();
  v44 = v42 - v43;
  MEMORY[0x1EEE9AC00](v45);
  sub_1B5E5FF90();
  v145 = v46;
  sub_1B5E34DC8();
  v169 = sub_1B5EA4CC0();
  sub_1B5DF5DA8();
  v167 = v47;
  MEMORY[0x1EEE9AC00](v48);
  sub_1B5DFD7E8();
  v168 = v50 - v49;
  sub_1B5E34DC8();
  v164 = sub_1B5EA4D20();
  sub_1B5DF5DA8();
  v162 = v51;
  MEMORY[0x1EEE9AC00](v52);
  sub_1B5DFD7E8();
  v163 = v54 - v53;
  v55 = sub_1B5DF33E0(&qword_1EB90E6A0, &qword_1B5EB60D8);
  sub_1B5E01CF8(v55);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v56);
  sub_1B5DFA50C();
  v160 = v57;
  sub_1B5E34DC8();
  v158 = sub_1B5EA4820();
  sub_1B5DF5DA8();
  v155 = v58;
  MEMORY[0x1EEE9AC00](v59);
  sub_1B5DFD7E8();
  v157 = v61 - v60;
  sub_1B5E34DC8();
  v151 = sub_1B5EA5160();
  sub_1B5DF5DA8();
  v149 = v62;
  MEMORY[0x1EEE9AC00](v63);
  sub_1B5DFD7E8();
  v150 = v65 - v64;
  sub_1B5E34DC8();
  v66 = sub_1B5EA4EE0();
  sub_1B5DF5DA8();
  v175 = v67;
  MEMORY[0x1EEE9AC00](v68);
  sub_1B5DFD7F8();
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v142 - v70;
  v72 = sub_1B5DF33E0(&qword_1EB90E928, &qword_1B5EB6688);
  sub_1B5E01CF8(v72);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v73);
  sub_1B5E5F57C();
  v74 = sub_1B5E5FB64();
  v76 = sub_1B5DF33E0(v74, v75);
  sub_1B5E01CF8(v76);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v142 - v78;
  v80 = type metadata accessor for SessionConfiguration(0);
  v81 = sub_1B5E01CF8(v80);
  MEMORY[0x1EEE9AC00](v81);
  sub_1B5DFD7E8();
  sub_1B5E5FB70();
  v172 = v37;
  sub_1B5DFDA5C(*(v37 + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData) + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_configuration, v28);
  v82 = objc_allocWithZone(type metadata accessor for SessionConfigurationXPCEnvelope());
  sub_1B5E5F3AC();
  SessionConfigurationXPCEnvelope.init(sealing:)();
  v159 = v83;
  sub_1B5E5EEBC(v156, v79, &qword_1EB90E938, &qword_1B5EB6690);
  v84 = objc_allocWithZone(type metadata accessor for ChatMessagesXPCEnvelope());
  sub_1B5E2624C();
  v85 = v148;
  sub_1B5E387B4();
  v156 = v86;
  sub_1B5E5EEBC(v153, v29, &qword_1EB90E928, &qword_1B5EB6688);
  v87 = objc_allocWithZone(type metadata accessor for TemplateXPCEnvelope());
  sub_1B5E38DFC();
  v153 = v88;
  v89 = objc_allocWithZone(type metadata accessor for BindingVariablesXPCEnvelope());

  sub_1B5E395AC();
  v152 = v90;
  v91 = v85[2];
  v92 = MEMORY[0x1E69E7CC0];
  if (v91)
  {
    v143 = v44;
    v144 = v39;
    v176 = MEMORY[0x1E69E7CC0];
    sub_1B5EA5C30();
    v93 = *(v175 + 16);
    sub_1B5E34D90();
    v95 = v85 + v94;
    v174 = *(v96 + 56);
    v175 = v96;
    v97 = (v96 - 8);
    v98 = v147;
    do
    {
      v93(v71, v95, v66);
      v93(v98, v71, v66);
      v99 = objc_allocWithZone(type metadata accessor for DocumentIdentifierXPCEnvelope());
      DocumentIdentifierXPCEnvelope.init(sealing:)();
      (*v97)(v71, v66);
      sub_1B5EA5C10();
      sub_1B5EA5C40();
      sub_1B5EA5C50();
      sub_1B5EA5C20();
      v95 += v174;
      --v91;
    }

    while (v91);
    v92 = v176;
    v39 = v144;
    v44 = v143;
  }

  v147 = v92;
  v100 = a26;
  v101 = v154;
  v102 = *(v154 + 16);
  v148 = a28;
  if (v102)
  {
    v143 = a26;
    v144 = a27;
    v176 = MEMORY[0x1E69E7CC0];
    sub_1B5EA5C30();
    v103 = v146 + 16;
    sub_1B5E34D90();
    v105 = v101 + v104;
    v174 = *(v103 + 56);
    v175 = v106;
    v107 = v145;
    do
    {
      v108 = v175;
      (v175)(v107, v105, v39);
      v108(v44, v107, v39);
      v109 = objc_allocWithZone(type metadata accessor for ToolTypeXPCEnvelope());
      ToolTypeXPCEnvelope.init(sealing:)();
      (*(v103 - 8))(v107, v39);
      sub_1B5EA5C10();
      sub_1B5EA5C40();
      sub_1B5EA5C50();
      sub_1B5EA5C20();
      v105 += v174;
      --v102;
    }

    while (v102);
    v100 = v143;
  }

  (*(v149 + 16))(v150, v161, v151);
  v110 = objc_allocWithZone(type metadata accessor for ToolChoiceXPCEnvelope());
  sub_1B5E2624C();
  ToolChoiceXPCEnvelope.init(sealing:)();
  v112 = v111;
  (*(v155 + 16))(v157, v165, v158);
  v113 = objc_allocWithZone(type metadata accessor for SamplingParametersXPCEnvelope());
  sub_1B5E2624C();
  sub_1B5E39F78();
  v115 = v114;
  sub_1B5E5EEBC(v166, v160, &qword_1EB90E6A0, &qword_1B5EB60D8);
  v116 = objc_allocWithZone(type metadata accessor for SchemaXPCEnvelope());
  sub_1B5E5FD64();
  SchemaXPCEnvelope.init(sealing:)();
  v118 = v117;
  (*(v162 + 16))(v163, v170, v164);
  v119 = objc_allocWithZone(type metadata accessor for StringRenderedPromptSanitizerXPCEnvelope());
  sub_1B5E5FD64();
  v120 = StringRenderedPromptSanitizerXPCEnvelope.init(sealing:)();
  (*(v167 + 16))(v168, v171, v169);
  v121 = objc_allocWithZone(type metadata accessor for StringResponseSanitizerXPCEnvelope());
  sub_1B5E5FD64();
  v122 = StringResponseSanitizerXPCEnvelope.init(sealing:)();
  type metadata accessor for DocumentIdentifierXPCEnvelope();
  v175 = sub_1B5EA5840();

  type metadata accessor for ToolTypeXPCEnvelope();
  v174 = sub_1B5EA5840();

  if (v100)
  {
    v123 = sub_1B5EA5670();
  }

  else
  {
    v123 = 0;
  }

  v170 = v123;
  v171 = sub_1B5EA4310();
  v124 = *v148;
  v140 = v122;
  v141 = v123;
  v125 = v120;
  v138 = v118;
  v139 = v120;
  v136 = v112;
  v137 = v115;
  v126 = v173;
  v127 = v174;
  v128 = v159;
  v129 = v156;
  v173 = v122;
  v130 = v118;
  v131 = v115;
  v132 = v112;
  v133 = v153;
  v134 = v152;
  v135 = v175;
  [v126 v124];

  sub_1B5DFD8C0();
}

void sub_1B5E5441C()
{
  sub_1B5DFD8A8();
  v1 = v0;
  sub_1B5EA53B0();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1B5DFD7E8();
  v3[2] = v1;
  sub_1B5E4B8F4(sub_1B5E5E024, v3);
  sub_1B5DFD8C0();
}

void sub_1B5E5463C(void *a1)
{
  v2 = sub_1B5EA4310();
  [a1 cancelRequestWithUuid_];
}

uint64_t sub_1B5E54698()
{
  sub_1B5E01DFC();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = sub_1B5EA53B0();
  v1[9] = v5;
  sub_1B5E01C50(v5);
  v1[10] = v6;
  v1[11] = sub_1B5E2D0C8();
  v7 = sub_1B5EA55A0();
  v1[12] = v7;
  sub_1B5E01C50(v7);
  v1[13] = v8;
  v1[14] = sub_1B5E2D0C8();
  v9 = sub_1B5DF33E0(&qword_1EB90EC38, &qword_1B5EB7028);
  sub_1B5E01CF8(v9);
  v1[15] = sub_1B5E2D0C8();
  v10 = sub_1B5EA47B0();
  v1[16] = v10;
  sub_1B5E01C50(v10);
  v1[17] = v11;
  v1[18] = sub_1B5E2D0C8();
  v12 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1B5E54804(uint64_t a1)
{
  v2 = v1[15];
  v3 = sub_1B5EA4700();
  sub_1B5E60228(v3);

  sub_1B5E5F280(v2);
  if (v4)
  {
    v5 = sub_1B5DF4428(v1[15], &qword_1EB90EC38, &qword_1B5EB7028);
    if (qword_1EB90CE80 != -1)
    {
      v5 = sub_1B5E5EF54(&qword_1EB90CE80, v6);
    }

    v7 = sub_1B5E5F41C(v5, qword_1EB90CE88);
    sub_1B5E2D094(v7);
    v8 = sub_1B5E5F1F8();
    v9(v8);
    v10 = sub_1B5EA5380();
    v11 = sub_1B5EA5A40();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = sub_1B5E5FD88();
      v24 = sub_1B5E5FC3C();
      *v12 = 136315138;
      sub_1B5E5FB20();
      *(v12 + 4) = sub_1B5E5B1CC();
      _os_log_impl(&dword_1B5DED000, v10, v11, "%s Response was missing candidates", v12, 0xCu);
      sub_1B5DF3FB8(v24);
      sub_1B5E5F764();
      sub_1B5E2D07C();
    }

    v13 = sub_1B5E5F318();
    v14(v13);
  }

  else
  {
    v15 = v1[7];
    (*(v1[17] + 32))(v1[18], v1[15], v1[16]);
    if (*(v15 + 16))
    {
      v16 = *(sub_1B5EA47A0() + 16);

      if (v16)
      {
        v1[19] = sub_1B5EA47A0();
        v17 = swift_task_alloc();
        v1[20] = v17;
        *v17 = v1;
        v17[1] = sub_1B5E54AD4;
        sub_1B5E5F780(v1[7]);

        return sub_1B5E55260();
      }
    }

    (*(v1[17] + 8))(v1[18], v1[16]);
  }

  sub_1B5EA5470();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v19, v20, v21, v22);

  sub_1B5E5F1D8();

  return v23();
}

uint64_t sub_1B5E54AD4()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v2 = *v1;
  sub_1B5E2CE38();
  *v3 = v2;
  *(v5 + 168) = v4;
  *(v5 + 176) = v0;

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B5E54BF4()
{
  v1 = v0[21];
  if (*(v1 + 16))
  {
    v2 = v0[17];
    v13 = v0[16];
    v14 = v0[18];
    v3 = v0[13];
    v4 = v0[14];
    v5 = v0[12];
    v6 = v0[5];
    sub_1B5DF33E0(&qword_1EB90DB90, &qword_1B5EB7070);
    v7 = sub_1B5EA5450();
    sub_1B5E01C50(v7);
    sub_1B5E5FC54();
    *(swift_allocObject() + 16) = xmmword_1B5EAFC20;
    (*(v3 + 104))(v4, *MEMORY[0x1E69C63D8], v5);
    *(swift_task_alloc() + 16) = v1;
    sub_1B5EA5410();

    sub_1B5EA5480();
    (*(v2 + 8))(v14, v13);
    v8 = sub_1B5EA5470();
    v9 = v6;
    v10 = 0;
  }

  else
  {
    (*(v0[17] + 8))(v0[18], v0[16]);

    sub_1B5EA5470();
    v9 = sub_1B5E5F58C();
  }

  sub_1B5DF3658(v9, v10, 1, v8);

  sub_1B5E5F1D8();

  return v11();
}

uint64_t sub_1B5E54E08()
{
  sub_1B5E2CED8();
  (*(v0[17] + 8))(v0[18], v0[16]);

  sub_1B5E2CF4C();

  return v1();
}

uint64_t sub_1B5E54EA8(uint64_t a1)
{
  v2 = sub_1B5EA5560();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[3] = &type metadata for GenerativeExperiencesSessionClient.ToolCallResults;
  v11[4] = sub_1B5E5DFD0();
  v11[0] = a1;

  v6 = MEMORY[0x1E69C6388];
  sub_1B5EA54A0();
  sub_1B5DF3FB8(v11);
  sub_1B5DF33E0(&qword_1EB90EC48, &unk_1B5EB7030);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B5EAFC20;
  (*(v3 + 16))(v8 + v7, v5, v2);
  MEMORY[0x1B8C8A0B0](v8, v2, v6);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B5E55054@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v17 = sub_1B5EA54C0();
  v4 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v16 = a2;
    v18 = MEMORY[0x1E69E7CC0];
    sub_1B5E5B6C8(0, v7, 0);
    v8 = v18;
    v9 = a1 + 56;
    do
    {

      sub_1B5EA54B0();

      v18 = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1B5E5B6C8(v10 > 1, v11 + 1, 1);
        v8 = v18;
      }

      *(v8 + 16) = v11 + 1;
      (*(v4 + 32))(v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v6, v17);
      v9 += 32;
      --v7;
    }

    while (v7);
    a2 = v16;
  }

  *a2 = v8;
  v12 = *MEMORY[0x1E69C62C8];
  v13 = sub_1B5EA5520();
  return (*(*(v13 - 8) + 104))(a2, v12, v13);
}

uint64_t sub_1B5E55260()
{
  sub_1B5E01DFC();
  v0[29] = v1;
  v0[30] = v2;
  v3 = sub_1B5EA4F50();
  v0[31] = v3;
  sub_1B5E01C50(v3);
  v0[32] = v4;
  v0[33] = sub_1B5E2D0C8();
  v5 = sub_1B5EA5520();
  v0[34] = v5;
  sub_1B5E01C50(v5);
  v0[35] = v6;
  v0[36] = sub_1B5E2D0C8();
  v7 = sub_1B5DF33E0(&qword_1EB90EC68, &qword_1B5EB7050);
  sub_1B5E01CF8(v7);
  v0[37] = sub_1B5E2D0C8();
  v8 = sub_1B5EA5560();
  v0[38] = v8;
  sub_1B5E01C50(v8);
  v0[39] = v9;
  v0[40] = sub_1B5E2D0C8();
  v10 = sub_1B5EA5540();
  v0[41] = v10;
  sub_1B5E01C50(v10);
  v0[42] = v11;
  v0[43] = sub_1B5E2D0C8();
  v12 = sub_1B5DF33E0(&qword_1EB90EC70, &qword_1B5EB7058);
  sub_1B5E01CF8(v12);
  v0[44] = sub_1B5E2D0C8();
  v13 = sub_1B5EA5180();
  v0[45] = v13;
  sub_1B5E01C50(v13);
  v0[46] = v14;
  v0[47] = sub_1B5E2D0C8();
  v15 = sub_1B5EA53B0();
  v0[48] = v15;
  sub_1B5E01C50(v15);
  v0[49] = v16;
  v0[50] = sub_1B5E5FDA0();
  v0[51] = swift_task_alloc();
  v0[52] = swift_task_alloc();
  v0[53] = swift_task_alloc();
  v0[54] = swift_task_alloc();
  v0[55] = swift_task_alloc();
  v17 = sub_1B5EA52D0();
  v0[56] = v17;
  sub_1B5E01C50(v17);
  v0[57] = v18;
  v0[58] = sub_1B5E2D0C8();
  v19 = sub_1B5DF33E0(&qword_1EB90EC78, &unk_1B5EB7060);
  sub_1B5E01CF8(v19);
  v0[59] = sub_1B5E5FDA0();
  v0[60] = swift_task_alloc();
  v20 = sub_1B5EA4B70();
  v0[61] = v20;
  sub_1B5E01C50(v20);
  v0[62] = v21;
  v0[63] = sub_1B5E2D0C8();
  v22 = sub_1B5EA4B30();
  v0[64] = v22;
  sub_1B5E01C50(v22);
  v0[65] = v23;
  v0[66] = sub_1B5E5FDA0();
  v0[67] = swift_task_alloc();
  v24 = sub_1B5EA4B80();
  v0[68] = v24;
  sub_1B5E01C50(v24);
  v0[69] = v25;
  v0[70] = sub_1B5E2D0C8();
  v26 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v26, v27, v28);
}

uint64_t sub_1B5E55688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_1B5E60044();
  v41 = 0;
  v42 = *(*(v35 + 240) + 16);
  *(v35 + 568) = v42;
  v43 = MEMORY[0x1E69A0E70];
  *(v35 + 648) = *MEMORY[0x1E69DA808];
  v44 = *v43;
  v45 = MEMORY[0x1E69C6320];
  v46 = MEMORY[0x1E69E7CC0];
  *(v35 + 652) = v44;
  *(v35 + 656) = *v45;
  *(v35 + 576) = v46;
  while (v41 != v42)
  {
    if (v41 >= v42)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      v71 = sub_1B5E5EF54(&qword_1EB90CE80, v40);
LABEL_12:
      v72 = *(v35 + 392);
      v73 = sub_1B5E5F41C(v71, qword_1EB90CE88);
      sub_1B5E2D094(v73);
      v74 = sub_1B5E5F1F8();
      v75(v74);
      v76 = sub_1B5EA5380();
      sub_1B5EA5A40();
      sub_1B5E5FA8C();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = sub_1B5E34E60();
        sub_1B5E34EA8(v78);
        sub_1B5E34F28(&dword_1B5DED000, v79, v80, "Unknown tool call was requested");
        sub_1B5E34DF0();
      }

      sub_1B5E5FCC0();
      v162 = v81;
      sub_1B5E5FCA8();
      a15 = v83;
      v159 = v82;

      v84 = sub_1B5E5FB14();
      v85(v84);
      sub_1B5E5F854();
      sub_1B5EA5BC0();

      sub_1B5E5FB2C(v86);
      sub_1B5E5F508();
      v87 = sub_1B5EA56E0();
      MEMORY[0x1B8C8A360](v87);

      sub_1B5E600DC();
      v88 = sub_1B5EA5130();
      sub_1B5E5EF3C();
      v91 = sub_1B5E47A4C(v89, 255, v90);
      sub_1B5E5F23C(v91);
      sub_1B5E5F94C();
      sub_1B5EA4F60();
      (*(v36 + 8))(0, v159);
      v160 = v88;
      swift_willThrow();
      (*(a15 + 8))(v72, v162);
      goto LABEL_28;
    }

    *(v35 + 584) = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      goto LABEL_36;
    }

    v47 = sub_1B5E5F4C4();
    v48(v47);
    sub_1B5EA4B40();
    v39 += 88;
    v49 = sub_1B5E5FA48();
    if (v50(v49) != v38)
    {

      if (qword_1EB90CE80 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_37;
    }

    v51 = sub_1B5E5F91C();
    v52(v51);
    v53 = v34 + 32;
    v54 = sub_1B5E5F8A8();
    v55(v54);
    v56 = swift_task_alloc();
    sub_1B5E5F6CC(v56);

    v36 = sub_1B5EA5350();
    sub_1B5E5F5A8(v38, 1, v36);
    if (v57)
    {
      sub_1B5DF4428(*(v35 + 480), &qword_1EB90EC78, &unk_1B5EB7060);
      v92 = swift_task_alloc();
      sub_1B5E5F694(v92);

      v93 = sub_1B5E5F8E0();
      v95 = sub_1B5DF46E0(v93, v94, v36);
      v96 = *(v35 + 472);
      if (v95 == 1)
      {
        sub_1B5DF4428(*(v35 + 472), &qword_1EB90EC78, &unk_1B5EB7060);

        goto LABEL_23;
      }

      sub_1B5E600BC(v95);
      sub_1B5E2D1D8();
      v99 = sub_1B5E5F78C();
      v100(v99);
      v101 = sub_1B5E5F318();
      if (v102(v101) == &unk_1B5EB7060)
      {
        v103 = sub_1B5E5FFB0();
        v104(v103);
        v105 = sub_1B5DF17A8(v96, v35 + 16);
        if (qword_1EB90CE80 != -1)
        {
          v105 = sub_1B5E5EF54(&qword_1EB90CE80, v106);
        }

        v107 = *(v35 + 392);
        v108 = sub_1B5E5F41C(v105, qword_1EB90CE88);
        *(v35 + 592) = v108;
        sub_1B5E2D094(v108);
        *(v35 + 600) = *(v107 + 16);
        *(v35 + 608) = (v107 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v109 = sub_1B5E5F22C();
        v110(v109);
        sub_1B5DFC6BC(v35 + 16, v35 + 56);
        v111 = sub_1B5EA5380();
        v112 = sub_1B5EA5A60();
        v113 = os_log_type_enabled(v111, v112);
        v114 = *(v35 + 392);
        if (v113)
        {
          v115 = sub_1B5E5FD88();
          v168 = sub_1B5E5FC3C();
          sub_1B5E5FDDC(4.8149e-34);
          sub_1B5DF3FB8((v35 + 56));
          v116 = sub_1B5E5B1CC();

          *(v115 + 4) = v116;
          sub_1B5E6011C(&dword_1B5DED000, v117, v118, "Invoking tool: %s");
          sub_1B5DF3FB8(v168);
          sub_1B5E5F990();
          sub_1B5E5F764();

          v119 = *(v114 + 8);
          v120 = sub_1B5E5F758();
          v119(v120);
        }

        else
        {

          v152 = *(v114 + 8);
          v153 = sub_1B5E5F758();
          v152(v153);
          sub_1B5DF3FB8((v35 + 56));
        }

        sub_1B5E5FF34();
        *(v35 + 624) = v154;
        swift_task_alloc();
        sub_1B5E34EEC();
        *(v35 + 632) = v155;
        *v155 = v156;
        sub_1B5E5F33C(v155);
        sub_1B5E5F88C();

        return MEMORY[0x1EEE0ACB0](v157);
      }

      v121 = sub_1B5E5F324();
      v97 = v122(v121);
LABEL_23:
      if (qword_1EB90CE80 != -1)
      {
        v97 = sub_1B5E5EF54(&qword_1EB90CE80, v98);
      }

      v123 = sub_1B5E5F41C(v97, qword_1EB90CE88);
      sub_1B5E2D094(v123);
      v124 = sub_1B5E5F1F8();
      v125(v124);
      v126 = sub_1B5EA5380();
      sub_1B5EA5A40();
      sub_1B5E5FA8C();
      if (os_log_type_enabled(v126, v127))
      {
        v128 = sub_1B5E34E60();
        sub_1B5E34EA8(v128);
        sub_1B5E6013C(&dword_1B5DED000, v129, v130, "Requested function call from model does not exist");
        sub_1B5E34DF0();
      }

      v131 = *(v35 + 552);
      v164 = *(v35 + 544);
      v166 = *(v35 + 560);
      sub_1B5E5FE74();
      v132 = sub_1B5E5FB58();
      v133(v132);
      sub_1B5EA4B50();
      sub_1B5E5F824();
      sub_1B5EA4F40();
      v134 = sub_1B5EA5130();
      sub_1B5E5EF3C();
      v137 = sub_1B5E47A4C(v135, 255, v136);
      sub_1B5E5F23C(v137);
      sub_1B5E5F94C();
      sub_1B5EA4F60();
      v138 = sub_1B5E60018();
      v139(v138);
      v160 = v134;
      swift_willThrow();
      (*(v131 + 8))(v166, v164);
LABEL_28:
      sub_1B5E5F3B8();
      v161 = v140;
      v163 = v141;
      v165 = v142;
      v167 = *(v35 + 264);
      (*(v143 + 8))();

      sub_1B5E2CF4C();
      sub_1B5E5F88C();

      return v145(v144, v145, v146, v147, v148, v149, v150, v151, a9, a10, a11, a12, a13, a14, a15, v160, v161, v163, v165, v167, a21, a22, a23, a24, a25, a26);
    }

    v58 = sub_1B5E5FB7C();
    v59(v58);
    sub_1B5DF4428(v37, &qword_1EB90EC78, &unk_1B5EB7060);
    v34 = v53 + 8;
    v60 = sub_1B5E5F78C();
    v61(v60);
    v42 = *(v35 + 568);
    ++v41;
  }

  sub_1B5E5F520();

  sub_1B5E5FFF0();
  sub_1B5E5F88C();

  return v64(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14, a15, a16, v35 + 504, v35 + 488, v35 + 512, v35 + 536, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1B5E55F5C()
{
  sub_1B5E2CED8();
  v2 = *v1;
  sub_1B5E2CE38();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 640) = v0;

  if (v0)
  {
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B5E56090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_1B5E60044();
  v35 = *(v34 + 352);
  sub_1B5E5F280(v35);
  if (v78)
  {
    v36 = *(v34 + 600);
    sub_1B5DF4428(v35, &qword_1EB90EC70, &qword_1B5EB7058);
    v37 = sub_1B5E5F940();
    v36(v37);
    v38 = sub_1B5EA5380();
    sub_1B5EA5A60();
    sub_1B5E5FA8C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = sub_1B5E34E60();
      sub_1B5E34EA8(v40);
      sub_1B5E34F28(&dword_1B5DED000, v41, v42, "Tool returned no response. Exiting tool calling loop.");
      sub_1B5E34DF0();
    }

    v43 = *(v34 + 616);
    v44 = *(v34 + 560);
    v45 = *(v34 + 496);
    v244 = *(v34 + 488);
    v247 = *(v34 + 504);
    v46 = *(v34 + 424);
    v48 = *(v34 + 384);
    v47 = *(v34 + 392);

    v49 = sub_1B5E5F508();
    v43(v49);
    v50 = sub_1B5E5F318();
    v51(v50);
    sub_1B5DF3FB8((v34 + 16));
    (*(v45 + 8))(v247, v244);
    v53 = *(v34 + 640);
    for (i = *(v34 + 584); ; ++i)
    {
LABEL_6:
      v55 = *(v34 + 568);
      if (i == v55)
      {
        sub_1B5E5F520();

        sub_1B5E5FFF0();
        sub_1B5E5F88C();

        return v103(v101, v102, v103, v104, v105, v106, v107, v108, a9, a10, a11, a12, a13, a14, a15, v34 + 488, v34 + 512, v34 + 536, v244, v34 + 504, a21, a22, a23, a24, a25, a26);
      }

      if (i >= v55)
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        v110 = sub_1B5E5EF54(&qword_1EB90CE80, v52);
LABEL_25:
        v111 = *(v34 + 392);
        v112 = sub_1B5E5F41C(v110, qword_1EB90CE88);
        sub_1B5E2D094(v112);
        v113 = sub_1B5E5F1F8();
        v114(v113);
        v115 = sub_1B5EA5380();
        sub_1B5EA5A40();
        sub_1B5E5FA8C();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = sub_1B5E34E60();
          sub_1B5E34EA8(v117);
          sub_1B5E34F28(&dword_1B5DED000, v118, v119, "Unknown tool call was requested");
          sub_1B5E34DF0();
        }

        sub_1B5E5FCC0();
        a15 = v120;
        sub_1B5E5FCA8();
        v245 = v121;
        v249 = v122;

        v123 = sub_1B5E5FB14();
        v124(v123);
        sub_1B5E5F854();
        sub_1B5EA5BC0();

        sub_1B5E5FB2C(v125);
        sub_1B5E5F508();
        v126 = sub_1B5EA56E0();
        MEMORY[0x1B8C8A360](v126);

        sub_1B5E600DC();
        v127 = sub_1B5EA5130();
        sub_1B5E5EF3C();
        v130 = sub_1B5E47A4C(v128, 255, v129);
        sub_1B5E5F23C(v130);
        sub_1B5E5F94C();
        sub_1B5EA4F60();
        (*(v47 + 8))(v53, v245);
        v246 = v127;
        swift_willThrow();
        (*(a15 + 8))(v111, v249);
        goto LABEL_47;
      }

      *(v34 + 584) = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_55;
      }

      v56 = sub_1B5E5F4C4();
      v57(v56);
      sub_1B5EA4B40();
      v43 = (v43 + 88);
      v58 = sub_1B5E5FA48();
      if (v59(v58) != v48)
      {

        if (qword_1EB90CE80 == -1)
        {
          goto LABEL_25;
        }

        goto LABEL_56;
      }

      v60 = sub_1B5E5F91C();
      v61(v60);
      v62 = v44 + 32;
      v63 = sub_1B5E5F8A8();
      v64(v63);
      v65 = swift_task_alloc();
      sub_1B5E5F6CC(v65);

      v47 = sub_1B5EA5350();
      sub_1B5E5F5A8(v48, 1, v47);
      if (v78)
      {
        break;
      }

      v66 = sub_1B5E5FB7C();
      v67(v66);
      sub_1B5DF4428(v46, &qword_1EB90EC78, &unk_1B5EB7060);
      v44 = v62 + 8;
      v68 = sub_1B5E5F78C();
      v69(v68);
    }

    sub_1B5DF4428(*(v34 + 480), &qword_1EB90EC78, &unk_1B5EB7060);
    v131 = swift_task_alloc();
    sub_1B5E5F694(v131);

    v132 = sub_1B5E5F8E0();
    v134 = sub_1B5DF46E0(v132, v133, v47);
    v135 = *(v34 + 472);
    if (v134 == 1)
    {
      sub_1B5DF4428(*(v34 + 472), &qword_1EB90EC78, &unk_1B5EB7060);

LABEL_42:
      if (qword_1EB90CE80 != -1)
      {
        v136 = sub_1B5E5EF54(&qword_1EB90CE80, v137);
      }

      v192 = sub_1B5E5F41C(v136, qword_1EB90CE88);
      sub_1B5E2D094(v192);
      v193 = sub_1B5E5F1F8();
      v194(v193);
      v195 = sub_1B5EA5380();
      sub_1B5EA5A40();
      sub_1B5E5FA8C();
      if (os_log_type_enabled(v195, v196))
      {
        v197 = sub_1B5E34E60();
        sub_1B5E34EA8(v197);
        sub_1B5E6013C(&dword_1B5DED000, v198, v199, "Requested function call from model does not exist");
        sub_1B5E34DF0();
      }

      v200 = *(v34 + 552);
      v239 = *(v34 + 544);
      v242 = *(v34 + 560);
      sub_1B5E5FE74();
      v201 = sub_1B5E5FB58();
      v202(v201);
      sub_1B5EA4B50();
      sub_1B5E5F824();
      sub_1B5EA4F40();
      v203 = sub_1B5EA5130();
      sub_1B5E5EF3C();
      v206 = sub_1B5E47A4C(v204, 255, v205);
      sub_1B5E5F23C(v206);
      sub_1B5E5F94C();
      sub_1B5EA4F60();
      v207 = sub_1B5E60018();
      v208(v207);
      v246 = v203;
      swift_willThrow();
      (*(v200 + 8))(v242, v239);
      goto LABEL_47;
    }

    sub_1B5E600BC(v134);
    sub_1B5E2D1D8();
    v168 = sub_1B5E5F78C();
    v169(v168);
    v170 = sub_1B5E5F318();
    if (v171(v170) != &unk_1B5EB7060)
    {

      v190 = sub_1B5E5F324();
      v136 = v191(v190);
      goto LABEL_42;
    }

    v172 = sub_1B5E5FFB0();
    v173(v172);
    v174 = sub_1B5DF17A8(v135, v34 + 16);
    if (qword_1EB90CE80 != -1)
    {
      v174 = sub_1B5E5EF54(&qword_1EB90CE80, v175);
    }

    v176 = *(v34 + 392);
    v177 = sub_1B5E5F41C(v174, qword_1EB90CE88);
    *(v34 + 592) = v177;
    sub_1B5E2D094(v177);
    *(v34 + 600) = *(v176 + 16);
    *(v34 + 608) = (v176 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v178 = sub_1B5E5F22C();
    v179(v178);
    sub_1B5DFC6BC(v34 + 16, v34 + 56);
    v180 = sub_1B5EA5380();
    v181 = sub_1B5EA5A60();
    v182 = os_log_type_enabled(v180, v181);
    v183 = *(v34 + 392);
    if (v182)
    {
      v184 = sub_1B5E5FD88();
      v251 = sub_1B5E5FC3C();
      sub_1B5E5FDDC(4.8149e-34);
      sub_1B5DF3FB8((v34 + 56));
      v185 = sub_1B5E5B1CC();

      *(v184 + 4) = v185;
      sub_1B5E6011C(&dword_1B5DED000, v186, v187, "Invoking tool: %s");
      sub_1B5DF3FB8(v251);
      sub_1B5E5F990();
      sub_1B5E5F764();

      v188 = *(v183 + 8);
      v189 = sub_1B5E5F758();
      v188(v189);
    }

    else
    {

      v221 = *(v183 + 8);
      v222 = sub_1B5E5F758();
      v221(v222);
      sub_1B5DF3FB8((v34 + 56));
    }

    sub_1B5E5FF34();
    *(v34 + 624) = v223;
    swift_task_alloc();
    sub_1B5E34EEC();
    *(v34 + 632) = v224;
    *v224 = v225;
    sub_1B5E5F33C(v224);
    sub_1B5E5F88C();

    return MEMORY[0x1EEE0ACB0](v226);
  }

  else
  {
    v70 = *(v34 + 328);
    v71 = *(v34 + 296);
    sub_1B5E5FB98();
    v72();
    sub_1B5EA5170();
    v73 = *(v34 + 120);
    v74 = *(v34 + 128);
    sub_1B5DF3BFC((v34 + 96), v73);
    sub_1B5E5F318();
    sub_1B5EA5570();
    v75 = sub_1B5EA54E0();
    v76 = sub_1B5E5FA48();
    v77(v76);
    sub_1B5E10B14(v75, v71);

    sub_1B5E5F5A8(v71, 1, v70);
    if (v78)
    {
      v79 = *(v34 + 296);

      sub_1B5DF4428(v79, &qword_1EB90EC68, &qword_1B5EB7050);
      sub_1B5DF3FB8((v34 + 96));
    }

    else
    {
      v80 = *(v34 + 656);
      (*(*(v34 + 336) + 32))(*(v34 + 344), *(v34 + 296), *(v34 + 328));
      sub_1B5DF3FB8((v34 + 96));
      sub_1B5EA5530();
      v81 = sub_1B5E5F318();
      if (v82(v81) == v80)
      {
        v83 = *(v34 + 288);
        (*(*(v34 + 280) + 96))(v83, *(v34 + 272));
        v85 = *v83;
        v84 = v83[1];
        v86 = sub_1B5EA4B20();
        v88 = v87;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v90 = *(v34 + 576);
        v248 = v85;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B5E6DEB4(0, v90[2] + 1, 1, v90);
          v90 = v228;
        }

        v92 = v90[2];
        v91 = v90[3];
        v241 = v86;
        v244 = v84;
        v236 = v88;
        if (v92 >= v91 >> 1)
        {
          v229 = sub_1B5E34E0C(v91);
          sub_1B5E6DEB4(v229, v230, 1, v90);
          v90 = v231;
        }

        v47 = *(v34 + 560);
        v46 = *(v34 + 544);
        v93 = *(v34 + 496);
        a14 = *(v34 + 488);
        a15 = *(v34 + 504);
        v94 = *(v34 + 368);
        v95 = *(v34 + 376);
        v44 = *(v34 + 360);
        (*(*(v34 + 336) + 8))(*(v34 + 344), *(v34 + 328));
        v96 = *(v94 + 8);
        v43 = (v94 + 8);
        v96(v95, v44);
        v97 = sub_1B5E5FA48();
        v98(v97);
        v90[2] = v92 + 1;
        v99 = &v90[4 * v92];
        v99[4] = v241;
        v99[5] = v236;
        v99[6] = v248;
        v99[7] = v244;
        sub_1B5DF3FB8((v34 + 16));
        v100 = *(v93 + 8);
        v48 = v93 + 8;
        v100(a15, a14);
        v53 = *(v34 + 640);
        i = *(v34 + 584);
        *(v34 + 576) = v90;
        goto LABEL_6;
      }

      v138 = *(v34 + 280);
      v73 = *(v34 + 272);
      (*(*(v34 + 336) + 8))(*(v34 + 344), *(v34 + 328));

      v74 = (v138 + 8);
      v139 = sub_1B5E5F324();
      v140(v139);
    }

    (*(v34 + 600))(*(v34 + 432), *(v34 + 592), *(v34 + 384));
    v141 = sub_1B5EA5380();
    sub_1B5EA5A40();
    sub_1B5E5FA8C();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = sub_1B5E34E60();
      sub_1B5E34EA8(v143);
      _os_log_impl(&dword_1B5DED000, v141, v73, "Only tools that output strings are currently supported.", v74, 2u);
      sub_1B5E34DF0();
    }

    v144 = *(v34 + 616);
    v145 = *(v34 + 368);
    v233 = *(v34 + 360);
    v237 = *(v34 + 376);
    v147 = *(v34 + 256);
    v146 = *(v34 + 264);
    v232 = *(v34 + 248);

    v148 = sub_1B5E5F8D4();
    v144(v148);
    sub_1B5EA4B50();
    sub_1B5E5F824();
    sub_1B5EA4F40();
    sub_1B5EA5130();
    sub_1B5E5EF3C();
    sub_1B5E47A4C(v149, 255, v150);
    v151 = swift_allocError();
    sub_1B5EA4F60();
    (*(v147 + 8))(v146, v232);
    swift_willThrow();
    (*(v145 + 8))(v237, v233);
    v152 = sub_1B5E5FAD0();
    v153(v152);
    v154 = v151;
    v155 = sub_1B5EA5380();
    v156 = sub_1B5EA5A40();

    if (os_log_type_enabled(v155, v156))
    {
      v157 = sub_1B5E5FD88();
      v158 = swift_slowAlloc();
      *v157 = 138412290;
      v159 = v151;
      v160 = _swift_stdlib_bridgeErrorToNSError();
      *(v157 + 4) = v160;
      *v158 = v160;
      _os_log_impl(&dword_1B5DED000, v155, v156, "Encountered failure while invoking function: %@", v157, 0xCu);
      sub_1B5DF4428(v158, &unk_1EB90F890, &qword_1B5EB6DC0);
      sub_1B5E5F990();
      sub_1B5E5F764();
    }

    v161 = *(v34 + 616);
    v162 = *(v34 + 552);
    v234 = *(v34 + 544);
    v238 = *(v34 + 560);
    a14 = v151;
    v164 = *(v34 + 256);
    v163 = *(v34 + 264);
    a15 = *(v34 + 248);

    v165 = sub_1B5E5F8D4();
    v161(v165);
    sub_1B5EA4B50();
    sub_1B5E5F854();
    sub_1B5EA5BC0();
    *(v34 + 208) = a21;
    *(v34 + 216) = a22;
    sub_1B5E5F824();
    MEMORY[0x1B8C8A360](v166 + 21, v167 | 0x8000000000000000);
    *(v34 + 224) = v151;
    sub_1B5DF33E0(&qword_1EB90E920, &qword_1B5EB6680);
    sub_1B5EA5C60();
    sub_1B5E5F8D4();
    sub_1B5EA4F40();
    swift_allocError();
    sub_1B5E5F94C();
    sub_1B5EA4F60();
    (*(v164 + 8))(v163, a15);
    v246 = v34 + 208;
    swift_willThrow();

    (*(v162 + 8))(v238, v234);
    sub_1B5DF3FB8((v34 + 16));
LABEL_47:
    sub_1B5E5F3B8();
    v235 = v209;
    v240 = v210;
    v243 = v211;
    v250 = *(v34 + 264);
    (*(v212 + 8))();

    sub_1B5E2CF4C();
    sub_1B5E5F88C();

    return v214(v213, v214, v215, v216, v217, v218, v219, v220, a9, a10, a11, a12, a13, a14, a15, v235, v240, v243, v246, v250, a21, a22, a23, a24, a25, a26);
  }
}

uint64_t sub_1B5E57014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1B5E60044();
  v28 = v26[80];
  v29 = sub_1B5E5FAD0();
  v30(v29);
  v31 = v28;
  v32 = sub_1B5EA5380();
  v33 = sub_1B5EA5A40();

  if (os_log_type_enabled(v32, v33))
  {
    sub_1B5E5FD88();
    v34 = sub_1B5E5FE1C();
    *v27 = 138412290;
    v35 = v28;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v36;
    *v34 = v36;
    _os_log_impl(&dword_1B5DED000, v32, v33, "Encountered failure while invoking function: %@", v27, 0xCu);
    sub_1B5DF4428(v34, &unk_1EB90F890, &qword_1B5EB6DC0);
    sub_1B5E2D07C();
    sub_1B5E2D07C();
  }

  v37 = v26[77];
  v65 = v26[68];
  v67 = v26[70];
  v39 = v26[32];
  v38 = v26[33];
  v60 = v26[31];
  v62 = v26[69];

  v40 = sub_1B5E5FB14();
  v37(v40);
  sub_1B5EA4B50();
  sub_1B5E5F854();
  sub_1B5EA5BC0();
  v26[26] = a21;
  v26[27] = a22;
  sub_1B5E5FB20();
  MEMORY[0x1B8C8A360](0xD00000000000002DLL);
  v26[28] = v28;
  sub_1B5DF33E0(&qword_1EB90E920, &qword_1B5EB6680);
  sub_1B5EA5C60();
  sub_1B5E5FB58();
  sub_1B5EA4F40();
  sub_1B5EA5130();
  sub_1B5E5EF3C();
  v43 = sub_1B5E47A4C(v41, 255, v42);
  v64 = sub_1B5E5F23C(v43);
  sub_1B5EA4F60();
  (*(v39 + 8))(v38, v60);
  swift_willThrow();

  (*(v62 + 8))(v67, v65);
  sub_1B5DF3FB8(v26 + 2);
  v53 = v26[53];
  v54 = v26[52];
  v55 = v26[51];
  v56 = v26[50];
  v57 = v26[47];
  v58 = v26[44];
  v59 = v26[43];
  v61 = v26[40];
  v63 = v26[37];
  v66 = v26[36];
  v68 = v26[33];
  (*(v26[62] + 8))(v26[63], v26[61]);

  sub_1B5E2CF4C();
  sub_1B5E5F88C();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, v53, v54, v55, v56, v57, v58, v59, v61, v63, v64, v66, v68, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1B5E573A0()
{
  v0 = sub_1B5EA52D0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B5EA5330();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5EA52F0();
  if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69A0E78])
  {
    (*(v1 + 96))(v3, v0);
    (*(v5 + 32))(v7, v3, v4);
    v8 = sub_1B5EA5240();
    v10 = v9;
    if (v8 == sub_1B5EA4B50() && v10 == v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = sub_1B5EA5F00();
    }

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v1 + 8))(v3, v0);
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1B5E575E8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v16 = a3;
  v17 = a1;
  v5 = sub_1B5EA5350();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v18 = a2;
  v10 = *(a2 + 16);
  v11 = (v6 + 8);
  while (1)
  {
    if (v10 == v9)
    {
      v13 = 1;
      v14 = v16;
      return sub_1B5DF3658(v14, v13, 1, v5);
    }

    (*(v6 + 16))(v8, v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v9, v5);
    v12 = v17(v8);
    if (v3)
    {
      return (*v11)(v8, v5);
    }

    if (v12)
    {
      break;
    }

    (*v11)(v8, v5);
    ++v9;
  }

  v14 = v16;
  (*(v6 + 32))(v16, v8, v5);
  v13 = 0;
  return sub_1B5DF3658(v14, v13, 1, v5);
}

uint64_t sub_1B5E577A4()
{
  v0 = sub_1B5EA52D0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v12[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B5EA52F0();
  if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69A0E70])
  {
    (*(v1 + 96))(v3, v0);
    sub_1B5DF17A8(v3, v12);
    sub_1B5DF3BFC(v12, v12[3]);
    v4 = sub_1B5EA51C0();
    v6 = v5;
    if (v4 == sub_1B5EA4B50() && v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_1B5EA5F00();
    }

    sub_1B5DF3FB8(v12);
  }

  else
  {
    (*(v1 + 8))(v3, v0);
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1B5E5795C()
{
  sub_1B5E01DFC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1B5EA4B30();
  v1[4] = v3;
  sub_1B5E01C50(v3);
  v1[5] = v4;
  v1[6] = sub_1B5E2D0C8();
  v5 = sub_1B5EA4B70();
  v1[7] = v5;
  sub_1B5E01C50(v5);
  v1[8] = v6;
  v1[9] = sub_1B5E2D0C8();
  v7 = sub_1B5EA4B80();
  v1[10] = v7;
  sub_1B5E01C50(v7);
  v1[11] = v8;
  v1[12] = sub_1B5E2D0C8();
  v9 = sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
  sub_1B5E01CF8(v9);
  v1[13] = sub_1B5E5FDA0();
  v1[14] = swift_task_alloc();
  v10 = sub_1B5EA55A0();
  v1[15] = v10;
  sub_1B5E01C50(v10);
  v1[16] = v11;
  v1[17] = sub_1B5E2D0C8();
  v12 = sub_1B5EA5450();
  v1[18] = v12;
  sub_1B5E01C50(v12);
  v1[19] = v13;
  v1[20] = sub_1B5E5FDA0();
  v1[21] = swift_task_alloc();
  v14 = sub_1B5EA4740();
  v1[22] = v14;
  sub_1B5E01C50(v14);
  v1[23] = v15;
  v1[24] = sub_1B5E2D0C8();
  v16 = sub_1B5EA4770();
  v1[25] = v16;
  sub_1B5E01C50(v16);
  v1[26] = v17;
  v1[27] = sub_1B5E2D0C8();
  v18 = sub_1B5EA4750();
  v1[28] = v18;
  sub_1B5E01C50(v18);
  v1[29] = v19;
  v1[30] = sub_1B5E5FDA0();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v20 = sub_1B5DF33E0(&qword_1EB90EC38, &qword_1B5EB7028);
  sub_1B5E01CF8(v20);
  v1[33] = sub_1B5E5FDA0();
  v1[34] = swift_task_alloc();
  v21 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v21, v22, v23);
}

uint64_t sub_1B5E57CA8(uint64_t a1)
{
  v4 = sub_1B5EA4700();
  sub_1B5E60228(v4);

  v5 = sub_1B5EA47B0();
  v1[35] = v5;
  v6 = sub_1B5E5F644();
  if (sub_1B5DF46E0(v6, v7, v5) == 1)
  {
    sub_1B5DF4428(v1[34], &qword_1EB90EC38, &qword_1B5EB7028);
LABEL_10:
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v8 = sub_1B5EA4780();
  sub_1B5E2D1D8();
  v9 = sub_1B5E5F324();
  v10(v9);
  v11 = *(v8 + 16);
  if (!v11)
  {

    goto LABEL_10;
  }

  v12 = v1[29];
  v13 = v1[26];
  v14 = sub_1B5E5FC78(MEMORY[0x1E69E7CC0]);
  sub_1B5E5C044(v14, v15, v16);
  v17 = v125;
  sub_1B5E34D90();
  v2 = v8 + v18;
  v122 = *(v13 + 72);
  v123 = v19;
  do
  {
    v20 = sub_1B5E26048();
    v123(v20);
    sub_1B5EA4760();
    v21 = sub_1B5E5F508();
    v22(v21);
    v24 = *(v125 + 16);
    v23 = *(v125 + 24);
    v3 = v24 + 1;
    if (v24 >= v23 >> 1)
    {
      sub_1B5E5C044(v23 > 1, v24 + 1, 1);
    }

    *(v125 + 16) = v3;
    sub_1B5E34D90();
    (*(v12 + 32))(v125 + v25 + *(v12 + 72) * v24);
    v2 += v122;
    --v11;
  }

  while (v11);

LABEL_11:
  v26 = *(v17 + 16);
  v118 = v1;
  if (v26)
  {
    v27 = v1[29];
    v30 = *(v27 + 16);
    v28 = v27 + 16;
    v29 = v30;
    v31 = v17 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
    v122 = *(v28 + 56);
    v119 = *MEMORY[0x1E69DA540];
    v115 = v30;
    do
    {
      v32 = sub_1B5E436DC();
      v29(v32);
      v33 = sub_1B5E5F8A8();
      v29(v33);
      sub_1B5E5FD4C();
      v34 = sub_1B5E5FA48();
      v36 = v35(v34);
      v3 = v1[31];
      v2 = v1[28];
      if (v36 == v119)
      {
        v37 = sub_1B5E5F78C();
        v38(v37);
        sub_1B5E5FBA4();
        v39();
        v40 = sub_1B5EA4730();
        v42 = v41;

        v43 = v40;
        v1 = v118;
        MEMORY[0x1B8C8A360](v43, v42);

        v44 = sub_1B5E5FB58();
        v29 = v115;
        v45(v44);
        v46 = sub_1B5E26048();
        v47(v46);
      }

      else
      {
        v48 = *(v28 - 8);
        v49 = sub_1B5E26048();
        v48(v49);
        v50 = sub_1B5E5F78C();
        v48(v50);
      }

      v31 += v122;
      --v26;
    }

    while (v26);
  }

  v51 = v1[33];
  v52 = sub_1B5EA4700();
  sub_1B5E60228(v52);

  sub_1B5E5F280(v51);
  if (v53)
  {
    sub_1B5DF4428(v1[33], &qword_1EB90EC38, &qword_1B5EB7028);
    v54 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v54 = sub_1B5EA47A0();
    sub_1B5E2D1D8();
    v55 = sub_1B5E5F324();
    v56(v55);
  }

  v57 = *(v54 + 16);
  if (v57)
  {
    v58 = v1[11];
    v59 = *(v58 + 16);
    sub_1B5E5FCF0();
    v61 = v54 + v60;
    v124 = *(v58 + 72);
    sub_1B5E5FCD8();
    v112 = v62;
    v113 = v63;
    v111 = (v64 + 32);
    v65 = MEMORY[0x1E69E7CC0];
    v114 = v59;
    do
    {
      v66 = sub_1B5E436DC();
      v59(v66);
      sub_1B5EA4B40();
      v67 = sub_1B5E5F8D4();
      v69 = v68(v67);
      v2 = v1[10];
      if (v69 == v122)
      {
        v3 = v1[9];
        v70 = v1[6];
        v71 = v1[7];
        (*v112)(v70, v1[4]);
        (*v111)(v3, v70, v71);
        v72 = sub_1B5EA4B20();
        v120 = v73;
        v121 = v72;
        v74 = sub_1B5EA4B50();
        v116 = v75;
        v117 = v74;
        v76 = sub_1B5EA4B60();
        v78 = v77;
        v79 = sub_1B5E5F508();
        v80(v79);
        sub_1B5E5FD4C();
        v81 = sub_1B5E5F8D4();
        v82(v81);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B5E5FA1C();
          sub_1B5E6DD94(v89, v90, v91, v92);
          v65 = v93;
        }

        v84 = *(v65 + 16);
        v83 = *(v65 + 24);
        if (v84 >= v83 >> 1)
        {
          sub_1B5E34E0C(v83);
          sub_1B5E5FA1C();
          sub_1B5E6DD94(v94, v95, v96, v97);
          v65 = v98;
        }

        *(v65 + 16) = v84 + 1;
        v85 = (v65 + 48 * v84);
        v85[4] = v121;
        v85[5] = v120;
        v85[6] = v117;
        v85[7] = v116;
        v85[8] = v76;
        v85[9] = v78;
        v1 = v118;
        v59 = v114;
      }

      else
      {
        v86 = v1[6];
        v3 = v1[4];
        sub_1B5E5FD4C();
        v87 = sub_1B5E5F8D4();
        v88(v87);
        (*v113)(v86, v3);
      }

      v61 += v124;
      --v57;
    }

    while (v57);
  }

  else
  {

    v65 = MEMORY[0x1E69E7CC0];
  }

  if (*(v65 + 16))
  {
    sub_1B5E5FFDC();
    v99 = v1[13];
    (*(v100 + 104))(v2, *MEMORY[0x1E69C6400]);
    v101 = swift_task_alloc();
    sub_1B5E5F498(v101);
    sub_1B5EA5410();

    v102 = sub_1B5EA47C0();
    sub_1B5DF5EB8();
    (*(v103 + 16))(v99, v3, v102);
    v104 = sub_1B5E34D9C();
    sub_1B5DF3658(v104, v105, v106, v102);
    v107 = swift_task_alloc();
    v1[38] = v107;
    *v107 = v1;
    sub_1B5E5F5FC(v107);
    sub_1B5E5F780(v108);

    return sub_1B5E2E434();
  }

  else
  {

    sub_1B5E5F864();

    sub_1B5E5F1D8();

    return v110();
  }
}

uint64_t sub_1B5E58630()
{
  sub_1B5E60190();
  sub_1B5E34EC0();
  sub_1B5E2CF58();
  v3 = *(v2 + 112);
  v4 = *v1;
  sub_1B5E2CE38();
  *v5 = v4;
  *(v6 + 296) = v0;

  sub_1B5DF4428(v3, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  v7 = sub_1B5E5F308();
  v8(v7);
  sub_1B5E5F8EC();
  sub_1B5E5FEF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B5E587B0(uint64_t a1)
{
  v4 = v1[33];
  v5 = sub_1B5EA4700();
  sub_1B5E60228(v5);

  sub_1B5E5F280(v4);
  if (v6)
  {
    sub_1B5DF4428(v1[33], &qword_1EB90EC38, &qword_1B5EB7028);
    v7 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v7 = sub_1B5EA47A0();
    sub_1B5E2D1D8();
    v8 = sub_1B5E5F324();
    v9(v8);
  }

  v10 = *(v7 + 16);
  if (v10)
  {
    v11 = v1[11];
    v12 = *(v11 + 16);
    sub_1B5E5FCF0();
    v2 = v7 + v13;
    v66 = *(v11 + 72);
    sub_1B5E5FCD8();
    v59 = v14;
    v15 = MEMORY[0x1E69E7CC0];
    v60 = v12;
    do
    {
      v16 = sub_1B5E5F78C();
      v12(v16);
      sub_1B5EA4B40();
      v17 = sub_1B5E5F318();
      v19 = v18(v17);
      v20 = v1[12];
      v3 = v1[10];
      if (v19 == v65)
      {
        (*v59)(v1[6], v1[4]);
        sub_1B5E5FBA4();
        v21();
        v22 = sub_1B5EA4B20();
        v63 = v23;
        v64 = v22;
        v24 = sub_1B5EA4B50();
        v61 = v25;
        v62 = v24;
        v26 = sub_1B5EA4B60();
        v28 = v27;
        v29 = sub_1B5E5FB58();
        v30(v29);
        sub_1B5E5FD4C();
        v31(v20, v3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B5E5FA1C();
          sub_1B5E6DD94(v37, v38, v39, v40);
          v15 = v41;
        }

        v3 = *(v15 + 16);
        v32 = *(v15 + 24);
        v12 = v60;
        if (v3 >= v32 >> 1)
        {
          sub_1B5E34E0C(v32);
          sub_1B5E5FA1C();
          sub_1B5E6DD94(v42, v43, v44, v45);
          v15 = v46;
        }

        *(v15 + 16) = v3 + 1;
        v33 = (v15 + 48 * v3);
        v33[4] = v64;
        v33[5] = v63;
        v33[6] = v62;
        v33[7] = v61;
        v33[8] = v26;
        v33[9] = v28;
      }

      else
      {
        sub_1B5E5FD4C();
        v34(v20, v3);
        v35 = sub_1B5E5F324();
        v36(v35);
      }

      v2 += v66;
      --v10;
    }

    while (v10);
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  if (*(v15 + 16))
  {
    sub_1B5E5FFDC();
    v47 = v1[13];
    (*(v48 + 104))(v2, *MEMORY[0x1E69C6400]);
    v49 = swift_task_alloc();
    sub_1B5E5F498(v49);
    sub_1B5EA5410();

    v50 = sub_1B5EA47C0();
    sub_1B5DF5EB8();
    (*(v51 + 16))(v47, v3, v50);
    v52 = sub_1B5E34D9C();
    sub_1B5DF3658(v52, v53, v54, v50);
    v55 = swift_task_alloc();
    v1[38] = v55;
    *v55 = v1;
    sub_1B5E5F5FC(v55);
    sub_1B5E5F780(v56);

    return sub_1B5E2E434();
  }

  else
  {

    sub_1B5E5F864();

    sub_1B5E5F1D8();

    return v58();
  }
}

uint64_t sub_1B5E58C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1B5E2D0E0();
  sub_1B5E2D1E4();
  sub_1B5E2CF58();
  v19 = v18;
  sub_1B5E2CE48();
  *v20 = v19;
  v22 = *(v21 + 104);
  v23 = *v17;
  sub_1B5E2CE38();
  *v24 = v23;
  v19[39] = v16;

  sub_1B5DF4428(v22, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  v25 = sub_1B5E5F758();
  v26(v25);
  if (v16)
  {
    sub_1B5E5F8EC();
    sub_1B5E2D0AC();

    return MEMORY[0x1EEE6DFA0](v27, v28, v29);
  }

  else
  {
    v40 = v19[17];
    v41 = v19[14];
    v42 = v19[13];
    v43 = v19[12];
    v44 = v19[9];

    sub_1B5E5F1D8();
    sub_1B5E2D0AC();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, v41, v42, v43, v44, a14, a15, a16);
  }
}

uint64_t sub_1B5E58EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1B5E5F808();
  sub_1B5E5F904();
  sub_1B5E5F710();

  sub_1B5E2CF4C();
  sub_1B5E5F400();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1B5E58F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1B5E5F808();
  sub_1B5E5F904();
  sub_1B5E5F710();

  sub_1B5E2CF4C();
  sub_1B5E5F400();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1B5E59050(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5EA5560();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[3] = MEMORY[0x1E69E6158];
  v13[4] = MEMORY[0x1E69C6560];
  v13[0] = a1;
  v13[1] = a2;

  v8 = MEMORY[0x1E69C6388];
  sub_1B5EA54A0();
  sub_1B5DF3FB8(v13);
  sub_1B5DF33E0(&qword_1EB90EC48, &unk_1B5EB7030);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B5EAFC20;
  (*(v5 + 16))(v10 + v9, v7, v4);
  MEMORY[0x1B8C8A0B0](v10, v4, v8);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1B5E59208(uint64_t a1)
{
  v2 = sub_1B5EA5560();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B5E593B8(a1);
  v12[3] = &type metadata for GenerativeExperiencesSessionClient.ToolCall;
  v12[4] = sub_1B5E5DF1C();
  v12[0] = v6;
  v7 = MEMORY[0x1E69C6388];
  sub_1B5EA54A0();
  sub_1B5DF3FB8(v12);
  sub_1B5DF33E0(&qword_1EB90EC48, &unk_1B5EB7030);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B5EAFC20;
  (*(v3 + 16))(v9 + v8, v5, v2);
  MEMORY[0x1B8C8A0B0](v9, v2, v7);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B5E593B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1B5E5C09C(0, v1, 0);
    v2 = v16;
    v4 = a1 + 72;
    do
    {

      sub_1B5DF33E0(&qword_1EB90EC50, &qword_1B5EB75B0);
      sub_1B5DF33E0(&qword_1EB90EC58, &qword_1B5EB7040);
      swift_dynamicCast();
      v5 = v11;
      v7 = *(v16 + 16);
      v6 = *(v16 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1B5E5C09C((v6 > 1), v7 + 1, 1);
        v5 = v11;
      }

      v4 += 48;
      *(v16 + 16) = v7 + 1;
      v8 = (v16 + 48 * v7);
      v8[4] = v10;
      v8[5] = v5;
      v8[6] = v12;
      v8[7] = v13;
      v8[8] = v14;
      v8[9] = v15;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B5E59514@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v19 = sub_1B5EA5510();
  v4 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v16 = a2;
    v20 = MEMORY[0x1E69E7CC0];
    sub_1B5E5B720(0, v7, 0);
    v8 = v20;
    v17 = v4 + 32;
    v18 = v4;
    v9 = a1 + 72;
    do
    {

      sub_1B5EA5500();

      v20 = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1B5E5B720(v10 > 1, v11 + 1, 1);
        v8 = v20;
      }

      v9 += 48;
      *(v8 + 16) = v11 + 1;
      (*(v18 + 32))(v8 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v11, v6, v19);
      --v7;
    }

    while (v7);
    a2 = v16;
  }

  *a2 = v8;
  v12 = *MEMORY[0x1E69C6340];
  v13 = sub_1B5EA5520();
  return (*(*(v13 - 8) + 104))(a2, v12, v13);
}

void sub_1B5E59744()
{
  sub_1B5DFD8A8();
  v1 = v0;
  v36 = v2;
  v35 = v3;
  v5 = v4;
  v6 = sub_1B5DF33E0(&qword_1EB90EC18, &qword_1B5EB6E90);
  sub_1B5E01CF8(v6);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v7);
  sub_1B5DFA50C();
  v33 = v8;
  v9 = sub_1B5DF33E0(&qword_1EB90EC20, &qword_1B5EB6E98);
  sub_1B5DF5DA8();
  v34 = v10;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v32 - v12;
  v14 = sub_1B5DF33E0(&qword_1EB90EBD8, &qword_1B5EB6DA0);
  sub_1B5DF5DA8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1B5DFD7F8();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1B5E5F834();
  v22 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionRequests;
  sub_1B5E34DAC(v0 + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionRequests);
  v23 = *(v0 + v22);
  if (*(v23 + 16))
  {

    v32[1] = v5;
    sub_1B5E5AF88();
    if (v25)
    {
      (*(v16 + 16))(v20, *(v23 + 56) + *(v16 + 72) * v24, v14);

      v26 = sub_1B5E26048();
      v27(v26);
      if (v35)
      {
        v28 = v35;
        CompletePromptResponseElementXPCEnvelope.unseal()();
        sub_1B5EA5990();

        (*(v34 + 8))(v13, v9);
      }

      if (v36)
      {
        v37 = 0;
        sub_1B5EA59A0();
        sub_1B5E34E78(v1 + v22);
        v29 = v33;
        sub_1B5E5D330(v33);
        sub_1B5DF4428(v29, &qword_1EB90EC18, &qword_1B5EB6E90);
        swift_endAccess();
      }

      v30 = sub_1B5E5FF70();
      v31(v30);
    }

    else
    {
    }
  }

  sub_1B5DFD8C0();
}

void sub_1B5E59B3C()
{
  sub_1B5DFD8A8();
  v2 = v0;
  v30 = v3;
  v29 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_1B5EA4ED0();
  v10 = sub_1B5E01CF8(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1B5DFD7E8();
  v11 = sub_1B5DF33E0(&qword_1EB90EC28, &qword_1B5EB6EA0);
  sub_1B5DF5DA8();
  v28 = v12;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v13);
  sub_1B5E5F1E8();
  v14 = sub_1B5DF33E0(&qword_1EB90EBB8, &qword_1B5EB6D80);
  sub_1B5DF5DA8();
  v31 = v15;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v27 - v17;
  v19 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_registrationRequests;
  sub_1B5E34DAC(v0 + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_registrationRequests);
  v20 = *(v0 + v19);
  if (*(v20 + 16))
  {

    sub_1B5E5AF88();
    if ((v22 & 1) == 0 || (v27[1] = v8, v23 = *(*(v20 + 56) + 8 * v21), , , *(v23 + 16) <= v6) || v6 < 0)
    {
    }

    else
    {
      v27[0] = *(v23 + 16);
      (*(v31 + 16))(v18, v23 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v6, v14);

      if (v29)
      {
        v24 = v29;
        DocumentRegistrationXPCResponse.unseal()();
        sub_1B5EA5990();

        (*(v28 + 8))(v1, v11);
      }

      if (v30)
      {
        v32 = 0;
        sub_1B5EA59A0();
        if (v27[0] - 1 == v6)
        {
          sub_1B5E5F974(v2 + v19);
          sub_1B5E5D1E0();
          swift_endAccess();
        }
      }

      v25 = sub_1B5E26048();
      v26(v25);
    }
  }

  sub_1B5DFD8C0();
}

void sub_1B5E59F18()
{
  sub_1B5DFD8A8();
  v3 = sub_1B5DF33E0(&qword_1EB90EC18, &qword_1B5EB6E90);
  sub_1B5E01CF8(v3);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5E5F1E8();
  v5 = sub_1B5DF33E0(&qword_1EB90EBD8, &qword_1B5EB6DA0);
  sub_1B5DF5DA8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5DFD7F8();
  sub_1B5E5FBE4();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5E5F834();
  v10 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionRequests;
  sub_1B5E34DAC(v0 + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionRequests);
  if (*(*(v0 + v10) + 16))
  {

    sub_1B5E5AF88();
    if (v11)
    {
      v12 = sub_1B5E5FA6C();
      v13(v12);

      v14 = sub_1B5E5F508();
      v15(v14);
      sub_1B5EA5130();
      sub_1B5E5EF3C();
      v18 = sub_1B5E47A4C(v16, 255, v17);
      sub_1B5E5F23C(v18);
      GenerativeErrorXPCEnvelope.unseal()();
      sub_1B5E5FF0C();
      sub_1B5EA59A0();
      sub_1B5E5F974(v0 + v10);
      sub_1B5E5D330(v1);
      sub_1B5DF4428(v1, &qword_1EB90EC18, &qword_1B5EB6E90);
      swift_endAccess();
      (*(v7 + 8))(v2, v5);
    }

    else
    {
    }
  }

  sub_1B5DFD8C0();
}

void sub_1B5E5A15C()
{
  sub_1B5DFD8A8();
  v2 = v0;
  v4 = v3;
  v5 = sub_1B5DF33E0(&qword_1EB90EBB8, &qword_1B5EB6D80);
  sub_1B5DF5DA8();
  v7 = v6;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5E5F1E8();
  v9 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_registrationRequests;
  sub_1B5E34DAC(v0 + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_registrationRequests);
  v10 = *(v0 + v9);
  if (*(v10 + 16))
  {

    sub_1B5E5AF88();
    if ((v12 & 1) == 0 || (v13 = *(*(v10 + 56) + 8 * v11), , , v14 = *(v13 + 16), v14 <= v4) || v4 < 0)
    {
    }

    else
    {
      sub_1B5E5FBD8();
      v16(v1, v13 + ((*(v15 + 64) + 32) & ~*(v15 + 64)) + *(v15 + 56) * v4, v5);

      sub_1B5EA5130();
      sub_1B5E5EF3C();
      v19 = sub_1B5E47A4C(v17, 255, v18);
      sub_1B5E5F23C(v19);
      GenerativeErrorXPCEnvelope.unseal()();
      sub_1B5EA59A0();
      if (v14 - 1 == v4)
      {
        sub_1B5E5F974(v2 + v9);
        sub_1B5E5D1E0();
        swift_endAccess();
      }

      (*(v7 + 8))(v1, v5);
    }
  }

  sub_1B5DFD8C0();
}

void sub_1B5E5A46C()
{
  sub_1B5DFD8A8();
  v2 = v0;
  v36 = v3;
  v5 = v4;
  v6 = sub_1B5DF33E0(&qword_1EB90EC30, &qword_1B5EB6EA8);
  sub_1B5E01CF8(v6);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v7);
  sub_1B5E08868();
  v8 = sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
  sub_1B5E01CF8(v8);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1B5DF33E0(&qword_1EB90EBE8, &qword_1B5EB6DA8);
  sub_1B5DF5DA8();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1B5DFD7F8();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  v20 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionOneShotRequest;
  sub_1B5E34DAC(v0 + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionOneShotRequest);
  v21 = *(v0 + v20);
  if (*(v21 + 16))
  {

    v35 = v5;
    sub_1B5E5AF88();
    if (v23)
    {
      (*(v12 + 16))(v16, *(v21 + 56) + *(v12 + 72) * v22, v10);

      (*(v12 + 32))(v19, v16, v10);
      if (v36)
      {
        v24 = v36;
        CompletePromptResponseXPCEnvelope.unseal()();
        sub_1B5EA47C0();
        sub_1B5E5F704();
        sub_1B5DF3658(v25, v26, v27, v28);
        sub_1B5EA58D0();
      }

      else
      {
        sub_1B5EA47C0();
        sub_1B5DF5DF0();
        sub_1B5DF3658(v29, v30, v31, v32);
        sub_1B5EA58D0();
      }

      sub_1B5E5F974(v2 + v20);
      sub_1B5E5D330(v1);
      sub_1B5DF4428(v1, &qword_1EB90EC30, &qword_1B5EB6EA8);
      swift_endAccess();
      v33 = sub_1B5E433C0();
      v34(v33);
    }

    else
    {
    }
  }

  sub_1B5DFD8C0();
}

void sub_1B5E5A834()
{
  sub_1B5DFD8A8();
  v3 = sub_1B5DF33E0(&qword_1EB90EC30, &qword_1B5EB6EA8);
  sub_1B5E01CF8(v3);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5E5F1E8();
  v5 = sub_1B5DF33E0(&qword_1EB90EBE8, &qword_1B5EB6DA8);
  sub_1B5DF5DA8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5DFD7F8();
  sub_1B5E5FBE4();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5E5F834();
  v10 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionOneShotRequest;
  sub_1B5E34DAC(v0 + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionOneShotRequest);
  if (*(*(v0 + v10) + 16))
  {

    sub_1B5E5AF88();
    if (v11)
    {
      v12 = sub_1B5E5FA6C();
      v13(v12);

      v14 = sub_1B5E5F508();
      v15(v14);
      sub_1B5EA5130();
      sub_1B5E5EF3C();
      v18 = sub_1B5E47A4C(v16, 255, v17);
      sub_1B5E5F23C(v18);
      GenerativeErrorXPCEnvelope.unseal()();
      sub_1B5E5FF0C();
      sub_1B5EA58C0();
      sub_1B5E5F974(v0 + v10);
      sub_1B5E5D330(v1);
      sub_1B5DF4428(v1, &qword_1EB90EC30, &qword_1B5EB6EA8);
      swift_endAccess();
      (*(v7 + 8))(v2, v5);
    }

    else
    {
    }
  }

  sub_1B5DFD8C0();
}

void sub_1B5E5AA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B5E601CC();
  v6 = v5;
  v8 = v7;
  sub_1B5E5FFD0();
  sub_1B5EA4340();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5DFD7E8();
  v12 = v11 - v10;
  sub_1B5EA4320();
  v13 = v8;
  v14 = v4;
  v6(v12, v13);

  v15 = sub_1B5E433C0();
  v16(v15);
  sub_1B5E601B8();
}

id GenerativeExperiencesSessionClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GenerativeExperiencesSessionClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeExperiencesSessionClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B5E5AC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for GenerativeExperiencesSessionClient();

  return MEMORY[0x1EEE2EE60](a1, v5, a3);
}

uint64_t sub_1B5E5AD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B5EA4990();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + qword_1EB90EE70) = 0;
  sub_1B5EA4960();
  (*(v6 + 32))(v4 + qword_1EB90EE50, v8, v5);
  return v4;
}

unint64_t sub_1B5E5AE4C(uint64_t a1, uint64_t a2)
{
  sub_1B5EA5FD0();
  sub_1B5EA5710();
  sub_1B5EA6020();
  v2 = sub_1B5E43768();

  return sub_1B5DF6C68(v2, v3, v4);
}

void sub_1B5E5AEC0()
{
  sub_1B5E60004();
  sub_1B5EA55A0();
  sub_1B5E47A4C(&qword_1EB90CE38, 255, MEMORY[0x1E69C6408]);
  sub_1B5E5FD58();
  sub_1B5EA55F0();
  sub_1B5E5B050();
}

void sub_1B5E5AF88()
{
  sub_1B5E60004();
  sub_1B5EA4340();
  sub_1B5E47A4C(&qword_1EB90ED28, 255, MEMORY[0x1E69695A8]);
  sub_1B5E5FD58();
  sub_1B5EA55F0();
  sub_1B5E5B050();
}

void sub_1B5E5B050()
{
  sub_1B5DFD8A8();
  v20 = v1;
  v21 = v2;
  v19 = v3;
  v5 = v4;
  v17 = v6;
  v8 = v7(0);
  sub_1B5DF5DA8();
  v10 = v9;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  v22 = v0 + 64;
  v18 = v0;
  v14 = ~(-1 << *(v0 + 32));
  for (i = v5 & v14; ((1 << i) & *(v22 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v14)
  {
    (*(v10 + 16))(v13, *(v18 + 48) + *(v10 + 72) * i, v8);
    sub_1B5E47A4C(v19, 255, v20);
    v16 = sub_1B5EA5660();
    (*(v10 + 8))(v13, v8);
    if (v16)
    {
      break;
    }
  }

  sub_1B5DFD8C0();
}

uint64_t sub_1B5E5B1CC()
{
  sub_1B5E5FC04();

  sub_1B5E5F8EC();
  v6 = sub_1B5E5B28C(v3, v4, v5, 1, v2, v1);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = v2;
    v11[1] = v1;
  }

  v9 = *v0;
  if (*v0)
  {
    sub_1B5E5E268(v11, *v0);
    *v0 = v9 + 32;
  }

  sub_1B5DF3FB8(v11);
  return v7;
}

unint64_t sub_1B5E5B28C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B5E5B38C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1B5EA5C00();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1B5E5B38C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1B5E5B3D8(a1, a2);
  sub_1B5E5B4F0(&unk_1F2D62160);
  return v3;
}

uint64_t sub_1B5E5B3D8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1B5EA5750())
  {
    result = sub_1B5E6260C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1B5EA5BA0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1B5EA5C00();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B5E5B4F0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1B5E5B5D4(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1B5E5B5D4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B5DF33E0(&qword_1EB90EDC8, &qword_1B5EB71A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1B5E5B778(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B5E5C13C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B5E5B798(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B5E5C308(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B5E5B7B8()
{
  v1 = sub_1B5EA4E90();
  sub_1B5E01CF8(v1);
  v2 = *(v0 + 16);

  return sub_1B5E488D4(v2);
}

uint64_t sub_1B5E5B840(uint64_t a1)
{
  sub_1B5E6017C();
  sub_1B5E34EC0();
  sub_1B5E5F160();
  v1 = swift_task_alloc();
  v2 = sub_1B5E2CEE4(v1);
  *v2 = v3;
  sub_1B5E5EF7C(v2);
  sub_1B5E601A4();

  return sub_1B5E489B0(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B5E5B900(uint64_t a1)
{
  sub_1B5E6017C();
  sub_1B5E34EC0();
  sub_1B5E5F160();
  v1 = swift_task_alloc();
  v2 = sub_1B5E2CEE4(v1);
  *v2 = v3;
  sub_1B5E5EF7C(v2);
  sub_1B5E601A4();

  return sub_1B5E4A020(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B5E5B98C(uint64_t a1)
{
  sub_1B5E6017C();
  sub_1B5E34EC0();
  sub_1B5E5F160();
  v1 = swift_task_alloc();
  v2 = sub_1B5E2CEE4(v1);
  *v2 = v3;
  sub_1B5E5EF7C(v2);
  sub_1B5E601A4();

  return sub_1B5E4A69C(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B5E5BA18(uint64_t a1)
{
  sub_1B5E60190();
  sub_1B5E34EC0();
  v1 = swift_task_alloc();
  v2 = sub_1B5E2CEE4(v1);
  *v2 = v3;
  sub_1B5E5EFA0(v2);
  sub_1B5E5FEF8();

  return sub_1B5E4A77C(v4, v5, v6, v7, v8);
}

uint64_t sub_1B5E5BAB0(uint64_t a1)
{
  sub_1B5E6017C();
  sub_1B5E34EC0();
  sub_1B5E5F160();
  v1 = swift_task_alloc();
  v2 = sub_1B5E2CEE4(v1);
  *v2 = v3;
  sub_1B5E5EF7C(v2);
  sub_1B5E601A4();

  return sub_1B5E4A988(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B5E5BB3C(uint64_t a1)
{
  sub_1B5E6017C();
  sub_1B5E34EC0();
  sub_1B5E1A084();
  v1 = sub_1B5EA5160();
  sub_1B5E01CF8(v1);
  v2 = swift_task_alloc();
  v3 = sub_1B5E2CEE4(v2);
  *v3 = v4;
  v3[1] = sub_1B5E2CDCC;
  sub_1B5E5F094();
  sub_1B5E601A4();

  return sub_1B5E4AD24(v5, v6, v7, v8, v9);
}

uint64_t sub_1B5E5BC0C(uint64_t a1)
{
  sub_1B5E6017C();
  sub_1B5E34EC0();
  sub_1B5E5F160();
  v1 = swift_task_alloc();
  v2 = sub_1B5E2CEE4(v1);
  *v2 = v3;
  sub_1B5E5EF7C(v2);
  sub_1B5E601A4();

  return sub_1B5E4AF58(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B5E5BC98()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5E5BCE0(uint64_t a1)
{
  sub_1B5E60190();
  sub_1B5E34EC0();
  v1 = swift_task_alloc();
  v2 = sub_1B5E2CEE4(v1);
  *v2 = v3;
  sub_1B5E5EFA0(v2);
  sub_1B5E5FEF8();

  return sub_1B5E4B17C(v4, v5, v6, v7, v8);
}

uint64_t sub_1B5E5BD78(uint64_t a1)
{
  sub_1B5E6017C();
  sub_1B5E34EC0();
  sub_1B5E5F160();
  v1 = swift_task_alloc();
  v2 = sub_1B5E2CEE4(v1);
  *v2 = v3;
  sub_1B5E5EF7C(v2);
  sub_1B5E601A4();

  return sub_1B5E4B4A4(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B5E5BE04()
{
  swift_unknownObjectRelease();

  sub_1B5E5FB08();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_1B5E5BE50(uint64_t a1)
{
  sub_1B5E6017C();
  sub_1B5E34EC0();
  sub_1B5E5F160();
  v1 = swift_task_alloc();
  v2 = sub_1B5E2CEE4(v1);
  *v2 = v3;
  sub_1B5E5EF7C(v2);
  sub_1B5E601A4();

  return sub_1B5E4B648(v4, v5, v6, v7, v8, v9);
}

void *sub_1B5E5BEDC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B5E5C4D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B5E5BEFC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B5E5C6A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B5E5BF74(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B5E5C7A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B5E5C09C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B5E5CA64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B5E5C0BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B5E5CB7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B5E5C0DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B5E5CD48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B5E5C0FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B5E5CF14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B5E5C11C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B5E5D014(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B5E5C13C(void *result, int64_t a2, char a3, uint64_t a4)
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
LABEL_25:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1B5DF33E0(&qword_1EB90ED80, &qword_1B5EB7168);
  v10 = *(sub_1B5DF33E0(&qword_1EB90DBA0, &qword_1B5EAFC90) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1B5DF33E0(&qword_1EB90DBA0, &qword_1B5EAFC90) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1B5E6E390(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1B5E5C308(void *result, int64_t a2, char a3, uint64_t a4)
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
LABEL_25:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1B5DF33E0(&qword_1EB90EDC0, &qword_1B5EB71A0);
  v10 = *(sub_1B5DF33E0(&qword_1EB90EC00, &qword_1B5EB6DC8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1B5DF33E0(&qword_1EB90EC00, &qword_1B5EB6DC8) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1B5E6E3A4(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1B5E5C4D4(void *result, int64_t a2, char a3, uint64_t a4)
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
LABEL_25:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1B5DF33E0(&qword_1EB90ECC8, &qword_1B5EB70A8);
  v10 = *(sub_1B5DF33E0(&unk_1EB90E970, &unk_1B5EB66C0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1B5DF33E0(&unk_1EB90E970, &unk_1B5EB66C0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1B5E6E3B8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1B5E5C6A0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_1B5DF33E0(&qword_1EB90ECC0, &qword_1B5EB70A0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1B5E6E3CC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1B5E5C7A8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_1B5DF33E0(&qword_1EB90EC98, &qword_1B5EB7088);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1B5E6E40C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1B5DF33E0(&qword_1EB90ECA0, &qword_1B5EB7090);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1B5E5C8B8()
{
  sub_1B5DFD8A8();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1B5DF33E0(v2, v3);
  v16 = v7(0);
  sub_1B5E01C50(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v22 = j__malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v22 - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((v22 - v20) / v18);
LABEL_19:
  v7(0);
  sub_1B5E34D90();
  if (v10)
  {
    v5(v8 + v24, v14, v21 + v24);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_1B5DFD8C0();
}

void *sub_1B5E5CA64(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_1B5DF33E0(&qword_1EB90EC60, &qword_1B5EB7048);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_1B5E6E530((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1B5DF33E0(&qword_1EB90EC58, &qword_1B5EB7040);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1B5E5CB7C(void *result, int64_t a2, char a3, uint64_t a4)
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
LABEL_25:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1B5DF33E0(&qword_1EB90ECE8, &unk_1B5EB70C0);
  v10 = *(sub_1B5DF33E0(&qword_1EB90ECF0, &qword_1B5EB73F0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1B5DF33E0(&qword_1EB90ECF0, &qword_1B5EB73F0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1B5E6E578(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1B5E5CD48(void *result, int64_t a2, char a3, uint64_t a4)
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
LABEL_25:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1B5DF33E0(&qword_1EB90ED00, &unk_1B5EB70E0);
  v10 = *(sub_1B5DF33E0(&qword_1EB90ED08, &unk_1B5EB7400) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1B5DF33E0(&qword_1EB90ED08, &unk_1B5EB7400) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1B5E6E58C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1B5E5CF14(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_1B5DF33E0(&qword_1EB90ED10, &unk_1B5EB70F0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1B5E6E558((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1B5E5D014(void *result, int64_t a2, char a3, uint64_t a4)
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
LABEL_25:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1B5DF33E0(&qword_1EB90ECF8, &unk_1B5EB70D0);
  v10 = *(sub_1B5DF33E0(&qword_1EB90E950, &qword_1B5EB66A0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1B5DF33E0(&qword_1EB90E950, &qword_1B5EB66A0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1B5E6E5A0(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1B5E5D1E0()
{
  v1 = v0;
  sub_1B5E5AF88();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v0;
  sub_1B5DF33E0(&qword_1EB90ED30, &qword_1B5EB7108);
  sub_1B5EA5C70();
  v5 = *(v9 + 48);
  v6 = sub_1B5EA4340();
  (*(*(v6 - 8) + 8))(v5 + *(*(v6 - 8) + 72) * v4, v6);
  v7 = *(*(v9 + 56) + 8 * v4);
  sub_1B5DF33E0(&qword_1EB90ED38, &unk_1B5EB7110);
  sub_1B5E47A4C(&qword_1EB90ED28, 255, MEMORY[0x1E69695A8]);
  sub_1B5EA5C90();
  *v1 = v9;
  return v7;
}

uint64_t sub_1B5E5D330@<X0>(uint64_t a1@<X8>)
{
  sub_1B5E5AF88();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v23 = *v1;
    v6 = sub_1B5E5FB64();
    sub_1B5DF33E0(v6, v7);
    sub_1B5EA5C70();
    v8 = *(v23 + 48);
    v9 = sub_1B5EA4340();
    sub_1B5DF5EB8();
    (*(v10 + 8))(v8 + *(v10 + 72) * v5, v9);
    v11 = *(v23 + 56);
    v12 = sub_1B5E433C0();
    v14 = sub_1B5DF33E0(v12, v13);
    sub_1B5DF5EB8();
    (*(v15 + 32))(a1, v11 + *(v15 + 72) * v5, v14);
    sub_1B5E47A4C(&qword_1EB90ED28, 255, MEMORY[0x1E69695A8]);
    sub_1B5EA5C90();
    *v1 = v23;
    v16 = sub_1B5E34D9C();
    v19 = v14;
  }

  else
  {
    v20 = sub_1B5E433C0();
    sub_1B5DF33E0(v20, v21);
    sub_1B5DF5DF0();
  }

  return sub_1B5DF3658(v16, v17, v18, v19);
}

uint64_t sub_1B5E5D4D4(uint64_t a1, uint64_t a2)
{
  result = sub_1B5E47A4C(&qword_1EB90CEF0, a2, type metadata accessor for GenerativeExperiencesSessionClient);
  *(a1 + 8) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for GenerativeExperiencesSessionXPCService(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t dispatch thunk of GenerativeExperiencesSessionClient.complete<A>(generating:query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x130))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))();
}

uint64_t dispatch thunk of GenerativeExperiencesSessionClient.complete(query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x138))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x148))();
}

uint64_t dispatch thunk of GenerativeExperiencesSessionClient.undo()()
{
  sub_1B5E2CED8();
  v0 = swift_task_alloc();
  v1 = sub_1B5E2CEE4(v0);
  *v1 = v2;
  v3 = sub_1B5E60030(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GenerativeExperiencesSessionClient.redo()()
{
  sub_1B5E2CED8();
  v0 = swift_task_alloc();
  v1 = sub_1B5E2CEE4(v0);
  *v1 = v2;
  v3 = sub_1B5E60030(v1);

  return v4(v3);
}

unint64_t sub_1B5E5DF1C()
{
  result = qword_1EB90EC40;
  if (!qword_1EB90EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90EC40);
  }

  return result;
}

unint64_t sub_1B5E5DFD0()
{
  result = qword_1EB90EC80;
  if (!qword_1EB90EC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90EC80);
  }

  return result;
}

uint64_t sub_1B5E5E068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1B5E5AE4C(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_1B5DF33E0(&qword_1EB90ECE0, &qword_1B5EB70B8);
    sub_1B5EA5C70();

    v8 = *(v14 + 56);
    v9 = sub_1B5DF33E0(&qword_1EB90ECD0, &unk_1B5EBB660);
    (*(*(v9 - 8) + 32))(a3, v8 + *(*(v9 - 8) + 72) * v7, v9);
    sub_1B5EA5C90();
    *v3 = v14;
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = sub_1B5DF33E0(&qword_1EB90ECD0, &unk_1B5EBB660);
    v10 = a3;
    v11 = 1;
  }

  return sub_1B5DF3658(v10, v11, 1, v12);
}

uint64_t sub_1B5E5E268(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B5E5E2C4(uint64_t a1)
{
  v3 = sub_1B5EA5470();
  sub_1B5E01C50(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_1B5EA4820();
  sub_1B5E01C50(v8);
  v10 = (v7 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  v13 = sub_1B5DF33E0(&qword_1EB90E6A0, &qword_1B5EB60D8);
  sub_1B5E01C50(v13);
  v15 = (v10 + v12 + *(v14 + 80)) & ~*(v14 + 80);
  v17 = *(v16 + 64);
  v18 = sub_1B5EA4D20();
  sub_1B5E01C50(v18);
  v20 = (v15 + v17 + *(v19 + 80)) & ~*(v19 + 80);
  v22 = *(v21 + 64);
  v23 = sub_1B5EA4CC0();
  sub_1B5E01C50(v23);
  v25 = (v20 + v22 + *(v24 + 80)) & ~*(v24 + 80);
  v27 = *(v1 + v7);
  v28 = *(v1 + ((*(v26 + 64) + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  v29 = swift_task_alloc();
  *(v2 + 16) = v29;
  *v29 = v2;
  v29[1] = sub_1B5E2C184;

  return sub_1B5E4E544(a1, v1 + v5, v27, v1 + v10, v1 + v15, v1 + v20, v1 + v25, v28);
}

uint64_t sub_1B5E5E560@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B5EA4820();
  sub_1B5E01C50(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v7 = v5 + *(v6 + 64);
  v8 = sub_1B5DF33E0(&qword_1EB90E6A0, &qword_1B5EB60D8);
  sub_1B5E01C50(v8);
  v10 = (v7 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  v13 = sub_1B5EA4D20();
  sub_1B5E01C50(v13);
  v15 = (v10 + v12 + *(v14 + 80)) & ~*(v14 + 80);
  v17 = *(v16 + 64);
  v18 = sub_1B5EA4CC0();
  sub_1B5E01C50(v18);
  v20 = v19;
  v22 = v21;
  v23 = (v15 + v17 + *(v20 + 80)) & ~*(v20 + 80);
  v24 = (*(v22 + 64) + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1B5E4FC78(*(v1 + 24), *(v1 + 32), v1 + v5, v1 + v10, v1 + v15, v1 + v23, *(v1 + v24), a1, *(v1 + v24 + 8), *(v1 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t *sub_1B5E5E724(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1B5E5E784()
{
  v25 = sub_1B5EA4820();
  sub_1B5DF5DA8();
  v2 = v1;
  v3 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v5 = v3 + *(v4 + 64);
  v6 = sub_1B5DF33E0(&qword_1EB90E6A0, &qword_1B5EB60D8);
  sub_1B5E01C50(v6);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  v23 = *(v9 + 64);
  v26 = sub_1B5EA4D20();
  sub_1B5DF5DA8();
  v11 = v10;
  v12 = *(v10 + 80);
  v22 = *(v13 + 64);
  v24 = sub_1B5EA4CC0();
  sub_1B5DF5DA8();
  v15 = v14;
  v16 = *(v14 + 80);

  (*(v2 + 8))(v0 + v3, v25);
  v17 = sub_1B5EA5290();
  if (!sub_1B5DF46E0(v0 + v8, 1, v17))
  {
    sub_1B5E2D1D8();
    (*(v18 + 8))(v0 + v8, v17);
  }

  v19 = (v8 + v23 + v12) & ~v12;
  v20 = (v19 + v22 + v16) & ~v16;
  (*(v11 + 8))(v0 + v19, v26);
  (*(v15 + 8))(v0 + v20, v24);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5E5EA2C(uint64_t a1)
{
  v1 = sub_1B5EA4820();
  sub_1B5E01C50(v1);
  v2 = sub_1B5DF33E0(&qword_1EB90E6A0, &qword_1B5EB60D8);
  sub_1B5E01C50(v2);
  v3 = sub_1B5EA4D20();
  sub_1B5E01C50(v3);
  v4 = sub_1B5EA4CC0();
  sub_1B5E01C50(v4);
  v5 = swift_task_alloc();
  *(v15 + 16) = v5;
  *v5 = v15;
  v5[1] = sub_1B5E2CDCC;
  sub_1B5E5F094();

  return sub_1B5E5011C(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1B5E5EC7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1B5E1F438(a1, a2, a3, a4);
  sub_1B5DF5EB8();
  v5 = sub_1B5DFA488();
  v6(v5);
  return v4;
}

uint64_t sub_1B5E5ECD0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B5DFD694(a2, a3);
    sub_1B5E5F3AC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B5E5ED14()
{
  v1 = sub_1B5EA4340();
  sub_1B5DF5DA8();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5E5EDE4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  sub_1B5E1A084();
  v4 = sub_1B5EA4340();
  sub_1B5E01CF8(v4);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a2(v2, v6, v7);
}

uint64_t sub_1B5E5EE70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1B5E1F438(a1, a2, a3, a4);
  sub_1B5DF5EB8();
  v5 = sub_1B5DFA488();
  v6(v5);
  return v4;
}

uint64_t sub_1B5E5EEBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1B5E1F438(a1, a2, a3, a4);
  sub_1B5DF5EB8();
  v5 = sub_1B5DFA488();
  v6(v5);
  return v4;
}

uint64_t sub_1B5E5EF54(uint64_t a1, __n128 a2)
{

  return swift_once();
}

uint64_t sub_1B5E5F030()
{
}

uint64_t sub_1B5E5F0BC()
{
}

uint64_t sub_1B5E5F0F8(uint64_t a1, __n128 a2)
{

  return swift_once();
}

uint64_t sub_1B5E5F118(uint64_t a1, __n128 a2)
{

  return swift_once();
}

uint64_t sub_1B5E5F23C(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_1B5E5F25C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1B5E5ECD0(a1, a2, a3);
}

double sub_1B5E5F2A0()
{

  swift_beginAccess();
  return result;
}

uint64_t sub_1B5E5F2C8()
{
}

__n128 sub_1B5E5F330(__n128 *a1)
{
  result = *(v1 - 112);
  a1[1] = result;
  return result;
}

uint64_t sub_1B5E5F520()
{
}

uint64_t sub_1B5E5F694(uint64_t a1)
{
  *(a1 + 16) = v3;

  return sub_1B5E575E8(sub_1B5E5DF94, v1, v2);
}

uint64_t sub_1B5E5F6CC(uint64_t a1)
{
  *(a1 + 16) = v1;

  return sub_1B5E575E8(sub_1B5E5DF74, v3, v2);
}

uint64_t sub_1B5E5F710()
{
}

void sub_1B5E5F764()
{

  JUMPOUT(0x1B8C8B330);
}

uint64_t sub_1B5E5F7CC()
{
}

double sub_1B5E5F974(uint64_t a1)
{

  swift_beginAccess();
  return result;
}

void sub_1B5E5F990()
{

  JUMPOUT(0x1B8C8B330);
}

uint64_t sub_1B5E5F9B4()
{
}

uint64_t sub_1B5E5F9CC(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1B5E5F9E4()
{
}

uint64_t sub_1B5E5FB2C(uint64_t a1)
{

  return sub_1B5EA4B40();
}

void sub_1B5E5FC14()
{
  v2 = *(v0 + 728);
}

uint64_t sub_1B5E5FC3C()
{

  return swift_slowAlloc();
}

void sub_1B5E5FD08()
{
  sub_1B5E49FF8();
  *(v0 + 760) = v1;

  sub_1B5E4A834(v1, v2, v3, v4);
}

id sub_1B5E5FD70(id a1, SEL a2, uint64_t a3, uint64_t a4)
{

  return [a1 a2];
}

uint64_t sub_1B5E5FD88()
{

  return swift_slowAlloc();
}

uint64_t sub_1B5E5FDA0()
{

  return swift_task_alloc();
}

uint64_t sub_1B5E5FDB8(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v2;
  a1[5] = v1;
  a1[6] = v3;
}

uint64_t sub_1B5E5FDDC(float a1)
{
  *v2 = a1;
  sub_1B5DF3BFC((v1 + 56), *(v1 + 80));

  return sub_1B5EA51C0();
}

uint64_t sub_1B5E5FE1C()
{

  return swift_slowAlloc();
}

uint64_t sub_1B5E5FE38(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1B5E5FE50()
{
}

void sub_1B5E5FE74()
{
}

uint64_t sub_1B5E5FE98()
{

  return sub_1B5EA5F00();
}

uint64_t sub_1B5E5FF34()
{
  v1[77] = v0;
  sub_1B5DF3BFC(v1 + 2, v1[5]);

  return sub_1B5EA4B60();
}

uint64_t sub_1B5E6007C()
{

  return swift_bridgeObjectRetain_n();
}

id sub_1B5E6009C(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2112;

  return v1;
}

uint64_t sub_1B5E600BC(uint64_t a1)
{

  return sub_1B5EA52F0();
}

uint64_t sub_1B5E600DC()
{

  return sub_1B5EA4F40();
}

void sub_1B5E600FC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void sub_1B5E6011C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_1B5E6013C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t sub_1B5E6015C()
{

  return sub_1B5DF4428(v1, v0, v2);
}

uint64_t sub_1B5E601E0(uint64_t a1)
{

  return swift_allocObject();
}

id sub_1B5E601F8(id a1, SEL a2, uint64_t a3, uint64_t a4)
{

  return [a1 a2];
}

uint64_t sub_1B5E60210()
{
}

uint64_t sub_1B5E60228(uint64_t a1)
{

  return sub_1B5E10AFC(a1, v1);
}

uint64_t sub_1B5E60240@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B5EA4950();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5EA4970();
  return sub_1B5E602C4(v4, a1);
}

uint64_t sub_1B5E602C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B5EA4950();
  v5 = *(v4 - 8);
  v6 = sub_1B5E5F324();
  v7(v6);
  v8 = type metadata accessor for JsonParser.AsyncIterator(0);
  sub_1B5EA46E0();
  result = (*(v5 + 8))(a1, v4);
  v10 = (a2 + v8[6]);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  *(a2 + v8[7]) = 7;
  *(a2 + v8[8]) = 0;
  return result;
}

uint64_t sub_1B5E603B4()
{
  sub_1B5E01DFC();
  v1[10] = v2;
  v1[11] = v0;
  v3 = sub_1B5EA43A0();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v4 = sub_1B5EA4F10();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B5E604C8()
{
  sub_1B5E01DFC();
  v1 = *(v0 + 88);
  v2 = type metadata accessor for JsonParser.AsyncIterator(0);
  *(v0 + 144) = v2;
  v3 = *(v2 + 32);
  *(v0 + 216) = v3;
  if (*(v1 + v3) == -32768)
  {
    type metadata accessor for JsonParserToken(0);
    v4 = sub_1B5E63938();
    sub_1B5DF3658(v4, v5, v6, v7);

    sub_1B5E2CF4C();

    return v8();
  }

  else
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    v10 = swift_task_alloc();
    *(v0 + 152) = v10;
    *v10 = v0;
    sub_1B5E638C4();
    *(v11 + 8) = v12;

    return sub_1B5E61640();
  }
}

uint64_t sub_1B5E605C4()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E34F1C();
  *v4 = v3;
  *v4 = *v1;
  v3[20] = v5;
  v3[21] = v6;
  v3[22] = v0;

  if (v0)
  {
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B5E606D4()
{
  v1 = *(v0 + 168);
  if (!v1)
  {
    v11 = *(v0 + 216);
    v12 = *(v0 + 80);
    v13 = *(v0 + 88);

    *(v13 + v11) = 0x8000;
    sub_1B5EA46C0();
    v14 = type metadata accessor for JsonParserToken(0);
    swift_storeEnumTagMultiPayload();
    v15 = v12;
LABEL_14:
    v16 = 0;
    v17 = 1;
    v18 = v14;
LABEL_72:
    sub_1B5DF3658(v15, v16, v17, v18);

    sub_1B5E2CF4C();
LABEL_73:

    return v43();
  }

  v2 = *(v0 + 216);
  v3 = *(v0 + 88);
  v4 = *(v3 + v2);
  if (!(v4 >> 14))
  {
    v19 = *(v0 + 160);
    if (*(v3 + v2))
    {
      if (*(v3 + v2) == 1)
      {
        if (v1 == 0xE100000000000000 && v19 == 34)
        {
          goto LABEL_21;
        }

        if (sub_1B5E63860(34))
        {
          v2 = *(v0 + 216);
          v3 = *(v0 + 88);
LABEL_21:

          *(v3 + v2) = 0;
LABEL_50:
          v32 = swift_task_alloc();
          *(v0 + 152) = v32;
          *v32 = v0;
          sub_1B5E638C4();
          goto LABEL_51;
        }

        if (v1 == 0xE100000000000000 && *(v0 + 160) == 92 || (sub_1B5E63860(92) & 1) != 0)
        {
          *(*(v0 + 88) + *(v0 + 216)) = 2;
        }

        v30 = *(v0 + 160);
      }

      else
      {
        *(v3 + v2) = 1;
        v30 = v19;
      }

      MEMORY[0x1B8C8A360](v30, v1);
    }

    else if ((sub_1B5EA5610() & 1) == 0)
    {
      v25 = *(v0 + 168);
      v26 = *(v0 + 160) == 123 && v25 == 0xE100000000000000;
      if (v26 || (sub_1B5E63860(123) & 1) != 0 || (*(v0 + 160) == 125 ? (v39 = v25 == 0xE100000000000000) : (v39 = 0), v39 || (sub_1B5E63860(125) & 1) != 0))
      {
        sub_1B5E6396C();

LABEL_71:
        sub_1B5EA4D40();
        sub_1B5E6384C();
        v40 = sub_1B5E5F324();
        v41(v40);
        v42 = type metadata accessor for JsonParserToken(0);
        sub_1B5E5F324();
        swift_storeEnumTagMultiPayload();
        v15 = sub_1B5E6390C();
        v18 = v42;
        goto LABEL_72;
      }

      v45 = *(v0 + 160) == 34 && v25 == 0xE100000000000000;
      if (v45 || (sub_1B5E63860(34) & 1) != 0)
      {
        v22 = *(v0 + 216);
        v23 = *(v0 + 88);

        v24 = 1;
        goto LABEL_30;
      }

      v47 = *(v0 + 160) == 58 && v25 == 0xE100000000000000;
      if (v47 || (sub_1B5E63860(58) & 1) != 0)
      {
        v48 = *(v0 + 216);
        v49 = *(v0 + 80);
        v50 = *(v0 + 88);

        *(v50 + v48) = 0x4000;
        v51 = *(v0 + 24);
        *v49 = *(v0 + 16);
        v49[1] = v51;
        goto LABEL_71;
      }

      v53 = *(v0 + 160);

      v54 = v53 == 44 && v25 == 0xE100000000000000;
      if (!v54 && (sub_1B5E63860(44) & 1) == 0)
      {
        if (qword_1EB90D178 != -1)
        {
          swift_once();
        }

        v56 = sub_1B5EA53B0();
        sub_1B5DFD794(v56, qword_1EB90D180);

        v57 = sub_1B5EA5380();
        v58 = sub_1B5EA5A40();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          *v59 = 136315138;

          v60 = sub_1B5E5B1CC();

          *(v59 + 4) = v60;
          _os_log_impl(&dword_1B5DED000, v57, v58, "Recieved unexpected character: %s.", v59, 0xCu);
          sub_1B5DF3FB8(v67);
          MEMORY[0x1B8C8B330](v67, -1, -1);
          MEMORY[0x1B8C8B330](v59, -1, -1);
        }

        v62 = *(v0 + 128);
        v61 = *(v0 + 136);
        v63 = *(v0 + 120);
        sub_1B5EA5BC0();
        *(v0 + 64) = 0;
        *(v0 + 72) = 0xE000000000000000;
        MEMORY[0x1B8C8A360](0xD00000000000001FLL, 0x80000001B5EAA010);
        sub_1B5EA5620();

        MEMORY[0x1B8C8A360](46, 0xE100000000000000);
        sub_1B5EA4F00();
        sub_1B5EA5130();
        sub_1B5E620F8(&qword_1EB90EBE0, MEMORY[0x1E69A0A68], MEMORY[0x1E69A0A80]);
        swift_allocError();
        sub_1B5EA50F0();
        (*(v62 + 8))(v61, v63);
        swift_willThrow();

        sub_1B5E2CF4C();
        goto LABEL_73;
      }

LABEL_62:

      goto LABEL_71;
    }

LABEL_49:

    goto LABEL_50;
  }

  if (v4 >> 14 != 1)
  {
    sub_1B5E6396C();

    type metadata accessor for JsonParserToken(0);
    v15 = sub_1B5E63938();
    goto LABEL_72;
  }

  v5 = (v4 >> 8) & 0x3F;
  v6 = *(v0 + 160);
  if (v5)
  {
    if (v5 == 1)
    {

      if (v1 == 0xE100000000000000 && v6 == 34 || (sub_1B5E63860(34) & 1) != 0)
      {
        v7 = *(v0 + 216);
        v8 = *(v0 + 80);
        v9 = *(v0 + 88);

        if (v4)
        {
          v10 = 16385;
        }

        else
        {
          v10 = 0;
        }

        *(v9 + v7) = v10;
        *v8 = 0;
        v8[1] = 0xE000000000000000;
        goto LABEL_71;
      }

      if (v1 == 0xE100000000000000 && *(v0 + 160) == 92)
      {
        v31 = 92;
      }

      else
      {
        v36 = sub_1B5E63860(92);
        v31 = *(v0 + 160);
        if ((v36 & 1) == 0)
        {
          v37 = *(v0 + 80);
          goto LABEL_70;
        }
      }

      v37 = *(v0 + 80);
      *(*(v0 + 88) + *(v0 + 216)) = v4 & 1 | 0x4200;
LABEL_70:
      *v37 = v31;
      v37[1] = v1;
      goto LABEL_71;
    }

    v27 = *(v0 + 80);

    *(v3 + v2) = v4 & 1 | 0x4100;
    *v27 = v6;
    v27[1] = v1;
    v28 = *MEMORY[0x1E69A08B0];
    sub_1B5EA4D40();
    sub_1B5E6384C();
    (*(v29 + 104))(v27, v28);
    v14 = type metadata accessor for JsonParserToken(0);
    swift_storeEnumTagMultiPayload();
    v15 = v27;
    goto LABEL_14;
  }

  sub_1B5E5F324();
  if (sub_1B5EA5610())
  {
    goto LABEL_49;
  }

  v20 = *(v0 + 168);
  v21 = *(v0 + 160) == 34 && v20 == 0xE100000000000000;
  if (v21 || (sub_1B5E63860(34) & 1) != 0)
  {
    v22 = *(v0 + 216);
    v23 = *(v0 + 88);

    v24 = v4 & 1 | 0x4100;
LABEL_30:
    *(v23 + v22) = v24;
    goto LABEL_50;
  }

  v38 = *(v0 + 160) == 44 && v20 == 0xE100000000000000;
  if (v38 || (sub_1B5E63860(44) & 1) != 0)
  {
    sub_1B5E6396C();
    goto LABEL_62;
  }

  v44 = *(v0 + 160) == 91 && v20 == 0xE100000000000000;
  if (v44 || (sub_1B5E63860(91) & 1) != 0)
  {
    sub_1B5E638F0();

    *(v4 - 0x1F00000000000000) = 16385;
    goto LABEL_71;
  }

  v46 = *(v0 + 160) == 93 && v20 == 0xE100000000000000;
  if (v46 || (sub_1B5E63860(93) & 1) != 0 || (*(v0 + 160) == 123 ? (v52 = v20 == 0xE100000000000000) : (v52 = 0), v52 || (sub_1B5E63860(123) & 1) != 0 || (*(v0 + 160) == 125 ? (v55 = v20 == 0xE100000000000000) : (v55 = 0), v55 || (sub_1B5E63860(125) & 1) != 0)))
  {
    sub_1B5E638F0();

    *(v4 - 0x1F00000000000000) = 0;
    goto LABEL_71;
  }

  v64 = *(v0 + 216);
  v65 = *(v0 + 88);
  *(v0 + 32) = *(v0 + 160);
  *(v0 + 40) = v1;
  *(v65 + v64) = 0;
  *(v0 + 220) = 0;

  v66 = swift_task_alloc();
  *(v0 + 184) = v66;
  *v66 = v0;
  sub_1B5E638A8();
LABEL_51:
  *(v33 + 8) = v34;

  return sub_1B5E61640();
}

uint64_t sub_1B5E60FBC()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E34F1C();
  *v4 = v3;
  *v4 = *v1;
  v3[24] = v5;
  v3[25] = v6;
  v3[26] = v0;

  if (v0)
  {
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B5E610DC()
{
  v1 = *(v0 + 200);
  if (!v1)
  {
LABEL_5:
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v7 = *(v0 + 96);
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    *(v0 + 48) = v9;
    *(v0 + 56) = v8;

    sub_1B5EA4D30();
    sub_1B5E61C5C();
    sub_1B5E620F8(&qword_1EB90EDF8, MEMORY[0x1E69E8250], MEMORY[0x1E69E8248]);
    v10 = sub_1B5EA5630();
    (*(v6 + 8))(v5, v7);

    if ((v10 & 1) == 0)
    {

      v17 = v9 == 1702195828 && v8 == 0xE400000000000000;
      if (v17 || (sub_1B5E6391C(1702195828) & 1) != 0)
      {

        **(v0 + 80) = 1;
      }

      else
      {
        v36 = v9 == 0x65736C6166 && v8 == 0xE500000000000000;
        if (v36 || (sub_1B5E6391C(0x65736C6166) & 1) != 0)
        {

          **(v0 + 80) = 0;
        }

        else
        {
          v42 = v9 == 1819047278 && v8 == 0xE400000000000000;
          if (v42 || (sub_1B5E6391C(1819047278) & 1) != 0)
          {
          }

          else
          {
            v43 = *(v0 + 80);
            *v43 = v9;
            v43[1] = v8;
          }
        }
      }

      sub_1B5EA4D40();
      sub_1B5E6384C();
      v18 = sub_1B5E5F324();
      v19(v18);
      v20 = type metadata accessor for JsonParserToken(0);
      sub_1B5E5F324();
      swift_storeEnumTagMultiPayload();
      v21 = sub_1B5E6390C();
      v24 = v20;
      goto LABEL_28;
    }

    v11 = *(v0 + 220);

    v12 = sub_1B5E5F940();
    if (v11 == 1)
    {
      result = sub_1B5E61DA0(v12, v13);
      if ((v15 & 1) == 0)
      {
        sub_1B5E6394C();

        *v5 = v11;
        v16 = MEMORY[0x1E69A08C0];
LABEL_27:
        v32 = *v16;
        sub_1B5EA4D40();
        sub_1B5E6384C();
        (*(v33 + 104))(v5, v32);
        v34 = type metadata accessor for JsonParserToken(0);
        swift_storeEnumTagMultiPayload();
        v21 = v5;
        v22 = 0;
        v23 = 1;
        v24 = v34;
LABEL_28:
        sub_1B5DF3658(v21, v22, v23, v24);

        sub_1B5E2CF4C();

        return v35();
      }

      __break(1u);
    }

    else
    {
      result = sub_1B5E61E00(v12, v13);
      if ((v31 & 1) == 0)
      {
        sub_1B5E6394C();

        *v5 = v11;
        v16 = MEMORY[0x1E69A08C8];
        goto LABEL_27;
      }
    }

    __break(1u);
    return result;
  }

  v2 = *(v0 + 192);
  if (v1 == 0xE100000000000000 && v2 == 44 || ((sub_1B5E5F324(), v25 = sub_1B5EA5F00(), v2 == 125) ? (v26 = v1 == 0xE100000000000000) : (v26 = 0), v26 || (v25 & 1) != 0 || (sub_1B5E5F940(), v27 = sub_1B5EA5F00(), v28 = *(v0 + 192), (v27 & 1) != 0)))
  {
    v3 = sub_1B5E5F940();
    sub_1B5E61CB0(v3, v4);

    goto LABEL_5;
  }

  v29 = sub_1B5E5F940();
  MEMORY[0x1B8C8A360](v29);

  if (v1 == 0xE100000000000000 && v28 == 46)
  {

    v30 = 1;
  }

  else
  {
    v37 = *(v0 + 220);
    v38 = sub_1B5EA5F00();

    v30 = v38 | v37;
  }

  *(v0 + 220) = v30 & 1;
  v39 = swift_task_alloc();
  *(v0 + 184) = v39;
  *v39 = v0;
  sub_1B5E638A8();
  *(v40 + 8) = v41;

  return sub_1B5E61640();
}

uint64_t sub_1B5E61570()
{
  sub_1B5E01DFC();

  sub_1B5E2CF4C();

  return v0();
}

uint64_t sub_1B5E615D8()
{
  sub_1B5E01DFC();

  sub_1B5E2CF4C();

  return v0();
}

uint64_t sub_1B5E61640()
{
  v1[17] = v0;
  sub_1B5DF33E0(&qword_1EB90EE08, &unk_1B5EB7270);
  v1[18] = swift_task_alloc();
  v2 = sub_1B5EA4AA0();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B5E61738, 0, 0);
}

uint64_t sub_1B5E61738()
{
  v1 = *(v0 + 136);
  v2 = type metadata accessor for JsonParser.AsyncIterator(0);
  *(v0 + 176) = v2;
  v3 = *(v2 + 28);
  *(v0 + 208) = v3;
  v4 = *(v1 + v3);
  v5 = *(v2 + 24);
  *(v0 + 212) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  *(v0 + 184) = v7;
  v9 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v10 = v9;
  }

  if (v4 >> 14 == 4 * v10)
  {
    v11 = swift_task_alloc();
    *(v0 + 192) = v11;
    *v11 = v0;
    v12 = sub_1B5E6387C(v11);

    return MEMORY[0x1EEE4A058](v12);
  }

  else
  {
    sub_1B5E62140();

    v13 = sub_1B5E5F324();

    return v14(v13);
  }
}

uint64_t sub_1B5E61860()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  sub_1B5E34F1C();
  *v3 = v2;
  v4 = *v1;
  sub_1B5E34F1C();
  *v5 = v4;
  *(v6 + 200) = v0;

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B5E61960()
{
  if (!*(v0 + 80))
  {
    sub_1B5E63210(v0 + 56, &qword_1EB90ED78, &qword_1B5EB7160);
    goto LABEL_5;
  }

  sub_1B5E5EF30((v0 + 56), v0 + 16);
  sub_1B5EA46D0();
  sub_1B5DFC6BC(v0 + 16, v0 + 96);
  sub_1B5DF33E0(&qword_1EB90EC90, &qword_1B5EB7080);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 208);
    v3 = *(v0 + 160);
    v2 = *(v0 + 168);
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    v6 = *(v0 + 136);
    v7 = (v6 + *(v0 + 212));
    v8 = sub_1B5E6390C();
    sub_1B5DF3658(v8, v9, v10, v5);
    (*(v3 + 32))(v2, v4, v5);
    v11 = sub_1B5EA4A90();
    v13 = v12;

    *v7 = v11;
    v7[1] = v13;
    *(v6 + v1) = 15;
    sub_1B5E62140();
    (*(v3 + 8))(v2, v5);
    sub_1B5DF3FB8((v0 + 16));
LABEL_5:

    v14 = sub_1B5E5F324();

    return v15(v14);
  }

  v17 = *(v0 + 144);
  v18 = *(v0 + 152);
  sub_1B5DF3FB8((v0 + 16));
  sub_1B5DF3658(v17, 1, 1, v18);
  sub_1B5E63210(v17, &qword_1EB90EE08, &unk_1B5EB7270);
  v19 = swift_task_alloc();
  *(v0 + 192) = v19;
  *v19 = v0;
  v20 = sub_1B5E6387C(v19);

  return MEMORY[0x1EEE4A058](v20);
}

uint64_t sub_1B5E61BB4()
{
  sub_1B5E01DFC();

  sub_1B5E2CF4C();

  return v0();
}

unint64_t sub_1B5E61C5C()
{
  result = qword_1EB90EDF0;
  if (!qword_1EB90EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90EDF0);
  }

  return result;
}

uint64_t sub_1B5E61CB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for JsonParser.AsyncIterator(0);
  v7 = *(v6 + 24);
  v8 = *(v6 + 28);
  v9 = *(v3 + v8);
  v10 = (v3 + v7);
  v11 = *(v3 + v7);
  v12 = *(v3 + v7 + 8);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v9 >> 14 == 4 * v13)
  {
  }

  else
  {
    sub_1B5E621E8(v9, v11, v12);
    sub_1B5E625B8();

    sub_1B5EA5730();
  }

  *v10 = a1;
  v10[1] = a2;
  *(v3 + v8) = 15;
  return result;
}

uint64_t sub_1B5E61DA0(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_1B5E630FC(a1, a2, &v4);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1B5E61E00(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v17 = v27 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v22 = v27;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v27 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1B5EA5C00();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v14 = (result + 1);
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  goto LABEL_61;
                }

                v16 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_61;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_61;
                }

                ++v14;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_53;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v20 = *result - 48;
              if (v20 > 9)
              {
                goto LABEL_61;
              }

              v21 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_61;
              }

              v10 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v10 - v9;
              if (__OFSUB__(v10, v9))
              {
                goto LABEL_61;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_53:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v25 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v7 = sub_1B5E626E8(result, a2, 10);
  v25 = v26;
LABEL_63:

  if (v25)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1B5E620F8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B5E62140()
{
  v1 = type metadata accessor for JsonParser.AsyncIterator(0);
  v2 = 0;
  v3 = *(v1 + 28);
  v4 = (v0 + *(v1 + 24));
  v5 = *v4;
  v6 = v4[1];
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (*(v0 + v3) >> 14 != 4 * v7)
  {
    v2 = sub_1B5EA57B0();
    *(v0 + v3) = sub_1B5EA5720();
  }

  return v2;
}

uint64_t sub_1B5E621E8(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    a2 = v4 | (v3 << 16);
  }

  return MEMORY[0x1EEE69100](a1, a2);
}

uint64_t sub_1B5E62234()
{
  sub_1B5E01DFC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B5E622C8;

  return sub_1B5E603B4();
}

uint64_t sub_1B5E622C8()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v1 = *v0;
  sub_1B5E34F1C();
  *v2 = v1;

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E623AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1B5E62478;

  return (sub_1B5E63F20)(a1, a2, a3);
}

uint64_t sub_1B5E62478()
{
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E34F1C();
  *v4 = v3;
  v5 = *v1;
  sub_1B5E34F1C();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_1B5E6258C@<X0>(uint64_t a1@<X8>)
{
  sub_1B5E60240(a1);

  return sub_1B5E636BC(v1);
}

unint64_t sub_1B5E625B8()
{
  result = qword_1EB90EE00;
  if (!qword_1EB90EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90EE00);
  }

  return result;
}

void *sub_1B5E6260C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B5DF33E0(&qword_1EB90EDC8, &qword_1B5EB71A8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

_BYTE *sub_1B5E6267C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

unsigned __int8 *sub_1B5E626E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1B5EA57C0();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B5E62C70(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B5EA5C00();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}