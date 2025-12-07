uint64_t sub_247933544()
{

  v1 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics26EnrollmentRecordsGenerator_currentDate;
  v2 = sub_24794EBB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EnrollmentRecordsGenerator(uint64_t a1)
{
  result = qword_27EE57650;
  if (!qword_27EE57650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247933644(uint64_t a1)
{
  result = sub_24794EBB4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_2479336F0()
{
  result = qword_27EE572E0;
  if (!qword_27EE572E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE572E0);
  }

  return result;
}

unint64_t sub_24793373C()
{
  result = qword_27EE57660;
  if (!qword_27EE57660)
  {
    sub_24794EA84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE57660);
  }

  return result;
}

_OWORD *sub_247933794(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2479337A4()
{
  v1[12] = v0;
  v2 = sub_24794EC04();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v3 = sub_24794EC24();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  v4 = sub_24794EBB4();
  v1[20] = v4;
  v1[21] = *(v4 - 8);
  v1[22] = swift_task_alloc();
  v5 = sub_24794EA84();
  v1[23] = v5;
  v1[24] = *(v5 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247933A1C, 0, 0);
}

uint64_t sub_247933A1C()
{
  v1 = v0[34];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v5 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_donationId;
  v0[35] = OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_donationId;
  swift_beginAccess();
  sub_2478E9680(v4 + v5, v1, &qword_27EE57278, &unk_247950590);
  v6 = *(v3 + 48);
  v0[36] = v6;
  v0[37] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v2) = v6(v1, 1, v2);
  sub_2478E9620(v1, &qword_27EE57278, &unk_247950590);
  if (v2 == 1)
  {
    v7 = *(v0[12] + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_enrollmentUtterance);
    v0[38] = v7;
    v8 = [v7 enrollmentUtteranceUrl];
    if (v8)
    {
      v9 = v0[29];
      v10 = v0[30];
      v11 = v0[23];
      v12 = v0[24];
      v13 = v0[12];
      v14 = v8;
      sub_24794EA64();

      v15 = *(v12 + 32);
      v0[39] = v15;
      v0[40] = (v12 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v15(v10, v9, v11);
      v17 = *(v13 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_samplingUtils);
      v16 = *(v13 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_samplingUtils + 8);
      (*(v16 + 248))(v10, v17, v16);
      sub_24794EBA4();

      sub_24794EC14();
      v34 = (*(v16 + 208) + **(v16 + 208));
      v29 = swift_task_alloc();
      v0[41] = v29;
      *v29 = v0;
      v29[1] = sub_247934164;
      v30 = v0[33];
      v31 = v0[30];
      v32 = v0[22];
      v33 = v0[19];

      return v34(v30, v32, v31, v33, v17, v16);
    }

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v23 = sub_24794ED34();
    __swift_project_value_buffer(v23, qword_27EE58DF8);
    v24 = sub_24794ED14();
    v25 = sub_24794F164();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2478E1000, v24, v25, "#EnrollmentUtterance: Unable to generate donation ID - missing audioFileURL", v26, 2u);
      MEMORY[0x24C1AF180](v26, -1, -1);
    }

    sub_24791EF84();
    swift_allocError();
    *v27 = 0x8000000000000008;
    swift_willThrow();

    v22 = v0[1];
  }

  else
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
      _os_log_impl(&dword_2478E1000, v19, v20, "#EnrollmentUtterance: Donation ID already exists, skipping generation", v21, 2u);
      MEMORY[0x24C1AF180](v21, -1, -1);
    }

    v22 = v0[1];
  }

  return v22();
}

uint64_t sub_247934164()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 152);
  v5 = *(*v0 + 144);
  v6 = *(*v0 + 136);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_247934318, 0, 0);
}

uint64_t sub_247934318()
{
  v73 = v0;
  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[13];
  sub_2478E9680(v0[33], v2, &qword_27EE57278, &unk_247950590);
  if (v1(v2, 1, v3) != 1)
  {
    v70 = *(v0[14] + 32);
    v70(v0[16], v0[32], v0[13]);
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v20 = v0[15];
    v21 = v0[16];
    v22 = v0[13];
    v23 = v0[14];
    v24 = sub_24794ED34();
    __swift_project_value_buffer(v24, qword_27EE58DF8);
    (*(v23 + 16))(v20, v21, v22);

    v25 = sub_24794ED14();
    v26 = sub_24794F154();
    if (os_log_type_enabled(v25, v26))
    {
      v68 = v26;
      v27 = v0[38];
      v29 = v0[14];
      v28 = v0[15];
      v30 = v0[13];
      v31 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v72[0] = v67;
      *v31 = 136315394;
      sub_2479359D8(&qword_27EE57250, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v32 = sub_24794F4D4();
      v34 = v33;
      (*(v29 + 8))(v28, v30);
      v35 = sub_247924380(v32, v34, v72);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v36 = [v27 enrollmentUtteranceUrl];

      if (!v36)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      v37 = v0[39];
      v65 = v0[33];
      v66 = v0[30];
      v38 = v0[27];
      v39 = v0[28];
      v40 = v0[23];
      v41 = v0[24];
      sub_24794EA64();

      v37(v39, v38, v40);
      sub_2479359D8(&qword_27EE57660, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v42 = sub_24794F4D4();
      v44 = v43;
      v45 = *(v41 + 8);
      v45(v39, v40);
      v46 = sub_247924380(v42, v44, v72);

      *(v31 + 14) = v46;
      _os_log_impl(&dword_2478E1000, v25, v68, "#EnrollmentUtterance: generated donationId: %s for %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1AF180](v67, -1, -1);
      MEMORY[0x24C1AF180](v31, -1, -1);

      sub_2478E9620(v65, &qword_27EE57278, &unk_247950590);
      v45(v66, v40);
    }

    else
    {
      v53 = v0[33];
      v54 = v0[30];
      v55 = v0[23];
      v56 = v0[24];
      v58 = v0[14];
      v57 = v0[15];
      v59 = v0[13];

      (*(v58 + 8))(v57, v59);
      sub_2478E9620(v53, &qword_27EE57278, &unk_247950590);
      (*(v56 + 8))(v54, v55);
    }

    v60 = v0[35];
    v61 = v0[31];
    v62 = v0[13];
    v63 = v0[14];
    v64 = v0[12];
    v70(v61, v0[16], v62);
    (*(v63 + 56))(v61, 0, 1, v62);
    swift_beginAccess();
    sub_247904DD0(v61, v64 + v60);
    swift_endAccess();

    v52 = v0[1];
    goto LABEL_16;
  }

  sub_2478E9620(v0[32], &qword_27EE57278, &unk_247950590);
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v4 = sub_24794ED34();
  __swift_project_value_buffer(v4, qword_27EE58DF8);

  v5 = sub_24794ED14();
  v6 = sub_24794F164();
  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_13;
  }

  v71 = v6;
  v7 = v0[38];
  v8 = swift_slowAlloc();
  v69 = swift_slowAlloc();
  v72[0] = v69;
  *v8 = 136315138;
  v9 = [v7 enrollmentUtteranceUrl];

  if (!v9)
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = v0[39];
  v13 = v0[25];
  v12 = v0[26];
  v15 = v0[23];
  v14 = v0[24];
  sub_24794EA64();

  v11(v12, v13, v15);
  sub_2479359D8(&qword_27EE57660, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v16 = sub_24794F4D4();
  v18 = v17;
  (*(v14 + 8))(v12, v15);
  v19 = sub_247924380(v16, v18, v72);

  *(v8 + 4) = v19;
  _os_log_impl(&dword_2478E1000, v5, v71, "#EnrollmentUtterance: DonationId cannot be generated from donation API for utterance: %s", v8, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v69);
  MEMORY[0x24C1AF180](v69, -1, -1);
  MEMORY[0x24C1AF180](v8, -1, -1);

LABEL_13:
  v47 = v0[33];
  v48 = v0[30];
  v50 = v0[23];
  v49 = v0[24];
  sub_24791EF84();
  swift_allocError();
  *v51 = 0x8000000000000010;
  swift_willThrow();
  sub_2478E9620(v47, &qword_27EE57278, &unk_247950590);
  (*(v49 + 8))(v48, v50);

  v52 = v0[1];
LABEL_16:

  return v52();
}

uint64_t sub_247934B70()
{
  v2 = sub_24794EA84();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  v9 = (v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_dedupeHashBytes);
  if (*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_dedupeHashBytes + 8) >> 60 != 15)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v20 = sub_24794ED34();
    __swift_project_value_buffer(v20, qword_27EE58DF8);
    v21 = sub_24794ED14();
    v22 = sub_24794F164();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2478E1000, v21, v22, "Dedupe hash bytes already exist, skipping generation", v23, 2u);
      MEMORY[0x24C1AF180](v23, -1, -1);
    }

    sub_24791EF84();
    swift_allocError();
    v25 = 0x8000000000000000;
    goto LABEL_11;
  }

  v10 = [*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_enrollmentUtterance) enrollmentUtteranceUrl];
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57698, &qword_247951C98);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_247951560;
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 32) = 0xD00000000000003ELL;
    *(v26 + 40) = 0x8000000247957280;
    sub_24794F574();

    sub_24791EF84();
    swift_allocError();
    v25 = 0x8000000000000008;
LABEL_11:
    *v24 = v25;
    return swift_willThrow();
  }

  v11 = v10;
  sub_24794EA64();

  (*(v3 + 32))(v8, v6, v2);
  v12 = sub_247936030(v8);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57698, &qword_247951C98);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_247951560;
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_24794F344();

    v32 = 0xD000000000000024;
    v33 = 0x80000002479572C0;
    swift_getErrorValue();
    v15 = sub_24794F524();
    MEMORY[0x24C1AE4C0](v15);

    v16 = v32;
    v17 = v33;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 32) = v16;
    *(v14 + 40) = v17;
    sub_24794F574();

    sub_24791EF84();
    swift_allocError();
    *v18 = v1 | 0x4000000000000000;
    swift_willThrow();
    return (*(v3 + 8))(v8, v2);
  }

  else
  {
    v27 = v12;
    v28 = v13;
    (*(v3 + 8))(v8, v2);
    v29 = *v9;
    v30 = v9[1];
    *v9 = v27;
    v9[1] = v28;
    return sub_24792DDA8(v29, v30);
  }
}

uint64_t sub_247934FA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v67 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v62 = &v58 - v5;
  MEMORY[0x28223BE20](v4);
  v66 = &v58 - v6;
  v7 = sub_24794EC04();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v63 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v64 = &v58 - v11;
  v12 = sub_24794EA84();
  v60 = *(v12 - 8);
  v61 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v58 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v59 = &v58 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v58 - v20;
  v22 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_donationId;
  swift_beginAccess();
  sub_2478E9680(v0 + v22, v21, &qword_27EE57278, &unk_247950590);
  v65 = v8;
  v23 = *(v8 + 48);
  v24 = v23(v21, 1, v7);
  sub_2478E9620(v21, &qword_27EE57278, &unk_247950590);
  if (v24 == 1)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v25 = sub_24794ED34();
    __swift_project_value_buffer(v25, qword_27EE58DF8);

    v26 = sub_24794ED14();
    v27 = sub_24794F164();
    if (!os_log_type_enabled(v26, v27))
    {

      goto LABEL_14;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v68 = v29;
    *v28 = 136315138;
    v30 = [*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_enrollmentUtterance) enrollmentUtteranceUrl];

    if (v30)
    {
      v32 = v58;
      sub_24794EA64();

      v34 = v59;
      v33 = v60;
      v35 = v61;
      (*(v60 + 32))(v59, v32, v61);
      sub_2479359D8(&qword_27EE57660, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v36 = sub_24794F4D4();
      v38 = v37;
      (*(v33 + 8))(v34, v35);
      v39 = sub_247924380(v36, v38, &v68);

      *(v28 + 4) = v39;
      _os_log_impl(&dword_2478E1000, v26, v27, "#EnrollmentUtterance: donationId wasn't generated for %s, aborting schema conversion", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x24C1AF180](v29, -1, -1);
LABEL_12:
      MEMORY[0x24C1AF180](v28, -1, -1);
LABEL_14:

      return 0;
    }

    __break(1u);
  }

  else
  {
    sub_2478E9680(v0 + v22, v19, &qword_27EE57278, &unk_247950590);
    if (v23(v19, 1, v7) == 1)
    {
      sub_2478E9620(v19, &qword_27EE57278, &unk_247950590);
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v40 = sub_24794ED34();
      __swift_project_value_buffer(v40, qword_27EE58DF8);
      v26 = sub_24794ED14();
      v41 = sub_24794F164();
      if (!os_log_type_enabled(v26, v41))
      {
        goto LABEL_14;
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2478E1000, v26, v41, "#EnrollmentUtterance: Cannot get donationId for schema conversion after generation attempt", v28, 2u);
      goto LABEL_12;
    }

    v42 = v7;
    v43 = v64;
    v44 = v65;
    (*(v65 + 32))(v64, v19, v7);
    v45 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_enrollmentUtterance);
    v46 = [v45 approximateGenerationDate];
    if (v46)
    {
      v47 = v62;
      v48 = v46;
      sub_24794EB94();

      v49 = 0;
      v50 = v66;
    }

    else
    {
      v49 = 1;
      v50 = v66;
      v47 = v62;
    }

    v51 = sub_24794EBB4();
    (*(*(v51 - 8) + 56))(v47, v49, 1, v51);
    sub_24793591C(v47, v50);
    v52 = [v45 triggerPhrase];
    if (v52 == 2)
    {
      v66 = 0xE400000000000000;
      v53 = 1769105747;
    }

    else if (v52 == 1)
    {
      v66 = 0xE200000000000000;
      v53 = 21320;
    }

    else
    {
      v66 = 0xE700000000000000;
      v53 = 0x6E776F6E6B6E55;
    }

    sub_24793598C();
    v54 = v63;
    (*(v44 + 16))(v63, v43, v42);
    v55 = v67;
    sub_2478E9680(v50, v67, &qword_27EE572D0, &unk_2479504E0);
    sub_24791A3D8(v54, v53, v66, v55);
    v57 = v56;
    sub_2478E9620(v50, &qword_27EE572D0, &unk_2479504E0);
    (*(v44 + 8))(v43, v42);
    return v57;
  }

  return result;
}

