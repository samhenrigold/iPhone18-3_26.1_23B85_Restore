uint64_t sub_20D895D8C()
{
  v1 = v0[15];
  v2 = v0[13];

  swift_bridgeObjectRelease_n();
  v3 = v0[1];

  return v3();
}

uint64_t OnboardingContext.verifyAddressAndSubmitTAF()()
{
  v1[8] = v0;
  sub_20D9752E8();
  v1[9] = sub_20D9752D8();
  v3 = sub_20D975298();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x2822009F8](sub_20D895EAC, v3, v2);
}

uint64_t sub_20D895EAC()
{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 88);
  v0[12] = v2;

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_20D895F74;

  return OnboardingContext.submitTAF(fields:)(v2);
}

uint64_t sub_20D895F74()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_20D8960F4;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_20D896090;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20D896090()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20D8960F4()
{
  v27 = v0;
  v1 = v0[14];

  v0[5] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  if ((swift_dynamicCast() & 1) != 0 && (v3 = v0[6], v0[15] = v3, v4 = sub_20D973368(), v4 == sub_20D973368()))
  {
    v5 = *(v0[8] + 88);
    v0[7] = v5;

    v6 = sub_20D84B8EC(&unk_28249A7D0);
    swift_arrayDestroy();

    v8 = sub_20D815B64(v7);
    sub_20D89D6BC(v8, v6);
    v10 = v9;

    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_20D8D5550(21333, 0xE200000000000000, 0x7972746E756F43, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
      v0[16] = v5;
      v0[7] = v5;

      v14 = sub_20D89F744(v12, v13);
      v0[17] = v14;

      sub_20D973328();
      v15 = sub_20D9732F8();
      v0[18] = v15;
      v16 = swift_task_alloc();
      v0[19] = v16;
      *v16 = v0;
      v16[1] = sub_20D8964A0;

      return MEMORY[0x282172660](v14, v15);
    }

    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v18 = sub_20D9734F8();
    __swift_project_value_buffer(v18, qword_27C840CF8);
    v19 = sub_20D9734D8();
    v20 = sub_20D975458();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D987D40, &v26);
      _os_log_impl(&dword_20D7C9000, v19, v20, "%s Skipping AVS. TAF responses do not contain all AVS required fields.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x20F324260](v22, -1, -1);
      MEMORY[0x20F324260](v21, -1, -1);
    }

    v23 = v0[14];
    sub_20D89F6F0();
    swift_allocError();
    *v24 = v3;
    swift_willThrow();
  }

  else
  {

    swift_willThrow();
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_20D8964A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 160) = a1;

  v5 = *(v3 + 144);
  if (v1)
  {

    v6 = *(v4 + 80);
    v7 = *(v4 + 88);
    v8 = sub_20D896DC0;
  }

  else
  {

    v6 = *(v4 + 80);
    v7 = *(v4 + 88);
    v8 = sub_20D8965E8;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_20D8965E8()
{
  v53 = v0;
  v1 = v0[20];
  if (v1 >> 62)
  {
    if (sub_20D975748())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x20F323850](0, v0[20]);
      goto LABEL_6;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v0[20] + 32);
LABEL_6:

      v3 = sub_20D973358();

      v4 = sub_20D973218();
      v6 = v5;
      v7 = v0[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52[0] = v7;
      sub_20D8D5550(v4, v6, 0x4C73736572646441, 0xEC00000031656E69, isUniquelyReferenced_nonNull_native);
      v0[7] = v7;
      v9 = sub_20D973228();
      sub_20D8ADFBC(v9, v10, 0x4C73736572646441, 0xEC00000032656E69);
      v11 = sub_20D973238();
      sub_20D8ADFBC(v11, v12, 0x4C73736572646441, 0xEC00000033656E69);
      v13 = sub_20D973248();
      v15 = v14;
      v16 = v0[7];
      v17 = swift_isUniquelyReferenced_nonNull_native();
      sub_20D8D5550(v13, v15, 2037672259, 0xE400000000000000, v17);
      v0[7] = v16;
      v18 = sub_20D973258();
      v20 = v19;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      sub_20D8D5550(v18, v20, 0x6574617453, 0xE500000000000000, v21);
      v0[7] = v16;
      v22 = sub_20D9731F8();
      v24 = v23;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      sub_20D8D5550(v22, v24, 0x6F436C6174736F50, 0xEA00000000006564, v25);
      v0[7] = v16;
      v26 = sub_20D973268();
      v28 = v27;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v52[0] = v16;
      sub_20D8D5550(v26, v28, 0x7972746E756F43, 0xE700000000000000, v29);
      v30 = v16;
      v0[21] = v16;
      v0[7] = v16;
      if (qword_27C838488 != -1)
      {
        swift_once();
      }

      v31 = sub_20D9734F8();
      __swift_project_value_buffer(v31, qword_27C840CF8);
      v32 = sub_20D9734D8();
      v33 = sub_20D975478();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v52[0] = v35;
        *v34 = 136315394;
        *(v34 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D987D40, v52);
        *(v34 + 12) = 2080;

        v36 = sub_20D974F58();
        v38 = v37;

        v39 = sub_20D7F4DC8(v36, v38, v52);

        *(v34 + 14) = v39;
        _os_log_impl(&dword_20D7C9000, v32, v33, "%s Responses copy %s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v35, -1, -1);
        MEMORY[0x20F324260](v34, -1, -1);
      }

      v40 = swift_task_alloc();
      v0[22] = v40;
      *v40 = v0;
      v40[1] = sub_20D896C18;

      return OnboardingContext.submitTAF(fields:)(v30);
    }

    __break(1u);
    goto LABEL_22;
  }

  if (qword_27C838488 != -1)
  {
LABEL_22:
    swift_once();
  }

  v42 = sub_20D9734F8();
  __swift_project_value_buffer(v42, qword_27C840CF8);
  v43 = sub_20D9734D8();
  v44 = sub_20D975458();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v52[0] = v46;
    *v45 = 136315138;
    *(v45 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D987D40, v52);
    _os_log_impl(&dword_20D7C9000, v43, v44, "%s Address Verification failed! Will ignore error and throw the first error from submitTAF() received.", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x20F324260](v46, -1, -1);
    MEMORY[0x20F324260](v45, -1, -1);
  }

  v47 = v0[17];
  v48 = v0[14];
  v49 = v0[15];
  sub_20D89F6F0();
  swift_allocError();
  *v50 = v49;
  swift_willThrow();

  v51 = v0[1];

  return v51();
}

uint64_t sub_20D896C18()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_20D896F88;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_20D896D34;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20D896D34()
{
  v1 = v0[17];
  v2 = v0[14];

  v3 = v0[1];

  return v3();
}

uint64_t sub_20D896DC0()
{
  v13 = v0;

  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  __swift_project_value_buffer(v1, qword_27C840CF8);
  v2 = sub_20D9734D8();
  v3 = sub_20D975458();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D987D40, &v12);
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s Address Verification failed! Will ignore error and throw the first error from submitTAF() received.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[15];
  sub_20D89F6F0();
  swift_allocError();
  *v9 = v8;
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_20D896F88()
{
  v1 = v0[17];
  v2 = v0[14];

  v3 = v0[1];

  return v3();
}

uint64_t OnboardingContext.requestOTP()()
{
  v1[8] = v0;
  sub_20D9752E8();
  v1[9] = sub_20D9752D8();
  v3 = sub_20D975298();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x2822009F8](sub_20D8970B0, v3, v2);
}

uint64_t sub_20D8970B0()
{
  v25 = v0;
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[12] = v2;
  if (v2)
  {
    v3 = v0[8];
    swift_beginAccess();
    v4 = *(v3 + 112);
    v0[13] = v4;
    if (v4)
    {
      sub_20D973328();
      v2;
      v5 = v4;
      v6 = sub_20D9732F8();
      v0[14] = v6;
      v23 = (*MEMORY[0x277D181E0] + MEMORY[0x277D181E0]);
      v7 = swift_task_alloc();
      v0[15] = v7;
      *v7 = v0;
      v7[1] = sub_20D8974B8;

      return v23(v5, v6);
    }

    v15 = v2;

    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v16 = sub_20D9734F8();
    __swift_project_value_buffer(v16, qword_27C840CF8);
    v17 = sub_20D9734D8();
    v18 = sub_20D975458();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_20D7F4DC8(0x4F74736575716572, 0xEC00000029285054, v24);
      _os_log_impl(&dword_20D7C9000, v17, v18, "%s Unable to find factor", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x20F324260](v20, -1, -1);
      MEMORY[0x20F324260](v19, -1, -1);
    }

    sub_20D89F4C4();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
  }

  else
  {

    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v9 = sub_20D9734F8();
    __swift_project_value_buffer(v9, qword_27C840CF8);
    v10 = sub_20D9734D8();
    v11 = sub_20D975458();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_20D7F4DC8(0x4F74736575716572, 0xEC00000029285054, v24);
      _os_log_impl(&dword_20D7C9000, v10, v11, "%s Unable to find subscription service", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x20F324260](v13, -1, -1);
      MEMORY[0x20F324260](v12, -1, -1);
    }

    sub_20D89F4C4();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
  }

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_20D8974B8(char a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = *(v3 + 80);
    v5 = *(v3 + 88);
    v6 = sub_20D897798;
  }

  else
  {

    v4 = *(v3 + 80);
    v5 = *(v3 + 88);
    v6 = sub_20D8975D8;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20D8975D8()
{
  v15 = v0;

  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  __swift_project_value_buffer(v1, qword_27C840CF8);
  v2 = sub_20D9734D8();
  v3 = sub_20D975478();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 136);
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_20D7F4DC8(0x4F74736575716572, 0xEC00000029285054, &v14);
    *(v7 + 12) = 1024;
    *(v7 + 14) = v4;
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s Requested OTP with result %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  else
  {
    v10 = *(v0 + 96);
    v9 = *(v0 + 104);
  }

  v11 = *(v0 + 8);
  v12 = *(v0 + 136);

  return v11(v12);
}

uint64_t sub_20D897798()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];

  v4 = v0[1];

  return v4(0);
}

uint64_t OnboardingContext.verifyOTP(otpCode:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = sub_20D972628();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v3[23] = swift_task_alloc();
  v5 = sub_20D9733C8();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  sub_20D9752E8();
  v3[27] = sub_20D9752D8();
  v7 = sub_20D975298();
  v3[28] = v7;
  v3[29] = v6;

  return MEMORY[0x2822009F8](sub_20D8979A8, v7, v6);
}

uint64_t sub_20D8979A8()
{
  v28 = v0;
  v1 = v0[19];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[30] = v2;
  if (v2)
  {
    v3 = v0[19];
    swift_beginAccess();
    v4 = *(v3 + 112);
    v0[31] = v4;
    if (v4)
    {
      sub_20D973328();
      v2;
      v5 = v4;
      v6 = sub_20D9732F8();
      v0[32] = v6;
      v26 = (*MEMORY[0x277D181B0] + MEMORY[0x277D181B0]);
      v7 = swift_task_alloc();
      v0[33] = v7;
      *v7 = v0;
      v7[1] = sub_20D897DD0;
      v8 = v0[26];
      v9 = v0[17];
      v10 = v0[18];

      return v26(v8, v5, v9, v10, v6);
    }

    v18 = v2;

    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v19 = sub_20D9734F8();
    __swift_project_value_buffer(v19, qword_27C840CF8);
    v20 = sub_20D9734D8();
    v21 = sub_20D975458();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_20D7F4DC8(0xD000000000000013, 0x800000020D987D60, v27);
      _os_log_impl(&dword_20D7C9000, v20, v21, "%s Unable to find factor", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x20F324260](v23, -1, -1);
      MEMORY[0x20F324260](v22, -1, -1);
    }

    sub_20D89F4C4();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();
  }

  else
  {

    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v12 = sub_20D9734F8();
    __swift_project_value_buffer(v12, qword_27C840CF8);
    v13 = sub_20D9734D8();
    v14 = sub_20D975458();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_20D7F4DC8(0xD000000000000013, 0x800000020D987D60, v27);
      _os_log_impl(&dword_20D7C9000, v13, v14, "%s Unable to find subscription service", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x20F324260](v16, -1, -1);
      MEMORY[0x20F324260](v15, -1, -1);
    }

    sub_20D89F4C4();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
  }

  v25 = v0[1];

  return v25(0);
}

uint64_t sub_20D897DD0()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_20D898734;
  }

  else
  {

    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_20D897EEC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20D897EEC()
{
  v52 = v0;
  v1 = sub_20D9733A8();
  if (v1)
  {

    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v2 = sub_20D9734F8();
    __swift_project_value_buffer(v2, qword_27C840CF8);
    v3 = v1;
    v4 = sub_20D9734D8();
    v5 = sub_20D975478();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v3;
      *v7 = v1;
      v8 = v3;
      _os_log_impl(&dword_20D7C9000, v4, v5, "Found tokens in verification response: %@", v6, 0xCu);
      sub_20D7E3944(v7, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v7, -1, -1);
      MEMORY[0x20F324260](v6, -1, -1);
    }

    v46 = v0[31];
    v47 = v0[30];
    v9 = v0[25];
    v10 = v0[23];
    v48 = v0[24];
    v49 = v0[26];
    v11 = v0[21];
    v12 = v0[22];
    v50 = v1;
    v13 = v0[19];
    v14 = v0[20];

    v15 = sub_20D9732B8();
    v17 = v16;
    swift_beginAccess();
    v13[17] = v15;
    v13[18] = v17;

    sub_20D893D90();
    v18 = sub_20D9732C8();
    v20 = v19;
    swift_beginAccess();
    v13[19] = v18;
    v13[20] = v20;

    sub_20D8940BC();
    sub_20D9725C8();
    sub_20D9732D8();
    sub_20D972558();
    (*(v11 + 8))(v12, v14);
    (*(v11 + 56))(v10, 0, 1, v14);
    v21 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_expirationDate;
    swift_beginAccess();
    sub_20D89F454(v10, v13 + v21);
    swift_endAccess();
    v1 = v50;
    sub_20D894470();

    sub_20D7E3944(v10, &qword_27C8389E8, &qword_20D9768D0);
    (*(v9 + 8))(v49, v48);
LABEL_7:

    v22 = v0[1];

    return v22(v1 != 0);
  }

  v24 = sub_20D9733B8();
  v0[35] = v25;
  if (!v25)
  {

    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v34 = sub_20D9734F8();
    __swift_project_value_buffer(v34, qword_27C840CF8);
    v35 = sub_20D9734D8();
    v36 = sub_20D975458();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[30];
    v39 = v0[31];
    v40 = v0[25];
    v41 = v0[26];
    v42 = v0[24];
    if (v37)
    {
      v43 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v44 = v51;
      *v43 = 136315138;
      *(v43 + 4) = sub_20D7F4DC8(0xD000000000000013, 0x800000020D987D60, &v51);
      _os_log_impl(&dword_20D7C9000, v35, v36, "%s Account Verification response doesn't contain a token set or auth code.", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      v45 = v44;
      v1 = 0;
      MEMORY[0x20F324260](v45, -1, -1);
      MEMORY[0x20F324260](v43, -1, -1);

      (*(v40 + 8))(v41, v42);
    }

    else
    {

      (*(v40 + 8))(v41, v42);
    }

    goto LABEL_7;
  }

  v26 = v24;
  v27 = v25;
  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v28 = sub_20D9734F8();
  __swift_project_value_buffer(v28, qword_27C840CF8);

  v29 = sub_20D9734D8();
  v30 = sub_20D975478();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v51 = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_20D7F4DC8(v26, v27, &v51);
    _os_log_impl(&dword_20D7C9000, v29, v30, "Found auth code in verification response: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x20F324260](v32, -1, -1);
    MEMORY[0x20F324260](v31, -1, -1);
  }

  v33 = swift_task_alloc();
  v0[36] = v33;
  *v33 = v0;
  v33[1] = sub_20D898524;

  return OnboardingContext.createAccessToken(authCode:)(v26, v27);
}

uint64_t sub_20D898524()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_20D8987D4;
  }

  else
  {
    v5 = sub_20D898678;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20D898678()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[26];
  v4 = v0[24];
  v5 = v0[25];

  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6(1);
}

uint64_t sub_20D898734()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_20D8987D4()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[26];
  v4 = v0[24];
  v5 = v0[25];

  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6(0);
}

uint64_t OnboardingContext.createAccessToken(authCode:)(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = sub_20D972628();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v3[20] = swift_task_alloc();
  sub_20D9752E8();
  v3[21] = sub_20D9752D8();
  v6 = sub_20D975298();
  v3[22] = v6;
  v3[23] = v5;

  return MEMORY[0x2822009F8](sub_20D8989C0, v6, v5);
}

uint64_t sub_20D8989C0()
{
  v23 = v0;
  v1 = v0[16];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[24] = v2;
  if (v2)
  {
    v3 = qword_27C838488;
    v2;
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_20D9734F8();
    v0[25] = __swift_project_value_buffer(v4, qword_27C840CF8);
    v5 = sub_20D9734D8();
    v6 = sub_20D975478();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D987D80, v22);
      _os_log_impl(&dword_20D7C9000, v5, v6, "%s About to generate tokens", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x20F324260](v8, -1, -1);
      MEMORY[0x20F324260](v7, -1, -1);
    }

    sub_20D973328();
    v9 = sub_20D9732F8();
    v0[26] = v9;
    v21 = (*MEMORY[0x277D181C8] + MEMORY[0x277D181C8]);
    v10 = swift_task_alloc();
    v0[27] = v10;
    *v10 = v0;
    v10[1] = sub_20D898D5C;
    v12 = v0[14];
    v11 = v0[15];

    return v21(v12, v11, v9);
  }

  else
  {

    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v14 = sub_20D9734F8();
    __swift_project_value_buffer(v14, qword_27C840CF8);
    v15 = sub_20D9734D8();
    v16 = sub_20D975458();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D987D80, v22);
      _os_log_impl(&dword_20D7C9000, v15, v16, "%s Unable to find subscription service", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x20F324260](v18, -1, -1);
      MEMORY[0x20F324260](v17, -1, -1);
    }

    sub_20D89F4C4();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_20D898D5C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v4 = *(v3 + 176);
    v5 = *(v3 + 184);
    v6 = sub_20D89916C;
  }

  else
  {

    v4 = *(v3 + 176);
    v5 = *(v3 + 184);
    v6 = sub_20D898E78;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20D898E78()
{
  v27 = v0;
  v1 = v0[28];

  v2 = v1;
  v3 = sub_20D9734D8();
  v4 = sub_20D975478();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[28];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D987D80, &v26);
    *(v6 + 12) = 2112;
    *(v6 + 14) = v5;
    *v7 = v5;
    v9 = v5;
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s ---: Tokens %@", v6, 0x16u);
    sub_20D7E3944(v7, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  v10 = v0[28];
  v11 = v0[24];
  v12 = v0[19];
  v13 = v0[20];
  v14 = v0[17];
  v15 = v0[18];
  v16 = v0[16];
  v17 = sub_20D9732B8();
  v19 = v18;
  swift_beginAccess();
  v16[17] = v17;
  v16[18] = v19;

  sub_20D893D90();
  v20 = sub_20D9732C8();
  v22 = v21;
  swift_beginAccess();
  v16[19] = v20;
  v16[20] = v22;

  sub_20D8940BC();
  sub_20D9725C8();
  sub_20D9732D8();
  sub_20D972558();
  (*(v15 + 8))(v12, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  v23 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_expirationDate;
  swift_beginAccess();
  sub_20D89F454(v13, v16 + v23);
  swift_endAccess();
  sub_20D894470();

  sub_20D7E3944(v13, &qword_27C8389E8, &qword_20D9768D0);

  v24 = v0[1];

  return v24();
}

uint64_t sub_20D89916C()
{
  v1 = v0[26];
  v2 = v0[24];

  v3 = v0[1];

  return v3();
}

uint64_t OnboardingContext.fetchServiceLocations()()
{
  v1[22] = v0;
  sub_20D9752E8();
  v1[23] = sub_20D9752D8();
  v2 = sub_20D975298();
  v1[24] = v2;
  v1[25] = v3;

  return MEMORY[0x2822009F8](sub_20D8992BC, v2, v3);
}

uint64_t sub_20D8992BC()
{
  v20 = v0;
  v19[1] = *MEMORY[0x277D85DE8];
  v1 = v0[22];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[26] = v2;
  if (v2)
  {
    v3 = v0[22];
    swift_beginAccess();
    v4 = *(v3 + 144);
    if (v4)
    {
      v5 = *(v3 + 136);
      v6 = v4;
    }

    else
    {
      v5 = 0;
      v6 = 0xE000000000000000;
    }

    v0[27] = v6;
    sub_20D973328();
    v2;

    v15 = sub_20D9732F8();
    v0[28] = v15;
    v16 = MEMORY[0x277D18190];
    v17 = *MEMORY[0x277D18190];
    v18 = swift_task_alloc();
    v0[29] = v18;
    *v18 = v0;
    v18[1] = sub_20D8995A4;

    return ((v17 + v16))(v5, v6, v15);
  }

  else
  {

    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v7 = sub_20D9734F8();
    __swift_project_value_buffer(v7, qword_27C840CF8);
    v8 = sub_20D9734D8();
    v9 = sub_20D975458();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_20D7F4DC8(0xD000000000000017, 0x800000020D987DA0, v19);
      _os_log_impl(&dword_20D7C9000, v8, v9, "%s Unable to find subscription service", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x20F324260](v11, -1, -1);
      MEMORY[0x20F324260](v10, -1, -1);
    }

    v12 = v0[1];
    v13 = MEMORY[0x277D84F90];

    return v12(v13);
  }
}

uint64_t sub_20D8995A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v4 = *(v3 + 192);
    v5 = *(v3 + 200);
    v6 = sub_20D899AC4;
  }

  else
  {

    v4 = *(v3 + 192);
    v5 = *(v3 + 200);
    v6 = sub_20D8996FC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20D8996FC()
{
  v1 = *(v0 + 240);

  if (v1 >> 62)
  {
    v2 = sub_20D975748();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v29 = MEMORY[0x277D84F90];
      sub_20D95D9F8(0, v2 & ~(v2 >> 63), 0);
      if (v2 < 0)
      {
        __break(1u);
      }

      v3 = 0;
      v4 = v29;
      v5 = v1 & 0xC000000000000001;
      v6 = *(v0 + 248);
      v27 = *(v0 + 240) + 32;
      v28 = v5;
      while (1)
      {
        if (v28)
        {
          v7 = MEMORY[0x20F323850](v3, *(v0 + 240));
        }

        else
        {
          v7 = *(v27 + 8 * v3);
        }

        v8 = v7;
        *(v0 + 152) = v7;
        sub_20D971C98();
        swift_allocObject();
        sub_20D971C88();
        sub_20D973288();
        sub_20D8A093C(&unk_27C839ED0, MEMORY[0x277D18178], MEMORY[0x277D18188]);
        v9 = sub_20D971C78();
        if (v6)
        {
        }

        else
        {
          v14 = v9;
          v15 = v10;

          v16 = objc_opt_self();
          v17 = sub_20D9721D8();
          *(v0 + 160) = 0;
          v18 = [v16 JSONObjectWithData:v17 options:0 error:v0 + 160];

          v19 = *(v0 + 160);
          if (v18)
          {
            sub_20D9755A8();
            sub_20D84D374(v14, v15);
            swift_unknownObjectRelease();
          }

          else
          {
            v20 = v19;
            v21 = sub_20D9720F8();

            swift_willThrow();
            sub_20D84D374(v14, v15);

            v30 = 0u;
            v31 = 0u;
          }

          *(v0 + 16) = v30;
          *(v0 + 32) = v31;
          if (*(v0 + 40))
          {
            sub_20D7E39A4((v0 + 16), (v0 + 48));
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C7F0, &qword_20D97B4A0);
            if (swift_dynamicCast())
            {
              v11 = *(v0 + 168);
              if (v11)
              {

                goto LABEL_11;
              }
            }
          }
        }

        v11 = MEMORY[0x277D84F98];
LABEL_11:
        v13 = *(v29 + 16);
        v12 = *(v29 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_20D95D9F8((v12 > 1), v13 + 1, 1);
        }

        v6 = 0;
        ++v3;
        *(v29 + 16) = v13 + 1;
        *(v29 + 8 * v13 + 32) = v11;
        if (v2 == v3)
        {

          goto LABEL_24;
        }
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_24:
  v22 = *(v0 + 208);
  v23 = *(v0 + 176);
  v24 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_serviceLocations;
  swift_beginAccess();
  *(v23 + v24) = v4;

  sub_20D8949D4();

  v25 = *(v0 + 8);

  return v25(v4);
}

uint64_t sub_20D899AC4()
{
  v1 = v0[28];
  v2 = v0[26];

  v3 = v0[1];

  return v3();
}

uint64_t OnboardingContext.createSubscription(serviceLocationID:address:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v6 = sub_20D972698();
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v5[22] = swift_task_alloc();
  v7 = sub_20D972628();
  v5[23] = v7;
  v5[24] = *(v7 - 8);
  v5[25] = swift_task_alloc();
  sub_20D9752E8();
  v5[26] = sub_20D9752D8();
  v9 = sub_20D975298();
  v5[27] = v9;
  v5[28] = v8;

  return MEMORY[0x2822009F8](sub_20D899D04, v9, v8);
}

uint64_t sub_20D899D04()
{
  v25 = v0;
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[18];
  v5 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_expirationDate;
  swift_beginAccess();
  sub_20D7EB7E8(v4 + v5, v3, &qword_27C8389E8, &qword_20D9768D0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[22];

    sub_20D7E3944(v6, &qword_27C8389E8, &qword_20D9768D0);
    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v7 = sub_20D9734F8();
    __swift_project_value_buffer(v7, qword_27C840CF8);
    v8 = sub_20D9734D8();
    v9 = sub_20D975458();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_20D7F4DC8(0xD00000000000002ELL, 0x800000020D987DC0, &v24);
      _os_log_impl(&dword_20D7C9000, v8, v9, "%s No expiration date found", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x20F324260](v11, -1, -1);
      MEMORY[0x20F324260](v10, -1, -1);
    }

    v12 = v0[1];

    return v12(0);
  }

  else
  {
    v14 = v0[18];
    (*(v0[24] + 32))(v0[25], v0[22], v0[23]);
    v15 = *(v14 + 16);
    if (v15)
    {
      v17 = v0[20];
      v16 = v0[21];
      v18 = v0[19];
      v19 = [v15 uniqueIdentifier];
      sub_20D972678();

      v20 = sub_20D972648();
      v22 = v21;
      (*(v17 + 8))(v16, v18);
    }

    else
    {
      v20 = 0;
      v22 = 0xE000000000000000;
    }

    v0[29] = v20;
    v0[30] = v22;
    sub_20D972CD8();

    v23 = swift_task_alloc();
    v0[31] = v23;
    *v23 = v0;
    v23[1] = sub_20D89A044;

    return MEMORY[0x28215C940](v20, v22);
  }
}

uint64_t sub_20D89A044(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 256) = a1;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);

  return MEMORY[0x2822009F8](sub_20D89A16C, v4, v3);
}

