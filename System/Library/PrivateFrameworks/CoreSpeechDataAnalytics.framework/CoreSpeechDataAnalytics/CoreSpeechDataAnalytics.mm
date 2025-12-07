_DWORD *sub_2478E2E5C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_2478E2E7C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  LOBYTE(a3) = v5(a2, a3);

  return a3 & 1;
}

uint64_t sub_2478E2ED8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2478E2F10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2478E2F88(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2478E2FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2478E30B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2478E3178()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2478E31C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2478E3214()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2478E3250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t *a7)
{
  v8 = v7;
  v10 = *a5;
  *(v7 + 120) = a1;
  *(v7 + 128) = a2;
  *(v7 + 88) = a6;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  *(v7 + 80) = v10;
  type metadata accessor for SiriRequestRecordFactory();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v7 + 72) = v11;
  *(v7 + 96) = MEMORY[0x277D84F90];
  v12 = *a7;
  if (!*a7)
  {
    v16 = qword_27EE571C0;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_24794ED34();
    __swift_project_value_buffer(v17, qword_27EE58DF8);
    v18 = sub_24794ED14();
    v19 = sub_24794F164();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2478E1000, v18, v19, "#BaseSiriRequestSamplingActionEvent: cannot get samplingUtils from dependencies", v20, 2u);
      MEMORY[0x24C1AF180](v20, -1, -1);
    }

    v42 = a7[2];
    sub_2478E9620(&v42, &qword_27EE57290, &unk_2479504F0);
    v41 = a7[3];
    v21 = &qword_27EE57298;
    v22 = &unk_2479503D0;
    goto LABEL_19;
  }

  v13 = a7[1];
  v14 = a7[3];
  v42 = v14;
  if (!v14)
  {
    v23 = qword_27EE571C0;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = sub_24794ED34();
    __swift_project_value_buffer(v24, qword_27EE58DF8);
    v25 = sub_24794ED14();
    v26 = sub_24794F164();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2478E1000, v25, v26, "#BaseSiriRequestSamplingActionEvent: siriProfileManager is nil", v27, 2u);
      MEMORY[0x24C1AF180](v27, -1, -1);

      v41 = a7[2];
      sub_2478E9620(&v41, &qword_27EE57290, &unk_2479504F0);
      v21 = &qword_27EE57298;
      v22 = &unk_2479503D0;
      v28 = &v42;
LABEL_20:
      sub_2478E9620(v28, v21, v22);
      v40 = a7[4];
      v33 = &qword_27EE572A0;
      v34 = &unk_247950500;
      v35 = &v40;
LABEL_21:
      sub_2478E9620(v35, v33, v34);
      v39 = a7[5];
      sub_2478E9620(&v39, &qword_27EE572A8, &unk_2479503E0);

      type metadata accessor for BaseSiriRequestSamplingActionEvent();
      swift_deallocPartialClassInstance();
      return 0;
    }

    v41 = a7[2];
    v21 = &qword_27EE57290;
    v22 = &unk_2479504F0;
LABEL_19:
    v28 = &v41;
    goto LABEL_20;
  }

  v15 = a7[4];
  v41 = v15;
  if (!v15)
  {

    sub_2478E9680(&v42, &v40, &qword_27EE57298, &unk_2479503D0);
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v29 = sub_24794ED34();
    __swift_project_value_buffer(v29, qword_27EE58DF8);
    v30 = sub_24794ED14();
    v31 = sub_24794F164();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2478E1000, v30, v31, "#BaseSiriRequestSamplingActionEvent: audioFileManager is nil", v32, 2u);
      MEMORY[0x24C1AF180](v32, -1, -1);
      sub_2478E9620(&v42, &qword_27EE57298, &unk_2479503D0);

      v40 = a7[2];
      sub_2478E9620(&v40, &qword_27EE57290, &unk_2479504F0);
      sub_2478E9620(&v42, &qword_27EE57298, &unk_2479503D0);
      v33 = &qword_27EE572A0;
      v34 = &unk_247950500;
      v35 = &v41;
    }

    else
    {
      sub_2478E9620(&v42, &qword_27EE57298, &unk_2479503D0);

      v40 = a7[2];
      sub_2478E9620(&v40, &qword_27EE57290, &unk_2479504F0);
      v35 = &v42;
      v33 = &qword_27EE57298;
      v34 = &unk_2479503D0;
    }

    goto LABEL_21;
  }

  *(v7 + 64) = v14;
  *(v7 + 104) = v15;
  *(v7 + 32) = v12;
  *(v7 + 40) = v13;
  v38 = v10;
  type metadata accessor for SiriRequestBiomeProcessor();
  swift_allocObject();

  sub_2478E9680(&v42, &v40, &qword_27EE57298, &unk_2479503D0);
  sub_2478E9680(&v41, &v40, &qword_27EE572A0, &unk_247950500);
  v37 = sub_2478EE784(&v38);

  v40 = a7[2];
  sub_2478E9620(&v40, &qword_27EE57290, &unk_2479504F0);
  sub_2478E9620(&v42, &qword_27EE57298, &unk_2479503D0);
  sub_2478E9620(&v41, &qword_27EE572A0, &unk_247950500);
  v39 = a7[5];
  sub_2478E9620(&v39, &qword_27EE572A8, &unk_2479503E0);
  *(v8 + 112) = v37;
  return v8;
}

uint64_t sub_2478E3AE0(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24794EBB4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v10 = sub_24794ED34();
  __swift_project_value_buffer(v10, qword_27EE58DF8);
  (*(v7 + 16))(v9, a2, v6);

  v11 = sub_24794ED14();
  v12 = sub_24794F154();
  if (os_log_type_enabled(v11, v12))
  {
    v22 = v3;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23[0] = v14;
    *v13 = 134218242;
    if (a1 >> 62)
    {
      v15 = sub_24794F414();
    }

    else
    {
      v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v13 + 4) = v15;

    *(v13 + 12) = 2080;
    sub_2478E94A4(&qword_27EE57288, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v16 = sub_24794F4D4();
    v18 = v17;
    (*(v7 + 8))(v9, v6);
    v19 = sub_247924380(v16, v18, v23);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_2478E1000, v11, v12, "#BaseSiriRequestActionEvent: adding requests into daily requests: %ld for date: %s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C1AF180](v14, -1, -1);
    MEMORY[0x24C1AF180](v13, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  swift_beginAccess();

  sub_24790058C(v20);
  return swift_endAccess();
}

uint64_t sub_2478E3DD4()
{
  swift_beginAccess();
  v1 = (*(*(*(v0 + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId);
  v2 = *v1;
  v3 = v1[1];

  sub_2478E7F30(v4, v2, v3);
}

uint64_t sub_2478E3E98()
{
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v1 = sub_24794ED34();
  __swift_project_value_buffer(v1, qword_27EE58DF8);
  v2 = sub_24794ED14();
  v3 = sub_24794F164();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2478E1000, v2, v3, "#BaseSiriRequestSamplingActionEvent: deviceSamplingEnded should be implemented in sub class", v4, 2u);
    MEMORY[0x24C1AF180](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2478E3FCC()
{
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v1 = sub_24794ED34();
  __swift_project_value_buffer(v1, qword_27EE58DF8);
  v2 = sub_24794ED14();
  v3 = sub_24794F164();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2478E1000, v2, v3, "#BaseSiriRequestSamplingActionEvent: aggregateEvents should be implemented in sub class", v4, 2u);
    MEMORY[0x24C1AF180](v4, -1, -1);
  }

  sub_2478E95CC();
  swift_allocError();
  *v5 = xmmword_24794FEE0;
  *(v5 + 16) = 2;
  swift_willThrow();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2478E411C()
{
  v1[2] = v0;
  v2 = sub_24794EBB4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2478E41DC, 0, 0);
}

uint64_t sub_2478E41DC()
{
  v1 = (*(**(*(*(v0[2] + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + 272))();
  v0[6] = 0;
  v0[7] = v1;
  v0[8] = v2;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = *(v5 + 64);
  v7 = *(v5 + 72);
  v12 = *(v5 + 32);
  v8 = v0[5];
  (*(v4 + 16))();
  type metadata accessor for EnrollmentRecordsGenerator(0);
  v9 = swift_allocObject();
  v0[9] = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  *(v9 + 32) = v12;
  (*(v4 + 32))(v9 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics26EnrollmentRecordsGenerator_currentDate, v8, v3);

  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_2478E43C8;

  return sub_247930984();
}

uint64_t sub_2478E43C8(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_2478E44C8, 0, 0);
}

uint64_t sub_2478E44C8()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = v0[4];
  swift_setDeallocating();

  (*(v3 + 8))(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics26EnrollmentRecordsGenerator_currentDate, v2);
  swift_deallocClassInstance();
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v4 = sub_24794ED34();
  __swift_project_value_buffer(v4, qword_27EE58DF8);

  v5 = sub_24794ED14();
  v6 = sub_24794F144();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[11];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    if (v8 >> 62)
    {
      v21 = v9;
      v10 = sub_24794F414();
      v9 = v21;
    }

    else
    {
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 4) = v10;
    v11 = v9;

    _os_log_impl(&dword_2478E1000, v5, v6, "#BaseSiriRequestSamplingActionEvent: generated enrollment Records: %ld", v11, 0xCu);
    MEMORY[0x24C1AF180](v11, -1, -1);
  }

  else
  {
  }

  v12 = v0[11];
  v13 = v0[6];
  v14 = (*(*(*(v0[2] + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId);
  v16 = *v14;
  v15 = v14[1];

  sub_2478E7F30(v12, v16, v15);
  if (v13)
  {

    v17 = v0[1];

    return v17();
  }

  else
  {

    v19 = swift_task_alloc();
    v0[12] = v19;
    *v19 = v0;
    v19[1] = sub_2478E47C8;
    v20 = v0[11];

    return sub_2478E7180(v20);
  }
}

uint64_t sub_2478E47C8()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2478E493C, 0, 0);
  }
}

uint64_t sub_2478E493C()
{
  v1 = v0[13];
  v3 = v0[7];
  v2 = v0[8];
  v4 = *(**(*(*(v0[2] + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + 336);

  v4(v3, v2);
  if (v1)
  {
  }

  else
  {

    sub_247940408();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_2478E4A7C()
{
  v1[12] = v0;
  v2 = sub_24794EC04();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2478E4B80, 0, 0);
}

uint64_t sub_2478E4B80()
{
  v88 = v0;
  v0[11] = MEMORY[0x277D84F90];
  v1 = (v0 + 11);
  v2 = v0[12];
  swift_beginAccess();
  v3 = *(v2 + 96);
  v0[18] = v3;
  if (v3 >> 62)
  {
LABEL_44:
    v64 = sub_24794F414();
    v0[19] = v64;
    if (v64)
    {
      goto LABEL_3;
    }

LABEL_45:
    v6 = 0;
    v82 = MEMORY[0x277D84F90];
LABEL_46:
    v65 = v0[12];
    v66 = *(v65 + 96);
    if (v66 >> 62)
    {
      v68 = sub_24794F414();
      v66 = *(v65 + 96);
      if (v68)
      {
LABEL_48:
        if (v66 >> 62)
        {
          if (v6 < sub_24794F414())
          {
            goto LABEL_50;
          }
        }

        else if (v6 < *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_50:
          v67 = v0[12];
LABEL_53:
          *(v67 + 96) = v82;

          v69 = v0[1];
LABEL_60:

          return v69();
        }

        if (qword_27EE571C0 != -1)
        {
          swift_once();
        }

        v70 = sub_24794ED34();
        __swift_project_value_buffer(v70, qword_27EE58DF8);
        v71 = sub_24794ED14();
        v72 = sub_24794F164();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          _os_log_impl(&dword_2478E1000, v71, v72, "#BaseSiriRequestSamplingActionEvent: all audio upload failed", v73, 2u);
          MEMORY[0x24C1AF180](v73, -1, -1);
        }

        sub_2478E95CC();
        swift_allocError();
        *v74 = xmmword_24794FF00;
        *(v74 + 16) = 2;
        swift_willThrow();

        v69 = v0[1];
        goto LABEL_60;
      }
    }

    else if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v67 = v0[12];
    goto LABEL_53;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[19] = v4;
  if (!v4)
  {
    goto LABEL_45;
  }

LABEL_3:
  v5 = v1 - 48;

  v6 = 0;
  v1 = 0;
  v7 = &unk_247950590;
  v82 = MEMORY[0x277D84F90];
  v81 = MEMORY[0x277D84F90];
  v75 = v5;
  v85 = v0;
  while (1)
  {
    v0[21] = v82;
    v0[22] = v81;
    v0[20] = v6;
    v8 = v0[18];
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C1AE890](v1);
    }

    else
    {
      if (v1 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v9 = *(v8 + 8 * v1 + 32);
    }

    v0[23] = v9;
    v0[24] = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v86 = v6;
    v10 = v0[17];
    v11 = v0[13];
    v12 = v0[14];
    v13 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId;
    swift_beginAccess();
    v0 = v85;
    sub_2478E9680(v9 + v13, v10, &qword_27EE57278, v7);
    v14 = v5;
    v15 = v7;
    v16 = *(v12 + 48);
    v17 = v16(v10, 1, v11);
    v18 = v85[17];
    if (v17)
    {
      sub_2478E9620(v85[17], &qword_27EE57278, v15);
      v7 = v15;
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v19 = sub_24794ED34();
      __swift_project_value_buffer(v19, qword_27EE58DF8);
      v1 = sub_24794ED14();
      v20 = sub_24794F164();
      v5 = v14;
      if (os_log_type_enabled(v1, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_2478E1000, v1, v20, "#BaseSiriRequestSamplingActionEvent: Cannot get requestId", v21, 2u);
        v0 = v85;
        MEMORY[0x24C1AF180](v21, -1, -1);
      }

      v6 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        goto LABEL_40;
      }

      goto LABEL_5;
    }

    v22 = v85[15];
    v80 = v85[16];
    v24 = v85[13];
    v23 = v85[14];
    v78 = *(v23 + 16);
    v78(v22, v18, v24);
    sub_2478E9620(v18, &qword_27EE57278, v15);
    v76 = sub_24794EBD4();
    v77 = *(v23 + 8);
    v85[25] = v76;
    v85[26] = v25;
    v79 = v25;
    v77(v22, v24);
    v26 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioId;
    swift_beginAccess();
    sub_2478E9680(v9 + v26, v80, &qword_27EE57278, v15);
    v27 = v16(v80, 1, v24);
    v28 = v85[16];
    if (v27)
    {
      sub_2478E9620(v85[16], &qword_27EE57278, v15);
      v7 = v15;
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v29 = sub_24794ED34();
      __swift_project_value_buffer(v29, qword_27EE58DF8);

      v1 = sub_24794ED14();
      v30 = sub_24794F164();

      if (os_log_type_enabled(v1, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v87[0] = v32;
        *v31 = 136315138;
        v33 = sub_247924380(v76, v79, v87);

        *(v31 + 4) = v33;
        _os_log_impl(&dword_2478E1000, v1, v30, "#BaseSiriRequestSamplingActionEvent: Cannot get audioId for requestId: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x24C1AF180](v32, -1, -1);
        MEMORY[0x24C1AF180](v31, -1, -1);
      }

      else
      {
      }

      v5 = v75;
      v0 = v85;
      v6 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        goto LABEL_42;
      }

      goto LABEL_5;
    }

    v34 = v85[15];
    v36 = v85[12];
    v35 = v85[13];
    v78(v34, v85[16], v35);
    sub_2478E9620(v28, &qword_27EE57278, v15);
    v37 = sub_24794EBD4();
    v39 = v38;
    v85[27] = v37;
    v85[28] = v38;
    v77(v34, v35);
    v40 = *(v36 + 104);
    v41 = v40[6];
    if (v41)
    {
      break;
    }

    v0 = v85;
    v40[6] = sub_24793A2EC();

    v41 = v40[6];
    if (v41)
    {
      goto LABEL_36;
    }

    sub_2478E95CC();
    v42 = swift_allocError();
    *v43 = xmmword_24794FEF0;
    *(v43 + 16) = 2;
    swift_willThrow();
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v44 = sub_24794ED34();
    __swift_project_value_buffer(v44, qword_27EE58DF8);

    v45 = v42;
    v1 = sub_24794ED14();
    v46 = sub_24794F164();

    v47 = os_log_type_enabled(v1, v46);
    v48 = v85[28];
    if (v47)
    {
      v49 = v85[26];
      v83 = v85[27];
      v50 = v85[25];
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v87[0] = v53;
      *v51 = 136315650;
      v54 = sub_247924380(v50, v49, v87);

      *(v51 + 4) = v54;
      *(v51 + 12) = 2080;
      v55 = sub_247924380(v83, v48, v87);

      *(v51 + 14) = v55;
      *(v51 + 22) = 2112;
      v56 = v42;
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 24) = v57;
      *v52 = v57;
      _os_log_impl(&dword_2478E1000, v1, v46, "#BaseSiriRequestSamplingActionEvent: upload audio file failed for requestId: %s, audioId: %s with error: %@", v51, 0x20u);
      sub_2478E9620(v52, &qword_27EE57280, &unk_2479503C0);
      MEMORY[0x24C1AF180](v52, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C1AF180](v53, -1, -1);
      v0 = v85;
      MEMORY[0x24C1AF180](v51, -1, -1);
    }

    else
    {
    }

    v5 = v75;
    v58 = v0[20];
    v6 = v58 + 1;
    v7 = &unk_247950590;
    if (__OFADD__(v58, 1))
    {
      goto LABEL_43;
    }

    v81 = v0[22];
    v82 = v0[21];
LABEL_5:
    v1 = v0[24];
    if (v1 == v0[19])
    {

      goto LABEL_46;
    }
  }

  v0 = v85;
LABEL_36:
  v0[29] = v41;
  v59 = v40[4];
  v60 = v40[5];
  v61 = *(v60 + 128);

  v84 = (v61 + *v61);
  v62 = swift_task_alloc();
  v0[30] = v62;
  *v62 = v0;
  v62[1] = sub_2478E5728;

  return v84(v76, v79, v37, v39, v41, v59, v60);
}

uint64_t sub_2478E5728()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_2478E63D4;
  }

  else
  {
    v2 = sub_2478E583C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2478E583C()
{
  v86 = v0;

  MEMORY[0x24C1AE560](v2);
  if (*((*(v0 + 11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_50:
    sub_24794F084();
  }

  sub_24794F0A4();

  v3 = *(v0 + 11);
  v4 = *(v0 + 24);
  v5 = *(v0 + 20);
  if (v4 == *(v0 + 19))
  {
    v81 = *(v0 + 11);
LABEL_4:

    v6 = *(v0 + 12);
    v7 = *(v6 + 96);
    if (v7 >> 62)
    {
      v67 = sub_24794F414();
      v7 = *(v6 + 96);
      if (v67)
      {
LABEL_6:
        if (v7 >> 62)
        {
          if (v5 < sub_24794F414())
          {
            goto LABEL_8;
          }
        }

        else if (v5 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_8:
          v8 = *(v0 + 12);
LABEL_53:
          *(v8 + 96) = v81;

          v68 = *(v0 + 1);
LABEL_60:

          v68();
          return;
        }

        if (qword_27EE571C0 != -1)
        {
          swift_once();
        }

        v69 = sub_24794ED34();
        __swift_project_value_buffer(v69, qword_27EE58DF8);
        v70 = sub_24794ED14();
        v71 = sub_24794F164();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          *v72 = 0;
          _os_log_impl(&dword_2478E1000, v70, v71, "#BaseSiriRequestSamplingActionEvent: all audio upload failed", v72, 2u);
          MEMORY[0x24C1AF180](v72, -1, -1);
        }

        sub_2478E95CC();
        swift_allocError();
        *v73 = xmmword_24794FF00;
        *(v73 + 16) = 2;
        swift_willThrow();

        v68 = *(v0 + 1);
        goto LABEL_60;
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    v8 = *(v0 + 12);
    goto LABEL_53;
  }

  v9 = &OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId;
  v10 = &unk_247950590;
  v74 = *(v0 + 31);
  v81 = *(v0 + 11);
  v80 = v81;
  while (1)
  {
    *(v0 + 21) = v81;
    *(v0 + 22) = v3;
    *(v0 + 20) = v5;
    v11 = *(v0 + 18);
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x24C1AE890](v4);
    }

    else
    {
      if (v4 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v12 = *(v11 + 8 * v4 + 32);
    }

    *(v0 + 23) = v12;
    *(v0 + 24) = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v84 = v5;
    v13 = *(v0 + 17);
    v14 = *(v0 + 13);
    v15 = *(v0 + 14);
    v16 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId;
    swift_beginAccess();
    sub_2478E9680(v12 + v16, v13, &qword_27EE57278, &unk_247950590);
    v1 = *(v15 + 48);
    v17 = v1(v13, 1, v14);
    v18 = *(v0 + 17);
    if (v17)
    {
      sub_2478E9620(*(v0 + 17), &qword_27EE57278, &unk_247950590);
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v19 = sub_24794ED34();
      __swift_project_value_buffer(v19, qword_27EE58DF8);
      v20 = sub_24794ED14();
      v21 = sub_24794F164();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_2478E1000, v20, v21, "#BaseSiriRequestSamplingActionEvent: Cannot get requestId", v22, 2u);
        MEMORY[0x24C1AF180](v22, -1, -1);
      }

      v5 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v3 = v80;
LABEL_12:
      v4 = *(v0 + 24);
      if (v4 == *(v0 + 19))
      {
        goto LABEL_4;
      }
    }

    else
    {
      v23 = *(v0 + 15);
      v79 = *(v0 + 16);
      v24 = *(v0 + 13);
      v25 = *(v0 + 14);
      v76 = *(v25 + 16);
      v76(v23, v18, v24);
      sub_2478E9620(v18, &qword_27EE57278, &unk_247950590);
      v26 = sub_24794EBD4();
      v27 = *(v25 + 8);
      v77 = v26;
      v78 = v28;
      *(v0 + 25) = v26;
      *(v0 + 26) = v28;
      v75 = v27;
      v27(v23, v24);
      v29 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioId;
      swift_beginAccess();
      sub_2478E9680(v12 + v29, v79, &qword_27EE57278, &unk_247950590);
      v30 = v1(v79, 1, v24);
      v1 = v0;
      if (v30)
      {
        sub_2478E9620(*(v0 + 16), &qword_27EE57278, &unk_247950590);
        if (qword_27EE571C0 != -1)
        {
          swift_once();
        }

        v31 = sub_24794ED34();
        __swift_project_value_buffer(v31, qword_27EE58DF8);

        v32 = sub_24794ED14();
        v33 = sub_24794F164();

        v3 = v80;
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v85[0] = v35;
          *v34 = 136315138;
          v36 = sub_247924380(v77, v78, v85);

          *(v34 + 4) = v36;
          _os_log_impl(&dword_2478E1000, v32, v33, "#BaseSiriRequestSamplingActionEvent: Cannot get audioId for requestId: %s", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v35);
          MEMORY[0x24C1AF180](v35, -1, -1);
          MEMORY[0x24C1AF180](v34, -1, -1);
        }

        else
        {
        }

        v9 = &OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId;
        v5 = v84 + 1;
        v10 = &unk_247950590;
        if (__OFADD__(v84, 1))
        {
          goto LABEL_49;
        }

        goto LABEL_12;
      }

      v37 = *(v0 + 15);
      v39 = *(v0 + 12);
      v38 = *(v0 + 13);
      v40 = *(v0 + 16);
      v76(*(v1 + 15), v40, *(v1 + 13));
      sub_2478E9620(v40, &qword_27EE57278, &unk_247950590);
      v12 = sub_24794EBD4();
      v10 = v41;
      *(v1 + 27) = v12;
      *(v1 + 28) = v41;
      v75(v37, v38);
      v4 = *(v39 + 104);
      v9 = *(v4 + 48);
      if (v9)
      {
        goto LABEL_43;
      }

      v42 = sub_24793A2EC();
      v43 = v74;
      v0 = v1;
      if (!v74)
      {
        *(v4 + 48) = v42;

        v9 = *(v4 + 48);
        if (v9)
        {
          goto LABEL_44;
        }

        sub_2478E95CC();
        v43 = swift_allocError();
        *v44 = xmmword_24794FEF0;
        *(v44 + 16) = 2;
        swift_willThrow();
      }

      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v45 = sub_24794ED34();
      __swift_project_value_buffer(v45, qword_27EE58DF8);

      v46 = v43;
      v47 = sub_24794ED14();
      v48 = sub_24794F164();

      v49 = os_log_type_enabled(v47, v48);
      v50 = *(v1 + 28);
      if (v49)
      {
        v51 = *(v1 + 26);
        v52 = *(v1 + 25);
        v82 = *(v1 + 27);
        v53 = v43;
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v85[0] = v56;
        *v54 = 136315650;
        v57 = sub_247924380(v52, v51, v85);

        *(v54 + 4) = v57;
        *(v54 + 12) = 2080;
        v58 = sub_247924380(v82, v50, v85);

        *(v54 + 14) = v58;
        *(v54 + 22) = 2112;
        v59 = v53;
        v60 = v53;
        v61 = _swift_stdlib_bridgeErrorToNSError();
        *(v54 + 24) = v61;
        *v55 = v61;
        _os_log_impl(&dword_2478E1000, v47, v48, "#BaseSiriRequestSamplingActionEvent: upload audio file failed for requestId: %s, audioId: %s with error: %@", v54, 0x20u);
        sub_2478E9620(v55, &qword_27EE57280, &unk_2479503C0);
        MEMORY[0x24C1AF180](v55, -1, -1);
        swift_arrayDestroy();
        v0 = v1;
        MEMORY[0x24C1AF180](v56, -1, -1);
        MEMORY[0x24C1AF180](v54, -1, -1);
      }

      else
      {
      }

      v9 = &OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId;
      v10 = &unk_247950590;
      v62 = *(v0 + 20);
      v5 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        __break(1u);
        return;
      }

      v74 = 0;
      v3 = *(v0 + 22);
      v81 = *(v0 + 21);
      v4 = *(v0 + 24);
      if (v4 == *(v0 + 19))
      {
        goto LABEL_4;
      }

      v80 = *(v0 + 22);
    }
  }

  __break(1u);
LABEL_43:
  v0 = v1;
LABEL_44:
  *(v0 + 29) = v9;
  v63 = *(v4 + 32);
  v64 = *(v4 + 40);
  v65 = *(v64 + 128);

  v83 = (v65 + *v65);
  v66 = swift_task_alloc();
  *(v0 + 30) = v66;
  *v66 = v0;
  v66[1] = sub_2478E5728;

  v83(v77, v78, v12, v10, v9, v63, v64);
}

uint64_t sub_2478E63D4()
{
  v84 = v0;
  v1 = v0;

  v2 = qword_27EE58DF8;
  v3 = v0[31];
  v4 = 0x27EE57000uLL;
  v5 = &qword_27EE57278;
  v81 = v1;
LABEL_2:
  if (*(v4 + 448) != -1)
  {
    swift_once();
  }

  v77 = sub_24794ED34();
  __swift_project_value_buffer(v77, qword_27EE58DF8);

  v6 = v3;
  v7 = sub_24794ED14();
  v8 = sub_24794F164();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[28];
  if (v9)
  {
    v79 = v1[27];
    v11 = v3;
    v12 = v1[25];
    v13 = v1[26];
    v82 = v1[23];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v83[0] = v16;
    *v14 = 136315650;
    v17 = sub_247924380(v12, v13, v83);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v18 = sub_247924380(v79, v10, v83);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2112;
    v19 = v11;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v20;
    *v15 = v20;
    _os_log_impl(&dword_2478E1000, v7, v8, "#BaseSiriRequestSamplingActionEvent: upload audio file failed for requestId: %s, audioId: %s with error: %@", v14, 0x20u);
    sub_2478E9620(v15, &qword_27EE57280, &unk_2479503C0);
    v21 = v15;
    v1 = v81;
    MEMORY[0x24C1AF180](v21, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1AF180](v16, -1, -1);
    v22 = v14;
    v2 = qword_27EE58DF8;
    MEMORY[0x24C1AF180](v22, -1, -1);
  }

  else
  {
    v16 = v1[23];
  }

  v23 = v1[20];
  v24 = v23 + 1;
  if (__OFADD__(v23, 1))
  {
    __break(1u);
LABEL_48:
    v66 = sub_24794F414();
    isa = v7[12].isa;
    if (v66)
    {
      goto LABEL_35;
    }

LABEL_49:
    v59 = v1[12];
    goto LABEL_50;
  }

  v25 = v5;
  v78 = v1[22];
  v79 = v1[21];
  while (1)
  {
    v26 = v1[24];
    if (v26 == v1[19])
    {
      break;
    }

    v1[21] = v79;
    v1[22] = v78;
    v1[20] = v24;
    v27 = v1[18];
    if ((v27 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x24C1AE890](v26);
    }

    else
    {
      if (v26 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v28 = *(v27 + 8 * v26 + 32);
    }

    v1[23] = v28;
    v1[24] = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_39:
      v1 = v81;
LABEL_44:
      v1[29] = v24;
      v60 = v1;
      v61 = *(v26 + 32);
      v62 = *(v26 + 40);
      v63 = *(v62 + 16);

      v80 = (v63 + *v63);
      v64 = swift_task_alloc();
      v60[30] = v64;
      *v64 = v60;
      v64[1] = sub_2478E5728;

      return v80(v74, v75, v2, v82, v24, v61, v62);
    }

    v82 = v24;
    v29 = v1[17];
    v30 = v1[13];
    v31 = v1[14];
    v32 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId;
    swift_beginAccess();
    sub_2478E9680(v28 + v32, v29, v25, &unk_247950590);
    v33 = v25;
    v35 = *(v31 + 48);
    v16 = v31 + 48;
    v34 = v35;
    v36 = v35(v29, 1, v30);
    v37 = v1[17];
    if (v36)
    {
      sub_2478E9620(v1[17], v33, &unk_247950590);
      v25 = v33;
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v77, qword_27EE58DF8);
      v26 = sub_24794ED14();
      v38 = sub_24794F164();
      v1 = v81;
      if (os_log_type_enabled(v26, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_2478E1000, v26, v38, "#BaseSiriRequestSamplingActionEvent: Cannot get requestId", v39, 2u);
        MEMORY[0x24C1AF180](v39, -1, -1);
      }

      v24 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        v2 = v16;
        goto LABEL_44;
      }
    }

    else
    {
      v40 = v1[15];
      v76 = v1[16];
      v41 = v1[13];
      v42 = v1[14];
      v73 = *(v42 + 16);
      v73(v40, v37, v41);
      sub_2478E9620(v37, v33, &unk_247950590);
      v43 = sub_24794EBD4();
      v44 = *(v42 + 8);
      v74 = v43;
      v1[25] = v43;
      v1[26] = v45;
      v75 = v45;
      v72 = v44;
      v44(v40, v41);
      v46 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioId;
      swift_beginAccess();
      sub_2478E9680(v28 + v46, v76, v33, &unk_247950590);
      v47 = v34(v76, 1, v41);
      v48 = v1[16];
      if (!v47)
      {
        v52 = v81[15];
        v54 = v81[12];
        v53 = v81[13];
        v55 = v1[16];
        v73(v52, v48, v53);
        sub_2478E9620(v55, v33, &unk_247950590);
        v2 = sub_24794EBD4();
        v81[27] = v2;
        v81[28] = v56;
        v82 = v56;
        v72(v52, v53);
        v26 = *(v54 + 104);
        v24 = *(v26 + 48);
        if (v24)
        {
          goto LABEL_39;
        }

        v5 = v33;
        v16 = v2;
        v4 = 0x27EE57000;
        v2 = qword_27EE58DF8;
        v1 = v81;
        *(v26 + 48) = sub_24793A2EC();

        v24 = *(v26 + 48);
        if (!v24)
        {
          sub_2478E95CC();
          v3 = swift_allocError();
          *v57 = xmmword_24794FEF0;
          *(v57 + 16) = 2;
          swift_willThrow();
          goto LABEL_2;
        }

        goto LABEL_43;
      }

      sub_2478E9620(v48, v33, &unk_247950590);
      v25 = v33;
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v2 = qword_27EE58DF8;
      __swift_project_value_buffer(v77, qword_27EE58DF8);

      v26 = sub_24794ED14();
      v49 = sub_24794F164();

      v1 = v81;
      if (os_log_type_enabled(v26, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v83[0] = v51;
        *v50 = 136315138;
        v16 = sub_247924380(v74, v75, v83);

        *(v50 + 4) = v16;
        _os_log_impl(&dword_2478E1000, v26, v49, "#BaseSiriRequestSamplingActionEvent: Cannot get audioId for requestId: %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x24C1AF180](v51, -1, -1);
        MEMORY[0x24C1AF180](v50, -1, -1);
      }

      else
      {
      }

      v24 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        goto LABEL_42;
      }
    }
  }

  v7 = v1[12];
  isa = v7[12].isa;
  if (isa >> 62)
  {
    goto LABEL_48;
  }

  if (!*((isa & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_49;
  }

LABEL_35:
  if (isa >> 62)
  {
    if (v24 < sub_24794F414())
    {
      goto LABEL_37;
    }

LABEL_52:

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v77, qword_27EE58DF8);
    v68 = sub_24794ED14();
    v69 = sub_24794F164();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_2478E1000, v68, v69, "#BaseSiriRequestSamplingActionEvent: all audio upload failed", v70, 2u);
      MEMORY[0x24C1AF180](v70, -1, -1);
    }

    sub_2478E95CC();
    swift_allocError();
    *v71 = xmmword_24794FF00;
    *(v71 + 16) = 2;
    swift_willThrow();

    v67 = v1[1];
    goto LABEL_57;
  }

  if (v24 >= *((isa & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_52;
  }

LABEL_37:
  v59 = v1[12];
LABEL_50:
  *(v59 + 96) = v79;

  v67 = v1[1];
LABEL_57:

  return v67();
}

uint64_t sub_2478E6EE0()
{

  sub_2478EEE7C();
}

uint64_t sub_2478E7180(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2478E721C, 0, 0);
}

uint64_t sub_2478E721C()
{
  v35 = v0;
  v1 = v0[5];
  if (v1 >> 62)
  {
    result = sub_24794F414();
    v0[8] = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_22:

    v32 = v0[1];
    goto LABEL_23;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[8] = result;
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_3:
  v3 = v0[5];
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1AE890](0);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v3 + 32);
  }

  v0[9] = v4;
  v0[10] = 1;
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v5 = sub_24794ED34();
  v6 = __swift_project_value_buffer(v5, qword_27EE58DF8);
  v0[11] = v6;

  v7 = sub_24794ED14();
  v8 = sub_24794F154();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v9 = 136315138;
    v11 = *(*v4 + 1264);

    v13 = v11(v12);
    v15 = v14;

    v16 = sub_247924380(v13, v15, &v34);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_2478E1000, v7, v8, "#BaseSiriRequestSamplingActionEvent: processing for record: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C1AF180](v10, -1, -1);
    MEMORY[0x24C1AF180](v9, -1, -1);
  }

  v17 = v0[7];
  v18 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioId;
  swift_beginAccess();
  sub_2478E9680(v4 + v18, v17, &qword_27EE57278, &unk_247950590);
  v19 = sub_24794EC04();
  LODWORD(v17) = (*(*(v19 - 8) + 48))(v17, 1, v19);
  sub_2478E9620(v0[7], &qword_27EE57278, &unk_247950590);
  if (v17 == 1 || !*(v4 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_deviceType + 8))
  {
    v28 = sub_24794ED14();
    v29 = sub_24794F164();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2478E1000, v28, v29, "#BaseSiriRequestSamplingActionEvent: key fields are missing in request)", v30, 2u);
      MEMORY[0x24C1AF180](v30, -1, -1);
    }
  }

  else
  {
    v20 = sub_2478F45D0();
    v0[12] = v20;
    if (v20)
    {
      v21 = v20;
      v22 = v0[6];
      v23 = v22[4];
      v24 = v22[5];
      v25 = v22[6];
      v26 = v22[7];
      v33 = (*(v24 + 136) + **(v24 + 136));
      v27 = swift_task_alloc();
      v0[13] = v27;
      *v27 = v0;
      v27[1] = sub_2478E7724;

      return v33(v21, v25, v26, v6, v23, v24);
    }
  }

  sub_2478E95CC();
  swift_allocError();
  *v31 = 0;
  *(v31 + 8) = 0;
  *(v31 + 16) = 2;
  swift_willThrow();

  v32 = v0[1];
LABEL_23:

  return v32();
}