uint64_t sub_247935760()
{
  sub_2478E9620(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_donationId, &qword_27EE57278, &unk_247950590);
  sub_24792DDA8(*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_dedupeHashBytes), *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_dedupeHashBytes + 8));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EnrollmentUtteranceData(uint64_t a1)
{
  result = qword_27EE57688;
  if (!qword_27EE57688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_247935860(uint64_t a1)
{
  sub_247904628(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24793591C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24793598C()
{
  result = qword_27EE57640;
  if (!qword_27EE57640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE57640);
  }

  return result;
}

uint64_t sub_2479359D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t get_enum_tag_for_layout_string_23CoreSpeechDataAnalytics24EnrollmentUtteranceErrorO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_247935A48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_247935AA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_247935B04(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

id sub_247935B40(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_24794EA34();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_24794EA84();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_24794E9D4();

    swift_willThrow();
    v9 = sub_24794EA84();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

_BYTE *sub_247935CBC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2479366F8(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2479367B0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_24793682C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_247935D50(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_24794EE64();
      sub_2479366B0(&qword_27EE57600, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_24794EE04();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_247935F30(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_247935F30(v5, v6);
  }

  sub_24794EE64();
  sub_2479366B0(&qword_27EE57600, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_24794EE04();
}

uint64_t sub_247935F30(uint64_t a1, uint64_t a2)
{
  result = sub_24794E8C4();
  if (!result || (result = sub_24794E8F4(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_24794E8E4();
      sub_24794EE64();
      sub_2479366B0(&qword_27EE57600, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_24794EE04();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_247936010(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

void *sub_247936030(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = sub_24794EE34();
  v35 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24794EE64();
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24794EA84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247936610();
  (*(v9 + 16))(v11, a1, v8);
  v12 = v38;
  v13 = sub_247935B40(v11);
  v14 = v12;
  if (!v12)
  {
    v16 = v13;
    v33 = 0;
    v34 = v2;
    sub_24794EE54();
    v17 = v35;
    v18 = v5;
    v19 = v37;
    v20 = v7;
    v38 = v16;
    v36 = v4;
    while (1)
    {
      while (1)
      {
        v21 = [v16 readDataOfLength_];
        v22 = sub_24794EB04();
        v24 = v23;

        v25 = v24 >> 62;
        if ((v24 >> 62) <= 1)
        {
          break;
        }

        if (v25 != 2 || *(v22 + 16) == *(v22 + 24))
        {
LABEL_22:
          sub_24791EFD8(v22, v24);
          sub_24794EE44();
          v30 = v34;
          v43 = v34;
          v44 = sub_2479366B0(&qword_27EE57608, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
          v31 = __swift_allocate_boxed_opaque_existential_1(&v40);
          (*(v17 + 16))(v31, v4, v30);
          __swift_project_boxed_opaque_existential_1(&v40, v43);
          sub_24794E9B4();
          (*(v17 + 8))(v4, v30);
          v14 = v39;
          __swift_destroy_boxed_opaque_existential_0(&v40);
          (*(v19 + 8))(v20, v18);
          [v16 closeFile];

          return v14;
        }

LABEL_13:
        v26 = v18;
        v27 = v17;
        if (v25 == 2)
        {
          v29 = *(v22 + 16);
          v28 = *(v22 + 24);

          if (sub_24794E8C4() && __OFSUB__(v29, sub_24794E8F4()))
          {
            goto LABEL_26;
          }

          if (__OFSUB__(v28, v29))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v22 >> 32 < v22)
          {
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
          }

          if (sub_24794E8C4() && __OFSUB__(v22, sub_24794E8F4()))
          {
            goto LABEL_27;
          }
        }

        sub_24794E8E4();
        sub_2479366B0(&qword_27EE57600, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
        v18 = v26;
        sub_24794EE04();
        sub_24791EFD8(v22, v24);
        sub_24791EFD8(v22, v24);
        v17 = v27;
        v4 = v36;
        v19 = v37;
        v16 = v38;
      }

      if (v25)
      {
        if (v22 == v22 >> 32)
        {
          goto LABEL_22;
        }

        goto LABEL_13;
      }

      if ((v24 & 0xFF000000000000) == 0)
      {
        goto LABEL_22;
      }

      v40 = v22;
      v41 = v24;
      v42 = WORD2(v24);
      sub_2479366B0(&qword_27EE57600, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      sub_24794EE04();
      v16 = v38;
      sub_24791EFD8(v22, v24);
      sub_24791EFD8(v22, v24);
    }
  }

  sub_24793665C();
  swift_allocError();
  *v15 = v12;
  swift_willThrow();
  return v14;
}

unint64_t sub_247936610()
{
  result = qword_27EE576A0;
  if (!qword_27EE576A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE576A0);
  }

  return result;
}

unint64_t sub_24793665C()
{
  result = qword_27EE576A8;
  if (!qword_27EE576A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE576A8);
  }

  return result;
}

uint64_t sub_2479366B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2479366F8(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_2479367B0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_24794E904();
  swift_allocObject();
  result = sub_24794E8B4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_24794EAB4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_24793682C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_24794E904();
  swift_allocObject();
  result = sub_24794E8B4();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2479368B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247936900(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_247936954(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_24793696C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_24793699C(char *a1@<X8>)
{
  v27[3] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = sub_24794EEF4();
  v4 = [v2 getSiriLanguageWithFallback_];

  v5 = [objc_opt_self() sharedManager];
  if (!v5)
  {

    __break(1u);
  }

  v6 = v5;
  v27[0] = 0;
  v7 = [v5 getEnrollmentSelectionStatusWithLocale:v4 error:v27];

  v8 = v27[0];
  if (v27[0])
  {
    v9 = qword_27EE571C0;
    v10 = v27[0];
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = sub_24794ED34();
    __swift_project_value_buffer(v11, qword_27EE58DF8);
    v12 = sub_24794ED14();
    v13 = sub_24794F154();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v10;
      *v15 = v8;
      v16 = v10;
      _os_log_impl(&dword_2478E1000, v12, v13, "#Utils: Cannot get enrollment status with error: %@", v14, 0xCu);
      sub_2478E9620(v15, &qword_27EE57280, &unk_2479503C0);
      MEMORY[0x24C1AF180](v15, -1, -1);
      MEMORY[0x24C1AF180](v14, -1, -1);
    }

    v17 = 3;
  }

  else
  {
    v26 = 3;
    if (v7)
    {
      if (v7 == 2)
      {
        v26 = 2;
      }

      else if (v7 == 1)
      {
        v26 = 1;
      }
    }

    else
    {
      v26 = 0;
    }

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v18 = sub_24794ED34();
    __swift_project_value_buffer(v18, qword_27EE58DF8);
    v19 = sub_24794ED14();
    v20 = sub_24794F154();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27[0] = v22;
      *v21 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE576B0, &qword_247951DC8);
      v23 = sub_24794EF14();
      v25 = sub_247924380(v23, v24, v27);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_2478E1000, v19, v20, "#Utils: sampling selection status from legacy: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x24C1AF180](v22, -1, -1);
      MEMORY[0x24C1AF180](v21, -1, -1);
    }

    swift_beginAccess();
    v17 = v26;
  }

  *a1 = v17;
}

uint64_t sub_247936D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a3;
  v5 = sub_24794ED04();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24794EBB4();
  v77 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v69 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v66 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v71 = &v66 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v66 - v21;
  if (qword_27EE571E0 != -1)
  {
    v65 = v20;
    swift_once();
    v20 = v65;
  }

  v23 = qword_27EE58E58;
  if (qword_27EE58E58)
  {
    v67 = v17;
    v68 = v20;
    *&v80[0] = a1;
    *(&v80[0] + 1) = a2;

    v24 = v23;
    MEMORY[0x24C1AE4C0](45, 0xE100000000000000);

    MEMORY[0x24C1AE4C0](0x6F697463656C6553, 0xED0000657461446ELL);

    v25 = v80[0];
    v72 = *(v77 + 56);
    v72(v22, 1, 1, v9);
    v73 = v25 >> 64;
    v70 = v25;
    v26 = sub_24794EEF4();
    v74 = v24;
    v27 = [v24 stringForKey_];

    if (v27)
    {
      v28 = sub_24794EF04();
      v76 = v29;
    }

    else
    {
      v28 = 0;
      v76 = 0xE000000000000000;
    }

    v37 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v38 = sub_24794EEF4();
    [v37 setDateFormat_];

    sub_24794ECF4();
    v39 = sub_24794ECE4();
    (*(v6 + 8))(v8, v5);
    [v37 setTimeZone_];

    v40 = sub_24794EEF4();
    v41 = [v37 dateFromString_];

    v42 = v28;
    if (v41)
    {
      sub_24794EB94();

      sub_2478E9620(v22, &qword_27EE572D0, &unk_2479504E0);
      (*(v77 + 32))(v22, v13, v9);
      v72(v22, 0, 1, v9);
      v44 = v73;
      v43 = v74;
LABEL_24:
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v52 = sub_24794ED34();
      __swift_project_value_buffer(v52, qword_27EE58DF8);

      v53 = sub_24794ED14();
      v54 = sub_24794F154();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = v76;
        v57 = v55;
        v58 = swift_slowAlloc();
        *&v80[0] = v58;
        *v57 = 136315650;
        swift_beginAccess();
        sub_2478EE3C8(v22, v67);
        v59 = sub_24794EF14();
        v61 = v42;
        v62 = sub_247924380(v59, v60, v80);

        *(v57 + 4) = v62;
        *(v57 + 12) = 2080;
        v63 = sub_247924380(v70, v44, v80);

        *(v57 + 14) = v63;
        *(v57 + 22) = 2080;
        v64 = sub_247924380(v61, v56, v80);

        *(v57 + 24) = v64;
        _os_log_impl(&dword_2478E1000, v53, v54, "#Utils: get legacy selectionStartDate: %s with key: %s with dateStr: %s", v57, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C1AF180](v58, -1, -1);
        MEMORY[0x24C1AF180](v57, -1, -1);
      }

      else
      {
      }

      swift_beginAccess();
      sub_2478EE3C8(v22, v75);
      return sub_2478E9620(v22, &qword_27EE572D0, &unk_2479504E0);
    }

    v44 = v73;
    v45 = sub_24794EEF4();
    v43 = v74;
    v46 = [v74 objectForKey_];

    if (v46)
    {
      sub_24794F284();
      swift_unknownObjectRelease();
    }

    else
    {
      v78 = 0u;
      v79 = 0u;
    }

    v47 = v71;
    v48 = v72;
    v80[0] = v78;
    v80[1] = v79;
    if (*(&v79 + 1))
    {
      v49 = swift_dynamicCast();
      v48(v47, v49 ^ 1u, 1, v9);
      if ((*(v77 + 48))(v47, 1, v9) != 1)
      {
        v50 = *(v77 + 32);
        v77 += 32;
        v51 = v69;
        v50(v69, v47, v9);
        sub_2478E9620(v22, &qword_27EE572D0, &unk_2479504E0);
        v50(v22, v51, v9);
        v48(v22, 0, 1, v9);
        goto LABEL_24;
      }
    }

    else
    {
      sub_2478E9620(v80, &qword_27EE57348, &unk_2479521B0);
      v48(v47, 1, 1, v9);
    }

    sub_2478E9620(v47, &qword_27EE572D0, &unk_2479504E0);
    goto LABEL_24;
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v30 = sub_24794ED34();
  __swift_project_value_buffer(v30, qword_27EE58DF8);
  v31 = sub_24794ED14();
  v32 = sub_24794F154();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2478E1000, v31, v32, "#Utils: Cannot get defaults", v33, 2u);
    MEMORY[0x24C1AF180](v33, -1, -1);
  }

  v34 = *(v77 + 56);
  v35 = v75;

  return v34(v35, 1, 1, v9);
}

uint64_t sub_247937684@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50 - v7;
  v9 = sub_24794EC04();
  v53 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EE571E0 != -1)
  {
    swift_once();
  }

  v12 = qword_27EE58E58;
  if (qword_27EE58E58)
  {
    v54 = a1;
    v55 = a2;

    v13 = v12;
    MEMORY[0x24C1AE4C0](0xD000000000000014, 0x8000000247957360);
    v15 = v54;
    v14 = v55;
    v16 = sub_24794EEF4();
    v17 = [v13 stringForKey_];

    if (v17)
    {

      v18 = sub_24794EF04();
      v20 = v19;

      sub_24794EBC4();
      if ((*(v53 + 48))(v8, 1, v9) == 1)
      {
        sub_2478E9620(v8, &qword_27EE57278, &unk_247950590);
        if (qword_27EE571C0 != -1)
        {
          swift_once();
        }

        v21 = sub_24794ED34();
        __swift_project_value_buffer(v21, qword_27EE58DF8);

        v22 = sub_24794ED14();
        v23 = sub_24794F154();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v54 = v25;
          *v24 = 136315138;
          v26 = sub_247924380(v18, v20, &v54);

          *(v24 + 4) = v26;
          _os_log_impl(&dword_2478E1000, v22, v23, "#Utils: Cannot get userSamplingIdUUID from %s", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v25);
          MEMORY[0x24C1AF180](v25, -1, -1);
          MEMORY[0x24C1AF180](v24, -1, -1);
        }

        else
        {
        }

        return (*(v53 + 56))(a3, 1, 1, v9);
      }

      else
      {
        v37 = *(v53 + 32);
        v37(v11, v8, v9);
        if (qword_27EE571C0 != -1)
        {
          swift_once();
        }

        v38 = sub_24794ED34();
        __swift_project_value_buffer(v38, qword_27EE58DF8);

        v39 = sub_24794ED14();
        v40 = sub_24794F154();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v51 = v37;
          v42 = v41;
          v43 = swift_slowAlloc();
          v52 = a3;
          v44 = v43;
          v54 = v43;
          *v42 = 136315138;
          v45 = sub_247924380(v18, v20, &v54);

          *(v42 + 4) = v45;
          _os_log_impl(&dword_2478E1000, v39, v40, "#Utils: get userSamplingIdUUID: %s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v44);
          v46 = v44;
          a3 = v52;
          MEMORY[0x24C1AF180](v46, -1, -1);
          v47 = v42;
          v37 = v51;
          MEMORY[0x24C1AF180](v47, -1, -1);
        }

        else
        {
        }

        v37(a3, v11, v9);
        return (*(v53 + 56))(a3, 0, 1, v9);
      }
    }

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v31 = sub_24794ED34();
    __swift_project_value_buffer(v31, qword_27EE58DF8);

    v32 = sub_24794ED14();
    v33 = sub_24794F154();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v54 = v35;
      *v34 = 136315138;
      v36 = sub_247924380(v15, v14, &v54);

      *(v34 + 4) = v36;
      _os_log_impl(&dword_2478E1000, v32, v33, "#Utils: Cannot get userSamplingId with userSamplingIdKey: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x24C1AF180](v35, -1, -1);
      MEMORY[0x24C1AF180](v34, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v27 = sub_24794ED34();
    __swift_project_value_buffer(v27, qword_27EE58DF8);
    v28 = sub_24794ED14();
    v29 = sub_24794F154();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2478E1000, v28, v29, "#Utils: Cannot get defaults", v30, 2u);
      MEMORY[0x24C1AF180](v30, -1, -1);
    }
  }

  v48 = *(v53 + 56);

  return v48(a3, 1, 1, v9);
}

void sub_247937DB0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_24794EEF4();
  v2 = [v0 initWithSuiteName_];

  qword_27EE58E58 = v2;
}

uint64_t sub_247937E20(uint64_t a1, uint64_t a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() sharedManager];
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  v4 = sub_24794EEF4();
  v23[0] = 0;
  v5 = [v3 getEnrollmentIdWithLocale:v4 error:v23];

  v6 = v23[0];
  if (v5)
  {
    v7 = sub_24794EF04();
    v9 = v8;
    v10 = v6;

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v11 = sub_24794ED34();
    __swift_project_value_buffer(v11, qword_27EE58DF8);

    v12 = sub_24794ED14();
    v13 = sub_24794F154();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_247924380(v7, v9, v23);
      _os_log_impl(&dword_2478E1000, v12, v13, "#Utils: get enrollmentId: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C1AF180](v15, -1, -1);
      MEMORY[0x24C1AF180](v14, -1, -1);
    }
  }

  else
  {
    v16 = v23[0];
    v17 = sub_24794E9D4();

    swift_willThrow();
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v18 = sub_24794ED34();
    __swift_project_value_buffer(v18, qword_27EE58DF8);
    v19 = sub_24794ED14();
    v20 = sub_24794F154();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2478E1000, v19, v20, "#Utils: Cannot get enrollmentId for locale", v21, 2u);
      MEMORY[0x24C1AF180](v21, -1, -1);
    }

    return 0;
  }

  return v7;
}

uint64_t sub_247938110(uint64_t a1, uint64_t a2)
{
  if (qword_27EE571E0 != -1)
  {
    v21 = a1;
    v22 = a2;
    swift_once();
    a1 = v21;
    a2 = v22;
  }

  v2 = qword_27EE58E58;
  if (!qword_27EE58E58)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v7 = sub_24794ED34();
    __swift_project_value_buffer(v7, qword_27EE58DF8);
    v3 = sub_24794ED14();
    v8 = sub_24794F154();
    if (os_log_type_enabled(v3, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2478E1000, v3, v8, "#Utils: Cannot get defaults", v9, 2u);
      MEMORY[0x24C1AF180](v9, -1, -1);
    }

    goto LABEL_26;
  }

  *&v26[0] = a1;
  *(&v26[0] + 1) = a2;

  v3 = v2;
  MEMORY[0x24C1AE4C0](45, 0xE100000000000000);

  MEMORY[0x24C1AE4C0](0xD00000000000001DLL, 0x8000000247957320);

  v4 = v26[0];
  v5 = sub_24794EEF4();
  v6 = [v3 objectForKey:v5];

  if (v6)
  {
    sub_24794F284();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26[0] = v24;
  v26[1] = v25;
  if (!*(&v25 + 1))
  {
    sub_2478E9620(v26, &qword_27EE57348, &unk_2479521B0);
LABEL_20:
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v15 = sub_24794ED34();
    __swift_project_value_buffer(v15, qword_27EE58DF8);

    v16 = sub_24794ED14();
    v17 = sub_24794F154();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v26[0] = v19;
      *v18 = 136315138;
      v20 = sub_247924380(v4, *(&v4 + 1), v26);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_2478E1000, v16, v17, "#Utils: Cannot get aggregated sample count from legacy for: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x24C1AF180](v19, -1, -1);
      MEMORY[0x24C1AF180](v18, -1, -1);
    }

    else
    {
    }

LABEL_26:
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0 || v23 < 0)
  {
    goto LABEL_20;
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v10 = sub_24794ED34();
  __swift_project_value_buffer(v10, qword_27EE58DF8);
  v11 = sub_24794ED14();
  v12 = sub_24794F154();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v23;
    _os_log_impl(&dword_2478E1000, v11, v12, "#Utils: get uploaded SampleCount from LegacyVersion is %ld ", v13, 0xCu);
    MEMORY[0x24C1AF180](v13, -1, -1);
  }

  return v23;
}

void sub_24793857C()
{
  [objc_opt_self() removeAllSamplingMetaData];
  if (qword_27EE571E0 != -1)
  {
    goto LABEL_36;
  }

  while (qword_27EE58E58)
  {
    v0 = qword_27EE571C0;
    v37 = qword_27EE58E58;
    if (v0 != -1)
    {
      swift_once();
    }

    v1 = sub_24794ED34();
    __swift_project_value_buffer(v1, qword_27EE58DF8);
    v2 = sub_24794ED14();
    v3 = sub_24794F154();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2478E1000, v2, v3, "#SpkrIdSamplingPolicy: Removing legacy user default", v4, 2u);
      MEMORY[0x24C1AF180](v4, -1, -1);
    }

    v5 = [v37 dictionaryRepresentation];
    v6 = sub_24794EE84();

    v7 = sub_24794ED14();
    v8 = sub_24794F154();

    v36 = v6;
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v39 = v10;
      *v9 = 136315138;
      v11 = sub_24794EE94();
      v13 = sub_247924380(v11, v12, &v39);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_2478E1000, v7, v8, "#SpkrIdSamplingPolicy: speakerIdUserDefaultDict: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x24C1AF180](v10, -1, -1);
      MEMORY[0x24C1AF180](v9, -1, -1);
    }

    v14 = 0;
    v15 = v6 + 64;
    v16 = 1 << *(v6 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v6 + 64);
    v19 = (v16 + 63) >> 6;
    while (v18)
    {
      while (1)
      {
LABEL_18:
        v22 = (*(v6 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v18)))));
        v24 = *v22;
        v23 = v22[1];
        swift_bridgeObjectRetain_n();
        v25 = sub_24794ED14();
        v26 = sub_24794F154();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v39 = v28;
          *v27 = 136315138;
          *(v27 + 4) = sub_247924380(v24, v23, &v39);
          _os_log_impl(&dword_2478E1000, v25, v26, "#SpkrIdSamplingPolicy: Iterating over userDefaultKey: %s", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v28);
          MEMORY[0x24C1AF180](v28, -1, -1);
          MEMORY[0x24C1AF180](v27, -1, -1);
        }

        v18 &= v18 - 1;
        v39 = v24;
        v40 = v23;
        sub_24791F02C();
        if (sub_24794F274())
        {
          break;
        }

        v39 = v24;
        v40 = v23;
        if (sub_24794F274())
        {
          break;
        }

        v39 = v24;
        v40 = v23;
        if (sub_24794F274())
        {
          break;
        }

        v6 = v36;
        if (!v18)
        {
          goto LABEL_14;
        }
      }

      v29 = sub_24794ED14();
      v30 = sub_24794F154();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v39 = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_247924380(v24, v23, &v39);
        _os_log_impl(&dword_2478E1000, v29, v30, "#SpkrIdSamplingPolicy: Remove legacy user default key: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x24C1AF180](v32, -1, -1);
        MEMORY[0x24C1AF180](v31, -1, -1);
      }

      v6 = v36;
      v20 = sub_24794EEF4();

      [v37 removeObjectForKey_];
    }