uint64_t sub_20D89A16C()
{
  if (v0[32])
  {

    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v1 = sub_20D9734F8();
    v0[33] = __swift_project_value_buffer(v1, qword_27C840CF8);

    v2 = sub_20D9734D8();
    v3 = sub_20D975448();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = v0[16];
      v4 = v0[17];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v35 = v7;
      *v6 = 136315394;
      *(v6 + 4) = sub_20D7F4DC8(0xD00000000000002ELL, 0x800000020D987DC0, &v35);
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_20D7F4DC8(v5, v4, &v35);
      _os_log_impl(&dword_20D7C9000, v2, v3, "%s Given address %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v7, -1, -1);
      MEMORY[0x20F324260](v6, -1, -1);
    }

    v8 = v0[18];
    swift_beginAccess();
    if (*(v8 + 32))
    {
      v9 = *(v8 + 32);
    }

    else
    {
      v9 = 0xE000000000000000;
    }

    v0[34] = v9;
    v22 = v0[18];
    swift_beginAccess();
    if (*(v22 + 144))
    {
      v23 = *(v22 + 144);
    }

    else
    {
      v23 = 0xE000000000000000;
    }

    v0[35] = v23;
    v24 = v0[18];
    swift_beginAccess();
    if (*(v24 + 160))
    {
      v25 = *(v24 + 160);
    }

    else
    {
      v25 = 0xE000000000000000;
    }

    v0[36] = v25;

    sub_20D89301C();
    v0[37] = v26;
    v33 = *MEMORY[0x277D07658] + MEMORY[0x277D07658];
    v27 = swift_task_alloc();
    v0[38] = v27;
    *v27 = v0;
    v27[1] = sub_20D89A67C;

    __asm { BR              X8 }
  }

  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v10 = sub_20D9734F8();
  __swift_project_value_buffer(v10, qword_27C840CF8);

  v11 = sub_20D9734D8();
  v12 = sub_20D975458();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[30];
  if (v13)
  {
    v15 = v0[29];
    v17 = v0[24];
    v16 = v0[25];
    v18 = v0[23];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35 = v20;
    *v19 = 136315138;
    v21 = sub_20D7F4DC8(v15, v14, &v35);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_20D7C9000, v11, v12, "Error fetching Energy Site for %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x20F324260](v20, -1, -1);
    MEMORY[0x20F324260](v19, -1, -1);

    (*(v17 + 8))(v16, v18);
  }

  else
  {
    v29 = v0[24];
    v28 = v0[25];
    v30 = v0[23];

    (*(v29 + 8))(v28, v30);
  }

  v31 = v0[1];

  return v31(0);
}

uint64_t sub_20D89A67C(char a1)
{
  v3 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 312) = v1;

  v4 = *(v3 + 216);
  v5 = *(v3 + 224);
  if (v1)
  {
    v6 = sub_20D89AA28;
  }

  else
  {
    v6 = sub_20D89A83C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20D89A83C()
{
  v17 = v0;

  v1 = sub_20D9734D8();
  v2 = sub_20D975478();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = (v0 + 320);
    v4 = *(v0 + 320);
    v5 = *(v0 + 192);
    v15 = *(v0 + 200);
    v6 = *(v0 + 184);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_20D7F4DC8(0xD00000000000002ELL, 0x800000020D987DC0, &v16);
    *(v7 + 12) = 1024;
    *(v7 + 14) = v4;
    _os_log_impl(&dword_20D7C9000, v1, v2, "%s Created utility subscription: %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);

    (*(v5 + 8))(v15, v6);
  }

  else
  {
    v10 = *(v0 + 192);
    v9 = *(v0 + 200);
    v11 = *(v0 + 184);

    (*(v10 + 8))(v9, v11);
    v3 = (v0 + 320);
  }

  v12 = *v3;

  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t sub_20D89AA28()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[24];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4(0);
}

uint64_t static OnboardingContext.utilityInformation(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_20D89AB08, 0, 0);
}

uint64_t sub_20D89AB08()
{
  sub_20D973328();
  v1 = sub_20D9732F8();
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_20D89ABBC;
  v4 = v0[3];
  v3 = v0[4];

  return MEMORY[0x282172650](v4, v3, v1);
}

uint64_t sub_20D89ABBC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_20D89AD70;
  }

  else
  {

    v4 = sub_20D89ACD8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20D89ACD8()
{
  v11 = v0;
  v1 = v0[7];
  if (v1)
  {
    UtilityConfigurationHelper.init(config:)(v1, &v8);
    v2 = v8;
    v3 = v9;
    v4 = v10;
  }

  else
  {
    v2 = 0;
    v4 = 0;
    v3 = 0uLL;
  }

  v5 = v0[2];
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 24) = v4;
  v6 = v0[1];

  return v6();
}

uint64_t sub_20D89AD70()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20D89ADF4()
{
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EE0, &qword_20D97AC88);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EE8, &qword_20D97AC90);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_20D89AF10;

  return MEMORY[0x282200600](v0 + 2, v2, v3, 0, 0, &unk_20D97ACA0, v4, v2);
}

uint64_t sub_20D89AF10()
{

  return MEMORY[0x2822009F8](sub_20D89B028, 0, 0);
}

uint64_t sub_20D89B040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EE0, &qword_20D97AC88);
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v5 = type metadata accessor for ElectricUtility(0);
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F20, &qword_20D97AE90);
  v3[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F28, &unk_20D97AE98);
  v3[20] = v6;
  v3[21] = *(v6 - 8);
  v3[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D89B25C, 0, 0);
}

uint64_t sub_20D89B25C()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v27 = **(v0 + 80);
    v3 = sub_20D975318();
    v4 = *(v3 - 8);
    v26 = *(v4 + 56);
    v24 = v3;
    v25 = (v4 + 48);
    v23 = (v4 + 8);
    v5 = (v1 + 40);
    do
    {
      v28 = v2;
      v9 = *(v0 + 184);
      v8 = *(v0 + 192);
      v10 = *(v5 - 1);
      v11 = *v5;
      v26(v8, 1, 1, v3);
      v12 = swift_allocObject();
      v12[2] = 0;
      v13 = v12 + 2;
      v12[3] = 0;
      v12[4] = v10;
      v12[5] = v11;
      sub_20D7EB7E8(v8, v9, &unk_27C839F30, &qword_20D978400);
      LODWORD(v9) = (*v25)(v9, 1, v3);

      v14 = *(v0 + 184);
      if (v9 == 1)
      {
        sub_20D7E3944(*(v0 + 184), &unk_27C839F30, &qword_20D978400);
        if (*v13)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_20D975308();
        (*v23)(v14, v3);
        if (*v13)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v15 = sub_20D975298();
          v16 = v17;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v15 = 0;
      v16 = 0;
LABEL_10:
      v18 = swift_allocObject();
      *(v18 + 16) = &unk_20D97AEB8;
      *(v18 + 24) = v12;

      if (v16 | v15)
      {
        v6 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v15;
        *(v0 + 40) = v16;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 192);
      *(v0 + 48) = 1;
      *(v0 + 56) = v6;
      *(v0 + 64) = v27;
      swift_task_create();

      sub_20D7E3944(v7, &unk_27C839F30, &qword_20D978400);
      v5 += 2;
      v2 = v28 - 1;
      v3 = v24;
    }

    while (v28 != 1);
  }

  sub_20D9752A8();
  *(v0 + 200) = MEMORY[0x277D84F90];
  v19 = swift_task_alloc();
  *(v0 + 208) = v19;
  *v19 = v0;
  v19[1] = sub_20D89B5A8;
  v20 = *(v0 + 152);
  v21 = *(v0 + 160);

  return MEMORY[0x2822002E8](v20, 0, 0, v21);
}

uint64_t sub_20D89B5A8()
{

  return MEMORY[0x2822009F8](sub_20D89B6A4, 0, 0);
}

uint64_t sub_20D89B6A4()
{
  v1 = v0[19];
  if ((*(v0[13] + 48))(v1, 1, v0[12]) == 1)
  {
    v2 = v0[25];
    v3 = v0[9];
    (*(v0[21] + 8))(v0[22], v0[20]);
    *v3 = v2;

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[15];
    v7 = v0[16];
    v8 = v0[14];
    sub_20D8A0878(v1, v8);
    if ((*(v7 + 48))(v8, 1, v6) == 1)
    {
      sub_20D7E3944(v0[14], &qword_27C839EE0, &qword_20D97AC88);
    }

    else
    {
      v10 = v0[17];
      v9 = v0[18];
      sub_20D8A069C(v0[14], v9);
      sub_20D8A05DC(v9, v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = v0[25];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_20D8D45F8(0, v12[2] + 1, 1, v0[25]);
      }

      v14 = v12[2];
      v13 = v12[3];
      if (v14 >= v13 >> 1)
      {
        v12 = sub_20D8D45F8((v13 > 1), v14 + 1, 1, v12);
      }

      v15 = v0[17];
      v16 = v0[16];
      sub_20D8A0640(v0[18]);
      v12[2] = v14 + 1;
      sub_20D8A069C(v15, v12 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14);
      v0[25] = v12;
    }

    v17 = swift_task_alloc();
    v0[26] = v17;
    *v17 = v0;
    v17[1] = sub_20D89B5A8;
    v18 = v0[19];
    v19 = v0[20];

    return MEMORY[0x2822002E8](v18, 0, 0, v19);
  }
}

uint64_t sub_20D89B940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_20D9721C8();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = type metadata accessor for ElectricUtility(0);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B78, &qword_20D97A5A0);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D89BAA4, 0, 0);
}

uint64_t sub_20D89BAA4()
{
  sub_20D973328();
  v1 = sub_20D9732F8();
  v0[13] = v1;
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_20D89BB58;
  v4 = v0[3];
  v3 = v0[4];

  return MEMORY[0x282172650](v4, v3, v1);
}

uint64_t sub_20D89BB58(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 120) = a1;

  v4 = *(v3 + 104);
  if (v1)
  {

    v5 = sub_20D89C4F4;
  }

  else
  {

    v5 = sub_20D89BCA0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20D89BCA0()
{
  v38 = v0;
  v1 = v0[15];
  if (!v1)
  {
    (*(v0[9] + 56))(v0[2], 1, 1, v0[8]);
LABEL_8:

    v25 = v0[1];

    return v25();
  }

  v2 = sub_20D9731A8();
  v3 = sub_20D973168();

  sub_20D9732E8();
  sub_20D9721B8();

  v4 = sub_20D9731D8();
  if (v5)
  {
    v6 = v5;
    v32 = v4;
  }

  else
  {
    v32 = sub_20D9731B8();
    v6 = v7;
  }

  v8 = v0[12];
  v9 = v0[10];
  v10 = v0[8];
  v11 = v0[6];
  v33 = v0[11];
  v34 = v0[5];
  v30 = v0[3];
  v31 = v0[4];
  v12 = sub_20D9731B8();
  v14 = v13;
  sub_20D7EB7E8(v8, v9 + *(v10 + 32), &qword_27C838B78, &qword_20D97A5A0);
  v15 = v1;
  UtilityConfigurationHelper.init(config:)(v15, &v35);
  v16 = v35;
  v17 = v37;
  *v9 = v30;
  v9[1] = v31;
  v9[2] = v32;
  v9[3] = v6;
  v9[4] = v12;
  v9[5] = v14;
  v9[6] = 0;
  v18 = v9 + *(v10 + 36);
  *v18 = v16;
  *(v18 + 8) = v36;
  *(v18 + 3) = v17;
  sub_20D7EB7E8(v8, v33, &qword_27C838B78, &qword_20D97A5A0);
  if ((*(v11 + 48))(v33, 1, v34) == 1)
  {
    v20 = v0[11];
    v19 = v0[12];

    sub_20D7E3944(v19, &qword_27C838B78, &qword_20D97A5A0);

    sub_20D7E3944(v20, &qword_27C838B78, &qword_20D97A5A0);
    v22 = v0[9];
    v21 = v0[10];
    v23 = v0[8];
    v24 = v0[2];
    sub_20D8A05DC(v21, v24);
    (*(v22 + 56))(v24, 0, 1, v23);
    sub_20D8A0640(v21);
    goto LABEL_8;
  }

  (*(v0[6] + 32))(v0[7], v0[11], v0[5]);
  v27 = objc_opt_self();

  v0[16] = [v27 sharedSession];
  v28 = swift_task_alloc();
  v0[17] = v28;
  *v28 = v0;
  v28[1] = sub_20D89C008;
  v29 = v0[7];

  return MEMORY[0x28211ED00](v29, 0);
}

uint64_t sub_20D89C008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[18] = a1;
  v6[19] = a2;
  v6[20] = a3;

  v7 = v5[16];
  if (v3)
  {

    v8 = sub_20D89C59C;
  }

  else
  {

    v8 = sub_20D89C154;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_20D89C154()
{
  v42 = v0;
  v2 = v0[18];
  v1 = v0[19];
  sub_20D8A08E8(v2, v1);
  v3 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v4 = sub_20D9721D8();
  v5 = [v3 initWithData_];

  sub_20D84D374(v2, v1);
  if (v5)
  {
    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v6 = v0[15];
    v7 = sub_20D9734F8();
    __swift_project_value_buffer(v7, qword_27C840CF8);
    v8 = v6;
    v9 = sub_20D9734D8();
    v10 = sub_20D975478();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[20];
    v39 = v0[18];
    v40 = v0[19];
    v13 = v0[15];
    v14 = v0[12];
    v16 = v0[6];
    v15 = v0[7];
    v17 = v0[5];
    if (v11)
    {
      v38 = v0[12];
      v18 = swift_slowAlloc();
      v37 = v15;
      v19 = swift_slowAlloc();
      v41 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D987F60, &v41);
      *(v18 + 12) = 2080;
      v20 = sub_20D9731B8();
      v36 = v12;
      v22 = sub_20D7F4DC8(v20, v21, &v41);

      *(v18 + 14) = v22;
      _os_log_impl(&dword_20D7C9000, v9, v10, "%s Fetched logo for %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v19, -1, -1);
      MEMORY[0x20F324260](v18, -1, -1);

      sub_20D84D374(v39, v40);
      (*(v16 + 8))(v37, v17);
      v23 = v38;
    }

    else
    {

      sub_20D84D374(v39, v40);
      (*(v16 + 8))(v15, v17);
      v23 = v14;
    }

    sub_20D7E3944(v23, &qword_27C838B78, &qword_20D97A5A0);
    *(v0[10] + 48) = v5;
  }

  else
  {
    v24 = v0[20];
    v25 = v0[15];
    v26 = v0[12];
    v28 = v0[6];
    v27 = v0[7];
    v29 = v0[5];
    sub_20D84D374(v0[18], v0[19]);

    (*(v28 + 8))(v27, v29);
    sub_20D7E3944(v26, &qword_27C838B78, &qword_20D97A5A0);
  }

  v31 = v0[9];
  v30 = v0[10];
  v32 = v0[8];
  v33 = v0[2];
  sub_20D8A05DC(v30, v33);
  (*(v31 + 56))(v33, 0, 1, v32);
  sub_20D8A0640(v30);

  v34 = v0[1];

  return v34();
}

uint64_t sub_20D89C4F4()
{
  (*(v0[9] + 56))(v0[2], 1, 1, v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20D89C59C()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);

  (*(v3 + 8))(v2, v4);
  sub_20D7E3944(v1, &qword_27C838B78, &qword_20D97A5A0);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 64);
  v8 = *(v0 + 16);
  sub_20D8A05DC(v5, v8);
  (*(v6 + 56))(v8, 0, 1, v7);
  sub_20D8A0640(v5);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t OnboardingContext.sort(foundUtilities:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = sub_20D9752E8();
  v2[9] = sub_20D9752D8();

  return MEMORY[0x2822009F8](sub_20D89C724, 0, 0);
}

uint64_t sub_20D89C724()
{
  v1 = v0[6];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EE0, &qword_20D97AC88);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EE8, &qword_20D97AC90);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *(v4 + 16) = v1;
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_20D89C840;

  return MEMORY[0x282200600](v0 + 5, v2, v3, 0, 0, &unk_20D97ACB0, v4, v2);
}

uint64_t sub_20D89C840()
{

  return MEMORY[0x2822009F8](sub_20D89C958, 0, 0);
}

uint64_t sub_20D89C958()
{
  *(v0 + 96) = *(v0 + 40);
  v2 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D89C9D8, v2, v1);
}

uint64_t sub_20D89C9D8()
{
  v15 = v0;
  v14[0] = v0[12];

  sub_20D89D898(v14);

  v1 = v14[0];
  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_27C840CF8);

  v3 = sub_20D9734D8();
  v4 = sub_20D975478();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_20D7F4DC8(0xD000000000000015, 0x800000020D987DF0, v14);
    *(v5 + 12) = 2080;
    v7 = type metadata accessor for ElectricUtility(0);
    v8 = MEMORY[0x20F323400](v1, v7);
    v10 = sub_20D7F4DC8(v8, v9, v14);

    *(v5 + 14) = v10;
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s Sorted utility list %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v6, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  v11 = v0[7];
  swift_beginAccess();
  *(v11 + 72) = v1;

  v12 = v0[1];

  return v12();
}