uint64_t sub_2478E7724()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2478E7EBC;
  }

  else
  {
    v2 = sub_2478E7838;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2478E7838()
{
  v53 = v0;

  v1 = sub_24794ED14();
  v2 = sub_24794F154();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[9];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v52[0] = v5;
    *v4 = 136315138;
    v6 = *(*v3 + 1264);

    v8 = v6(v7);
    v10 = v9;

    v11 = sub_247924380(v8, v10, v52);

    *(v4 + 4) = v11;
    _os_log_impl(&dword_2478E1000, v1, v2, "#BaseSiriRequestSamplingActionEvent: generated odsample Event for %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C1AF180](v5, -1, -1);
    MEMORY[0x24C1AF180](v4, -1, -1);
  }

  v12 = *(v0[6] + 88);
  v13 = *(*(v12 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16);
  v14 = *(v13 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_uploadedNumRecords);
  v15 = __CFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v17 = v0[12];
    v18 = v0[10];
    v19 = v0[8];
    *(v13 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_uploadedNumRecords) = v16;

    sub_247940408();

    if (v18 == v19)
    {

      v21 = v0[1];
LABEL_24:

      return v21();
    }

    v22 = v0[10];
    v23 = v0[5];
    if ((v23 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x24C1AE890](v0[10]);
    }

    else
    {
      if (v22 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v12 = *(v23 + 8 * v22 + 32);
    }

    v0[9] = v12;
    v0[10] = v22 + 1;
    if (!__OFADD__(v22, 1))
    {
      if (qword_27EE571C0 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_29:
  swift_once();
LABEL_12:
  v24 = sub_24794ED34();
  v25 = __swift_project_value_buffer(v24, qword_27EE58DF8);
  v0[11] = v25;

  v26 = sub_24794ED14();
  v27 = sub_24794F154();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v52[0] = v29;
    *v28 = 136315138;
    v30 = *(*v12 + 1264);

    v32 = v30(v31);
    v34 = v33;

    v35 = sub_247924380(v32, v34, v52);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_2478E1000, v26, v27, "#BaseSiriRequestSamplingActionEvent: processing for record: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x24C1AF180](v29, -1, -1);
    MEMORY[0x24C1AF180](v28, -1, -1);
  }

  v36 = v0[7];
  v37 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioId;
  swift_beginAccess();
  sub_2478E9680(v12 + v37, v36, &qword_27EE57278, &unk_247950590);
  v38 = sub_24794EC04();
  LODWORD(v36) = (*(*(v38 - 8) + 48))(v36, 1, v38);
  sub_2478E9620(v0[7], &qword_27EE57278, &unk_247950590);
  if (v36 == 1 || !*(v12 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_deviceType + 8))
  {
    v47 = sub_24794ED14();
    v48 = sub_24794F164();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2478E1000, v47, v48, "#BaseSiriRequestSamplingActionEvent: key fields are missing in request)", v49, 2u);
      MEMORY[0x24C1AF180](v49, -1, -1);
    }

    goto LABEL_23;
  }

  v39 = sub_2478F45D0();
  v0[12] = v39;
  if (!v39)
  {
LABEL_23:
    sub_2478E95CC();
    swift_allocError();
    *v50 = 0;
    *(v50 + 8) = 0;
    *(v50 + 16) = 2;
    swift_willThrow();

    v21 = v0[1];
    goto LABEL_24;
  }

  v40 = v39;
  v41 = v0[6];
  v42 = v41[4];
  v43 = v41[5];
  v44 = v41[6];
  v45 = v41[7];
  v51 = (*(v43 + 136) + **(v43 + 136));
  v46 = swift_task_alloc();
  v0[13] = v46;
  *v46 = v0;
  v46[1] = sub_2478E7724;

  return v51(v40, v44, v45, v25, v42, v43);
}

uint64_t sub_2478E7EBC()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2478E7F30(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    sub_2478EE858(a1, a2, a3);
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v7 = sub_24794ED34();
    __swift_project_value_buffer(v7, qword_27EE58DF8);
    v8 = sub_24794ED14();
    v9 = sub_24794F164();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2478E1000, v8, v9, "#BaseSiriRequestSamplingActionEvent: store biome events failed with userSamplingId being nil", v10, 2u);
      MEMORY[0x24C1AF180](v10, -1, -1);
    }

    sub_2478E95CC();
    swift_allocError();
    *v11 = xmmword_24794FF10;
    *(v11 + 16) = 2;
    return swift_willThrow();
  }
}

void *sub_2478E8084()
{

  return v0;
}

uint64_t sub_2478E80E4()
{
  sub_2478E8084();

  return swift_deallocClassInstance();
}

uint64_t sub_2478E82B8()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 96);
  v0[6] = v2;

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_2478E8380;

  return sub_2478E7180(v2);
}

uint64_t sub_2478E8380()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2478E84BC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2478E84BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2478E8520()
{
  v4 = (*(**v0 + 280) + **(**v0 + 280));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2478E975C;

  return v4();
}

uint64_t sub_2478E863C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2478E975C;

  return sub_2478E4A7C();
}

uint64_t sub_2478E86CC()
{
  v4 = (*(**v0 + 288) + **(**v0 + 288));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2478E975C;

  return v4();
}

double sub_2478E87E8()
{
  v1 = *v0;
  swift_beginAccess();
  *(v1 + 96) = MEMORY[0x277D84F90];

  return result;
}

uint64_t sub_2478E887C()
{
  v4 = (*(**v0 + 272) + **(**v0 + 272));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2478E8998;

  return v4();
}

uint64_t sub_2478E8998()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2478E8A8C()
{
  sub_24794F584();
  sub_24794F5A4();
  return sub_24794F5B4();
}

uint64_t sub_2478E8B00(uint64_t a1)
{
  sub_24794F584();
  sub_24794F5A4();
  return sub_24794F5B4();
}