LABEL_14:
    while (1)
    {
      v21 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        return;
      }

      v18 = *(v15 + 8 * v21);
      ++v14;
      if (v18)
      {
        v14 = v21;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_36:
    swift_once();
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v33 = sub_24794ED34();
  __swift_project_value_buffer(v33, qword_27EE58DF8);
  v38 = sub_24794ED14();
  v34 = sub_24794F154();
  if (os_log_type_enabled(v38, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_2478E1000, v38, v34, "#SpkrIdSamplingPolicy: cannot get uerDefaults from legacy build", v35, 2u);
    MEMORY[0x24C1AF180](v35, -1, -1);
  }
}

id sub_247938C78()
{
  type metadata accessor for ODSampleSELFReporter();
  v0 = swift_allocObject();
  result = [objc_opt_self() sharedLoggerWithPersistenceConfiguration_];
  *(v0 + 16) = result;
  qword_27EE58E60 = v0;
  return result;
}

uint64_t ODSampleSELFReporter.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_opt_self() sharedLoggerWithPersistenceConfiguration_];
  return v0;
}

uint64_t sub_247938D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_247938D9C, 0, 0);
}

uint64_t sub_247938D9C()
{
  v1 = [*(v0 + 16) wrapAsAnyEvent];
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v1;
    v4 = sub_24794ED14();
    v5 = sub_24794F154();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v3;
      *v7 = v2;
      v8 = v3;
      _os_log_impl(&dword_2478E1000, v4, v5, "#SELFODSampleReporter: FBF Shared reporter: store the event %@ and send to server", v6, 0xCu);
      sub_2478EFF2C(v7);
      MEMORY[0x24C1AF180](v7, -1, -1);
      MEMORY[0x24C1AF180](v6, -1, -1);
    }

    v9 = swift_task_alloc();
    *(v0 + 64) = v9;
    *v9 = v0;
    v9[1] = sub_247938FC8;
    v10 = *(v0 + 40);
    v11 = *(v0 + 24);
    v12 = *(v0 + 32);

    return sub_24793950C(v3, v11, v12, v10);
  }

  else
  {
    v14 = sub_24794ED14();
    v15 = sub_24794F164();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2478E1000, v14, v15, "#SELFODSampleReporter: Couldn't package event in AnyEvent wrapper.", v16, 2u);
      MEMORY[0x24C1AF180](v16, -1, -1);
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_247938FC8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_247939140;
  }

  else
  {
    v2 = sub_2479390DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2479390DC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247939140()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2479391A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2479391CC, 0, 0);
}

uint64_t sub_2479391CC()
{
  v1 = [*(v0 + 16) wrapAsAnyEvent];
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v1;
    v4 = sub_24794ED14();
    v5 = sub_24794F154();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v3;
      *v7 = v2;
      v8 = v3;
      _os_log_impl(&dword_2478E1000, v4, v5, "#ODDSiriSchemaODDSiriClientEvent: FBF Shared reporter: store the event %@ and send to server", v6, 0xCu);
      sub_2478EFF2C(v7);
      MEMORY[0x24C1AF180](v7, -1, -1);
      MEMORY[0x24C1AF180](v6, -1, -1);
    }

    v9 = swift_task_alloc();
    *(v0 + 64) = v9;
    *v9 = v0;
    v9[1] = sub_2479393F8;
    v10 = *(v0 + 40);
    v11 = *(v0 + 24);
    v12 = *(v0 + 32);

    return sub_24793950C(v3, v11, v12, v10);
  }

  else
  {
    v14 = sub_24794ED14();
    v15 = sub_24794F164();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2478E1000, v14, v15, "#ODDSiriSchemaODDSiriClientEvent: Couldn't package event in AnyEvent wrapper.", v16, 2u);
      MEMORY[0x24C1AF180](v16, -1, -1);
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_2479393F8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_24793A2E4;
  }

  else
  {
    v2 = sub_24793A2E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24793950C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return MEMORY[0x2822009F8](sub_247939534, 0, 0);
}

uint64_t sub_247939534()
{
  v1 = *(v0 + 144);
  v2 = sub_24794ED14();
  v3 = sub_24794F154();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 144);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    _os_log_impl(&dword_2478E1000, v2, v3, "#SELFODSampleReporter: FBF reporter: store the event %@ and send to server", v5, 0xCu);
    sub_2478EFF2C(v6);
    MEMORY[0x24C1AF180](v6, -1, -1);
    MEMORY[0x24C1AF180](v5, -1, -1);
  }

  v8 = *(v0 + 176);
  v9 = *(v0 + 144);

  v10 = *(v8 + 16);
  v11 = sub_24794EEF4();
  *(v0 + 184) = v11;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_247939738;
  v12 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE576B8, &unk_247951E20);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_24793991C;
  *(v0 + 104) = &block_descriptor_0;
  *(v0 + 112) = v12;
  [v10 reportSiriInstrumentationEvent:v9 forBundleID:v11 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_247939738()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_2479398AC;
  }

  else
  {
    v2 = sub_247939848;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_247939848()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2479398AC(uint64_t a1)
{
  v2 = *(v1 + 184);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_24793991C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A8, &qword_247951540);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t ODSampleSELFReporter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_247939A88(uint64_t a1)
{
  v2 = sub_24794EBB4();
  v76 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v74 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v64 - v5;
  v7 = sub_24794EC04();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v75 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v64 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v64 - v14;
  v16 = [objc_allocWithZone(MEMORY[0x277D587F0]) init];
  if (v16)
  {
    v17 = v16;
    v18 = [objc_allocWithZone(MEMORY[0x277D587F8]) init];
    if (v18)
    {
      v73 = v2;
      v19 = v18;
      sub_24794EBF4();
      v20 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v21 = sub_24794EBE4();
      v22 = [v20 initWithNSUUID_];

      v71 = *(v8 + 8);
      v72 = v8 + 8;
      v71(v15, v7);
      [v19 setMhId_];

      [v17 setSpeakerIdModelOneSessionReportedTier1_];
      v70 = v19;
      v23 = v19;
      v24 = v13;
      [v17 setEventMetadata_];
      v25 = v6;
      sub_24794EBA4();
      v26 = [objc_opt_self() sharedAnalytics];
      v27 = [v26 defaultMessageStream];

      sub_24794EBF4();
      sub_24794EB74();
      if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v28 > -1.0)
      {
        if (v28 < 1.84467441e19)
        {
          v29 = v28;
          v30 = sub_24794EBE4();
          v69 = v27;
          [v27 emitMessage:v17 timestamp:v29 isolatedStreamUUID:v30];

          if (qword_27EE571C0 == -1)
          {
            goto LABEL_7;
          }

          goto LABEL_25;
        }

LABEL_24:
        __break(1u);
LABEL_25:
        swift_once();
LABEL_7:
        v31 = sub_24794ED34();
        __swift_project_value_buffer(v31, qword_27EE58DF8);
        v32 = v76;
        isa = v76[2].isa;
        v34 = v74;
        v35 = v25;
        v68 = v25;
        v36 = v73;
        (isa)(v74, v35, v73);
        v37 = v75;
        (*(v8 + 16))(v75, v24, v7);
        v38 = sub_24794ED14();
        v39 = sub_24794F144();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v67 = v24;
          v41 = v36;
          v42 = v40;
          v66 = swift_slowAlloc();
          v77 = v66;
          *v42 = 136315394;
          sub_24793A29C(&qword_27EE57288, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v65 = v39;
          v43 = sub_24794F4D4();
          v45 = v44;
          v64 = v38;
          v46 = v32[1].isa;
          v46(v34, v41);
          v47 = sub_247924380(v43, v45, &v77);

          *(v42 + 4) = v47;
          *(v42 + 12) = 2080;
          sub_24793A29C(&qword_27EE57250, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v48 = sub_24794F4D4();
          v50 = v49;
          v51 = v71;
          v71(v37, v7);
          v52 = sub_247924380(v48, v50, &v77);

          *(v42 + 14) = v52;
          v53 = v64;
          _os_log_impl(&dword_2478E1000, v64, v65, "#MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1: SiriAnalytics emitted message at: %s with stream UUID: %s", v42, 0x16u);
          v54 = v66;
          swift_arrayDestroy();
          MEMORY[0x24C1AF180](v54, -1, -1);
          MEMORY[0x24C1AF180](v42, -1, -1);

          v51(v67, v7);
          v46(v68, v73);
        }

        else
        {

          v62 = v71;
          v71(v37, v7);
          v63 = v32[1].isa;
          v63(v34, v36);
          v62(v24, v7);
          v63(v68, v36);
        }

        return;
      }

      __break(1u);
      goto LABEL_24;
    }

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v58 = sub_24794ED34();
    __swift_project_value_buffer(v58, qword_27EE58DF8);
    v76 = sub_24794ED14();
    v59 = sub_24794F164();
    if (os_log_type_enabled(v76, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_2478E1000, v76, v59, "#ODSampleSELFReporter: Cannot create event metadata", v60, 2u);
      MEMORY[0x24C1AF180](v60, -1, -1);
    }
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v55 = sub_24794ED34();
    __swift_project_value_buffer(v55, qword_27EE58DF8);
    v76 = sub_24794ED14();
    v56 = sub_24794F164();
    if (os_log_type_enabled(v76, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_2478E1000, v76, v56, "#ODSampleSELFReporter: Cannot create topLevel Message", v57, 2u);
      MEMORY[0x24C1AF180](v57, -1, -1);
    }
  }

  v61 = v76;
}

uint64_t sub_24793A29C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_24793A2EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D8, &qword_247950660);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v45 - v2;
  v4 = sub_24794E9F4();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24794EA84();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  v14 = [objc_opt_self() defaultManager];
  sub_24794EA14();
  v15 = sub_24794F134();
  if (v15)
  {
    v48 = v14;
    v49 = v13;
    v50 = v0;
    v47 = v15;
    sub_24794F124();
    v56 = v6;
    sub_24794E9E4();
    v51 = v8;
    if (v55)
    {
      v16 = (v8 + 56);
      v17 = (v8 + 32);
      v18 = (v8 + 8);
      v54 = MEMORY[0x277D84F90];
      v19 = v56;
      while (1)
      {
        v20 = swift_dynamicCast();
        v21 = *v16;
        if (v20)
        {
          v21(v3, 0, 1, v7);
          (*v17)(v11, v3, v7);
          if (sub_24794EA04() == 7168880 && v22 == 0xE300000000000000)
          {

LABEL_13:
            v24 = sub_24794EA74();
            v45 = v25;
            v46 = v24;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v54 = sub_24793A9D0(0, *(v54 + 2) + 1, 1, v54);
            }

            v27 = *(v54 + 2);
            v26 = *(v54 + 3);
            if (v27 >= v26 >> 1)
            {
              v54 = sub_24793A9D0((v26 > 1), v27 + 1, 1, v54);
            }

            (*v18)(v11, v7);
            v28 = v54;
            *(v54 + 2) = v27 + 1;
            v29 = &v28[16 * v27];
            v30 = v45;
            *(v29 + 4) = v46;
            *(v29 + 5) = v30;
            v19 = v56;
            goto LABEL_10;
          }

          v23 = sub_24794F4E4();

          if (v23)
          {
            goto LABEL_13;
          }

          (*v18)(v11, v7);
          v19 = v56;
        }

        else
        {
          v21(v3, 1, 1, v7);
          sub_24793B230(v3);
        }

LABEL_10:
        sub_24794E9E4();
        if (!v55)
        {
          goto LABEL_24;
        }
      }
    }

    v54 = MEMORY[0x277D84F90];
    v19 = v56;