HomeEnergyUI::OnboardingContextError_optional __swiftcall OnboardingContextError.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_20D89CC60@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_20D89CC80(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D8A0588();
  v5 = sub_20D7DDF10();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t sub_20D89CCF0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20D973158();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20D8A093C(&qword_27C839F40, MEMORY[0x277D180E0], MEMORY[0x277D180F0]);
  v33 = a2;
  v11 = sub_20D974F78();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_20D8A093C(&qword_27C839F48, MEMORY[0x277D180E0], MEMORY[0x277D180F8]);
      v21 = sub_20D974FD8();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_20D96F9F0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20D89CFD0(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_20D975888();
  MEMORY[0x20F323A50](a2);
  v6 = sub_20D9758A8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_20D96FC94(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_20D89D0C8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_20D975888();
  sub_20D975158();
  v8 = sub_20D9758A8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_20D9757C8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_20D96FDE0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_20D89D218(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_20D975878();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_20D96FF60(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_20D89D2F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

double sub_20D89D35C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a1;
  }

  return result;
}

uint64_t sub_20D89D3BC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_20D975888();
  sub_20D975158();
  v6 = sub_20D9758A8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_20D9757C8() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_20D9703F8();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_20D89D4F8(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_20D89D4F8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_20D9755F8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_20D975888();

        sub_20D975158();
        v10 = sub_20D9758A8();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void sub_20D89D6BC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v10 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v20 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
            return;
          }

          if (v20 >= v8)
          {
            goto LABEL_22;
          }

          v7 = *(v4 + 8 * v20);
          ++v10;
        }

        while (!v7);
        v10 = v20;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v11 = (*(v2 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
      v13 = *v11;
      v12 = v11[1];
      sub_20D975888();

      sub_20D975158();
      v14 = sub_20D9758A8();
      v15 = -1 << *(a1 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v17 = ~v15;
      while (1)
      {
        v18 = (*(a1 + 48) + 16 * v16);
        v19 = *v18 == v13 && v18[1] == v12;
        if (v19 || (sub_20D9757C8() & 1) != 0)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }
}

void sub_20D89D898(uint64_t *a1)
{
  v2 = *(type metadata accessor for ElectricUtility(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20D9562BC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20D89D940(v5);
  *a1 = v3;
}

void sub_20D89D940(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20D975798();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ElectricUtility(0);
        v6 = sub_20D975268();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ElectricUtility(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20D89DC9C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20D89DA6C(0, v2, 1, a1);
  }
}

uint64_t sub_20D89DA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = type metadata accessor for ElectricUtility(0);
  v8 = MEMORY[0x28223BE20](v40);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v28 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *(v15 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v35 = *a4;
    v29 = v18;
    v22 = v35 + v18 * a3;
LABEL_5:
    v33 = v19;
    v34 = a3;
    v31 = v22;
    v32 = v21;
    v23 = v21;
    while (1)
    {
      sub_20D8A05DC(v22, v17);
      sub_20D8A05DC(v19, v13);
      v24 = *(v17 + 3);
      v38 = *(v17 + 2);
      v39 = v24;
      v25 = *(v13 + 3);
      v36 = *(v13 + 2);
      v37 = v25;
      sub_20D7E1EF8();
      v26 = sub_20D975558();
      sub_20D8A0640(v13);
      result = sub_20D8A0640(v17);
      if (v26 != -1)
      {
LABEL_4:
        a3 = v34 + 1;
        v19 = v33 + v29;
        v21 = v32 - 1;
        v22 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      sub_20D8A069C(v22, v10);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_20D8A069C(v10, v19);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_20D89DC9C(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v6 = v4;
  v109 = a1;
  v120 = type metadata accessor for ElectricUtility(0);
  v115 = *(v120 - 8);
  v9 = MEMORY[0x28223BE20](v120);
  v110 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v119 = &v105 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v105 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v105 - v16;
  v117 = a3;
  v18 = a3[1];
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = MEMORY[0x277D84F90];
    v108 = a4;
    while (1)
    {
      v21 = v19;
      v22 = v19 + 1;
      v112 = v20;
      if (v22 >= v18)
      {
        v29 = v22;
      }

      else
      {
        v118 = v18;
        v107 = v6;
        v23 = *v117;
        v24 = *(v115 + 72);
        v5 = *v117 + v24 * v22;
        sub_20D8A05DC(v5, v17);
        sub_20D8A05DC(v23 + v24 * v21, v15);
        v25 = *(v17 + 3);
        v123 = *(v17 + 2);
        v124 = v25;
        v26 = *(v15 + 3);
        v121 = *(v15 + 2);
        v122 = v26;
        sub_20D7E1EF8();
        v116 = sub_20D975558();
        sub_20D8A0640(v15);
        sub_20D8A0640(v17);
        v106 = v21;
        v27 = v21 + 2;
        v28 = v23 + v24 * (v21 + 2);
        while (1)
        {
          v29 = v118;
          if (v118 == v27)
          {
            break;
          }

          v30 = v116 == -1;
          sub_20D8A05DC(v28, v17);
          sub_20D8A05DC(v5, v15);
          v31 = *(v17 + 3);
          v123 = *(v17 + 2);
          v124 = v31;
          v32 = *(v15 + 3);
          v121 = *(v15 + 2);
          v122 = v32;
          v33 = sub_20D975558();
          sub_20D8A0640(v15);
          sub_20D8A0640(v17);
          ++v27;
          v28 += v24;
          v5 += v24;
          if (((v30 ^ (v33 != -1)) & 1) == 0)
          {
            v29 = v27 - 1;
            break;
          }
        }

        v6 = v107;
        a4 = v108;
        v21 = v106;
        if (v116 == -1)
        {
          if (v29 < v106)
          {
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
            return;
          }

          if (v106 < v29)
          {
            v34 = v29;
            v35 = v24 * (v29 - 1);
            v5 = v29 * v24;
            v118 = v29;
            v36 = v106;
            v37 = v106 * v24;
            v114 = v24;
            do
            {
              if (v36 != --v34)
              {
                v38 = *v117;
                if (!*v117)
                {
                  goto LABEL_134;
                }

                sub_20D8A069C(v38 + v37, v110);
                if (v37 < v35 || v38 + v37 >= (v38 + v5))
                {
                  swift_arrayInitWithTakeFrontToBack();
                  v24 = v114;
                }

                else
                {
                  v24 = v114;
                  if (v37 != v35)
                  {
                    swift_arrayInitWithTakeBackToFront();
                  }
                }

                sub_20D8A069C(v110, v38 + v35);
              }

              ++v36;
              v35 -= v24;
              v5 -= v24;
              v37 += v24;
            }

            while (v36 < v34);
            v6 = v107;
            a4 = v108;
            v21 = v106;
            v29 = v118;
          }
        }
      }

      v39 = v117[1];
      if (v29 >= v39)
      {
        goto LABEL_32;
      }

      if (__OFSUB__(v29, v21))
      {
        goto LABEL_126;
      }

      if (v29 - v21 >= a4)
      {
        goto LABEL_32;
      }

      if (__OFADD__(v21, a4))
      {
        goto LABEL_127;
      }

      if (v21 + a4 >= v39)
      {
        v5 = v117[1];
      }

      else
      {
        v5 = v21 + a4;
      }

      if (v5 < v21)
      {
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      if (v29 == v5)
      {
LABEL_32:
        v5 = v29;
        if (v29 < v21)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v106 = v21;
        v107 = v6;
        v86 = *v117;
        v87 = *(v115 + 72);
        v88 = *v117 + v87 * (v29 - 1);
        v89 = -v87;
        v90 = v21 - v29;
        v111 = v87;
        v91 = v86 + v29 * v87;
        v113 = v5;
        do
        {
          v118 = v29;
          a4 = v91;
          v114 = v90;
          v116 = v88;
          v92 = v88;
          do
          {
            sub_20D8A05DC(a4, v17);
            sub_20D8A05DC(v92, v15);
            v93 = *(v17 + 3);
            v123 = *(v17 + 2);
            v124 = v93;
            v94 = *(v15 + 3);
            v121 = *(v15 + 2);
            v122 = v94;
            sub_20D7E1EF8();
            v95 = sub_20D975558();
            sub_20D8A0640(v15);
            sub_20D8A0640(v17);
            if (v95 != -1)
            {
              break;
            }

            if (!v86)
            {
              goto LABEL_131;
            }

            v96 = v119;
            sub_20D8A069C(a4, v119);
            swift_arrayInitWithTakeFrontToBack();
            sub_20D8A069C(v96, v92);
            v92 += v89;
            a4 += v89;
          }

          while (!__CFADD__(v90++, 1));
          v29 = v118 + 1;
          v88 = v116 + v111;
          v5 = v113;
          v90 = v114 - 1;
          v91 += v111;
        }

        while (v118 + 1 != v113);
        v21 = v106;
        v6 = v107;
        if (v113 < v106)
        {
          goto LABEL_125;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v20 = v112;
      }

      else
      {
        v20 = sub_20D8D42B4(0, *(v112 + 2) + 1, 1, v112);
      }

      a4 = *(v20 + 2);
      v40 = *(v20 + 3);
      v41 = a4 + 1;
      if (a4 >= v40 >> 1)
      {
        v20 = sub_20D8D42B4((v40 > 1), a4 + 1, 1, v20);
      }

      *(v20 + 2) = v41;
      v42 = &v20[16 * a4];
      *(v42 + 4) = v21;
      *(v42 + 5) = v5;
      v43 = *v109;
      if (!*v109)
      {
        goto LABEL_135;
      }

      v113 = v5;
      if (a4)
      {
        v44 = v43;
        while (1)
        {
          v5 = v41 - 1;
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v45 = *(v20 + 4);
            v46 = *(v20 + 5);
            v55 = __OFSUB__(v46, v45);
            v47 = v46 - v45;
            v48 = v55;
LABEL_53:
            if (v48)
            {
              goto LABEL_114;
            }

            v61 = &v20[16 * v41];
            v63 = *v61;
            v62 = *(v61 + 1);
            v64 = __OFSUB__(v62, v63);
            v65 = v62 - v63;
            v66 = v64;
            if (v64)
            {
              goto LABEL_117;
            }

            v67 = &v20[16 * v5 + 32];
            v69 = *v67;
            v68 = *(v67 + 1);
            v55 = __OFSUB__(v68, v69);
            v70 = v68 - v69;
            if (v55)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v65, v70))
            {
              goto LABEL_121;
            }

            if (v65 + v70 >= v47)
            {
              if (v47 < v70)
              {
                v5 = v41 - 2;
              }

              goto LABEL_74;
            }

            goto LABEL_67;
          }

          v71 = &v20[16 * v41];
          v73 = *v71;
          v72 = *(v71 + 1);
          v55 = __OFSUB__(v72, v73);
          v65 = v72 - v73;
          v66 = v55;
LABEL_67:
          if (v66)
          {
            goto LABEL_116;
          }

          v74 = &v20[16 * v5];
          v76 = *(v74 + 4);
          v75 = *(v74 + 5);
          v55 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v55)
          {
            goto LABEL_119;
          }

          if (v77 < v65)
          {
            goto LABEL_3;
          }

LABEL_74:
          a4 = v5 - 1;
          if (v5 - 1 >= v41)
          {
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

          if (!*v117)
          {
            goto LABEL_132;
          }

          v82 = v20;
          v83 = *&v20[16 * a4 + 32];
          v84 = *&v20[16 * v5 + 40];
          sub_20D89E558(*v117 + *(v115 + 72) * v83, *v117 + *(v115 + 72) * *&v20[16 * v5 + 32], *v117 + *(v115 + 72) * v84, v44);
          if (v6)
          {
            goto LABEL_108;
          }

          if (v84 < v83)
          {
            goto LABEL_110;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v82 = sub_20D9560B0(v82);
          }

          if (a4 >= *(v82 + 2))
          {
            goto LABEL_111;
          }

          v85 = &v82[16 * a4];
          *(v85 + 4) = v83;
          *(v85 + 5) = v84;
          v125 = v82;
          sub_20D956024(v5);
          v20 = v125;
          v41 = *(v125 + 2);
          if (v41 <= 1)
          {
            goto LABEL_3;
          }
        }

        v49 = &v20[16 * v41 + 32];
        v50 = *(v49 - 64);
        v51 = *(v49 - 56);
        v55 = __OFSUB__(v51, v50);
        v52 = v51 - v50;
        if (v55)
        {
          goto LABEL_112;
        }

        v54 = *(v49 - 48);
        v53 = *(v49 - 40);
        v55 = __OFSUB__(v53, v54);
        v47 = v53 - v54;
        v48 = v55;
        if (v55)
        {
          goto LABEL_113;
        }

        v56 = &v20[16 * v41];
        v58 = *v56;
        v57 = *(v56 + 1);
        v55 = __OFSUB__(v57, v58);
        v59 = v57 - v58;
        if (v55)
        {
          goto LABEL_115;
        }

        v55 = __OFADD__(v47, v59);
        v60 = v47 + v59;
        if (v55)
        {
          goto LABEL_118;
        }

        if (v60 >= v52)
        {
          v78 = &v20[16 * v5 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v55 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v55)
          {
            goto LABEL_122;
          }

          if (v47 < v81)
          {
            v5 = v41 - 2;
          }

          goto LABEL_74;
        }

        goto LABEL_53;
      }

LABEL_3:
      v18 = v117[1];
      v19 = v113;
      a4 = v108;
      if (v113 >= v18)
      {
        goto LABEL_96;
      }
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_96:
  v5 = *v109;
  if (!*v109)
  {
    goto LABEL_136;
  }

  a4 = v20;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v98 = a4;
  }

  else
  {
LABEL_129:
    v98 = sub_20D9560B0(a4);
  }

  v125 = v98;
  v99 = *(v98 + 2);
  if (v99 >= 2)
  {
    v100 = v115;
    while (*v117)
    {
      a4 = v99 - 1;
      v101 = *&v98[16 * v99];
      v102 = v98;
      v103 = *&v98[16 * v99 + 24];
      sub_20D89E558(*v117 + *(v100 + 72) * v101, *v117 + *(v100 + 72) * *&v98[16 * v99 + 16], *v117 + *(v100 + 72) * v103, v5);
      if (v6)
      {
        goto LABEL_108;
      }

      if (v103 < v101)
      {
        goto LABEL_123;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = sub_20D9560B0(v102);
      }

      if (v99 - 2 >= *(v102 + 2))
      {
        goto LABEL_124;
      }

      v104 = &v102[16 * v99];
      *v104 = v101;
      *(v104 + 1) = v103;
      v125 = v102;
      sub_20D956024(a4);
      v98 = v125;
      v99 = *(v125 + 2);
      if (v99 <= 1)
      {
        goto LABEL_108;
      }
    }

    goto LABEL_133;
  }

LABEL_108:
}

uint64_t sub_20D89E558(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = a4;
  v46 = type metadata accessor for ElectricUtility(0);
  v7 = MEMORY[0x28223BE20](v46);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v40 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v14 != -1)
  {
    v16 = (a2 - a1) / v14;
    v53 = a1;
    v17 = v45;
    v52 = v45;
    if (v16 < v15 / v14)
    {
      v18 = v16 * v14;
      if (v45 < a1 || a1 + v18 <= v45)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v45 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v17 = v45;
LABEL_17:
      v20 = v17 + v18;
      v51 = v17 + v18;
      if (v18 >= 1 && a2 < a3)
      {
        do
        {
          sub_20D8A05DC(a2, v12);
          sub_20D8A05DC(v17, v9);
          v22 = *(v12 + 3);
          v49 = *(v12 + 2);
          v50 = v22;
          v23 = *(v9 + 3);
          v47 = *(v9 + 2);
          v48 = v23;
          sub_20D7E1EF8();
          v24 = sub_20D975558();
          sub_20D8A0640(v9);
          sub_20D8A0640(v12);
          if (v24 == -1)
          {
            if (a1 < a2 || a1 >= a2 + v14)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }

          else
          {
            if (a1 < v17 || a1 >= v17 + v14)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v17)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v52 = v17 + v14;
            v17 += v14;
          }

          a1 += v14;
          v53 = a1;
        }

        while (v17 < v20 && a2 < a3);
      }

LABEL_59:
      sub_20D9560DC(&v53, &v52, &v51);
      return 1;
    }

    v19 = v15 / v14 * v14;
    v44 = v9;
    if (v45 < a2 || a2 + v19 <= v45)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v45 == a2)
      {
LABEL_39:
        v25 = v17 + v19;
        if (v19 >= 1)
        {
          v26 = -v14;
          v27 = v17 + v19;
          v28 = a3;
          v41 = v26;
          v42 = a1;
          do
          {
            v40 = v25;
            v29 = a2 + v26;
            v43 = a2;
            while (1)
            {
              if (a2 <= a1)
              {
                v53 = a2;
                v51 = v40;
                goto LABEL_59;
              }

              v31 = v28;
              v32 = v28 + v26;
              v33 = v27 + v26;
              sub_20D8A05DC(v33, v12);
              v34 = v12;
              v35 = v44;
              sub_20D8A05DC(v29, v44);
              v36 = *(v34 + 24);
              v49 = *(v34 + 16);
              v50 = v36;
              v37 = *(v35 + 24);
              v47 = *(v35 + 16);
              v48 = v37;
              sub_20D7E1EF8();
              v38 = sub_20D975558();
              v39 = v35;
              v12 = v34;
              sub_20D8A0640(v39);
              sub_20D8A0640(v34);
              if (v38 == -1)
              {
                break;
              }

              v25 = v33;
              v28 = v32;
              if (v31 < v27 || v32 >= v27)
              {
                swift_arrayInitWithTakeFrontToBack();
                a1 = v42;
              }

              else
              {
                a1 = v42;
                if (v31 != v27)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v27 = v33;
              v30 = v33 > v45;
              v26 = v41;
              a2 = v43;
              if (!v30)
              {
                goto LABEL_57;
              }
            }

            v28 = v32;
            if (v31 < v43 || v32 >= v43)
            {
              a2 = v29;
              swift_arrayInitWithTakeFrontToBack();
              v26 = v41;
              a1 = v42;
            }

            else
            {
              a2 = v29;
              v26 = v41;
              a1 = v42;
              if (v31 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }
          }

          while (v27 > v45);
        }

LABEL_57:
        v53 = a2;
        v51 = v25;
        goto LABEL_59;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v17 = v45;
    goto LABEL_39;
  }

LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_20D89EA1C(uint64_t a1)
{
  v1 = MEMORY[0x277D84FA0];
  v37 = MEMORY[0x277D84FA0];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 56);
    while (1)
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v6 = v4 == 1701667150 && v5 == 0xE400000000000000;
      if (v6 || (sub_20D9757C8() & 1) != 0 || (v4 == 0x6D614E7473726946 ? (v7 = v5 == 0xE900000000000065) : (v7 = 0), v7 || (sub_20D9757C8() & 1) != 0 || v4 == 0x656D614E7473614CLL && v5 == 0xE800000000000000 || (sub_20D9757C8() & 1) != 0))
      {
        v8 = sub_20D975098();
        sub_20D89D0C8(&v36, v8, v9);
      }

      else if ((v4 != 0x656E6F6850 || v5 != 0xE500000000000000) && (sub_20D9757C8() & 1) == 0 && (v4 != 0x6C69616D45 || v5 != 0xE500000000000000) && (sub_20D9757C8() & 1) == 0 && (v4 != 0x4C73736572646441 || v5 != 0xEC00000031656E69))
      {
        v12 = sub_20D9757C8();
        v13 = v4 == 2037672259 && v5 == 0xE400000000000000;
        v14 = v13;
        if ((v12 & 1) == 0 && !v14)
        {
          v15 = sub_20D9757C8();
          v16 = v4 == 0x6574617453 && v5 == 0xE500000000000000;
          v17 = v16;
          if ((v15 & 1) == 0 && !v17 && (sub_20D9757C8() & 1) == 0 && (v4 != 0x6F436C6174736F50 || v5 != 0xEA00000000006564) && (sub_20D9757C8() & 1) == 0 && (v4 != 0x7972746E756F43 || v5 != 0xE700000000000000) && (sub_20D9757C8() & 1) == 0)
          {
            goto LABEL_18;
          }
        }
      }

      v10 = sub_20D975098();
      sub_20D89D0C8(&v36, v10, v11);

LABEL_18:
      v3 += 5;
      if (!--v2)
      {
        v1 = v37;
        break;
      }
    }
  }

  v18 = *(v1 + 16);
  if (v18)
  {
    v19 = sub_20D815C94(*(v1 + 16), 0);
    v20 = sub_20D8177F0(&v36, v19 + 4, v18, v1);
    sub_20D817AE4(v36);
    if (v20 == v18)
    {
      goto LABEL_59;
    }

    __break(1u);
  }

  v19 = MEMORY[0x277D84F90];
LABEL_59:
  v36 = MEMORY[0x277D84F90];
  v21 = sub_20D9679F4(v19);

  sub_20D95AFAC(v21);
  v22 = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  MEMORY[0x20F3233D0]();
  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D975258();
  }

  sub_20D975278();
  v23 = v36;
  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v24 = sub_20D9734F8();
  __swift_project_value_buffer(v24, qword_27C840CF8);
  v25 = sub_20D9734D8();
  v26 = sub_20D975478();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v35 = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_20D7F4DC8(0xD000000000000018, 0x800000020D987FC0, &v35);
    *(v27 + 12) = 2080;

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7D0, &qword_20D97AC00);
    v30 = MEMORY[0x20F323400](v23, v29);
    v32 = v31;

    v33 = sub_20D7F4DC8(v30, v32, &v35);

    *(v27 + 14) = v33;
    _os_log_impl(&dword_20D7C9000, v25, v26, "%s Contact keys: %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v28, -1, -1);
    MEMORY[0x20F324260](v27, -1, -1);
  }

  return v23;
}

uint64_t sub_20D89F098(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839268, &qword_20D978090);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v26 - v9;
  v11 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v27[0] = a3;
    v27[1] = a4;
    v26[0] = a1;
    v26[1] = a2;
    v12 = sub_20D9726E8();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    sub_20D7E1EF8();
    v13 = sub_20D975568();
    v15 = v14;
    v17 = v16;
    sub_20D7E3944(v10, &qword_27C839268, &qword_20D978090);
    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v18 = (((v13 ^ v15) & 0xFFFFFFFFFFFFC000) != 0) & ~v17;
    v19 = sub_20D9734F8();
    __swift_project_value_buffer(v19, qword_27C840CF8);

    v20 = sub_20D9734D8();
    v21 = sub_20D975478();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_13;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v27[0] = v23;
    *v22 = 136315650;
    *(v22 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D987FA0, v27);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_20D7F4DC8(a1, a2, v27);
    *(v22 + 22) = 1024;
  }

  else
  {
    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v24 = sub_20D9734F8();
    __swift_project_value_buffer(v24, qword_27C840CF8);

    v20 = sub_20D9734D8();
    v21 = sub_20D975478();

    if (!os_log_type_enabled(v20, v21))
    {

      return 1;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v27[0] = v23;
    *v22 = 136315650;
    *(v22 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D987FA0, v27);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_20D7F4DC8(a1, a2, v27);
    *(v22 + 22) = 1024;
    v18 = 1;
  }

  *(v22 + 24) = v18;
  _os_log_impl(&dword_20D7C9000, v20, v21, "%s Regex pattern: %s Validation: %{BOOL}d", v22, 0x1Cu);
  swift_arrayDestroy();
  MEMORY[0x20F324260](v23, -1, -1);
  MEMORY[0x20F324260](v22, -1, -1);
LABEL_13:

  return v18;
}

uint64_t sub_20D89F454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_20D89F4C4()
{
  result = qword_27C839EB8;
  if (!qword_27C839EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839EB8);
  }

  return result;
}

uint64_t sub_20D89F518(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBDB70]);
  v3 = sub_20D975078();
  v4 = [v2 initWithStringValue_];

  v5 = [v4 fullyQualifiedDigits];
  if (!v5)
  {
    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v6 = sub_20D9734F8();
    __swift_project_value_buffer(v6, qword_27C840CF8);
    v7 = sub_20D9734D8();
    v8 = sub_20D975478();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D987F80, &v14);
      _os_log_impl(&dword_20D7C9000, v7, v8, "%s could not get fullyQualifiedDigits", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x20F324260](v10, -1, -1);
      MEMORY[0x20F324260](v9, -1, -1);
    }

    v5 = [v4 digits];
  }

  v11 = v5;
  v12 = sub_20D975098();

  return v12;
}

unint64_t sub_20D89F6F0()
{
  result = qword_27C839EC8;
  if (!qword_27C839EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839EC8);
  }

  return result;
}

uint64_t sub_20D89F744(uint64_t a1, __n128 a2)
{
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  sub_20D8D4A48(0x4C73736572646441, 0xEC00000031656E69);
  if (v3)
  {

    if (!*(a1 + 16))
    {
      goto LABEL_18;
    }
  }

  else if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  sub_20D8D4A48(0x4C73736572646441, 0xEC00000032656E69);
  if (v4)
  {

    if (*(a1 + 16))
    {
      goto LABEL_6;
    }

LABEL_18:
    if (!*(a1 + 16))
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

LABEL_6:
  sub_20D8D4A48(0x4C73736572646441, 0xEC00000033656E69);
  if (v5)
  {

    if (!*(a1 + 16))
    {
      goto LABEL_18;
    }
  }

  else if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  sub_20D8D4A48(2037672259, 0xE400000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_18;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_29;
  }

LABEL_19:
  sub_20D8D4A48(0x6574617453, 0xE500000000000000);
  if (v7)
  {

    if (!*(a1 + 16))
    {
      goto LABEL_29;
    }
  }

  else if (!*(a1 + 16))
  {
    goto LABEL_29;
  }

  sub_20D8D4A48(0x6F436C6174736F50, 0xEA00000000006564);
  if (v8)
  {

    if (!*(a1 + 16))
    {
      goto LABEL_29;
    }
  }

  else if (!*(a1 + 16))
  {
    goto LABEL_29;
  }

  sub_20D8D4A48(0x7972746E756F43, 0xE700000000000000);
  if (v9)
  {
  }

LABEL_29:
  v10 = objc_allocWithZone(sub_20D973278());
  return sub_20D973208();
}

uint64_t sub_20D89FA28(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20D805810;

  return sub_20D89B040(a1, a2, v6);
}

unint64_t sub_20D89FADC()
{
  result = qword_27C839EF0;
  if (!qword_27C839EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839EF0);
  }

  return result;
}

uint64_t type metadata accessor for OnboardingContext(uint64_t a1)
{
  result = qword_27C839F00;
  if (!qword_27C839F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20D89FB84(uint64_t a1)
{
  sub_20D8A0484(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20D8A0484(uint64_t a1)
{
  if (!qword_281126E20)
  {
    sub_20D972628();
    v1 = sub_20D975508();
    if (!v2)
    {
      atomic_store(v1, &qword_281126E20);
    }
  }
}

uint64_t getEnumTagSinglePayload for OnboardingContextError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_20D8A0588()
{
  result = qword_27C839F10;
  if (!qword_27C839F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839F10);
  }

  return result;
}

uint64_t sub_20D8A05DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ElectricUtility(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D8A0640(uint64_t a1)
{
  v2 = type metadata accessor for ElectricUtility(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D8A069C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ElectricUtility(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D8A0700(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D7EB52C;

  return sub_20D89B940(a1, v4, v5, v7, v6);
}

uint64_t sub_20D8A07C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20D7EB52C;

  return sub_20D84B000(a1, v4);
}

uint64_t sub_20D8A0878(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EE0, &qword_20D97AC88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D8A08E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_20D8A093C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static UtilityIntegrationStrings.electricitySurplusTitle.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "electricity usage summary title", 31, 2);
}

uint64_t static UtilityIntegrationStrings.electricityUsageTitle.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_20D975058();
  MEMORY[0x28223BE20](v1 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v2 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D9750F8();
}

uint64_t static UtilityIntegrationStrings.aboutElectricityUsage.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "About Electricity Usage title", 29, 2);
}

uint64_t static UtilityIntegrationStrings.aboutEnergyUsageDescription.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "About Electricity Usage body", 28, 2);
}

uint64_t static UtilityIntegrationStrings.howElectricityMeasured.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "How Electricity is Measured title", 33, 2);
}