void sub_2478E8B44(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57260, &qword_2479503A8);
      v7 = *(sub_24794EC04() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        sub_24794EC04();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_2478E8CE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for SiriRequestRecord(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57268, &unk_2479503B0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

id sub_2478E8DC8(char *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v10 = sub_24794EC04();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v61 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v57 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v57 - v17;
  if (a5)
  {
    if (a4 != 2)
    {

LABEL_24:
      sub_2478E9538(0, &qword_27EE57248, 0x277D59540);

      v39 = sub_247919B08(a1, a2, a3, a4);
      v28 = [objc_allocWithZone(MEMORY[0x277D59528]) init];
      sub_24794EBF4();
      [v28 setSpeakerIdModelSampleManifestReported_];
      if (v28)
      {
        sub_2478E9538(0, &qword_27EE57258, 0x277D59530);
        (*(v11 + 16))(v16, v18, v10);
        v40 = v28;
        v41 = sub_247919F48(v16);
        [v40 setEventMetadata_];
      }

      v42 = v61;
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v43 = sub_24794ED34();
      __swift_project_value_buffer(v43, qword_27EE58DF8);
      (*(v11 + 16))(v42, v18, v10);
      v44 = sub_24794ED14();
      v45 = sub_24794F144();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v60 = v39;
        v47 = v46;
        v48 = swift_slowAlloc();
        v62 = v48;
        *v47 = 136315138;
        sub_2478E94A4(&qword_27EE57250, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v49 = sub_24794F4D4();
        v50 = v42;
        v52 = v51;
        v59 = v18;
        v53 = *(v11 + 8);
        v53(v50, v10);
        v54 = sub_247924380(v49, v52, &v62);

        *(v47 + 4) = v54;
        _os_log_impl(&dword_2478E1000, v44, v45, "#Generated Manifest Event with UUID: %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x24C1AF180](v48, -1, -1);
        MEMORY[0x24C1AF180](v47, -1, -1);

        v53(v59, v10);
      }

      else
      {

        v55 = *(v11 + 8);
        v55(v42, v10);
        v55(v18, v10);
      }

      return v28;
    }

    v59 = a1;
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v19 = sub_24794ED34();
    __swift_project_value_buffer(v19, qword_27EE58DF8);
    v20 = sub_24794ED14();
    v21 = sub_24794F144();
    v22 = os_log_type_enabled(v20, v21);
    LODWORD(v60) = 2;
    if (v22)
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      if ((a5 & 0x8000000000000000) == 0)
      {
        a4 = v23;
        *(v23 + 4) = a5;
        _os_log_impl(&dword_2478E1000, v20, v21, "#BaseSiriRequestSamplingActionEvent: triming the sampleIds to it first %ld", v23, 0xCu);
        MEMORY[0x24C1AF180](a4, -1, -1);

        LODWORD(a4) = v60;
        goto LABEL_15;
      }
    }

    else
    {

      if ((a5 & 0x8000000000000000) == 0)
      {
LABEL_15:
        v20 = sub_24792E250(a5, a3);
        v21 = v31;
        if ((v31 & 1) == 0)
        {
          v32 = v29;
          v33 = v30;

          v34 = v33;
          v35 = v32;
LABEL_17:
          sub_2478E8B44(v20, v35, v34, v21);
          a3 = v36;
          swift_unknownObjectRelease();
          a1 = v59;
          goto LABEL_24;
        }

        v57 = v29;
        v58 = v30;
        a4 = v18;
        sub_24794F4F4();
        swift_unknownObjectRetain_n();

        v37 = swift_dynamicCastClass();
        if (!v37)
        {
          swift_unknownObjectRelease();
          v37 = MEMORY[0x277D84F90];
        }

        v38 = *(v37 + 16);

        if (!__OFSUB__(v21 >> 1, v58))
        {
          if (v38 == (v21 >> 1) - v58)
          {
            a3 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            v18 = a4;
            LODWORD(a4) = v60;
            a1 = v59;
            if (!a3)
            {
              swift_unknownObjectRelease();
              a3 = MEMORY[0x277D84F90];
            }

            goto LABEL_24;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        swift_unknownObjectRelease();
        v18 = a4;
        LODWORD(a4) = v60;
        v35 = v57;
        v34 = v58;
        goto LABEL_17;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_34;
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v24 = sub_24794ED34();
  __swift_project_value_buffer(v24, qword_27EE58DF8);
  v25 = sub_24794ED14();
  v26 = sub_24794F144();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2478E1000, v25, v26, "#BaseSiriRequestSamplingActionEvent: maxUploadCount is 0, do not generate manifest event", v27, 2u);
    MEMORY[0x24C1AF180](v27, -1, -1);
  }

  return 0;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2478E94A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2478E9538(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2478E95CC()
{
  result = qword_27EE57270;
  if (!qword_27EE57270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE57270);
  }

  return result;
}

uint64_t sub_2478E9620(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2478E9680(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2478E9710(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2478E976C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, double a9)
{
  v10 = v9;
  v20 = sub_24794EBB4();
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = (v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_locale);
  *v23 = a1;
  v23[1] = a2;
  v60 = v23;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v25 = v24;
  *(v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxNumRecordsPerDay) = a4;
  *(v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxSamplingDurationInDays) = a7;
  *(v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_intermediateUploadCount) = a6;
  *(v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount) = a5;
  *(v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_userSelectionChance) = a9;
  LOBYTE(a7) = *a3;
  *(v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_isNewVoiceProfile) = 0;
  *(v10 + 32) = a7;
  v27 = v26;

  sub_24794EBA4();
  v28 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_currentDate;
  (*(v25 + 32))(v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_currentDate, v22, v27);
  type metadata accessor for SiriRequestRecordFactory();
  v29 = swift_allocObject();
  *(v29 + 16) = a7;
  *(v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_requestRecordFactory) = v29;
  v30 = *a8;
  if (!*a8)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v37 = sub_24794ED34();
    __swift_project_value_buffer(v37, qword_27EE58DF8);
    v38 = sub_24794ED14();
    v39 = sub_24794F164();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2478E1000, v38, v39, "#BaseSiriRequestSamplingPolicy: cannot get samplingUtils from dependencies", v40, 2u);
      MEMORY[0x24C1AF180](v40, -1, -1);
    }

    v64 = a8[2];
    sub_2478E9620(&v64, &qword_27EE57290, &unk_2479504F0);
    v63 = a8[3];
    sub_2478E9620(&v63, &qword_27EE57298, &unk_2479503D0);
    v62 = a8[4];
    sub_2478E9620(&v62, &qword_27EE572A0, &unk_247950500);
    v61 = a8[5];
    v41 = &qword_27EE572A8;
    v42 = &unk_2479503E0;
    v43 = &v61;
    goto LABEL_28;
  }

  v31 = a8[2];
  if (!v31)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v44 = sub_24794ED34();
    __swift_project_value_buffer(v44, qword_27EE58DF8);
    v45 = sub_24794ED14();
    v46 = sub_24794F164();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2478E1000, v45, v46, "#BaseSiriRequestSamplingPolicy: cannot get configUserDefaults from dependencies", v47, 2u);
      MEMORY[0x24C1AF180](v47, -1, -1);
    }

    v64 = a8[3];
    sub_2478E9620(&v64, &qword_27EE57298, &unk_2479503D0);
    v63 = a8[4];
    sub_2478E9620(&v63, &qword_27EE572A0, &unk_247950500);
    v62 = a8[5];
    v41 = &qword_27EE572A8;
    v42 = &unk_2479503E0;
    goto LABEL_25;
  }

  v32 = a8[1];
  v33 = a8[5];
  v64 = v33;
  if (!v33)
  {
    v48 = qword_27EE571C0;
    v49 = v31;
    if (v48 != -1)
    {
      swift_once();
    }

    v50 = sub_24794ED34();
    __swift_project_value_buffer(v50, qword_27EE58DF8);
    v51 = sub_24794ED14();
    v52 = sub_24794F164();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_2478E1000, v51, v52, "#BaseSiriRequestSamplingPolicy: cannot get metadataManager from dependencies", v53, 2u);
      MEMORY[0x24C1AF180](v53, -1, -1);

      v63 = a8[3];
      sub_2478E9620(&v63, &qword_27EE57298, &unk_2479503D0);
      v62 = a8[4];
      sub_2478E9620(&v62, &qword_27EE572A0, &unk_247950500);
      v41 = &qword_27EE572A8;
      v42 = &unk_2479503E0;
      v43 = &v64;
LABEL_28:
      sub_2478E9620(v43, v41, v42);

      (*(v25 + 8))(v10 + v28, v27);

      type metadata accessor for BaseSiriRequestSamplingPolicy(0);
      swift_deallocPartialClassInstance();
      return 0;
    }

    v63 = a8[3];
    sub_2478E9620(&v63, &qword_27EE57298, &unk_2479503D0);
    v62 = a8[4];
    v41 = &qword_27EE572A0;
    v42 = &unk_247950500;
LABEL_25:
    v43 = &v62;
    goto LABEL_28;
  }

  v34 = a8[3];
  v63 = v34;
  if (!v34)
  {
    v54 = v31;
    sub_2478E9680(&v64, &v62, &qword_27EE572A8, &unk_2479503E0);
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v55 = sub_24794ED34();
    __swift_project_value_buffer(v55, qword_27EE58DF8);
    v56 = sub_24794ED14();
    v57 = sub_24794F164();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_2478E1000, v56, v57, "#BaseSiriRequestSamplingPolicy: cannot get siriProfileManager from dependencies", v58, 2u);
      MEMORY[0x24C1AF180](v58, -1, -1);

      sub_2478E9620(&v64, &qword_27EE572A8, &unk_2479503E0);
      sub_2478E9620(&v63, &qword_27EE57298, &unk_2479503D0);
    }

    else
    {

      sub_2478E9620(&v64, &qword_27EE572A8, &unk_2479503E0);
    }

    v62 = a8[4];
    sub_2478E9620(&v62, &qword_27EE572A0, &unk_247950500);
    v43 = &v64;
    v41 = &qword_27EE572A8;
    v42 = &unk_2479503E0;
    goto LABEL_28;
  }

  v35 = (v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils);
  *v35 = v30;
  v35[1] = v32;
  *(v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_configUserDefaults) = v31;
  *(v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) = v33;
  *(v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_siriProfileManager) = v34;
  v36 = v31;
  sub_2478E9680(&v64, &v62, &qword_27EE572A8, &unk_2479503E0);
  sub_2478E9680(&v63, &v62, &qword_27EE57298, &unk_2479503D0);
  sub_2478EA1B4();

  sub_2478E9620(&v63, &qword_27EE57298, &unk_2479503D0);
  v62 = a8[4];
  sub_2478E9620(&v62, &qword_27EE572A0, &unk_247950500);
  sub_2478E9620(&v64, &qword_27EE572A8, &unk_2479503E0);
  return v10;
}

void sub_2478EA1B4()
{
  v2 = v0;
  v3 = [*(*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_siriProfileManager) + 16) getVoiceProfile];
  if (v3)
  {
    v4 = v3;
    v5 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager);
    v6 = sub_24793B3D0();
    if (v6)
    {
      *(v5 + 16) = v6;
    }

    v7 = *(v5 + 16);
    if (!v7[16])
    {
      *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_isNewVoiceProfile) = 1;
    }

    v8 = (*(*v7 + 272))(v6);
    if (v1)
    {

      return;
    }

    v15 = v9;
    v16 = v8;
    v17 = [v4 profileID];
    if (v17)
    {
      v18 = v17;
      v19 = sub_24794EF04();
      v21 = v20;

      if (v16 == v19 && v15 == v21)
      {

        return;
      }

      v23 = sub_24794F4E4();

      if (v23)
      {

        return;
      }
    }

    *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_isNewVoiceProfile) = 1;
    v24 = [v4 profileID];
    if (v24)
    {
      v25 = v24;

      v26 = sub_24794EF04();
      v28 = v27;

      v29 = *(**(v5 + 16) + 280);

      v29(v26, v28);

      sub_247940408();
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v30 = sub_24794ED34();
      __swift_project_value_buffer(v30, qword_27EE58DF8);
      v31 = v4;
      v32 = sub_24794ED14();
      v33 = sub_24794F174();
      if (!os_log_type_enabled(v32, v33))
      {

        return;
      }

      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41 = v35;
      *v34 = 136315138;
      v36 = [v31 profileID];

      if (v36)
      {
        v37 = sub_24794EF04();
        v39 = v38;

        v40 = sub_247924380(v37, v39, &v41);

        *(v34 + 4) = v40;
        _os_log_impl(&dword_2478E1000, v32, v33, "#BaseSiriRequestSamplingPolicy: policy metadata voice profile has changed, updating to %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x24C1AF180](v35, -1, -1);
        MEMORY[0x24C1AF180](v34, -1, -1);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v10 = sub_24794ED34();
    __swift_project_value_buffer(v10, qword_27EE58DF8);
    v11 = sub_24794ED14();
    v12 = sub_24794F164();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2478E1000, v11, v12, "#BaseSiriRequestSamplingPolicy: can't get voiceProfile", v13, 2u);
      MEMORY[0x24C1AF180](v13, -1, -1);
    }

    sub_2478E95CC();
    swift_allocError();
    *v14 = xmmword_247950430;
    *(v14 + 16) = 2;
    swift_willThrow();
  }
}

BOOL sub_2478EA6BC()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils;
  v3 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils);
  v4 = *(v2 + 8);
  return ((*(v4 + 80))(v3, v4) & 1) != 0 && ((*(v4 + 88))(v3, v4) & 1) != 0 && *(*(*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + 16) == 1;
}

void sub_2478EA758()
{
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v0 = sub_24794ED34();
  __swift_project_value_buffer(v0, qword_27EE58DF8);
  oslog = sub_24794ED14();
  v1 = sub_24794F164();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2478E1000, oslog, v1, "#BaseSiriRequestSamplingPolicy: checkAndSelectDeviceForSampling should be implemented in sub class", v2, 2u);
    MEMORY[0x24C1AF180](v2, -1, -1);
  }
}

uint64_t sub_2478EA840()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_24794EBB4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager);
  v11 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount);
  v26 = *(*(v10 + 16) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_uploadedNumRecords);
  v25 = v11;
  v12 = v26 >= v11;
  if (v26 >= v11)
  {
    v24 = 1;
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v13 = sub_24794ED34();
    __swift_project_value_buffer(v13, qword_27EE58DF8);
    v14 = sub_24794ED14();
    v15 = sub_24794F174();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v23 = v1;
      v17 = v16;
      *v16 = 0;
      _os_log_impl(&dword_2478E1000, v14, v15, "#BaseSiriRequestSamplingPolicy: Device sampling finished as max total records reached.", v16, 2u);
      MEMORY[0x24C1AF180](v17, -1, -1);
    }

    v12 = v24;
  }

  v18 = *(v10 + 16);
  v19 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
  swift_beginAccess();
  sub_2478E9680(v18 + v19, v5, &qword_27EE572D0, &unk_2479504E0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2478E9620(v5, &qword_27EE572D0, &unk_2479504E0);
  }

  else
  {
    v20 = v26 >= v25;
    (*(v7 + 32))(v9, v5, v6);
    v21 = sub_247945000(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_currentDate, v9, *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxSamplingDurationInDays));
    (*(v7 + 8))(v9, v6);
    v12 = v20 | v21 ^ 1;
  }

  return v12 & 1;
}

uint64_t sub_2478EAB54()
{
  v1 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager);
  v2 = (*(**(v1 + 16) + 352))();
  v3 = (*(**(v1 + 16) + 272))();
  v6 = sub_2478EC498(v3, v5, v2);

  return (v6 ^ 1) & 1;
}

uint64_t sub_2478EAE30(uint64_t a1, const char *a2)
{
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v3 = sub_24794ED34();
  __swift_project_value_buffer(v3, qword_27EE58DF8);
  v4 = sub_24794ED14();
  v5 = sub_24794F154();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2478E1000, v4, v5, a2, v6, 2u);
    MEMORY[0x24C1AF180](v6, -1, -1);
  }

  sub_2478E95CC();
  swift_allocError();
  *v7 = xmmword_24794FEE0;
  *(v7 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_2478EAFA8(const char *a1)
{
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v2 = sub_24794ED34();
  __swift_project_value_buffer(v2, qword_27EE58DF8);
  v3 = sub_24794ED14();
  v4 = sub_24794F154();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2478E1000, v3, v4, a1, v5, 2u);
    MEMORY[0x24C1AF180](v5, -1, -1);
  }

  sub_2478E95CC();
  swift_allocError();
  *v6 = xmmword_24794FEE0;
  *(v6 + 16) = 2;
  return swift_willThrow();
}

BOOL sub_2478EB0C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_24794EBB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16);
  v9 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
  swift_beginAccess();
  sub_2478E9680(v8 + v9, v3, &qword_27EE572D0, &unk_2479504E0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_2478E9620(v3, &qword_27EE572D0, &unk_2479504E0);
    return 0;
  }

  (*(v5 + 32))(v7, v3, v4);
  v10 = sub_247945000(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_currentDate, v7, *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxSamplingDurationInDays));
  (*(v5 + 8))(v7, v4);
  return (v10 & 1) == 0;
}

uint64_t sub_2478EB2C4(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils;
  v5 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils);
  v6 = *(v4 + 8);
  v19 = *a1;
  v7 = *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_configUserDefaults);
  v8 = (v6)[2](&v19, v7, v5, v6);
  if ((v9 & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxNumRecordsPerDay) = v8;
  }

  v18 = v3;
  v10 = (v6)[1](&v18, v7, v5, v6);
  if ((v11 & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_intermediateUploadCount) = v10;
  }

  v17 = v3;
  v12 = (v6)[3](&v17, v7, v5, v6);
  if ((v13 & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount) = v12;
  }

  v16 = v3;
  result = (v6)[4](&v16, v7, v5, v6);
  if ((v15 & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_userSelectionChance) = result;
  }

  return result;
}

uint64_t sub_2478EB3FC(char *a1)
{
  v2 = v1;
  v64 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v3 = MEMORY[0x28223BE20](v63);
  v62 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v60 - v5;
  v7 = sub_24794EBB4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v61 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v60 = &v60 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v60 - v13;
  v15 = *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager);
  v16 = *(v15 + 16);
  v17 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
  swift_beginAccess();
  v18 = v16 + v17;
  v19 = v8;
  v20 = v7;
  sub_2478E9680(v18, v6, &qword_27EE572D0, &unk_2479504E0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2478E9620(v6, &qword_27EE572D0, &unk_2479504E0);
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v21 = sub_24794ED34();
    __swift_project_value_buffer(v21, qword_27EE58DF8);

    v22 = sub_24794ED14();
    v23 = sub_24794F164();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v66 = v25;
      *v24 = 136315138;
      v26 = *(v15 + 16);
      v27 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
      swift_beginAccess();
      sub_2478E9680(v26 + v27, v62, &qword_27EE572D0, &unk_2479504E0);
      v28 = sub_24794EF14();
      v30 = sub_247924380(v28, v29, &v66);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_2478E1000, v22, v23, "#BaseSiriRequestSamplingPolicy: collection start date - %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x24C1AF180](v25, -1, -1);
      MEMORY[0x24C1AF180](v24, -1, -1);
    }

    return 0;
  }

  (*(v8 + 32))(v14, v6, v7);
  v32 = v64;
  v33 = v14;
  if (((*(*(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils + 8) + 72))(v64, v14, *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxSamplingDurationInDays)) & 1) == 0)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v46 = sub_24794ED34();
    __swift_project_value_buffer(v46, qword_27EE58DF8);
    v47 = v61;
    (*(v8 + 16))(v61, v32, v20);
    v48 = sub_24794ED14();
    v49 = sub_24794F144();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v64 = v33;
      v65[0] = v51;
      v52 = v51;
      *v50 = 136315138;
      sub_2478EC590();
      v53 = sub_24794F4D4();
      v55 = v54;
      v56 = *(v19 + 8);
      v56(v47, v20);
      v57 = sub_247924380(v53, v55, v65);

      *(v50 + 4) = v57;
      _os_log_impl(&dword_2478E1000, v48, v49, "#BaseSiriRequestSamplingPolicy: date %s is not within sampling cycle", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x24C1AF180](v52, -1, -1);
      MEMORY[0x24C1AF180](v50, -1, -1);

      v56(v64, v20);
    }

    else
    {

      v58 = *(v19 + 8);
      v58(v47, v20);
      v58(v33, v20);
    }

    return 0;
  }

  if (*(*(v15 + 16) + 16) != 1)
  {
    (*(v8 + 8))(v14, v20);
    return 0;
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v34 = sub_24794ED34();
  __swift_project_value_buffer(v34, qword_27EE58DF8);
  v35 = v60;
  (*(v8 + 16))(v60, v32, v20);
  v36 = sub_24794ED14();
  v37 = sub_24794F154();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v65[0] = v39;
    *v38 = 136315138;
    sub_2478EC590();
    v40 = sub_24794F4D4();
    v41 = v35;
    v43 = v42;
    v44 = *(v19 + 8);
    v44(v41, v20);
    v45 = sub_247924380(v40, v43, v65);

    *(v38 + 4) = v45;
    _os_log_impl(&dword_2478E1000, v36, v37, "#BaseSiriRequestSamplingPolicy: accept record for date: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x24C1AF180](v39, -1, -1);
    MEMORY[0x24C1AF180](v38, -1, -1);

    v44(v33, v20);
  }

  else
  {

    v59 = *(v19 + 8);
    v59(v35, v20);
    v59(v14, v20);
  }

  return 1;
}

uint64_t sub_2478EBB7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v28 - v2;
  v4 = sub_24794EBB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager);
  v9 = *(v8 + 16);
  if (*(v9 + 16))
  {
    if (*(v9 + 16) != 2)
    {
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v16 = sub_24794ED34();
      __swift_project_value_buffer(v16, qword_27EE58DF8);

      v17 = sub_24794ED14();
      v18 = sub_24794F154();
      if (!os_log_type_enabled(v17, v18))
      {

        return 0;
      }

      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = *(*(v8 + 16) + 16);

      _os_log_impl(&dword_2478E1000, v17, v18, "#BaseSiriRequestSamplingPolicy: sampling status : %ld is not eligible for sampling start", v19, 0xCu);
      v20 = v19;
      goto LABEL_20;
    }

    v10 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
    swift_beginAccess();
    sub_2478E9680(v9 + v10, v3, &qword_27EE572D0, &unk_2479504E0);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_2478E9620(v3, &qword_27EE572D0, &unk_2479504E0);
LABEL_16:
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v21 = sub_24794ED34();
      __swift_project_value_buffer(v21, qword_27EE58DF8);
      v17 = sub_24794ED14();
      v22 = sub_24794F144();
      if (!os_log_type_enabled(v17, v22))
      {
        goto LABEL_21;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2478E1000, v17, v22, "#BaseSiriRequestSamplingPolicy: last cyecle finished but has not passed the sampling cycle yet", v23, 2u);
      v20 = v23;
LABEL_20:
      MEMORY[0x24C1AF180](v20, -1, -1);
LABEL_21:

      return 0;
    }

    (*(v5 + 32))(v7, v3, v4);
    if ((*(*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils + 8) + 72))(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_currentDate, v7, *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxSamplingDurationInDays)))
    {
      (*(v5 + 8))(v7, v4);
      goto LABEL_16;
    }

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v24 = sub_24794ED34();
    __swift_project_value_buffer(v24, qword_27EE58DF8);
    v25 = sub_24794ED14();
    v26 = sub_24794F144();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2478E1000, v25, v26, "#BaseSiriRequestSamplingPolicy: last cycle finished and sampling cycle days passed, start sampling", v27, 2u);
      MEMORY[0x24C1AF180](v27, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return 1;
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v11 = sub_24794ED34();
    __swift_project_value_buffer(v11, qword_27EE58DF8);
    v12 = sub_24794ED14();
    v13 = sub_24794F144();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2478E1000, v12, v13, "#BaseSiriRequestSamplingPolicy: metadata status is unkown, start sampling", v14, 2u);
      MEMORY[0x24C1AF180](v14, -1, -1);
    }

    return 1;
  }
}

uint64_t sub_2478EC0C8()
{

  v1 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_currentDate;
  v2 = sub_24794EBB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BaseSiriRequestSamplingPolicy(uint64_t a1)
{
  result = qword_27EE572C0;
  if (!qword_27EE572C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2478EC214(uint64_t a1)
{
  result = sub_24794EBB4();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_2478EC39C()
{
  v2 = *v0;
  v3 = (*(*v2 + 392))();
  v4 = v3;
  if (!v1 && (v3 & 1) != 0)
  {
    *(*(*(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + 16) = 2;
    sub_247940408();
  }

  return v4 & 1;
}

uint64_t sub_2478EC498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_24794F584();
  sub_24794EF74();
  v6 = sub_24794F5B4();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_24794F4E4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_2478EC590()
{
  result = qword_27EE57288;
  if (!qword_27EE57288)
  {
    sub_24794EBB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE57288);
  }

  return result;
}

uint64_t sub_2478EC5E8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v9 = *a3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 48) = v9;
  type metadata accessor for SiriRequestRecordFactory();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v6 + 56) = v10;
  v11 = *a5;
  if (!*a5)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v14 = sub_24794ED34();
    __swift_project_value_buffer(v14, qword_27EE58DF8);
    v15 = sub_24794ED14();
    v16 = sub_24794F164();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2478E1000, v15, v16, "#BaseSiriRequestSamplingSelectionRule: samplingUtils is not defined", v17, 2u);
      MEMORY[0x24C1AF180](v17, -1, -1);
    }

    goto LABEL_15;
  }

  if (!a4)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v18 = sub_24794ED34();
    __swift_project_value_buffer(v18, qword_27EE58DF8);
    v19 = sub_24794ED14();
    v20 = sub_24794F164();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2478E1000, v19, v20, "#BaseSiriRequestSamplingSelectionRule: samplingPolicy is not defined", v21, 2u);
      MEMORY[0x24C1AF180](v21, -1, -1);
    }

LABEL_15:
    v33 = a5[2];
    sub_2478E9620(&v33, &qword_27EE57290, &unk_2479504F0);
    v32 = a5[3];
    sub_2478E9620(&v32, &qword_27EE57298, &unk_2479503D0);
    v31 = a5[4];
    v22 = &qword_27EE572A0;
    v23 = &unk_247950500;
    goto LABEL_16;
  }

  v12 = a5[1];
  v13 = a5[4];
  v33 = v13;
  if (!v13)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v26 = sub_24794ED34();
    __swift_project_value_buffer(v26, qword_27EE58DF8);
    v27 = sub_24794ED14();
    v28 = sub_24794F164();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2478E1000, v27, v28, "#BaseSiriRequestSamplingSelectionRule: audioFileManager is not defined in dependencies", v29, 2u);
      MEMORY[0x24C1AF180](v29, -1, -1);

      v32 = a5[2];
      sub_2478E9620(&v32, &qword_27EE57290, &unk_2479504F0);
      v31 = a5[3];
      sub_2478E9620(&v31, &qword_27EE57298, &unk_2479503D0);
      v22 = &qword_27EE572A0;
      v23 = &unk_247950500;
      v24 = &v33;
      goto LABEL_17;
    }

    v32 = a5[2];
    sub_2478E9620(&v32, &qword_27EE57290, &unk_2479504F0);
    v31 = a5[3];
    v22 = &qword_27EE57298;
    v23 = &unk_2479503D0;
LABEL_16:
    v24 = &v31;