LABEL_24:
    (*(v52 + 8))(v19, v53);
    v37 = v48;
    v36 = v49;
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v38 = sub_24794ED34();
    __swift_project_value_buffer(v38, qword_27EE58DF8);
    v14 = v54;
    swift_bridgeObjectRetain_n();
    v39 = sub_24794ED14();
    v40 = sub_24794F154();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v51;
    if (v41)
    {
      v43 = swift_slowAlloc();
      *v43 = 134217984;
      *(v43 + 4) = *(v14 + 2);
      swift_bridgeObjectRelease_n();
      _os_log_impl(&dword_2478E1000, v39, v40, "#RequestAudioFileManager: Found %ld PCM files", v43, 0xCu);
      MEMORY[0x24C1AF180](v43, -1, -1);

      (*(v42 + 8))(v36, v7);
    }

    else
    {

      (*(v42 + 8))(v36, v7);
    }
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v31 = sub_24794ED34();
    __swift_project_value_buffer(v31, qword_27EE58DF8);
    v32 = sub_24794ED14();
    v33 = sub_24794F164();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2478E1000, v32, v33, "#RequestAudioFileManager: Failed to get all PCM files with error", v34, 2u);
      MEMORY[0x24C1AF180](v34, -1, -1);
    }

    sub_2478E95CC();
    swift_allocError();
    *v35 = xmmword_247951E30;
    *(v35 + 16) = 2;
    swift_willThrow();

    (*(v8 + 8))(v13, v7);
  }

  return v14;
}

uint64_t sub_24793A96C()
{

  return swift_deallocClassInstance();
}

char *sub_24793A9D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE576C0, &qword_247951E80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24793AADC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57260, &qword_2479503A8);
  v10 = *(sub_24794EC04() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_24794EC04() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_24793ACD8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57430, &qword_247950E88);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57428, &qword_247950E80) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57428, &qword_247950E80) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_24793AEC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE576D0, &qword_247951E90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_24793AFF0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_24793B124(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE576E8, &unk_247951EB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24793B230(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D8, &qword_247950660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_24793B298()
{
  result = *(v0 + 48);
  if (!result)
  {
    result = sub_24793A2EC();
    if (!v1)
    {
      *(v0 + 48) = result;

      result = *(v0 + 48);
      if (!result)
      {
        sub_2478E95CC();
        swift_allocError();
        *v3 = xmmword_24794FEF0;
        *(v3 + 16) = 2;
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t SamplingMetaDataPrefStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

_BYTE *sub_24793B3D0()
{
  v1 = *(v0 + 16);
  v2 = sub_24794EEF4();

  v3 = [v1 dictionaryForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_24794EE84();

  v5 = sub_24793F6A8(v4);

  return v5;
}

void sub_24793B51C(void *a1)
{
  v1 = [a1 dictionaryRepresentation];
  v2 = sub_24794EE84();

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_24793DFD0(*(v2 + 16), 0);
    v5 = sub_24793F3FC(&v13, v4 + 4, v3, v2);
    sub_2478FE384(v13);
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v12 = v4[2];
  if (v12)
  {
    v6 = 0;
    v7 = v4 + 5;
    while (v6 < v4[2])
    {
      ++v6;

      v9 = sub_24794F004();

      if (v9 & 1) != 0 || (v10 = sub_24794F004(), , (v10))
      {
        v8 = sub_24794EEF4();

        [a1 removeObjectForKey_];
      }

      else
      {
      }

      v7 += 2;
      if (v12 == v6)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

CoreSpeechDataAnalytics::SamplingSelectionStatus_optional __swiftcall SamplingSelectionStatus.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_24793B7F0()
{
  result = qword_27EE576F0;
  if (!qword_27EE576F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE576F0);
  }

  return result;
}

_BYTE *sub_24793B85C(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_siriSessionSelected;
  *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_siriSessionSelected) = 0;
  v5 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_enrollmentMetadata;
  *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_enrollmentMetadata) = 0;
  if (!*(a1 + 16))
  {
    goto LABEL_7;
  }

  v6 = sub_24792BEF8(0xD000000000000013, 0x8000000247957820);
  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_2478E9680(*(a1 + 56) + 32 * v6, &v14, &qword_27EE57348, &unk_2479521B0);
  v16 = v14;
  v17 = v15;
  if (!*(&v15 + 1))
  {
    sub_2478E9620(&v16, &qword_27EE57348, &unk_2479521B0);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57738, &unk_247952148);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v8 = sub_24794D76C(v13);

LABEL_8:
  *(v2 + v4) = v8;

  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

  v9 = sub_24792BEF8(0xD000000000000015, 0x8000000247957840);
  if ((v10 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_2478E9680(*(a1 + 56) + 32 * v9, &v14, &qword_27EE57348, &unk_2479521B0);
  v16 = v14;
  v17 = v15;
  if (!*(&v15 + 1))
  {
    sub_2478E9620(&v16, &qword_27EE57348, &unk_2479521B0);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57738, &unk_247952148);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  v11 = sub_24792DF78(v13);

LABEL_15:
  *(v2 + v5) = v11;

  return sub_24793BA70(a1);
}

_BYTE *sub_24793BA70(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  v10 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
  v11 = sub_24794EBB4();
  v12 = *(*(v11 - 8) + 56);
  v12(v2 + v10, 1, 1, v11);
  v13 = (v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId);
  *v13 = 0;
  v13[1] = 0;
  *(v2 + 16) = 0;
  v12(v9, 1, 1, v11);
  swift_beginAccess();
  sub_24793F5EC(v9, v2 + v10);
  swift_endAccess();
  if (*(a1 + 16))
  {
    v14 = sub_24792BEF8(0xD00000000000001CLL, 0x8000000247957760);
    if (v15)
    {
      sub_2478E9680(*(a1 + 56) + 32 * v14, &v43, &qword_27EE57348, &unk_2479521B0);
      v45 = v43;
      v46 = v44;
      if (!*(&v44 + 1))
      {
        sub_2478E9620(&v45, &qword_27EE57348, &unk_2479521B0);
        if (!*(a1 + 16))
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      }

      if (swift_dynamicCast())
      {
        v16 = v42;
        *v13 = v41;
        v13[1] = v16;
      }
    }
  }

  if (!*(a1 + 16))
  {
    goto LABEL_15;
  }

LABEL_7:
  v17 = sub_24792BEF8(0xD000000000000017, 0x8000000247957780);
  if (v18)
  {
    sub_2478E9680(*(a1 + 56) + 32 * v17, &v43, &qword_27EE57348, &unk_2479521B0);
    v45 = v43;
    v46 = v44;
    if (*(&v44 + 1))
    {
      if (swift_dynamicCast())
      {
        v40 = v41;
        v19 = [objc_opt_self() defaultDateFormatter];
        v39 = v19;
        v40 = sub_24794EEF4();

        v20 = v40;
        v21 = [v19 dateFromString_];

        if (v21)
        {
          sub_24794EB94();

          v22 = 0;
        }

        else
        {
          v22 = 1;
        }

        v12(v7, v22, 1, v11);
        swift_beginAccess();
        sub_24793F5EC(v7, v2 + v10);
        swift_endAccess();
        if (!*(a1 + 16))
        {
          goto LABEL_37;
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_2478E9620(&v45, &qword_27EE57348, &unk_2479521B0);
    }
  }

LABEL_15:
  if (!*(a1 + 16))
  {
    goto LABEL_37;
  }

LABEL_16:
  v23 = sub_24792BEF8(0xD000000000000013, 0x80000002479577A0);
  if ((v24 & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_2478E9680(*(a1 + 56) + 32 * v23, &v43, &qword_27EE57348, &unk_2479521B0);
  v45 = v43;
  v46 = v44;
  if (*(&v44 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && v41 < 3)
    {
      *(v2 + 16) = v41;
      if (*(a1 + 16))
      {
        v25 = sub_24792BEF8(0xD000000000000014, 0x80000002479577C0);
        if (v26)
        {
          sub_2478E9680(*(a1 + 56) + 32 * v25, &v43, &qword_27EE57348, &unk_2479521B0);
          v45 = v43;
          v46 = v44;
          if (!*(&v44 + 1))
          {

            sub_2478E9620(&v45, &qword_27EE57348, &unk_2479521B0);
            goto LABEL_31;
          }

          if (swift_dynamicCast())
          {
            v27 = v42;
            v28 = (v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_locale);
            *v28 = v41;
            v28[1] = v27;
            if (*(a1 + 16) && (v29 = sub_24792BEF8(0xD000000000000012, 0x8000000247957700), (v30 & 1) != 0))
            {
              sub_2478E9680(*(a1 + 56) + 32 * v29, &v43, &qword_27EE57348, &unk_2479521B0);

              v45 = v43;
              v46 = v44;
              if (*(&v44 + 1))
              {
                if (swift_dynamicCast())
                {
                  v31 = v41;
LABEL_48:
                  *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_uploadedNumRecords) = v31;
                  return v2;
                }
              }

              else
              {
                sub_2478E9620(&v45, &qword_27EE57348, &unk_2479521B0);
              }
            }

            else
            {
            }

            v31 = 0;
            goto LABEL_48;
          }
        }
      }

LABEL_31:
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v32 = sub_24794ED34();
      __swift_project_value_buffer(v32, qword_27EE58DF8);
      v33 = sub_24794ED14();
      v34 = sub_24794F164();
      if (!os_log_type_enabled(v33, v34))
      {
        goto LABEL_43;
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "#SamplingPolicyMetaData: DataCollectionType cannot be created";
      goto LABEL_42;
    }

LABEL_37:

    goto LABEL_38;
  }

  sub_2478E9620(&v45, &qword_27EE57348, &unk_2479521B0);
LABEL_38:
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v37 = sub_24794ED34();
  __swift_project_value_buffer(v37, qword_27EE58DF8);
  v33 = sub_24794ED14();
  v34 = sub_24794F164();
  if (!os_log_type_enabled(v33, v34))
  {
    goto LABEL_43;
  }

  v35 = swift_slowAlloc();
  *v35 = 0;
  v36 = "#SamplingPolicyMetaData: DataCollectionState cannot be created";
LABEL_42:
  _os_log_impl(&dword_2478E1000, v33, v34, v36, v35, 2u);
  MEMORY[0x24C1AF180](v35, -1, -1);
LABEL_43:

  sub_2478E9620(v2 + v10, &qword_27EE572D0, &unk_2479504E0);

  type metadata accessor for SamplingPolicyMetaData(0);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_24793C1DC()
{
  v1 = v0;
  v2 = sub_24793C420();
  if (*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_siriSessionSelected))
  {

    v3 = sub_24794879C();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57738, &unk_247952148);
    *&v16 = v3;
    sub_247933794(&v16, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24794B0E4(v15, 0xD000000000000013, 0x8000000247957820, isUniquelyReferenced_nonNull_native);
  }

  v5 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_enrollmentMetadata);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57740, &qword_247952158);
    inited = swift_initStackObject();
    strcpy((inited + 32), "voiceProfileId");
    *(inited + 16) = xmmword_247951F10;
    *(inited + 47) = -18;

    v7 = sub_24794EBD4();
    v8 = MEMORY[0x277D837D0];
    *(inited + 48) = v7;
    *(inited + 56) = v9;
    *(inited + 72) = v8;
    *(inited + 80) = 0x656C61636F6CLL;
    *(inited + 88) = 0xE600000000000000;
    v11 = *(v5 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics18EnrollmentMetadata_locale);
    v10 = *(v5 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics18EnrollmentMetadata_locale + 8);
    *(inited + 120) = v8;
    *(inited + 96) = v11;
    *(inited + 104) = v10;

    v12 = sub_24794D0D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57748, &qword_247952160);
    swift_arrayDestroy();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57738, &unk_247952148);
    *&v16 = v12;
    sub_247933794(&v16, v15);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_24794B0E4(v15, 0xD000000000000015, 0x8000000247957840, v13);
  }

  return v2;
}

uint64_t sub_24793C420()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34[-1] - v3;
  v5 = sub_24794EBB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24794D0D4(MEMORY[0x277D84F90]);
  v10 = *(v1 + 16);
  v37 = MEMORY[0x277D83B88];
  *&v36 = v10;
  sub_247933794(&v36, v35);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34[0] = v9;
  sub_24794B0E4(v35, 0xD000000000000013, 0x80000002479577A0, isUniquelyReferenced_nonNull_native);
  v12 = v34[0];
  v13 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
  swift_beginAccess();
  sub_2478E9680(v1 + v13, v4, &qword_27EE572D0, &unk_2479504E0);
  v14 = (*(v6 + 48))(v4, 1, v5);
  v15 = MEMORY[0x277D837D0];
  if (v14 == 1)
  {
    sub_2478E9620(v4, &qword_27EE572D0, &unk_2479504E0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v16 = [objc_opt_self() defaultDateFormatter];
    v17 = sub_24794EB34();
    v18 = [v16 stringFromDate_];

    v19 = sub_24794EF04();
    v21 = v20;

    v37 = v15;
    *&v36 = v19;
    *(&v36 + 1) = v21;
    sub_247933794(&v36, v35);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v33 = v12;
    sub_24794B0E4(v35, 0xD000000000000017, 0x8000000247957780, v22);
    (*(v6 + 8))(v8, v5);
    v12 = v33;
  }

  v23 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId + 8);
  if (v23)
  {
    v24 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId);
    v37 = v15;
    *&v36 = v24;
    *(&v36 + 1) = v23;
    sub_247933794(&v36, v35);

    v25 = swift_isUniquelyReferenced_nonNull_native();
    v33 = v12;
    sub_24794B0E4(v35, 0xD00000000000001CLL, 0x8000000247957760, v25);
    v12 = v33;
  }

  v26 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_locale);
  v27 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_locale + 8);
  v37 = v15;
  *&v36 = v26;
  *(&v36 + 1) = v27;
  sub_247933794(&v36, v35);

  v28 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v12;
  sub_24794B0E4(v35, 0xD000000000000014, 0x80000002479577C0, v28);
  v29 = v33;
  v30 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_uploadedNumRecords);
  v37 = MEMORY[0x277D83E88];
  *&v36 = v30;
  sub_247933794(&v36, v35);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v29;
  sub_24794B0E4(v35, 0xD000000000000012, 0x8000000247957700, v31);
  return v33;
}

uint64_t sub_24793C8C8(uint64_t a1, void *a2)
{
  *(v2 + *a2) = a1;
}

void sub_24793C904(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_enrollmentMetadata) = 0;

  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_siriSessionSelected) = 0;

  sub_24793C960(a1);
}

void sub_24793C960(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_24794EC04();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24794EBF4();
  v11 = sub_24794EBD4();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  *(v2 + 16) = 1;
  type metadata accessor for Utils();
  sub_247940B60(a1, v6);
  v14 = sub_24794EBB4();
  (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  v15 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
  swift_beginAccess();
  sub_24793F5EC(v6, v2 + v15);
  swift_endAccess();
  v16 = (v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId);
  *v16 = v11;
  v16[1] = v13;

  *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_uploadedNumRecords) = 0;
}

uint64_t sub_24793CB48()
{
}

uint64_t sub_24793CB88()
{
  sub_2478E9620(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate, &qword_27EE572D0, &unk_2479504E0);

  return swift_deallocClassInstance();
}

_BYTE *sub_24793CCE8(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

  v4 = sub_24792BEF8(0xD000000000000014, 0x80000002479577E0);
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_2478E9680(*(a1 + 56) + 32 * v4, &v14, &qword_27EE57348, &unk_2479521B0);
  v16 = v14;
  v17 = v15;
  if (!*(&v15 + 1))
  {

    sub_2478E9620(&v16, &qword_27EE57348, &unk_2479521B0);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:

LABEL_11:
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v9 = sub_24794ED34();
    __swift_project_value_buffer(v9, qword_27EE58DF8);
    v10 = sub_24794ED14();
    v11 = sub_24794F164();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2478E1000, v10, v11, "#SamplingPolicyMetaData: uploadedNumRecordsHS is nil", v12, 2u);
      MEMORY[0x24C1AF180](v12, -1, -1);
    }

    goto LABEL_16;
  }

  *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31ButtonPressUserSamplingMetaData_uploadedNumRecordsHS) = v13;
  if (*(a1 + 16))
  {
    v6 = sub_24792BEF8(0xD000000000000014, 0x8000000247957800);
    if (v7)
    {
      sub_2478E9680(*(a1 + 56) + 32 * v6, &v14, &qword_27EE57348, &unk_2479521B0);
      v16 = v14;
      v17 = v15;
      if (!*(&v15 + 1))
      {

        sub_2478E9620(&v16, &qword_27EE57348, &unk_2479521B0);
        goto LABEL_16;
      }

      if (swift_dynamicCast())
      {
        *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31ButtonPressUserSamplingMetaData_uploadedNumRecordsJS) = v13;
        return sub_24793CF98(a1);
      }
    }
  }