uint64_t static UtilityIntegrationStrings.viewingElectricityUsage.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "Viewing Electricity Usage title", 31, 2);
}

uint64_t static UtilityIntegrationStrings.viewingElectricityUsageDescription.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "Viewing Electricity Usage body", 30, 2);
}

uint64_t static UtilityIntegrationStrings.whatImpactsElectricityUsage.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "What impacts electricity usage title", 36, 2);
}

uint64_t static UtilityIntegrationStrings.whatImpactsElectricityUsageDescription.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "What impacts electricity usage body", 35, 2);
}

uint64_t static UtilityIntegrationStrings.highestConsumers.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "Highest Consumers title", 23, 2);
}

uint64_t static UtilityIntegrationStrings.electricSystemsBullet.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "Highest Consumers list element", 30, 2);
}

uint64_t static UtilityIntegrationStrings.electricWaterHeatersBullet.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "Highest Consumers list element", 30, 2);
}

uint64_t static UtilityIntegrationStrings.evChargingBullet.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "Highest Consumers list element", 30, 2);
}

uint64_t static UtilityIntegrationStrings.refrigeratorsBullet.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "Highest Consumers list element", 30, 2);
}

uint64_t static UtilityIntegrationStrings.washersAndDryersBullet.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "Highest Consumers list element", 30, 2);
}

uint64_t static UtilityIntegrationStrings.lightingBullet.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "Highest Consumers list element", 30, 2);
}

uint64_t static UtilityIntegrationStrings.ceilingFansBullet.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "Lower Consumers list element", 28, 2);
}

uint64_t static UtilityIntegrationStrings.toasterOvensBullet.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "Lower Consumers list element", 28, 2);
}

uint64_t static UtilityIntegrationStrings.ledLighting.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "Lower Consumers list element", 28, 2);
}

uint64_t static UtilityIntegrationStrings.aboutElectricityRatesTitle.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "About Electricity Rates title", 29, 2);
}

uint64_t static UtilityIntegrationStrings.aboutElectricityRatesDescription.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "About Electricity Rates body", 28, 2);
}

uint64_t static UtilityIntegrationStrings.touTitle.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "Time-of-Use Plan title", 22, 2);
}

uint64_t static UtilityIntegrationStrings.touDescription.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "Time-of-Use Plan body", 21, 2);
}

uint64_t static UtilityIntegrationStrings.tieredPlanDescription.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "Tiered Plan body 1", 18, 2);
}

uint64_t static UtilityIntegrationStrings.tieredPlanSecondDescription.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "Tiered Plan body 2", 18, 2);
}

uint64_t static UtilityIntegrationStrings.fixedPlanDescription.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "Fixed Rate Plan body", 20, 2);
}

uint64_t sub_20D8A2B68(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v6 = sub_20D9726E8();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_20D975058();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v12 = qword_28112ABE8;
  v13 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v11, 0, 0, v12, v8, a3, a4, 2);
}

uint64_t static UtilityIntegrationStrings.flatPlanDescription.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "Flat Rate Plan body", 19, 2);
}

uint64_t static UtilityIntegrationStrings.unsupportedPlanTitle.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "", 0, 2);
}

uint64_t static UtilityIntegrationStrings.unsupportedPlanDescription.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "Unsupported Rate Plan body", 26, 2);
}

uint64_t static UtilityIntegrationStrings.electricityRatesTitle.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "Text to show electricity rates widget title", 43, 2);
}

uint64_t _s12HomeEnergyUI25UtilityIntegrationStringsV33howElectricityMeasuredDescriptionSSvgZ_0()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D975038();
  MEMORY[0x28223BE20](v6 - 8);
  sub_20D975028();
  sub_20D975018();
  v11 = 10;
  sub_20D85CBD0();
  sub_20D975578();
  sub_20D975008();

  sub_20D975018();
  v11 = 100;
  sub_20D975578();
  sub_20D975008();

  sub_20D975018();
  v11 = 1;
  sub_20D975578();
  sub_20D975008();

  sub_20D975018();
  v11 = 500;
  sub_20D975578();
  sub_20D975008();

  sub_20D975018();
  v11 = 1;
  sub_20D975578();
  sub_20D975008();

  sub_20D975018();
  sub_20D975048();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v7 = qword_28112ABE8;
  v8 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v7, v2, "How Electricity is Measured body. %1$@ is 10, %2$@ is 100, %3$@ is 1, %4$@ is 500, %5$@ is 1", 92, 2);
}

uint64_t _s12HomeEnergyUI25UtilityIntegrationStringsV20electricityUsageFrom11utilityNameS2S_tFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_20D9726E8();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20D975058();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D975038();
  MEMORY[0x28223BE20](v8 - 8);
  sub_20D975028();
  sub_20D975018();
  sub_20D975008();
  sub_20D975018();
  v13 = 24;
  sub_20D85CBD0();
  sub_20D975578();
  sub_20D975008();

  sub_20D975018();
  v13 = 72;
  sub_20D975578();
  sub_20D975008();

  sub_20D975018();
  sub_20D975048();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v9 = qword_28112ABE8;
  v10 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v7, 0, 0, v9, v4, "%1$@ is <utility name>, %2$@ is 24 and %3$@ is 72", 49, 2);
}

uint64_t _s12HomeEnergyUI25UtilityIntegrationStringsV17utilityRateFooter0G4NameS2S_tFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_20D9726E8();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_20D975058();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_20D975038();
  MEMORY[0x28223BE20](v8 - 8);
  sub_20D975028();
  sub_20D975018();
  sub_20D975008();
  sub_20D975018();
  sub_20D975048();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v9 = qword_28112ABE8;
  v10 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v7, 0, 0, v9, v4, "%1$@ is <utility name>", 22, 2);
}

uint64_t sub_20D8A392C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_20D972C58();
  v7 = MEMORY[0x28223BE20](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x277D84F90];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20D95D484(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_20D95D484((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_20D8A3C64(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), void (*a7)(BOOL, uint64_t, uint64_t))
{
  v26 = a7;
  v29 = a6;
  v33 = a1;
  v34 = a2;
  v10 = a4(0);
  v32 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v31 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v30 = *(a3 + 16);
  if (v30)
  {
    v16 = 0;
    v17 = MEMORY[0x277D84F90];
    v27 = a5;
    v28 = a3;
    while (v16 < *(a3 + 16))
    {
      v18 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v19 = *(v32 + 72);
      sub_20D8AC45C(a3 + v18 + v19 * v16, v15, a5);
      v20 = v33(v15);
      if (v7)
      {
        sub_20D8ACF38(v15, v29);

        goto LABEL_15;
      }

      if (v20)
      {
        sub_20D8AC4C4(v15, v31, a5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26(0, *(v17 + 16) + 1, 1);
          v17 = v35;
        }

        v23 = *(v17 + 16);
        v22 = *(v17 + 24);
        if (v23 >= v22 >> 1)
        {
          v26(v22 > 1, v23 + 1, 1);
          v17 = v35;
        }

        *(v17 + 16) = v23 + 1;
        v24 = v17 + v18 + v23 * v19;
        a5 = v27;
        result = sub_20D8AC4C4(v31, v24, v27);
        a3 = v28;
      }

      else
      {
        result = sub_20D8ACF38(v15, v29);
      }

      if (v30 == ++v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
LABEL_15:

    return v17;
  }

  return result;
}

uint64_t sub_20D8A3EBC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D974048();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for FeaturedHoursChart(0);
  sub_20D7EB7E8(v1 + *(v10 + 20), v9, &qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20D973D58();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_20D975468();
    v13 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t FeaturedHoursChart.body.getter@<X0>(uint64_t a1@<X8>)
{
  v110 = a1;
  v99 = type metadata accessor for FeaturedHoursChart(0);
  v100 = *(v99 - 1);
  MEMORY[0x28223BE20](v99);
  v115 = v2;
  v103 = &v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F50, &qword_20D97AF50);
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v101 = &v86 - v3;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F58, &qword_20D97AF58);
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v117 = &v86 - v4;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F60, &qword_20D97AF60);
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v106 = &v86 - v5;
  v89 = sub_20D972398();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_20D972308();
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_20D972318();
  v95 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_20D973D58();
  v92 = *(v93 - 8);
  v10 = MEMORY[0x28223BE20](v93);
  v91 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v90 = &v86 - v12;
  v116 = sub_20D972408();
  v114 = *(v116 - 8);
  v13 = MEMORY[0x28223BE20](v116);
  v86 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v86 - v16;
  MEMORY[0x28223BE20](v15);
  v113 = &v86 - v18;
  v19 = sub_20D972628();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v86 - v24;
  v26 = type metadata accessor for FeaturedHoursInfo(0);
  v27 = *(v1 + *(v26 + 24));
  (*(v20 + 16))(v25, v1, v19);
  sub_20D972498();
  v122 = v23;
  v123 = v25;

  v28 = sub_20D8A3C64(sub_20D8A5024, v121, v27, type metadata accessor for FeaturedInterval, type metadata accessor for FeaturedInterval, type metadata accessor for FeaturedInterval, sub_20D95DA18);
  v119 = v23;
  v120 = v25;
  sub_20D95A5E4(sub_20D8A5044, v118, v28);
  v112 = v29;

  v30 = *(v20 + 8);
  v30(v23, v19);
  v31 = v19;
  v32 = v1;
  v30(v25, v31);
  sub_20D974398();
  v111 = sub_20D9744C8();

  v34 = *(v1 + *(v26 + 56));
  if ((v34 & 1) != 0 || (v35 = v90, sub_20D8A3EBC(v90), v36 = v92, v37 = v91, v38 = v93, (*(v92 + 104))(v91, *MEMORY[0x277CDFA00], v93), v39 = sub_20D973D48(), v40 = *(v36 + 8), v40(v37, v38), v33 = (v40)(v35, v38), (v39 & 1) == 0))
  {
    MEMORY[0x20F320230](v33);
    v47 = v94;
    sub_20D9722E8();
    sub_20D9722D8();
    (*(v96 + 8))(v47, v98);
    sub_20D972278();
    (*(v95 + 8))(v9, v97);
    v48 = *(v114 + 8);
    v98 = (v114 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v48(v17, v116);
  }

  else
  {
    v41 = v86;
    MEMORY[0x20F320230](v33);
    v42 = v94;
    sub_20D9722E8();
    sub_20D9722D8();
    (*(v96 + 8))(v42, v98);
    sub_20D972278();
    (*(v95 + 8))(v9, v97);
    v43 = *(v114 + 8);
    v98 = (v114 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v44 = v41;
    v45 = v116;
    v43(v44, v116);
    v46 = v87;
    sub_20D972388();
    sub_20D9723D8();
    (*(v88 + 8))(v46, v89);
    v43(v17, v45);
  }

  sub_20D8AB5C4(*(v32 + *(v99 + 6)), v34, v128);
  v99 = &v86;
  MEMORY[0x28223BE20](v49);
  *(&v86 - 4) = v32;
  *(&v86 - 3) = v128;
  v50 = v111;
  *(&v86 - 2) = v112;
  *(&v86 - 1) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F68, &qword_20D97AF68);
  sub_20D8AB77C();
  v51 = v101;
  sub_20D973878();
  v52 = v103;
  sub_20D8AC45C(v32, v103, type metadata accessor for FeaturedHoursChart);
  v53 = *(v100 + 80);
  v54 = swift_allocObject();
  sub_20D8AC4C4(v52, v54 + ((v53 + 16) & ~v53), type metadata accessor for FeaturedHoursChart);
  sub_20D974C48();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839FB0, &qword_20D97AFB0);
  v56 = sub_20D7EBC4C(&qword_281127080, &qword_27C839F50, &qword_20D97AF50, MEMORY[0x277CBB3F8]);
  v100 = sub_20D8ABBAC();
  v57 = v104;
  sub_20D974658();

  (*(v102 + 8))(v51, v57);
  v58 = v32;
  sub_20D8AC45C(v32, v52, type metadata accessor for FeaturedHoursChart);
  v59 = swift_allocObject();
  v60 = v128[7];
  *(v59 + 112) = v128[6];
  *(v59 + 128) = v60;
  *(v59 + 144) = v129;
  v61 = v128[3];
  *(v59 + 48) = v128[2];
  *(v59 + 64) = v61;
  v62 = v128[5];
  *(v59 + 80) = v128[4];
  *(v59 + 96) = v62;
  v63 = v128[1];
  *(v59 + 16) = v128[0];
  *(v59 + 32) = v63;
  sub_20D8AC4C4(v52, v59 + ((v53 + 152) & ~v53), type metadata accessor for FeaturedHoursChart);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839FB8, &qword_20D97AFB8);
  v124 = v57;
  v125 = v55;
  v126 = v56;
  v127 = v100;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FC0, &qword_20D97AFC0);
  v67 = sub_20D8ABCB4();
  v124 = v66;
  v125 = v67;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = v106;
  v70 = v107;
  v71 = v117;
  sub_20D974648();

  v72 = (*(v105 + 8))(v71, v70);
  MEMORY[0x28223BE20](v72);
  *(&v86 - 4) = v58;
  *(&v86 - 3) = v128;
  v73 = v113;
  *(&v86 - 2) = v112;
  *(&v86 - 1) = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839FC8, &qword_20D97AFC8);
  v124 = v70;
  v125 = v64;
  v126 = OpaqueTypeConformance2;
  v127 = v68;
  swift_getOpaqueTypeConformance2();
  sub_20D8ABD7C();
  v74 = v110;
  v75 = v109;
  sub_20D9745E8();

  (*(v108 + 8))(v69, v75);
  LOBYTE(v64) = sub_20D974338();
  sub_20D973AD8();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;

  v84 = v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A000, &qword_20D97B000) + 36);
  *v84 = v64;
  *(v84 + 8) = v77;
  *(v84 + 16) = v79;
  *(v84 + 24) = v81;
  *(v84 + 32) = v83;
  *(v84 + 40) = 0;
  return (*(v114 + 8))(v73, v116);
}

uint64_t sub_20D8A5064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v117 = a4;
  v116 = a3;
  v143 = a2;
  v132 = a5;
  v125 = sub_20D973978();
  v121 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v120 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839FA8, &unk_20D97E110);
  v124 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v122 = &v106 - v7;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A120, &qword_20D97B278);
  v130 = *(v131 - 8);
  v8 = MEMORY[0x28223BE20](v131);
  v129 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v123 = &v106 - v10;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F78, &qword_20D97AF78);
  v127 = *(v128 - 8);
  v11 = MEMORY[0x28223BE20](v128);
  v141 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v140 = &v106 - v13;
  v137 = sub_20D972628();
  v111 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v15 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A128, &qword_20D97B280);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  KeyPath = &v106 - v21;
  MEMORY[0x28223BE20](v20);
  v133 = &v106 - v22;
  OpaqueTypeConformance2 = sub_20D973648();
  v106 = *(OpaqueTypeConformance2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeConformance2);
  v24 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F70, &qword_20D97AF70);
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v110 = &v106 - v25;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A130, &qword_20D97B288);
  v119 = *(v139 - 8);
  v26 = MEMORY[0x28223BE20](v139);
  v138 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v142 = &v106 - v28;
  v136 = type metadata accessor for FeaturedHoursChart(0);
  v107 = *(v136 - 8);
  v29 = MEMORY[0x28223BE20](v136);
  v109 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v106 - v31;
  v33 = sub_20D975448();
  v135 = a1;
  sub_20D8AC45C(a1, v32, type metadata accessor for FeaturedHoursChart);
  sub_20D8ADABC();
  v34 = sub_20D9754F8();
  v35 = os_log_type_enabled(v34, v33);
  v118 = v19;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v148 = v37;
    *v36 = 136315138;
    sub_20D877FD4();
    v39 = v38;
    v41 = v40;
    sub_20D8ACF38(v32, type metadata accessor for FeaturedHoursChart);
    v42 = sub_20D7F4DC8(v39, v41, &v148);

    *(v36 + 4) = v42;
    _os_log_impl(&dword_20D7C9000, v34, v33, "%s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x20F324260](v37, -1, -1);
    MEMORY[0x20F324260](v36, -1, -1);
  }

  else
  {

    sub_20D8ACF38(v32, type metadata accessor for FeaturedHoursChart);
  }

  v43 = type metadata accessor for FeaturedHoursInfo(0);
  v44 = v135;
  v45 = (v135 + v43[8]);
  v47 = *v45;
  v46 = v45[1];
  *&v148 = v47;
  *(&v148 + 1) = v46;
  v48 = sub_20D7E1EF8();
  v49 = v137;
  sub_20D973708();
  v50 = (v44 + v43[9]);
  v51 = v50[1];
  *&v148 = *v50;
  *(&v148 + 1) = v51;

  sub_20D972498();
  v115 = v48;
  sub_20D973708();
  (*(v111 + 8))(v15, v49);

  LODWORD(v111) = *(v44 + *(v136 + 24));
  if (v111 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    sub_20D973B78();
  }

  sub_20D973638();
  *&v148 = *(v44 + v43[7]);
  v52 = MEMORY[0x277CDF6A8];
  v53 = MEMORY[0x277CBB2F8];
  v54 = MEMORY[0x277CDF6A0];
  v55 = v110;
  v56 = OpaqueTypeConformance2;
  sub_20D9735B8();
  (*(v106 + 8))(v24, v56);
  *&v148 = v56;
  *(&v148 + 1) = v52;
  *&v149 = v53;
  *(&v149 + 1) = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = v114;
  sub_20D9735F8();
  (*(v113 + 8))(v55, v57);
  v144 = v116;
  KeyPath = swift_getKeyPath();
  v58 = v109;
  sub_20D8AC45C(v44, v109, type metadata accessor for FeaturedHoursChart);
  v59 = (*(v107 + 80) + 16) & ~*(v107 + 80);
  v60 = (v108 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  sub_20D8AC4C4(v58, v61 + v59, type metadata accessor for FeaturedHoursChart);
  v62 = v61 + v60;
  v63 = v143;
  v64 = *(v143 + 112);
  *(v62 + 96) = *(v143 + 96);
  *(v62 + 112) = v64;
  *(v62 + 128) = *(v63 + 128);
  v65 = *(v63 + 48);
  *(v62 + 32) = *(v63 + 32);
  *(v62 + 48) = v65;
  v66 = *(v63 + 80);
  *(v62 + 64) = *(v63 + 64);
  *(v62 + 80) = v66;
  v67 = *(v63 + 16);
  *v62 = *v63;
  *(v62 + 16) = v67;
  *(v61 + ((v60 + 143) & 0xFFFFFFFFFFFFFFF8)) = v117;

  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A138, &qword_20D97B2B0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A140, &qword_20D97B2B8);
  v116 = sub_20D7EBC4C(&qword_281126EC0, &qword_27C83A138, &qword_20D97B2B0, MEMORY[0x277D83980]);
  v113 = sub_20D8AC52C(&unk_281127720, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F80, &qword_20D97AF80);
  v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F88, &qword_20D97AF88);
  v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F90, &qword_20D97AF90);
  v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F98, &qword_20D97AF98);
  v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FA0, &unk_20D97AFA0);
  *&v148 = v57;
  *(&v148 + 1) = OpaqueTypeConformance2;
  v73 = swift_getOpaqueTypeConformance2();
  *&v148 = v72;
  *(&v148 + 1) = v73;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = sub_20D7EBC4C(&qword_281127040, &qword_27C839F98, &qword_20D97AF98, MEMORY[0x277CDD828]);
  *&v148 = v70;
  *(&v148 + 1) = v71;
  v76 = v135;
  *&v149 = v74;
  *(&v149 + 1) = v75;
  v77 = swift_getOpaqueTypeConformance2();
  *&v148 = v69;
  *(&v148 + 1) = v77;
  v78 = swift_getOpaqueTypeConformance2();
  *&v148 = v68;
  *(&v148 + 1) = v78;
  swift_getOpaqueTypeConformance2();
  sub_20D974B88();
  v79 = (v76 + v43[10]);
  v81 = *v79;
  v80 = v79[1];
  *&v148 = v81;
  *(&v148 + 1) = v80;
  sub_20D973708();
  if (v111)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    sub_20D973B78();
  }

  v82 = v120;
  sub_20D973958();
  *&v148 = *(v76 + v43[12]);
  v83 = MEMORY[0x277CE0F78];
  v84 = MEMORY[0x277CBB450];
  v85 = MEMORY[0x277CE0F60];
  v86 = v122;
  v87 = v125;
  sub_20D9735B8();
  (*(v121 + 8))(v82, v87);
  v88 = v76 + v43[13];
  v89 = *(v88 + 16);
  v148 = *v88;
  v149 = v89;
  v150 = *(v88 + 32);
  v144 = v87;
  v145 = v83;
  v146 = v84;
  v147 = v85;
  swift_getOpaqueTypeConformance2();
  v90 = v123;
  v91 = v126;
  sub_20D973628();
  (*(v124 + 8))(v86, v91);
  v92 = v119;
  v93 = v138;
  (*(v119 + 16))(v138, v142, v139);
  v144 = v93;
  v94 = v127;
  v96 = v140;
  v95 = v141;
  v97 = v128;
  (*(v127 + 16))(v141, v140, v128);
  v145 = v95;
  v98 = v130;
  v99 = v129;
  v100 = v131;
  (*(v130 + 16))(v129, v90, v131);
  v146 = v99;
  sub_20D8EEC20(&v144, v132);
  v101 = *(v98 + 8);
  v101(v90, v100);
  v102 = *(v94 + 8);
  v102(v96, v97);
  v103 = *(v92 + 8);
  v104 = v139;
  v103(v142, v139);
  v101(v99, v100);
  v102(v141, v97);
  return (v103)(v138, v104);
}

uint64_t sub_20D8A60E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v85 = a4;
  v64 = a3;
  v89 = a5;
  v7 = sub_20D973788();
  v87 = *(v7 - 8);
  v88 = v7;
  MEMORY[0x28223BE20](v7);
  v86 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_20D974118();
  v81 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v69 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A128, &qword_20D97B280);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v61[1] = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v66 = sub_20D973648();
  v63 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v62 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F70, &qword_20D97AF70);
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v92 = v61 - v14;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839FA0, &unk_20D97AFA0);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v67 = v61 - v15;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F90, &qword_20D97AF90);
  v73 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v93 = v61 - v16;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F88, &qword_20D97AF88);
  v79 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v75 = v61 - v17;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F80, &qword_20D97AF80);
  v80 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v77 = v61 - v18;
  v19 = sub_20D972628();
  v76 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FeaturedInterval(0);
  sub_20D972498();
  v23 = type metadata accessor for FeaturedHoursInfo(0);
  v24 = (a2 + *(v23 + 32));
  v26 = *v24;
  v25 = v24[1];
  v95 = v26;
  v96 = v25;
  sub_20D7E1EF8();
  v91 = a1;
  sub_20D973708();
  v65 = v23;
  v27 = (a2 + *(v23 + 36));
  v29 = *v27;
  v28 = v27[1];
  v95 = v29;
  v96 = v28;
  v74 = v21;
  v94 = v19;
  sub_20D973708();
  v30 = *(type metadata accessor for FeaturedHoursChart(0) + 24);
  v90 = a2;
  if (*(a2 + v30) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    sub_20D973B78();
  }

  v31 = v62;
  sub_20D973638();
  v95 = *(v91 + *(v22 + 36));
  v32 = MEMORY[0x277CDF6A8];
  v33 = MEMORY[0x277CBB2F8];
  v34 = MEMORY[0x277CDF6A0];
  v35 = v66;
  sub_20D9735B8();
  (*(v63 + 8))(v31, v35);
  sub_20D9741C8();
  v36 = *MEMORY[0x277CE0118];
  v37 = v81;
  v64 = *(v81 + 104);
  v38 = v69;
  v39 = v84;
  v64(v69, v36, v84);
  v95 = v35;
  v96 = v32;
  v97 = v33;
  v98 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v67;
  v42 = v70;
  v43 = v92;
  sub_20D9735D8();
  v44 = *(v37 + 8);
  v44(v38, v39);
  (*(v68 + 8))(v43, v42);
  v64(v38, v36, v39);
  v95 = v42;
  v96 = OpaqueTypeConformance2;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v72;
  sub_20D9735A8();
  v44(v38, v39);
  (*(v71 + 8))(v41, v46);
  v47 = v86;
  sub_20D973778();
  v48 = sub_20D974C48();
  v92 = v49;
  MEMORY[0x28223BE20](v48);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F98, &qword_20D97AF98);
  v95 = v46;
  v96 = v45;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = sub_20D7EBC4C(&qword_281127040, &qword_27C839F98, &qword_20D97AF98, MEMORY[0x277CDD828]);
  v51 = v75;
  v52 = v93;
  v53 = v78;
  sub_20D973588();
  (*(v87 + 8))(v47, v88);
  (*(v73 + 8))(v52, v53);
  v95 = v53;
  v96 = v50;
  v97 = v59;
  v98 = v60;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = v77;
  v56 = v82;
  sub_20D9735F8();
  (*(v79 + 8))(v51, v56);
  v95 = v56;
  v96 = v54;
  swift_getOpaqueTypeConformance2();
  v57 = v83;
  sub_20D9735E8();
  (*(v80 + 8))(v55, v57);
  return (*(v76 + 8))(v74, v94);
}