LABEL_17:
    sub_2478E9620(v24, v22, v23);
    v30 = a5[5];
    sub_2478E9620(&v30, &qword_27EE572A8, &unk_2479503E0);

    type metadata accessor for BaseSiriRequestSamplingSelectionRule();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v32 = a5[2];
  sub_2478E9680(&v33, &v31, &qword_27EE572A0, &unk_247950500);
  sub_2478E9620(&v32, &qword_27EE57290, &unk_2479504F0);
  v31 = a5[3];
  sub_2478E9620(&v31, &qword_27EE57298, &unk_2479503D0);
  sub_2478E9620(&v33, &qword_27EE572A0, &unk_247950500);
  v30 = a5[5];
  sub_2478E9620(&v30, &qword_27EE572A8, &unk_2479503E0);
  *(v6 + 32) = v11;
  *(v6 + 40) = v12;
  *(v6 + 64) = a4;
  *(v6 + 72) = v13;
  return v6;
}

uint64_t sub_2478ECA98(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34[-v7];
  v9 = sub_24794EC04();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId;
  swift_beginAccess();
  sub_2478E9680(a1 + v13, v8, &qword_27EE57278, &unk_247950590);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v14 = &qword_27EE57278;
    v15 = &unk_247950590;
    v16 = v8;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v17 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
    swift_beginAccess();
    sub_2478E9680(a1 + v17, v5, &qword_27EE572D0, &unk_2479504E0);
    v18 = sub_24794EBB4();
    if ((*(*(v18 - 8) + 48))(v5, 1, v18) != 1)
    {
      sub_2478E9620(v5, &qword_27EE572D0, &unk_2479504E0);
      v25 = *(v1 + 72);
      v26 = sub_24794EBD4();
      v28 = v27;
      v29 = sub_24793B298();
      v30 = *(v25 + 32);
      v31 = *(v25 + 40);
      v32 = *(v31 + 152);
      v33 = v29;

      v23 = v32(v26, v28, v33, v30, v31);

      (*(v10 + 8))(v12, v9);
      return v23 & 1;
    }

    (*(v10 + 8))(v12, v9);
    v14 = &qword_27EE572D0;
    v15 = &unk_2479504E0;
    v16 = v5;
  }

  sub_2478E9620(v16, v14, v15);
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v19 = sub_24794ED34();
  __swift_project_value_buffer(v19, qword_27EE58DF8);
  v20 = sub_24794ED14();
  v21 = sub_24794F164();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2478E1000, v20, v21, "#BaseSiriRequestSamplingSelectionRule: no requestId or date not valid", v22, 2u);
    MEMORY[0x24C1AF180](v22, -1, -1);
  }

  v23 = 0;
  return v23 & 1;
}

int64_t sub_2478ECFF0(uint64_t a1, char *a2)
{
  v3 = v2;
  v5 = *(v2 + 64);
  v6 = sub_2478EB3FC(a2);
  v7 = MEMORY[0x277D84F90];
  if ((v6 & 1) == 0)
  {
    return v7;
  }

  v8 = sub_2478ED524(a1);
  v9 = v8;
  v46 = v7;
  v10 = v8 & 0xFFFFFFFFFFFFFF8;
  if (!(v8 >> 62))
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_22:
    v13 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v11 = sub_24794F414();
  if (!v11)
  {
    goto LABEL_22;
  }

LABEL_4:
  v12 = 0;
  v7 = v9 & 0xC000000000000001;
  v13 = MEMORY[0x277D84F90];
  do
  {
    v45 = v13;
    v14 = v12;
    while (1)
    {
      if (v7)
      {
        v15 = MEMORY[0x24C1AE890](v14, v9);
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v14 >= *(v10 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(v9 + 8 * v14 + 32);

        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      if ((*(*v3 + 136))(v15))
      {
        break;
      }

      ++v14;
      if (v12 == v11)
      {
        v13 = v45;
        goto LABEL_23;
      }
    }

    MEMORY[0x24C1AE560]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24794F084();
    }

    sub_24794F0A4();
    v13 = v46;
  }

  while (v12 != v11);
LABEL_23:

  v16 = *(v5 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxNumRecordsPerDay);
  v17 = *(*(*(v5 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_uploadedNumRecords);
  v18 = *(v5 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount);
  v19 = v18 >= v17;
  v20 = v18 - v17;
  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v22 = sub_24794ED34();
  __swift_project_value_buffer(v22, qword_27EE58DF8);
  v23 = sub_24794ED14();
  v24 = sub_24794F154();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134218240;
    *(v25 + 4) = v17;
    *(v25 + 12) = 2048;
    *(v25 + 14) = v21;
    _os_log_impl(&dword_2478E1000, v23, v24, "#BaseSiriRequestSamplingSelectionRule: uploadedNumRecords: %lu, remainingCount: %lu", v25, 0x16u);
    MEMORY[0x24C1AF180](v25, -1, -1);
  }

  v46 = sub_247900104(v26);
  v27 = &v46;
  sub_2478FA9B8();
  if (v16 < 0)
  {
    __break(1u);
  }

  else
  {
    v27 = v46;
    if (!(v13 >> 62))
    {
      v28 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_33;
    }
  }

  v28 = sub_24794F414();
LABEL_33:

  if (v21 < 0)
  {
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v28 >= v16)
  {
    v29 = v16;
  }

  else
  {
    v29 = v28;
  }

  if (v21 >= v29)
  {
    v7 = v29;
  }

  else
  {
    v7 = v21;
  }

  if (v28 < 0)
  {
    goto LABEL_84;
  }

  LODWORD(v17) = v27 < 0 || (v27 & 0x4000000000000000) != 0;
  if (v17 != 1)
  {
    v30 = *(v27 + 16);
    goto LABEL_46;
  }

LABEL_85:
  v30 = sub_24794F414();
LABEL_46:
  if (v30 <= 0)
  {
    v31 = v7;
  }

  else
  {
    v31 = 0;
  }

  if (v30 >= v7)
  {
    v32 = v7;
  }

  else
  {
    v32 = v30;
  }

  if (v30 < 0)
  {
    v32 = v7;
  }

  if (v7 >= 1)
  {
    v33 = v32;
  }

  else
  {
    v33 = v31;
  }

  if (v17)
  {
    if (sub_24794F414() < 0)
    {
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v34 = sub_24794F414();
  }

  else
  {
    v34 = *(v27 + 16);
  }

  if (v34 < v33)
  {
    __break(1u);
    goto LABEL_87;
  }

  if ((v27 & 0xC000000000000001) != 0 && v33)
  {
    type metadata accessor for SiriRequestRecord(0);

    v35 = 0;
    do
    {
      v36 = v35 + 1;
      sub_24794F364();
      v35 = v36;
    }

    while (v33 != v36);
  }

  else
  {
  }

  if (!v17)
  {
    v7 = 0;
    v28 = v27 + 32;
    v33 = (2 * v33) | 1;
    if (v33)
    {
      goto LABEL_73;
    }

LABEL_72:
    sub_2478E8CE4(v27, v28, v7, v33);
    v7 = v41;
LABEL_79:
    swift_unknownObjectRelease();
    return v7;
  }

  v37 = sub_24794F454();
  v28 = v38;
  v7 = v39;
  v33 = v40;

  v27 = v37;
  if ((v33 & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_73:
  sub_24794F4F4();
  swift_unknownObjectRetain_n();
  v42 = swift_dynamicCastClass();
  if (!v42)
  {
    swift_unknownObjectRelease();
    v42 = MEMORY[0x277D84F90];
  }

  v43 = *(v42 + 16);

  if (__OFSUB__(v33 >> 1, v7))
  {
    goto LABEL_88;
  }

  if (v43 != (v33 >> 1) - v7)
  {
LABEL_89:
    swift_unknownObjectRelease_n();
    goto LABEL_72;
  }

  v7 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v7)
  {
    v7 = MEMORY[0x277D84F90];
    goto LABEL_79;
  }

  return v7;
}

uint64_t sub_2478ED524(uint64_t a1)
{
  result = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(v1 + 56);
    v6 = a1 + 32;
    while (*(v5 + 16) > 1u)
    {
      if (*(v5 + 16) != 2)
      {
        goto LABEL_10;
      }

      type metadata accessor for MetricsCalcRecord(0);
      swift_allocObject();

      sub_247900C7C(v15);
LABEL_11:
      MEMORY[0x24C1AE560]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24794F084();
      }

      sub_24794F0A4();
      v6 += 8;
      if (!--v4)
      {
        return v17;
      }
    }

    if (*(v5 + 16))
    {
      type metadata accessor for ButtonPressRequestRecord(0);
      *(swift_allocObject() + OBJC_IVAR____TtC23CoreSpeechDataAnalytics24ButtonPressRequestRecord_wakeWord) = 0;

      v8 = sub_2478F0B18(v7);
      v9 = v8;
      v10 = *(v8 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best + 8);
      if (v10)
      {
        v11 = *(v8 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_siriInputLocale);
        if (v11)
        {
          v12 = *(v8 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best);

          v13 = v11;
          v14 = SISchemaISOLocale.toString()();

          LOBYTE(v13) = sub_247944340(v12, v10, v14._countAndFlagsBits, v14._object);

          *(v9 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics24ButtonPressRequestRecord_wakeWord) = v13;
        }
      }

      goto LABEL_11;
    }

LABEL_10:
    type metadata accessor for SiriRequestRecord(0);
    swift_allocObject();

    sub_2478F0B18(v16);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_2478ED71C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2478ED7D4()
{

  return swift_deallocClassInstance();
}

id sub_2478ED848@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v35 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  v13 = *(v2 + 16);
  v14 = [v13 getVoiceProfile];
  if (v14)
  {
    v15 = v14;
    result = [v14 tdtiEnrollmentUtterances];
    if (result)
    {
      v17 = result;
      sub_2478E9538(0, &qword_27EE572E0, 0x277D65398);
      v18 = sub_24794F064();

      sub_2478EDDE4(v18, v12);

      sub_2478EE3C8(v12, v10);
      v19 = sub_24794EBB4();
      if ((*(*(v19 - 8) + 48))(v10, 1, v19) != 1)
      {

        sub_2478E9620(v10, &qword_27EE572D0, &unk_2479504E0);
        return sub_2478EE360(v12, a1, &qword_27EE572D0, &unk_2479504E0);
      }

      sub_2478E9620(v10, &qword_27EE572D0, &unk_2479504E0);
      result = [v15 tdEnrollmentUtterances];
      if (result)
      {
        v20 = result;
        v21 = sub_24794F064();

        sub_2478EDDE4(v21, v7);

        sub_2478E9620(v12, &qword_27EE572D0, &unk_2479504E0);
        sub_2478EE360(v7, v12, &qword_27EE572D0, &unk_2479504E0);
        return sub_2478EE360(v12, a1, &qword_27EE572D0, &unk_2479504E0);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v22 = sub_24794ED34();
    __swift_project_value_buffer(v22, qword_27EE58DF8);

    v23 = sub_24794ED14();
    v24 = sub_24794F164();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36 = v26;
      *v25 = 136315138;
      v27 = [v13 userProfileIdentifier];
      if (v27)
      {
        v28 = v27;
        v29 = sub_24794EF04();
        v31 = v30;
      }

      else
      {
        v31 = 0xE300000000000000;
        v29 = 7104878;
      }

      v32 = sub_247924380(v29, v31, &v36);

      *(v25 + 4) = v32;
      _os_log_impl(&dword_2478E1000, v23, v24, "#SiriProfileManager: voiceProfile not found with userProfileIdentifier: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x24C1AF180](v26, -1, -1);
      MEMORY[0x24C1AF180](v25, -1, -1);
    }

    v33 = sub_24794EBB4();
    v34 = *(*(v33 - 8) + 56);

    return v34(a1, 1, 1, v33);
  }

  return result;
}

unint64_t sub_2478EDC88()
{
  v1 = [*(v0 + 16) getVoiceProfile];
  if (!v1)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v9 = sub_24794ED34();
    __swift_project_value_buffer(v9, qword_27EE58DF8);
    v2 = sub_24794ED14();
    v10 = sub_24794F164();
    if (os_log_type_enabled(v2, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2478E1000, v2, v10, "#SiriProfileManager: voiceProfile not found", v11, 2u);
      MEMORY[0x24C1AF180](v11, -1, -1);
    }

    goto LABEL_8;
  }

  v2 = v1;
  v3 = [v1 profilePitch];
  if (!v3)
  {
LABEL_8:

    v8 = 0;
    v7 = 1;
    return v8 | (v7 << 32);
  }

  v4 = v3;
  [v3 floatValue];
  v6 = v5;

  v7 = 0;
  v8 = v6;
  return v8 | (v7 << 32);
}

uint64_t sub_2478EDDE4@<X0>(unint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D8, &qword_247950660);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  v13 = sub_24794EA84();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v46 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v42 - v21;
  if (!(a1 >> 62))
  {
    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_3;
    }

LABEL_17:
    v32 = sub_24794EBB4();
    return (*(*(v32 - 8) + 56))(a2, 1, 1, v32);
  }

LABEL_24:
  v41 = v20;
  v23 = sub_24794F414();
  v20 = v41;
  if (!v23)
  {
    goto LABEL_17;
  }

LABEL_3:
  v43 = v22;
  v44 = v19;
  v47 = v14;
  v48 = v20;
  v45 = v6;
  v49 = a2;
  v6 = 0;
  v19 = (a1 & 0xC000000000000001);
  v22 = (a1 & 0xFFFFFFFFFFFFFF8);
  v14 = off_278EB5000;
  while (1)
  {
    if (v19)
    {
      v20 = MEMORY[0x24C1AE890](v6, a1);
    }

    else
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v20 = *(a1 + 8 * v6 + 32);
    }

    v24 = v20;
    a2 = (v6 + 1);
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if ([v20 isExplicit])
    {
      break;
    }

    ++v6;
    if (a2 == v23)
    {
      (v47[7])(v12, 1, 1, v48);
      a2 = v49;
LABEL_16:
      sub_2478E9620(v12, &qword_27EE572D8, &qword_247950660);
      goto LABEL_17;
    }
  }

  v25 = [v24 enrollmentUtteranceUrl];

  if (v25)
  {
    sub_24794EA64();

    v26 = v47;
    v27 = v47[7];
    v28 = v10;
    v29 = 0;
  }

  else
  {
    v26 = v47;
    v27 = v47[7];
    v28 = v10;
    v29 = 1;
  }

  v30 = v48;
  (v27)(v28, v29, 1, v48);
  a2 = v49;
  v31 = v45;
  sub_2478EE360(v10, v12, &qword_27EE572D8, &qword_247950660);
  if ((v26[6])(v12, 1, v30) == 1)
  {
    goto LABEL_16;
  }

  (v26[4])(v43, v12, v30);
  v34 = v46;
  sub_24794EA44();
  sub_24794EA54();
  v35 = v26[1];
  (v35)(v34, v30);
  v36 = objc_opt_self();
  v37 = sub_24794EA34();
  v38 = [v36 recordedTimeStampOfFile_];

  if (v38)
  {
    sub_24794EB94();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  (v35)(v44, v30);
  (v35)(v43, v30);
  v40 = sub_24794EBB4();
  (*(*(v40 - 8) + 56))(v31, v39, 1, v40);
  return sub_2478EE360(v31, a2, &qword_27EE572D0, &unk_2479504E0);
}

uint64_t sub_2478EE2F4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2478EE360(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2478EE3C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_2478EE438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v17[0] = sub_24794F194();
  v10 = *(v17[0] - 8);
  MEMORY[0x28223BE20](v17[0]);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24794F184();
  MEMORY[0x28223BE20](v13);
  v14 = sub_24794EDC4();
  MEMORY[0x28223BE20](v14 - 8);

  v6[4] = 0;
  v6[5] = 0;
  v6[2] = a5;
  v6[6] = a3;
  v6[7] = a4;
  sub_2478E9538(0, &qword_27EE572E8, 0x277D85C78);
  v15 = a5;
  sub_24794EDB4();
  v17[1] = MEMORY[0x277D84F90];
  sub_2478EE680();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572F8, &qword_247950668);
  sub_2478EE6D8();
  sub_24794F294();
  (*(v10 + 104))(v12, *MEMORY[0x277D85260], v17[0]);
  v6[3] = sub_24794F1A4();
  return v6;
}

unint64_t sub_2478EE680()
{
  result = qword_27EE572F0;
  if (!qword_27EE572F0)
  {
    sub_24794F184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE572F0);
  }

  return result;
}

unint64_t sub_2478EE6D8()
{
  result = qword_27EE57300;
  if (!qword_27EE57300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE572F8, &qword_247950668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE57300);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2478EE784(char *a1)
{
  v2 = *a1;
  *(v1 + 32) = 0;
  *(v1 + 16) = v2;
  type metadata accessor for SiriRequestRecordFactory();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v1 + 24) = v3;
  v4 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v5 = [v4 OnDeviceAnalytics];
  swift_unknownObjectRelease();
  v6 = [v5 AttentionAndInvocationSampling];
  swift_unknownObjectRelease();
  *(v1 + 40) = v6;
  return v1;
}

void sub_2478EE858(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [*(v3 + 40) source];
  v8 = sub_2478EF948(a1, a2, a3);
  v9 = v8;
  if (!(v8 >> 62))
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v10 = sub_24794F414();
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C1AE890](i, v9);
      }

      else
      {
        v12 = *(v9 + 8 * i + 32);
      }

      v13 = v12;
      [v7 sendEvent_];
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_2478EE968(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = v4;
    MEMORY[0x24C1AE560]();
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24794F084();
    }

    sub_24794F0A4();
    swift_endAccess();
  }
}