LABEL_16:
  type metadata accessor for ButtonPressUserSamplingMetaData(0);
  swift_deallocPartialClassInstance();
  return 0;
}

_BYTE *sub_24793CF98(uint64_t a1)
{
  v2 = v1;
  v4 = v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedEventCountFromLegacy;
  *v4 = 0;
  *(v4 + 8) = 1;
  if (*(a1 + 16))
  {
    v5 = sub_24792BEF8(0xD000000000000012, 0x8000000247957720);
    if (v6)
    {
      sub_2478E9680(*(a1 + 56) + 32 * v5, &v25, &qword_27EE57348, &unk_2479521B0);
      v27 = v25;
      v28 = v26;
      if (!*(&v26 + 1))
      {

        sub_2478E9620(&v27, &qword_27EE57348, &unk_2479521B0);
        goto LABEL_11;
      }

      if (swift_dynamicCast())
      {
        v7 = (v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileId);
        *v7 = v23;
        v7[1] = v24;
        if (*(a1 + 16))
        {
          v8 = sub_24792BEF8(0xD000000000000014, 0x8000000247957630);
          if (v9)
          {
            sub_2478E9680(*(a1 + 56) + 32 * v8, &v25, &qword_27EE57348, &unk_2479521B0);
            v27 = v25;
            v28 = v26;
            if (*(&v26 + 1))
            {
              if (swift_dynamicCast())
              {
                v10 = v23;
LABEL_19:
                *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedNumRecords) = v10;
                if (*(a1 + 16))
                {
                  v16 = sub_24792BEF8(0xD000000000000019, 0x8000000247957740);
                  if (v17)
                  {
                    sub_2478E9680(*(a1 + 56) + 32 * v16, &v25, &qword_27EE57348, &unk_2479521B0);
                    v27 = v25;
                    v28 = v26;
                    if (*(&v26 + 1))
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57560, &unk_2479519C0);
                      if (swift_dynamicCast())
                      {
                        v18 = sub_24793F554(v23);

LABEL_26:
                        *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileIdsSampled) = v18;
                        if (*(a1 + 16))
                        {
                          v19 = sub_24792BEF8(0xD00000000000001ELL, 0x8000000247957670);
                          if (v20)
                          {
                            sub_2478E9680(*(a1 + 56) + 32 * v19, &v25, &qword_27EE57348, &unk_2479521B0);
                            v27 = v25;
                            v28 = v26;
                            if (*(&v26 + 1))
                            {
                              if (swift_dynamicCast())
                              {
                                v21 = 0;
                                v22 = v23;
LABEL_33:
                                *v4 = v22;
                                *(v4 + 8) = v21;
                                return sub_24793BA70(a1);
                              }
                            }

                            else
                            {
                              sub_2478E9620(&v27, &qword_27EE57348, &unk_2479521B0);
                            }
                          }
                        }

                        v22 = 0;
                        v21 = 1;
                        goto LABEL_33;
                      }
                    }

                    else
                    {
                      sub_2478E9620(&v27, &qword_27EE57348, &unk_2479521B0);
                    }
                  }
                }

                v18 = MEMORY[0x277D84FA0];
                goto LABEL_26;
              }
            }

            else
            {
              sub_2478E9620(&v27, &qword_27EE57348, &unk_2479521B0);
            }
          }
        }

        v10 = 0;
        goto LABEL_19;
      }
    }
  }

LABEL_11:
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v11 = sub_24794ED34();
  __swift_project_value_buffer(v11, qword_27EE58DF8);
  v12 = sub_24794ED14();
  v13 = sub_24794F164();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2478E1000, v12, v13, "#SamplingPolicyMetaData: voiceProfileId is nil", v14, 2u);
    MEMORY[0x24C1AF180](v14, -1, -1);
  }

  type metadata accessor for EnrolledUserSamplingMetaData(0);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_24793D3DC()
{
  v1 = v0;
  v2 = sub_24793D4CC();
  v3 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31ButtonPressUserSamplingMetaData_uploadedNumRecordsHS);
  v4 = MEMORY[0x277D83E88];
  v11 = MEMORY[0x277D83E88];
  *&v10 = v3;
  sub_247933794(&v10, v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24794B0E4(v9, 0xD000000000000014, 0x80000002479577E0, isUniquelyReferenced_nonNull_native);
  v6 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31ButtonPressUserSamplingMetaData_uploadedNumRecordsJS);
  v11 = v4;
  *&v10 = v6;
  sub_247933794(&v10, v9);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_24794B0E4(v9, 0xD000000000000014, 0x8000000247957800, v7);
  return v2;
}

uint64_t sub_24793D4CC()
{
  v1 = v0;
  v2 = sub_24793C420();
  v3 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileId);
  v4 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileId + 8);
  v22 = MEMORY[0x277D837D0];
  *&v21 = v3;
  *(&v21 + 1) = v4;
  sub_247933794(&v21, v24);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23[0] = v2;
  sub_24794B0E4(v24, 0xD000000000000012, 0x8000000247957720, isUniquelyReferenced_nonNull_native);
  v6 = v23[0];
  v7 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedNumRecords);
  v8 = MEMORY[0x277D83E88];
  v22 = MEMORY[0x277D83E88];
  *&v21 = v7;
  sub_247933794(&v21, v24);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v23[0] = v6;
  sub_24794B0E4(v24, 0xD000000000000014, 0x8000000247957630, v9);
  v10 = v23[0];
  v11 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileIdsSampled;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = sub_24793DFD0(v13, 0);
    v15 = sub_24793F1A4(&v21, v14 + 4, v13, v12);
    v16 = v21;

    result = sub_2478FE384(v16);
    if (v15 != v13)
    {
      __break(1u);
      return result;
    }

    v8 = MEMORY[0x277D83E88];
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57560, &unk_2479519C0);
  *&v21 = v14;
  sub_247933794(&v21, v24);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_24794B0E4(v24, 0xD000000000000019, 0x8000000247957740, v18);
  if ((*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedEventCountFromLegacy + 8) & 1) == 0)
  {
    v19 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedEventCountFromLegacy);
    v22 = v8;
    *&v21 = v19;
    sub_247933794(&v21, v24);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_24794B0E4(v24, 0xD00000000000001ELL, 0x8000000247957670, v20);
  }

  return v10;
}

void sub_24793D798(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31ButtonPressUserSamplingMetaData_uploadedNumRecordsHS) = 0;
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31ButtonPressUserSamplingMetaData_uploadedNumRecordsJS) = 0;
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedNumRecords) = 0;
  v3 = v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedEventCountFromLegacy;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileIdsSampled;
  swift_beginAccess();
  *(v1 + v4) = MEMORY[0x277D84FA0];

  sub_24793C960(a1);
}

void sub_24793D83C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedNumRecords) = 0;
  v3 = v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedEventCountFromLegacy;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileIdsSampled;
  swift_beginAccess();
  *(v1 + v4) = MEMORY[0x277D84FA0];

  sub_24793C960(a1);
}

uint64_t sub_24793D8C8()
{
  sub_2478E9620(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate, &qword_27EE572D0, &unk_2479504E0);

  return swift_deallocClassInstance();
}

double sub_24793DA18(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_24793E0DC(&v5, a1, a2);
  swift_endAccess();

  return result;
}

double sub_24793DA94()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_24793DAFC(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedEventCountFromLegacy;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_24793DB18()
{
  v1 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileId);

  return v1;
}

void sub_24793DB6C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileId);
  *v3 = a1;
  v3[1] = a2;
}

double sub_24793DBB4()
{

  return result;
}

uint64_t sub_24793DBF8()
{
  sub_2478E9620(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate, &qword_27EE572D0, &unk_2479504E0);

  return swift_deallocClassInstance();
}

uint64_t sub_24793DD68()
{
  sub_2478E9620(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate, &qword_27EE572D0, &unk_2479504E0);

  return swift_deallocClassInstance();
}

void sub_24793DE2C(uint64_t a1)
{
  sub_247928B88(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24793DEE8()
{
  v1 = *v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24793DF74;
  *(v2 + 24) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57728, &qword_247952130);
  return sub_24794EF14();
}

uint64_t sub_24793DFA0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

void *sub_24793DFD0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE576C0, &qword_247951E80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_24793E054(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57268, &unk_2479503B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_24793E0DC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_24794F584();
  sub_24794EF74();
  v8 = sub_24794F5B4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_24794F4E4() & 1) != 0)
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

    sub_24793E7D4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24793E22C(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  sub_24794F584();
  sub_24794F5A4();
  v6 = sub_24794F5B4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
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
    sub_24793E954(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24793E324(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57730, &unk_247952138);
  result = sub_24794F304();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_24794F584();
      sub_24794EF74();
      result = sub_24794F5B4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24793E584(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57750, &qword_247952168);
  result = sub_24794F304();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      sub_24794F584();
      sub_24794F5A4();
      result = sub_24794F5B4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_24793E7D4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24793E324(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_24793EAB0();
      goto LABEL_16;
    }

    sub_24793ED4C(v8 + 1);
  }

  v10 = *v4;
  sub_24794F584();
  sub_24794EF74();
  v11 = sub_24794F5B4();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_24794F4E4() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_24794F504();
  __break(1u);
}

void sub_24793E954(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24793E584(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_24793EC0C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_24793EF84(v5 + 1);
  }

  v8 = *v3;
  sub_24794F584();
  sub_24794F5A4();
  v9 = sub_24794F5B4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for SISchemaInvocationSource(0);
    a2 = v12;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 4 * a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_24794F504();
  __break(1u);
}