uint64_t sub_20D8A6CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = sub_20D9742D8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A148, &qword_20D97B2C0);
  return sub_20D8A6D18(a1, a2, a3, &a4[*(v8 + 44)]);
}

uint64_t sub_20D8A6D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a2;
  v62 = a4;
  v57 = sub_20D974C78();
  v54 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A150, &qword_20D97B2C8);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = (&v49 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A158, &qword_20D97B2D0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v53 = &v49 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A160, &qword_20D97B2D8);
  MEMORY[0x28223BE20](v59);
  v58 = &v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A168, &qword_20D97B2E0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v61 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v60 = &v49 - v18;
  v19 = type metadata accessor for FeaturedInterval(0);
  v20 = *(a1 + *(v19 + 28));
  KeyPath = swift_getKeyPath();
  v21 = *(type metadata accessor for FeaturedHoursChart(0) + 24);
  v50 = a3;
  v22 = *(a3 + v21);
  v23 = (v10 + *(v8 + 44));
  v24 = type metadata accessor for PinnedDynamicSize(0);
  v25 = v24[6];
  v26 = *MEMORY[0x277CDF9D8];
  v27 = sub_20D973D58();
  (*(*(v27 - 8) + 104))(v23 + v25, v26, v27);
  *v23 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  *(v23 + v24[5]) = v22;
  *(v23 + v24[7]) = 1;
  v51 = v19;
  v28 = *(a1 + *(v19 + 32));
  v29 = KeyPath;
  v30 = v53;
  *v10 = v20;
  v10[1] = v29;
  v31 = v55;
  v32 = v54;
  v33 = *(v54 + 104);
  v34 = MEMORY[0x277CE13C0];
  v10[2] = v56;
  if (!v28)
  {
    v34 = MEMORY[0x277CE13D8];
  }

  v35 = v57;
  v33(v31, *v34, v57);
  (*(v32 + 32))(v30 + *(v12 + 44), v31, v35);
  sub_20D7EAF18(v10, v30, &qword_27C83A150, &qword_20D97B2C8);
  if (v28)
  {

    v36 = sub_20D974958();
LABEL_11:
    v38 = v36;
    goto LABEL_12;
  }

  v37 = type metadata accessor for FeaturedHoursInfo(0);
  if (*(a1 + *(v51 + 52)) != 1)
  {
    v39 = *(v50 + *(v37 + 64));
    v40 = objc_opt_self();

    if (v39 == 1)
    {
      v41 = [v40 systemBlackColor];
    }

    else
    {
      v41 = [v40 systemWhiteColor];
    }

    v42 = v41;
    v36 = sub_20D974888();
    goto LABEL_11;
  }

  v38 = *(a1 + *(v51 + 56));

LABEL_12:
  v43 = v58;
  sub_20D7EAF18(v30, v58, &qword_27C83A158, &qword_20D97B2D0);
  *(v43 + *(v59 + 36)) = v38;
  sub_20D8ADBCC();
  v44 = v60;
  sub_20D9747D8();
  sub_20D7E3944(v43, &qword_27C83A160, &qword_20D97B2D8);
  v45 = sub_20D9748F8();
  v46 = v61;
  sub_20D7EB7E8(v44, v61, &qword_27C83A168, &qword_20D97B2E0);
  v47 = v62;
  sub_20D7EB7E8(v46, v62, &qword_27C83A168, &qword_20D97B2E0);
  *(v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A180, &unk_20D97B330) + 48)) = v45;

  sub_20D7E3944(v44, &qword_27C83A168, &qword_20D97B2E0);

  return sub_20D7E3944(v46, &qword_27C83A168, &qword_20D97B2E0);
}

uint64_t sub_20D8A72B8(uint64_t a1)
{
  v2 = sub_20D972628();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 1.0;
  sub_20D972558();
  v7 = COERCE_DOUBLE(sub_20D973528());
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  if ((v9 & 1) == 0)
  {
    v6 = v7;
  }

  v10 = (a1 + *(type metadata accessor for FeaturedHoursChart(0) + 32));
  v11 = *v10;
  v12 = v10[1];
  *&v14[1] = v6;
  v14[2] = v11;
  v14[3] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0B0, &qword_20D97B1A8);
  return sub_20D974A58();
}

uint64_t sub_20D8A740C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839FC0, &qword_20D97AFC0);
  MEMORY[0x28223BE20](v5);
  v7 = v12 - v6;
  if (*(a3 + *(type metadata accessor for FeaturedHoursChart(0) + 24)) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    sub_20D973B78();
  }

  sub_20D974C48();
  sub_20D973C18();
  v8 = sub_20D973748();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  v9 = &v7[*(v5 + 36)];
  v10 = v12[1];
  *v9 = v12[0];
  *(v9 + 1) = v10;
  *(v9 + 2) = v12[2];
  sub_20D8ABCB4();
  sub_20D9746B8();
  return sub_20D7E3944(v7, &qword_27C839FC0, &qword_20D97AFC0);
}

uint64_t sub_20D8A75A8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v101 = a4;
  v107 = a3;
  v115 = a2;
  v112 = a5;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A010, &unk_20D97B0F8);
  MEMORY[0x28223BE20](v111);
  v110 = &v88 - v6;
  v103 = sub_20D972408();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = v7;
  v100 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  MEMORY[0x28223BE20](v8 - 8);
  v95 = &v88 - v9;
  v96 = sub_20D9727B8();
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D9736A8();
  MEMORY[0x28223BE20](v11 - 8);
  v119 = (&v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839FE8, &qword_20D97AFE8);
  v105 = *(v13 - 8);
  v106 = v13;
  MEMORY[0x28223BE20](v13);
  v104 = &v88 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A018, &qword_20D97B108);
  v108 = *(v15 - 8);
  v109 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v121 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v120 = &v88 - v18;
  v19 = sub_20D973688();
  MEMORY[0x28223BE20](v19 - 8);
  v117 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FeaturedHoursChart(0);
  v89 = *(v21 - 8);
  MEMORY[0x28223BE20](v21 - 8);
  v113 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v22;
  v23 = sub_20D973738();
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839FD0, &qword_20D97AFD0);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v28 = &v88 - v27;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A020, &unk_20D97B110);
  v97 = *(v98 - 8);
  v29 = MEMORY[0x28223BE20](v98);
  v118 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v122 = &v88 - v31;
  v32 = *(a1 + *(type metadata accessor for FeaturedHoursInfo(0) + 56));
  v116 = v26;
  if (v32 == 1)
  {
    sub_20D973718();
  }

  else
  {
    sub_20D973728();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A028, &qword_20D97D0A0);
  v33 = sub_20D972628();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_20D979110;
  (*(v34 + 16))(v36 + v35, a1, v33);
  v92 = a1;
  v37 = v113;
  sub_20D8AC45C(a1, v113, type metadata accessor for FeaturedHoursChart);
  v38 = *(v89 + 80);
  v88 = ~v38;
  v89 = v38 | 7;
  v39 = swift_allocObject();
  v40 = v115;
  v41 = v115[7];
  *(v39 + 112) = v115[6];
  *(v39 + 128) = v41;
  *(v39 + 144) = *(v40 + 16);
  v42 = v40[3];
  *(v39 + 48) = v40[2];
  *(v39 + 64) = v42;
  v43 = v40[5];
  *(v39 + 80) = v40[4];
  *(v39 + 96) = v43;
  v44 = v40[1];
  *(v39 + 16) = *v40;
  *(v39 + 32) = v44;
  sub_20D8AC4C4(v37, v39 + ((v38 + 152) & ~v38), type metadata accessor for FeaturedHoursChart);
  sub_20D973678();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A030, &qword_20D97B120);
  sub_20D8AC824();
  sub_20D9739A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839FD8, &qword_20D97AFD8);
  sub_20D7EBC4C(&qword_281127070, &qword_27C839FD0, &qword_20D97AFD0, MEMORY[0x277CBB460]);
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FE0, &qword_20D97AFE0);
  v46 = sub_20D7EBC4C(&qword_281126F70, &qword_27C839FE0, &qword_20D97AFE0, MEMORY[0x277CE0520]);
  v123 = v45;
  v124 = v46;
  swift_getOpaqueTypeConformance2();
  v47 = v91;
  sub_20D973558();
  (*(v90 + 8))(v28, v47);
  if (v32)
  {
    sub_20D973718();
  }

  else
  {
    sub_20D973728();
  }

  v48 = v94;
  v49 = v93;
  v50 = v96;
  (*(v94 + 104))(v93, *MEMORY[0x277CC9980], v96);
  v51 = sub_20D9727D8();
  v52 = v95;
  (*(*(v51 - 8) + 56))(v95, 1, 1, v51);
  sub_20D973698();
  sub_20D7E3944(v52, &qword_27C839548, &unk_20D979C20);
  (*(v48 + 8))(v49, v50);
  v53 = v113;
  sub_20D8AC45C(v92, v113, type metadata accessor for FeaturedHoursChart);
  v54 = v102;
  v55 = v100;
  v56 = v103;
  (*(v102 + 16))(v100, v101, v103);
  v57 = (v38 + 16) & v88;
  v58 = (v114 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v59 + *(v54 + 80) + 136) & ~*(v54 + 80);
  v61 = swift_allocObject();
  sub_20D8AC4C4(v53, v61 + v57, type metadata accessor for FeaturedHoursChart);
  *(v61 + v58) = v107;
  v62 = v61 + v59;
  v63 = v115;
  v64 = v115[3];
  *(v62 + 32) = v115[2];
  *(v62 + 48) = v64;
  v65 = v63[1];
  *v62 = *v63;
  *(v62 + 16) = v65;
  *(v62 + 128) = *(v63 + 16);
  v66 = v63[7];
  *(v62 + 96) = v63[6];
  *(v62 + 112) = v66;
  v67 = v63[5];
  *(v62 + 64) = v63[4];
  *(v62 + 80) = v67;
  (*(v54 + 32))(v61 + v60, v55, v56);

  sub_20D973678();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A040, &qword_20D97B130);
  sub_20D8ACC38(&qword_2811270A0, &qword_27C83A040, &qword_20D97B130, sub_20D8ACA28);
  v68 = v104;
  sub_20D973988();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839FF0, &qword_20D97AFF0);
  sub_20D7EBC4C(&qword_281127068, &qword_27C839FE8, &qword_20D97AFE8, MEMORY[0x277CBB460]);
  v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FF8, &qword_20D97AFF8);
  v70 = sub_20D7EBC4C(&qword_281126F68, &qword_27C839FF8, &qword_20D97AFF8, MEMORY[0x277CE0520]);
  v123 = v69;
  v124 = v70;
  swift_getOpaqueTypeConformance2();
  v71 = v120;
  v72 = v106;
  sub_20D973558();
  (*(v105 + 8))(v68, v72);
  v73 = v97;
  v119 = *(v97 + 16);
  v74 = v118;
  v75 = v98;
  v119(v118, v122, v98);
  v76 = v108;
  v77 = *(v108 + 16);
  v78 = v121;
  v79 = v71;
  v80 = v109;
  v77(v121, v79, v109);
  v81 = v110;
  v119(v110, v74, v75);
  v82 = v111;
  v83 = *(v111 + 48);
  v77(&v81[v83], v78, v80);
  v84 = v112;
  (*(v73 + 32))(v112, v81, v75);
  (*(v76 + 32))(v84 + *(v82 + 48), &v81[v83], v80);
  v85 = *(v76 + 8);
  v85(v120, v80);
  v86 = *(v73 + 8);
  v86(v122, v75);
  v85(v121, v80);
  return (v86)(v118, v75);
}

uint64_t sub_20D8A83A8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0C8, &qword_20D97B1F0);
  MEMORY[0x28223BE20](v57);
  v56 = &v46 - v4;
  v5 = sub_20D9737E8();
  MEMORY[0x28223BE20](v5 - 8);
  v53 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D973858();
  MEMORY[0x28223BE20](v7 - 8);
  v51 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A038, &qword_20D97B128);
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v60 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = &v46 - v12;
  v13 = sub_20D973918();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_20D973938();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0D0, &qword_20D97B1F8);
  v50 = *(v52 - 8);
  v18 = MEMORY[0x28223BE20](v52);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v46 - v21;
  if (*(a2 + *(type metadata accessor for FeaturedHoursChart(0) + 24)) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    sub_20D973B78();
  }

  sub_20D9738F8();
  v23 = type metadata accessor for FeaturedHoursInfo(0);
  v24 = (a2 + *(v23 + 52));
  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  v27 = *(v24 + 4);
  v62 = *v24;
  v63 = v26;
  v64 = v25;
  v65 = v27;

  sub_20D973928();
  v61 = *(a2 + *(v23 + 48));
  v48 = v22;
  sub_20D9738C8();
  (*(v15 + 8))(v17, v14);
  v28 = sub_20D973828();
  v49 = &v46;
  MEMORY[0x28223BE20](v28);
  sub_20D9737D8();
  v45[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0D8, &qword_20D97B200);
  v45[3] = sub_20D8ACFA0(&qword_281126F90, &qword_27C83A0D8, &qword_20D97B200, sub_20D8AD024);
  v45[0] = sub_20D8ACF98;
  v45[1] = v45;
  v29 = v59;
  sub_20D9736B8();
  v30 = v50;
  v31 = *(v50 + 16);
  v32 = v20;
  v33 = v20;
  v47 = v20;
  v34 = v52;
  v31(v33, v22, v52);
  v36 = v54;
  v35 = v55;
  v37 = *(v54 + 16);
  v37(v60, v29, v55);
  v38 = v56;
  v31(v56, v32, v34);
  sub_20D7EBC4C(&qword_281127090, &qword_27C83A038, &qword_20D97B128, MEMORY[0x277CBB338]);
  v39 = v57;
  v40 = *(v57 + 48);
  v37(&v38[v40], v60, v35);
  v41 = v58;
  (*(v30 + 32))(v58, v38, v34);
  (*(v36 + 32))(v41 + *(v39 + 48), &v38[v40], v35);
  v42 = *(v36 + 8);
  v42(v59, v35);
  v43 = *(v30 + 8);
  v43(v48, v34);
  v42(v60, v35);
  return (v43)(v47, v34);
}

uint64_t sub_20D8A8A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = type metadata accessor for FeaturedHoursChart(0);
  v4 = v3 - 8;
  v67 = *(v3 - 8);
  v66 = *(v67 + 64);
  MEMORY[0x28223BE20](v3);
  v65 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A100, &qword_20D97B228);
  MEMORY[0x28223BE20](v62);
  v7 = &v59 - v6;
  v63 = type metadata accessor for FeaturedHoursInfo(0);
  v8 = (a1 + *(v63 + 40));
  v9 = v8[1];
  v68 = *v8;
  v69 = v9;
  sub_20D7E1EF8();

  v10 = sub_20D9745C8();
  v12 = v11;
  v14 = v13;
  sub_20D974488();
  v60 = sub_20D974558();
  v61 = v15;
  v17 = v16;
  v19 = v18;

  sub_20D7EADC0(v10, v12, v14 & 1);

  LOBYTE(v4) = *(a1 + *(v4 + 32));
  v20 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0C0, &qword_20D97B1B8) + 36)];
  v21 = type metadata accessor for PinnedDynamicSize(0);
  v22 = v21[6];
  v23 = *MEMORY[0x277CDFA10];
  v24 = sub_20D973D58();
  (*(*(v24 - 8) + 104))(v20 + v22, v23, v24);
  *v20 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  *(v20 + v21[5]) = v4;
  *(v20 + v21[7]) = 0;
  *v7 = v60;
  *(v7 + 1) = v17;
  v7[16] = v19 & 1;
  v25 = v62;
  *(v7 + 3) = v61;
  v26 = &v7[*(v25 + 36)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A108, &unk_20D97B230) + 28);
  v28 = *MEMORY[0x277CE0B48];
  v29 = sub_20D974538();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v26 + v27, v28, v29);
  (*(v30 + 56))(v26 + v27, 0, 1, v29);
  *v26 = swift_getKeyPath();
  sub_20D8AD2E8();
  v31 = v64;
  sub_20D9747F8();
  sub_20D7E3944(v7, &qword_27C83A100, &qword_20D97B228);
  v32 = *(a1 + *(v63 + 44));
  *(v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0F8, &qword_20D97B220) + 36)) = v32;

  LOBYTE(v32) = sub_20D974348();
  sub_20D973AD8();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0F0, &qword_20D97B218) + 36);
  *v41 = v32;
  *(v41 + 8) = v34;
  *(v41 + 16) = v36;
  *(v41 + 24) = v38;
  *(v41 + 32) = v40;
  *(v41 + 40) = 0;
  LOBYTE(v32) = sub_20D974368();
  sub_20D973AD8();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0E8, &qword_20D97B210) + 36);
  *v50 = v32;
  *(v50 + 8) = v43;
  *(v50 + 16) = v45;
  *(v50 + 24) = v47;
  *(v50 + 32) = v49;
  *(v50 + 40) = 0;
  v51 = sub_20D974C48();
  v53 = v52;
  v54 = v65;
  sub_20D8AC45C(a1, v65, type metadata accessor for FeaturedHoursChart);
  v55 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v56 = swift_allocObject();
  sub_20D8AC4C4(v54, v56 + v55, type metadata accessor for FeaturedHoursChart);
  v57 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0E0, &qword_20D97B208) + 36));
  *v57 = sub_20D8AD5DC;
  v57[1] = v56;
  v57[2] = v51;
  v57[3] = v53;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0D8, &qword_20D97B200);
  *(v31 + *(result + 36)) = 257;
  return result;
}

uint64_t sub_20D8A8F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v23 = a4;
  v24 = a5;
  v21 = a2;
  v22 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - v9;
  v11 = type metadata accessor for FeaturedHoursChart(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20D9748F8();
  sub_20D8AC45C(v21, v14, type metadata accessor for FeaturedHoursChart);
  (*(v8 + 16))(v10, v22, v7);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_20D8AC4C4(v14, v18 + v16, type metadata accessor for FeaturedHoursChart);
  result = (*(v8 + 32))(v18 + v17, v10, v7);
  v20 = v24;
  *a6 = v15;
  a6[1] = v20;
  a6[3] = 0;
  a6[4] = 0;
  a6[2] = v18;
  return result;
}

uint64_t sub_20D8A9150(uint64_t a1)
{
  sub_20D973C38();
  type metadata accessor for FeaturedHoursChart(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0B0, &qword_20D97B1A8);
  return sub_20D974A58();
}