void sub_2478EEA34(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v43 = a2;
  v44 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v38 - v8;
  v45 = [*(v3 + 40) source];
  if (a1 >> 62)
  {
LABEL_28:
    v10 = sub_24794F414();
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_29:

    return;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_29;
  }

LABEL_3:
  v11 = 0;
  v46 = a1 & 0xC000000000000001;
  v38[1] = v5;
  v39 = a1 & 0xFFFFFFFFFFFFFF8;
  v40 = "noWakeWord";
  v41 = v10;
  v12 = off_278EB5000;
  v42 = a1;
  v49 = v9;
  while (1)
  {
    if (v46)
    {
      v20 = MEMORY[0x24C1AE890](v11, a1);
    }

    else
    {
      if (v11 >= *(v39 + 16))
      {
        goto LABEL_27;
      }

      v20 = *(a1 + 8 * v11 + 32);
    }

    v5 = v20;
    v19 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v21 = [v20 v12[508]];
    v22 = sub_24794F064();

    v23 = *(v22 + 16);

    if (v23)
    {
      break;
    }

LABEL_6:

    ++v11;
    if (v19 == v10)
    {
      goto LABEL_29;
    }
  }

  v24 = sub_24794EEF4();
  v25 = MGGetStringAnswer();

  if (v25)
  {
    sub_24794EF04();
    v27 = v26;

    v28 = [v5 timestamp];
    v47 = v27;
    v48 = v11 + 1;
    if (v28)
    {
      v29 = v28;
      sub_24794EB94();

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = sub_24794EBB4();
    v32 = *(v31 - 8);
    (*(v32 + 56))(v9, v30, 1, v31);
    v33 = [v5 v12[508]];
    v34 = sub_24794F064();

    if (*(v34 + 16))
    {
      v35 = *(v34 + 40);
    }

    else
    {
      v35 = 0;
    }

    v36 = v49;
    if ((*(v32 + 48))(v49, 1, v31) == 1)
    {
      v37 = 0;
      if (!v35)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v37 = sub_24794EB34();
      (*(v32 + 8))(v36, v31);
      if (!v35)
      {
LABEL_24:
        v13 = 0;
        goto LABEL_5;
      }
    }

    v13 = sub_24794EEF4();

LABEL_5:
    v14 = objc_allocWithZone(MEMORY[0x277CF1458]);
    v15 = sub_24794EEF4();
    v16 = sub_24794EEF4();
    v17 = sub_24794EEF4();

    v18 = [v14 initWithTimestamp:v37 onDeviceSampleIdentifier:v13 userSamplingIdentifier:v15 dataCollectionUseCase:v16 deviceType:v17];

    [v45 sendEvent_];
    v5 = v18;
    v10 = v41;
    a1 = v42;
    v9 = v49;
    v12 = off_278EB5000;
    v19 = v48;
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_2478EEE7C()
{
  v1 = [*(v0 + 40) pruner];
  v2 = sub_24794EEF4();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2478EFFC0;
  *(v3 + 24) = v0;
  v6[4] = sub_2478EFFC8;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2478F0AF0;
  v6[3] = &block_descriptor_37;
  v4 = _Block_copy(v6);

  [v1 deleteWithPolicy:v2 eventsPassingTest:v4];

  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2478EF004(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1 && (v3 = [a1 eventBody]) != 0)
  {
    v4 = v3;
    v5 = [v3 dataCollectionUseCase];
    if (v5)
    {
      v6 = v5;
      sub_24794EF04();

      v7 = sub_24794F004();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_2478EF144(char *a1, void *a2)
{
  v4 = *a1;
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D84F90];
  *(v5 + 16) = MEMORY[0x277D84F90];
  v7 = v5 + 16;
  v28 = nullsub_1;
  v29 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_2478F0B14;
  v27 = &block_descriptor_25;
  v8 = _Block_copy(&aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  v28 = sub_2478EFFB4;
  v29 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_2478F0B14;
  v27 = &block_descriptor_31;
  v10 = _Block_copy(&aBlock);

  v11 = [a2 sinkWithCompletion:v8 receiveInput:v10];
  _Block_release(v10);
  _Block_release(v8);

  if (qword_27EE571C0 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v12 = sub_24794ED34();
    __swift_project_value_buffer(v12, qword_27EE58DF8);

    v13 = sub_24794ED14();
    v14 = sub_24794F154();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      swift_beginAccess();
      v16 = *v7 >> 62 ? sub_24794F414() : *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v15 + 4) = v16;

      _os_log_impl(&dword_2478E1000, v13, v14, "#SiriRequestBiomeProcessor: Fetched all %ld", v15, 0xCu);
      MEMORY[0x24C1AF180](v15, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v7 = *v7;
    v23 = v6;
    v17 = v7 >> 62 ? sub_24794F414() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v17)
    {
      break;
    }

    v18 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x24C1AE890](v18, v7);
      }

      else
      {
        if (v18 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v19 = *(v7 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      sub_2478F6700(v19);
      if (v2)
      {

        goto LABEL_23;
      }

      MEMORY[0x24C1AE560]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24794F084();
      }

      sub_24794F0A4();
      v6 = v23;
      ++v18;
      if (v21 == v17)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_21:

LABEL_23:

  return v6;
}

void sub_2478EF568(void *a1, unsigned __int8 a2, uint64_t a3)
{
  v4 = [a1 eventBody];
  if (v4)
  {
    v17 = v4;
    v5 = [v4 dataCollectionUseCase];
    if (v5 && (v6 = v5, sub_24794EF04(), v6, v7 = sub_24794F004(), , , (v7 & 1) != 0) && (v8 = [v17 onDeviceSampleIdentifier]) != 0)
    {

      swift_beginAccess();
      v9 = v17;
      MEMORY[0x24C1AE560]();
      if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24794F084();
      }

      sub_24794F0A4();
      swift_endAccess();
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v10 = sub_24794ED34();
      __swift_project_value_buffer(v10, qword_27EE58DF8);
      v11 = v9;
      v12 = sub_24794ED14();
      v13 = sub_24794F154();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        *(v14 + 4) = v11;
        *v15 = v17;
        v16 = v11;
        _os_log_impl(&dword_2478E1000, v12, v13, "#Utils: Current eventBody: %@ from BiomeStream", v14, 0xCu);
        sub_2478EFF2C(v15);
        MEMORY[0x24C1AF180](v15, -1, -1);
        MEMORY[0x24C1AF180](v14, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_2478EF874(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2478EF8DC()
{

  return swift_deallocClassInstance();
}

unint64_t sub_2478EF948(unint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v10 = MEMORY[0x277D84F90];
  if (!(result >> 62))
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_24794F414();
  v6 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1AE890](v7, v5);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = (*(*v8 + 1256))(a2, a3);
      MEMORY[0x24C1AE560]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24794F084();
      }

      ++v7;
      sub_24794F0A4();
    }

    while (v6 != v7);
    return v10;
  }

  return result;
}

uint64_t sub_2478EFACC()
{
  v0 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v1 = [v0 OnDeviceAnalytics];
  swift_unknownObjectRelease();
  v2 = [v1 SpeakerIdSampling];
  swift_unknownObjectRelease();
  v3 = [v2 publisher];

  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F90];
  v14 = nullsub_1;
  v15 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_2478F0B14;
  v13 = &block_descriptor_16;
  v5 = _Block_copy(&v10);
  v14 = sub_2478EFFAC;
  v15 = v4;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_2478F0B14;
  v13 = &block_descriptor_19;
  v6 = _Block_copy(&v10);

  v7 = [v3 sinkWithCompletion:v5 receiveInput:v6];

  _Block_release(v6);
  _Block_release(v5);

  swift_beginAccess();
  v8 = *(v4 + 16);

  return v8;
}

uint64_t sub_2478EFCFC()
{
  v0 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v1 = [v0 OnDeviceAnalytics];
  swift_unknownObjectRelease();
  v2 = [v1 SpeakerIdSampling];
  swift_unknownObjectRelease();
  v3 = [v2 pruner];

  v4 = sub_24794EEF4();
  v7[4] = sub_2478EEA2C;
  v7[5] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2478F0AF0;
  v7[3] = &block_descriptor;
  v5 = _Block_copy(v7);

  [v3 deleteWithPolicy:v4 eventsPassingTest:v5];

  _Block_release(v5);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

void sub_2478EFE9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2478EFACC();
  sub_2478EFCFC();
  sub_2478EEA34(v4, a1, a2);
  if (v4 >> 62)
  {
    v5 = sub_24794F414();

    if (v5 < 0)
    {
      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t sub_2478EFF2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57280, &unk_2479503C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2478EFFF4(void *a1)
{
  v1 = a1;
  v51[1] = *MEMORY[0x277D85DE8];
  v51[0] = 0;
  v2 = [a1 remoteDevicesWithError_];
  v3 = v51[0];
  v4 = sub_2478F0A84();
  v5 = sub_24794F064();
  v6 = v3;

  v44 = v6;
  if (v6)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v7 = sub_24794ED34();
    __swift_project_value_buffer(v7, qword_27EE58DF8);
    v8 = sub_24794ED14();
    v9 = sub_24794F164();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = v5;
      v12 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v44;
      *v12 = v3;
      v13 = v44;
      _os_log_impl(&dword_2478E1000, v8, v9, "#BiomeStreamProcess: get remove device failed with error: %@", v10, 0xCu);
      sub_2478EFF2C(v12);
      v14 = v12;
      v5 = v11;
      MEMORY[0x24C1AF180](v14, -1, -1);
      MEMORY[0x24C1AF180](v10, -1, -1);
    }
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v15 = sub_24794ED34();
  __swift_project_value_buffer(v15, qword_27EE58DF8);

  v16 = sub_24794ED14();
  v17 = sub_24794F174();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v51[0] = v19;
    *v18 = 136315138;
    v20 = MEMORY[0x24C1AE590](v5, v4);
    v22 = sub_247924380(v20, v21, v51);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_2478E1000, v16, v17, "#BiomeStreamProcess: remote devices: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x24C1AF180](v19, -1, -1);
    MEMORY[0x24C1AF180](v18, -1, -1);
  }

  v51[0] = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    v23 = sub_24794F414();
    if (v23)
    {
      goto LABEL_13;
    }

LABEL_25:
    v42 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
    goto LABEL_25;
  }

LABEL_13:
  if (v23 < 1)
  {
    __break(1u);
  }

  v24 = 0;
  v25 = v5 & 0xC000000000000001;
  v45 = v5;
  v46 = v5 & 0xC000000000000001;
  do
  {
    if (v25)
    {
      v26 = MEMORY[0x24C1AE890](v24, v5);
    }

    else
    {
      v26 = *(v5 + 8 * v24 + 32);
    }

    v27 = v26;
    v48 = [v1 prunerForDevice_];
    v28 = v27;
    v29 = sub_24794ED14();
    v30 = sub_24794F154();

    v49 = v28;
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v50 = v47;
      *v31 = 136315138;
      v32 = [v28 description];
      v33 = v23;
      v34 = sub_24794EF04();
      v35 = v1;
      v37 = v36;

      v38 = v34;
      v23 = v33;
      v39 = sub_247924380(v38, v37, &v50);
      v1 = v35;

      *(v31 + 4) = v39;
      v5 = v45;
      _os_log_impl(&dword_2478E1000, v29, v30, "#BiomeStreamProcess: got device pruner for device: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x24C1AF180](v47, -1, -1);
      v40 = v31;
      v25 = v46;
      MEMORY[0x24C1AF180](v40, -1, -1);
    }

    v41 = v48;
    MEMORY[0x24C1AE560]();
    if (*((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24794F084();
      v25 = v46;
    }

    ++v24;
    sub_24794F0A4();
  }

  while (v23 != v24);
  v42 = v51[0];
LABEL_26:

  return v42;
}

uint64_t sub_2478F0540(void *a1)
{
  v1 = [a1 pruner];
  v2 = sub_24794EEF4();
  v5[4] = sub_2478EEA2C;
  v5[5] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2478F0AF0;
  v5[3] = &block_descriptor_40;
  v3 = _Block_copy(v5);

  [v1 deleteWithPolicy:v2 eventsPassingTest:v3];

  _Block_release(v3);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

void sub_2478F0668()
{
  v1 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v2 = [v1 OnDeviceAnalytics];
  swift_unknownObjectRelease();
  v3 = [v2 AttentionAndInvocationSampling];
  swift_unknownObjectRelease();
  sub_2478F0540(v3);
  if (v0)
  {
  }

  else
  {
    v4 = sub_2478EFFF4(v3);
    v5 = v4;
    if (v4 >> 62)
    {
      goto LABEL_15;
    }

    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      while (1)
      {
        v11 = v3;
        if (v6 < 1)
        {
          break;
        }

        v3 = 0;
        while (1)
        {
          v7 = (v5 & 0xC000000000000001) != 0 ? MEMORY[0x24C1AE890](v3, v5) : *(v5 + 8 * v3 + 32);
          v8 = v7;
          v9 = sub_24794EEF4();
          aBlock[4] = sub_2478EEA2C;
          aBlock[5] = 0;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_2478F0AF0;
          aBlock[3] = &block_descriptor_46;
          v10 = _Block_copy(aBlock);

          [v8 deleteWithPolicy:v9 eventsPassingTest:v10];

          _Block_release(v10);
          if (swift_isEscapingClosureAtFileLocation())
          {
            break;
          }

          v3 = v3 + 1;
          if (v6 == v3)
          {

            return;
          }
        }

        __break(1u);
LABEL_15:
        v6 = sub_24794F414();
        if (!v6)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_16:
    }
  }
}

uint64_t sub_2478F08E4()
{
  v0 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v1 = [v0 OnDeviceAnalytics];
  swift_unknownObjectRelease();
  v2 = [v1 SpeakerIdSampling];
  swift_unknownObjectRelease();
  v3 = [v2 pruner];
  v4 = sub_24794EEF4();
  v7[4] = sub_2478EEA2C;
  v7[5] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2478F0AF0;
  v7[3] = &block_descriptor_43;
  v5 = _Block_copy(v7);

  [v3 deleteWithPolicy:v4 eventsPassingTest:v5];

  _Block_release(v5);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2478F0A84()
{
  result = qword_27EE57308;
  if (!qword_27EE57308)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE57308);
  }

  return result;
}

uint64_t sub_2478F0B18(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v4 - 8);
  v209 = &v203 - v5;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v6 = MEMORY[0x28223BE20](v227);
  v225 = &v203 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v238 = &v203 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v203 - v10;
  v12 = sub_24794EC04();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v205 = &v203 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 514;
  v15 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
  v16 = sub_24794EBB4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v208 = v15;
  v207 = v18;
  v206 = v17 + 56;
  v18(v1 + v15, 1, 1, v16);
  v19 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_deviceType);
  *v19 = 0;
  v19[1] = 0;
  v230 = v19;
  v20 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_systemBuild);
  *v20 = 0;
  v20[1] = 0;
  v231 = v20;
  v21 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioInterfaceVendorId);
  *v21 = 0;
  v21[1] = 0;
  v229 = v21;
  v22 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_firstPartyAudioInterfaceProductId);
  *v22 = 0;
  v22[1] = 0;
  v228 = v22;
  v210 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_siriInputLocale;
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_siriInputLocale) = 0;
  v23 = v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource;
  *v23 = 0;
  v211 = v23;
  *(v23 + 4) = 1;
  v24 = v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_motionActivity;
  *v24 = 0;
  v212 = v24;
  *(v24 + 4) = 1;
  v218 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isWakeFromSleep;
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isWakeFromSleep) = 2;
  v219 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isMediaPlaying;
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isMediaPlaying) = 2;
  v220 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isDeviceHandHeld;
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isDeviceHandHeld) = 2;
  v25 = v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioCodec;
  *v25 = 0;
  v213 = v25;
  *(v25 + 4) = 1;
  v26 = v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioSource;
  *v26 = 0;
  v214 = v26;
  *(v26 + 4) = 1;
  v27 = v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_asrTask;
  *v27 = 0;
  v215 = v27;
  *(v27 + 4) = 1;
  v28 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioSkippedNumSamples);
  *v28 = 0;
  v236 = v28;
  v28[8] = 1;
  v29 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best);
  *v29 = 0;
  v29[1] = 0;
  v233 = v29;
  v30 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_subDomain);
  *v30 = 0;
  v30[1] = 0;
  v232 = v30;
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isPersonalRequest) = 2;
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isPersonalizedRequest) = 2;
  v31 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_responseId);
  *v31 = 0;
  v31[1] = 0;
  v32 = v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_orchCancelledReason;
  *v32 = 0;
  v216 = v32;
  *(v32 + 4) = 1;
  v33 = *(v13 + 56);
  v239 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioId;
  v33(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioId, 1, 1, v12);
  v34 = v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_triggerPhrase;
  *v34 = 0;
  v217 = v34;
  *(v34 + 4) = 1;
  v35 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_enrollmentId);
  *v35 = 0;
  v35[1] = 0;
  v204 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_location;
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_location) = 0;
  v234 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_sampleId;
  v33(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_sampleId, 1, 1, v12);
  v226 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId;
  v33(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId, 1, 1, v12);
  v36 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_uniqueSpeakerIdentifier);
  *v36 = 0;
  v36[1] = 0;
  v221 = v36;
  v235 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId;
  v33(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId, 1, 1, v12);
  v37 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_userSamplingId);
  *v37 = 0;
  v37[1] = 0;
  v222 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isMultiUserRequest;
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isMultiUserRequest) = 2;
  v38 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_clockSessionId;
  v237 = v12;
  v240 = v13 + 56;
  v33(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_clockSessionId, 1, 1, v12);
  v39 = v33;
  v40 = v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_userIdentifyClassification;
  *v40 = 0;
  v223 = v40;
  *(v40 + 4) = 1;
  v224 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_userOptIn;
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_userOptIn) = 0;
  strcpy(v241, "logic_clock_id");
  HIBYTE(v241[1]) = -18;
  sub_24794F2E4();
  if (*(a1 + 16) && (v41 = sub_24792BEB4(&v243), (v42 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v41, &v244);
    sub_2478F6598(&v243);
    if (swift_dynamicCast())
    {
      sub_24794EBC4();

      v43 = v237;
      if ((*(v13 + 48))(v11, 1, v237) == 1)
      {
        sub_2478E9620(v11, &qword_27EE57278, &unk_247950590);
      }

      else
      {
        v147 = *(v13 + 32);
        v148 = v205;
        v147(v205, v11, v43);
        v149 = v238;
        v147(v238, v148, v43);
        v39(v149, 0, 1, v43);
        swift_beginAccess();
        sub_2478F6648(v149, v1 + v38, &qword_27EE57278, &unk_247950590);
        swift_endAccess();
      }
    }
  }

  else
  {
    sub_2478F6598(&v243);
  }

  v241[0] = 0xD000000000000017;
  v241[1] = 0x8000000247952D50;
  sub_24794F2E4();
  if (*(a1 + 16) && (v44 = sub_24792BEB4(&v243), (v45 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v44, &v244);
    sub_2478F6598(&v243);
    if (swift_dynamicCast())
    {
      v46 = v209;
      sub_24794EB64();
      v207(v46, 0, 1, v16);
      v47 = v208;
      swift_beginAccess();
      sub_2478F6648(v46, v2 + v47, &qword_27EE572D0, &unk_2479504E0);
      swift_endAccess();
    }
  }

  else
  {
    sub_2478F6598(&v243);
  }

  strcpy(v241, "sat_triggered");
  HIWORD(v241[1]) = -4864;
  sub_24794F2E4();
  if (*(a1 + 16) && (v48 = sub_24792BEB4(&v243), (v49 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v48, &v244);
    sub_2478F6598(&v243);
    if (swift_dynamicCast())
    {
      *(v2 + 17) = v241[0];
      goto LABEL_22;
    }
  }

  else
  {
    sub_2478F6598(&v243);
  }

  strcpy(v241, "sat_triggered");
  HIWORD(v241[1]) = -4864;
  sub_24794F2E4();
  if (*(a1 + 16))
  {
    v50 = sub_24792BEB4(&v243);
    if (v51)
    {
      sub_2478F65EC(*(a1 + 56) + 32 * v50, &v244);
      sub_2478F6598(&v243);
      v52 = swift_dynamicCast();
      v53 = v238;
      if (v52)
      {
        *(v2 + 17) = v241[0] == 1;
      }

      goto LABEL_23;
    }
  }

  sub_2478F6598(&v243);
LABEL_22:
  v53 = v238;
LABEL_23:
  strcpy(v241, "request_id");
  BYTE3(v241[1]) = 0;
  HIDWORD(v241[1]) = -369098752;
  sub_24794F2E4();
  if (*(a1 + 16) && (v54 = sub_24792BEB4(&v243), (v55 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v54, &v244);
    sub_2478F6598(&v243);
    if (swift_dynamicCast())
    {
      sub_24794EBC4();

      v56 = v226;
      swift_beginAccess();
      sub_2478F6648(v53, v2 + v56, &qword_27EE57278, &unk_247950590);
      swift_endAccess();
    }
  }

  else
  {
    sub_2478F6598(&v243);
  }

  v241[0] = 0xD000000000000011;
  v241[1] = 0x8000000247952D70;
  sub_24794F2E4();
  if (*(a1 + 16) && (v57 = sub_24792BEB4(&v243), (v58 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v57, &v244);
    sub_2478F6598(&v243);
    if (swift_dynamicCast())
    {
      v59 = _sSo17SISchemaISOLocaleC23CoreSpeechDataAnalyticsE10fromStringyABSgSSFZ_0(v241[0], v241[1]);

      v60 = *(v2 + v210);
      *(v2 + v210) = v59;
    }
  }

  else
  {
    sub_2478F6598(&v243);
  }

  v241[0] = 0xD000000000000011;
  v241[1] = 0x8000000247952D90;
  sub_24794F2E4();
  if (*(a1 + 16) && (v61 = sub_24792BEB4(&v243), (v62 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v61, &v244);
    sub_2478F6598(&v243);
    if (swift_dynamicCast())
    {
      v63 = sub_24794EEF4();

      v64 = v63;
      if ([v64 isEqualToString:@"INVOCATIONSOURCE_UNKNOWN_INVOCATION_SOURCE"])
      {
        v65 = 0;
      }

      else if ([v64 isEqualToString:@"INVOCATIONSOURCE_HOME_BUTTON"])
      {
        v65 = 1;
      }

      else if ([v64 isEqualToString:@"INVOCATIONSOURCE_LOCK_BUTTON"])
      {
        v65 = 2;
      }

      else if ([v64 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_BUTTON"])
      {
        v65 = 3;
      }

      else if ([v64 isEqualToString:@"INVOCATIONSOURCE_STEERING_WHEEL_BUTTON"])
      {
        v65 = 4;
      }

      else if ([v64 isEqualToString:@"INVOCATIONSOURCE_TOUCHBAR_BUTTON"])
      {
        v65 = 5;
      }

      else if ([v64 isEqualToString:@"INVOCATIONSOURCE_KEYBOARD_SHORTCUT"])
      {
        v65 = 6;
      }

      else if ([v64 isEqualToString:@"INVOCATIONSOURCE_APPLICATION_ICON"])
      {
        v65 = 7;
      }

      else if ([v64 isEqualToString:@"INVOCATIONSOURCE_WIRED_MICROPHONE_BUTTON"])
      {
        v65 = 8;
      }

      else if ([v64 isEqualToString:@"INVOCATIONSOURCE_REMOTE_MICROPHONE_BUTTON"])
      {
        v65 = 9;
      }

      else if ([v64 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_BANNER"])
      {
        v65 = 10;
      }

      else
      {
        if ([v64 isEqualToString:@"INVOCATIONSOURCE_CARD_SECTION"])
        {
          v65 = 11;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_TAP_TO_EDIT"])
        {
          v65 = 12;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_STRUCTURED_DICTATION"])
        {
          v65 = 13;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SOFT_BUTTON"])
        {
          v65 = 14;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_AUTO_PROMPT"])
        {
          v65 = 15;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_RAISE_TO_SPEAK"])
        {
          v65 = 16;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_VOICE_TRIGGER"])
        {
          v65 = 17;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_HARDWARE_BUTTON"])
        {
          v65 = 18;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_HANDOFF"])
        {
          v65 = 19;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_ELEMENT"])
        {
          v65 = 20;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_VOICE_TRIGGER"])
        {
          v65 = 21;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_MENU_BAR"])
        {
          v65 = 22;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DOCK_ICON"])
        {
          v65 = 23;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_HOME_BUTTON"])
        {
          v65 = 24;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_VOICETRIGGER"])
        {
          v65 = 25;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_GATEKEEPER"])
        {
          v65 = 26;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_SIRI_BUTTON"])
        {
          v65 = 27;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_IN_APP_SIRI_AFFORDANCE"])
        {
          v65 = 28;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_BREADCRUMB"])
        {
          v65 = 29;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_GUIDE_BUTTON"])
        {
          v65 = 30;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_VERTICAL_SWIPE"])
        {
          v65 = 31;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_SUGGESTION"])
        {
          v65 = 32;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_ASK_SIRI"])
        {
          v65 = 33;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SIRI_COMPLICATION"])
        {
          v65 = 34;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_TV_REMOTE_BUTTON"])
        {
          v65 = 35;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_NONAPPLE_REMOTE"])
        {
          v65 = 36;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_REMOTE_APP"])
        {
          v65 = 37;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_REMOTE_UI"])
        {
          v65 = 38;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON"])
        {
          v65 = 39;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON"])
        {
          v65 = 40;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SPEECH_API"])
        {
          v65 = 41;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TV_REMOTE"])
        {
          v65 = 42;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_SHORTCUT_ENROLLMENT"])
        {
          v65 = 43;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_ENROLLMENT"])
        {
          v65 = 44;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_PROXIMITY_ENROLLMENT"])
        {
          v65 = 45;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SIRI_SECONDARY_DEVICE"])
        {
          v65 = 46;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE"])
        {
          v65 = 47;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SIRI_TRIGGERLESS"])
        {
          v65 = 48;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SIRI_NOTIFICATION"])
        {
          v65 = 49;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_TEST_AUTOMATION"])
        {
          v65 = 50;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_WAVEFORM_GLYPH_BUTTON"])
        {
          v65 = 51;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SIRI_AUTO_PROMPT"])
        {
          v65 = 52;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GLOBE_BUTTON"])
        {
          v65 = 53;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_LONG_PRESS"])
        {
          v65 = 54;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_ACCESSIBILITY_BACKTAP"])
        {
          v65 = 55;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_VOICECOMMAND_BUTTON"])
        {
          v65 = 56;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_VOICECOMMAND_BUTTON"])
        {
          v65 = 57;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_APPLETV_REMOTE_DEVICE"])
        {
          v65 = 58;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_MESSAGE_SEND_BUTTON"])
        {
          v65 = 59;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_WITH_INPUT_SWITCHER"])
        {
          v65 = 60;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON_FIRST_RESPONDER"])
        {
          v65 = 61;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR"])
        {
          v65 = 62;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR_FIRST_RESPONDER"])
        {
          v65 = 63;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SEARCH_BAR_VISIBLE"])
        {
          v65 = 64;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SEARCH_MIC_VISIBLE"])
        {
          v65 = 65;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SAFARI_MIC_VISIBLE"])
        {
          v65 = 66;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SAFARI_MIC_VISIBLE"])
        {
          v65 = 67;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_FROM_QUICKBOARD"])
        {
          v65 = 68;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON"])
        {
          v65 = 69;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MIC_ICON_UCBBAR"])
        {
          v65 = 70;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_GLOBE_BUTTON_SHORTCUT"])
        {
          v65 = 71;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_STANDARD_SHORTCUT"])
        {
          v65 = 72;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_CALL"])
        {
          v65 = 73;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_NOTIFICATION"])
        {
          v65 = 74;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_AIRPODS_MAX_BUTTON_PRESS"])
        {
          v65 = 75;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_AUTO_START"])
        {
          v65 = 76;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_MIC_BUTTON_PRESSED"])
        {
          v65 = 77;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_LANGUAGE_PICKER_ITEM_SELECTED"])
        {
          v65 = 78;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_FLEXIBLE_FOLLOW_UPS"])
        {
          v65 = 79;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_JS_VOICE_TRIGGER"])
        {
          v65 = 80;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON_WHILE_KEYBOARD_NOT_VISIBLE"])
        {
          v65 = 81;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_POP_UP_UI_LANGUAGE_SWITCHER_ICON"])
        {
          v65 = 82;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_LONG_PRESS_TEXT_INPUT_FIELD"])
        {
          v65 = 83;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_DROP_IN"])
        {
          v65 = 84;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI"])
        {
          v65 = 85;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_PINCH"])
        {
          v65 = 87;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GAZE"])
        {
          v65 = 88;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_EXECUTE_ON_REMOTE_REQUEST"])
        {
          v65 = 89;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_WATCH_GESTURE_PRIMARY"])
        {
          v65 = 90;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI"])
        {
          v65 = 91;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_HEAD_GESTURE"])
        {
          v65 = 92;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SOFT_KEYBOARD_BUTTON"])
        {
          v65 = 93;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_WRITING_TOOLS"])
        {
          v65 = 94;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_GENERATIVE_FIELD"])
        {
          v65 = 95;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SUGGESTION"])
        {
          v65 = 96;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI_CONTROL_CENTER"])
        {
          v65 = 97;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE"])
        {
          v65 = 98;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE_QUICK_TYPE"])
        {
          v65 = 99;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_KEYBOARD_SHORTCUT"])
        {
          v65 = 100;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_MENU_BAR"])
        {
          v65 = 101;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TAP"])
        {
          v65 = 102;
        }

        else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TRAILING_MIC_BUTTON"])
        {
          v65 = 103;
        }

        else
        {
          v65 = 0;
        }

        v53 = v238;
      }

      v202 = v211;
      *v211 = v65;
      *(v202 + 4) = 0;
    }
  }

  else
  {
    sub_2478F6598(&v243);
  }

  v241[0] = 0x615F6E6F69746F6DLL;
  v241[1] = 0xEF79746976697463;
  sub_24794F2E4();
  if (*(a1 + 16) && (v66 = sub_24792BEB4(&v243), (v67 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v66, &v244);
    sub_2478F6598(&v243);
    if (swift_dynamicCast())
    {
      v68 = sub_24794EEF4();

      v69 = v68;
      if ([v69 isEqualToString:@"ORCHMOTIONACTIVITY_UNKNOWN"])
      {
        v70 = 0;
      }

      else if ([v69 isEqualToString:@"ORCHMOTIONACTIVITY_MOVING"])
      {
        v70 = 1;
      }

      else if ([v69 isEqualToString:@"ORCHMOTIONACTIVITY_STATIONARY"])
      {
        v70 = 2;
      }

      else if ([v69 isEqualToString:@"ORCHMOTIONACTIVITY_IN_VEHICLE_MOVING"])
      {
        v70 = 3;
      }

      else if ([v69 isEqualToString:@"ORCHMOTIONACTIVITY_IN_VEHICLE_STATIC"])
      {
        v70 = 4;
      }

      else if ([v69 isEqualToString:@"ORCHMOTIONACTIVITY_IN_VEHICLE_STATIONARY"])
      {
        v70 = 5;
      }

      else
      {
        v70 = 0;
      }

      v198 = v212;
      *v212 = v70;
      *(v198 + 4) = 0;
    }
  }

  else
  {
    sub_2478F6598(&v243);
  }

  strcpy(v241, "audio_codec");
  HIDWORD(v241[1]) = -352321536;
  sub_24794F2E4();
  if (*(a1 + 16) && (v71 = sub_24792BEB4(&v243), (v72 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v71, &v244);
    sub_2478F6598(&v243);
    if (swift_dynamicCast())
    {
      v73 = sub_24794EEF4();

      v74 = v73;
      if ([v74 isEqualToString:@"MHASRAUDIOCODEC_UNKNOWN"])
      {
        v75 = 0;
      }

      else if ([v74 isEqualToString:@"MHASRAUDIOCODEC_PCM_MONO_16BIT_8000HZ_VALUE"])
      {
        v75 = 1;
      }

      else if ([v74 isEqualToString:@"MHASRAUDIOCODEC_PCM_MONO_16BIT_11025HZ_VALUE"])
      {
        v75 = 2;
      }

      else if ([v74 isEqualToString:@"MHASRAUDIOCODEC_PCM_MONO_16BIT_16000HZ_VALUE"])
      {
        v75 = 3;
      }

      else if ([v74 isEqualToString:@"MHASRAUDIOCODEC_PCM_MONO_16BIT_22050HZ_VALUE"])
      {
        v75 = 4;
      }

      else if ([v74 isEqualToString:@"MHASRAUDIOCODEC_PCM_MONO_16BIT_32000HZ_VALUE"])
      {
        v75 = 5;
      }

      else if ([v74 isEqualToString:@"MHASRAUDIOCODEC_SPEEX_NB_QUALITY7_VALUE"])
      {
        v75 = 6;
      }

      else if ([v74 isEqualToString:@"MHASRAUDIOCODEC_SPEEX_WB_QUALITY8_VALUE"])
      {
        v75 = 7;
      }

      else if ([v74 isEqualToString:@"MHASRAUDIOCODEC_ALAC_MONO_8000HZ_VALUE"])
      {
        v75 = 8;
      }

      else if ([v74 isEqualToString:@"MHASRAUDIOCODEC_ALAC_MONO_16000HZ_VALUE"])
      {
        v75 = 9;
      }

      else if ([v74 isEqualToString:@"MHASRAUDIOCODEC_OPUS_MONO_8000HZ_VALUE"])
      {
        v75 = 10;
      }

      else if ([v74 isEqualToString:@"MHASRAUDIOCODEC_OPUS_MONO_16000HZ_VALUE"])
      {
        v75 = 11;
      }

      else
      {
        v75 = 0;
      }

      v201 = v213;
      *v213 = v75;
      *(v201 + 4) = 0;
    }
  }

  else
  {
    sub_2478F6598(&v243);
  }

  strcpy(v241, "audio_source");
  BYTE5(v241[1]) = 0;
  HIWORD(v241[1]) = -5120;
  sub_24794F2E4();
  if (*(a1 + 16) && (v76 = sub_24792BEB4(&v243), (v77 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v76, &v244);
    sub_2478F6598(&v243);
    if (swift_dynamicCast())
    {
      v78 = sub_24794EEF4();

      v79 = v78;
      if ([v79 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_UNKNOWN"])
      {
        v80 = 0;
      }

      else if ([v79 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_LINEIN"])
      {
        v80 = 1;
      }

      else if ([v79 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_BUILTIN_MIC"])
      {
        v80 = 2;
      }

      else if ([v79 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_WIREDHEADSET_MIC"])
      {
        v80 = 3;
      }

      else if ([v79 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_BLUETOOTH_HANDSFREE_DEVICE"])
      {
        v80 = 4;
      }

      else if ([v79 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_USB_AUDIO"])
      {
        v80 = 5;
      }

      else if ([v79 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_CAR_AUDIO"])
      {
        v80 = 6;
      }

      else if ([v79 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_BLUETOOTH_DOAP_DEVICE"])
      {
        v80 = 7;
      }

      else if ([v79 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_ENHANCED_CARPLAY_DEVICE"])
      {
        v80 = 8;
      }

      else
      {
        v80 = 0;
      }

      v199 = v214;
      *v214 = v80;
      *(v199 + 4) = 0;
    }
  }

  else
  {
    sub_2478F6598(&v243);
  }

  strcpy(v241, "asr_task");
  BYTE1(v241[1]) = 0;
  WORD1(v241[1]) = 0;
  HIDWORD(v241[1]) = -402653184;
  sub_24794F2E4();
  if (*(a1 + 16) && (v81 = sub_24792BEB4(&v243), (v82 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v81, &v244);
    sub_2478F6598(&v243);
    if (swift_dynamicCast())
    {
      v83 = sub_24794EEF4();

      v84 = v83;
      if ([v84 isEqualToString:@"ASRDATAPACKTASK_UNKNOWN"])
      {
        v85 = 0;
      }

      else if ([v84 isEqualToString:@"ASRDATAPACKTASK_SEARCH_OR_MESSAGING"])
      {
        v85 = 1;
      }

      else if ([v84 isEqualToString:@"ASRDATAPACKTASK_DICTATION"])
      {
        v85 = 2;
      }

      else if ([v84 isEqualToString:@"ASRDATAPACKTASK_WEB_SEARCH"])
      {
        v85 = 3;
      }

      else if ([v84 isEqualToString:@"ASRDATAPACKTASK_TSHOT"])
      {
        v85 = 4;
      }

      else if ([v84 isEqualToString:@"ASRDATAPACKTASK_SIRI_DICTATION"])
      {
        v85 = 5;
      }

      else if ([v84 isEqualToString:@"ASRDATAPACKTASK_DICTATION_WITH_VOICE_COMMAND"])
      {
        v85 = 6;
      }

      else if ([v84 isEqualToString:@"ASRDATAPACKTASK_BETO"])
      {
        v85 = 7;
      }

      else if ([v84 isEqualToString:@"ASRDATAPACKTASK_BETO_DICTATION"])
      {
        v85 = 8;
      }

      else
      {
        v85 = 0;
      }

      v200 = v215;
      *v215 = v85;
      *(v200 + 4) = 0;
    }
  }

  else
  {
    sub_2478F6598(&v243);
  }

  v241[0] = 0xD000000000000015;
  v241[1] = 0x8000000247952DB0;
  sub_24794F2E4();
  if (*(a1 + 16) && (v86 = sub_24792BEB4(&v243), (v87 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v86, &v244);
    sub_2478F6598(&v243);
    if (swift_dynamicCast())
    {
      v88 = sub_24794EEF4();

      v89 = v88;
      if ([v89 isEqualToString:@"ORCHREQUESTCANCELLATIONREASON_UNKNOWN"])
      {
        v90 = 0;
      }

      else if ([v89 isEqualToString:@"ORCHREQUESTCANCELLATIONREASON_MITIGATED"])
      {
        v90 = 1;
      }

      else if ([v89 isEqualToString:@"ORCHREQUESTCANCELLATIONREASON_CANCEL_COMMAND"])
      {
        v90 = 2;
      }

      else
      {
        v90 = 0;
      }

      v150 = v216;
      *v216 = v90;
      *(v150 + 4) = 0;
    }
  }

  else
  {
    sub_2478F6598(&v243);
  }

  strcpy(v241, "trigger_phrase");
  HIBYTE(v241[1]) = -18;
  sub_24794F2E4();
  if (*(a1 + 16) && (v91 = sub_24792BEB4(&v243), (v92 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v91, &v244);
    sub_2478F6598(&v243);
    if (swift_dynamicCast())
    {
      v93 = sub_2479440D4(v241[0], v241[1]);

      v94 = v217;
      *v217 = v93;
      *(v94 + 4) = 0;
    }
  }

  else
  {
    sub_2478F6598(&v243);
  }

  v241[0] = 0xD000000000000019;
  v241[1] = 0x8000000247952DD0;
  sub_24794F2E4();
  if (*(a1 + 16) && (v95 = sub_24792BEB4(&v243), (v96 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v95, &v244);
    sub_2478F6598(&v243);
    if (swift_dynamicCast())
    {
      v97 = v236;
      *v236 = v241[0];
      *(v97 + 8) = 0;
    }
  }

  else
  {
    sub_2478F6598(&v243);
  }

  v236 = [objc_allocWithZone(MEMORY[0x277D5A950]) init];
  strcpy(v241, "latitude");
  BYTE1(v241[1]) = 0;
  WORD1(v241[1]) = 0;
  HIDWORD(v241[1]) = -402653184;
  sub_24794F2E4();
  if (!*(a1 + 16) || (v98 = sub_24792BEB4(&v243), (v99 & 1) == 0))
  {
    sub_2478F6598(&v243);
LABEL_89:
    strcpy(v241, "latitude");
    BYTE1(v241[1]) = 0;
    WORD1(v241[1]) = 0;
    HIDWORD(v241[1]) = -402653184;
    sub_24794F2E4();
    if (*(a1 + 16))
    {
      v110 = sub_24792BEB4(&v243);
      if (v111)
      {
        sub_2478F65EC(*(a1 + 56) + 32 * v110, &v244);
        sub_2478F6598(&v243);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_99;
        }

        v112 = *v241;
        strcpy(v241, "longitude");
        WORD1(v241[1]) = 0;
        HIDWORD(v241[1]) = -385875968;
        sub_24794F2E4();
        if (*(a1 + 16))
        {
          v113 = sub_24792BEB4(&v243);
          if (v114)
          {
            sub_2478F65EC(*(a1 + 56) + 32 * v113, &v244);
            sub_2478F6598(&v243);
            if (swift_dynamicCast())
            {
              v116 = v236;
              if (v236)
              {
                v117 = *v241;
                *&v115 = v112;
                [v236 setLatitude_];
                *&v118 = v117;
                [v116 setLongitude_];
              }

              v119 = *(v2 + v204);
              *(v2 + v204) = v116;
              v120 = v116;
LABEL_103:

              goto LABEL_104;
            }

LABEL_99:
            if (qword_27EE571C0 != -1)
            {
              swift_once();
            }

            v121 = sub_24794ED34();
            __swift_project_value_buffer(v121, qword_27EE58DF8);

            v119 = sub_24794ED14();
            v122 = sub_24794F154();

            if (os_log_type_enabled(v119, v122))
            {
              v123 = swift_slowAlloc();
              v124 = swift_slowAlloc();
              v243 = v124;
              *v123 = 136315138;
              v125 = v226;
              swift_beginAccess();
              sub_2478E9680(v2 + v125, v53, &qword_27EE57278, &unk_247950590);
              v126 = sub_24794EF14();
              v128 = v39;
              v129 = sub_247924380(v126, v127, &v243);

              *(v123 + 4) = v129;
              v39 = v128;
              _os_log_impl(&dword_2478E1000, v119, v122, "#SiriRequestRecord: Unable to fetch location for the current request: %s", v123, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v124);
              MEMORY[0x24C1AF180](v124, -1, -1);
              MEMORY[0x24C1AF180](v123, -1, -1);
            }

            goto LABEL_103;
          }
        }
      }
    }

    sub_2478F6598(&v243);
    goto LABEL_99;
  }

  sub_2478F65EC(*(a1 + 56) + 32 * v98, &v244);
  sub_2478F6598(&v243);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_88;
  }

  v100 = v241[0];
  strcpy(v241, "longitude");
  WORD1(v241[1]) = 0;
  HIDWORD(v241[1]) = -385875968;
  sub_24794F2E4();
  if (!*(a1 + 16) || (v101 = sub_24792BEB4(&v243), (v102 & 1) == 0))
  {
    sub_2478F6598(&v243);
    goto LABEL_88;
  }

  sub_2478F65EC(*(a1 + 56) + 32 * v101, &v244);
  sub_2478F6598(&v243);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_88:
    v53 = v238;
    goto LABEL_89;
  }

  v103 = v241[0];
  v104 = v236;
  v105 = v236;
  LODWORD(v106) = v100;
  [v105 setLatitude_];
  LODWORD(v107) = v103;
  [v105 setLongitude_];

  v108 = *(v2 + v204);
  *(v2 + v204) = v104;
  v109 = v105;

  v53 = v238;
LABEL_104:
  v242[0] = 0xD000000000000012;
  v242[1] = 0x8000000247952DF0;
  sub_24794F2E4();
  if (*(a1 + 16) && (v130 = sub_24792BEB4(&v243), (v131 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v130, &v244);
    sub_2478F6598(&v243);
    if (swift_dynamicCast())
    {
      *(v2 + v218) = v242[0];
    }
  }

  else
  {
    sub_2478F6598(&v243);
  }

  v242[0] = 0xD000000000000010;
  v242[1] = 0x8000000247952E10;
  sub_24794F2E4();
  if (*(a1 + 16) && (v132 = sub_24792BEB4(&v243), (v133 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v132, &v244);
    sub_2478F6598(&v243);
    if (swift_dynamicCast())
    {
      *(v2 + v219) = v242[0];
    }
  }

  else
  {
    sub_2478F6598(&v243);
  }

  v242[0] = 0xD000000000000012;
  v242[1] = 0x8000000247952E30;
  sub_24794F2E4();
  if (*(a1 + 16) && (v134 = sub_24792BEB4(&v243), (v135 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v134, &v244);
    sub_2478F6598(&v243);
    if (swift_dynamicCast())
    {
      *(v2 + v220) = v242[0];
    }
  }

  else
  {
    sub_2478F6598(&v243);
  }

  v242[0] = 0xD000000000000011;
  v242[1] = 0x8000000247952E50;
  sub_24794F2E4();
  if (*(a1 + 16) && (v136 = sub_24792BEB4(&v243), (v137 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v136, &v244);
  }

  else
  {
    v244 = 0u;
    v245 = 0u;
  }

  sub_2478F6598(&v243);
  if (*(&v245 + 1))
  {
    if (swift_dynamicCast())
    {
      v138 = v242[1];
      v139 = v221;
      *v221 = v242[0];
      v139[1] = v138;
    }
  }

  else
  {
    sub_2478E9620(&v244, &qword_27EE57348, &unk_2479521B0);
  }

  strcpy(v242, "is_multi_user");
  HIWORD(v242[1]) = -4864;
  sub_24794F2E4();
  if (*(a1 + 16) && (v140 = sub_24792BEB4(&v243), (v141 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v140, &v244);
  }

  else
  {
    v244 = 0u;
    v245 = 0u;
  }

  sub_2478F6598(&v243);
  if (*(&v245 + 1))
  {
    if (swift_dynamicCast())
    {
      *(v2 + v222) = v242[0];
    }
  }

  else
  {
    sub_2478E9620(&v244, &qword_27EE57348, &unk_2479521B0);
  }

  v242[0] = 0xD000000000000018;
  v242[1] = 0x8000000247952E70;
  sub_24794F2E4();
  if (*(a1 + 16) && (v142 = sub_24792BEB4(&v243), (v143 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v142, &v244);
  }

  else
  {
    v244 = 0u;
    v245 = 0u;
  }

  sub_2478F6598(&v243);
  if (*(&v245 + 1))
  {
    if (swift_dynamicCast())
    {
      v144 = sub_24794EEF4();

      v145 = v144;
      if ([v145 isEqualToString:@"ORCHUSERIDENTITYCLASSIFICATION_UNKNOWN"])
      {
        v146 = 0;
      }

      else if ([v145 isEqualToString:@"ORCHUSERIDENTITYCLASSIFICATION_CONFIDENT"])
      {
        v146 = 1;
      }

      else if ([v145 isEqualToString:@"ORCHUSERIDENTITYCLASSIFICATION_KNOWN"])
      {
        v146 = 2;
      }

      else if ([v145 isEqualToString:@"ORCHUSERIDENTITYCLASSIFICATION_UNSURE_1"])
      {
        v146 = 3;
      }

      else if ([v145 isEqualToString:@"ORCHUSERIDENTITYCLASSIFICATION_UNSURE_N"])
      {
        v146 = 4;
      }

      else if ([v145 isEqualToString:@"ORCHUSERIDENTITYCLASSIFICATION_UNKNOWN_USER"])
      {
        v146 = 6;
      }

      else
      {
        v146 = 0;
      }

      v151 = v223;
      *v223 = v146;
      *(v151 + 4) = 0;
    }
  }

  else
  {
    sub_2478E9620(&v244, &qword_27EE57348, &unk_2479521B0);
  }

  v242[0] = 0xD000000000000019;
  v242[1] = 0x8000000247952E90;
  sub_24794F2E4();
  sub_247900904(&v243, a1, &v244);
  sub_2478F6598(&v243);
  if (*(&v245 + 1))
  {
    if (swift_dynamicCast())
    {
      if (v242[0] == 0x4E495F444554504FLL && v242[1] == 0xE800000000000000)
      {

        v152 = 1;
      }

      else
      {
        v152 = sub_24794F4E4();
      }

      *(v2 + v224) = v152 & 1;
    }
  }

  else
  {
    sub_2478E9620(&v244, &qword_27EE57348, &unk_2479521B0);
  }

  *&v244 = 0xD00000000000001ALL;
  *(&v244 + 1) = 0x8000000247952EB0;
  sub_24794F2E4();
  sub_247900904(&v243, a1, &v244);
  sub_2478F6598(&v243);
  if (*(&v245 + 1))
  {
    v153 = swift_dynamicCast();
    v154 = v242[0];
    v155 = v242[1];
    if (!v153)
    {
      v154 = 0;
      v155 = 0;
    }
  }

  else
  {
    sub_2478E9620(&v244, &qword_27EE57348, &unk_2479521B0);
    v154 = 0;
    v155 = 0;
  }

  v156 = v228;
  *v228 = v154;
  v156[1] = v155;

  *&v244 = 0xD000000000000019;
  *(&v244 + 1) = 0x8000000247952ED0;
  sub_24794F2E4();
  sub_247900904(&v243, a1, &v244);
  sub_2478F6598(&v243);
  if (*(&v245 + 1))
  {
    v157 = swift_dynamicCast();
    v158 = v242[0];
    v159 = v242[1];
    if (!v157)
    {
      v158 = 0;
      v159 = 0;
    }
  }

  else
  {
    sub_2478E9620(&v244, &qword_27EE57348, &unk_2479521B0);
    v158 = 0;
    v159 = 0;
  }

  v160 = v229;
  *v229 = v158;
  v160[1] = v159;

  *&v244 = 0x745F656369766564;
  *(&v244 + 1) = 0xEB00000000657079;
  sub_24794F2E4();
  sub_247900904(&v243, a1, &v244);
  sub_2478F6598(&v243);
  if (*(&v245 + 1))
  {
    v161 = swift_dynamicCast();
    v162 = v242[0];
    v163 = v242[1];
    if (!v161)
    {
      v162 = 0;
      v163 = 0;
    }
  }

  else
  {
    sub_2478E9620(&v244, &qword_27EE57348, &unk_2479521B0);
    v162 = 0;
    v163 = 0;
  }

  v164 = v230;
  *v230 = v162;
  v164[1] = v163;

  strcpy(&v244, "system_build");
  BYTE13(v244) = 0;
  HIWORD(v244) = -5120;
  sub_24794F2E4();
  sub_247900904(&v243, a1, &v244);
  sub_2478F6598(&v243);
  if (*(&v245 + 1))
  {
    v165 = swift_dynamicCast();
    v166 = v242[0];
    v167 = v242[1];
    if (!v165)
    {
      v166 = 0;
      v167 = 0;
    }
  }

  else
  {
    sub_2478E9620(&v244, &qword_27EE57348, &unk_2479521B0);
    v166 = 0;
    v167 = 0;
  }

  v168 = v231;
  *v231 = v166;
  v168[1] = v167;

  *&v244 = 0x616D6F645F627573;
  *(&v244 + 1) = 0xEA00000000006E69;
  sub_24794F2E4();
  sub_247900904(&v243, a1, &v244);
  sub_2478F6598(&v243);
  if (*(&v245 + 1))
  {
    v169 = swift_dynamicCast();
    v170 = v242[0];
    v171 = v242[1];
    if (!v169)
    {
      v170 = 0;
      v171 = 0;
    }
  }

  else
  {
    sub_2478E9620(&v244, &qword_27EE57348, &unk_2479521B0);
    v170 = 0;
    v171 = 0;
  }

  v172 = v232;
  *v232 = v170;
  v172[1] = v171;

  strcpy(&v244, "post_itn_1best");
  HIBYTE(v244) = -18;
  sub_24794F2E4();
  sub_247900904(&v243, a1, &v244);
  sub_2478F6598(&v243);
  if (*(&v245 + 1))
  {
    v173 = swift_dynamicCast();
    v174 = v242[0];
    v175 = v242[1];
    if (!v173)
    {
      v174 = 0;
      v175 = 0;
    }
  }

  else
  {
    sub_2478E9620(&v244, &qword_27EE57348, &unk_2479521B0);
    v174 = 0;
    v175 = 0;
  }

  v176 = v233;
  *v233 = v174;
  v176[1] = v175;

  *(v2 + 16) = 0;
  v242[0] = 0xD000000000000014;
  v242[1] = 0x8000000247952EF0;
  sub_24794F2E4();
  sub_247900904(&v243, a1, &v244);
  sub_2478F6598(&v243);
  if (!*(&v245 + 1))
  {

    sub_2478E9620(&v244, &qword_27EE57348, &unk_2479521B0);
LABEL_241:
    sub_24794EBF4();
    v178 = v237;
    v39(v53, 0, 1, v237);
    v181 = v239;
    swift_beginAccess();
    v182 = v2 + v181;
    v183 = v53;
    goto LABEL_244;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_241;
  }

  *(v2 + 16) = v242[0];
  v242[0] = 0xD000000000000016;
  v242[1] = 0x8000000247952F10;
  sub_24794F2E4();
  sub_247900904(&v243, a1, &v244);

  sub_2478F6598(&v243);
  if (*(&v245 + 1))
  {
    v177 = v225;
    v178 = v237;
    v179 = swift_dynamicCast() ^ 1;
    v180 = v177;
  }

  else
  {
    sub_2478E9620(&v244, &qword_27EE57348, &unk_2479521B0);
    v177 = v225;
    v180 = v225;
    v179 = 1;
    v178 = v237;
  }

  v39(v180, v179, 1, v178);
  v184 = v239;
  swift_beginAccess();
  v182 = v2 + v184;
  v183 = v177;
LABEL_244:
  sub_2478F6648(v183, v182, &qword_27EE57278, &unk_247950590);
  swift_endAccess();
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v185 = sub_24794ED34();
  __swift_project_value_buffer(v185, qword_27EE58DF8);

  v186 = sub_24794ED14();
  v187 = sub_24794F154();

  if (os_log_type_enabled(v186, v187))
  {
    v188 = swift_slowAlloc();
    v189 = swift_slowAlloc();
    v243 = v189;
    *v188 = 136315138;
    v190 = v239;
    swift_beginAccess();
    sub_2478E9680(v2 + v190, v53, &qword_27EE57278, &unk_247950590);
    v191 = sub_24794EF14();
    v193 = v39;
    v194 = sub_247924380(v191, v192, &v243);

    *(v188 + 4) = v194;
    v39 = v193;
    _os_log_impl(&dword_2478E1000, v186, v187, "#SiriRequestRecord - created request with audioId: %s", v188, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v189);
    MEMORY[0x24C1AF180](v189, -1, -1);
    MEMORY[0x24C1AF180](v188, -1, -1);
  }

  sub_24794EBF4();
  v39(v53, 0, 1, v178);
  v195 = v234;
  swift_beginAccess();
  sub_2478F6648(v53, v2 + v195, &qword_27EE57278, &unk_247950590);
  swift_endAccess();
  sub_24794EBF4();

  v39(v53, 0, 1, v178);
  v196 = v235;
  swift_beginAccess();
  sub_2478F6648(v53, v2 + v196, &qword_27EE57278, &unk_247950590);
  swift_endAccess();
  return v2;
}

uint64_t sub_2478F4188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = a6;
  v46 = a7;
  v43 = a4;
  v44 = a5;
  v42 = a3;
  v40[1] = a1;
  v40[2] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v40 - v9;
  *(v7 + 16) = 514;
  v11 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
  v41 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
  v12 = sub_24794EBB4();
  (*(*(v12 - 8) + 56))(v7 + v11, 1, 1, v12);
  v13 = (v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_deviceType);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_systemBuild);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioInterfaceVendorId);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_firstPartyAudioInterfaceProductId);
  *v16 = 0;
  v16[1] = 0;
  *(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_siriInputLocale) = 0;
  v17 = v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource;
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_motionActivity;
  *v18 = 0;
  *(v18 + 4) = 1;
  *(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isWakeFromSleep) = 2;
  *(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isMediaPlaying) = 2;
  *(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isDeviceHandHeld) = 2;
  v19 = v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioCodec;
  *v19 = 0;
  *(v19 + 4) = 1;
  v20 = v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioSource;
  *v20 = 0;
  *(v20 + 4) = 1;
  v21 = v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_asrTask;
  *v21 = 0;
  *(v21 + 4) = 1;
  v22 = v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioSkippedNumSamples;
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = (v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_subDomain);
  *v24 = 0;
  v24[1] = 0;
  *(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isPersonalRequest) = 2;
  *(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isPersonalizedRequest) = 2;
  v25 = (v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_responseId);
  *v25 = 0;
  v25[1] = 0;
  v26 = v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_orchCancelledReason;
  *v26 = 0;
  *(v26 + 4) = 1;
  v27 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioId;
  v28 = sub_24794EC04();
  v29 = *(*(v28 - 8) + 56);
  v29(v7 + v27, 1, 1, v28);
  v30 = v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_triggerPhrase;
  *v30 = 0;
  *(v30 + 4) = 1;
  v31 = (v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_enrollmentId);
  *v31 = 0;
  v31[1] = 0;
  *(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_location) = 0;
  v29(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_sampleId, 1, 1, v28);
  v29(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId, 1, 1, v28);
  v32 = (v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_uniqueSpeakerIdentifier);
  *v32 = 0;
  v32[1] = 0;
  v33 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId;
  v29(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId, 1, 1, v28);
  v34 = (v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_userSamplingId);
  *v34 = 0;
  v34[1] = 0;
  *(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isMultiUserRequest) = 2;
  v29(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_clockSessionId, 1, 1, v28);
  v35 = v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_userIdentifyClassification;
  *v35 = 0;
  *(v35 + 4) = 1;
  *(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_userOptIn) = 0;
  sub_24794EBC4();

  swift_beginAccess();
  sub_2478F6648(v10, v7 + v33, &qword_27EE57278, &unk_247950590);
  swift_endAccess();
  v36 = v43;
  *v13 = v42;
  v13[1] = v36;

  v37 = v45;
  *v34 = v44;
  v34[1] = v37;

  v38 = v41;
  swift_beginAccess();
  sub_2478F6648(v46, v7 + v38, &qword_27EE572D0, &unk_2479504E0);
  swift_endAccess();
  return v7;
}

id sub_2478F45D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v71 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v68 - v5;
  v72 = sub_24794EC04();
  v7 = *(v72 - 8);
  v8 = MEMORY[0x28223BE20](v72);
  v69 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v70 = &v68 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v68 - v12;
  v14 = sub_24794EBB4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v68 - v19;
  v21 = [objc_allocWithZone(MEMORY[0x277D59548]) init];
  v22 = v21;
  if (v21)
  {
    [v21 setSiriInputLocale_];
    if (*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource + 4))
    {
      v23 = 0;
    }

    else
    {
      v23 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource);
    }

    [v22 setInvocationSource_];
    if (*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_motionActivity + 4))
    {
      v24 = 0;
    }

    else
    {
      v24 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_motionActivity);
    }

    [v22 setMotionActivity_];
    if (*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioCodec + 4))
    {
      v25 = 0;
    }

    else
    {
      v25 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioCodec);
    }

    [v22 setAudioCodec_];
    if (*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioSource + 4))
    {
      v26 = 0;
    }

    else
    {
      v26 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioSource);
    }

    [v22 setAudioSource_];
    if (*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_asrTask + 4))
    {
      v27 = 0;
    }

    else
    {
      v27 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_asrTask);
    }

    [v22 setAsrTask_];
    if (*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_triggerPhrase + 4))
    {
      v28 = 0;
    }

    else
    {
      v28 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_triggerPhrase);
    }

    [v22 setTriggerPhrase_];
  }

  v29 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
  swift_beginAccess();
  sub_2478E9680(v1 + v29, v20, &qword_27EE572D0, &unk_2479504E0);
  if ((*(v15 + 48))(v20, 1, v14))
  {
    sub_2478E9620(v20, &qword_27EE572D0, &unk_2479504E0);
    v30 = v13;
    v31 = v7;
    v32 = v72;
    goto LABEL_28;
  }

  (*(v15 + 16))(v17, v20, v14);
  sub_2478E9620(v20, &qword_27EE572D0, &unk_2479504E0);
  sub_24794EB74();
  v34 = v33;
  result = (*(v15 + 8))(v17, v14);
  v30 = v13;
  v31 = v7;
  v32 = v72;
  if (v22)
  {
    if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v34 > -1.0)
    {
      if (v34 < 1.84467441e19)
      {
        [v22 setStartDatestampInDaysSince1970_];
        goto LABEL_28;
      }

LABEL_75:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_75;
  }

LABEL_28:
  if ((*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioSkippedNumSamples + 8) & 1) == 0)
  {
    [v22 setAudioSkippedNumSamples_];
  }

  if (v22 && *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_location))
  {
    [v22 setLocation_];
  }

  v36 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isWakeFromSleep);
  if (v36 != 2)
  {
    [v22 setIsWakeFromSleep_];
  }

  v37 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isMediaPlaying);
  if (v37 != 2)
  {
    [v22 setIsMediaPlaying_];
  }

  v38 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_isDeviceHandHeld);
  if (v38 != 2)
  {
    [v22 setIsDeviceHandHeld_];
  }

  if (v22 && *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_firstPartyAudioInterfaceProductId + 8))
  {

    v39 = v22;
    v40 = sub_24794EEF4();

    [v39 setFirstPartyAudioInterfaceProductId_];
  }

  if (v22 && *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioInterfaceVendorId + 8))
  {
    v41 = v22;

    v42 = sub_24794EEF4();

    [v41 setAudioInterfaceVendorId_];
  }

  if (v22 && *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_deviceType + 8))
  {
    v43 = v22;

    v44 = sub_24794EEF4();

    [v43 setDeviceType_];
  }

  if (v22 && *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_subDomain + 8))
  {
    v45 = v22;

    v46 = sub_24794EEF4();

    [v45 setSubDomain_];
  }

  if (v22 && *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best + 8))
  {
    v47 = v22;

    v48 = sub_24794EEF4();

    [v47 setPostItn1Best_];
  }

  v49 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioId;
  swift_beginAccess();
  sub_2478E9680(v1 + v49, v6, &qword_27EE57278, &unk_247950590);
  v50 = *(v31 + 48);
  if (v50(v6, 1, v32) != 1)
  {
    (*(v31 + 32))(v30, v6, v32);
    if (v22)
    {
      v51 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v52 = v22;
      v53 = sub_24794EBE4();
      v54 = [v51 initWithNSUUID_];

      [v52 setAudioId_];
    }

    (*(v31 + 8))(v30, v32);
    if (!v22)
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  sub_2478E9620(v6, &qword_27EE57278, &unk_247950590);
  if (v22)
  {
LABEL_60:
    if (*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_systemBuild + 8))
    {
      v55 = v22;

      v56 = sub_24794EEF4();

      [v55 setSystemBuild_];
    }
  }

LABEL_62:
  v57 = *(v1 + 16);
  if (v57 != 2)
  {
    [v22 setIsEnrollmentSample_];
  }

  v58 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId;
  swift_beginAccess();
  v59 = v1 + v58;
  v60 = v71;
  sub_2478E9680(v59, v71, &qword_27EE57278, &unk_247950590);
  if (v50(v60, 1, v32) == 1)
  {
    sub_2478E9620(v60, &qword_27EE57278, &unk_247950590);
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v61 = sub_24794ED34();
    __swift_project_value_buffer(v61, qword_27EE58DF8);
    v62 = sub_24794ED14();
    v63 = sub_24794F164();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_2478E1000, v62, v63, "odSampleId is not being initialized", v64, 2u);
      MEMORY[0x24C1AF180](v64, -1, -1);
    }
  }

  else
  {
    v65 = v70;
    (*(v31 + 32))(v70, v60, v32);
    sub_2478F66B0();
    v66 = v69;
    (*(v31 + 16))(v69, v65, v32);
    v62 = sub_247919F48(v66);
    v67 = [objc_allocWithZone(MEMORY[0x277D59528]) init];
    [v67 setSpeakerIdModelSampleReported_];
    if (v67)
    {
      [v67 setEventMetadata_];

      (*(v31 + 8))(v65, v32);
      return v67;
    }

    (*(v31 + 8))(v65, v32);
  }

  return 0;
}

id sub_2478F50F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a1;
  v31 = a2;
  v4 = sub_24794EC04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - v12;
  v14 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
  swift_beginAccess();
  sub_2478E9680(v3 + v14, v13, &qword_27EE572D0, &unk_2479504E0);
  v15 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId;
  swift_beginAccess();
  sub_2478E9680(v3 + v15, v10, &qword_27EE57278, &unk_247950590);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_2478E9620(v10, &qword_27EE57278, &unk_247950590);
    v16 = 0;
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_2478E9620(v10, &qword_27EE57278, &unk_247950590);
    sub_24794EBD4();
    v16 = v17;
    (*(v5 + 8))(v7, v4);
  }

  v18 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_deviceType + 8);
  v19 = sub_24794EBB4();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v13, 1, v19);

  v22 = 0;
  if (v21 != 1)
  {
    v22 = sub_24794EB34();
    (*(v20 + 8))(v13, v19);
  }

  if (v16)
  {
    v23 = sub_24794EEF4();
  }

  else
  {
    v23 = 0;
  }

  v24 = sub_24794EEF4();
  v25 = sub_24794EEF4();
  if (v18)
  {
    v26 = sub_24794EEF4();
  }

  else
  {
    v26 = 0;
  }

  v27 = objc_allocWithZone(MEMORY[0x277CF1458]);
  v28 = [v27 initWithTimestamp:v22 onDeviceSampleIdentifier:v23 userSamplingIdentifier:v24 dataCollectionUseCase:v25 deviceType:{v26, v30, v31}];

  return v28;
}

uint64_t sub_2478F54C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v2);
  v4 = &v13[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  MEMORY[0x28223BE20](v5);
  v7 = &v13[-v6];
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_24794F344();

  v16 = 0x4974736575716572;
  v17 = 0xEB00000000203A64;
  v8 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId;
  swift_beginAccess();
  sub_2478E9680(v1 + v8, v7, &qword_27EE57278, &unk_247950590);
  v9 = sub_24794EF14();
  MEMORY[0x24C1AE4C0](v9);

  MEMORY[0x24C1AE4C0](0x65746144206E6F20, 0xEA0000000000203ALL);
  v10 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
  swift_beginAccess();
  sub_2478E9680(v1 + v10, v4, &qword_27EE572D0, &unk_2479504E0);
  v11 = sub_24794EF14();
  MEMORY[0x24C1AE4C0](v11);

  return v16;
}

uint64_t sub_2478F56BC()
{
  sub_2478E95CC();
  swift_allocError();
  *v0 = xmmword_24794FEE0;
  *(v0 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_2478F5718()
{
  sub_2478E9620(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date, &qword_27EE572D0, &unk_2479504E0);

  sub_2478E9620(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_audioId, &qword_27EE57278, &unk_247950590);

  sub_2478E9620(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_sampleId, &qword_27EE57278, &unk_247950590);
  sub_2478E9620(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId, &qword_27EE57278, &unk_247950590);

  sub_2478E9620(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId, &qword_27EE57278, &unk_247950590);

  sub_2478E9620(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_clockSessionId, &qword_27EE57278, &unk_247950590);
  return v0;
}

void sub_2478F58FC(uint64_t a1)
{
  sub_2478F5A80(319, &qword_27EE57320, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    sub_2478F5A80(319, &qword_27EE57328, MEMORY[0x277CC95F0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2478F5A80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24794F234();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_2478F5B30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a1;
  v35 = a2;
  v4 = sub_24794EC04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - v12;
  v14 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
  swift_beginAccess();
  sub_2478E9680(v3 + v14, v13, &qword_27EE572D0, &unk_2479504E0);
  v15 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId;
  swift_beginAccess();
  sub_2478E9680(v3 + v15, v10, &qword_27EE57278, &unk_247950590);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_2478E9620(v10, &qword_27EE57278, &unk_247950590);
    v33 = 0;
    v16 = 0;
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_2478E9620(v10, &qword_27EE57278, &unk_247950590);
    v33 = sub_24794EBD4();
    v16 = v17;
    (*(v5 + 8))(v7, v4);
  }

  v18 = *(v3 + 16);
  if (v18 == 2 || (v18 & 1) == 0)
  {
    if (*(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics24ButtonPressRequestRecord_wakeWord))
    {
      v19 = 0xE200000000000000;
      if (*(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics24ButtonPressRequestRecord_wakeWord) == 1)
      {
        v20 = 21320;
      }

      else
      {
        v20 = 21322;
      }
    }

    else
    {
      v19 = 0xEA00000000006472;
      v20 = 0x6F57656B61576F6ELL;
    }

    v36 = 0x72506E6F74747562;
    v37 = 0xEF2D435346737365;
    MEMORY[0x24C1AE4C0](v20, v19);
  }

  v21 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_deviceType + 8);
  v22 = sub_24794EBB4();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 48))(v13, 1, v22);

  v25 = 0;
  if (v24 != 1)
  {
    v25 = sub_24794EB34();
    (*(v23 + 8))(v13, v22);
  }

  if (v16)
  {
    v26 = sub_24794EEF4();
  }

  else
  {
    v26 = 0;
  }

  v27 = sub_24794EEF4();
  v28 = sub_24794EEF4();

  if (v21)
  {
    v29 = sub_24794EEF4();
  }

  else
  {
    v29 = 0;
  }

  v30 = [objc_allocWithZone(MEMORY[0x277CF1458]) initWithTimestamp:v25 onDeviceSampleIdentifier:v26 userSamplingIdentifier:v27 dataCollectionUseCase:v28 deviceType:v29];

  return v30;
}

uint64_t sub_2478F5FA0()
{
  sub_2478F5718();

  return swift_deallocClassInstance();
}

uint64_t sub_2478F6020(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SamplingSelectionStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SamplingSelectionStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2478F620C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 21320;
  if (v2 != 1)
  {
    v3 = 21322;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6F57656B61576F6ELL;
  }

  if (v2)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xEA00000000006472;
  }

  v6 = 21320;
  if (*a2 != 1)
  {
    v6 = 21322;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6F57656B61576F6ELL;
  }

  if (*a2)
  {
    v8 = 0xE200000000000000;
  }

  else
  {
    v8 = 0xEA00000000006472;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24794F4E4();
  }

  return v9 & 1;
}

uint64_t sub_2478F62E0()
{
  sub_24794F584();
  sub_24794EF74();

  return sub_24794F5B4();
}

double sub_2478F6370(uint64_t a1)
{
  sub_24794EF74();

  return result;
}

uint64_t sub_2478F63EC(uint64_t a1)
{
  sub_24794F584();
  sub_24794EF74();

  return sub_24794F5B4();
}

unint64_t sub_2478F6478@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2478F654C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2478F64A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006472;
  v4 = 21320;
  if (v2 != 1)
  {
    v4 = 21322;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6F57656B61576F6ELL;
  }

  if (!v5)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_2478F64F8()
{
  result = qword_27EE57340;
  if (!qword_27EE57340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE57340);
  }

  return result;
}

unint64_t sub_2478F654C(uint64_t a1, uint64_t a2)
{
  v2 = sub_24794F4A4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2478F65EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2478F6648(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_2478F66B0()
{
  result = qword_27EE57258;
  if (!qword_27EE57258)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE57258);
  }

  return result;
}

uint64_t sub_2478F6700(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v47 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v47 - v10;
  v12 = [a1 onDeviceSampleIdentifier];
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v12;
  v14 = sub_24794EF04();
  v16 = v15;

  v17 = [a1 deviceType];
  if (!v17)
  {
LABEL_11:

LABEL_12:
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v29 = sub_24794ED34();
    __swift_project_value_buffer(v29, qword_27EE58DF8);
    v30 = sub_24794ED14();
    v31 = sub_24794F164();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2478E1000, v30, v31, "#SiriRequestRecordFactory: Can't get fundamental info from biomeEvent", v32, 2u);
      MEMORY[0x24C1AF180](v32, -1, -1);
    }

    v33 = 2;
    goto LABEL_17;
  }

  v52 = v14;
  v18 = v17;
  v51 = sub_24794EF04();
  v20 = v19;

  v21 = [a1 dataCollectionUseCase];
  if (!v21)
  {
LABEL_10:

    goto LABEL_11;
  }

  v53 = v20;
  v22 = v21;
  v49 = sub_24794EF04();

  v23 = [a1 userSamplingIdentifier];
  if (!v23)
  {

    goto LABEL_10;
  }

  v24 = v23;
  v48 = sub_24794EF04();
  v50 = v25;

  if (*(v1 + 16) > 1u)
  {

    v33 = 8;
LABEL_17:
    sub_2478E95CC();
    swift_allocError();
    *v34 = v33;
    *(v34 + 8) = 0;
    *(v34 + 16) = 2;
    swift_willThrow();
    return v33;
  }

  if (!*(v1 + 16))
  {

    v26 = [a1 timestamp];
    if (v26)
    {
      v27 = v26;
      sub_24794EB94();

      v28 = sub_24794EBB4();
      (*(*(v28 - 8) + 56))(v11, 0, 1, v28);
    }

    else
    {
      v39 = sub_24794EBB4();
      (*(*(v39 - 8) + 56))(v11, 1, 1, v39);
    }

    v40 = v53;
    v41 = v52;
    type metadata accessor for SiriRequestRecord(0);
    swift_allocObject();
    return sub_2478F4188(v41, v16, v51, v40, v48, v50, v11);
  }

  v36 = [a1 timestamp];
  if (v36)
  {
    v37 = v36;
    sub_24794EB94();

    v38 = sub_24794EBB4();
    (*(*(v38 - 8) + 56))(v9, 0, 1, v38);
  }

  else
  {
    v42 = sub_24794EBB4();
    (*(*(v42 - 8) + 56))(v9, 1, 1, v42);
  }

  type metadata accessor for ButtonPressRequestRecord(0);
  v43 = swift_allocObject();
  v44 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics24ButtonPressRequestRecord_wakeWord;
  *(v43 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics24ButtonPressRequestRecord_wakeWord) = 0;
  if (sub_24794F004())
  {
    v45 = 1;
  }

  else
  {
    if ((sub_24794F004() & 1) == 0)
    {
      goto LABEL_30;
    }

    v45 = 2;
  }

  *(v43 + v44) = v45;
LABEL_30:
  sub_2478EE3C8(v9, v6);
  v33 = sub_2478F4188(v52, v16, v51, v53, v48, v50, v6);
  v46 = sub_24794F004();

  sub_2478F6EA4(v9);
  if (v46)
  {
    *(v33 + 16) = 1;
  }

  return v33;
}

uint64_t sub_2478F6C7C(uint64_t a1)
{
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v17 = MEMORY[0x277D84F90];
    sub_24794F3C4();
    v5 = *(v1 + 16);
    for (i = a1 + 32; ; i += 8)
    {
      if (v5 > 1)
      {
        if (v5 == 2)
        {
          type metadata accessor for MetricsCalcRecord(0);
          swift_allocObject();

          sub_247900C7C(v16);
          goto LABEL_4;
        }
      }

      else if (v5)
      {
        type metadata accessor for ButtonPressRequestRecord(0);
        *(swift_allocObject() + OBJC_IVAR____TtC23CoreSpeechDataAnalytics24ButtonPressRequestRecord_wakeWord) = 0;

        v9 = sub_2478F0B18(v8);
        v10 = v9;
        v11 = *(v9 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best + 8);
        if (v11)
        {
          v12 = *(v9 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_siriInputLocale);
          if (v12)
          {
            v13 = *(v9 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best);

            v14 = v12;
            v15 = SISchemaISOLocale.toString()();

            LOBYTE(v14) = sub_247944340(v13, v11, v15._countAndFlagsBits, v15._object);

            *(v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics24ButtonPressRequestRecord_wakeWord) = v14;
          }
        }

        goto LABEL_4;
      }

      type metadata accessor for SiriRequestRecord(0);
      swift_allocObject();

      sub_2478F0B18(v7);
LABEL_4:
      sub_24794F3A4();
      sub_24794F3D4();
      sub_24794F3E4();
      sub_24794F3B4();
      if (!--v3)
      {
        return v17;
      }
    }
  }

  return result;
}

uint64_t sub_2478F6EA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2478F6F0C()
{
  v1 = *(v0 + 136);
  if (v1 == 2)
  {
    LOBYTE(v1) = (*(*(v0 + 40) + 144))(*(v0 + 120), *(v0 + 128));
    *(v0 + 136) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_2478F6F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = v6;
  *(v7 + 136) = 2;
  if (a5 && (type metadata accessor for ButtonPressSamplingPolicy(0), (v13 = swift_dynamicCastClass()) != 0))
  {
    v14 = v13;
    LOBYTE(v24) = 1;

    v15 = sub_2478E3250(a1, a2, a3, a4, &v24, v14, a6);

    if (v15)
    {

      return v15;
    }
  }

  else
  {

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v17 = sub_24794ED34();
    __swift_project_value_buffer(v17, qword_27EE58DF8);
    v18 = sub_24794ED14();
    v19 = sub_24794F164();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2478E1000, v18, v19, "#ButtonPressActionEvent: Cannot create sampling policy", v20, 2u);
      MEMORY[0x24C1AF180](v20, -1, -1);
    }

    v24 = a6[2];
    sub_2478E9620(&v24, &qword_27EE57290, &unk_2479504F0);
    v23 = a6[3];
    sub_2478E9620(&v23, &qword_27EE57298, &unk_2479503D0);
    v22 = a6[4];
    sub_2478E9620(&v22, &qword_27EE572A0, &unk_247950500);
    v21 = a6[5];
    sub_2478E9620(&v21, &qword_27EE572A8, &unk_2479503E0);

    type metadata accessor for ButtonPressActionEvent();
    swift_deallocPartialClassInstance();
  }

  return 0;
}

uint64_t sub_2478F71C4()
{

  sub_2478EEE7C();

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2478F72B8;

  return sub_2478E411C();
}

uint64_t sub_2478F72B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2478F73AC()
{
  v1[14] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v2 = sub_24794EC04();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2478F74EC, 0, 0);
}

uint64_t sub_2478F74EC()
{
  v186 = v0;
  v1 = *(v0[14] + 112);
  v2 = *(v1 + 40);

  v3 = [v2 publisher];
  LOBYTE(v185) = *(v1 + 16);
  v4 = sub_2478EF144(&v185, v3);

  v185 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_46;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_47:
    v16 = MEMORY[0x277D84F90];
    v21 = MEMORY[0x277D84F90];
    v20 = MEMORY[0x277D84F90];
    goto LABEL_48;
  }

LABEL_3:
  v183 = v0;
  v6 = 0;
  v0 = (v4 & 0xC000000000000001);
  do
  {
    if (v0)
    {
      v7 = MEMORY[0x24C1AE890](v6, v4);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_15:
        __break(1u);

        goto LABEL_29;
      }
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        v5 = sub_24794F414();
        if (!v5)
        {
          goto LABEL_47;
        }

        goto LABEL_3;
      }

      v7 = *(v4 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_15;
      }
    }

    if ((*(*v7 + 1272))() == 1)
    {

LABEL_5:
      sub_24794F3A4();
      sub_24794F3D4();
      sub_24794F3E4();
      sub_24794F3B4();
      goto LABEL_6;
    }

    v9 = sub_24794F4E4();

    if (v9)
    {
      goto LABEL_5;
    }

LABEL_6:
    ++v6;
  }

  while (v8 != v5);
  v10 = 0;
  v180 = v185;
  v185 = MEMORY[0x277D84F90];
  do
  {
    if (v0)
    {
      v11 = MEMORY[0x24C1AE890](v10, v4);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v10 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v11 = *(v4 + 8 * v10 + 32);

      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
LABEL_28:
        __break(1u);

LABEL_29:

        v14 = v183;
LABEL_49:

        v31 = v14[1];
LABEL_50:

        return v31();
      }
    }

    if ((*(*v11 + 1272))() > 1u)
    {

LABEL_18:
      sub_24794F3A4();
      sub_24794F3D4();
      sub_24794F3E4();
      sub_24794F3B4();
      goto LABEL_19;
    }

    v13 = sub_24794F4E4();

    if (v13)
    {
      goto LABEL_18;
    }

LABEL_19:
    ++v10;
  }

  while (v12 != v5);
  v15 = 0;
  v16 = v185;
  v185 = MEMORY[0x277D84F90];
  while (v0)
  {
    v17 = MEMORY[0x24C1AE890](v15, v4);
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_41;
    }

LABEL_36:
    v19 = *(v17 + 16);
    if (v19 == 2 || (v19 & 1) == 0)
    {
    }

    else
    {
      sub_24794F3A4();
      sub_24794F3D4();
      sub_24794F3E4();
      sub_24794F3B4();
    }

    ++v15;
    if (v18 == v5)
    {
      goto LABEL_42;
    }
  }

  if (v15 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_45;
  }

  v17 = *(v4 + 8 * v15 + 32);

  v18 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    goto LABEL_36;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  v0 = v183;
  v20 = v185;
  v21 = v180;
LABEL_48:
  v0[25] = v16;
  v22 = v0[14];

  v23 = *(**(v22 + 88) + 488);

  v25 = v23(v24);

  v26 = *(**(v22 + 88) + 496);

  v0[26] = v26(v27);

  v28 = *(**(v22 + 88) + 504);

  v30 = v28(v29);

  v181 = v30;
  v33 = v21;
  v34 = *(**(v22 + 88) + 512);

  v0[27] = v34(v35);

  v36 = *(**(v22 + 88) + 544);

  v38 = v36(v37);

  v163 = v38;
  v39 = *(**(v22 + 88) + 552);

  v0[28] = v39(v40);

  v184 = v0;
  v41 = *(**(v22 + 88) + 536);

  v43 = v41(v42);

  v44 = v20 < 0 || (v20 & 0x4000000000000000) != 0;
  if (v44)
  {
    v61 = sub_24794F414();
    if (v61 < 1 || v43 >= v61)
    {
      goto LABEL_90;
    }

    v62 = sub_24794F414();
    result = sub_24794F414();
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    if (v62 >= v43)
    {
      v63 = v43;
    }

    else
    {
      v63 = v62;
    }

    if (v62 < 0)
    {
      v63 = v43;
    }

    if (v43)
    {
      v43 = v63;
    }

    else
    {
      v43 = 0;
    }

    if (sub_24794F414() < v43)
    {
      __break(1u);
      goto LABEL_90;
    }

LABEL_59:
    if ((v20 & 0xC000000000000001) != 0)
    {

      if (v43)
      {
        type metadata accessor for SiriRequestRecord(0);
        v46 = 0;
        do
        {
          v47 = v46 + 1;
          sub_24794F364();
          v46 = v47;
        }

        while (v43 != v47);
      }
    }

    else
    {
    }

    if (v44)
    {
      v48 = sub_24794F454();
      v50 = v49;
      v52 = v51;
      v54 = v53;

      v20 = v48;
    }

    else
    {
      v52 = 0;
      v50 = v20 + 32;
      v54 = (2 * v43) | 1;
    }

    if (v54)
    {
      sub_24794F4F4();
      swift_unknownObjectRetain_n();
      v57 = swift_dynamicCastClass();
      if (!v57)
      {
        swift_unknownObjectRelease();
        v57 = MEMORY[0x277D84F90];
      }

      v58 = *(v57 + 16);

      if (__OFSUB__(v54 >> 1, v52))
      {
        __break(1u);
      }

      else if (v58 == (v54 >> 1) - v52)
      {
        v56 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        v59 = v184;
        v60 = v33;
        if (v56)
        {
          goto LABEL_92;
        }

        v56 = MEMORY[0x277D84F90];
LABEL_76:
        swift_unknownObjectRelease();
        goto LABEL_91;
      }

      swift_unknownObjectRelease_n();
    }

    sub_2478E8CE4(v20, v50, v52, v54);
    v56 = v55;
    goto LABEL_76;
  }

  v45 = *(v20 + 16);
  if (v45 && v43 < v45)
  {
    goto LABEL_59;
  }

LABEL_90:
  v56 = v20;
LABEL_91:
  v59 = v184;
  v60 = v33;
LABEL_92:
  *(v59 + 232) = v56;
  v64 = *(v22 + 88);
  v65 = (*(*(v64 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId);
  v66 = *v65;
  *(v59 + 240) = *v65;
  v67 = v65[1];
  *(v59 + 248) = v67;
  v160 = v66;
  v161 = v67;
  if (!v67)
  {

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v79 = sub_24794ED34();
    __swift_project_value_buffer(v79, qword_27EE58DF8);
    v80 = sub_24794ED14();
    v81 = sub_24794F164();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_2478E1000, v80, v81, "#ButtonPressActionEvent: userSamplingId being nil for events aggregation", v82, 2u);
      MEMORY[0x24C1AF180](v82, -1, -1);
    }

    sub_2478E95CC();
    swift_allocError();
    *v83 = xmmword_24794FF10;
    *(v83 + 16) = 2;
    swift_willThrow();
    v14 = v184;
    goto LABEL_49;
  }

  v68 = v56;

  v69 = v64;
  v158 = sub_2478EB0C0();
  *(v59 + 336) = v158;

  if (v60 < 0 || (v60 & 0x4000000000000000) != 0)
  {
    goto LABEL_118;
  }

  v70 = *(v60 + 16);
  v159 = v68;
  if (v70)
  {
LABEL_96:
    v69 = 0;
    v71 = *(v59 + 160);
    v170 = (v71 + 48);
    v174 = v60 & 0xC000000000000001;
    v165 = v71;
    v167 = (v71 + 32);
    v178 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v174)
      {
        v64 = MEMORY[0x24C1AE890](v69, v33);
        v72 = (v69 + 1);
        if (__OFADD__(v69, 1))
        {
          goto LABEL_116;
        }
      }

      else
      {
        if (v69 >= *(v33 + 16))
        {
          goto LABEL_117;
        }

        v64 = *(v33 + 8 * v69 + 32);

        v72 = (v69 + 1);
        if (__OFADD__(v69, 1))
        {
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          v70 = sub_24794F414();
          v159 = v68;
          if (!v70)
          {
            break;
          }

          goto LABEL_96;
        }
      }

      v60 = v70;
      v68 = v184;
      v74 = v184[18];
      v73 = v184[19];
      v59 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId;
      swift_beginAccess();
      sub_2478FA014(v64 + v59, v74);

      if ((*v170)(v74, 1, v73) == 1)
      {
        sub_2478E9620(v184[18], &qword_27EE57278, &unk_247950590);
      }

      else
      {
        v59 = *v167;
        (*v167)(v184[24], v184[18], v184[19]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v178 = sub_24793AADC(0, v178[2] + 1, 1, v178);
        }

        v76 = v178[2];
        v75 = v178[3];
        v64 = v76 + 1;
        if (v76 >= v75 >> 1)
        {
          v178 = sub_24793AADC((v75 > 1), v76 + 1, 1, v178);
        }

        v77 = v184[24];
        v78 = v184[19];
        v178[2] = v64;
        (v59)(v178 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v76, v77, v78);
      }

      v70 = v60;
      ++v69;
      if (v72 == v60)
      {
        goto LABEL_120;
      }
    }
  }

  v178 = MEMORY[0x277D84F90];
LABEL_120:

  v84 = v159;
  if (v159 >> 62)
  {
    goto LABEL_186;
  }

  v85 = *((v159 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_122:
  v86 = v184;
  v184[32] = v85;
  if (v85)
  {
    v69 = 0;
    v87 = v184[20];
    v168 = v84 & 0xFFFFFFFFFFFFFF8;
    v171 = v84 & 0xC000000000000001;
    v162 = v87;
    v164 = (v87 + 32);
    v166 = (v87 + 48);
    v175 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v171)
      {
        v33 = v84;
        v64 = MEMORY[0x24C1AE890](v69);
        v88 = (v69 + 1);
        if (__OFADD__(v69, 1))
        {
          goto LABEL_182;
        }
      }

      else
      {
        if (v69 >= *(v168 + 16))
        {
          goto LABEL_183;
        }

        v33 = v84;
        v64 = *(v84 + 8 * v69 + 32);

        v88 = (v69 + 1);
        if (__OFADD__(v69, 1))
        {
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          v69 = v84;
          v128 = sub_24794F414();
          v84 = v69;
          v85 = v128;
          goto LABEL_122;
        }
      }

      v89 = *(v86 + 152);
      v90 = *(v86 + 136);
      v59 = v86;
      v91 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId;
      swift_beginAccess();
      sub_2478FA014(v64 + v91, v90);

      if ((*v166)(v90, 1, v89) == 1)
      {
        sub_2478E9620(*(v59 + 136), &qword_27EE57278, &unk_247950590);
        v86 = v59;
      }

      else
      {
        v92 = *v164;
        (*v164)(*(v59 + 184), *(v59 + 136), *(v59 + 152));
        v86 = v59;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v175 = sub_24793AADC(0, *(v175 + 2) + 1, 1, v175);
        }

        v94 = *(v175 + 2);
        v93 = *(v175 + 3);
        v64 = v94 + 1;
        if (v94 >= v93 >> 1)
        {
          v175 = sub_24793AADC((v93 > 1), v94 + 1, 1, v175);
        }

        v95 = *(v59 + 184);
        v96 = *(v59 + 152);
        *(v175 + 2) = v64;
        v92(&v175[((*(v162 + 80) + 32) & ~*(v162 + 80)) + *(v162 + 72) * v94], v95, v96);
      }

      v84 = v33;
      ++v69;
      if (v88 == v85)
      {
        goto LABEL_139;
      }
    }
  }

  v175 = MEMORY[0x277D84F90];
LABEL_139:
  v97 = v178[2];
  if (v97 >= v181 || v158)
  {
    v98 = 2;
    goto LABEL_148;
  }

  if (__CFADD__(v163, v25))
  {
    __break(1u);
LABEL_188:
    swift_once();
LABEL_154:
    v108 = sub_24794ED34();
    v109 = __swift_project_value_buffer(v108, qword_27EE58DF8);
    v182 = (*(v25 + 136) + **(v25 + 136));
    v110 = swift_task_alloc();
    v184[35] = v110;
    *v110 = v184;
    v111 = sub_2478F8FB8;
    goto LABEL_155;
  }

  if (v97 < v163 + v25)
  {

    if (qword_27EE571C0 == -1)
    {
      goto LABEL_144;
    }

    goto LABEL_192;
  }

  v98 = 1;
LABEL_148:
  v64 = sub_2478E8DC8(v160, v161, v178, v98, v181);
  v184[33] = v64;

  if (v64)
  {
    v103 = [v64 speakerIdModelSampleManifestReported];
    if (!v103 || (v104 = v103, v25 = [v103 odsampleIdsCount], v104, (v25 & 0x8000000000000000) == 0))
    {
      v184[34] = v25;
      v105 = [v64 speakerIdModelSampleManifestReported];
      if (v105)
      {
        v106 = v105;
        sub_24791A2DC(v175);
      }

      v107 = v184[14];

      v69 = v107[4];
      v25 = v107[5];
      v59 = v107[6];
      v33 = v107[7];
      if (qword_27EE571C0 == -1)
      {
        goto LABEL_154;
      }

      goto LABEL_188;
    }

    __break(1u);
LABEL_192:
    swift_once();
LABEL_144:
    v99 = sub_24794ED34();
    __swift_project_value_buffer(v99, qword_27EE58DF8);
    v100 = sub_24794ED14();
    v101 = sub_24794F154();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_2478E1000, v100, v101, "#ButtonPressActionEvent: not enough events in biome stream to create manifest", v102, 2u);
      MEMORY[0x24C1AF180](v102, -1, -1);
    }
  }

  else
  {
  }

  v184[37] = v25;
  v59 = *(v184[14] + 88);
  v112 = *(*v59 + 528);
  v33 = *v59 + 528;

  v112(v25);

  if ((sub_2478F6F0C() & 1) == 0)
  {
    v69 = v184[31];

    v124 = v184[26];
    goto LABEL_179;
  }

  v69 = v184[25];
  if ((v69 & 0x8000000000000000) != 0 || (v69 & 0x4000000000000000) != 0)
  {
    goto LABEL_194;
  }

  v176 = *(v69 + 16);
  v178 = v184[25];
  if (v176)
  {
LABEL_163:
    v59 = 0;
    v113 = v184;
    v114 = v184[20];
    v172 = v69 & 0xC000000000000001;
    v64 = v114 + 48;
    v25 = v114 + 32;
    v181 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v172)
      {
        v115 = MEMORY[0x24C1AE890](v59, v113[25]);
        v33 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          goto LABEL_184;
        }
      }

      else
      {
        if (v59 >= v178[2])
        {
          goto LABEL_185;
        }

        v115 = v178[v59 + 4];

        v33 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          goto LABEL_184;
        }
      }

      v116 = v113[19];
      v69 = v113;
      v117 = v113[16];
      v118 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId;
      swift_beginAccess();
      sub_2478FA014(v115 + v118, v117);

      if ((*v64)(v117, 1, v116) == 1)
      {
        sub_2478E9620(*(v69 + 128), &qword_27EE57278, &unk_247950590);
        v113 = v69;
      }

      else
      {
        v119 = *v25;
        (*v25)(*(v69 + 176), *(v69 + 128), *(v69 + 152));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v181 = sub_24793AADC(0, *(v181 + 2) + 1, 1, v181);
        }

        v121 = *(v181 + 2);
        v120 = *(v181 + 3);
        if (v121 >= v120 >> 1)
        {
          v181 = sub_24793AADC((v120 > 1), v121 + 1, 1, v181);
        }

        v113 = v184;
        v122 = v184[22];
        v123 = v184[19];
        *(v181 + 2) = v121 + 1;
        v119(&v181[((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v121], v122, v123);
      }

      ++v59;
      if (v33 == v176)
      {
        goto LABEL_196;
      }
    }
  }

  while (2)
  {
    v181 = MEMORY[0x277D84F90];
LABEL_196:
    v129 = v184[32];

    if (!v129)
    {
      v25 = MEMORY[0x277D84F90];
LABEL_213:
      v140 = *(v184 + 336);
      v64 = v184[27];

      v141 = *(v181 + 2);
      v142 = 2;
      if (v141 < v64 && (v140 & 1) == 0)
      {
        v143 = v184[28];
        v144 = v184[26];
        v126 = __CFADD__(v143, v144);
        v145 = v143 + v144;
        if (v126)
        {
          goto LABEL_237;
        }

        if (v141 < v145)
        {

          if (qword_27EE571C0 != -1)
          {
            swift_once();
          }

          v146 = sub_24794ED34();
          __swift_project_value_buffer(v146, qword_27EE58DF8);
          v147 = sub_24794ED14();
          v148 = sub_24794F154();
          if (os_log_type_enabled(v147, v148))
          {
            v149 = swift_slowAlloc();
            *v149 = 0;
            _os_log_impl(&dword_2478E1000, v147, v148, "#ButtonPressActionEvent: not enough events in biome stream to create manifest", v149, 2u);
            MEMORY[0x24C1AF180](v149, -1, -1);

            goto LABEL_234;
          }

LABEL_233:

LABEL_234:
          v124 = v184[26];
          v69 = *(v184[14] + 88);
          v157 = *(*v69 + 520);
          v59 = *v69 + 520;

          v157(v124);

LABEL_179:
          v125 = v184[37];
          v126 = __CFADD__(v125, v124);
          v127 = v125 + v124;
          if (!v126)
          {
            *(*(*(*(v184[14] + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_uploadedNumRecords) = v127;

            sub_247940408();

            v31 = v184[1];
            goto LABEL_50;
          }

          __break(1u);
LABEL_194:
          v176 = sub_24794F414();
          v178 = v184[25];
          if (v176)
          {
            goto LABEL_163;
          }

          continue;
        }

        v142 = 1;
      }

      v64 = sub_2478E8DC8(v184[30], v184[31], v181, v142, v184[27]);
      v184[38] = v64;

      if (v64)
      {
        v150 = [v64 speakerIdModelSampleManifestReported];
        if (!v150)
        {
          v152 = v184[26];
LABEL_228:
          v184[39] = v152;
          v153 = [v64 speakerIdModelSampleManifestReported];
          if (v153)
          {
            v154 = v153;
            sub_24791A2DC(v25);
          }

          v155 = v184[14];

          v69 = v155[4];
          v25 = v155[5];
          v59 = v155[6];
          v33 = v155[7];
          if (qword_27EE571C0 != -1)
          {
            goto LABEL_238;
          }

          goto LABEL_231;
        }

        v151 = v150;
        v152 = [v150 odsampleIdsCount];

        if ((v152 & 0x8000000000000000) == 0)
        {
          goto LABEL_228;
        }

        __break(1u);
      }

      goto LABEL_233;
    }

    break;
  }

  v64 = 0;
  v130 = v184[29];
  v177 = v130 & 0xFFFFFFFFFFFFFF8;
  v179 = v130 & 0xC000000000000001;
  v169 = v184[20];
  v173 = v130 + 32;
  v59 = v169 + 32;
  v25 = MEMORY[0x277D84F90];
  while (v179)
  {
    v131 = MEMORY[0x24C1AE890](v64, v184[29]);
    v33 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      goto LABEL_235;
    }

LABEL_203:
    v69 = v184;
    v132 = v184[19];
    v133 = v184[15];
    v134 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId;
    swift_beginAccess();
    sub_2478FA014(v131 + v134, v133);

    if ((*(v169 + 48))(v133, 1, v132) == 1)
    {
      sub_2478E9620(v184[15], &qword_27EE57278, &unk_247950590);
    }

    else
    {
      v135 = *v59;
      (*v59)(v184[21], v184[15], v184[19]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_24793AADC(0, *(v25 + 16) + 1, 1, v25);
      }

      v137 = *(v25 + 16);
      v136 = *(v25 + 24);
      if (v137 >= v136 >> 1)
      {
        v25 = sub_24793AADC((v136 > 1), v137 + 1, 1, v25);
      }

      v69 = v184;
      v138 = v184[21];
      v139 = v184[19];
      *(v25 + 16) = v137 + 1;
      v135(v25 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v137, v138, v139);
    }

    ++v64;
    if (v33 == *(v69 + 256))
    {
      goto LABEL_213;
    }
  }

  if (v64 >= *(v177 + 16))
  {
    goto LABEL_236;
  }

  v131 = *(v173 + 8 * v64);

  v33 = v64 + 1;
  if (!__OFADD__(v64, 1))
  {
    goto LABEL_203;
  }

LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
LABEL_237:
  __break(1u);
LABEL_238:
  swift_once();
LABEL_231:
  v156 = sub_24794ED34();
  v109 = __swift_project_value_buffer(v156, qword_27EE58DF8);
  v182 = (*(v25 + 136) + **(v25 + 136));
  v110 = swift_task_alloc();
  v184[40] = v110;
  *v110 = v184;
  v111 = sub_2478F9B64;
LABEL_155:
  v110[1] = v111;

  return v182(v64, v59, v33, v109, v69, v25);
}