void sub_24793EAB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57730, &unk_247952138);
  v2 = *v0;
  v3 = sub_24794F2F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_24793EC0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57750, &qword_247952168);
  v2 = *v0;
  v3 = sub_24794F2F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_24793ED4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57730, &unk_247952138);
  result = sub_24794F304();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_24794F584();

      sub_24794EF74();
      result = sub_24794F5B4();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24793EF84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57750, &qword_247952168);
  result = sub_24794F304();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      sub_24794F584();
      sub_24794F5A4();
      result = sub_24794F5B4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void *sub_24793F1A4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_24793F2FC(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_24793F3FC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_24793F554(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C1AE630](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24793E0DC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_24793F5EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *sub_24793F6A8(uint64_t a1)
{
  if (*(v1 + 16) <= 1u)
  {
    if (*(v1 + 16))
    {
      sub_24793F75C(a1);
      v3 = v2;
      type metadata accessor for ButtonPressUserSamplingMetaData(0);
      swift_allocObject();
      return sub_24793CCE8(v3);
    }

    goto LABEL_5;
  }

  if (*(v1 + 16) == 2)
  {
LABEL_5:
    sub_24793F75C(a1);
    v6 = v5;
    type metadata accessor for EnrolledUserSamplingMetaData(0);
    swift_allocObject();
    return sub_24793CF98(v6);
  }

  sub_24793F75C(a1);
  v8 = v7;
  type metadata accessor for SiriSessionUserSamplingMetaData(0);
  swift_allocObject();
  return sub_24793B85C(v8);
}

void sub_24793F75C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57758, &qword_2479521A8);
    v1 = sub_24794F494();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v8);
    ++v6;
    if (v4)
    {
      while (1)
      {
        v9 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v10 = v9 | (v8 << 6);
        v11 = (*(a1 + 48) + 16 * v10);
        v12 = *v11;
        v13 = v11[1];
        sub_2478F65EC(*(a1 + 56) + 32 * v10, v32);
        *&v31 = v12;
        *(&v31 + 1) = v13;
        v29 = v31;
        v30[0] = v32[0];
        v30[1] = v32[1];
        v14 = v31;
        sub_247933794(v30, &v23);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57348, &unk_2479521B0);
        swift_dynamicCast();
        v27 = v25;
        v28 = v26;
        v24 = v25;
        v25 = v26;
        v15 = sub_24792BEF8(v14, *(&v14 + 1));
        if (v16)
        {
          *(v1[6] + 16 * v15) = v14;
          v7 = v15;

          sub_2478F6648(&v24, v1[7] + 32 * v7, &qword_27EE57348, &unk_2479521B0);
          v6 = v8;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v1[2] >= v1[3])
          {
            goto LABEL_20;
          }

          *(v1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
          *(v1[6] + 16 * v15) = v14;
          v17 = (v1[7] + 32 * v15);
          v18 = v25;
          *v17 = v24;
          v17[1] = v18;
          v19 = v1[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v1[2] = v21;
          v6 = v8;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v8 = v6;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_24793F9E8(uint64_t a1, uint64_t a2)
{
  v92 = a1;
  v93 = a2;
  v2 = sub_24794EBB4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v83 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v84 = &v83 - v7;
  MEMORY[0x28223BE20](v6);
  v87 = &v83 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v83 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v83 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v83 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v85 = &v83 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v86 = &v83 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v83 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v91 = &v83 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v83 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v83 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v83 - v38;
  MEMORY[0x28223BE20](v37);
  v89 = v3;
  v90 = v2;
  v40 = v3 + 56;
  v41 = *(v3 + 56);
  v43 = &v83 - v42;
  v94 = v41;
  v95 = v40;
  v41();
  if (*(v88 + 16) > 1u)
  {
    if (*(v88 + 16) != 2)
    {
      v67 = v43;
      sub_2478EE3C8(v43, v18);
      type metadata accessor for SiriSessionUserSamplingMetaData(0);
      v45 = swift_allocObject();
      v68 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_enrollmentMetadata;
      *(v45 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31SiriSessionUserSamplingMetaData_siriSessionSelected) = 0;
      *(v45 + v68) = 0;
      sub_2478EE3C8(v18, v15);
      v69 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
      v70 = v90;
      v71 = v94;
      (v94)(v45 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate, 1, 1, v90);
      v72 = (v45 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId);
      *v72 = 0;
      v72[1] = 0;
      v88 = v72;
      *(v45 + 16) = 0;
      sub_2478EE3C8(v15, v12);
      v73 = v89;
      if ((*(v89 + 48))(v12, 1, v70) == 1)
      {
        sub_2478F6EA4(v15);
        sub_2478F6EA4(v18);
        sub_2478F6EA4(v67);
        sub_2478F6EA4(v12);
        v65 = v91;
        (v71)(v91, 1, 1, v70);
        swift_beginAccess();
        v66 = v45 + v69;
        goto LABEL_10;
      }

      v79 = v83;
      (*(v73 + 32))(v83, v12, v70);
      type metadata accessor for Utils();
      v76 = v91;
      sub_247940B60(v79, v91);
      (*(v73 + 8))(v79, v70);
      sub_2478F6EA4(v15);
      sub_2478F6EA4(v18);
      sub_2478F6EA4(v67);
      (v94)(v76, 0, 1, v70);
      swift_beginAccess();
      v66 = v45 + v69;
LABEL_15:
      v74 = v76;
      goto LABEL_16;
    }

LABEL_6:
    v57 = v43;
    sub_2478EE3C8(v43, v39);
    type metadata accessor for EnrolledUserSamplingMetaData(0);
    v45 = swift_allocObject();
    v58 = v45 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedEventCountFromLegacy;
    v59 = (v45 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileId);
    *v59 = 0;
    v59[1] = 0xE000000000000000;
    *(v45 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedNumRecords) = 0;
    *(v45 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileIdsSampled) = MEMORY[0x277D84FA0];
    *v58 = 0;
    *(v58 + 8) = 1;
    sub_2478EE3C8(v39, v36);
    v60 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
    v61 = v90;
    v62 = v94;
    (v94)(v45 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate, 1, 1, v90);
    v63 = (v45 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId);
    *v63 = 0;
    v63[1] = 0;
    v88 = v63;
    *(v45 + 16) = 0;
    sub_2478EE3C8(v36, v33);
    v64 = v89;
    if ((*(v89 + 48))(v33, 1, v61) == 1)
    {
      sub_2478F6EA4(v36);
      sub_2478F6EA4(v39);
      sub_2478F6EA4(v57);
      sub_2478F6EA4(v33);
      v65 = v91;
      (v62)(v91, 1, 1, v61);
      swift_beginAccess();
      v66 = v45 + v60;
LABEL_10:
      v74 = v65;
LABEL_16:
      sub_2478F6648(v74, v66, &qword_27EE572D0, &unk_2479504E0);
      swift_endAccess();
      v52 = v88;
      goto LABEL_17;
    }

    v75 = v87;
    (*(v64 + 32))(v87, v33, v61);
    type metadata accessor for Utils();
    v83 = v57;
    v76 = v91;
    sub_247940B60(v75, v91);
    (*(v64 + 8))(v75, v61);
    sub_2478F6EA4(v36);
    sub_2478F6EA4(v39);
    sub_2478F6EA4(v83);
    (v62)(v76, 0, 1, v61);
    swift_beginAccess();
    v66 = v45 + v60;
    goto LABEL_15;
  }

  if (!*(v88 + 16))
  {
    goto LABEL_6;
  }

  v44 = v43;
  sub_2478EE3C8(v43, v28);
  type metadata accessor for ButtonPressUserSamplingMetaData(0);
  v45 = swift_allocObject();
  *(v45 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31ButtonPressUserSamplingMetaData_uploadedNumRecordsHS) = 0;
  *(v45 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics31ButtonPressUserSamplingMetaData_uploadedNumRecordsJS) = 0;
  v46 = v86;
  sub_2478EE3C8(v28, v86);
  v47 = v45 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedEventCountFromLegacy;
  v48 = (v45 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileId);
  *v48 = 0;
  v48[1] = 0xE000000000000000;
  *(v45 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_aggregatedNumRecords) = 0;
  *(v45 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics28EnrolledUserSamplingMetaData_voiceProfileIdsSampled) = MEMORY[0x277D84FA0];
  *v47 = 0;
  *(v47 + 8) = 1;
  v49 = v85;
  sub_2478EE3C8(v46, v85);
  v50 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
  v51 = v90;
  (v94)(v45 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate, 1, 1, v90);
  v52 = (v45 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId);
  *v52 = 0;
  v52[1] = 0;
  *(v45 + 16) = 0;
  sub_2478EE3C8(v49, v21);
  v53 = v89;
  if ((*(v89 + 48))(v21, 1, v51) == 1)
  {
    sub_2478F6EA4(v49);
    sub_2478F6EA4(v46);
    sub_2478F6EA4(v28);
    sub_2478F6EA4(v44);
    sub_2478F6EA4(v21);
    v54 = v91;
    v55 = v91;
    v56 = 1;
  }

  else
  {
    v77 = *(v53 + 32);
    v88 = v28;
    v78 = v84;
    v77(v84, v21, v51);
    type metadata accessor for Utils();
    v83 = v44;
    v54 = v91;
    sub_247940B60(v78, v91);
    (*(v53 + 8))(v78, v51);
    sub_2478F6EA4(v49);
    sub_2478F6EA4(v46);
    sub_2478F6EA4(v88);
    sub_2478F6EA4(v83);
    v55 = v54;
    v56 = 0;
  }

  (v94)(v55, v56, 1, v51);
  swift_beginAccess();
  sub_2478F6648(v54, v45 + v50, &qword_27EE572D0, &unk_2479504E0);
  swift_endAccess();
LABEL_17:
  v80 = (v45 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_locale);
  v81 = v93;
  *v80 = v92;
  v80[1] = v81;
  *v52 = 0;
  v52[1] = 0;
  *(v45 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_uploadedNumRecords) = 0;

  return v45;
}

void sub_247940408()
{
  v1 = *(v0 + 48);
  v2 = *(**(v0 + 16) + 256);

  v2(v3);
  v4 = *(v1 + 16);
  v5 = sub_24794EE74();

  v6 = sub_24794EEF4();

  [v4 setObject:v5 forKey:v6];
}

void sub_247940594()
{
  v2 = v0;
  v3 = (*(**(v0 + 16) + 272))();
  if (!v1)
  {
    v5 = v4;
    v6 = v3;
    v7 = sub_24793F9E8(*(v0 + 64), *(v0 + 72));
    *(v2 + 16) = v7;

    (*(*v7 + 280))(v6, v5);

    sub_247940408();
  }
}

void sub_2479406A8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24794EBB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(**(v1 + 16) + 408);

  v8(a1);

  sub_247940408();
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v9 = sub_24794ED34();
  __swift_project_value_buffer(v9, qword_27EE58DF8);
  (*(v5 + 16))(v7, a1, v4);

  v10 = sub_24794ED14();
  v11 = sub_24794F174();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315394;
    sub_2478EC590();
    v14 = sub_24794F4D4();
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v17 = sub_247924380(v14, v16, &v23);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v18 = (*(v2 + 16) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId);
    if (v18[1])
    {
      v19 = *v18;
      v20 = v18[1];
    }

    else
    {
      v20 = 0xE300000000000000;
      v19 = 7104878;
    }

    v21 = sub_247924380(v19, v20, &v23);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_2478E1000, v10, v11, "#SamplingPolicyMetaDataManager: Device selected for sampling on %s with new userSamplingId: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1AF180](v13, -1, -1);
    MEMORY[0x24C1AF180](v12, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

void sub_2479409C0()
{
  v1 = *(v0[6] + 16);
  v2 = sub_24794EEF4();

  [v1 removeObjectForKey_];

  v0[2] = sub_24793F9E8(v0[8], v0[9]);

  sub_247940408();
}

uint64_t sub_247940AE4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_247940B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = sub_24794EBB4();
  v3 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24794ED04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v11 = sub_24794EEF4();
  [v10 setDateFormat_];

  sub_24794ECF4();
  v12 = sub_24794ECE4();
  v13 = *(v7 + 8);
  v13(v9, v6);
  [v10 setTimeZone_];

  v22 = a1;
  v14 = sub_24794EB34();
  v15 = [v10 stringFromDate_];

  if (!v15)
  {
    sub_24794EF04();
    v15 = sub_24794EEF4();
  }

  v16 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v17 = sub_24794EEF4();
  [v16 setDateFormat_];

  sub_24794ECF4();
  v18 = sub_24794ECE4();
  v13(v9, v6);
  [v16 setTimeZone_];

  v19 = [v16 dateFromString_];
  if (!v19)
  {
    return (*(v3 + 16))(v24, v22, v23);
  }

  sub_24794EB94();

  return (*(v3 + 32))(v24, v5, v23);
}

uint64_t sub_247940E90@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a4;
  v7 = sub_24794ED04();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_24794EBB4();
  v57 = *(v55 - 8);
  v11 = MEMORY[0x28223BE20](v55);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v54 = &v54 - v14;
  v58 = 0xD000000000000013;
  v59 = 0x80000002479525A0;
  MEMORY[0x24C1AE4C0](0x6144726F68636E41, 0xEA00000000006574);
  v16 = v58;
  v15 = v59;
  if (a3)
  {

    MEMORY[0x24C1AE4C0](95, 0xE100000000000000);

    MEMORY[0x24C1AE4C0](a2, a3);

    v16 = v58;
    v15 = v59;
  }

  if (a1 && (v17 = sub_24794EEF4(), v18 = [a1 stringForKey_], v17, v18))
  {

    v19 = sub_24794EF04();
    v21 = v20;
    v22 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v23 = sub_24794EEF4();
    [v22 setDateFormat_];

    sub_24794ECF4();
    v24 = sub_24794ECE4();
    (*(v8 + 8))(v10, v7);
    [v22 setTimeZone_];

    v25 = [v22 dateFromString_];
    if (v25)
    {

      v26 = v54;
      sub_24794EB94();

      v27 = v55;
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v28 = sub_24794ED34();
      __swift_project_value_buffer(v28, qword_27EE58DF8);
      (*(v57 + 16))(v13, v26, v27);
      v29 = sub_24794ED14();
      v30 = sub_24794F154();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v58 = v32;
        *v31 = 136315138;
        sub_2479176E4(&qword_27EE57288, MEMORY[0x277CC95B8]);
        v33 = sub_24794F4D4();
        v35 = v34;
        (*(v57 + 8))(v13, v27);
        v36 = sub_247924380(v33, v35, &v58);

        *(v31 + 4) = v36;
        _os_log_impl(&dword_2478E1000, v29, v30, "#SamplingUtils: get UserDefault SpeakerIdOneSession AnchorDate is %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x24C1AF180](v32, -1, -1);
        MEMORY[0x24C1AF180](v31, -1, -1);
      }

      else
      {

        (*(v57 + 8))(v13, v27);
      }

      v53 = v56;
      (*(v57 + 32))(v56, v26, v27);
      return (*(v57 + 56))(v53, 0, 1, v27);
    }

    else
    {
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v47 = sub_24794ED34();
      __swift_project_value_buffer(v47, qword_27EE58DF8);

      v48 = sub_24794ED14();
      v49 = sub_24794F164();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v58 = v51;
        *v50 = 136315138;
        v52 = sub_247924380(v19, v21, &v58);

        *(v50 + 4) = v52;
        _os_log_impl(&dword_2478E1000, v48, v49, "#SamplingUtils: failed to parse SpeakerIdOneSession anchor date string: %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x24C1AF180](v51, -1, -1);
        MEMORY[0x24C1AF180](v50, -1, -1);
      }

      else
      {
      }

      return (*(v57 + 56))(v56, 1, 1, v55);
    }
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v37 = sub_24794ED34();
    __swift_project_value_buffer(v37, qword_27EE58DF8);

    v38 = sub_24794ED14();
    v39 = sub_24794F154();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v58 = v41;
      *v40 = 136315138;
      v42 = sub_247924380(v16, v15, &v58);

      *(v40 + 4) = v42;
      _os_log_impl(&dword_2478E1000, v38, v39, "#SamplingUtils: get UserDefault SpeakerIdOneSession AnchorDate is nil for key: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x24C1AF180](v41, -1, -1);
      MEMORY[0x24C1AF180](v40, -1, -1);
    }

    else
    {
    }

    v44 = v55;
    v43 = v56;
    v45 = *(v57 + 56);

    return v45(v43, 1, 1, v44);
  }
}

uint64_t sub_247941654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[25] = a5;
  v6[26] = a6;
  v6[24] = a4;
  return MEMORY[0x2822009F8](sub_247941678, 0, 0);
}

uint64_t sub_247941678()
{
  v1 = v0[24];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_247941794;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57790, &unk_247952320);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_247941BC8;
  v0[13] = &block_descriptor_33;
  v0[14] = v2;
  [v1 currentAuthorizationStyle_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_247941794()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_2479419FC;
  }

  else
  {
    v2 = sub_2479418A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2479418A4()
{
  if ((v0[18] - 3) > 1)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v2 = sub_24794ED34();
    __swift_project_value_buffer(v2, qword_27EE58DF8);
    v3 = sub_24794ED14();
    v4 = sub_24794F144();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2478E1000, v3, v4, "#SamplingUtils: Location service is not authorized", v5, 2u);
      MEMORY[0x24C1AF180](v5, -1, -1);
    }

    v1 = 0;
  }

  else
  {
    v1 = 1;
  }

  v6 = v0[25];
  swift_beginAccess();
  *(v6 + 16) = v1;
  sub_24794F1D4();
  v7 = v0[1];

  return v7();
}

uint64_t sub_2479419FC(uint64_t a1)
{
  swift_willThrow();
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v2 = v1[27];
  v3 = sub_24794ED34();
  __swift_project_value_buffer(v3, qword_27EE58DF8);
  v4 = v2;
  v5 = sub_24794ED14();
  v6 = sub_24794F144();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v1[27];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2478E1000, v5, v6, "#SamplingUtils: Unable to check location access authorization: %@", v9, 0xCu);
    sub_2478E9620(v10, &qword_27EE57280, &unk_2479503C0);
    MEMORY[0x24C1AF180](v10, -1, -1);
    MEMORY[0x24C1AF180](v9, -1, -1);
  }

  else
  {
  }

  v13 = v1[25];
  swift_beginAccess();
  *(v13 + 16) = 0;
  sub_24794F1D4();
  v14 = v1[1];

  return v14();
}

uint64_t sub_247941BC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A8, &qword_247951540);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;

    return MEMORY[0x282200950](v7);
  }
}

uint64_t sub_247941C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57788, &qword_2479522F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2478E9680(a3, v25 - v10, &qword_27EE57788, &qword_2479522F0);
  v12 = sub_24794F0E4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2478E9620(v11, &qword_27EE57788, &qword_2479522F0);
  }

  else
  {
    sub_24794F0D4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24794F0C4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24794EF44() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2478E9620(a3, &qword_27EE57788, &qword_2479522F0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2478E9620(a3, &qword_27EE57788, &qword_2479522F0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_247941F98(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A8, &qword_247951540);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    if (a3)
    {
      v11 = sub_24794EF04();
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v13 = *(*(v7 + 64) + 40);
    *v13 = a2;
    *(v13 + 8) = v11;
    *(v13 + 16) = v12;

    return MEMORY[0x282200950](v7);
  }
}

uint64_t sub_247942084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57760, &qword_2479522B8);
  v4[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57768, &qword_2479522C0);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57770, &qword_2479522C8);
  v4[9] = swift_task_alloc();
  v5 = sub_24794EC24();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_24794EA84();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = sub_24794EBB4();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57778, &qword_2479522D0);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247942324, 0, 0);
}

uint64_t sub_247942324()
{
  v30 = v0[20];
  v31 = v0[19];
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[11];
  v25 = v0[12];
  v26 = v0[10];
  v27 = v0[9];
  v28 = v0[8];
  v29 = v0[7];
  v8 = v0[4];
  v24 = v0[5];
  v9 = v0[3];
  sub_24794EF04();
  (*(v2 + 16))(v1, v9, v3);
  (*(v5 + 16))(v4, v8, v6);
  (*(v7 + 16))(v25, v24, v26);
  v10 = sub_24794ED64();
  (*(*(v10 - 8) + 56))(v27, 1, 1, v10);
  v11 = sub_24794ED94();
  (*(*(v11 - 8) + 56))(v28, 1, 1, v11);
  v12 = sub_24794ED44();
  (*(*(v12 - 8) + 56))(v29, 1, 1, v12);
  sub_24794ED54();
  sub_2478E9680(v30, v31, &qword_27EE57778, &qword_2479522D0);
  v13 = sub_24794ED84();
  v0[21] = v13;
  v14 = *(v13 - 8);
  v0[22] = v14;
  if ((*(v14 + 48))(v31, 1, v13) == 1)
  {
    v15 = v0[19];
    v16 = v0[6];
    sub_2478E9620(v0[20], &qword_27EE57778, &qword_2479522D0);
    sub_2478E9620(v15, &qword_27EE57778, &qword_2479522D0);
    v17 = sub_24794EC04();
    v18 = *(*(v17 - 8) + 56);
    v18(v16, 1, 1, v17);
    v19 = v0[2];
    sub_2478E9620(v0[6], &qword_27EE57278, &unk_247950590);
    v18(v19, 1, 1, v17);

    v20 = v0[1];

    return v20();
  }

  else
  {
    v22 = swift_task_alloc();
    v0[23] = v22;
    *v22 = v0;
    v22[1] = sub_247942750;
    v23 = v0[6];

    return MEMORY[0x28212BC78](v23);
  }
}