uint64_t sub_20D8A91EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v140 = a4;
  v170 = a3;
  v167 = a2;
  v171 = a1;
  v176 = a5;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A088, &qword_20D97B178);
  MEMORY[0x28223BE20](v158);
  v156 = v124 - v5;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A048, &qword_20D97B138);
  v174 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v157 = v124 - v6;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A090, &qword_20D97B180);
  MEMORY[0x28223BE20](v143);
  v141 = v124 - v7;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A070, &qword_20D97B160);
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v142 = v124 - v8;
  v9 = sub_20D9737E8();
  MEMORY[0x28223BE20](v9 - 8);
  v134 = v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D973858();
  MEMORY[0x28223BE20](v11 - 8);
  v133 = v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A080, &qword_20D97B170);
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = v124 - v13;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A098, &qword_20D97B188);
  v138 = *(v139 - 8);
  v14 = MEMORY[0x28223BE20](v139);
  v149 = v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v148 = v124 - v16;
  v17 = sub_20D973918();
  MEMORY[0x28223BE20](v17 - 8);
  v124[1] = v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_20D973938();
  v126 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v125 = v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A078, &qword_20D97B168);
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v127 = v124 - v20;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0A0, &qword_20D97B190);
  v131 = *(v132 - 8);
  v21 = MEMORY[0x28223BE20](v132);
  v147 = v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v168 = v124 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A068, &qword_20D97B158);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v153 = v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v150 = v124 - v27;
  v166 = sub_20D9727B8();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v29 = v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_20D9727D8();
  v163 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v162 = v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_20D973578();
  v31 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v33 = v124 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A058, &qword_20D97B148);
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v35 = v124 - v34;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0A8, &unk_20D97B198);
  v160 = *(v161 - 1);
  MEMORY[0x28223BE20](v161);
  v144 = v124 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A050, &qword_20D97B140);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v152 = v124 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v173 = v124 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = v124 - v42;
  v44 = sub_20D972628();
  v45 = *(v44 - 8);
  v46 = MEMORY[0x28223BE20](v44);
  v48 = v124 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v50 = v124 - v49;
  sub_20D9739B8();
  if ((*(v45 + 48))(v43, 1, v44) == 1)
  {
    sub_20D7E3944(v43, &qword_27C8389E8, &qword_20D9768D0);
    return (*(v174 + 56))(v176, 1, 1, v175);
  }

  v172 = v45;
  v52 = *(v45 + 32);
  v151 = v44;
  v52(v50, v43, v44);
  v169 = v50;
  v53 = v171;
  if (sub_20D8AA9C0(v50, v167))
  {
    v54 = v29;
    v55 = 1;
    v56 = v173;
    v57 = v166;
    v58 = v165;
    v59 = v161;
    v60 = v160;
  }

  else
  {
    sub_20D973B38();
    v190 = v181;
    v191 = v182;
    v192 = v183;
    sub_20D973568();
    *&v187 = sub_20D9748D8();
    *(&v187 + 1) = 1;
    LODWORD(v188) = 1056964608;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A060, &qword_20D97B150);
    v62 = sub_20D7EBC4C(&qword_281126F88, &qword_27C83A060, &qword_20D97B150, MEMORY[0x277CE01D8]);
    v63 = v159;
    sub_20D9738C8();
    v53 = v171;

    (*(v31 + 8))(v33, v63);
    type metadata accessor for FeaturedHoursInfo(0);
    v57 = v166;
    v54 = v29;
    *&v187 = v159;
    *(&v187 + 1) = v61;
    *&v188 = MEMORY[0x277CBB200];
    *(&v188 + 1) = v62;
    swift_getOpaqueTypeConformance2();
    v64 = v144;
    v65 = v146;
    sub_20D9738E8();
    (*(v145 + 8))(v35, v65);
    v60 = v160;
    v56 = v173;
    v59 = v161;
    (*(v160 + 32))(v173, v64, v161);
    v55 = 0;
    v58 = v165;
  }

  (*(v60 + 56))(v56, v55, 1, v59);
  v66 = type metadata accessor for FeaturedHoursChart(0);
  v67 = (v53 + *(v66 + 36));
  v68 = *v67;
  v69 = v67[1];
  *&v187 = v68;
  *(&v187 + 1) = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0B0, &qword_20D97B1A8);
  sub_20D974A48();
  v70 = (v53 + *(v66 + 32));
  v71 = *v70;
  v72 = v70[1];
  *&v187 = v71;
  *(&v187 + 1) = v72;
  sub_20D974A48();
  v73 = v162;
  sub_20D972778();
  v74 = v58[13];
  LODWORD(v166) = *MEMORY[0x277CC9980];
  v165 = v74;
  v74(v54);
  sub_20D972558();
  v167 = sub_20D9727C8();
  v75 = v172 + 8;
  v161 = *(v172 + 8);
  (v161)(v48, v151);
  v76 = v58[1];
  v76(v54, v57);
  v77 = *(v163 + 8);
  v78 = v164;
  result = v77(v73, v164);
  if (__OFADD__(v167, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  v172 = v167 + 1;
  sub_20D972778();
  (v165)(v54, v166, v57);
  v79 = sub_20D9727C8();
  v76(v54, v57);
  result = v77(v73, v78);
  v80 = v79 - v172;
  if (__OFSUB__(v79, v172))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v172 = v75;
  if (0xAAAAAAAAAAAAAAABLL * v80 + 0x2AAAAAAAAAAAAAAALL <= 0x5555555555555554)
  {
    sub_20D9738F8();
    sub_20D973B38();
    v187 = v184;
    v188 = v185;
    v189 = v186;
    v83 = v125;
    sub_20D973928();
    v177 = sub_20D9748D8();
    v178 = 1;
    LODWORD(v179) = 1056964608;
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A060, &qword_20D97B150);
    v85 = sub_20D7EBC4C(&qword_281126F88, &qword_27C83A060, &qword_20D97B150, MEMORY[0x277CE01D8]);
    v86 = MEMORY[0x277CBB428];
    v87 = v127;
    v88 = v128;
    sub_20D9738C8();

    (*(v126 + 8))(v83, v88);
    v89 = type metadata accessor for FeaturedHoursInfo(0);
    LODWORD(v167) = *(v171 + *(v89 + 60));
    v166 = v89;
    v177 = v88;
    v178 = v84;
    v179 = v86;
    v180 = v85;
    swift_getOpaqueTypeConformance2();
    v90 = v130;
    sub_20D9738E8();
    (*(v129 + 8))(v87, v90);
    v91 = sub_20D973828();
    v92 = *(v170 + 96);
    MEMORY[0x28223BE20](v91);
    sub_20D9737D8();
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0B8, &qword_20D97B1B0);
    v123 = sub_20D8ACFA0(&qword_281126FD8, &qword_27C83A0B8, &qword_20D97B1B0, sub_20D8ACE7C);
    v120 = sub_20D8ACE70;
    v121 = &v118;
    LOBYTE(v119) = 0;
    v118 = v92;
    v93 = v135;
    sub_20D9736B8();
    sub_20D7EBC4C(&qword_281127098, &qword_27C83A080, &qword_20D97B170, MEMORY[0x277CBB338]);
    v94 = v148;
    v95 = v137;
    sub_20D9738E8();
    (*(v136 + 8))(v93, v95);
    v96 = v131;
    v97 = *(v131 + 16);
    v98 = v147;
    v99 = v132;
    v97(v147, v168, v132);
    v100 = v138;
    v101 = *(v138 + 16);
    v102 = v139;
    v101(v149, v94, v139);
    v103 = v141;
    v97(v141, v98, v99);
    v104 = v143;
    v105 = *(v143 + 48);
    v106 = v149;
    v101(&v103[v105], v149, v102);
    v107 = v142;
    (*(v96 + 32))(v142, v103, v99);
    (*(v100 + 32))(v107 + *(v104 + 48), &v103[v105], v102);
    v108 = *(v100 + 8);
    v108(v148, v102);
    v109 = *(v96 + 8);
    v109(v168, v99);
    v108(v106, v102);
    v109(v147, v99);
    v82 = v150;
    sub_20D7EAF18(v107, v150, &qword_27C83A070, &qword_20D97B160);
    v81 = 0;
  }

  else
  {
    v81 = 1;
    v82 = v150;
  }

  (*(v154 + 56))(v82, v81, 1, v155);
  v110 = v173;
  v111 = v152;
  sub_20D7EB7E8(v173, v152, &qword_27C83A050, &qword_20D97B140);
  v112 = v153;
  sub_20D7EB7E8(v82, v153, &qword_27C83A068, &qword_20D97B158);
  sub_20D8ACAE8();
  v113 = v156;
  sub_20D7EB7E8(v111, v156, &qword_27C83A050, &qword_20D97B140);
  sub_20D8ACC38(&qword_2811270B0, &qword_27C83A068, &qword_20D97B158, sub_20D8ACCB4);
  v114 = v158;
  v115 = *(v158 + 48);
  sub_20D7EB7E8(v112, v113 + v115, &qword_27C83A068, &qword_20D97B158);
  v116 = v157;
  sub_20D7EAF18(v113, v157, &qword_27C83A050, &qword_20D97B140);
  sub_20D7EAF18(v113 + v115, v116 + *(v114 + 48), &qword_27C83A068, &qword_20D97B158);
  sub_20D7E3944(v82, &qword_27C83A068, &qword_20D97B158);
  sub_20D7E3944(v110, &qword_27C83A050, &qword_20D97B140);
  sub_20D7E3944(v112, &qword_27C83A068, &qword_20D97B158);
  sub_20D7E3944(v111, &qword_27C83A050, &qword_20D97B140);
  v117 = v176;
  sub_20D7EAF18(v116, v176, &qword_27C83A048, &qword_20D97B138);
  (*(v174 + 56))(v117, 0, 1, v175);
  return (v161)(v169, v151);
}

BOOL sub_20D8AA9C0(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v22 = sub_20D972628();
  v3 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20D971D98();
  v6 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FeaturedInterval(0);
  v9 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v24 = a2;
  v13 = *(a2 + 16);
  v14 = (v3 + 16);
  v15 = (v6 + 8);
  do
  {
    v16 = v12;
    if (v13 == v12)
    {
      break;
    }

    sub_20D8AC45C(v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v12++, v11, type metadata accessor for FeaturedInterval);
    (*v14)(v5, v11, v22);
    sub_20D971D68();
    v17 = sub_20D971D88();
    (*v15)(v8, v21);
    sub_20D8ACF38(v11, type metadata accessor for FeaturedInterval);
  }

  while ((v17 & 1) == 0);
  return v13 != v16;
}

uint64_t sub_20D8AAC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v7 = sub_20D972408();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D972628();
  MEMORY[0x28223BE20](v11);
  (*(v13 + 16))(&v40[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (*(v8 + 16))(v10, a2, v7);
  sub_20D8AC52C(&unk_281127750, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
  sub_20D8AC52C(&qword_281127740, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v14 = sub_20D974598();
  v16 = v15;
  LOBYTE(a2) = v17;
  sub_20D974488();
  v18 = sub_20D974558();
  v20 = v19;
  v22 = v21;

  sub_20D7EADC0(v14, v16, a2 & 1);

  sub_20D9743E8();
  v23 = sub_20D9744F8();
  v25 = v24;
  LOBYTE(v16) = v26;
  sub_20D7EADC0(v18, v20, v22 & 1);

  v40[0] = sub_20D974258();
  v27 = sub_20D974518();
  v29 = v28;
  LOBYTE(a1) = v30;
  v32 = v31;
  sub_20D7EADC0(v23, v25, v16 & 1);

  LOBYTE(v23) = *(v39 + *(type metadata accessor for FeaturedHoursChart(0) + 24));
  v33 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0C0, &qword_20D97B1B8) + 36));
  v34 = type metadata accessor for PinnedDynamicSize(0);
  v35 = v34[6];
  v36 = *MEMORY[0x277CDFA10];
  v37 = sub_20D973D58();
  (*(*(v37 - 8) + 104))(v33 + v35, v36, v37);
  *v33 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  *(v33 + v34[5]) = v23;
  *(v33 + v34[7]) = 0;
  *a4 = v27;
  *(a4 + 8) = v29;
  *(a4 + 16) = a1 & 1;
  *(a4 + 24) = v32;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0B8, &qword_20D97B1B0);
  *(a4 + *(result + 36)) = 257;
  return result;
}

uint64_t sub_20D8AB060(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_20D7EBC4C(a4, a2, a3, MEMORY[0x277CE0520]);
  return sub_20D9746B8();
}

uint64_t sub_20D8AB0F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20D974048();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_20D7EB7E8(v2, &v14 - v9, &qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20D973D58();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_20D975468();
    v13 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_20D8AB2F0()
{
  v1 = sub_20D973D58();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PinnedDynamicSize(0);
  if (*(v0 + *(v5 + 20)) == 1)
  {
    sub_20D8AB0F0(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A008, &qword_20D97B0F0);
    sub_20D7EBC4C(&qword_281126F78, &qword_27C83A008, &qword_20D97B0F0, MEMORY[0x277CE04B0]);
    sub_20D974768();
    return (*(v2 + 8))(v4, v1);
  }

  else if (*(v0 + *(v5 + 28)) & 1) != 0 || (sub_20D8AB0F0(v4), sub_20D8AC52C(&qword_281127038, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]), v7 = sub_20D974FA8(), v8 = *(v2 + 8), v8(v4, v1), (v7))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A008, &qword_20D97B0F0);
    sub_20D7EBC4C(&qword_281126F78, &qword_27C83A008, &qword_20D97B0F0, MEMORY[0x277CE04B0]);
    return sub_20D974768();
  }

  else
  {
    sub_20D8AB0F0(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A008, &qword_20D97B0F0);
    sub_20D7EBC4C(&qword_281126F78, &qword_27C83A008, &qword_20D97B0F0, MEMORY[0x277CE04B0]);
    sub_20D974768();
    return v8(v4, v1);
  }
}

double sub_20D8AB5C4@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *MEMORY[0x277D76940];
  v7 = 12.0;
  if (a1)
  {
    v8 = [objc_opt_self() preferredFontForTextStyle_];
    [v8 pointSize];
    v7 = v9;
  }

  v10 = objc_opt_self();
  v11 = [v10 preferredFontForTextStyle_];
  [v11 descender];
  v13 = v12;

  if (a2)
  {
    _Q1 = xmmword_20D97AF00;
    v15 = 5.0;
    v16 = 0.0;
    v17 = 38.0;
  }

  else
  {
    v16 = 17.0;
    if (a1)
    {
      v18 = [v10 preferredFontForTextStyle_];
      [v18 pointSize];
      v16 = v19;
    }

    v17 = v16 + 9.0 + 10.0;
    v15 = 7.0;
    __asm { FMOV            V1.2D, #3.0 }

    *&_Q1 = v7 + 7.0;
  }

  *a3 = a2 & 1;
  *(a3 + 8) = v16;
  *(a3 + 16) = v17;
  *(a3 + 24) = v7;
  *(a3 + 32) = _Q1;
  *(a3 + 48) = v13;
  *(a3 + 56) = xmmword_20D97AF10;
  *(a3 + 72) = xmmword_20D97AF20;
  *(a3 + 88) = 0x4010000000000000;
  *(a3 + 96) = v15;
  *(a3 + 104) = xmmword_20D97AF30;
  result = 17.0;
  *(a3 + 120) = xmmword_20D97AF40;
  return result;
}

unint64_t sub_20D8AB77C()
{
  result = qword_2811270C8;
  if (!qword_2811270C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F68, &qword_20D97AF68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F70, &qword_20D97AF70);
    sub_20D973648();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_20D8AB914();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FA8, &unk_20D97E110);
    sub_20D973978();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811270C8);
  }

  return result;
}

unint64_t sub_20D8AB914()
{
  result = qword_281126EF8;
  if (!qword_281126EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F78, &qword_20D97AF78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F80, &qword_20D97AF80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F88, &qword_20D97AF88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F90, &qword_20D97AF90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F98, &qword_20D97AF98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FA0, &unk_20D97AFA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F70, &qword_20D97AF70);
    sub_20D973648();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_281127040, &qword_27C839F98, &qword_20D97AF98, MEMORY[0x277CDD828]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126EF8);
  }

  return result;
}

unint64_t sub_20D8ABBAC()
{
  result = qword_281126FF8;
  if (!qword_281126FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FB0, &qword_20D97AFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126FF8);
  }

  return result;
}

uint64_t sub_20D8ABC30(uint64_t a1)
{
  v3 = *(type metadata accessor for FeaturedHoursChart(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 152) & ~*(v3 + 80));

  return sub_20D8A740C(a1, v1 + 16, v4);
}

unint64_t sub_20D8ABCB4()
{
  result = qword_281127020;
  if (!qword_281127020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FC0, &qword_20D97AFC0);
    sub_20D8AC52C(&qword_281127088, MEMORY[0x277CBB360], MEMORY[0x277CBB358]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281127020);
  }

  return result;
}

unint64_t sub_20D8ABD7C()
{
  result = qword_2811270D0;
  if (!qword_2811270D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FC8, &qword_20D97AFC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FD0, &qword_20D97AFD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FD8, &qword_20D97AFD8);
    v1 = MEMORY[0x277CBB460];
    sub_20D7EBC4C(&qword_281127070, &qword_27C839FD0, &qword_20D97AFD0, MEMORY[0x277CBB460]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FE0, &qword_20D97AFE0);
    v2 = MEMORY[0x277CE0520];
    sub_20D7EBC4C(&qword_281126F70, &qword_27C839FE0, &qword_20D97AFE0, MEMORY[0x277CE0520]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FE8, &qword_20D97AFE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FF0, &qword_20D97AFF0);
    sub_20D7EBC4C(&qword_281127068, &qword_27C839FE8, &qword_20D97AFE8, v1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FF8, &qword_20D97AFF8);
    sub_20D7EBC4C(&qword_281126F68, &qword_27C839FF8, &qword_20D97AFF8, v2);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811270D0);
  }

  return result;
}

void sub_20D8AC02C(uint64_t a1)
{
  type metadata accessor for FeaturedHoursInfo(319);
  if (v1 <= 0x3F)
  {
    sub_20D7F8490(319);
    if (v2 <= 0x3F)
    {
      sub_20D7E63C4(319);
      if (v3 <= 0x3F)
      {
        sub_20D8AC0E8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20D8AC0E8()
{
  if (!qword_281126F00)
  {
    v0 = sub_20D974A78();
    if (!v1)
    {
      atomic_store(v0, &qword_281126F00);
    }
  }
}

unint64_t sub_20D8AC138()
{
  result = qword_281127008;
  if (!qword_281127008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A000, &qword_20D97B000);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F60, &qword_20D97AF60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FC8, &qword_20D97AFC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F58, &qword_20D97AF58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FB8, &qword_20D97AFB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F50, &qword_20D97AF50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FB0, &qword_20D97AFB0);
    sub_20D7EBC4C(&qword_281127080, &qword_27C839F50, &qword_20D97AF50, MEMORY[0x277CBB3F8]);
    sub_20D8ABBAC();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FC0, &qword_20D97AFC0);
    sub_20D8ABCB4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_20D8ABD7C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281127008);
  }

  return result;
}

void sub_20D8AC3B4(uint64_t a1)
{
  sub_20D7F8490(319);
  if (v1 <= 0x3F)
  {
    sub_20D973D58();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20D8AC45C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D8AC4C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D8AC52C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_9Tm()
{
  v1 = type metadata accessor for FeaturedHoursChart(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 152) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = sub_20D972628();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  type metadata accessor for FeaturedHoursInfo(0);

  v7 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_20D973D58();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = *(v1 + 28);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20D8AC7B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeaturedHoursChart(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 152) & ~*(v3 + 80));

  return sub_20D8A83A8(v4, a1);
}

unint64_t sub_20D8AC824()
{
  result = qword_2811270C0;
  if (!qword_2811270C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A030, &qword_20D97B120);
    sub_20D973938();
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_281127090, &qword_27C83A038, &qword_20D97B128, MEMORY[0x277CBB338]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811270C0);
  }

  return result;
}

uint64_t sub_20D8AC928@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeaturedHoursChart(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_20D972408() - 8);
  v8 = *(v1 + v5);
  v9 = v1 + ((v6 + *(v7 + 80) + 136) & ~*(v7 + 80));

  return sub_20D8A91EC(v1 + v4, v8, v1 + v6, v9, a1);
}

unint64_t sub_20D8ACA28()
{
  result = qword_2811270A8;
  if (!qword_2811270A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A048, &qword_20D97B138);
    sub_20D8ACAE8();
    sub_20D8ACC38(&qword_2811270B0, &qword_27C83A068, &qword_20D97B158, sub_20D8ACCB4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811270A8);
  }

  return result;
}

unint64_t sub_20D8ACAE8()
{
  result = qword_281127078;
  if (!qword_281127078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A050, &qword_20D97B140);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A058, &qword_20D97B148);
    sub_20D973578();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A060, &qword_20D97B150);
    sub_20D7EBC4C(&qword_281126F88, &qword_27C83A060, &qword_20D97B150, MEMORY[0x277CE01D8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281127078);
  }

  return result;
}

uint64_t sub_20D8ACC38(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20D8ACCB4()
{
  result = qword_2811270B8;
  if (!qword_2811270B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A070, &qword_20D97B160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A078, &qword_20D97B168);
    sub_20D973938();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A060, &qword_20D97B150);
    sub_20D7EBC4C(&qword_281126F88, &qword_27C83A060, &qword_20D97B150, MEMORY[0x277CE01D8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A080, &qword_20D97B170);
    sub_20D7EBC4C(&qword_281127098, &qword_27C83A080, &qword_20D97B170, MEMORY[0x277CBB338]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811270B8);
  }

  return result;
}

unint64_t sub_20D8ACE7C()
{
  result = qword_281127018;
  if (!qword_281127018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A0C0, &qword_20D97B1B8);
    sub_20D8AC52C(&qword_2811274D8, type metadata accessor for PinnedDynamicSize, &unk_20D97B09C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281127018);
  }

  return result;
}

uint64_t sub_20D8ACF38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20D8ACFA0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20D8AD024()
{
  result = qword_281126FA0;
  if (!qword_281126FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A0E0, &qword_20D97B208);
    sub_20D8AD0DC();
    sub_20D7EBC4C(&qword_281126F80, &qword_27C83A118, &qword_20D97B240, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126FA0);
  }

  return result;
}

unint64_t sub_20D8AD0DC()
{
  result = qword_281126FB0;
  if (!qword_281126FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A0E8, &qword_20D97B210);
    sub_20D8AD168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126FB0);
  }

  return result;
}

unint64_t sub_20D8AD168()
{
  result = qword_281126FC8;
  if (!qword_281126FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A0F0, &qword_20D97B218);
    sub_20D8AD1F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126FC8);
  }

  return result;
}

unint64_t sub_20D8AD1F4()
{
  result = qword_281127000;
  if (!qword_281127000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A0F8, &qword_20D97B220);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A100, &qword_20D97B228);
    sub_20D8AD2E8();
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_281126F60, &qword_27C83A110, &qword_20D97CC10, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281127000);
  }

  return result;
}

unint64_t sub_20D8AD2E8()
{
  result = qword_281126FD0;
  if (!qword_281126FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A100, &qword_20D97B228);
    sub_20D8ACE7C();
    sub_20D7EBC4C(&qword_281126F50, &qword_27C83A108, &unk_20D97B230, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126FD0);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for FeaturedHoursChart(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = sub_20D972628();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  type metadata accessor for FeaturedHoursInfo(0);

  v7 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_20D973D58();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = *(v1 + 28);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_44Tm(uint64_t (*a1)(void))
{
  v3 = type metadata accessor for FeaturedHoursChart(0);
  v4 = *(*(v3 - 8) + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(*(v3 - 8) + 64);
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v19 = *(v8 + 64);
  v10 = v1 + v5;
  v11 = sub_20D972628();
  (*(*(v11 - 8) + 8))(v1 + v5, v11);
  type metadata accessor for FeaturedHoursInfo(0);

  v12 = *(v3 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20D973D58();
    (*(*(v13 - 8) + 8))(v10 + v12, v13);
  }

  else
  {
  }

  v14 = v4 | v9;
  v15 = (v5 + v6 + v9) & ~v9;
  v16 = *(v3 + 28);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v17 - 8) + 8))(v10 + v16, v17);

  (*(v8 + 8))(v1 + v15, v7);

  return MEMORY[0x2821FE8E8](v1, v15 + v19, v14 | 7);
}

uint64_t sub_20D8AD9D4(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for FeaturedHoursChart(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(a1(0) - 8);
  v8 = v2 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return a2(v2 + v5, v8);
}

unint64_t sub_20D8ADABC()
{
  result = qword_281126E90;
  if (!qword_281126E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281126E90);
  }

  return result;
}

uint64_t sub_20D8ADB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FeaturedHoursChart(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + ((v7 + 143) & 0xFFFFFFFFFFFFFFF8));

  return sub_20D8A60E4(a1, v2 + v6, (v2 + v7), v8, a2);
}

unint64_t sub_20D8ADBCC()
{
  result = qword_281126F98;
  if (!qword_281126F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A160, &qword_20D97B2D8);
    sub_20D8ADC84();
    sub_20D7EBC4C(&qword_281126F60, &qword_27C83A110, &qword_20D97CC10, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126F98);
  }

  return result;
}

unint64_t sub_20D8ADC84()
{
  result = qword_281126FA8;
  if (!qword_281126FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A158, &qword_20D97B2D0);
    sub_20D8ADD10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126FA8);
  }

  return result;
}

unint64_t sub_20D8ADD10()
{
  result = qword_281126FB8;
  if (!qword_281126FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A150, &qword_20D97B2C8);
    sub_20D8ADDCC();
    sub_20D8AC52C(&qword_2811274D8, type metadata accessor for PinnedDynamicSize, &unk_20D97B09C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126FB8);
  }

  return result;
}

unint64_t sub_20D8ADDCC()
{
  result = qword_281126FE0;
  if (!qword_281126FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A170, &qword_20D97B318);
    sub_20D8ADE84();
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126FE0);
  }

  return result;
}

unint64_t sub_20D8ADE84()
{
  result = qword_281126F08;
  if (!qword_281126F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A178, &unk_20D97B320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126F08);
  }

  return result;
}

uint64_t sub_20D8ADF00(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    result = sub_20D8D4AC0(a3);
    if (v7)
    {
      v8 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v13 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_20D8D60B4();
        v10 = v13;
      }

      result = sub_20D8D4E40(v8, v10);
      *v4 = v10;
    }
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = sub_20D8D5428(a3, v12, *&a1);
    *v3 = v14;
  }

  return result;
}

void sub_20D8ADFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_20D8D5550(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v16;
  }

  else
  {
    v11 = sub_20D8D4A48(a3, a4);
    v13 = v12;

    if (v13)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v17 = *v5;
      if (!v14)
      {
        sub_20D8D644C();
        v15 = v17;
      }

      sub_20D8D4FB0(v11, v15);
      *v5 = v15;
    }
  }
}

uint64_t sub_20D8AE0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v294 = a1;
  v223 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v2 - 8);
  v236 = &v215 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  MEMORY[0x28223BE20](v4 - 8);
  v234 = &v215 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  MEMORY[0x28223BE20](v6 - 8);
  v233 = &v215 - v7;
  v222 = sub_20D971EA8();
  v221 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v235 = &v215 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_20D972E88();
  v231 = *(v232 - 8);
  MEMORY[0x28223BE20](v232);
  v230 = &v215 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v10 = MEMORY[0x28223BE20](v229);
  v228 = &v215 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v227 = &v215 - v12;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  MEMORY[0x28223BE20](v226);
  v238 = &v215 - v13;
  v251 = type metadata accessor for HistoricalUsageSnapshot(0);
  MEMORY[0x28223BE20](v251);
  v243 = (&v215 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v293 = sub_20D972C58();
  v273 = *(v293 - 1);
  v15 = MEMORY[0x28223BE20](v293);
  v276 = &v215 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v288 = &v215 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v219 = &v215 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v218 = &v215 - v22;
  MEMORY[0x28223BE20](v21);
  v253 = &v215 - v23;
  v250 = sub_20D972AF8();
  v248 = *(v250 - 8);
  v24 = MEMORY[0x28223BE20](v250);
  v237 = &v215 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v245 = &v215 - v27;
  MEMORY[0x28223BE20](v26);
  v247 = &v215 - v28;
  v265 = sub_20D9727B8();
  v268 = *(v265 - 8);
  MEMORY[0x28223BE20](v265);
  v292 = &v215 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_20D972838();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v244 = &v215 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v267 = &v215 - v34;
  v35 = sub_20D9726F8();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v215 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20D9727D8();
  v40 = *(v39 - 1);
  MEMORY[0x28223BE20](v39);
  v42 = &v215 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = sub_20D972628();
  v249 = *(v291 - 8);
  v43 = MEMORY[0x28223BE20](v291);
  v262 = &v215 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v289 = &v215 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v217 = &v215 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v240 = &v215 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v216 = &v215 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v239 = &v215 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v242 = &v215 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v290 = &v215 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v246 = &v215 - v60;
  MEMORY[0x28223BE20](v59);
  v62 = &v215 - v61;
  v63 = *(v36 + 104);
  v280 = *MEMORY[0x277CC9830];
  v279 = v36 + 104;
  v264 = v63;
  v63(v38);
  sub_20D972708();
  v64 = *(v36 + 8);
  v65 = v38;
  v66 = v38;
  v67 = v35;
  v281 = v36 + 8;
  v263 = v64;
  v64(v66, v35);
  if (qword_281126470 != -1)
  {
LABEL_91:
    swift_once();
  }

  v283 = __swift_project_value_buffer(v30, qword_281126478);
  v225 = v31;
  v68 = v30;
  v270 = v30;
  v284 = *(v31 + 16);
  v69 = v267;
  v284(v267, v283, v68);
  sub_20D972798();
  v70 = v62;
  sub_20D972718();
  v224 = v40;
  v71 = v40[1];
  ++v40;
  v266 = v71;
  v72 = v39;
  (v71)(v42, v39);
  v73 = v268;
  v74 = *(v268 + 104);
  v257 = *MEMORY[0x277CC9968];
  v75 = v265;
  v256 = v268 + 104;
  v255 = v74;
  v74(v292);
  v264(v65, v280, v67);
  sub_20D972708();
  v258 = v65;
  v259 = v67;
  v263(v65, v67);
  v282 = v31 + 16;
  v284(v69, v283, v270);
  sub_20D972798();
  v76 = v246;
  v220 = v70;
  v77 = v292;
  sub_20D9730D8();
  v261 = v42;
  v277 = v40;
  v278 = v72;
  (v266)(v42, v72);
  v78 = *(v73 + 8);
  v268 = v73 + 8;
  v254 = v78;
  v78(v77, v75);
  (*(v248 + 104))(v247, *MEMORY[0x277D075B8], v250);
  v241 = 0x800000020D9898A0;
  v79 = v249 + 16;
  v274 = *(v249 + 16);
  v274(v290, v76, v291);
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
  v252 = 0;
  v65 = 0;
  v39 = (v79 - 8);
  v275 = v79;
  v269 = (v79 + 16);
  v285 = (v273 + 16);
  v286 = v273 + 8;
  v271 = v273 + 32;
  v294 = MEMORY[0x277D84F90];
  v62 = v276;
  v260 = (v79 - 8);
  do
  {
    v80 = *(&unk_282497518 + v65 + 4);
    v67 = v291;
    v81 = v289;
    v287 = v65;
    if (v65)
    {
      v82 = v258;
      v83 = v259;
      v84 = v264;
      v264(v258, v280, v259);
      v85 = v261;
      sub_20D972708();
      v86 = v263;
      v263(v82, v83);
      v65 = v267;
      v87 = v270;
      v284(v267, v283, v270);
      sub_20D972798();
      v88 = v262;
      sub_20D972718();
      v89 = v266;
      (v266)(v85, v278);
      v90 = v77;
      v91 = v265;
      v255(v90, v257, v265);
      v84(v82, v280, v83);
      sub_20D972708();
      v92 = v83;
      v81 = v289;
      v86(v82, v92);
      v93 = v87;
      v94 = v290;
      v284(v65, v283, v93);
      v95 = v291;
      v62 = v276;
      sub_20D972798();
      sub_20D9730D8();
      (v89)(v85, v278);
      v67 = v95;
      v39 = v269;
      v254(v292, v91);
      v40 = v260;
      v96 = *v260;
      (*v260)(v88, v67);
      v96(v94, v67);
      (*v39)(v94, v81, v67);
    }

    if (v80 != 0.0)
    {
      v103 = sub_20D8D6850(&unk_282499B30);
      v104 = sub_20D8D4AC0(0);
      v30 = v272;
      v31 = 1;
      if (v105)
      {
        v106 = v104;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v295 = v103;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_20D8D60B4();
          v103 = v295;
        }

        sub_20D8D4E40(v106, v103);
      }

      v108 = swift_isUniquelyReferenced_nonNull_native();
      v295 = v103;
      sub_20D8D5428(1, v108, 0.3);
      v109 = v295;
      v110 = sub_20D8D4AC0(2);
      if (v111)
      {
        v112 = v110;
        v113 = swift_isUniquelyReferenced_nonNull_native();
        v295 = v109;
        if (!v113)
        {
          sub_20D8D60B4();
          v109 = v295;
        }

        sub_20D8D4E40(v112, v109);
      }

      v114 = swift_isUniquelyReferenced_nonNull_native();
      v295 = v109;
      sub_20D8D5428(3, v114, 0.7);
      v40 = v295;
      v115 = sub_20D8D4AC0(4);
      if (v116)
      {
        v117 = v81;
        v118 = v115;
        v119 = swift_isUniquelyReferenced_nonNull_native();
        v295 = v40;
        if (!v119)
        {
          sub_20D8D60B4();
          v40 = v295;
        }

        sub_20D8D4E40(v118, v40);
        v67 = v291;
        v81 = v117;
      }

      v42 = v30;
      v120 = sub_20D975758();
      v121 = 0;
      v122 = 1 << *(v40 + 32);
      if (v122 < 64)
      {
        v123 = ~(-1 << v122);
      }

      else
      {
        v123 = -1;
      }

      for (i = v123 & v40[8]; i; v120[2] = v132)
      {
        v125 = __clz(__rbit64(i));
        i &= i - 1;
        v126 = v125 | (v121 << 6);
LABEL_31:
        v129 = *(v40[6] + v126);
        v130 = *(v40[7] + v126);
        *(v120 + ((v126 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v126;
        *(v120[6] + 8 * v126) = v129;
        *(v120[7] + 8 * v126) = v80 * v130;
        v131 = v120[2];
        v101 = __OFADD__(v131, 1);
        v132 = v131 + 1;
        if (v101)
        {
          goto LABEL_80;
        }
      }

      v127 = v121;
      while (1)
      {
        v121 = v127 + 1;
        if (__OFADD__(v127, 1))
        {
          break;
        }

        if (v121 >= ((v122 + 63) >> 6))
        {

          goto LABEL_35;
        }

        v128 = v40[v121 + 8];
        ++v127;
        if (v128)
        {
          i = (v128 - 1) & v128;
          v126 = __clz(__rbit64(v128)) | (v121 << 6);
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v30 = v272;
    v97 = sub_20D975778();
    v42 = v97;
    v98 = sub_20D8D4AC0(0);
    v31 = 1;
    if (v99)
    {
      goto LABEL_86;
    }

    v97[(v98 >> 6) + 8] |= 1 << v98;
    *(v97[6] + 8 * v98) = 0;
    *(v97[7] + 8 * v98) = 0;
    v100 = v97[2];
    v101 = __OFADD__(v100, 1);
    v102 = v100 + 1;
    if (v101)
    {
      goto LABEL_87;
    }

    v97[2] = v102;
LABEL_35:
    v40 = sub_20D975778();
    v42 = v40;
    v133 = sub_20D8D4AC0(0);
    if (v134)
    {
      goto LABEL_82;
    }

    v40[(v133 >> 6) + 8] = (v40[(v133 >> 6) + 8] | (1 << v133));
    *(v40[6] + v133) = 0;
    *(v40[7] + v133) = 0;
    v135 = v40[2];
    v101 = __OFADD__(v135, 1);
    v136 = (v135 + 1);
    if (v101)
    {
      goto LABEL_83;
    }

    v40[2] = v136;
    if (v80 != 0.0)
    {
      v39 = v81;
      v141 = sub_20D8D6850(&unk_282499BA0);
      v42 = v30;
      v142 = sub_20D975758();
      v67 = v142;
      v143 = 0;
      v144 = 1 << *(v141 + 32);
      if (v144 < 64)
      {
        v145 = ~(-1 << v144);
      }

      else
      {
        v145 = -1;
      }

      for (j = v145 & *(v141 + 64); j; v142[2] = v154)
      {
        v147 = __clz(__rbit64(j));
        j &= j - 1;
        v148 = v147 | (v143 << 6);
LABEL_51:
        v151 = *(*(v141 + 48) + 8 * v148);
        v152 = *(*(v141 + 56) + 8 * v148);
        *(v142 + ((v148 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v148;
        *(v142[6] + 8 * v148) = v151;
        *(v142[7] + 8 * v148) = v80 * v152;
        v153 = v142[2];
        v101 = __OFADD__(v153, 1);
        v154 = v153 + 1;
        if (v101)
        {
          goto LABEL_81;
        }
      }

      v149 = v143;
      while (1)
      {
        v143 = v149 + 1;
        if (__OFADD__(v149, 1))
        {
          goto LABEL_79;
        }

        if (v143 >= ((v144 + 63) >> 6))
        {

          v252 = 1;
          v62 = v291;
          v81 = v39;
          v39 = v276;
          goto LABEL_55;
        }

        v150 = *(v141 + 64 + 8 * v143);
        ++v149;
        if (v150)
        {
          j = (v150 - 1) & v150;
          v148 = __clz(__rbit64(v150)) | (v143 << 6);
          goto LABEL_51;
        }
      }
    }

    v39 = v62;
    v62 = v67;
    v67 = sub_20D975778();
    v42 = v67;
    v137 = sub_20D8D4AC0(0);
    if (v138)
    {
      goto LABEL_88;
    }

    *(v67 + 8 * (v137 >> 6) + 64) |= 1 << v137;
    *(*(v67 + 48) + 8 * v137) = 0;
    *(*(v67 + 56) + 8 * v137) = 0;
    v139 = *(v67 + 16);
    v101 = __OFADD__(v139, 1);
    v140 = v139 + 1;
    if (v101)
    {
      goto LABEL_89;
    }

    *(v67 + 16) = v140;
LABEL_55:
    v42 = sub_20D975778();
    v155 = sub_20D8D4AC0(0);
    if (v156)
    {
      goto LABEL_84;
    }

    *(v42 + 8 * (v155 >> 6) + 64) |= 1 << v155;
    *(*(v42 + 48) + 8 * v155) = 0;
    *(*(v42 + 56) + 8 * v155) = 0;
    v157 = *(v42 + 16);
    v101 = __OFADD__(v157, 1);
    v158 = v157 + 1;
    if (v101)
    {
      goto LABEL_85;
    }

    *(v42 + 16) = v158;
    v274(v81, v290, v62);
    v159 = v288;
    sub_20D972BF8();
    v40 = *v285;
    v62 = v39;
    (*v285)(v39, v159, v293);
    v160 = v294;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v160 = sub_20D8D486C(0, v160[2] + 1, 1, v160, &qword_27C83A328, &qword_20D97B3D0, MEMORY[0x277D07630]);
    }

    v162 = v160[2];
    v161 = v160[3];
    v163 = v287;
    if (v162 >= v161 >> 1)
    {
      v170 = sub_20D8D486C((v161 > 1), v162 + 1, 1, v160, &qword_27C83A328, &qword_20D97B3D0, MEMORY[0x277D07630]);
      v163 = v287;
      v160 = v170;
    }

    v65 = (v163 + 1);
    v164 = v273;
    v165 = *(v273 + 8);
    v166 = v293;
    v165(v288, v293);
    v160[2] = v162 + 1;
    v167 = v164;
    v168 = (*(v164 + 80) + 32) & ~*(v164 + 80);
    v294 = v160;
    v169 = v160 + v168;
    v67 = *(v167 + 72);
    (*(v167 + 32))(&v169[v67 * v162], v39, v166);
    v77 = v292;
  }

  while (v65 != 1215);
  v31 = v289;
  if (v252)
  {
    v287 = sub_20D84B7B0(&unk_282499BF0);
  }

  else
  {
    v287 = MEMORY[0x277D84FA0];
  }

  v39 = v270;
  v274(v242, v246, v291);
  v284(v244, v283, v39);
  v171 = *(v248 + 16);
  v292 = (v248 + 16);
  v288 = v171;
  (v171)(v245, v247, v250);
  v42 = *(v294 + 16);
  v172 = ( + v168);
  v62 = -v42;
  v30 = -1;
  do
  {
    v65 = (v62 + v30);
    if (v62 + v30 == -1)
    {
      break;
    }

    if (++v30 >= *(v294 + 16))
    {
      goto LABEL_90;
    }

    v39 = &v172[v67];
    v42 = v253;
    v173 = v293;
    (v40)(v253);
    sub_20D972BE8();
    v175 = v174;
    v176 = v173;
    v31 = v289;
    v165(v42, v176);
    v172 = v39;
  }

  while (v175 == 0.0);

  v177 = v243;
  *v243 = 0xD00000000000003ALL;
  v177[1] = v241;
  v178 = v251;
  *(v177 + v251[16]) = 6;
  *(v177 + v178[11]) = v65 != -1;
  (v288)(v237, v245, v250);
  v284(v267, v244, v270);
  v179 = v178[12];

  sub_20D972E28();
  v292 = v179;
  v180 = sub_20D972E38();
  if (*(v180 + 16))
  {
    v181 = v218;
    v182 = v293;
    (v40)(v218, v180 + v168, v293);

    v184 = v216;
    MEMORY[0x20F320DF0](v183);
    v165(v181, v182);
    (*v269)(v239, v184, v291);
  }

  else
  {

    v274(v239, v242, v291);
  }

  sub_20D972DA8();
  v185 = sub_20D972E38();
  v186 = *(v185 + 16);
  if (v186)
  {
    v187 = v185 + v168 + (v186 - 1) * v67;
    v188 = v219;
    v189 = v293;
    (v40)(v219, v187, v293);

    v191 = v217;
    MEMORY[0x20F320DF0](v190);
    v165(v188, v189);
    v192 = v291;
    (*v269)(v240, v191, v291);
  }

  else
  {

    v192 = v291;
    v274(v240, v242, v291);
  }

  v193 = v243;
  sub_20D972DA8();
  sub_20D971D78();
  sub_20D971D78();
  sub_20D971D78();
  sub_20D971D78();
  sub_20D971D78();
  v194 = v262;
  sub_20D971D48();
  sub_20D8D6D28(&qword_281126E30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  result = sub_20D974FC8();
  if (result)
  {
    v196 = *(v249 + 32);
    v197 = v227;
    v196(v227, v31, v192);
    v198 = v229;
    v196((v197 + *(v229 + 48)), v194, v192);
    v199 = v228;
    sub_20D7EB7E8(v197, v228, &unk_27C83C750, &unk_20D978DD0);
    v200 = *(v198 + 48);
    v196(v238, v199, v192);
    v201 = *(v249 + 8);
    v201(v199 + v200, v192);
    sub_20D829514(v197, v199);
    v202 = v238;
    v203 = &v238[*(v226 + 36)];
    v204 = v199 + *(v198 + 48);
    v293 = v196;
    v196(v203, v204, v192);
    v288 = v201;
    v201(v199, v192);
    v205 = v230;
    (*(v231 + 16))(v230, &v292[v193], v232);
    sub_20D9725C8();
    HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v202, v205, v31, v193 + v251[13]);
    v206 = v278;
    v224[7](v233, 1, 1, v278);
    v207 = v225;
    (*(v225 + 56))(v234, 1, 1, v270);
    v208 = v235;
    sub_20D971E98();
    v209 = v261;
    sub_20D972E48();
    v210 = v236;
    sub_20D972748();
    (v266)(v209, v206);
    result = (*(v249 + 48))(v210, 1, v192);
    if (result != 1)
    {

      (*(v221 + 8))(v208, v222);
      v211 = v288;
      (v288)(v240, v192);
      v211(v239, v192);
      v212 = *(v248 + 8);
      v213 = v250;
      v212(v245, v250);
      (*(v207 + 8))(v244, v270);
      v211(v242, v192);
      v211(v290, v192);
      v212(v247, v213);
      v211(v246, v192);
      v211(v220, v192);
      v214 = v251;
      (v293)(v193 + v251[14], v210, v192);
      *(v193 + v214[15]) = v287;
      return sub_20D8D6C58(v193, v223, type metadata accessor for HistoricalUsageSnapshot);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void static HistoricalUsageSnapshot.staticMock_WidgetPlaceholderData_8dFrom06102024_Import_Week_Snapshot(with:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v226 = a2;
  v272 = sub_20D9727B8();
  v290 = *(v272 - 8);
  MEMORY[0x28223BE20](v272);
  v271 = &v219 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_20D972E88();
  v244 = *(v245 - 8);
  MEMORY[0x28223BE20](v245);
  v243 = &v219 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v5 = MEMORY[0x28223BE20](v242);
  v241 = &v219 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v239 = &v219 - v7;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  MEMORY[0x28223BE20](v238);
  v240 = &v219 - v8;
  v263 = type metadata accessor for HistoricalUsageSnapshot(0);
  MEMORY[0x28223BE20](v263);
  v256 = (&v219 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v289 = sub_20D972C58();
  v278 = *(v289 - 1);
  v10 = MEMORY[0x28223BE20](v289);
  v288 = &v219 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v287 = &v219 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v223 = &v219 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v222 = &v219 - v17;
  MEMORY[0x28223BE20](v16);
  v267 = &v219 - v18;
  v265 = sub_20D972838();
  v262 = *(v265 - 8);
  v19 = MEMORY[0x28223BE20](v265);
  v248 = &v219 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v258 = &v219 - v22;
  MEMORY[0x28223BE20](v21);
  v261 = &v219 - v23;
  v264 = sub_20D972AF8();
  v260 = *(v264 - 8);
  v24 = MEMORY[0x28223BE20](v264);
  v247 = &v219 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v257 = &v219 - v27;
  MEMORY[0x28223BE20](v26);
  v259 = &v219 - v28;
  v29 = sub_20D9727D8();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v236 = &v219 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v281 = &v219 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v250 = &v219 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v219 - v37;
  v39 = sub_20D972628();
  v282 = *(v39 - 8);
  v283 = v39;
  v40 = MEMORY[0x28223BE20](v39);
  v273 = &v219 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v280 = &v219 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v221 = &v219 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v252 = &v219 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v220 = &v219 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v251 = &v219 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v255 = &v219 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v284 = &v219 - v55;
  MEMORY[0x28223BE20](v54);
  v57 = &v219 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  MEMORY[0x28223BE20](v58 - 8);
  v60 = &v219 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  MEMORY[0x28223BE20](v61 - 8);
  v63 = &v219 - v62;
  v249 = sub_20D971EA8();
  v225 = *(v249 - 8);
  v64 = MEMORY[0x28223BE20](v249);
  v235 = &v219 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v67 = &v219 - v66;
  v68 = *(v30 + 16);
  v68(v63, a1, v29);
  v237 = v30;
  v69 = *(v30 + 56);
  v254 = v29;
  v230 = v30 + 56;
  v229 = v69;
  v69(v63, 0, 1, v29);
  v70 = v262[7];
  v71 = v283;
  v228 = v262 + 7;
  v227 = v70;
  v70(v60, 1, 1, v265);
  v233 = v63;
  v234 = v60;
  sub_20D971E98();
  v224 = v67;
  v72 = v282;
  sub_20D972748();
  v73 = v72[6];
  v232 = v72 + 6;
  v231 = v73;
  if (v73(v38, 1, v71) != 1)
  {
    v275 = v72[4];
    v276 = v72 + 4;
    v275(v57, v38, v71);
    v68(v281, a1, v254);
    (*(v260 + 104))(v259, *MEMORY[0x277D075B8], v264);
    sub_20D972788();
    v246 = 0x800000020D988FA0;
    v74 = v72[2];
    v253 = v57;
    v279 = v74;
    v74(v284, v57, v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
    v266 = 0;
    v75 = 0;
    v270 = *MEMORY[0x277CC9968];
    v269 = (v290 + 13);
    v268 = (v290 + 1);
    v282 = v72 + 2;
    v274 = (v72 + 1);
    v285 = (v278 + 16);
    v286 = v278 + 8;
    v277 = (v278 + 32);
    v290 = MEMORY[0x277D84F90];
    while (1)
    {
      v76 = dbl_28249A058[v75 + 4];
      v77 = v280;
      v78 = v284;
      if (v75)
      {
        v79 = v273;
        sub_20D972718();
        v80 = v271;
        v81 = v272;
        (*v269)(v271, v270, v272);
        sub_20D9730D8();
        (*v268)(v80, v81);
        v82 = *v274;
        (*v274)(v79, v71);
        (v82)(v78, v71);
        v275(v78, v77, v71);
      }

      if (v76 != 0.0)
      {
        break;
      }

      v83 = sub_20D975778();
      v84 = sub_20D8D4AC0(0);
      if (v85)
      {
        goto LABEL_86;
      }

      v83[(v84 >> 6) + 8] |= 1 << v84;
      *(v83[6] + 8 * v84) = 0;
      *(v83[7] + 8 * v84) = 0;
      v86 = v83[2];
      v87 = __OFADD__(v86, 1);
      v88 = v86 + 1;
      if (v87)
      {
        goto LABEL_87;
      }

      v83[2] = v88;
LABEL_35:
      v119 = sub_20D975778();
      v120 = sub_20D8D4AC0(0);
      if (v121)
      {
        goto LABEL_82;
      }

      v119[(v120 >> 6) + 8] |= 1 << v120;
      *(v119[6] + 8 * v120) = 0;
      *(v119[7] + 8 * v120) = 0;
      v122 = v119[2];
      v87 = __OFADD__(v122, 1);
      v123 = v122 + 1;
      if (v87)
      {
        goto LABEL_83;
      }

      v119[2] = v123;
      if (v76 != 0.0)
      {
        v129 = sub_20D8D6850(&unk_28249A128);
        v130 = sub_20D975758();
        v131 = 0;
        v132 = 1 << *(v129 + 32);
        if (v132 < 64)
        {
          v133 = ~(-1 << v132);
        }

        else
        {
          v133 = -1;
        }

        v134 = v133 & *(v129 + 64);
        if (v134)
        {
          while (1)
          {
            v135 = __clz(__rbit64(v134));
            v134 &= v134 - 1;
            v136 = v135 | (v131 << 6);
LABEL_51:
            v139 = *(*(v129 + 48) + 8 * v136);
            v140 = *(*(v129 + 56) + 8 * v136);
            *(v130 + ((v136 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v136;
            *(v130[6] + 8 * v136) = v139;
            *(v130[7] + 8 * v136) = v76 * v140;
            v141 = v130[2];
            v87 = __OFADD__(v141, 1);
            v142 = v141 + 1;
            if (v87)
            {
              break;
            }

            v130[2] = v142;
            if (!v134)
            {
              goto LABEL_46;
            }
          }

LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
          goto LABEL_91;
        }

LABEL_46:
        v137 = v131;
        while (1)
        {
          v131 = v137 + 1;
          if (__OFADD__(v137, 1))
          {
            break;
          }

          if (v131 >= ((v132 + 63) >> 6))
          {

            v266 = 1;
            v78 = v284;
            goto LABEL_55;
          }

          v138 = *(v129 + 64 + 8 * v131);
          ++v137;
          if (v138)
          {
            v134 = (v138 - 1) & v138;
            v136 = __clz(__rbit64(v138)) | (v131 << 6);
            goto LABEL_51;
          }
        }

LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v124 = sub_20D975778();
      v125 = sub_20D8D4AC0(0);
      if (v126)
      {
        goto LABEL_88;
      }

      v124[(v125 >> 6) + 8] |= 1 << v125;
      *(v124[6] + 8 * v125) = 0;
      *(v124[7] + 8 * v125) = 0;
      v127 = v124[2];
      v87 = __OFADD__(v127, 1);
      v128 = v127 + 1;
      if (v87)
      {
        goto LABEL_89;
      }

      v124[2] = v128;
LABEL_55:
      v143 = sub_20D975778();
      v144 = sub_20D8D4AC0(0);
      if (v145)
      {
        goto LABEL_84;
      }

      v143[(v144 >> 6) + 8] |= 1 << v144;
      *(v143[6] + 8 * v144) = 0;
      *(v143[7] + 8 * v144) = 0;
      v146 = v143[2];
      v87 = __OFADD__(v146, 1);
      v147 = v146 + 1;
      if (v87)
      {
        goto LABEL_85;
      }

      v143[2] = v147;
      v279(v77, v78, v71);
      v148 = v287;
      sub_20D972BF8();
      v149 = *v285;
      (*v285)(v288, v148, v289);
      v150 = v290;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v150 = sub_20D8D486C(0, v150[2] + 1, 1, v150, &qword_27C83A328, &qword_20D97B3D0, MEMORY[0x277D07630]);
      }

      v152 = v150[2];
      v151 = v150[3];
      if (v152 >= v151 >> 1)
      {
        v150 = sub_20D8D486C((v151 > 1), v152 + 1, 1, v150, &qword_27C83A328, &qword_20D97B3D0, MEMORY[0x277D07630]);
      }

      ++v75;
      v153 = v278;
      v154 = *(v278 + 8);
      v155 = v289;
      v154(v287, v289);
      v150[2] = v152 + 1;
      v156 = v153;
      v157 = (*(v153 + 80) + 32) & ~*(v153 + 80);
      v290 = v150;
      v158 = v150 + v157;
      v159 = *(v156 + 72);
      (*(v156 + 32))(&v158[v159 * v152], v288, v155);
      v71 = v283;
      if (v75 == 8)
      {
        if (v266)
        {
          v272 = sub_20D84B7B0(&unk_28249A178);
        }

        else
        {
          v272 = MEMORY[0x277D84FA0];
        }

        v160 = v265;
        v161 = v260;
        v162 = v259;
        v279(v255, v253, v71);
        v287 = v262[2];
        v288 = (v262 + 2);
        (v287)(v258, v261, v160);
        v277 = *(v161 + 16);
        v278 = v161 + 16;
        v277(v257, v162, v264);
        v163 = v290[2];
        v164 =  + v157;
        v165 = -v163;
        v166 = -1;
        do
        {
          v167 = v165 + v166;
          if (v165 + v166 == -1)
          {
            break;
          }

          if (++v166 >= v290[2])
          {
            goto LABEL_90;
          }

          v168 = v164 + v159;
          v169 = v267;
          v170 = v289;
          v149(v267);
          sub_20D972BE8();
          v172 = v171;
          v154(v169, v170);
          v164 = v168;
        }

        while (v172 == 0.0);

        v173 = v256;
        *v256 = 0xD00000000000004BLL;
        v173[1] = v246;
        v174 = v263;
        *(v173 + v263[16]) = 6;
        *(v173 + v174[11]) = v167 != -1;
        v277(v247, v257, v264);
        (v287)(v248, v258, v265);
        v175 = v174[12];

        sub_20D972E28();
        v176 = sub_20D972E38();
        if (*(v176 + 16))
        {
          v177 = v175;
          v178 = v222;
          v179 = v289;
          (v149)(v222, v176 + v157, v289);

          v181 = v220;
          MEMORY[0x20F320DF0](v180);
          v182 = v178;
          v175 = v177;
          v154(v182, v179);
          v275(v251, v181, v283);
        }

        else
        {

          v279(v251, v255, v283);
        }

        sub_20D972DA8();
        v183 = sub_20D972E38();
        v184 = *(v183 + 16);
        if (v184)
        {
          v185 = v183 + v157 + (v184 - 1) * v159;
          v186 = v175;
          v187 = v223;
          v188 = v289;
          (v149)(v223, v185, v289);

          v190 = v221;
          MEMORY[0x20F320DF0](v189);
          v191 = v187;
          v175 = v186;
          v154(v191, v188);
          v192 = v190;
          v193 = v283;
          v275(v252, v192, v283);
        }

        else
        {

          v193 = v283;
          v279(v252, v255, v283);
        }

        v194 = v256;
        sub_20D972DA8();
        sub_20D971D78();
        sub_20D971D78();
        sub_20D971D78();
        sub_20D971D78();
        v195 = v280;
        sub_20D971D78();
        v196 = v175;
        v197 = v273;
        sub_20D971D48();
        sub_20D8D6D28(&qword_281126E30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        if (sub_20D974FC8())
        {
          v198 = v239;
          v199 = v275;
          v275(v239, v195, v193);
          v289 = v196;
          v200 = v242;
          v199(v198 + *(v242 + 48), v197, v193);
          v201 = v241;
          sub_20D7EB7E8(v198, v241, &unk_27C83C750, &unk_20D978DD0);
          v202 = *(v200 + 48);
          v203 = v240;
          v199(v240, v201, v283);
          v204 = *v274;
          (*v274)(v201 + v202, v283);
          sub_20D829514(v198, v201);
          v199(v203 + *(v238 + 36), (v201 + *(v200 + 48)), v283);
          v205 = v201;
          v206 = v283;
          v288 = v204;
          (v204)(v205, v283);
          v207 = v243;
          (*(v244 + 16))(v243, v289 + v194, v245);
          v208 = v280;
          sub_20D9725C8();
          HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v203, v207, v208, v194 + v263[13]);
          v209 = v254;
          v229(v233, 1, 1, v254);
          v227(v234, 1, 1, v265);
          v210 = v235;
          sub_20D971E98();
          v211 = v236;
          sub_20D972E48();
          v212 = v250;
          sub_20D972748();
          v213 = *(v237 + 8);
          v213(v211, v209);
          v213(v281, v209);
          if (v231(v212, 1, v206) == 1)
          {
            goto LABEL_93;
          }

          v290 = *(v225 + 8);
          (v290)(v210, v249);
          v214 = v288;
          (v288)(v252, v206);
          (v214)(v251, v206);
          v289 = *(v260 + 8);
          v215 = v264;
          (v289)(v257, v264);
          v216 = v262[1];
          v217 = v265;
          v216(v258, v265);
          (v214)(v255, v206);
          (v214)(v284, v206);
          v216(v261, v217);
          (v289)(v259, v215);
          (v214)(v253, v206);
          (v290)(v224, v249);
          v218 = v263;
          v275((v194 + v263[14]), v250, v206);
          *(v194 + v218[15]) = v272;
          sub_20D8D6C58(v194, v226, type metadata accessor for HistoricalUsageSnapshot);
          return;
        }

LABEL_91:
        __break(1u);
        goto LABEL_92;
      }
    }

    v89 = sub_20D8D6850(&unk_28249A0B8);
    v90 = sub_20D8D4AC0(0);
    if (v91)
    {
      v92 = v90;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v291 = v89;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_20D8D60B4();
        v89 = v291;
      }

      sub_20D8D4E40(v92, v89);
    }

    v94 = swift_isUniquelyReferenced_nonNull_native();
    v291 = v89;
    sub_20D8D5428(1, v94, 0.3);
    v95 = v291;
    v96 = sub_20D8D4AC0(2);
    if (v97)
    {
      v98 = v96;
      v99 = swift_isUniquelyReferenced_nonNull_native();
      v291 = v95;
      if (!v99)
      {
        sub_20D8D60B4();
        v95 = v291;
      }

      sub_20D8D4E40(v98, v95);
    }

    v100 = swift_isUniquelyReferenced_nonNull_native();
    v291 = v95;
    sub_20D8D5428(3, v100, 0.7);
    v101 = v291;
    v102 = sub_20D8D4AC0(4);
    if (v103)
    {
      v104 = v102;
      v105 = swift_isUniquelyReferenced_nonNull_native();
      v291 = v101;
      if (!v105)
      {
        sub_20D8D60B4();
        v101 = v291;
      }

      sub_20D8D4E40(v104, v101);
    }

    v106 = sub_20D975758();
    v107 = 0;
    v108 = 1 << *(v101 + 32);
    if (v108 < 64)
    {
      v109 = ~(-1 << v108);
    }

    else
    {
      v109 = -1;
    }

    v110 = v109 & *(v101 + 64);
    if (!v110)
    {
LABEL_26:
      v113 = v107;
      while (1)
      {
        v107 = v113 + 1;
        if (__OFADD__(v113, 1))
        {
          break;
        }

        if (v107 >= ((v108 + 63) >> 6))
        {

          goto LABEL_35;
        }

        v114 = *(v101 + 64 + 8 * v107);
        ++v113;
        if (v114)
        {
          v110 = (v114 - 1) & v114;
          v112 = __clz(__rbit64(v114)) | (v107 << 6);
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_79;
    }

    while (1)
    {
      v111 = __clz(__rbit64(v110));
      v110 &= v110 - 1;
      v112 = v111 | (v107 << 6);
LABEL_31:
      v115 = *(*(v101 + 48) + 8 * v112);
      v116 = *(*(v101 + 56) + 8 * v112);
      *(v106 + ((v112 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v112;
      *(v106[6] + 8 * v112) = v115;
      *(v106[7] + 8 * v112) = v76 * v116;
      v117 = v106[2];
      v87 = __OFADD__(v117, 1);
      v118 = v117 + 1;
      if (v87)
      {
        break;
      }

      v106[2] = v118;
      if (!v110)
      {
        goto LABEL_26;
      }
    }

LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
}

uint64_t sub_20D8B1D48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A368, &unk_20D97B460);
  v0 = *(type metadata accessor for HistoricalUsageSnapshot(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20D97A6F0;
  if (qword_27C8385E8 != -1)
  {
    swift_once();
  }

  v4 = v3 + v2;
  v5 = sub_20D972628();
  v6 = __swift_project_value_buffer(v5, qword_27C83A190);
  static HistoricalUsageSnapshot.mock_ImportsUpData_13of14d_Import_Week_Snapshot_StartingOn(_:)(v6, v4);
  static HistoricalUsageSnapshot.mock_SimpleData_12of14d_Import_Week_Snapshot_StartingOn(_:)(v6, v4 + v1);
  result = static HistoricalUsageSnapshot.mock_ImportsDownData_13of14d_Import_Week_Snapshot_StartingOn(_:)(v6, v4 + 2 * v1);
  off_27C83A188 = v3;
  return result;
}

double static HistoricalUsageSnapshot.severalMocks.getter()
{
  if (qword_27C8385D8 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_20D8B1F14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_20D972838();
  __swift_allocate_value_buffer(v3, qword_281126478);
  v4 = __swift_project_value_buffer(v3, qword_281126478);
  sub_20D9727E8();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_20D8B2044()
{
  v0 = sub_20D972838();
  v29 = *(v0 - 8);
  v30 = v0;
  MEMORY[0x28223BE20](v0);
  v28 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_20D9726F8();
  v2 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20D9727D8();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D9727B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20D972628();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v14, qword_27C83A190);
  __swift_project_value_buffer(v12, qword_27C83A190);
  sub_20D9725C8();
  v17 = *MEMORY[0x277CC9968];
  v18 = *(v9 + 104);
  v25 = v8;
  v18(v11, v17, v8);
  v19 = v24;
  (*(v2 + 104))(v4, *MEMORY[0x277CC9830], v24);
  sub_20D972708();
  (*(v2 + 8))(v4, v19);
  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v20 = v30;
  v21 = __swift_project_value_buffer(v30, qword_281126478);
  (*(v29 + 16))(v28, v21, v20);
  sub_20D972798();
  sub_20D9730D8();
  (*(v26 + 8))(v7, v27);
  (*(v9 + 8))(v11, v25);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_20D8B2450()
{
  v116 = sub_20D9727D8();
  v113 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v115 = &v93 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v1 - 8);
  v117 = &v93 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  MEMORY[0x28223BE20](v3 - 8);
  v114 = &v93 - v4;
  v102 = sub_20D971EA8();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v112 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_20D972E88();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v7 = MEMORY[0x28223BE20](v108);
  v107 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v105 = &v93 - v9;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  MEMORY[0x28223BE20](v104);
  v106 = &v93 - v10;
  v11 = sub_20D972C58();
  v120 = *(v11 - 8);
  v121 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v96 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v95 = &v93 - v14;
  v15 = sub_20D972838();
  v128 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v118 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HistoricalUsageSnapshot(0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_20D972AF8();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v93 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v103 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v93 - v30;
  v127 = sub_20D972628();
  v131 = *(v127 - 8);
  v32 = MEMORY[0x28223BE20](v127);
  v119 = &v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v126 = &v93 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v94 = &v93 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v125 = &v93 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v93 = &v93 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v124 = &v93 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = &v93 - v44;
  __swift_allocate_value_buffer(v17, qword_27C83A1A8);
  v100 = __swift_project_value_buffer(v17, qword_27C83A1A8);
  v122 = v45;
  v46 = v128;
  sub_20D9725C8();
  sub_20D9727E8();
  result = (*(v46 + 48))(v31, 1, v15);
  if (result == 1)
  {
    goto LABEL_12;
  }

  (*(v21 + 104))(v26, *MEMORY[0x277D075B8], v20);
  *v19 = 0xD000000000000017;
  v19[1] = 0x800000020D989880;
  *(v19 + v17[16]) = 6;
  *(v19 + v17[11]) = 0;
  v98 = v21;
  v48 = *(v21 + 16);
  v99 = v20;
  v48(v24, v26, v20);
  v49 = *(v46 + 16);
  v97 = v31;
  v123 = v15;
  v49(v118, v31, v15);
  v50 = v17[12];
  sub_20D972E28();
  v130 = v50;
  v51 = sub_20D972E38();
  v52 = *(v51 + 16);
  v53 = v17;
  v118 = v26;
  if (v52)
  {
    v55 = v120;
    v54 = v121;
    v56 = v95;
    (*(v120 + 16))(v95, v51 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v121);

    v58 = v93;
    MEMORY[0x20F320DF0](v57);
    (*(v55 + 8))(v56, v54);
    v59 = v127;
    (*(v131 + 32))(v124, v58, v127);
    v60 = v125;
  }

  else
  {

    v59 = v127;
    (*(v131 + 16))(v124, v122, v127);
    v60 = v125;
    v55 = v120;
    v54 = v121;
  }

  v129 = v53;
  sub_20D972DA8();
  v61 = sub_20D972E38();
  v62 = *(v61 + 16);
  if (v62)
  {
    v63 = v96;
    (*(v55 + 16))(v96, v61 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * (v62 - 1), v54);

    v65 = v94;
    MEMORY[0x20F320DF0](v64);
    (*(v55 + 8))(v63, v54);
    (*(v131 + 32))(v60, v65, v59);
  }

  else
  {

    (*(v131 + 16))(v60, v122, v59);
  }

  sub_20D972DA8();
  sub_20D971D78();
  sub_20D971D78();
  sub_20D971D78();
  sub_20D971D78();
  v66 = v126;
  sub_20D971D78();
  v67 = v119;
  sub_20D971D48();
  sub_20D8D6D28(&qword_281126E30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  result = sub_20D974FC8();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v68 = v131;
  v121 = v19;
  v69 = v131 + 32;
  v70 = *(v131 + 32);
  v96 = v70;
  v71 = v105;
  (v70)(v105, v66, v59);
  v72 = v108;
  (v70)(v71 + *(v108 + 48), v67, v59);
  v73 = v107;
  sub_20D7EB7E8(v71, v107, &unk_27C83C750, &unk_20D978DD0);
  v74 = *(v72 + 48);
  v75 = v106;
  (v70)(v106, v73, v59);
  v76 = (v68 + 8);
  v77 = *(v68 + 8);
  v77(v73 + v74, v59);
  sub_20D829514(v71, v73);
  v78 = v75 + *(v104 + 36);
  v79 = v73 + *(v72 + 48);
  v120 = v69;
  (v70)(v78, v79, v59);
  v80 = v77;
  v81 = v121;
  v119 = v76;
  v77(v73, v59);
  v82 = v109;
  (*(v110 + 16))(v109, v81 + v130, v111);
  v83 = v126;
  sub_20D9725C8();
  HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v75, v82, v83, v81 + v129[13]);
  v84 = v113;
  v85 = v116;
  (*(v113 + 56))(v114, 1, 1, v116);
  v86 = v128;
  (*(v128 + 56))(v103, 1, 1, v123);
  v87 = v112;
  sub_20D971E98();
  v88 = v87;
  v89 = v115;
  sub_20D972E48();
  v90 = v117;
  sub_20D972748();
  (*(v84 + 8))(v89, v85);
  v91 = v127;
  result = (*(v131 + 48))(v90, 1, v127);
  if (result != 1)
  {
    (*(v101 + 8))(v88, v102);
    v80(v125, v91);
    v80(v124, v91);
    (*(v98 + 8))(v118, v99);
    v80(v122, v91);
    (*(v86 + 8))(v97, v123);
    v92 = v129;
    (v96)(v81 + v129[14], v90, v91);
    *(v81 + v92[15]) = MEMORY[0x277D84FA0];
    return sub_20D8D6C58(v81, v100, type metadata accessor for HistoricalUsageSnapshot);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_20D8B33B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for HistoricalUsageSnapshot(0);
  v7 = __swift_project_value_buffer(v6, a2);
  return sub_20D8D6CC0(v7, a4, type metadata accessor for HistoricalUsageSnapshot);
}

uint64_t sub_20D8B341C()
{
  v123 = sub_20D9727D8();
  v118 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v122 = &v100 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v1 - 8);
  v124 = &v100 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  MEMORY[0x28223BE20](v3 - 8);
  v121 = &v100 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  MEMORY[0x28223BE20](v5 - 8);
  v119 = &v100 - v6;
  v108 = sub_20D971EA8();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v120 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_20D972E88();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v9 = MEMORY[0x28223BE20](v114);
  v113 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v111 = &v100 - v11;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  MEMORY[0x28223BE20](v110);
  v112 = &v100 - v12;
  v13 = sub_20D972C58();
  v129 = *(v13 - 8);
  v130 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v103 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v102 = &v100 - v16;
  v17 = type metadata accessor for HistoricalUsageSnapshot(0);
  MEMORY[0x28223BE20](v17);
  v141 = (&v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_20D972AF8();
  v138 = *(v19 - 8);
  v139 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v126 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v137 = &v100 - v22;
  v23 = sub_20D972838();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v136 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v100 - v27;
  v142 = sub_20D972628();
  v29 = *(v142 - 8);
  v30 = MEMORY[0x28223BE20](v142);
  v127 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v101 = &v100 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v135 = &v100 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v100 = &v100 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v134 = &v100 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v100 - v41;
  MEMORY[0x28223BE20](v40);
  v144 = &v100 - v43;
  __swift_allocate_value_buffer(v17, qword_27C83A1D8);
  v140 = v17;
  v106 = __swift_project_value_buffer(v17, qword_27C83A1D8);
  sub_20D9725C8();
  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v44 = __swift_project_value_buffer(v23, qword_281126478);
  v45 = *(v24 + 16);
  v46 = v28;
  v45(v28, v44, v23);
  v125 = v45;
  sub_20D973088();
  v109 = v24;
  v47 = *(v24 + 8);
  v105 = v24 + 8;
  v104 = v47;
  v47(v28, v23);
  v143 = v29;
  v48 = *(v29 + 8);
  v128 = v42;
  v131 = v48;
  v132 = v29 + 8;
  v48(v42, v142);
  v49 = v136;
  v45(v136, v44, v23);
  v50 = v137;
  v51 = v138;
  v52 = v139;
  (*(v138 + 104))(v137, *MEMORY[0x277D075B8], v139);
  v53 = v141;
  *v141 = 0xD000000000000017;
  v53[1] = 0x800000020D989880;
  v54 = v140;
  *(v53 + *(v140 + 64)) = 6;
  *(v53 + *(v54 + 44)) = 0;
  (*(v51 + 16))(v126, v50, v52);
  v133 = v23;
  v125(v46, v49, v23);
  v55 = *(v54 + 48);
  sub_20D972E28();
  v56 = sub_20D972E38();
  v57 = v143;
  if (*(v56 + 16))
  {
    v59 = v129;
    v58 = v130;
    v60 = v102;
    (*(v129 + 16))(v102, v56 + ((*(v59 + 80) + 32) & ~*(v59 + 80)), v130);

    v62 = v100;
    MEMORY[0x20F320DF0](v61);
    (*(v59 + 8))(v60, v58);
    v63 = v62;
    v64 = v142;
    (*(v57 + 32))(v134, v63, v142);
    v65 = v57;
    v66 = v135;
    v67 = v144;
  }

  else
  {

    v67 = v144;
    v64 = v142;
    (*(v57 + 16))(v134, v144, v142);
    v65 = v57;
    v66 = v135;
  }

  sub_20D972DA8();
  v68 = sub_20D972E38();
  v69 = *(v68 + 16);
  if (v69)
  {
    v70 = v55;
    v71 = v66;
    v72 = v129;
    v73 = v130;
    v74 = v103;
    (*(v129 + 16))(v103, v68 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * (v69 - 1), v130);

    v76 = v101;
    MEMORY[0x20F320DF0](v75);
    (*(v72 + 8))(v74, v73);
    v77 = v71;
    v55 = v70;
    v65 = v143;
    (*(v143 + 32))(v77, v76, v64);
  }

  else
  {

    (*(v65 + 16))(v66, v67, v64);
  }

  sub_20D972DA8();
  sub_20D971D78();
  sub_20D971D78();
  sub_20D971D78();
  sub_20D971D78();
  v78 = v128;
  sub_20D971D78();
  v79 = v127;
  sub_20D971D48();
  sub_20D8D6D28(&qword_281126E30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  result = sub_20D974FC8();
  if (result)
  {
    v142 = v55;
    v81 = *(v65 + 32);
    v129 = v65 + 32;
    v82 = v111;
    v81(v111, v78, v64);
    v83 = v114;
    v81((v82 + *(v114 + 48)), v79, v64);
    v84 = v113;
    sub_20D7EB7E8(v82, v113, &unk_27C83C750, &unk_20D978DD0);
    v85 = *(v83 + 48);
    v86 = v112;
    v81(v112, v84, v64);
    v87 = v131;
    v131(v84 + v85, v64);
    sub_20D829514(v82, v84);
    v88 = v86 + *(v110 + 36);
    v89 = v84 + *(v83 + 48);
    v130 = v81;
    v81(v88, v89, v64);
    v90 = v141;
    v87(v84, v64);
    v91 = v115;
    (*(v116 + 16))(v115, v90 + v142, v117);
    sub_20D9725C8();
    v92 = v140;
    HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v86, v91, v78, v90 + *(v140 + 52));
    v93 = v118;
    v94 = v92;
    v95 = v123;
    (*(v118 + 56))(v119, 1, 1, v123);
    (*(v109 + 56))(v121, 1, 1, v133);
    v96 = v120;
    sub_20D971E98();
    v97 = v122;
    sub_20D972E48();
    v98 = v124;
    sub_20D972748();
    (*(v93 + 8))(v97, v95);
    result = (*(v143 + 48))(v98, 1, v64);
    if (result != 1)
    {
      (*(v107 + 8))(v96, v108);
      v99 = v131;
      v131(v135, v64);
      v99(v134, v64);
      (*(v138 + 8))(v137, v139);
      v104(v136, v133);
      v99(v144, v64);
      v130(v90 + *(v94 + 56), v98, v64);
      *(v90 + *(v94 + 60)) = MEMORY[0x277D84FA0];
      return sub_20D8D6C58(v90, v106, type metadata accessor for HistoricalUsageSnapshot);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}