uint64_t sub_247942750()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 152);

  (*(v1 + 8))(v3, v2);

  return MEMORY[0x2822009F8](sub_2479428A8, 0, 0);
}

uint64_t sub_2479428A8()
{
  v1 = v0[6];
  sub_2478E9620(v0[20], &qword_27EE57778, &qword_2479522D0);
  v2 = sub_24794EC04();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[2];
  if (v4 == 1)
  {
    sub_2478E9620(v0[6], &qword_27EE57278, &unk_247950590);
    v6 = 1;
  }

  else
  {
    (*(v3 + 32))(v0[2], v0[6], v2);
    v6 = 0;
  }

  (*(v3 + 56))(v5, v6, 1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_247942B3C()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedPreferences];
  v2 = [v1 assistantIsEnabled];

  if (v2)
  {
    return 1;
  }

  v4 = [v0 sharedPreferences];
  v5 = [v4 dictationIsEnabled];

  return v5;
}

BOOL sub_247942BD8()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 siriDataSharingOptInStatus];

  return v1 == 1;
}

uint64_t sub_247942C34()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 longLivedIdentifierUploadingEnabled];

  return v1 ^ 1;
}

uint64_t sub_247942CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2478E8998;

  return sub_247944700(a1, a2, a3, a4, a5);
}

uint64_t sub_247942D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_247942DA4, 0, 0);
}

uint64_t sub_247942DA4()
{
  if (qword_27EE571E8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_247942E74;
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  return sub_247938D74(v5, v2, v4, v3);
}

uint64_t sub_247942E74()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_247942F68(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = sub_24794EEF4();
  v4 = [v2 supportsMphForLanguageCode_];

  return v4;
}

uint64_t sub_247942FDC()
{
  v0 = [objc_opt_self() getSiriLanguageWithFallback_];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_24794EF04();

  return v2;
}

uint64_t sub_24794305C()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 siriDataSharingOptInStatus];

  if (v1 >= 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2479430B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2478E8998;

  return sub_247942084(a1, a2, a3, a4);
}

uint64_t sub_24794317C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = [objc_opt_self() *a3];
  v4 = sub_24794EF04();

  return v4;
}

id sub_24794321C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = sub_24794EA34();
  v17[0] = 0;
  v9 = [v4 initForReading:v8 commonFormat:a2 interleaved:a3 & 1 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_24794EA84();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_24794E9D4();

    swift_willThrow();
    v15 = sub_24794EA84();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

uint64_t sub_247943378(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_247943470;

  return v6(a1);
}

uint64_t sub_247943470()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_247943568(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57530, &unk_247951740);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_2479435DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_24794F024();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_247943B68(v4, v5);
    v36 = v35;

    v5 = v36;
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
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_24794F394();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
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

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
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

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
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
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
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

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
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

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
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

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
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
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_247943B68(uint64_t a1, unint64_t a2)
{
  v2 = sub_24794F034();
  v6 = sub_247943BE8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_247943BE8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_24794F244();
    if (!v9 || (v10 = v9, v11 = sub_247943568(v9, 0), v12 = sub_247943D40(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_24794EF64();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_24794EF64();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_24794F394();
LABEL_4:

  return sub_24794EF64();
}

unint64_t sub_247943D40(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_247943F60(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_24794EFE4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_24794F394();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_247943F60(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_24794EFC4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_247943F60(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24794EFF4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x24C1AE4F0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

BOOL sub_247943FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_24794F334();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_2479440D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577B0, &qword_247952348);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v16 = a1;
  v17 = a2;
  v14 = 1769105747;
  v15 = 0xE400000000000000;
  v7 = sub_24794EC24();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  sub_24791F02C();
  v9 = sub_24794F264();
  sub_2478E9620(v6, &qword_27EE577B0, &qword_247952348);
  if (!v9)
  {
    return 2;
  }

  v16 = a1;
  v17 = a2;
  v14 = 21320;
  v15 = 0xE200000000000000;
  v10 = 1;
  v8(v6, 1, 1, v7);
  v11 = sub_24794F264();
  sub_2478E9620(v6, &qword_27EE577B0, &qword_247952348);
  if (v11)
  {
    v16 = a1;
    v17 = a2;
    v14 = 0x6972695320796548;
    v15 = 0xE800000000000000;
    v8(v6, 1, 1, v7);
    v12 = sub_24794F264();
    sub_2478E9620(v6, &qword_27EE577B0, &qword_247952348);
    return v12 == 0;
  }

  return v10;
}

uint64_t sub_247944340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_opt_self();
  result = [v4 sharedPreferences];
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = sub_24794EEF4();
  v8 = [v6 localizedTriggerPhraseForLanguageCode_];

  if (v8)
  {
    sub_24794EF04();
  }

  result = [v4 sharedPreferences];
  if (!result)
  {
    goto LABEL_13;
  }

  v9 = result;
  v10 = sub_24794EEF4();
  v11 = [v9 localizedCompactTriggerPhraseForLanguageCode_];

  if (v11)
  {
    sub_24794EF04();
  }

  sub_24794EF24();
  sub_24794EF24();

  v12 = sub_24794F004();

  if (v12)
  {

    return 1;
  }

  else
  {
    sub_24794EF24();
    sub_24794EF24();

    v13 = sub_24794F004();

    if (v13)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_247944574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[1] = a2;
  v4 = sub_24794EA84();
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + 16);
  if (v8)
  {
    v9 = (v5 + 8);
    v10 = a3 + 40;
    do
    {
      v11 = *(v10 - 8);

      sub_24794EA14();
      sub_24794EA24();
      (*v9)(v7, v4);
      if (sub_24794F004())
      {
        v12 = sub_24794F014();

        if (v12)
        {
          return v11;
        }
      }

      else
      {
      }

      v10 += 16;
      --v8;
    }

    while (v8);
  }

  return 0;
}

uint64_t sub_247944700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v5[22] = a2;
  v5[23] = a3;
  v5[21] = a1;
  return MEMORY[0x2822009F8](sub_247944728, 0, 0);
}

uint64_t sub_247944728()
{
  v18 = v0;
  sub_247944574(v0[21], v0[22], v0[25]);
  if (v1)
  {
    v16 = objc_opt_self();
    v2 = sub_24794EEF4();
    v0[26] = v2;

    v3 = sub_24794EEF4();
    v0[27] = v3;
    v4 = sub_24794EEF4();
    v0[28] = v4;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_247944A64;
    v5 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57780, &unk_2479522E0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_247941F98;
    v0[13] = &block_descriptor_1;
    v0[14] = v5;
    [v16 uploadAudioFilePath:v2 requestId:v3 audioId:v4 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v6 = sub_24794ED34();
    __swift_project_value_buffer(v6, qword_27EE58DF8);

    v7 = sub_24794ED14();
    v8 = sub_24794F164();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = v0[21];
      v9 = v0[22];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_247924380(v10, v9, &v17);
      _os_log_impl(&dword_2478E1000, v7, v8, "SamplingUtils: Cannot get the file path for requestId: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x24C1AF180](v12, -1, -1);
      MEMORY[0x24C1AF180](v11, -1, -1);
    }

    sub_2478E95CC();
    swift_allocError();
    *v13 = xmmword_24794FEF0;
    *(v13 + 16) = 2;
    swift_willThrow();
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_247944A64()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_247944F7C;
  }

  else
  {
    v2 = sub_247944B74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_247944B74()
{
  v31 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);
  v3 = *(v0 + 144);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);

  if (v3 == 1)
  {

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v6 = sub_24794ED34();
    __swift_project_value_buffer(v6, qword_27EE58DF8);

    v7 = sub_24794ED14();
    v8 = sub_24794F154();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = *(v0 + 184);
      v9 = *(v0 + 192);
      v12 = *(v0 + 168);
      v11 = *(v0 + 176);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30[0] = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_247924380(v12, v11, v30);
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_247924380(v10, v9, v30);
      _os_log_impl(&dword_2478E1000, v7, v8, "#SamplingUtils: upload requestId: %s with audioId: %s successfully finished", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1AF180](v14, -1, -1);
      MEMORY[0x24C1AF180](v13, -1, -1);
    }

    v15 = *(v0 + 8);
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v16 = sub_24794ED34();
    __swift_project_value_buffer(v16, qword_27EE58DF8);

    v17 = sub_24794ED14();
    v18 = sub_24794F164();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 184);
      v29 = *(v0 + 192);
      v21 = *(v0 + 168);
      v20 = *(v0 + 176);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30[0] = v23;
      *v22 = 136315650;
      *(v22 + 4) = sub_247924380(v21, v20, v30);
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_247924380(v19, v29, v30);
      *(v22 + 22) = 2080;
      *(v0 + 80) = v5;
      *(v0 + 88) = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57438, &qword_247950E90);
      v24 = sub_24794EF14();
      v26 = sub_247924380(v24, v25, v30);

      *(v22 + 24) = v26;
      _os_log_impl(&dword_2478E1000, v17, v18, "#SamplingUtils: upload requestId: %s with audioId: %s did not success as with error message: %s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1AF180](v23, -1, -1);
      MEMORY[0x24C1AF180](v22, -1, -1);
    }

    else
    {
    }

    sub_2478E95CC();
    swift_allocError();
    *v27 = xmmword_24794FF00;
    *(v27 + 16) = 2;
    swift_willThrow();
    v15 = *(v0 + 8);
  }

  return v15();
}

uint64_t sub_247944F7C(uint64_t a1)
{
  v2 = v1[28];
  v4 = v1[26];
  v3 = v1[27];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_247945000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v21[1] = a1;
  v4 = sub_24794ECB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24794ECC4();
  v8 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v21 - v12;
  v14 = sub_24794EBB4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24794EC94();
  result = (*(v5 + 104))(v7, *MEMORY[0x277CC9968], v4);
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_24794EC84();
    (*(v5 + 8))(v7, v4);
    (*(v8 + 8))(v10, v22);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_2478E9620(v13, &qword_27EE572D0, &unk_2479504E0);
      v19 = 0;
    }

    else
    {
      (*(v15 + 32))(v17, v13, v14);
      sub_2479176E4(&qword_27EE57798, MEMORY[0x277CC9590]);
      v20 = sub_24794EED4();
      (*(v15 + 8))(v17, v14);
      v19 = v20 ^ 1;
    }

    return v19 & 1;
  }

  return result;
}

void sub_24794534C(_BYTE *a1, void *a2)
{
  v2 = 0xEE00435346737365;
  v3 = 0x72506E6F74747562;
  v4 = 0x8000000247952580;
  v5 = 0xD000000000000013;
  if (*a1 == 2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v4 = 0x80000002479525A0;
  }

  if (!*a1)
  {
    v3 = 0xD000000000000015;
    v2 = 0x8000000247952550;
  }

  if (*a1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*a1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  v52 = v6;
  v53 = v7;

  MEMORY[0x24C1AE4C0](0x726550746E756F43, 0xEB00000000796144);

  if (a2 && (v9 = sub_24794EEF4(), v10 = [a2 stringForKey_], v9, v10))
  {
    v11 = sub_24794EF04();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = HIBYTE(v13) & 0xF;
  v15 = v11 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v16 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    v39 = 0;
    v38 = 1;
    goto LABEL_81;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {

    LOBYTE(v51) = 0;
    sub_2479435DC(v11, v13, 10);
    v20 = v48;
    v38 = v49;
    goto LABEL_78;
  }

  if ((v13 & 0x2000000000000000) == 0)
  {

    if ((v11 & 0x1000000000000000) == 0)
    {
      goto LABEL_91;
    }

    v17 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
    while (1)
    {
      v18 = *v17;
      if (v18 == 43)
      {
        if (v15 < 1)
        {
          goto LABEL_94;
        }

        v19 = v15 - 1;
        if (v15 == 1)
        {
          goto LABEL_76;
        }

        v20 = 0;
        if (v17)
        {
          v27 = v17 + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              goto LABEL_76;
            }

            v29 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              goto LABEL_76;
            }

            v20 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              goto LABEL_76;
            }

            ++v27;
            if (!--v19)
            {
              goto LABEL_77;
            }
          }
        }
      }

      else if (v18 == 45)
      {
        if (v15 < 1)
        {
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        v19 = v15 - 1;
        if (v15 == 1)
        {
          goto LABEL_76;
        }

        v20 = 0;
        if (v17)
        {
          v21 = v17 + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              break;
            }

            v20 = v23 - v22;
            if (__OFSUB__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v19)
            {
              goto LABEL_77;
            }
          }

LABEL_76:
          v20 = 0;
          LOBYTE(v19) = 1;
          goto LABEL_77;
        }
      }

      else
      {
        if (!v15)
        {
          goto LABEL_76;
        }

        v20 = 0;
        if (v17)
        {
          do
          {
            v33 = *v17 - 48;
            if (v33 > 9)
            {
              goto LABEL_76;
            }

            v34 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              goto LABEL_76;
            }

            v20 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              goto LABEL_76;
            }

            ++v17;
          }

          while (--v15);
        }
      }

LABEL_75:
      LOBYTE(v19) = 0;
LABEL_77:
      LOBYTE(v51) = v19;
      v38 = v19;
LABEL_78:

      if (v38)
      {
        v39 = 0;
      }

      else
      {
        v39 = v20;
      }

LABEL_81:
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v40 = sub_24794ED34();
      __swift_project_value_buffer(v40, qword_27EE58DF8);
      v41 = sub_24794ED14();
      v42 = sub_24794F154();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v51 = v44;
        v52 = v39;
        *v43 = 136315138;
        LOBYTE(v53) = v38 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577A0, &unk_247952330);
        v45 = sub_24794EF14();
        v47 = sub_247924380(v45, v46, &v51);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_2478E1000, v41, v42, "#SamplingUtils: get SamplingCountPerDayLimit is %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x24C1AF180](v44, -1, -1);
        MEMORY[0x24C1AF180](v43, -1, -1);
      }

      if ((v38 & 1) != 0 || (v39 & 0x8000000000000000) == 0)
      {
        return;
      }

      __break(1u);
LABEL_91:
      v17 = sub_24794F394();
      v15 = v50;
    }
  }

  v52 = v11;
  v53 = v13 & 0xFFFFFFFFFFFFFFLL;
  if (v11 != 43)
  {
    if (v11 != 45)
    {
      if (!v14)
      {
        goto LABEL_76;
      }

      v20 = 0;
      v35 = &v52;
      do
      {
        v36 = *v35 - 48;
        if (v36 > 9)
        {
          goto LABEL_76;
        }

        v37 = 10 * v20;
        if ((v20 * 10) >> 64 != (10 * v20) >> 63)
        {
          goto LABEL_76;
        }

        v20 = v37 + v36;
        if (__OFADD__(v37, v36))
        {
          goto LABEL_76;
        }

        v35 = (v35 + 1);
        --v14;
      }

      while (v14);
      goto LABEL_75;
    }

    if (v14)
    {
      v19 = v14 - 1;
      if (v14 != 1)
      {
        v20 = 0;
        v24 = &v52 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            break;
          }

          v20 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v19)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_76;
    }

    goto LABEL_93;
  }

  if (v14)
  {
    v19 = v14 - 1;
    if (v14 != 1)
    {
      v20 = 0;
      v30 = &v52 + 1;
      while (1)
      {
        v31 = *v30 - 48;
        if (v31 > 9)
        {
          break;
        }

        v32 = 10 * v20;
        if ((v20 * 10) >> 64 != (10 * v20) >> 63)
        {
          break;
        }

        v20 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          break;
        }

        ++v30;
        if (!--v19)
        {
          goto LABEL_77;
        }
      }
    }

    goto LABEL_76;
  }

LABEL_95:
  __break(1u);
}

void sub_2479458E0(_BYTE *a1, void *a2)
{
  v2 = 0xEE00435346737365;
  v3 = 0x72506E6F74747562;
  v4 = 0x8000000247952580;
  v5 = 0xD000000000000013;
  if (*a1 == 2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v4 = 0x80000002479525A0;
  }

  if (!*a1)
  {
    v3 = 0xD000000000000015;
    v2 = 0x8000000247952550;
  }

  if (*a1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*a1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  v52 = v6;
  v53 = v7;

  MEMORY[0x24C1AE4C0](0xD00000000000001ELL, 0x80000002479579F0);

  if (a2 && (v9 = sub_24794EEF4(), v10 = [a2 stringForKey_], v9, v10))
  {
    v11 = sub_24794EF04();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = HIBYTE(v13) & 0xF;
  v15 = v11 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v16 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    v39 = 0;
    v38 = 1;
    goto LABEL_81;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {

    LOBYTE(v51) = 0;
    sub_2479435DC(v11, v13, 10);
    v20 = v48;
    v38 = v49;
    goto LABEL_78;
  }

  if ((v13 & 0x2000000000000000) == 0)
  {

    if ((v11 & 0x1000000000000000) == 0)
    {
      goto LABEL_91;
    }

    v17 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
    while (1)
    {
      v18 = *v17;
      if (v18 == 43)
      {
        if (v15 < 1)
        {
          goto LABEL_94;
        }

        v19 = v15 - 1;
        if (v15 == 1)
        {
          goto LABEL_76;
        }

        v20 = 0;
        if (v17)
        {
          v27 = v17 + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              goto LABEL_76;
            }

            v29 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              goto LABEL_76;
            }

            v20 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              goto LABEL_76;
            }

            ++v27;
            if (!--v19)
            {
              goto LABEL_77;
            }
          }
        }
      }

      else if (v18 == 45)
      {
        if (v15 < 1)
        {
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        v19 = v15 - 1;
        if (v15 == 1)
        {
          goto LABEL_76;
        }

        v20 = 0;
        if (v17)
        {
          v21 = v17 + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              break;
            }

            v20 = v23 - v22;
            if (__OFSUB__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v19)
            {
              goto LABEL_77;
            }
          }

LABEL_76:
          v20 = 0;
          LOBYTE(v19) = 1;
          goto LABEL_77;
        }
      }

      else
      {
        if (!v15)
        {
          goto LABEL_76;
        }

        v20 = 0;
        if (v17)
        {
          do
          {
            v33 = *v17 - 48;
            if (v33 > 9)
            {
              goto LABEL_76;
            }

            v34 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              goto LABEL_76;
            }

            v20 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              goto LABEL_76;
            }

            ++v17;
          }

          while (--v15);
        }
      }

LABEL_75:
      LOBYTE(v19) = 0;
LABEL_77:
      LOBYTE(v51) = v19;
      v38 = v19;
LABEL_78:

      if (v38)
      {
        v39 = 0;
      }

      else
      {
        v39 = v20;
      }

LABEL_81:
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v40 = sub_24794ED34();
      __swift_project_value_buffer(v40, qword_27EE58DF8);
      v41 = sub_24794ED14();
      v42 = sub_24794F154();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v51 = v44;
        v52 = v39;
        *v43 = 136315138;
        LOBYTE(v53) = v38 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577A0, &unk_247952330);
        v45 = sub_24794EF14();
        v47 = sub_247924380(v45, v46, &v51);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_2478E1000, v41, v42, "#SamplingUtils: get UserDefault Total SamplingCount is %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x24C1AF180](v44, -1, -1);
        MEMORY[0x24C1AF180](v43, -1, -1);
      }

      if ((v38 & 1) != 0 || (v39 & 0x8000000000000000) == 0)
      {
        return;
      }

      __break(1u);
LABEL_91:
      v17 = sub_24794F394();
      v15 = v50;
    }
  }

  v52 = v11;
  v53 = v13 & 0xFFFFFFFFFFFFFFLL;
  if (v11 != 43)
  {
    if (v11 != 45)
    {
      if (!v14)
      {
        goto LABEL_76;
      }

      v20 = 0;
      v35 = &v52;
      do
      {
        v36 = *v35 - 48;
        if (v36 > 9)
        {
          goto LABEL_76;
        }

        v37 = 10 * v20;
        if ((v20 * 10) >> 64 != (10 * v20) >> 63)
        {
          goto LABEL_76;
        }

        v20 = v37 + v36;
        if (__OFADD__(v37, v36))
        {
          goto LABEL_76;
        }

        v35 = (v35 + 1);
        --v14;
      }

      while (v14);
      goto LABEL_75;
    }

    if (v14)
    {
      v19 = v14 - 1;
      if (v14 != 1)
      {
        v20 = 0;
        v24 = &v52 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            break;
          }

          v20 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v19)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_76;
    }

    goto LABEL_93;
  }

  if (v14)
  {
    v19 = v14 - 1;
    if (v14 != 1)
    {
      v20 = 0;
      v30 = &v52 + 1;
      while (1)
      {
        v31 = *v30 - 48;
        if (v31 > 9)
        {
          break;
        }

        v32 = 10 * v20;
        if ((v20 * 10) >> 64 != (10 * v20) >> 63)
        {
          break;
        }

        v20 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          break;
        }

        ++v30;
        if (!--v19)
        {
          goto LABEL_77;
        }
      }
    }

    goto LABEL_76;
  }

LABEL_95:
  __break(1u);
}

void sub_247945E6C(_BYTE *a1, void *a2)
{
  v2 = 0xEE00435346737365;
  v3 = 0x72506E6F74747562;
  v4 = 0x8000000247952580;
  v5 = 0xD000000000000013;
  if (*a1 == 2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v4 = 0x80000002479525A0;
  }

  if (!*a1)
  {
    v3 = 0xD000000000000015;
    v2 = 0x8000000247952550;
  }

  if (*a1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*a1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  v52 = v6;
  v53 = v7;

  MEMORY[0x24C1AE4C0](0xD000000000000025, 0x80000002479579C0);

  if (a2 && (v9 = sub_24794EEF4(), v10 = [a2 stringForKey_], v9, v10))
  {
    v11 = sub_24794EF04();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = HIBYTE(v13) & 0xF;
  v15 = v11 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v16 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    v39 = 0;
    v38 = 1;
    goto LABEL_81;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {

    LOBYTE(v51) = 0;
    sub_2479435DC(v11, v13, 10);
    v20 = v48;
    v38 = v49;
    goto LABEL_78;
  }

  if ((v13 & 0x2000000000000000) == 0)
  {

    if ((v11 & 0x1000000000000000) == 0)
    {
      goto LABEL_91;
    }

    v17 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
    while (1)
    {
      v18 = *v17;
      if (v18 == 43)
      {
        if (v15 < 1)
        {
          goto LABEL_94;
        }

        v19 = v15 - 1;
        if (v15 == 1)
        {
          goto LABEL_76;
        }

        v20 = 0;
        if (v17)
        {
          v27 = v17 + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              goto LABEL_76;
            }

            v29 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              goto LABEL_76;
            }

            v20 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              goto LABEL_76;
            }

            ++v27;
            if (!--v19)
            {
              goto LABEL_77;
            }
          }
        }
      }

      else if (v18 == 45)
      {
        if (v15 < 1)
        {
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        v19 = v15 - 1;
        if (v15 == 1)
        {
          goto LABEL_76;
        }

        v20 = 0;
        if (v17)
        {
          v21 = v17 + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              break;
            }

            v20 = v23 - v22;
            if (__OFSUB__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v19)
            {
              goto LABEL_77;
            }
          }

LABEL_76:
          v20 = 0;
          LOBYTE(v19) = 1;
          goto LABEL_77;
        }
      }

      else
      {
        if (!v15)
        {
          goto LABEL_76;
        }

        v20 = 0;
        if (v17)
        {
          do
          {
            v33 = *v17 - 48;
            if (v33 > 9)
            {
              goto LABEL_76;
            }

            v34 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              goto LABEL_76;
            }

            v20 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              goto LABEL_76;
            }

            ++v17;
          }

          while (--v15);
        }
      }

LABEL_75:
      LOBYTE(v19) = 0;
LABEL_77:
      LOBYTE(v51) = v19;
      v38 = v19;
LABEL_78:

      if (v38)
      {
        v39 = 0;
      }

      else
      {
        v39 = v20;
      }

LABEL_81:
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v40 = sub_24794ED34();
      __swift_project_value_buffer(v40, qword_27EE58DF8);
      v41 = sub_24794ED14();
      v42 = sub_24794F154();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v51 = v44;
        v52 = v39;
        *v43 = 136315138;
        LOBYTE(v53) = v38 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577A0, &unk_247952330);
        v45 = sub_24794EF14();
        v47 = sub_247924380(v45, v46, &v51);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_2478E1000, v41, v42, "#SamplingUtils: get UserDefault Total SamplingCount is %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x24C1AF180](v44, -1, -1);
        MEMORY[0x24C1AF180](v43, -1, -1);
      }

      if ((v38 & 1) != 0 || (v39 & 0x8000000000000000) == 0)
      {
        return;
      }

      __break(1u);
LABEL_91:
      v17 = sub_24794F394();
      v15 = v50;
    }
  }

  v52 = v11;
  v53 = v13 & 0xFFFFFFFFFFFFFFLL;
  if (v11 != 43)
  {
    if (v11 != 45)
    {
      if (!v14)
      {
        goto LABEL_76;
      }

      v20 = 0;
      v35 = &v52;
      do
      {
        v36 = *v35 - 48;
        if (v36 > 9)
        {
          goto LABEL_76;
        }

        v37 = 10 * v20;
        if ((v20 * 10) >> 64 != (10 * v20) >> 63)
        {
          goto LABEL_76;
        }

        v20 = v37 + v36;
        if (__OFADD__(v37, v36))
        {
          goto LABEL_76;
        }

        v35 = (v35 + 1);
        --v14;
      }

      while (v14);
      goto LABEL_75;
    }

    if (v14)
    {
      v19 = v14 - 1;
      if (v14 != 1)
      {
        v20 = 0;
        v24 = &v52 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            break;
          }

          v20 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v19)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_76;
    }

    goto LABEL_93;
  }

  if (v14)
  {
    v19 = v14 - 1;
    if (v14 != 1)
    {
      v20 = 0;
      v30 = &v52 + 1;
      while (1)
      {
        v31 = *v30 - 48;
        if (v31 > 9)
        {
          break;
        }

        v32 = 10 * v20;
        if ((v20 * 10) >> 64 != (10 * v20) >> 63)
        {
          break;
        }

        v20 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          break;
        }

        ++v30;
        if (!--v19)
        {
          goto LABEL_77;
        }
      }
    }

    goto LABEL_76;
  }

LABEL_95:
  __break(1u);
}

void sub_2479463F8(_BYTE *a1, void *a2)
{
  v2 = 0xEE00435346737365;
  v3 = 0x72506E6F74747562;
  v4 = 0x8000000247952580;
  v5 = 0xD000000000000013;
  if (*a1 == 2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v4 = 0x80000002479525A0;
  }

  if (!*a1)
  {
    v3 = 0xD000000000000015;
    v2 = 0x8000000247952550;
  }

  if (*a1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*a1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  v52 = v6;
  v53 = v7;

  MEMORY[0x24C1AE4C0](0xD00000000000001CLL, 0x8000000247957A50);

  if (a2 && (v9 = sub_24794EEF4(), v10 = [a2 stringForKey_], v9, v10))
  {
    v11 = sub_24794EF04();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = HIBYTE(v13) & 0xF;
  v15 = v11 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v16 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    v39 = 0;
    v38 = 1;
    goto LABEL_81;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {

    LOBYTE(v51) = 0;
    sub_2479435DC(v11, v13, 10);
    v20 = v48;
    v38 = v49;
    goto LABEL_78;
  }

  if ((v13 & 0x2000000000000000) == 0)
  {

    if ((v11 & 0x1000000000000000) == 0)
    {
      goto LABEL_91;
    }

    v17 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
    while (1)
    {
      v18 = *v17;
      if (v18 == 43)
      {
        if (v15 < 1)
        {
          goto LABEL_94;
        }

        v19 = v15 - 1;
        if (v15 == 1)
        {
          goto LABEL_76;
        }

        v20 = 0;
        if (v17)
        {
          v27 = v17 + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              goto LABEL_76;
            }

            v29 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              goto LABEL_76;
            }

            v20 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              goto LABEL_76;
            }

            ++v27;
            if (!--v19)
            {
              goto LABEL_77;
            }
          }
        }
      }

      else if (v18 == 45)
      {
        if (v15 < 1)
        {
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        v19 = v15 - 1;
        if (v15 == 1)
        {
          goto LABEL_76;
        }

        v20 = 0;
        if (v17)
        {
          v21 = v17 + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              break;
            }

            v20 = v23 - v22;
            if (__OFSUB__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v19)
            {
              goto LABEL_77;
            }
          }

LABEL_76:
          v20 = 0;
          LOBYTE(v19) = 1;
          goto LABEL_77;
        }
      }

      else
      {
        if (!v15)
        {
          goto LABEL_76;
        }

        v20 = 0;
        if (v17)
        {
          do
          {
            v33 = *v17 - 48;
            if (v33 > 9)
            {
              goto LABEL_76;
            }

            v34 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              goto LABEL_76;
            }

            v20 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              goto LABEL_76;
            }

            ++v17;
          }

          while (--v15);
        }
      }

LABEL_75:
      LOBYTE(v19) = 0;
LABEL_77:
      LOBYTE(v51) = v19;
      v38 = v19;
LABEL_78:

      if (v38)
      {
        v39 = 0;
      }

      else
      {
        v39 = v20;
      }

LABEL_81:
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v40 = sub_24794ED34();
      __swift_project_value_buffer(v40, qword_27EE58DF8);
      v41 = sub_24794ED14();
      v42 = sub_24794F154();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v51 = v44;
        v52 = v39;
        *v43 = 136315138;
        LOBYTE(v53) = v38 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE577A0, &unk_247952330);
        v45 = sub_24794EF14();
        v47 = sub_247924380(v45, v46, &v51);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_2478E1000, v41, v42, "SamplingUtils: get userDefault Intermediate upload count is %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x24C1AF180](v44, -1, -1);
        MEMORY[0x24C1AF180](v43, -1, -1);
      }

      if ((v38 & 1) != 0 || (v39 & 0x8000000000000000) == 0)
      {
        return;
      }

      __break(1u);
LABEL_91:
      v17 = sub_24794F394();
      v15 = v50;
    }
  }

  v52 = v11;
  v53 = v13 & 0xFFFFFFFFFFFFFFLL;
  if (v11 != 43)
  {
    if (v11 != 45)
    {
      if (!v14)
      {
        goto LABEL_76;
      }

      v20 = 0;
      v35 = &v52;
      do
      {
        v36 = *v35 - 48;
        if (v36 > 9)
        {
          goto LABEL_76;
        }

        v37 = 10 * v20;
        if ((v20 * 10) >> 64 != (10 * v20) >> 63)
        {
          goto LABEL_76;
        }

        v20 = v37 + v36;
        if (__OFADD__(v37, v36))
        {
          goto LABEL_76;
        }

        v35 = (v35 + 1);
        --v14;
      }

      while (v14);
      goto LABEL_75;
    }

    if (v14)
    {
      v19 = v14 - 1;
      if (v14 != 1)
      {
        v20 = 0;
        v24 = &v52 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            break;
          }

          v20 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v19)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_76;
    }

    goto LABEL_93;
  }

  if (v14)
  {
    v19 = v14 - 1;
    if (v14 != 1)
    {
      v20 = 0;
      v30 = &v52 + 1;
      while (1)
      {
        v31 = *v30 - 48;
        if (v31 > 9)
        {
          break;
        }

        v32 = 10 * v20;
        if ((v20 * 10) >> 64 != (10 * v20) >> 63)
        {
          break;
        }

        v20 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          break;
        }

        ++v30;
        if (!--v19)
        {
          goto LABEL_77;
        }
      }
    }

    goto LABEL_76;
  }

LABEL_95:
  __break(1u);
}