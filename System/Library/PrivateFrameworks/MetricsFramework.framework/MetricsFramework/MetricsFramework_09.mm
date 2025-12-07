uint64_t sub_258EAB000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a3 + OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetSELFReporter_reportingService);
  v9[3] = a4;
  v9[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v11 = OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetSELFReporter_logger;
  v12 = sub_258F0A370();
  (*(*(v12 - 8) + 32))(a3 + v11, a1, v12);
  return a3;
}

id sub_258EAB0C0(const void *a1)
{
  v21 = &type metadata for RequestWithNoAssetData;
  v22 = &off_286A2E4D0;
  v2 = swift_allocObject();
  v20[0] = v2;
  memcpy(v2 + 2, a1, 0x110uLL);
  result = [objc_allocWithZone(MEMORY[0x277D59248]) init];
  if (result)
  {
    v4 = result;
    if (v2[9])
    {
      v5 = result;

      v6 = sub_258F0A4E0();
    }

    else
    {
      v7 = result;
      v6 = 0;
    }

    [v4 setSystemBuild_];

    if (__swift_project_boxed_opaque_existential_1(v20, &type metadata for RequestWithNoAssetData)[21])
    {

      v8 = sub_258F0A4E0();

      v9 = v8;
      if ([v9 isEqualToString:@"ORCHSIRIASRMODE_UNKNOWN"])
      {
        v10 = 0;
      }

      else if ([v9 isEqualToString:@"ORCHSIRIASRMODE_SERVER"])
      {
        v10 = 1;
      }

      else if ([v9 isEqualToString:@"ORCHSIRIASRMODE_DEVICE"])
      {
        v10 = 2;
      }

      else
      {
        v10 = 0;
      }

      [v4 setAsrLocation_];
    }

    if (__swift_project_boxed_opaque_existential_1(v20, v21)[23])
    {

      v11 = sub_258F0A4E0();

      v12 = v11;
      if ([v12 isEqualToString:@"ORCHSIRINLMODE_UNKNOWN"])
      {
        v13 = 0;
      }

      else if ([v12 isEqualToString:@"ORCHSIRINLMODE_NLV3_SERVER"])
      {
        v13 = 1;
      }

      else if ([v12 isEqualToString:@"ORCHSIRINLMODE_NLX_DEVICE"])
      {
        v13 = 2;
      }

      else
      {
        v13 = 0;
      }

      [v4 setNlLocation_];
    }

    if (v2[17])
    {

      v14 = sub_258F0A4E0();

      v15 = v14;
      if ([v15 isEqualToString:@"UNKNOWN"])
      {
        v16 = 0;
      }

      else if ([v15 isEqualToString:@"OPTED_IN"])
      {
        v16 = 1;
      }

      else if ([v15 isEqualToString:@"OPTED_OUT"])
      {
        v16 = 2;
      }

      else if ([v15 isEqualToString:@"DISMISSED"])
      {
        v16 = 3;
      }

      else
      {
        v16 = 0;
      }

      [v4 setDataSharingOptInStatus_];
    }

    v17 = v2[15];
    if (v17)
    {
      v18 = v2[14];

      v19 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(v18, v17);

      [v4 setSiriInputLocale_];
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258EAB414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RequestWithNoAssetSELFReporter(0);
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a2, a4);
  return sub_258EAB000(a1, v11, v12, a4, a5);
}

uint64_t sub_258EAB514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CombinedRequestNoAssetData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258EAB578(uint64_t a1)
{
  v2 = type metadata accessor for CombinedRequestNoAssetData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for RequestWithNoAssetSELFReporter(uint64_t a1)
{
  result = qword_27F98A280;
  if (!qword_27F98A280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EAB628(uint64_t a1)
{
  result = sub_258F0A370();
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

uint64_t sub_258EAB850()
{

  return swift_deallocClassInstance();
}

uint64_t sub_258EAB918()
{

  return v0;
}

uint64_t sub_258EAB940()
{

  return swift_deallocClassInstance();
}

uint64_t sub_258EAB9A4()
{
  v0 = sub_258F0A370();
  __swift_allocate_value_buffer(v0, qword_27F98A418);
  __swift_project_value_buffer(v0, qword_27F98A418);
  return sub_258F0A360();
}

uint64_t static SamplingUtils.getSiriLanguage()()
{
  v0 = [objc_opt_self() getSiriLanguageWithFallback_];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_258F0A4F0();

  return v2;
}

uint64_t sub_258EABAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_258DEE37C;

  return sub_258EB04AC(1, a4, a5);
}

uint64_t static SamplingUtils.setEnrollmentStatus(status:siriLanguage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_258DE1DC4;

  return sub_258EB04AC(a1, a2, a3);
}

uint64_t sub_258EABC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A430, &qword_258F14810);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_258EB4D4C(a3, v26 - v11);
  v13 = sub_258F0A790();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_258DE2184(v12, &qword_27F98A430, &qword_258F14810);
  }

  else
  {
    sub_258F0A780();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_258F0A740();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_258F0A570() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_258DE2184(a3, &qword_27F98A430, &qword_258F14810);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_258DE2184(a3, &qword_27F98A430, &qword_258F14810);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_258EABF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A430, &qword_258F14810);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v14 - v9;
  v11 = sub_258F0A790();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;

  sub_258EABC38(0, 0, v10, a4, v12);
}

uint64_t sub_258EAC054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_258DEE37C;

  return sub_258EB04AC(2, a4, a5);
}

uint64_t static SamplingUtils.getAudioIdWithRequestId(requestId:siriLanguage:date:)@<X0>(uint64_t a5@<X4>, char *a6@<X8>)
{
  v64 = a6;
  v66[1] = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v63 - v9;
  v65 = sub_258F09A70();
  v11 = *(v65 - 8);
  v13 = MEMORY[0x28223BE20](v65, v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v63 - v17;
  v19 = objc_opt_self();
  v20 = sub_258F0A4E0();
  v21 = sub_258F0A4E0();
  v66[0] = 0;
  v22 = [v19 getAudioIdWithRequestId:v20 languageCode:v21 date:a5 error:v66];

  v23 = v66[0];
  if (!v22)
  {
    v36 = v66[0];
    v37 = sub_258F09890();

    swift_willThrow();
    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v38 = sub_258F0A370();
    __swift_project_value_buffer(v38, qword_27F98A418);
    v39 = v37;
    v31 = sub_258F0A350();
    v40 = sub_258F0A820();

    v41 = os_log_type_enabled(v31, v40);
    v29 = v65;
    if (!v41)
    {

      goto LABEL_22;
    }

    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138412290;
    v44 = v37;
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v42 + 4) = v45;
    *v43 = v45;
    _os_log_impl(&dword_258DD8000, v31, v40, "#SamplingUtils: SSRRPISamplingXPCService.getAudioId failed with error: %@", v42, 0xCu);
    sub_258DE2184(v43, &qword_27F988C78, &qword_258F11A20);
    MEMORY[0x259C9EF40](v43, -1, -1);
    MEMORY[0x259C9EF40](v42, -1, -1);

LABEL_16:
LABEL_22:
    v59 = 1;
    v60 = v64;
    return (*(v11 + 56))(v60, v59, 1, v29);
  }

  v24 = sub_258F0A4F0();
  v26 = v25;
  v27 = v23;

  v28 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v28 = v24 & 0xFFFFFFFFFFFFLL;
  }

  v29 = v65;
  if (!v28)
  {
LABEL_7:
    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v30 = sub_258F0A370();
    __swift_project_value_buffer(v30, qword_27F98A418);

    v31 = sub_258F0A350();
    v32 = sub_258F0A820();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v66[0] = v34;
      *v33 = 136315138;
      v35 = sub_258DE3018(v24, v26, v66);

      *(v33 + 4) = v35;
      _os_log_impl(&dword_258DD8000, v31, v32, "#SamplingUtils: SSRRPISamplingXPCService.getAudioId returned empty or invalid value: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x259C9EF40](v34, -1, -1);
      MEMORY[0x259C9EF40](v33, -1, -1);
    }

    else
    {
    }

    goto LABEL_16;
  }

  sub_258F09A30();
  if ((*(v11 + 48))(v10, 1, v29) == 1)
  {
    sub_258DE2184(v10, &qword_27F988730, &unk_258F0F8E0);
    goto LABEL_7;
  }

  v46 = *(v11 + 32);
  v46(v18, v10, v29);
  if (qword_27F988678 != -1)
  {
    swift_once();
  }

  v47 = sub_258F0A370();
  __swift_project_value_buffer(v47, qword_27F98A418);
  (*(v11 + 16))(v15, v18, v29);
  v48 = sub_258F0A350();
  v49 = sub_258F0A810();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v63 = v46;
    v51 = v50;
    v52 = swift_slowAlloc();
    v66[0] = v52;
    *v51 = 136315138;
    sub_258EB4ABC(&qword_27F988758, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v53 = sub_258F0AD60();
    v55 = v54;
    (*(v11 + 8))(v15, v65);
    v56 = sub_258DE3018(v53, v55, v66);

    *(v51 + 4) = v56;
    _os_log_impl(&dword_258DD8000, v48, v49, "#SamplingUtils: SSRRPISamplingXPCService.getAudioId is %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    v57 = v52;
    v29 = v65;
    MEMORY[0x259C9EF40](v57, -1, -1);
    v58 = v51;
    v46 = v63;
    MEMORY[0x259C9EF40](v58, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v15, v29);
  }

  v62 = v64;
  v46(v64, v18, v29);
  v60 = v62;
  v59 = 0;
  return (*(v11 + 56))(v60, v59, 1, v29);
}

uint64_t static SamplingUtils.getEnrollementDate(siriLanguage:)@<X0>(char *a3@<X8>)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v4 = sub_258F09A20();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v46 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v46 - v15;
  v17 = [objc_opt_self() sharedManager];
  if (!v17)
  {
    __break(1u);
  }

  v18 = v17;
  v19 = sub_258F0A4E0();
  v49[0] = 0;
  v20 = [v18 getEnrollmentDateWithLocale:v19 error:v49];

  v21 = v49[0];
  if (v20)
  {
    sub_258F09A00();
    v22 = v21;

    v23 = *(v5 + 32);
    v23(v16, v13, v4);
    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v24 = sub_258F0A370();
    __swift_project_value_buffer(v24, qword_27F98A418);
    (*(v5 + 16))(v9, v16, v4);
    v25 = sub_258F0A350();
    v26 = sub_258F0A810();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v47 = v23;
      v28 = v27;
      v29 = swift_slowAlloc();
      v48 = a3;
      v46 = v29;
      v49[0] = v29;
      *v28 = 136315138;
      sub_258EB4ABC(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v30 = sub_258F0AD60();
      v31 = v16;
      v32 = v4;
      v34 = v33;
      (*(v5 + 8))(v9, v32);
      v35 = sub_258DE3018(v30, v34, v49);
      v4 = v32;
      v16 = v31;

      *(v28 + 4) = v35;
      _os_log_impl(&dword_258DD8000, v25, v26, "#SamplingUtils: Current Enrollment Date: %s", v28, 0xCu);
      v36 = v46;
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      a3 = v48;
      MEMORY[0x259C9EF40](v36, -1, -1);
      v37 = v28;
      v23 = v47;
      MEMORY[0x259C9EF40](v37, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }

    v23(a3, v16, v4);
    v44 = 0;
  }

  else
  {
    v38 = v49[0];
    v39 = sub_258F09890();

    swift_willThrow();
    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v40 = sub_258F0A370();
    __swift_project_value_buffer(v40, qword_27F98A418);
    v41 = sub_258F0A350();
    v42 = sub_258F0A820();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_258DD8000, v41, v42, "SSRSamplingManager.shared().getEnrollmentDate failed", v43, 2u);
      MEMORY[0x259C9EF40](v43, -1, -1);
    }

    v44 = 1;
  }

  return (*(v5 + 56))(a3, v44, 1, v4);
}

uint64_t sub_258EACCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = v10;
  v8[27] = v11;
  v8[24] = a7;
  v8[25] = a8;
  v8[22] = a5;
  v8[23] = a6;
  v8[21] = a4;
  return MEMORY[0x2822009F8](sub_258EACD2C, 0, 0);
}

uint64_t sub_258EACD2C()
{
  v1 = objc_opt_self();
  v2 = sub_258F0A4E0();
  v0[28] = v2;
  v3 = sub_258F0A4E0();
  v0[29] = v3;
  v4 = sub_258F099A0();
  v0[30] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_258EACEB8;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A440, &qword_258F148E0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_258EAD444;
  v0[13] = &block_descriptor_31;
  v0[14] = v5;
  [v1 uploadAudioFileWithRequestId:v2 audioId:v3 date:v4 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_258EACEB8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_258EAD210;
  }

  else
  {
    v2 = sub_258EACFC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258EACFC8()
{
  v20 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 224);
  v3 = *(v0 + 144);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);

  if ((v3 & 1) == 0)
  {
    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v6 = sub_258F0A370();
    __swift_project_value_buffer(v6, qword_27F98A418);

    v7 = sub_258F0A350();
    v8 = sub_258F0A820();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = *(v0 + 168);
      v9 = *(v0 + 176);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_258DE3018(v10, v9, &v19);
      *(v11 + 12) = 2080;
      *(v0 + 80) = v5;
      *(v0 + 88) = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988958, &unk_258F0C100);
      v13 = sub_258F0A550();
      v15 = sub_258DE3018(v13, v14, &v19);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_258DD8000, v7, v8, "#SamplingUtils: failed to upload requestId: %s due to issue: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v12, -1, -1);
      MEMORY[0x259C9EF40](v11, -1, -1);

      goto LABEL_8;
    }
  }

LABEL_8:
  v16 = *(v0 + 208);
  swift_beginAccess();
  *(v16 + 16) = v3;
  sub_258F0A8A0();
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_258EAD210(uint64_t a1)
{
  v22 = v1;
  v2 = v1[30];
  v4 = v1[28];
  v3 = v1[29];
  swift_willThrow();

  if (qword_27F988678 != -1)
  {
    swift_once();
  }

  v5 = v1[31];
  v6 = sub_258F0A370();
  __swift_project_value_buffer(v6, qword_27F98A418);

  v7 = v5;
  v8 = sub_258F0A350();
  v9 = sub_258F0A820();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v1[31];
  if (v10)
  {
    v13 = v1[21];
    v12 = v1[22];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_258DE3018(v13, v12, &v21);
    *(v14 + 12) = 2112;
    v17 = v11;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    *v15 = v18;
    _os_log_impl(&dword_258DD8000, v8, v9, "#SamplingUtils: cannot upload requests for %s due to error: %@", v14, 0x16u);
    sub_258DE2184(v15, &qword_27F988C78, &qword_258F11A20);
    MEMORY[0x259C9EF40](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x259C9EF40](v16, -1, -1);
    MEMORY[0x259C9EF40](v14, -1, -1);
  }

  else
  {
  }

  sub_258F0A8A0();
  v19 = v1[1];

  return v19();
}

uint64_t sub_258EAD444(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    if (a3)
    {
      v11 = sub_258F0A4F0();
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

void sub_258EAD534(void *a1, uint64_t a2)
{
  v4 = sub_258F09A20();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v36 - v11;
  if (a1)
  {
    v13 = a1;
    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v14 = sub_258F0A370();
    __swift_project_value_buffer(v14, qword_27F98A418);
    (*(v5 + 16))(v9, a2, v4);
    v15 = a1;
    v16 = sub_258F0A350();
    v17 = sub_258F0A840();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = v36;
      *v18 = 136315394;
      sub_258EB4ABC(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v20 = sub_258F0AD60();
      v22 = v21;
      (*(v5 + 8))(v9, v4);
      v23 = sub_258DE3018(v20, v22, &v37);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2112;
      v24 = a1;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v25;
      *v19 = v25;
      _os_log_impl(&dword_258DD8000, v16, v17, "removed audio id mapping on date: %s with error: %@", v18, 0x16u);
      sub_258DE2184(v19, &qword_27F988C78, &qword_258F11A20);
      MEMORY[0x259C9EF40](v19, -1, -1);
      v26 = v36;
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x259C9EF40](v26, -1, -1);
      MEMORY[0x259C9EF40](v18, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }
  }

  else
  {
    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v27 = sub_258F0A370();
    __swift_project_value_buffer(v27, qword_27F98A418);
    (*(v5 + 16))(v12, a2, v4);
    v28 = sub_258F0A350();
    v29 = sub_258F0A840();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v37 = v31;
      *v30 = 136315138;
      sub_258EB4ABC(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v32 = sub_258F0AD60();
      v34 = v33;
      (*(v5 + 8))(v12, v4);
      v35 = sub_258DE3018(v32, v34, &v37);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_258DD8000, v28, v29, "removed audio id mapping on and before date: %s complete", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x259C9EF40](v31, -1, -1);
      MEMORY[0x259C9EF40](v30, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v12, v4);
    }
  }
}

void sub_258EAD9F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t static SamplingUtils.writeDeviceSelectionDate(forKey:defaults:)(uint64_t a1, unint64_t a2, void *a3)
{
  v37 = a3;
  v5 = sub_258F09B40();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258F09A20();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v37 - v17;
  sub_258F09B50();
  static SamplingUtils.convertGMTDateToLocalStartOfDay(date:)(v15, v18);
  v38 = *(v11 + 8);
  v39 = v10;
  v38(v15, v10);
  v19 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v20 = sub_258F0A4E0();
  [v19 setDateFormat_];

  sub_258F09B30();
  v21 = sub_258F09B20();
  (*(v6 + 8))(v9, v5);
  [v19 setTimeZone_];

  v22 = sub_258F099A0();
  v23 = [v19 stringFromDate_];

  v24 = v23;
  if (!v23)
  {
    sub_258F0A4F0();
    v24 = sub_258F0A4E0();
  }

  v25 = sub_258F0A4F0();
  v27 = v26;
  v28 = sub_258F0A4E0();
  [v37 setValue:v24 forKey:v28];

  v29 = a1;
  if (qword_27F988678 != -1)
  {
    swift_once();
  }

  v30 = sub_258F0A370();
  __swift_project_value_buffer(v30, qword_27F98A418);

  v31 = sub_258F0A350();
  v32 = sub_258F0A810();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v40 = v34;
    *v33 = 136315394;
    v35 = sub_258DE3018(v25, v27, &v40);

    *(v33 + 4) = v35;
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_258DE3018(v29, a2, &v40);
    _os_log_impl(&dword_258DD8000, v31, v32, "#SamplingUtils: Wrote %s to %s in UserDefaults", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v34, -1, -1);
    MEMORY[0x259C9EF40](v33, -1, -1);
  }

  else
  {
  }

  return (v38)(v18, v39);
}

uint64_t static SamplingUtils.convertGMTDateToLocalStartOfDay(date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v25 = sub_258F09A20();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_258F09B40();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v13 = sub_258F0A4E0();
  [v12 setDateFormat_];

  sub_258F09B30();
  v14 = sub_258F09B20();
  v15 = *(v8 + 8);
  v15(v11, v7);
  [v12 setTimeZone_];

  v24 = a1;
  v16 = sub_258F099A0();
  v17 = [v12 stringFromDate_];

  if (!v17)
  {
    sub_258F0A4F0();
    v17 = sub_258F0A4E0();
  }

  v18 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v19 = sub_258F0A4E0();
  [v18 setDateFormat_];

  sub_258F09B30();
  v20 = sub_258F09B20();
  v15(v11, v7);
  [v18 setTimeZone_];

  v21 = [v18 dateFromString_];
  if (!v21)
  {
    return (*(v3 + 16))(v26, v24, v25);
  }

  sub_258F09A00();

  return (*(v3 + 32))(v26, v6, v25);
}

id static SamplingUtils.defaultDateFormatter()()
{
  v0 = sub_258F09B40();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v6 = sub_258F0A4E0();
  [v5 setDateFormat_];

  sub_258F09B30();
  v7 = sub_258F09B20();
  (*(v1 + 8))(v4, v0);
  [v5 setTimeZone_];

  return v5;
}

uint64_t static SamplingUtils.getDeviceSelectionDate(forKey:defaults:)@<X0>(void *a3@<X2>, char *a4@<X8>)
{
  v38 = a4;
  v5 = sub_258F09B40();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258F09A20();
  v36 = *(v10 - 8);
  v37 = v10;
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v35 - v16;
  v18 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v19 = sub_258F0A4E0();
  [v18 setDateFormat_];

  sub_258F09B30();
  v20 = sub_258F09B20();
  (*(v6 + 8))(v9, v5);
  [v18 setTimeZone_];

  v21 = sub_258F0A4E0();
  v22 = [a3 stringForKey_];

  if (v22)
  {
    sub_258F0A4F0();
  }

  v23 = sub_258F0A4E0();

  v24 = [v18 dateFromString_];

  if (v24)
  {
    sub_258F09A00();

    v26 = v36;
    v25 = v37;
    v27 = *(v36 + 32);
    v27(v17, v14, v37);
    v28 = v38;
    v27(v38, v17, v25);
    return (*(v26 + 56))(v28, 0, 1, v25);
  }

  else
  {
    v30 = sub_258F0A4E0();
    v31 = [a3 objectForKey_];

    if (v31)
    {
      sub_258F0A9C0();
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
    }

    v41[0] = v39;
    v41[1] = v40;
    if (*(&v40 + 1))
    {
      v33 = v37;
      v32 = v38;
      v34 = swift_dynamicCast();
      return (*(v36 + 56))(v32, v34 ^ 1u, 1, v33);
    }

    else
    {
      sub_258DE2184(v41, &qword_27F989868, &unk_258F12D70);
      return (*(v36 + 56))(v38, 1, 1, v37);
    }
  }
}

void static SamplingUtils.setUserSamplingIdForCollectionRotation(enrollmentId:userSamplingId:defaults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a4)
  {
    v6 = sub_258F0A4E0();
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x259C9DEB0](0xD000000000000014, 0x8000000258F1D6C0);
  v7 = sub_258F0A4E0();

  [a5 setValue:v6 forKey:v7];
  swift_unknownObjectRelease();
}

uint64_t static SamplingUtils.getUserSamplingId(enrollmentId:defaults:)(uint64_t a1, uint64_t a2, void *a3)
{

  MEMORY[0x259C9DEB0](0xD000000000000014, 0x8000000258F1D6C0);
  v4 = sub_258F0A4E0();

  v5 = [a3 stringForKey_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_258F0A4F0();

  return v6;
}

uint64_t static SamplingUtils.getSISchemaTriggerPhrase(for:)(uint64_t a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 2);
  }
}

id static SamplingUtils.convertSISchemaLocale(for:)(uint64_t a1, uint64_t a2)
{
  sub_258DEF388();
  v2 = sub_258F0A970();
  v4 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(v2, v3);

  return v4;
}

void static SamplingUtils.getSelectionDateKey(enrollmentId:)(uint64_t a1, uint64_t a2)
{

  MEMORY[0x259C9DEB0](45, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0x6F697463656C6553, 0xED0000657461446ELL);
}

void static SamplingUtils.getManifestCurrentSamplesUploadedKey(enrollmentId:)(uint64_t a1, uint64_t a2)
{

  MEMORY[0x259C9DEB0](45, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0xD00000000000001DLL, 0x8000000258F1D6E0);
}

uint64_t sub_258EAEAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A430, &qword_258F14810);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v16 - v11;
  v13 = sub_258F0A790();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a2;

  sub_258EABC38(0, 0, v12, a6, v14);
}

uint64_t sub_258EAEC08()
{
  v0 = [objc_opt_self() getSiriLanguageWithFallback_];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_258F0A4F0();

  return v2;
}

uint64_t sub_258EAED04(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_258EAED64(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258EAEE5C;

  return v6(a1);
}

uint64_t sub_258EAEE5C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_258EAEF54(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988938, &qword_258F0C0E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_258EAEFC8(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unsigned __int8 *sub_258EAF03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_258F0A650();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_258EAFB44(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_258F0AB10();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_126;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if (v37 != v37)
            {
              goto LABEL_126;
            }

            v38 = v35 + v36;
            v21 = __OFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
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

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_126;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
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

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_127;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if (v67 != v67)
          {
            goto LABEL_126;
          }

          v68 = v65 + v66;
          v21 = __OFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_126;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if (v50 != v50)
          {
            goto LABEL_126;
          }

          v51 = v48 + v49;
          v21 = __OFSUB__(v50, v51);
          v43 = v50 - v51;
          if (v21)
          {
            goto LABEL_126;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_127;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if (v59 != v59)
        {
          goto LABEL_126;
        }

        v60 = v57 + v58;
        v21 = __OFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_126;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_125:
      v15 = 0;
      v18 = v43;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_258EAF5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_258F0A650();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_258EAFB44(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_258F0AB10();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
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

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
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

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_258EAFB44(uint64_t a1, unint64_t a2)
{
  v2 = sub_258F0A660();
  v6 = sub_258EAFBC4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_258EAFBC4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_258F0A930();
    if (!v9 || (v10 = v9, v11 = sub_258EAEF54(v9, 0), v12 = sub_258EAFD1C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_258F0A5A0();

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
      return sub_258F0A5A0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_258F0AB10();
LABEL_4:

  return sub_258F0A5A0();
}

unint64_t sub_258EAFD1C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_258EAFF3C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_258F0A630();
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
          result = sub_258F0AB10();
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

    result = sub_258EAFF3C(v12, a6, a7);
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

    result = sub_258F0A610();
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

unint64_t sub_258EAFF3C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_258F0A640();
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
    v5 = MEMORY[0x259C9DEE0](15, a1 >> 16);
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

unint64_t sub_258EAFFB8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    v5 = 0;
    MEMORY[0x259C9EF50](&v5, 8);
    v3 = v5 * v2;
    if (v3 < v1)
    {
      for (i = -v1 % v1; i > v3; v3 = v5 * v2)
      {
        v5 = 0;
        MEMORY[0x259C9EF50](&v5, 8);
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_258EB0044(uint64_t a1, uint64_t a2, uint64_t a3)
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
        v6 = _swift_stdlib_strtof_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_258F0AAD0();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

id _s16MetricsFramework13SamplingUtilsC20getEnrollementStatus12siriLanguageSo022SSREnrollmentSelectionG0VSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = sub_258F0A4E0();
  v19[0] = 0;
  v4 = [v2 getEnrollmentSelectionStatusWithLocale:v3 error:v19];

  v5 = v19[0];
  v6 = qword_27F988678;
  if (v19[0])
  {
    v7 = v19[0];
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = sub_258F0A370();
    __swift_project_value_buffer(v8, qword_27F98A418);
    v9 = v7;
    v10 = sub_258F0A350();
    v11 = sub_258F0A820();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v5;
      v14 = v9;
      _os_log_impl(&dword_258DD8000, v10, v11, "#SamplingUtils: getEnrollmentSelectionStatus failed with error: %@", v12, 0xCu);
      sub_258DE2184(v13, &qword_27F988C78, &qword_258F11A20);
      MEMORY[0x259C9EF40](v13, -1, -1);
      MEMORY[0x259C9EF40](v12, -1, -1);

      v10 = v14;
    }

    else
    {
    }
  }

  else
  {
    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v15 = sub_258F0A370();
    __swift_project_value_buffer(v15, qword_27F98A418);
    v10 = sub_258F0A350();
    v16 = sub_258F0A810();
    if (os_log_type_enabled(v10, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = v4;
      _os_log_impl(&dword_258DD8000, v10, v16, "#SamplingUtils: Current Enrollment Status: %lu", v17, 0xCu);
      MEMORY[0x259C9EF40](v17, -1, -1);
    }
  }

  return v4;
}

uint64_t sub_258EB03EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_258DEE37C;

  return sub_258EABAC0(a1, v4, v5, v7, v6);
}

uint64_t sub_258EB04AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_258EB04D0, 0, 0);
}

uint64_t sub_258EB04D0()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v0[21] = v1;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = sub_258F0A4E0();
  v0[22] = v4;
  v0[2] = v0;
  v0[3] = sub_258EB0648;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A450, &qword_258F148E8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_258EB5088;
  v0[13] = &block_descriptor_35_0;
  v0[14] = v5;
  [v2 updateStatus:v3 languageCode:v4 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_258EB0648()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_258EB0880;
  }

  else
  {
    v2 = sub_258EB0758;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258EB0758()
{
  v1 = *(v0 + 168);

  if (qword_27F988678 != -1)
  {
    swift_once();
  }

  v2 = sub_258F0A370();
  __swift_project_value_buffer(v2, qword_27F98A418);
  v3 = sub_258F0A350();
  v4 = sub_258F0A810();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 168);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_258DD8000, v3, v4, "#SamplingUtils: SSRRPISamplingXPCService.updateStatus completed", v7, 2u);
    MEMORY[0x259C9EF40](v7, -1, -1);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_258EB0880(uint64_t a1)
{
  v2 = v1[22];
  v3 = v1[21];
  swift_willThrow();

  if (qword_27F988678 != -1)
  {
    swift_once();
  }

  v4 = v1[23];
  v5 = sub_258F0A370();
  __swift_project_value_buffer(v5, qword_27F98A418);
  v6 = v4;
  v7 = sub_258F0A350();
  v8 = sub_258F0A820();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[23];
  v11 = v1[21];
  if (v9)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v10;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_258DD8000, v7, v8, "#SamplingUtils: SSRRPISamplingXPCService.updateStatus failed with %@", v12, 0xCu);
    sub_258DE2184(v13, &qword_27F988C78, &qword_258F11A20);
    MEMORY[0x259C9EF40](v13, -1, -1);
    MEMORY[0x259C9EF40](v12, -1, -1);
  }

  else
  {
  }

  v16 = v1[1];

  return v16();
}

uint64_t sub_258EB0A4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_258DEE37C;

  return sub_258EAC054(a1, v4, v5, v7, v6);
}

uint64_t _s16MetricsFramework13SamplingUtilsC16getEnrollementId12siriLanguageSSSgSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() sharedManager];
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  v4 = sub_258F0A4E0();
  v23[0] = 0;
  v5 = [v3 getEnrollmentIdWithLocale:v4 error:v23];

  v6 = v23[0];
  if (v5)
  {
    v7 = sub_258F0A4F0();
    v9 = v8;
    v10 = v6;

    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v11 = sub_258F0A370();
    __swift_project_value_buffer(v11, qword_27F98A418);

    v12 = sub_258F0A350();
    v13 = sub_258F0A810();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_258DE3018(v7, v9, v23);
      _os_log_impl(&dword_258DD8000, v12, v13, "#SamplingUtils: Current Enrollment Id: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x259C9EF40](v15, -1, -1);
      MEMORY[0x259C9EF40](v14, -1, -1);
    }
  }

  else
  {
    v16 = v23[0];
    v17 = sub_258F09890();

    swift_willThrow();
    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v18 = sub_258F0A370();
    __swift_project_value_buffer(v18, qword_27F98A418);
    v19 = sub_258F0A350();
    v20 = sub_258F0A820();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_258DD8000, v19, v20, "SSRSamplingManager.shared().getEnrollmentId failed", v21, 2u);
      MEMORY[0x259C9EF40](v21, -1, -1);
    }

    return 0;
  }

  return v7;
}

uint64_t _s16MetricsFramework13SamplingUtilsC35isEnrollmentDateWithinLastSixMonths12siriLanguageSbSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_258F09AF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v45 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258F09B00();
  v44 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v47 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v38 - v15;
  v17 = sub_258F09A20();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v43 = &v38 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v46 = &v38 - v27;
  type metadata accessor for SamplingUtils();
  static SamplingUtils.getEnrollementDate(siriLanguage:)(v16);
  v28 = v18[6];
  if (v28(v16, 1, v17) == 1)
  {
    v29 = v16;
  }

  else
  {
    v40 = v2;
    v41 = v6;
    v39 = v18[4];
    v39(v46, v16, v17);
    sub_258F09AE0();
    v30 = v45;
    (*(v3 + 104))(v45, *MEMORY[0x277CC9998], v2);
    sub_258F09A10();
    v31 = v47;
    sub_258F09AD0();
    v42 = v18[1];
    v42(v22, v17);
    (*(v3 + 8))(v30, v40);
    (*(v44 + 8))(v9, v41);
    if (v28(v31, 1, v17) != 1)
    {
      v33 = v43;
      v39(v43, v47, v17);
      sub_258EB4ABC(&qword_27F989870, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v34 = v46;
      v35 = sub_258F0A4A0();
      v36 = v42;
      v42(v33, v17);
      v36(v34, v17);
      v32 = v35 ^ 1;
      return v32 & 1;
    }

    v42(v46, v17);
    v29 = v47;
  }

  sub_258DE2184(v29, &qword_27F988728, &unk_258F0B840);
  v32 = 0;
  return v32 & 1;
}

uint64_t _s16MetricsFramework13SamplingUtilsC30getDonationIdsWithEnrollmentId010enrollmentJ0SaySSGSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() sharedManager];
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  v4 = sub_258F0A4E0();
  v20[0] = 0;
  v5 = [v3 getDonationIdsWithEnrollmentId:v4 error:v20];

  v6 = v20[0];
  if (v5)
  {
    v7 = sub_258F0A6B0();
    v8 = v6;

    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v9 = sub_258F0A370();
    __swift_project_value_buffer(v9, qword_27F98A418);

    v10 = sub_258F0A350();
    v11 = sub_258F0A810();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = *(v7 + 16);

      _os_log_impl(&dword_258DD8000, v10, v11, "#SamplingUtils: getDonationDataWithEnrollmentId: %ld", v12, 0xCu);
      MEMORY[0x259C9EF40](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v13 = v20[0];
    v14 = sub_258F09890();

    swift_willThrow();
    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v15 = sub_258F0A370();
    __swift_project_value_buffer(v15, qword_27F98A418);
    v16 = sub_258F0A350();
    v17 = sub_258F0A820();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_258DD8000, v16, v17, "SSRSamplingManager.shared().getDonationIds() failed", v18, 2u);
      MEMORY[0x259C9EF40](v18, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v7;
}

unint64_t _s16MetricsFramework13SamplingUtilsC36getDonationDataArrayWithEnrollmentId010enrollmentK0SaySo020SSRDonationUtteranceG0CGSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() sharedManager];
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  v4 = sub_258F0A4E0();
  v21[0] = 0;
  v5 = [v3 getDonationDataWithEnrollmentId:v4 error:v21];

  v6 = v21[0];
  if (v5)
  {
    sub_258EB4D00();
    v7 = sub_258F0A6B0();
    v8 = v6;

    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v9 = sub_258F0A370();
    __swift_project_value_buffer(v9, qword_27F98A418);

    v10 = sub_258F0A350();
    v11 = sub_258F0A810();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      if (v7 >> 62)
      {
        v13 = sub_258F0AA20();
      }

      else
      {
        v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v12 + 4) = v13;

      _os_log_impl(&dword_258DD8000, v10, v11, "#SamplingUtils: getDonationDataWithEnrollmentId: %ld", v12, 0xCu);
      MEMORY[0x259C9EF40](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v14 = v21[0];
    v15 = sub_258F09890();

    swift_willThrow();
    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v16 = sub_258F0A370();
    __swift_project_value_buffer(v16, qword_27F98A418);
    v17 = sub_258F0A350();
    v18 = sub_258F0A820();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_258DD8000, v17, v18, "SSRSamplingManager.shared().getDonationData() failed", v19, 2u);
      MEMORY[0x259C9EF40](v19, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v7;
}

uint64_t _s16MetricsFramework13SamplingUtilsC24uploadAudioWithRequestId07requestI005audioI04dateSbSS_SS10Foundation4DateVtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a5;
  v48 = a2;
  v50 = a3;
  v51 = a4;
  v55 = a1;
  v5 = sub_258F09A20();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v9 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A430, &qword_258F14810);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v43 - v12;
  v44 = &v43 - v12;
  v14 = sub_258F0A3D0();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v46 = &v43 - v21;
  v45 = dispatch_semaphore_create(0);
  sub_258F0A3C0();
  sub_258F0A3E0();
  v22 = *(v15 + 8);
  v52 = v14;
  v49 = v15 + 8;
  v54 = v22;
  v22(v19, v14);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v53 = v23 + 16;
  v24 = sub_258F0A790();
  (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
  v25 = v5;
  (*(v6 + 16))(v9, v47, v5);
  v26 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v27 = (v7 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  v29 = v48;
  *(v28 + 4) = v55;
  *(v28 + 5) = v29;
  v30 = v51;
  *(v28 + 6) = v50;
  *(v28 + 7) = v30;
  (*(v6 + 32))(&v28[v26], v9, v25);
  *&v28[v27] = v23;
  v31 = v45;
  *&v28[(v27 + 15) & 0xFFFFFFFFFFFFFFF8] = v45;

  v32 = v23;

  v33 = v31;
  v34 = v46;
  sub_258EABC38(0, 0, v44, &unk_258F148D8, v28);

  sub_258F0A890();
  if (sub_258F0A3B0())
  {
    v35 = v52;
    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v36 = sub_258F0A370();
    __swift_project_value_buffer(v36, qword_27F98A418);

    v37 = sub_258F0A350();
    v38 = sub_258F0A820();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v56[0] = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_258DE3018(v55, v29, v56);
      _os_log_impl(&dword_258DD8000, v37, v38, "#SamplingUtils: SSRRPISampledAudioUploader.uploadAudioFile for requestId: %s timed out.", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x259C9EF40](v40, -1, -1);
      MEMORY[0x259C9EF40](v39, -1, -1);
    }

    else
    {
    }

    v54(v34, v35);
  }

  else
  {
    v54(v34, v52);
  }

  swift_beginAccess();
  v41 = *(v32 + 16);

  return v41;
}

void _s16MetricsFramework13SamplingUtilsC31cleanUpAudioWithOnAndBeforeDate4datey10Foundation0L0V_tFZ_0(uint64_t a1)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v2 = sub_258F09A20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v7 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v47 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v47 - v13;
  v15 = objc_opt_self();
  v16 = sub_258F099A0();
  aBlock[0] = 0;
  [v15 cleanUpAudioOnAndBeforeDate:v16 error:aBlock];

  v17 = aBlock[0];
  if (aBlock[0])
  {
    v18 = qword_27F988678;
    v19 = aBlock[0];
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = sub_258F0A370();
    __swift_project_value_buffer(v20, qword_27F98A418);
    (*(v3 + 16))(v14, a1, v2);
    v21 = v19;
    v22 = sub_258F0A350();
    v23 = sub_258F0A820();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = v2;
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      aBlock[0] = v49;
      *v24 = 136315394;
      sub_258EB4ABC(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v26 = sub_258F0AD60();
      v28 = v27;
      (*(v3 + 8))(v14, v25);
      v29 = sub_258DE3018(v26, v28, aBlock);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2112;
      *(v24 + 14) = v21;
      v30 = v48;
      *v48 = v17;
      v31 = v21;
      _os_log_impl(&dword_258DD8000, v22, v23, "#SamplingUtils: SSRRPISampledAudioUploader.cleanUpAudioOnAnd on date: %s failed with error: %@", v24, 0x16u);
      sub_258DE2184(v30, &qword_27F988C78, &qword_258F11A20);
      MEMORY[0x259C9EF40](v30, -1, -1);
      v32 = v49;
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x259C9EF40](v32, -1, -1);
      MEMORY[0x259C9EF40](v24, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v14, v2);
    }
  }

  else
  {
    v48 = objc_opt_self();
    v33 = sub_258F099A0();
    v49 = *(v3 + 16);
    (v49)(v11, a1, v2);
    v34 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v35 = swift_allocObject();
    (*(v3 + 32))(&v35[v34], v11, v2);
    aBlock[4] = sub_258EB4B04;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_258EAD9F0;
    aBlock[3] = &block_descriptor_5;
    v36 = _Block_copy(aBlock);

    [v48 removeMappingOnAndBefore:v33 completion:v36];
    _Block_release(v36);

    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v37 = sub_258F0A370();
    __swift_project_value_buffer(v37, qword_27F98A418);
    (v49)(v7, a1, v2);
    v38 = sub_258F0A350();
    v39 = sub_258F0A820();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v40 = 136315394;
      sub_258EB4ABC(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v43 = sub_258F0AD60();
      v45 = v44;
      (*(v3 + 8))(v7, v2);
      v46 = sub_258DE3018(v43, v45, aBlock);

      *(v40 + 4) = v46;
      *(v40 + 12) = 2112;
      *(v40 + 14) = 0;
      *v41 = 0;
      _os_log_impl(&dword_258DD8000, v38, v39, "#SamplingUtils: SSRRPISampledAudioUploader.cleanUpAudioOnAnd on date: %s failed with error: %@", v40, 0x16u);
      sub_258DE2184(v41, &qword_27F988C78, &qword_258F11A20);
      MEMORY[0x259C9EF40](v41, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x259C9EF40](v42, -1, -1);
      MEMORY[0x259C9EF40](v40, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v7, v2);
    }
  }
}

void _s16MetricsFramework13SamplingUtilsC03getC30CycleDaysLimitForUserSelection4fromSiSo14NSUserDefaultsC_tFZ_0(void *a1)
{
  v2 = sub_258F0A4E0();
  v3 = [a1 stringForKey_];

  if (v3)
  {
    v4 = sub_258F0A4F0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = HIBYTE(v6) & 0xF;
  v8 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v9 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    goto LABEL_67;
  }

  if ((v6 & 0x1000000000000000) == 0)
  {
    if ((v6 & 0x2000000000000000) != 0)
    {
      v36[0] = v4;
      v36[1] = v6 & 0xFFFFFFFFFFFFFFLL;
      if (v4 == 43)
      {
        if (v7)
        {
          if (--v7)
          {
            v12 = 0;
            v22 = v36 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                break;
              }

              v24 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                break;
              }

              v12 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                break;
              }

              ++v22;
              if (!--v7)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_64;
        }

LABEL_79:
        __break(1u);
        return;
      }

      if (v4 != 45)
      {
        if (v7)
        {
          v12 = 0;
          v27 = v36;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              break;
            }

            ++v27;
            if (!--v7)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

      if (v7)
      {
        if (--v7)
        {
          v12 = 0;
          v16 = v36 + 1;
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              break;
            }

            v18 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v18 - v17;
            if (__OFSUB__(v18, v17))
            {
              break;
            }

            ++v16;
            if (!--v7)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }
    }

    else
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        v10 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v10 = sub_258F0AB10();
      }

      v11 = *v10;
      if (v11 == 43)
      {
        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            v12 = 0;
            if (v10)
            {
              v19 = v10 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  goto LABEL_64;
                }

                v21 = 10 * v12;
                if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                {
                  goto LABEL_64;
                }

                v12 = v21 + v20;
                if (__OFADD__(v21, v20))
                {
                  goto LABEL_64;
                }

                ++v19;
                if (!--v7)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_56;
          }

          goto LABEL_64;
        }

        goto LABEL_78;
      }

      if (v11 != 45)
      {
        if (v8)
        {
          v12 = 0;
          if (v10)
          {
            while (1)
            {
              v25 = *v10 - 48;
              if (v25 > 9)
              {
                goto LABEL_64;
              }

              v26 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                goto LABEL_64;
              }

              v12 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                goto LABEL_64;
              }

              ++v10;
              if (!--v8)
              {
                goto LABEL_56;
              }
            }
          }

          goto LABEL_56;
        }

LABEL_64:
        v12 = 0;
        LOBYTE(v7) = 1;
        goto LABEL_65;
      }

      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v12 = 0;
          if (v10)
          {
            v13 = v10 + 1;
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_64;
              }

              v15 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                goto LABEL_64;
              }

              v12 = v15 - v14;
              if (__OFSUB__(v15, v14))
              {
                goto LABEL_64;
              }

              ++v13;
              if (!--v7)
              {
                goto LABEL_65;
              }
            }
          }

LABEL_56:
          LOBYTE(v7) = 0;
LABEL_65:
          v37 = v7;
          v30 = v7;
          goto LABEL_66;
        }

        goto LABEL_64;
      }

      __break(1u);
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v37 = 0;
  v12 = sub_258EAF5B8(v4, v6, 10);
  v30 = v35;
LABEL_66:

  if (v30)
  {
LABEL_67:
    v12 = 180;
  }

  if (qword_27F988678 != -1)
  {
    swift_once();
  }

  v31 = sub_258F0A370();
  __swift_project_value_buffer(v31, qword_27F98A418);
  v32 = sub_258F0A350();
  v33 = sub_258F0A810();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v12;
    _os_log_impl(&dword_258DD8000, v32, v33, "#SamplingUtils: getSamplingCycleDaysLimitForUserSelection is %ld", v34, 0xCu);
    MEMORY[0x259C9EF40](v34, -1, -1);
  }
}

uint64_t _s16MetricsFramework13SamplingUtilsC27isDateWithinCollectionCycle4date010collectingF08defaultsSb10Foundation0F0V_AJSo14NSUserDefaultsCtFZ_0(uint64_t a1, uint64_t a2, void *a3)
{
  v27[1] = a2;
  v29 = a1;
  v4 = sub_258F09AF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_258F09B00();
  v9 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v27 - v15;
  v17 = sub_258F09A20();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v27[0] = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16MetricsFramework13SamplingUtilsC03getC30CycleDaysLimitForUserSelection4fromSiSo14NSUserDefaultsC_tFZ_0(a3);
  v22 = v21;
  sub_258F09AE0();
  result = (*(v5 + 104))(v8, *MEMORY[0x277CC9968], v4);
  if (v22 == 0x8000000000000000)
  {
    __break(1u);
  }

  else
  {
    sub_258F09AD0();
    (*(v5 + 8))(v8, v4);
    (*(v9 + 8))(v12, v28);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_258DE2184(v16, &qword_27F988728, &unk_258F0B840);
      v24 = 0;
    }

    else
    {
      v25 = v27[0];
      (*(v18 + 32))(v27[0], v16, v17);
      sub_258EB4ABC(&qword_27F989870, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v26 = sub_258F0A4A0();
      (*(v18 + 8))(v25, v17);
      v24 = v26 ^ 1;
    }

    return v24 & 1;
  }

  return result;
}

uint64_t _s16MetricsFramework13SamplingUtilsC40isDeviceSelectionDateWithinCyclingPeriod06deviceG3Key8defaultsSbSS_So14NSUserDefaultsCtFZ_0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v20 - v6;
  v8 = sub_258F09A20();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v20 - v15;
  type metadata accessor for SamplingUtils();
  static SamplingUtils.getDeviceSelectionDate(forKey:defaults:)(a3, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_258DE2184(v7, &qword_27F988728, &unk_258F0B840);
    v17 = 0;
  }

  else
  {
    (*(v9 + 32))(v16, v7, v8);
    sub_258F09A10();
    v17 = _s16MetricsFramework13SamplingUtilsC27isDateWithinCollectionCycle4date010collectingF08defaultsSb10Foundation0F0V_AJSo14NSUserDefaultsCtFZ_0(v13, v16, a3);
    v18 = *(v9 + 8);
    v18(v13, v8);
    v18(v16, v8);
  }

  return v17 & 1;
}

void _s16MetricsFramework13SamplingUtilsC03getC16CountPerDayLimit4fromSiSo14NSUserDefaultsC_tFZ_0(void *a1)
{
  v2 = sub_258F0A4E0();
  v3 = [a1 stringForKey_];

  if (v3)
  {
    v4 = sub_258F0A4F0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = HIBYTE(v6) & 0xF;
  v8 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v9 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    goto LABEL_67;
  }

  if ((v6 & 0x1000000000000000) == 0)
  {
    if ((v6 & 0x2000000000000000) != 0)
    {
      v36[0] = v4;
      v36[1] = v6 & 0xFFFFFFFFFFFFFFLL;
      if (v4 == 43)
      {
        if (v7)
        {
          if (--v7)
          {
            v12 = 0;
            v22 = v36 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                break;
              }

              v24 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                break;
              }

              v12 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                break;
              }

              ++v22;
              if (!--v7)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_64;
        }

LABEL_79:
        __break(1u);
        return;
      }

      if (v4 != 45)
      {
        if (v7)
        {
          v12 = 0;
          v27 = v36;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              break;
            }

            ++v27;
            if (!--v7)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

      if (v7)
      {
        if (--v7)
        {
          v12 = 0;
          v16 = v36 + 1;
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              break;
            }

            v18 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v18 - v17;
            if (__OFSUB__(v18, v17))
            {
              break;
            }

            ++v16;
            if (!--v7)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }
    }

    else
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        v10 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v10 = sub_258F0AB10();
      }

      v11 = *v10;
      if (v11 == 43)
      {
        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            v12 = 0;
            if (v10)
            {
              v19 = v10 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  goto LABEL_64;
                }

                v21 = 10 * v12;
                if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                {
                  goto LABEL_64;
                }

                v12 = v21 + v20;
                if (__OFADD__(v21, v20))
                {
                  goto LABEL_64;
                }

                ++v19;
                if (!--v7)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_56;
          }

          goto LABEL_64;
        }

        goto LABEL_78;
      }

      if (v11 != 45)
      {
        if (v8)
        {
          v12 = 0;
          if (v10)
          {
            while (1)
            {
              v25 = *v10 - 48;
              if (v25 > 9)
              {
                goto LABEL_64;
              }

              v26 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                goto LABEL_64;
              }

              v12 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                goto LABEL_64;
              }

              ++v10;
              if (!--v8)
              {
                goto LABEL_56;
              }
            }
          }

          goto LABEL_56;
        }

LABEL_64:
        v12 = 0;
        LOBYTE(v7) = 1;
        goto LABEL_65;
      }

      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v12 = 0;
          if (v10)
          {
            v13 = v10 + 1;
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_64;
              }

              v15 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                goto LABEL_64;
              }

              v12 = v15 - v14;
              if (__OFSUB__(v15, v14))
              {
                goto LABEL_64;
              }

              ++v13;
              if (!--v7)
              {
                goto LABEL_65;
              }
            }
          }

LABEL_56:
          LOBYTE(v7) = 0;
LABEL_65:
          v37 = v7;
          v30 = v7;
          goto LABEL_66;
        }

        goto LABEL_64;
      }

      __break(1u);
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v37 = 0;
  v12 = sub_258EAF5B8(v4, v6, 10);
  v30 = v35;
LABEL_66:

  if (v30)
  {
LABEL_67:
    v12 = 4;
  }

  if (qword_27F988678 != -1)
  {
    swift_once();
  }

  v31 = sub_258F0A370();
  __swift_project_value_buffer(v31, qword_27F98A418);
  v32 = sub_258F0A350();
  v33 = sub_258F0A810();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v12;
    _os_log_impl(&dword_258DD8000, v32, v33, "#SamplingUtils: getSamplingCountPerDayLimit is %ld ", v34, 0xCu);
    MEMORY[0x259C9EF40](v34, -1, -1);
  }
}

void _s16MetricsFramework13SamplingUtilsC21getManifestTotalLimit4fromSiSo14NSUserDefaultsC_tFZ_0(void *a1)
{
  v2 = sub_258F0A4E0();
  v3 = [a1 stringForKey_];

  if (v3)
  {
    v4 = sub_258F0A4F0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = HIBYTE(v6) & 0xF;
  v8 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v9 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    goto LABEL_67;
  }

  if ((v6 & 0x1000000000000000) == 0)
  {
    if ((v6 & 0x2000000000000000) != 0)
    {
      v36[0] = v4;
      v36[1] = v6 & 0xFFFFFFFFFFFFFFLL;
      if (v4 == 43)
      {
        if (v7)
        {
          if (--v7)
          {
            v12 = 0;
            v22 = v36 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                break;
              }

              v24 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                break;
              }

              v12 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                break;
              }

              ++v22;
              if (!--v7)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_64;
        }

LABEL_79:
        __break(1u);
        return;
      }

      if (v4 != 45)
      {
        if (v7)
        {
          v12 = 0;
          v27 = v36;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              break;
            }

            ++v27;
            if (!--v7)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

      if (v7)
      {
        if (--v7)
        {
          v12 = 0;
          v16 = v36 + 1;
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              break;
            }

            v18 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v18 - v17;
            if (__OFSUB__(v18, v17))
            {
              break;
            }

            ++v16;
            if (!--v7)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }
    }

    else
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        v10 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v10 = sub_258F0AB10();
      }

      v11 = *v10;
      if (v11 == 43)
      {
        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            v12 = 0;
            if (v10)
            {
              v19 = v10 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  goto LABEL_64;
                }

                v21 = 10 * v12;
                if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                {
                  goto LABEL_64;
                }

                v12 = v21 + v20;
                if (__OFADD__(v21, v20))
                {
                  goto LABEL_64;
                }

                ++v19;
                if (!--v7)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_56;
          }

          goto LABEL_64;
        }

        goto LABEL_78;
      }

      if (v11 != 45)
      {
        if (v8)
        {
          v12 = 0;
          if (v10)
          {
            while (1)
            {
              v25 = *v10 - 48;
              if (v25 > 9)
              {
                goto LABEL_64;
              }

              v26 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                goto LABEL_64;
              }

              v12 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                goto LABEL_64;
              }

              ++v10;
              if (!--v8)
              {
                goto LABEL_56;
              }
            }
          }

          goto LABEL_56;
        }

LABEL_64:
        v12 = 0;
        LOBYTE(v7) = 1;
        goto LABEL_65;
      }

      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v12 = 0;
          if (v10)
          {
            v13 = v10 + 1;
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_64;
              }

              v15 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                goto LABEL_64;
              }

              v12 = v15 - v14;
              if (__OFSUB__(v15, v14))
              {
                goto LABEL_64;
              }

              ++v13;
              if (!--v7)
              {
                goto LABEL_65;
              }
            }
          }

LABEL_56:
          LOBYTE(v7) = 0;
LABEL_65:
          v37 = v7;
          v30 = v7;
          goto LABEL_66;
        }

        goto LABEL_64;
      }

      __break(1u);
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v37 = 0;
  v12 = sub_258EAF5B8(v4, v6, 10);
  v30 = v35;
LABEL_66:

  if (v30)
  {
LABEL_67:
    v12 = 150;
  }

  if (qword_27F988678 != -1)
  {
    swift_once();
  }

  v31 = sub_258F0A370();
  __swift_project_value_buffer(v31, qword_27F98A418);
  v32 = sub_258F0A350();
  v33 = sub_258F0A810();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v12;
    _os_log_impl(&dword_258DD8000, v32, v33, "#SamplingUtils: getManifestTotalLimit is %ld ", v34, 0xCu);
    MEMORY[0x259C9EF40](v34, -1, -1);
  }
}

float _s16MetricsFramework13SamplingUtilsC22getUserSelectionChance4fromSfSo14NSUserDefaultsC_tFZ_0(void *a1)
{
  v2 = sub_258F0A4E0();
  v3 = [a1 stringForKey_];

  if (v3)
  {
    v4 = sub_258F0A4F0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v14 = 0.0;
  v7 = sub_258EB0044(v4, v6, &v14);

  if (v7)
  {
    v8 = v14;
  }

  else
  {
    v8 = 0.12;
  }

  if (qword_27F988678 != -1)
  {
    swift_once();
  }

  v9 = sub_258F0A370();
  __swift_project_value_buffer(v9, qword_27F98A418);
  v10 = sub_258F0A350();
  v11 = sub_258F0A810();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_258DD8000, v10, v11, "#SamplingUtils: getUserSelectionChance is %f ", v12, 0xCu);
    MEMORY[0x259C9EF40](v12, -1, -1);
  }

  return v8;
}

void _s16MetricsFramework13SamplingUtilsC28getManifestIntermediateLimit4fromSiSo14NSUserDefaultsC_tFZ_0(void *a1)
{
  v2 = sub_258F0A4E0();
  v3 = [a1 stringForKey_];

  if (v3)
  {
    v4 = sub_258F0A4F0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = HIBYTE(v6) & 0xF;
  v8 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v9 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    goto LABEL_67;
  }

  if ((v6 & 0x1000000000000000) == 0)
  {
    if ((v6 & 0x2000000000000000) != 0)
    {
      v36[0] = v4;
      v36[1] = v6 & 0xFFFFFFFFFFFFFFLL;
      if (v4 == 43)
      {
        if (v7)
        {
          if (--v7)
          {
            v12 = 0;
            v22 = v36 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                break;
              }

              v24 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                break;
              }

              v12 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                break;
              }

              ++v22;
              if (!--v7)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_64;
        }

LABEL_79:
        __break(1u);
        return;
      }

      if (v4 != 45)
      {
        if (v7)
        {
          v12 = 0;
          v27 = v36;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              break;
            }

            ++v27;
            if (!--v7)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

      if (v7)
      {
        if (--v7)
        {
          v12 = 0;
          v16 = v36 + 1;
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              break;
            }

            v18 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v18 - v17;
            if (__OFSUB__(v18, v17))
            {
              break;
            }

            ++v16;
            if (!--v7)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }
    }

    else
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        v10 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v10 = sub_258F0AB10();
      }

      v11 = *v10;
      if (v11 == 43)
      {
        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            v12 = 0;
            if (v10)
            {
              v19 = v10 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  goto LABEL_64;
                }

                v21 = 10 * v12;
                if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                {
                  goto LABEL_64;
                }

                v12 = v21 + v20;
                if (__OFADD__(v21, v20))
                {
                  goto LABEL_64;
                }

                ++v19;
                if (!--v7)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_56;
          }

          goto LABEL_64;
        }

        goto LABEL_78;
      }

      if (v11 != 45)
      {
        if (v8)
        {
          v12 = 0;
          if (v10)
          {
            while (1)
            {
              v25 = *v10 - 48;
              if (v25 > 9)
              {
                goto LABEL_64;
              }

              v26 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                goto LABEL_64;
              }

              v12 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                goto LABEL_64;
              }

              ++v10;
              if (!--v8)
              {
                goto LABEL_56;
              }
            }
          }

          goto LABEL_56;
        }

LABEL_64:
        v12 = 0;
        LOBYTE(v7) = 1;
        goto LABEL_65;
      }

      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v12 = 0;
          if (v10)
          {
            v13 = v10 + 1;
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_64;
              }

              v15 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                goto LABEL_64;
              }

              v12 = v15 - v14;
              if (__OFSUB__(v15, v14))
              {
                goto LABEL_64;
              }

              ++v13;
              if (!--v7)
              {
                goto LABEL_65;
              }
            }
          }

LABEL_56:
          LOBYTE(v7) = 0;
LABEL_65:
          v37 = v7;
          v30 = v7;
          goto LABEL_66;
        }

        goto LABEL_64;
      }

      __break(1u);
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v37 = 0;
  v12 = sub_258EAF5B8(v4, v6, 10);
  v30 = v35;
LABEL_66:

  if (v30)
  {
LABEL_67:
    v12 = 25;
  }

  if (qword_27F988678 != -1)
  {
    swift_once();
  }

  v31 = sub_258F0A370();
  __swift_project_value_buffer(v31, qword_27F98A418);
  v32 = sub_258F0A350();
  v33 = sub_258F0A810();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v12;
    _os_log_impl(&dword_258DD8000, v32, v33, "#SamplingUtils: getManifestIntermediateLimit is %ld ", v34, 0xCu);
    MEMORY[0x259C9EF40](v34, -1, -1);
  }
}

void _s16MetricsFramework13SamplingUtilsC23getManifestCurrentLimit6forKey4fromSiSS_So14NSUserDefaultsCtFZ_0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_258F0A4E0();
  v5 = [a3 stringForKey_];

  if (v5)
  {
    v6 = sub_258F0A4F0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = HIBYTE(v8) & 0xF;
  v10 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v11 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    goto LABEL_67;
  }

  if ((v8 & 0x1000000000000000) == 0)
  {
    if ((v8 & 0x2000000000000000) != 0)
    {
      v38[0] = v6;
      v38[1] = v8 & 0xFFFFFFFFFFFFFFLL;
      if (v6 == 43)
      {
        if (v9)
        {
          if (--v9)
          {
            v14 = 0;
            v24 = v38 + 1;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                break;
              }

              v26 = 10 * v14;
              if ((v14 * 10) >> 64 != (10 * v14) >> 63)
              {
                break;
              }

              v14 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                break;
              }

              ++v24;
              if (!--v9)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_64;
        }

LABEL_79:
        __break(1u);
        return;
      }

      if (v6 != 45)
      {
        if (v9)
        {
          v14 = 0;
          v29 = v38;
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              break;
            }

            v31 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              break;
            }

            v14 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              break;
            }

            ++v29;
            if (!--v9)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

      if (v9)
      {
        if (--v9)
        {
          v14 = 0;
          v18 = v38 + 1;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            v20 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              break;
            }

            v14 = v20 - v19;
            if (__OFSUB__(v20, v19))
            {
              break;
            }

            ++v18;
            if (!--v9)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }
    }

    else
    {
      if ((v6 & 0x1000000000000000) != 0)
      {
        v12 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v12 = sub_258F0AB10();
      }

      v13 = *v12;
      if (v13 == 43)
      {
        if (v10 >= 1)
        {
          v9 = v10 - 1;
          if (v10 != 1)
          {
            v14 = 0;
            if (v12)
            {
              v21 = v12 + 1;
              while (1)
              {
                v22 = *v21 - 48;
                if (v22 > 9)
                {
                  goto LABEL_64;
                }

                v23 = 10 * v14;
                if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                {
                  goto LABEL_64;
                }

                v14 = v23 + v22;
                if (__OFADD__(v23, v22))
                {
                  goto LABEL_64;
                }

                ++v21;
                if (!--v9)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_56;
          }

          goto LABEL_64;
        }

        goto LABEL_78;
      }

      if (v13 != 45)
      {
        if (v10)
        {
          v14 = 0;
          if (v12)
          {
            while (1)
            {
              v27 = *v12 - 48;
              if (v27 > 9)
              {
                goto LABEL_64;
              }

              v28 = 10 * v14;
              if ((v14 * 10) >> 64 != (10 * v14) >> 63)
              {
                goto LABEL_64;
              }

              v14 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                goto LABEL_64;
              }

              ++v12;
              if (!--v10)
              {
                goto LABEL_56;
              }
            }
          }

          goto LABEL_56;
        }

LABEL_64:
        v14 = 0;
        LOBYTE(v9) = 1;
        goto LABEL_65;
      }

      if (v10 >= 1)
      {
        v9 = v10 - 1;
        if (v10 != 1)
        {
          v14 = 0;
          if (v12)
          {
            v15 = v12 + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_64;
              }

              v17 = 10 * v14;
              if ((v14 * 10) >> 64 != (10 * v14) >> 63)
              {
                goto LABEL_64;
              }

              v14 = v17 - v16;
              if (__OFSUB__(v17, v16))
              {
                goto LABEL_64;
              }

              ++v15;
              if (!--v9)
              {
                goto LABEL_65;
              }
            }
          }

LABEL_56:
          LOBYTE(v9) = 0;
LABEL_65:
          v39 = v9;
          v32 = v9;
          goto LABEL_66;
        }

        goto LABEL_64;
      }

      __break(1u);
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v39 = 0;
  v14 = sub_258EAF5B8(v6, v8, 10);
  v32 = v37;
LABEL_66:

  if (v32)
  {
LABEL_67:
    v14 = 0;
  }

  if (qword_27F988678 != -1)
  {
    swift_once();
  }

  v33 = sub_258F0A370();
  __swift_project_value_buffer(v33, qword_27F98A418);
  v34 = sub_258F0A350();
  v35 = sub_258F0A810();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134217984;
    *(v36 + 4) = v14;
    _os_log_impl(&dword_258DD8000, v34, v35, "#SamplingUtils: getManifestCurrentLimit is %ld ", v36, 0xCu);
    MEMORY[0x259C9EF40](v36, -1, -1);
  }
}

id _s16MetricsFramework13SamplingUtilsC19getBypassSatTrigger8defaultsSbSo14NSUserDefaultsC_tFZ_0(void *a1)
{
  v2 = sub_258F0A4E0();
  v3 = [a1 BOOLForKey_];

  if (qword_27F988678 != -1)
  {
    swift_once();
  }

  v4 = sub_258F0A370();
  __swift_project_value_buffer(v4, qword_27F98A418);
  v5 = sub_258F0A350();
  v6 = sub_258F0A810();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_258DD8000, v5, v6, "#SamplingUtils: getBypassSatTrigger is %{BOOL}d ", v7, 8u);
    MEMORY[0x259C9EF40](v7, -1, -1);
  }

  return v3;
}

void _s16MetricsFramework13SamplingUtilsC23setManifestCurrentCount6forKey_2inySS_SiSo14NSUserDefaultsCtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_258F0A7D0();
  v7 = sub_258F0A4E0();
  [a4 setValue:v6 forKey:v7];

  if (qword_27F988678 != -1)
  {
    swift_once();
  }

  v8 = sub_258F0A370();
  __swift_project_value_buffer(v8, qword_27F98A418);
  v9 = a4;
  oslog = sub_258F0A350();
  v10 = sub_258F0A810();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 134218242;
    *(v11 + 4) = a3;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v9;
    *v12 = v9;
    v13 = v9;
    _os_log_impl(&dword_258DD8000, oslog, v10, "#SamplingUtils: Set SpeakerId Sampling Manifest Current Count to %ld in UserDefaults %@", v11, 0x16u);
    sub_258DE2184(v12, &qword_27F988C78, &qword_258F11A20);
    MEMORY[0x259C9EF40](v12, -1, -1);
    MEMORY[0x259C9EF40](v11, -1, -1);
  }
}

uint64_t _s16MetricsFramework13SamplingUtilsC24getSISchemaTriggerPhrase3forSo0fgH0VSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A438, &unk_258F166C0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v11 - v6;
  v11[2] = a1;
  v11[3] = a2;
  v11[0] = 1769105747;
  v11[1] = 0xE400000000000000;
  v8 = sub_258F09AA0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_258DEF388();
  v9 = sub_258F0A990();
  sub_258DE2184(v7, &qword_27F98A438, &unk_258F166C0);
  if (v9)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t _s16MetricsFramework13SamplingUtilsC22getActiveRequestIdsFor6locale4dateSaySSGSgSS_10Foundation4DateVtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v6 = sub_258F09A20();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v12 = sub_258F0A4E0();
  v13 = sub_258F099A0();
  v41[0] = 0;
  v14 = [v11 getActiveRequestIdsForLocale:v12 date:v13 error:v41];

  v15 = v41[0];
  if (v14)
  {
    v16 = sub_258F0A6B0();
    v17 = v15;

    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v18 = sub_258F0A370();
    __swift_project_value_buffer(v18, qword_27F98A418);
    (*(v7 + 16))(v10, a3, v6);

    v19 = sub_258F0A350();
    v20 = sub_258F0A810();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41[0] = v40;
      *v21 = 136315650;
      v22 = MEMORY[0x259C9DF80](v16, MEMORY[0x277D837D0]);
      v39 = v20;
      v24 = a1;
      v25 = sub_258DE3018(v22, v23, v41);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_258DE3018(v24, a2, v41);
      *(v21 + 22) = 2080;
      sub_258EB4ABC(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v26 = sub_258F0AD60();
      v28 = v27;
      (*(v7 + 8))(v10, v6);
      v29 = sub_258DE3018(v26, v28, v41);

      *(v21 + 24) = v29;
      _os_log_impl(&dword_258DD8000, v19, v39, "#SamplingUtils: Current active requests: %s for locale: %s for date: %s", v21, 0x20u);
      v30 = v40;
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v30, -1, -1);
      MEMORY[0x259C9EF40](v21, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    v31 = v41[0];
    v32 = sub_258F09890();

    swift_willThrow();
    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v33 = sub_258F0A370();
    __swift_project_value_buffer(v33, qword_27F98A418);
    v34 = sub_258F0A350();
    v35 = sub_258F0A820();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_258DD8000, v34, v35, "#SamplingUtils: Current active requests faield", v36, 2u);
      MEMORY[0x259C9EF40](v36, -1, -1);
    }

    return 0;
  }

  return v16;
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

_BYTE *sub_258EB4A3C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_258EB4ABC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258EB4B04(void *a1)
{
  v3 = *(sub_258F09A20() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_258EAD534(a1, v4);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_258EB4B8C(uint64_t a1)
{
  v3 = *(sub_258F09A20() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = v1[3];
  v12 = v1[2];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_258DE1DC4;

  return sub_258EACCF8(a1, v12, v5, v6, v7, v8, v9, v1 + v4);
}

unint64_t sub_258EB4D00()
{
  result = qword_27F98A448;
  if (!qword_27F98A448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F98A448);
  }

  return result;
}

uint64_t sub_258EB4D4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A430, &qword_258F14810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258EB4DBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258DEE37C;

  return sub_258EAED64(a1, v4);
}

uint64_t sub_258EB4E74(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258DE1DC4;

  return sub_258EAED64(a1, v4);
}

uint64_t sub_258EB4F38(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258DE1DC4;

  return sub_258EB5738(a1, a2);
}

uint64_t sub_258EB4FE0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258DEE37C;

  return sub_258EB6B24(a1, a2);
}

uint64_t sub_258EB5088(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
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

unint64_t sub_258EB5134(uint64_t a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 0:
      return result;
    case 10:
    case 14:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD00000000000001DLL;
      break;
    case 13:
      result = 0xD00000000000001DLL;
      break;
    case 15:
      result = 0xD000000000000021;
      break;
    case 16:
      result = 0xD00000000000002ELL;
      break;
    case 17:
      result = 0xD00000000000001BLL;
      break;
    case 18:
      result = 0xD00000000000001FLL;
      break;
    case 19:
    case 25:
      result = 0xD00000000000001CLL;
      break;
    case 20:
      result = 0xD00000000000001DLL;
      break;
    case 21:
      result = 0xD000000000000020;
      break;
    case 22:
      result = 0xD00000000000001ELL;
      break;
    case 23:
      result = 0xD000000000000023;
      break;
    case 24:
      result = 0xD000000000000027;
      break;
    case 26:
      result = 0xD000000000000019;
      break;
    case 28:
      result = 0xD000000000000022;
      break;
    case 32:
      result = 0xD000000000000034;
      break;
    default:
      sub_258F0AAE0();

      v3 = sub_258F0AD60();
      MEMORY[0x259C9DEB0](v3);

      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_258EB5420(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 1701736302;
    case 11:
      return 0xD00000000000001DLL;
    case 10:
      return 0xD000000000000013;
  }

  sub_258F0AAE0();

  v2 = sub_258F0AD60();
  MEMORY[0x259C9DEB0](v2);

  return 0xD000000000000018;
}

uint64_t sub_258EB551C(uint64_t a1)
{
  if (a1 <= 10)
  {
    if (!a1)
    {
      return 1701736302;
    }

    if (a1 == 10)
    {
      return 0xD00000000000001CLL;
    }

    goto LABEL_13;
  }

  if (a1 != 11)
  {
    if (a1 == 12)
    {
      return 0xD000000000000024;
    }

    if (a1 == 13)
    {
      return 0xD00000000000001BLL;
    }

LABEL_13:
    sub_258F0AAE0();

    v2 = sub_258F0AD60();
    MEMORY[0x259C9DEB0](v2);

    return 0xD000000000000018;
  }

  return 0xD00000000000001CLL;
}

uint64_t sub_258EB5664(uint64_t a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 10)
  {
    return 0xD000000000000024;
  }

  sub_258F0AAE0();

  v2 = sub_258F0AD60();
  MEMORY[0x259C9DEB0](v2);

  return 0xD000000000000018;
}

uint64_t sub_258EB5738(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = sub_258F09F50();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_258F09F40();
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258EB5858, 0, 0);
}

uint64_t sub_258EB5858()
{
  v41 = v0;
  *(v0 + 256) = sub_258EB5134([*(v0 + 184) whichEvent_Type]);
  *(v0 + 264) = v1;
  *(v0 + 168) = &type metadata for Features;
  v2 = sub_258E3FDD4();
  *(v0 + 144) = 0;
  *(v0 + 176) = v2;
  v3 = sub_258F09C30();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  if (v3)
  {
    v4 = [*(v0 + 184) wrapAsAnyEvent];
    *(v0 + 272) = v4;
    if (v4)
    {
      v5 = v4;
      v6 = sub_258EB5134([*(v0 + 184) whichEvent_Type]);
      v8 = v7;
      v9 = v5;
      v10 = sub_258F0A350();
      v11 = sub_258F0A810();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v40[0] = v13;
        *v12 = 136315394;
        [v9 anyEventType];
        v14 = sub_258F0A880();
        v16 = sub_258DE3018(v14, v15, v40);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2080;
        v17 = sub_258DE3018(v6, v8, v40);

        *(v12 + 14) = v17;
        _os_log_impl(&dword_258DD8000, v10, v11, "FBF Shared reporter: store the event %s hosting %s and send to server", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C9EF40](v13, -1, -1);
        MEMORY[0x259C9EF40](v12, -1, -1);
      }

      else
      {
      }

      v28 = v9;
      v29 = sub_258F0A350();
      v30 = sub_258F0A810();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v40[0] = v32;
        *v31 = 136315138;
        [v28 anyEventType];
        v33 = sub_258F0A880();
        v35 = sub_258DE3018(v33, v34, v40);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_258DD8000, v29, v30, "FBF reporter: store the event %s and send to server", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        MEMORY[0x259C9EF40](v32, -1, -1);
        MEMORY[0x259C9EF40](v31, -1, -1);
      }

      v36 = *(*(v0 + 200) + 24);
      v37 = sub_258F0A4E0();
      *(v0 + 280) = v37;
      *(v0 + 16) = v0;
      *(v0 + 24) = sub_258EB5DF0;
      v38 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A450, &qword_258F148E8);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_258EB5088;
      *(v0 + 104) = &block_descriptor_6;
      *(v0 + 112) = v38;
      [v36 reportSiriInstrumentationEvent:v28 forBundleID:v37 completion:v0 + 80];

      return MEMORY[0x282200938](v0 + 16);
    }

    v18 = sub_258F0A350();
    v19 = sub_258F0A820();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_258DD8000, v18, v19, "Couldn't package event in AnyEvent wrapper.", v20, 2u);
      MEMORY[0x259C9EF40](v20, -1, -1);
    }

    v22 = *(v0 + 240);
    v21 = *(v0 + 248);
    v23 = *(v0 + 224);
    v24 = *(v0 + 232);
    v25 = *(v0 + 216);
    v39 = *(v0 + 208);

    sub_258F09FA0();

    (*(v22 + 104))(v21, *MEMORY[0x277D5D9B8], v24);
    (*(v25 + 104))(v23, *MEMORY[0x277D5D9F0], v39);
    sub_258F09F10();

    (*(v25 + 8))(v23, v39);
    (*(v22 + 8))(v21, v24);
  }

  else
  {
    sub_258EB7E80(*(v0 + 184));
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_258EB5DF0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_258EB5FAC;
  }

  else
  {
    v2 = sub_258EB5F00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258EB5F00()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);

  sub_258EB842C(1u, v2, v3, 1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_258EB5FAC(uint64_t a1)
{
  v2 = v1[35];
  v3 = v1[36];
  v4 = v1[33];
  v5 = v1[32];
  v6 = v1[30];
  v11 = v1[29];
  v12 = v1[31];
  v7 = v1[27];
  v14 = v1[28];
  v15 = v1[34];
  v13 = v1[26];
  swift_willThrow();

  sub_258EB842C(1u, v5, v4, 0);
  sub_258F09F80();

  (*(v6 + 104))(v12, *MEMORY[0x277D5D9C0], v11);
  (*(v7 + 104))(v14, *MEMORY[0x277D5D9F0], v13);
  sub_258F09F10();

  (*(v7 + 8))(v14, v13);
  (*(v6 + 8))(v12, v11);
  sub_258DE403C();
  swift_allocError();
  *v8 = 16;
  swift_willThrow();

  v9 = v1[1];

  return v9();
}

uint64_t sub_258EB6184(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = sub_258F09F50();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_258F09F40();
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258EB62A4, 0, 0);
}

uint64_t sub_258EB62A4()
{
  v41 = v0;
  *(v0 + 256) = sub_258EB5420([*(v0 + 184) whichEvent_Type]);
  *(v0 + 264) = v1;
  *(v0 + 168) = &type metadata for Features;
  v2 = sub_258E3FDD4();
  *(v0 + 144) = 0;
  *(v0 + 176) = v2;
  v3 = sub_258F09C30();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  if (v3)
  {
    v4 = [*(v0 + 184) wrapAsAnyEvent];
    *(v0 + 272) = v4;
    if (v4)
    {
      v5 = v4;
      v6 = sub_258EB5420([*(v0 + 184) whichEvent_Type]);
      v8 = v7;
      v9 = v5;
      v10 = sub_258F0A350();
      v11 = sub_258F0A810();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v40[0] = v13;
        *v12 = 136315394;
        [v9 anyEventType];
        v14 = sub_258F0A880();
        v16 = sub_258DE3018(v14, v15, v40);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2080;
        v17 = sub_258DE3018(v6, v8, v40);

        *(v12 + 14) = v17;
        _os_log_impl(&dword_258DD8000, v10, v11, "FBF Shared reporter: store the event %s hosting %s and send to server", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C9EF40](v13, -1, -1);
        MEMORY[0x259C9EF40](v12, -1, -1);
      }

      else
      {
      }

      v28 = v9;
      v29 = sub_258F0A350();
      v30 = sub_258F0A810();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v40[0] = v32;
        *v31 = 136315138;
        [v28 anyEventType];
        v33 = sub_258F0A880();
        v35 = sub_258DE3018(v33, v34, v40);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_258DD8000, v29, v30, "FBF reporter: store the event %s and send to server", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        MEMORY[0x259C9EF40](v32, -1, -1);
        MEMORY[0x259C9EF40](v31, -1, -1);
      }

      v36 = *(*(v0 + 200) + 24);
      v37 = sub_258F0A4E0();
      *(v0 + 280) = v37;
      *(v0 + 16) = v0;
      *(v0 + 24) = sub_258EB683C;
      v38 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A450, &qword_258F148E8);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_258EB5088;
      *(v0 + 104) = &block_descriptor_5;
      *(v0 + 112) = v38;
      [v36 reportSiriInstrumentationEvent:v28 forBundleID:v37 completion:v0 + 80];

      return MEMORY[0x282200938](v0 + 16);
    }

    v18 = sub_258F0A350();
    v19 = sub_258F0A820();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_258DD8000, v18, v19, "Couldn't package event in AnyEvent wrapper.", v20, 2u);
      MEMORY[0x259C9EF40](v20, -1, -1);
    }

    v22 = *(v0 + 240);
    v21 = *(v0 + 248);
    v23 = *(v0 + 224);
    v24 = *(v0 + 232);
    v25 = *(v0 + 216);
    v39 = *(v0 + 208);

    sub_258F09FB0();

    (*(v22 + 104))(v21, *MEMORY[0x277D5D9B8], v24);
    (*(v25 + 104))(v23, *MEMORY[0x277D5D9F0], v39);
    sub_258F09F10();

    (*(v25 + 8))(v23, v39);
    (*(v22 + 8))(v21, v24);
  }

  else
  {
    sub_258EB7E80(*(v0 + 184));
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_258EB683C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_258EB694C;
  }

  else
  {
    v2 = sub_258EB8D2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258EB694C(uint64_t a1)
{
  v2 = v1[35];
  v3 = v1[36];
  v4 = v1[33];
  v5 = v1[32];
  v6 = v1[30];
  v11 = v1[29];
  v12 = v1[31];
  v7 = v1[27];
  v14 = v1[28];
  v15 = v1[34];
  v13 = v1[26];
  swift_willThrow();

  sub_258EB842C(1u, v5, v4, 0);
  sub_258F09F90();

  (*(v6 + 104))(v12, *MEMORY[0x277D5D9C0], v11);
  (*(v7 + 104))(v14, *MEMORY[0x277D5D9F0], v13);
  sub_258F09F10();

  (*(v7 + 8))(v14, v13);
  (*(v6 + 8))(v12, v11);
  sub_258DE403C();
  swift_allocError();
  *v8 = 16;
  swift_willThrow();

  v9 = v1[1];

  return v9();
}

uint64_t sub_258EB6B24(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_258F09F50();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v5 = sub_258F09F40();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258EB6C44, 0, 0);
}

uint64_t sub_258EB6C44()
{
  v40 = v0;
  v1 = *(v0 + 144);
  *(v0 + 216) = sub_258EB551C([v1 whichEvent_Type]);
  *(v0 + 224) = v2;
  v3 = [v1 wrapAsAnyEvent];
  *(v0 + 232) = v3;
  if (v3)
  {
    v4 = v3;
    v5 = sub_258EB551C([*(v0 + 144) whichEvent_Type]);
    v7 = v6;
    v8 = v4;
    v9 = sub_258F0A350();
    v10 = sub_258F0A810();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v39 = v12;
      *v11 = 136315394;
      [v8 anyEventType];
      v13 = sub_258F0A880();
      v15 = sub_258DE3018(v13, v14, &v39);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v16 = sub_258DE3018(v5, v7, &v39);

      *(v11 + 14) = v16;
      _os_log_impl(&dword_258DD8000, v9, v10, "FBF Shared reporter: store the event %s hosting %s and send to server", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v12, -1, -1);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }

    else
    {
    }

    v27 = v8;
    v28 = sub_258F0A350();
    v29 = sub_258F0A810();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      [v27 anyEventType];
      v32 = sub_258F0A880();
      v34 = sub_258DE3018(v32, v33, &v39);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_258DD8000, v28, v29, "FBF reporter: store the event %s and send to server", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x259C9EF40](v31, -1, -1);
      MEMORY[0x259C9EF40](v30, -1, -1);
    }

    v35 = *(*(v0 + 160) + 24);
    v36 = sub_258F0A4E0();
    *(v0 + 240) = v36;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_258EB7194;
    v37 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A450, &qword_258F148E8);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_258EB5088;
    *(v0 + 104) = &block_descriptor_8;
    *(v0 + 112) = v37;
    [v35 reportSiriInstrumentationEvent:v27 forBundleID:v36 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v17 = sub_258F0A350();
    v18 = sub_258F0A820();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_258DD8000, v17, v18, "Couldn't package event in AnyEvent wrapper.", v19, 2u);
      MEMORY[0x259C9EF40](v19, -1, -1);
    }

    v21 = *(v0 + 200);
    v20 = *(v0 + 208);
    v22 = *(v0 + 184);
    v23 = *(v0 + 192);
    v24 = *(v0 + 176);
    v38 = *(v0 + 168);

    sub_258F09FC0();

    (*(v21 + 104))(v20, *MEMORY[0x277D5D9B8], v23);
    (*(v24 + 104))(v22, *MEMORY[0x277D5D9F0], v38);
    sub_258F09F10();

    (*(v24 + 8))(v22, v38);
    (*(v21 + 8))(v20, v23);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_258EB7194()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_258EB72A4;
  }

  else
  {
    v2 = sub_258EB8D30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258EB72A4(uint64_t a1)
{
  v2 = v1[30];
  v3 = v1[31];
  v4 = v1[28];
  v5 = v1[27];
  v6 = v1[25];
  v11 = v1[24];
  v12 = v1[26];
  v7 = v1[22];
  v14 = v1[23];
  v15 = v1[29];
  v13 = v1[21];
  swift_willThrow();

  sub_258EB842C(1u, v5, v4, 0);
  sub_258F09F70();

  (*(v6 + 104))(v12, *MEMORY[0x277D5D9C0], v11);
  (*(v7 + 104))(v14, *MEMORY[0x277D5D9F0], v13);
  sub_258F09F10();

  (*(v7 + 8))(v14, v13);
  (*(v6 + 8))(v12, v11);
  sub_258EB875C();
  swift_allocError();
  *v8 = 16;
  swift_willThrow();

  v9 = v1[1];

  return v9();
}

uint64_t sub_258EB747C(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_258F09F50();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v5 = sub_258F09F40();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258EB759C, 0, 0);
}

uint64_t sub_258EB759C()
{
  v40 = v0;
  v1 = *(v0 + 144);
  *(v0 + 216) = sub_258EB5664([v1 whichEvent_Type]);
  *(v0 + 224) = v2;
  v3 = [v1 wrapAsAnyEvent];
  *(v0 + 232) = v3;
  if (v3)
  {
    v4 = v3;
    v5 = sub_258EB5664([*(v0 + 144) whichEvent_Type]);
    v7 = v6;
    v8 = v4;
    v9 = sub_258F0A350();
    v10 = sub_258F0A810();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v39 = v12;
      *v11 = 136315394;
      [v8 anyEventType];
      v13 = sub_258F0A880();
      v15 = sub_258DE3018(v13, v14, &v39);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v16 = sub_258DE3018(v5, v7, &v39);

      *(v11 + 14) = v16;
      _os_log_impl(&dword_258DD8000, v9, v10, "FBF Shared reporter: store the event %s hosting %s and send to server", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v12, -1, -1);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }

    else
    {
    }

    v27 = v8;
    v28 = sub_258F0A350();
    v29 = sub_258F0A810();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      [v27 anyEventType];
      v32 = sub_258F0A880();
      v34 = sub_258DE3018(v32, v33, &v39);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_258DD8000, v28, v29, "FBF reporter: store the event %s and send to server", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x259C9EF40](v31, -1, -1);
      MEMORY[0x259C9EF40](v30, -1, -1);
    }

    v35 = *(*(v0 + 160) + 24);
    v36 = sub_258F0A4E0();
    *(v0 + 240) = v36;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_258EB7AEC;
    v37 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A450, &qword_258F148E8);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_258EB5088;
    *(v0 + 104) = &block_descriptor_12;
    *(v0 + 112) = v37;
    [v35 reportSiriInstrumentationEvent:v27 forBundleID:v36 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v17 = sub_258F0A350();
    v18 = sub_258F0A820();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_258DD8000, v17, v18, "Couldn't package event in AnyEvent wrapper.", v19, 2u);
      MEMORY[0x259C9EF40](v19, -1, -1);
    }

    v21 = *(v0 + 200);
    v20 = *(v0 + 208);
    v22 = *(v0 + 184);
    v23 = *(v0 + 192);
    v24 = *(v0 + 176);
    v38 = *(v0 + 168);

    sub_258F09FC0();

    (*(v21 + 104))(v20, *MEMORY[0x277D5D9B8], v23);
    (*(v24 + 104))(v22, *MEMORY[0x277D5D9F0], v38);
    sub_258F09F10();

    (*(v24 + 8))(v22, v38);
    (*(v21 + 8))(v20, v23);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_258EB7AEC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_258EB7CA8;
  }

  else
  {
    v2 = sub_258EB7BFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258EB7BFC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);

  sub_258EB842C(1u, v2, v3, 1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_258EB7CA8(uint64_t a1)
{
  v2 = v1[30];
  v3 = v1[31];
  v4 = v1[28];
  v5 = v1[27];
  v6 = v1[25];
  v11 = v1[24];
  v12 = v1[26];
  v7 = v1[22];
  v14 = v1[23];
  v15 = v1[29];
  v13 = v1[21];
  swift_willThrow();

  sub_258EB842C(1u, v5, v4, 0);
  sub_258F09F60();

  (*(v6 + 104))(v12, *MEMORY[0x277D5D9C0], v11);
  (*(v7 + 104))(v14, *MEMORY[0x277D5D9F0], v13);
  sub_258F09F10();

  (*(v7 + 8))(v14, v13);
  (*(v6 + 8))(v12, v11);
  sub_258EB875C();
  swift_allocError();
  *v8 = 16;
  swift_willThrow();

  v9 = v1[1];

  return v9();
}

uint64_t sub_258EB7E80(void *a1)
{
  v3 = v1;
  v5 = sub_258F09A70();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v37[-v12];
  sub_258F09A60();
  v14 = *(v6 + 16);
  v44 = v5;
  v14(v10, v13, v5);
  v15 = a1;
  v16 = sub_258F0A350();
  v17 = sub_258F0A810();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v42 = v3;
    v19 = v18;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v45 = v41;
    *v19 = 136315394;
    v39 = v16;
    v20 = sub_258F09A40();
    v43 = v2;
    v22 = v21;
    v38 = v17;
    v23 = *(v6 + 8);
    v24 = v10;
    v25 = v44;
    v23(v24, v44);
    v26 = sub_258DE3018(v20, v22, &v45);

    *(v19 + 4) = v26;
    *(v19 + 12) = 2112;
    *(v19 + 14) = v15;
    v27 = v40;
    *v40 = v15;
    v28 = v15;
    v29 = v39;
    _os_log_impl(&dword_258DD8000, v39, v38, "SELF reporter: reported task with stats, isolatedStreamUUID = %s, message = %@", v19, 0x16u);
    sub_258EB8CAC(v27);
    MEMORY[0x259C9EF40](v27, -1, -1);
    v30 = v41;
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x259C9EF40](v30, -1, -1);
    v31 = v19;
    v3 = v42;
    MEMORY[0x259C9EF40](v31, -1, -1);
  }

  else
  {

    v23 = *(v6 + 8);
    v32 = v10;
    v25 = v44;
    v23(v32, v44);
  }

  v33 = v15;
  v34 = *(v3 + 16);
  v35 = sub_258F09A50();
  [v34 emitMessage:v33 isolatedStreamUUID:v35];

  return (v23)(v13, v25);
}

uint64_t SELFReportingService.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t SELFReportingService.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

void *_s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(id a1, unint64_t a2, unint64_t a3)
{
  sub_258F09F30();
  v6 = sub_258F09F20();
  v7 = [objc_opt_self() sharedLoggerWithPersistenceConfiguration_];
  v8 = type metadata accessor for CAAnalyticsEventSubmitter();
  v22[3] = v8;
  v22[4] = &off_286A2C648;
  v22[0] = swift_allocObject();
  type metadata accessor for SELFReportingService();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v22, v8);
  MEMORY[0x28223BE20](v10, v10);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v20 = v8;
  v21 = &off_286A2C648;
  *&v19 = v14;
  if (!a1)
  {
    v15 = [objc_opt_self() sharedAnalytics];
    a1 = [v15 defaultMessageStream];
  }

  v16 = 0x8000000258F1DCF0;
  v17 = 0xD000000000000027;
  if (a3)
  {
    v17 = a2;
    v16 = a3;
  }

  v9[4] = v17;
  v9[5] = v16;
  v9[6] = v6;
  v9[2] = a1;
  v9[3] = v7;
  sub_258DEE384(&v19, (v9 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  return v9;
}

void sub_258EB842C(unsigned __int8 a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989530, &unk_258F0FA20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258F0F8B0;
  *(inited + 32) = 0x73736563637553;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_258F0A730();
  *(inited + 56) = 0x707954746E657645;
  *(inited + 64) = 0xE900000000000065;
  *(inited + 72) = sub_258F0A950();
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x8000000258F1DA00;
  *(inited + 96) = sub_258F0A4E0();
  v7 = sub_258DFBE10(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989538, &unk_258F149F0);
  swift_arrayDestroy();

  v8 = sub_258F0A350();
  v9 = sub_258F0A810();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_258DE3018(a2, a3, aBlock);
    *(v10 + 12) = 2080;
    sub_258E2F4A4();
    v12 = sub_258F0A420();
    v14 = sub_258DE3018(v12, v13, aBlock);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_258DD8000, v8, v9, "CoreAnalytics of FBFWrite for %s: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v11, -1, -1);
    MEMORY[0x259C9EF40](v10, -1, -1);
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  v16 = sub_258F0A4E0();
  aBlock[4] = sub_258EB8C8C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_258E2C248;
  aBlock[3] = &block_descriptor_28_0;
  v17 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v17);
}

unint64_t sub_258EB875C()
{
  result = qword_27F98A458;
  if (!qword_27F98A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A458);
  }

  return result;
}

uint64_t dispatch thunk of SELFReportingService.reportEvent(event:logger:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of SELFReportingService.reportODBATCHEvent(event:logger:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 136) + **(*v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DEE37C;

  return v8(a1, a2);
}

uint64_t dispatch thunk of SELFReportingService.reportODSampleEvent(event:logger:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DEE37C;

  return v8(a1, a2);
}

uint64_t dispatch thunk of SELFReportingService.reportODFunnelEvent(event:logger:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DEE37C;

  return v8(a1, a2);
}

uint64_t block_copy_helper_26_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_258EB8CAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C78, &qword_258F11A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SiriAttentionAndInvocationDataProvider.__allocating_init(logger:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC16MetricsFramework38SiriAttentionAndInvocationDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t SiriAttentionAndInvocationDataProvider.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework38SiriAttentionAndInvocationDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_258EB8E48(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: SpeakerIdSelectionDataDataRecord", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t SiriAttentionAndInvocationDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework38SiriAttentionAndInvocationDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SiriAttentionAndInvocationDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework38SiriAttentionAndInvocationDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_258EB9024()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258DE1DC4;

  return sub_258EB8E28();
}

unint64_t sub_258EB90B4()
{
  result = qword_27F98A468;
  if (!qword_27F98A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A468);
  }

  return result;
}

uint64_t type metadata accessor for SiriAttentionAndInvocationDataProvider(uint64_t a1)
{
  result = qword_27F98A470;
  if (!qword_27F98A470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of SiriAttentionAndInvocationDataProvider.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 96) + **(*v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t SiriAttentionAndInvocationPluginError.hashValue.getter()
{
  sub_258F0AE40();
  MEMORY[0x259C9E710](0);
  return sub_258F0AE90();
}

unint64_t sub_258EB9334()
{
  result = qword_27F98A480;
  if (!qword_27F98A480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A480);
  }

  return result;
}

uint64_t sub_258EB9398(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v84 = a5;
  v91 = a4;
  v83 = a3;
  v100 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v81 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v82 = &v71 - v12;
  v79 = sub_258F09B00();
  v78 = *(v79 - 1);
  MEMORY[0x28223BE20](v79, v13);
  v76 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_258F09A20();
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v15);
  v74 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_258F0A370();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v80 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v71 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v71 - v27;
  v29 = *(v18 + 16);
  v85 = OBJC_IVAR____TtC16MetricsFramework32SiriAttentionAndInvocationPlugin_logger;
  v29(v5 + OBJC_IVAR____TtC16MetricsFramework32SiriAttentionAndInvocationPlugin_logger, a2, v17);
  v29(v28, a2, v17);
  type metadata accessor for SiriAttentionAndInvocationDataProvider(0);
  v30 = swift_allocObject();
  v92 = v18;
  v31 = *(v18 + 32);
  v87 = v28;
  v31(v30 + OBJC_IVAR____TtC16MetricsFramework38SiriAttentionAndInvocationDataProvider_logger, v28, v17);
  v93 = v5;
  *(v5 + OBJC_IVAR____TtC16MetricsFramework32SiriAttentionAndInvocationPlugin_dataProvider) = v30;
  v32 = sub_258F0A1F0();
  swift_allocObject();
  v88 = v100;
  v33 = sub_258F0A1E0();
  v98 = v32;
  v99 = MEMORY[0x277D04548];
  v97[0] = v33;
  v100 = a2;
  v90 = v17;
  v86 = v18 + 16;
  v29(v25, a2, v17);
  v34 = sub_258F09C20();
  swift_allocObject();
  v35 = v89;
  v36 = sub_258F09BE0();
  if (v35)
  {
    v37 = *(v92 + 8);
    v38 = v90;
    v37(v100, v90);

    v39 = v93;
    v37((v93 + v85), v38);

    type metadata accessor for SiriAttentionAndInvocationPlugin(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v40 = v36;
    v41 = v74;
    sub_258F0A090();
    v42 = v76;
    sub_258F09AE0();
    v73 = v40;
    sub_258F09C10();
    (*(v78 + 8))(v42, v79);
    (*(v75 + 8))(v41, v77);
    v43 = v87;
    v44 = v90;
    v29(v87, v100, v90);
    v72 = v29;
    v89 = v88;

    v45 = v82;
    sub_258EB9CB0(v82);
    v46 = v80;
    v29(v80, v43, v44);
    v47 = v45;
    v48 = v45;
    v49 = v81;
    sub_258DECF90(v47, v81);
    type metadata accessor for BiomeResultsWrapperFactory();
    v85 = swift_allocObject();
    v50 = type metadata accessor for CAAnalyticsEventSubmitter();
    v88 = 0;
    v51 = v50;
    v52 = swift_allocObject();
    v98 = v51;
    v99 = &off_286A2C648;
    v97[0] = v52;
    type metadata accessor for SiriAttentionAndInvocationSamplingCalculator(0);
    v53 = swift_allocObject();
    v54 = __swift_mutable_project_boxed_opaque_existential_1(v97, v51);
    v79 = &v71;
    MEMORY[0x28223BE20](v54, v54);
    v56 = (&v71 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v57 + 16))(v56);
    v58 = *v56;
    v95 = v51;
    v96 = &off_286A2C648;
    *&v94 = v58;
    sub_258F09AE0();
    v59 = v72;
    v72(v53 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_logger, v46, v44);
    sub_258DECF90(v49, v53 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_sqlFileURL);
    v60 = (v53 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_bookmarkService);
    v60[3] = v34;
    v60[4] = &off_286A2FA30;
    *v60 = v73;
    sub_258DED000(v49);
    v61 = *(v92 + 8);
    v61(v46, v44);
    sub_258DED000(v48);
    v62 = v87;
    v61(v87, v44);
    *(v53 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_biomeResultsFactory) = v85;
    sub_258DEE384(&v94, v53 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_analyticsEventSubmitter);
    v63 = (v53 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_fbfBundleId);
    v64 = v91;
    *v63 = v83;
    v63[1] = v64;
    *(v53 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_isMeDevice) = v84 & 1;
    *(v53 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_defaults) = v89;
    __swift_destroy_boxed_opaque_existential_1Tm(v97);
    v39 = v93;
    *(v93 + OBJC_IVAR____TtC16MetricsFramework32SiriAttentionAndInvocationPlugin_calculator) = v53;
    v65 = v100;
    v59(v62, v100, v44);
    v66 = v59;
    type metadata accessor for SiriAttentionAndInvocationReporter(0);
    v67 = swift_allocObject();
    v66(v67 + OBJC_IVAR____TtC16MetricsFramework34SiriAttentionAndInvocationReporter_logger, v62, v44);
    v68 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, 0, 0);
    v61(v62, v44);
    *(v67 + OBJC_IVAR____TtC16MetricsFramework34SiriAttentionAndInvocationReporter_reportingService) = v68;
    v97[0] = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A4D0, &qword_258F14D48);
    swift_allocObject();
    v69 = sub_258F09BC0();

    v61(v65, v44);
    *(v39 + OBJC_IVAR____TtC16MetricsFramework32SiriAttentionAndInvocationPlugin_reporter) = v69;
  }

  return v39;
}

uint64_t sub_258EB9CB0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SiriAttentionAndInvocationSamplingCalculator(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258F0A4E0();
  v5 = sub_258F0A4E0();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_258F098B0();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_258F098D0();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t sub_258EB9DE8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258EB9E08, 0, 0);
}

uint64_t sub_258EB9E08(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A840();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#SiriAttentionAndInvocationPlugin: calculator do work", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v1 + 32) = v5;
  *v5 = v1;
  v5[1] = sub_258DED984;
  v6 = *(v1 + 16);

  return sub_258EBB8F4(v6);
}

uint64_t sub_258EB9F30(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 33) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258EB9F60, 0, 0);
}

uint64_t sub_258EB9F60()
{

  v1 = sub_258F0A350();
  v2 = sub_258F0A840();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 33);
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3;

    _os_log_impl(&dword_258DD8000, v1, v2, "#SiriAttentionAndInvocationPlugin: reporter report with result as: %{BOOL}d", v4, 8u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  else
  {
  }

  if (*(v0 + 33) == 1)
  {
    *(v0 + 16) = *(v0 + 48);
    *(v0 + 32) = 1;
    v11 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    *v5 = v0;
    v5[1] = sub_258EBA1F0;

    return v11(v0 + 16);
  }

  else
  {
    v7 = sub_258F0A350();
    v8 = sub_258F0A820();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_258DD8000, v7, v8, "#SiriAttentionAndInvocationPlugin: worker results it not successful", v9, 2u);
      MEMORY[0x259C9EF40](v9, -1, -1);
    }

    sub_258EBA78C();
    swift_allocError();
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_258EBA1F0()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258EBA324, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_258EBA33C()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework32SiriAttentionAndInvocationPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SiriAttentionAndInvocationPlugin(uint64_t a1)
{
  result = qword_280CC4AE8;
  if (!qword_280CC4AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_258EBA45C()
{
  result = qword_27F98A4A8;
  if (!qword_27F98A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A4A8);
  }

  return result;
}

uint64_t sub_258EBA4B0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258EBA4D4, 0, 0);
}

uint64_t sub_258EBA4D4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED7D0;

  return sub_258EB8E28();
}

uint64_t sub_258EBA578(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258EB9DE8(a1);
}

uint64_t sub_258EBA614(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DEE37C;

  return sub_258EB9F30(a1);
}

uint64_t sub_258EBA748(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriAttentionAndInvocationPlugin(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258EBA78C()
{
  result = qword_27F98A4C8;
  if (!qword_27F98A4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A4C8);
  }

  return result;
}

uint64_t SiriAttentionAndInvocationReporter.__allocating_init(logger:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC16MetricsFramework34SiriAttentionAndInvocationReporter_logger;
  v4 = sub_258F0A370();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2 + v3, a1, v4);
  v6 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, 0, 0);
  (*(v5 + 8))(a1, v4);
  *(v2 + OBJC_IVAR____TtC16MetricsFramework34SiriAttentionAndInvocationReporter_reportingService) = v6;
  return v2;
}

uint64_t SiriAttentionAndInvocationReporter.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework34SiriAttentionAndInvocationReporter_logger;
  v4 = sub_258F0A370();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1 + v3, a1, v4);
  v6 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, 0, 0);
  (*(v5 + 8))(a1, v4);
  *(v1 + OBJC_IVAR____TtC16MetricsFramework34SiriAttentionAndInvocationReporter_reportingService) = v6;
  return v1;
}

uint64_t sub_258EBA9A4(uint64_t a1)
{
  v2[2] = v1;
  if (*(a1 + 16) == 1)
  {
    v3 = swift_task_alloc();
    v2[3] = v3;
    *v3 = v2;
    v3[1] = sub_258EBAA90;

    return sub_258E6422C(6, 1);
  }

  else
  {
    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_258EBAA90(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_258EBAB90, 0, 0);
}

uint64_t sub_258EBAB90(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[2];
  if (v2)
  {
    v4 = OBJC_IVAR____TtC16MetricsFramework34SiriAttentionAndInvocationReporter_logger;
    v1[5] = OBJC_IVAR____TtC16MetricsFramework34SiriAttentionAndInvocationReporter_logger;
    v5 = swift_task_alloc();
    v1[6] = v5;
    *v5 = v1;
    v5[1] = sub_258EBAD00;

    return sub_258EB5738(v2, v3 + v4);
  }

  else
  {
    v7 = sub_258F0A350();
    v8 = sub_258F0A820();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_258DD8000, v7, v8, "Unable to create exection metadata event", v9, 2u);
      MEMORY[0x259C9EF40](v9, -1, -1);
    }

    v10 = v1[1];

    return v10();
  }
}

uint64_t sub_258EBAD00()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_258EBAE78;
  }

  else
  {
    v2 = sub_258EBAE14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258EBAE14()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258EBAE78()
{
  v1 = sub_258F0A350();
  v2 = sub_258F0A820();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 56);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_258DD8000, v1, v2, "Unable to report execution Event", v5, 2u);
    MEMORY[0x259C9EF40](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t SiriAttentionAndInvocationReporter.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework34SiriAttentionAndInvocationReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SiriAttentionAndInvocationReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework34SiriAttentionAndInvocationReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_258EBB080(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258EBA9A4(a1);
}

uint64_t type metadata accessor for SiriAttentionAndInvocationReporter(uint64_t a1)
{
  result = qword_27F98A4E8;
  if (!qword_27F98A4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EBB16C(uint64_t a1)
{
  result = sub_258F0A370();
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

uint64_t dispatch thunk of SiriAttentionAndInvocationReporter.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 104) + **(*v1 + 104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t SiriAttentionAndInvocationBookMarkResults.eventStreamMetadata.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SiriAttentionAndInvocationBookMarkResults.conversationStreamMetadata.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

unint64_t sub_258EBB400()
{
  result = qword_27F98A4F8;
  if (!qword_27F98A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A4F8);
  }

  return result;
}

uint64_t SiriAttentionAndInvocationSamplingCalculator.__allocating_init(logger:sqlFileURL:bookmarkService:fbfBundleId:isMeDevice:userDefaults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v41 = a7;
  v40 = a6;
  v38 = a4;
  v39 = a5;
  v36 = a1;
  v37 = a3;
  v34 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v33 - v11;
  v13 = sub_258F0A370();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v14 + 16);
  v18(v17, a1, v13);
  sub_258DECF90(a2, v12);
  type metadata accessor for BiomeResultsWrapperFactory();
  v35 = swift_allocObject();
  v19 = type metadata accessor for CAAnalyticsEventSubmitter();
  v20 = swift_allocObject();
  v42[3] = v19;
  v42[4] = &off_286A2C648;
  v42[0] = v20;
  type metadata accessor for SiriAttentionAndInvocationSamplingCalculator(0);
  v21 = swift_allocObject();
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v42, v19);
  MEMORY[0x28223BE20](v22, v22);
  v24 = (&v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  v27 = (v21 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_analyticsEventSubmitter);
  v27[3] = v19;
  v27[4] = &off_286A2C648;
  *v27 = v26;
  sub_258F09AE0();
  v18((v21 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_logger), v17, v13);
  sub_258DECF90(v12, v21 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_sqlFileURL);
  v28 = (v21 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_bookmarkService);
  v28[3] = sub_258F09C20();
  v28[4] = &off_286A2FA30;
  *v28 = v37;
  sub_258DE2184(v34, &qword_27F988720, &qword_258F0B830);
  v29 = *(v14 + 8);
  v29(v36, v13);
  sub_258DE2184(v12, &qword_27F988720, &qword_258F0B830);
  v29(v17, v13);
  *(v21 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_biomeResultsFactory) = v35;
  v30 = (v21 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_fbfBundleId);
  v31 = v39;
  *v30 = v38;
  v30[1] = v31;
  *(v21 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_isMeDevice) = v40;
  *(v21 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_defaults) = v41;
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  return v21;
}

uint64_t type metadata accessor for SiriAttentionAndInvocationSamplingCalculator(uint64_t a1)
{
  result = qword_27F98A518;
  if (!qword_27F98A518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriAttentionAndInvocationResults.eventStreamMetadata.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SiriAttentionAndInvocationResults.conversationStreamMetadata.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_258EBB8F4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_258F09A20();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258EBB9B4, 0, 0);
}

uint64_t sub_258EBB9B4(uint64_t a1)
{
  v68 = v1;
  v1[10] = OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "SiriAttentionAndInvocationSamplingCalculator invoked: SiriAttentionAndInvocationSamplingCalculator", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v6 = v1[8];
  v5 = v1[9];
  v7 = v1[7];

  sub_258F09BB0();
  v1[11] = sub_258F09B70();
  (*(v6 + 8))(v5, v7);
  sub_258DE0338();
  v8 = sub_258DE0624();
  v1[12] = v8;
  v9 = v8;
  v64 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988740, &qword_258F0B850);
  sub_258F0A190();
  *(swift_allocObject() + 16) = xmmword_258F0B820;
  v10 = sub_258F0A1B0();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v12;
  sub_258F0A160();
  v14 = *(v64 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_defaults);
  v15 = v9;
  v16 = sub_258F0A4E0();
  v63 = v14;
  LODWORD(v14) = [v14 BOOLForKey_];

  v17 = sub_258F0A350();
  v18 = sub_258F0A810();
  v19 = os_log_type_enabled(v17, v18);
  if (v14)
  {
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v67[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_258DE3018(0xD000000000000022, 0x8000000258F1A7A0, v67);
      _os_log_impl(&dword_258DD8000, v17, v18, "%s: Include current date data for aggregation.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x259C9EF40](v21, -1, -1);
      MEMORY[0x259C9EF40](v20, -1, -1);
    }
  }

  else
  {
    if (v19)
    {
      v22 = swift_slowAlloc();
      v23 = v15;
      v24 = swift_slowAlloc();
      v67[0] = v24;
      *v22 = 136315138;
      *(v22 + 4) = sub_258DE3018(0xD000000000000022, 0x8000000258F1A7A0, v67);
      _os_log_impl(&dword_258DD8000, v17, v18, "%s: current date data NOT included for aggregation.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      v25 = v24;
      v15 = v23;
      MEMORY[0x259C9EF40](v25, -1, -1);
      MEMORY[0x259C9EF40](v22, -1, -1);
    }

    v26 = v15;
  }

  sub_258F0A050();

  v27 = sub_258F0A010();
  v28 = sub_258F0A040();

  type metadata accessor for BiomeResultsWrapper();
  inited = swift_initStackObject();
  v1[13] = inited;
  *(inited + 16) = v28;

  v31 = sub_258EBC758(v30);
  v1[14] = v31;

  v32 = sub_258F0A350();
  v33 = sub_258F0A810();

  v66 = v31;
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v67[0] = v35;
    *v34 = 136315138;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988898, &qword_258F14EF0);
    v37 = MEMORY[0x259C9DF80](v31, v36);
    v39 = sub_258DE3018(v37, v38, v67);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_258DD8000, v32, v33, "requestRecords: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x259C9EF40](v35, -1, -1);
    MEMORY[0x259C9EF40](v34, -1, -1);
  }

  sub_258DFCFF8(inited, 0);
  v41 = objc_opt_self();
  v42 = sub_258F0A4E0();
  v43 = [v41 getSiriLanguageWithFallback_];

  if (v43)
  {
    v44 = sub_258F0A4F0();
    v46 = v45;

    v47 = sub_258F0A350();
    v48 = sub_258F0A810();

    v49 = os_log_type_enabled(v47, v48);
    v50 = v1[6];
    if (v49)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v67[0] = v52;
      *v51 = 67109378;
      *(v51 + 4) = *(v50 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_isMeDevice);

      *(v51 + 8) = 2080;
      *(v51 + 10) = sub_258DE3018(v44, v46, v67);
      _os_log_impl(&dword_258DD8000, v47, v48, "#SiriAttentionAndInvocationSamplingCalculator: starting CoreSpeechDataAnalytics controller running with isMedevice: %{BOOL}d, locale: %s", v51, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x259C9EF40](v52, -1, -1);
      MEMORY[0x259C9EF40](v51, -1, -1);
    }

    else
    {
    }

    sub_258F09FE0();
    v59 = v63;

    v1[15] = sub_258F09FD0();
    v60 = sub_258F0A4E0();
    v61 = [v59 BOOLForKey_];

    v65 = (*MEMORY[0x277D01510] + MEMORY[0x277D01510]);
    v62 = swift_task_alloc();
    v1[16] = v62;
    *v62 = v1;
    v62[1] = sub_258EBC338;

    return v65(v66, v61);
  }

  else
  {

    v53 = sub_258F0A350();
    v54 = sub_258F0A820();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_258DD8000, v53, v54, "#SiriAttentionAndInvocationSamplingCalculator: cannot get locale", v55, 2u);
      MEMORY[0x259C9EF40](v55, -1, -1);
    }

    v56 = v1[5];
    v57 = MEMORY[0x277D84F90];
    *v56 = v1[11];
    *(v56 + 8) = v57;
    *(v56 + 16) = 0;

    v58 = v1[1];

    return v58();
  }
}

uint64_t sub_258EBC338()
{
  *(*v1 + 136) = v0;

  if (v0)
  {

    v2 = sub_258EBC59C;
  }

  else
  {
    v2 = sub_258EBC480;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258EBC480(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#SiriAttentionAndInvocationSamplingCalculator: finished CoreSpeechDataAnalytics controller running", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v1[15];
  v6 = v1[12];

  sub_258F0A0F0();

  v7 = v1[5];
  v8 = MEMORY[0x277D84F90];
  *v7 = v1[11];
  *(v7 + 8) = v8;
  *(v7 + 16) = 1;

  v9 = v1[1];

  return v9();
}

uint64_t sub_258EBC59C()
{
  v15 = v0;
  sub_258EBC89C(*(v0 + 136), &v14);
  v1 = v14;
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    sub_258EBDBE4();
    swift_allocError();
    *v6 = v1;
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v7;
    *v5 = v7;
    _os_log_impl(&dword_258DD8000, v2, v3, "#SiriAttentionAndInvocationSamplingCalcultor: error processing CoreSpeechDataAnalytics controller: %@", v4, 0xCu);
    sub_258DE2184(v5, &qword_27F988C78, &qword_258F11A20);
    MEMORY[0x259C9EF40](v5, -1, -1);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v8 = *(v0 + 136);
  v9 = *(v0 + 120);
  v10 = *(v0 + 96);

  sub_258EBDBE4();
  swift_allocError();
  *v11 = v1;
  swift_willThrow();

  v12 = *(v0 + 8);

  return v12();
}

void *sub_258EBC758(uint64_t a1)
{
  v1 = sub_258F0A350();
  v2 = sub_258F0A810();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_258DD8000, v1, v2, "#SiriAttentionAndInvocationSamplingCalculator: _convertBiomeSQLResultsToRows", v3, 2u);
    MEMORY[0x259C9EF40](v3, -1, -1);
  }

  v4 = sub_258F0A070();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    do
    {
      v7 = sub_258F0A060();
      if (v7)
      {
        v8 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_258DE2C0C(0, v5[2] + 1, 1, v5);
        }

        v10 = v5[2];
        v9 = v5[3];
        if (v10 >= v9 >> 1)
        {
          v5 = sub_258DE2C0C((v9 > 1), v10 + 1, 1, v5);
        }

        v5[2] = v10 + 1;
        v5[v10 + 4] = v8;
      }
    }

    while ((sub_258F0A070() & 1) != 0);
  }

  return v5;
}

void sub_258EBC89C(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_258F09FF0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v59 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A528, &unk_258F150F0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v58 - v10;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  v13 = swift_dynamicCast();
  v14 = *(v5 + 56);
  if (v13)
  {
    v14(v11, 0, 1, v4);
    (*(v5 + 32))(&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v4);
    v15 = sub_258F0A350();
    v16 = sub_258F0A810();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_258DD8000, v15, v16, "#SiriAttentionAndInvocationSamplingCalculator: error can be converted to DataAnalyticsError", v17, 2u);
      MEMORY[0x259C9EF40](v17, -1, -1);
    }

    MEMORY[0x28223BE20](v18, v19);
    (*(v5 + 16))(&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v20 = (*(v5 + 88))(&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    if (MEMORY[0x277D01570] && v20 == *MEMORY[0x277D01570] || MEMORY[0x277D01578] && v20 == *MEMORY[0x277D01578])
    {
      (*(v5 + 96))(&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      sub_258EBD244(*(&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0)), *(&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 8), a2);

      (*(v5 + 8))(&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      return;
    }

    if (MEMORY[0x277D01568] && v20 == *MEMORY[0x277D01568])
    {
      (*(v5 + 8))(&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v38 = 1;
LABEL_63:
      *a2 = v38;
      return;
    }

    if (MEMORY[0x277D01530] && v20 == *MEMORY[0x277D01530])
    {
      (*(v5 + 8))(&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v38 = 2;
      goto LABEL_63;
    }

    if (MEMORY[0x277D01520] && v20 == *MEMORY[0x277D01520])
    {
      (*(v5 + 8))(&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v38 = 3;
      goto LABEL_63;
    }

    if (MEMORY[0x277D01518] && v20 == *MEMORY[0x277D01518])
    {
      (*(v5 + 8))(&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v38 = 4;
      goto LABEL_63;
    }

    if (MEMORY[0x277D01558] && v20 == *MEMORY[0x277D01558])
    {
      (*(v5 + 8))(&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v38 = 5;
      goto LABEL_63;
    }

    if (MEMORY[0x277D01540] && v20 == *MEMORY[0x277D01540])
    {
      (*(v5 + 8))(&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v38 = 6;
      goto LABEL_63;
    }

    if (MEMORY[0x277D01538] && v20 == *MEMORY[0x277D01538])
    {
      (*(v5 + 8))(&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v38 = 7;
      goto LABEL_63;
    }

    if (MEMORY[0x277D01550] && v20 == *MEMORY[0x277D01550])
    {
      (*(v5 + 8))(&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v38 = 8;
      goto LABEL_63;
    }

    if (MEMORY[0x277D01528] && v20 == *MEMORY[0x277D01528])
    {
      (*(v5 + 8))(&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v38 = 9;
      goto LABEL_63;
    }

    if (MEMORY[0x277D01548] && v20 == *MEMORY[0x277D01548])
    {
      (*(v5 + 8))(&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v38 = 10;
      goto LABEL_63;
    }

    if (MEMORY[0x277D01560] && v20 == *MEMORY[0x277D01560])
    {
      (*(v5 + 8))(&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v38 = 11;
      goto LABEL_63;
    }

    v57 = *(v5 + 8);
    v57(&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    *a2 = 17;
    v57(&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  }

  else
  {
    v14(v11, 1, 1, v4);
    sub_258DE2184(v11, &qword_27F98A528, &unk_258F150F0);
    v21 = sub_258F09880();
    v22 = sub_258F0A350();
    v23 = sub_258F0A810();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v59 = v25;
      *v24 = 136315394;
      v26 = [v21 domain];
      v27 = sub_258F0A4F0();
      v29 = v28;

      v30 = sub_258DE3018(v27, v29, &v59);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2048;
      v31 = [v21 code];

      *(v24 + 14) = v31;
      _os_log_impl(&dword_258DD8000, v22, v23, "#SiriAttentionAndInvocationSamplingCalculator: error domain: %s, code: %ld", v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x259C9EF40](v25, -1, -1);
      MEMORY[0x259C9EF40](v24, -1, -1);
    }

    else
    {
    }

    v32 = [v21 domain];
    v33 = sub_258F0A4F0();
    v35 = v34;

    if (v33 == 0xD00000000000001CLL && 0x8000000258F1DEA0 == v35)
    {

      v36 = 14;
    }

    else
    {
      v37 = sub_258F0AD80();

      if (v37)
      {

        v36 = 14;
      }

      else
      {
        v39 = [v21 domain];
        v40 = sub_258F0A4F0();
        v42 = v41;

        if (v40 == sub_258F0A4F0() && v42 == v43)
        {

          v36 = 15;
        }

        else
        {
          v44 = sub_258F0AD80();

          if (v44)
          {

            v36 = 15;
          }

          else
          {
            v45 = [v21 domain];
            v46 = sub_258F0A4F0();
            v48 = v47;

            if (v46 == sub_258F0A4F0() && v48 == v49)
            {

              v36 = 13;
            }

            else
            {
              v50 = sub_258F0AD80();

              if (v50)
              {

                v36 = 13;
              }

              else
              {
                v51 = [v21 domain];
                v52 = sub_258F0A4F0();
                v54 = v53;

                if (v52 == sub_258F0A4F0() && v54 == v55)
                {

                  v36 = 16;
                }

                else
                {
                  v56 = sub_258F0AD80();

                  if (v56)
                  {
                    v36 = 16;
                  }

                  else
                  {
                    v36 = 17;
                  }
                }
              }
            }
          }
        }
      }
    }

    *a2 = v36;
  }
}

void sub_258EBD244(void *a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X8>)
{
  v5 = 0;
  while (1)
  {
    v6 = byte_286A29678[v5++ + 32];
    v16 = a1;
    v17 = a2;
    sub_258DEF388();
    v7 = sub_258F0A9A0();

    if (v7)
    {
      break;
    }

    if (v5 == 18)
    {
      v16 = a1;
      v17 = a2;
      if (sub_258F0A9A0())
      {
        v6 = 14;
      }

      else
      {
        v16 = a1;
        v17 = a2;
        sub_258F0A4F0();
        v8 = sub_258F0A9A0();

        if (v8)
        {
          v6 = 15;
        }

        else
        {
          v16 = a1;
          v17 = a2;
          sub_258F0A4F0();
          v9 = sub_258F0A9A0();

          if (v9)
          {
            v6 = 13;
          }

          else
          {
            v16 = a1;
            v17 = a2;
            sub_258F0A4F0();
            v10 = sub_258F0A9A0();

            if (v10)
            {
              v6 = 16;
            }

            else
            {

              v11 = sub_258F0A350();
              v12 = sub_258F0A810();

              if (os_log_type_enabled(v11, v12))
              {
                v13 = swift_slowAlloc();
                v14 = swift_slowAlloc();
                v16 = v14;
                *v13 = 136315138;
                *(v13 + 4) = sub_258DE3018(a1, a2, &v16);
                _os_log_impl(&dword_258DD8000, v11, v12, "#SiriAttentionAndInvocationSamplingCalculator: Cannot decode the error message: %s", v13, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v14);
                MEMORY[0x259C9EF40](v14, -1, -1);
                MEMORY[0x259C9EF40](v13, -1, -1);
              }

              v6 = 17;
            }
          }
        }
      }

      break;
    }
  }

  *a3 = v6;
}

uint64_t SiriAttentionAndInvocationSamplingCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_calendar;
  v2 = sub_258F09B00();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_bookmarkService));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_analyticsEventSubmitter));
  return v0;
}

uint64_t SiriAttentionAndInvocationSamplingCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_calendar;
  v2 = sub_258F09B00();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_bookmarkService));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_analyticsEventSubmitter));

  return swift_deallocClassInstance();
}

uint64_t sub_258EBDAC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258EBB8F4(a1);
}

uint64_t sub_258EBDBB4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_258EBDBE4()
{
  result = qword_27F98A500;
  if (!qword_27F98A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A500);
  }

  return result;
}

uint64_t sub_258EBDC38(uint64_t a1)
{
  result = sub_258EBDCC0(&qword_27F98A508, &unk_258F14F68);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258EBDC7C(uint64_t a1)
{
  result = sub_258EBDCC0(&qword_27F98A510, &protocol conformance descriptor for SiriAttentionAndInvocationSamplingCalculator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258EBDCC0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriAttentionAndInvocationSamplingCalculator(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_258EBDD18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258EBDD60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_258EBDDB8(uint64_t a1)
{
  sub_258F09B00();
  if (v1 <= 0x3F)
  {
    sub_258F0A370();
    if (v2 <= 0x3F)
    {
      sub_258DE3B74(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of SiriAttentionAndInvocationSamplingCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 160) + **(*v2 + 160));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

unint64_t SAIWorkerError.rawValue.getter()
{
  result = 0x6E756F6363416D62;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 4:
      return result;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 0xA:
      result = 0xD000000000000014;
      break;
    case 0xB:
      result = 0xD000000000000015;
      break;
    case 0xC:
      result = 0x6C70556F69647561;
      break;
    case 0xD:
      result = 0x726F706552666266;
      break;
    case 0xE:
      result = 0xD000000000000022;
      break;
    case 0xF:
      result = 0xD000000000000014;
      break;
    case 0x10:
      result = 0x727245616F636F43;
      break;
    case 0x11:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

MetricsFramework::SAIWorkerError_optional __swiftcall SAIWorkerError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258F0AD90();

  v5 = 18;
  if (v3 < 0x12)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_258EBE2A0()
{
  v0 = SAIWorkerError.rawValue.getter();
  v2 = v1;
  if (v0 == SAIWorkerError.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_258F0AD80();
  }

  return v5 & 1;
}

uint64_t sub_258EBE33C()
{
  sub_258F0AE40();
  SAIWorkerError.rawValue.getter();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258EBE3A4(uint64_t a1)
{
  SAIWorkerError.rawValue.getter();
  sub_258F0A5B0();
}

uint64_t sub_258EBE408(uint64_t a1)
{
  sub_258F0AE40();
  SAIWorkerError.rawValue.getter();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

unint64_t sub_258EBE478@<X0>(unint64_t *a1@<X8>)
{
  result = SAIWorkerError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SiriAttentionAndInvocationWorker.init(logger:isMeDevice:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_258F09AE0();
  v6 = type metadata accessor for SiriAttentionAndInvocationWorker(0);
  v7 = *(v6 + 20);
  v8 = sub_258F0A370();
  result = (*(*(v8 - 8) + 32))(a3 + v7, a1, v8);
  *(a3 + *(v6 + 24)) = a2;
  return result;
}

uint64_t type metadata accessor for SiriAttentionAndInvocationWorker(uint64_t a1)
{
  result = qword_280CC4AD8;
  if (!qword_280CC4AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriAttentionAndInvocationWorker.doWork(executor:context:durationThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_258EBE5E8, 0, 0);
}

uint64_t sub_258EBE5E8()
{
  v56 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = type metadata accessor for SiriAttentionAndInvocationWorker(0);
  v4 = *(v3 + 20);
  v5 = v1;
  v54 = v4;
  v6 = sub_258F0A350();
  v7 = sub_258F0A800();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v55[0] = v9;
    *v8 = 136315394;
    v10 = sub_258F09E80();
    v12 = sub_258DE3018(v10, v11, v55);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = sub_258F09E90();
    v15 = sub_258DE3018(v13, v14, v55);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_258DD8000, v6, v7, "TaskId: %s, TaskName: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v16 = *(v0 + 16);
  *v16 = 0;
  v17 = *MEMORY[0x277D81760];
  *(v0 + 144) = v17;
  v18 = sub_258F09E50();
  *(v0 + 48) = v18;
  v19 = *(v18 - 8);
  *(v0 + 56) = v19;
  v20 = *(v19 + 104);
  *(v0 + 64) = v20;
  *(v0 + 72) = (v19 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v20(v16, v17, v18);
  v21 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v22 = sub_258F0A4E0();
  v23 = [v21 initWithSuiteName_];
  *(v0 + 80) = v23;

  v24 = sub_258F09E80();
  v26 = v25;
  v27 = sub_258F09E90();
  sub_258EBEF14(v24, v26, v27, v28);

  v35 = sub_258DFBE24(&unk_286A298A8);
  sub_258DE2184(&unk_286A298C8, &qword_27F988B08, &unk_258F0CD90);
  if (v23)
  {
    v51 = *(v0 + 40);
    v53 = v2;
    v36 = *(v0 + 24);
    sub_258F09E80();
    v37 = objc_allocWithZone(sub_258F09EA0());
    v38 = sub_258F09E70();
    *(v0 + 88) = v38;
    v39 = sub_258F09E00();
    *(v0 + 96) = v39;
    *(v0 + 104) = *(v39 - 8);
    v40 = swift_task_alloc();
    *(v0 + 112) = v40;
    v41 = v38;
    sub_258DFA2E0(v35);

    sub_258F09DF0();
    v42 = swift_task_alloc();
    *(v0 + 120) = v42;
    v43 = *(v51 + *(v3 + 24));
    v52 = (*(*v36 + 88) + **(*v36 + 88));
    v44 = swift_task_alloc();
    *(v0 + 128) = v44;
    *v44 = v0;
    v44[1] = sub_258EBEC0C;

    return v52(v42, v23, v40, v53 + v54, 0xD00000000000003ALL, 0x8000000258F1DF50, v43);
  }

  else
  {

    v45 = sub_258F0A350();
    v46 = sub_258F0A820();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_258DD8000, v45, v46, "Can't get user defaults initialized", v47, 2u);
      MEMORY[0x259C9EF40](v47, -1, -1);
    }

    sub_258EBDBE4();
    v48 = swift_allocError();
    *v49 = 0;
    swift_willThrow();
    v50 = v48;
    v29 = *(v0 + 64);
    v30 = *(v0 + 48);
    v31 = *(v0 + 144);
    v32 = *(v0 + 16);
    (*(*(v0 + 56) + 8))(v32, v30);
    *v32 = v50;
    v29(v32, v31, v30);
    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_258EBEC0C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_258EBEE2C;
  }

  else
  {
    v2 = sub_258EBED20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258EBED20()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v11 = v0[12];
  v4 = v0[10];
  v5 = v0[11];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[2];
  (*(v6 + 8))(v8, v7);
  (*(v6 + 32))(v8, v2, v7);

  sub_258EBF0E8(v8, v4);

  (*(v3 + 8))(v1, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_258EBEE2C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);

  (*(v3 + 8))(v1, v2);

  v5 = *(v0 + 136);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  v8 = *(v0 + 144);
  v9 = *(v0 + 16);
  (*(*(v0 + 56) + 8))(v9, v7);
  *v9 = v5;
  v6(v9, v8, v7);
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_258EBEF14(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  result = sub_258F0A7A0();
  if (result)
  {
    type metadata accessor for SiriAttentionAndInvocationWorker(0);

    v9 = sub_258F0A350();
    v10 = sub_258F0A800();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_258DE3018(a1, a2, &v13);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_258DE3018(a3, a4, &v13);
      _os_log_impl(&dword_258DD8000, v9, v10, "TaskId: %s, TaskName: %s: asked to stop!", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v12, -1, -1);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }

    sub_258F0A770();
    sub_258E4B2E4(&qword_27F988BB8, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    swift_allocError();
    sub_258F0A3F0();
    return swift_willThrow();
  }

  return result;
}

void sub_258EBF0E8(uint64_t a1, void *a2)
{
  v42 = a2;
  v3 = sub_258F09A20();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v41 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v41 - v14;
  v43 = "com.apple.speakerrecognition";
  v16 = sub_258F09E50();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v16);
  v21 = (*(v17 + 88))(v20, v16);
  if (MEMORY[0x277D81768] && v21 == *MEMORY[0x277D81768])
  {
    (*(v17 + 8))(v20, v16);
    sub_258F09B50();
    sub_258F09AB0();
    v41 = *(v4 + 8);
    v41(v12, v3);
    v22 = sub_258F099A0();
    v23 = v43;
    v24 = sub_258F0A4E0();
    [v42 setValue:v22 forKey:v24];

    type metadata accessor for SiriAttentionAndInvocationWorker(0);
    (*(v4 + 16))(v8, v15, v3);
    v25 = sub_258F0A350();
    v26 = sub_258F0A810();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v44 = v42;
      *v27 = 136315394;
      sub_258E4B2E4(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v28 = sub_258F0AD60();
      v29 = v23;
      v31 = v30;
      v32 = v8;
      v33 = v41;
      v41(v32, v3);
      v34 = sub_258DE3018(v28, v31, &v44);

      *(v27 + 4) = v34;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_258DE3018(0xD00000000000002BLL, v29 | 0x8000000000000000, &v44);
      _os_log_impl(&dword_258DD8000, v25, v26, "Wrote %s to %s in UserDefaults", v27, 0x16u);
      v35 = v42;
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v35, -1, -1);
      MEMORY[0x259C9EF40](v27, -1, -1);

      v33(v15, v3);
    }

    else
    {

      v40 = v41;
      v41(v8, v3);
      v40(v15, v3);
    }
  }

  else
  {
    (*(v17 + 8))(v20, v16);
    type metadata accessor for SiriAttentionAndInvocationWorker(0);
    v36 = sub_258F0A350();
    v37 = sub_258F0A810();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v44 = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_258DE3018(0xD00000000000002BLL, v43 | 0x8000000000000000, &v44);
      _os_log_impl(&dword_258DD8000, v36, v37, "SpeakerId Sampling Plugin run was not successful. Not updating  %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x259C9EF40](v39, -1, -1);
      MEMORY[0x259C9EF40](v38, -1, -1);
    }
  }
}

uint64_t sub_258EBF62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 136) = a7;
  *(v7 + 56) = a5;
  *(v7 + 64) = a6;
  *(v7 + 40) = a3;
  *(v7 + 48) = a4;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  v8 = sub_258F0A370();
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258EBF6F8, 0, 0);
}

uint64_t sub_258EBF6F8(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#SiriAttentionAndInvocation: Call SiriAttentionAndInvocation processing", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v6 = *(v1 + 80);
  v5 = *(v1 + 88);
  v7 = *(v1 + 136);
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  v11 = *(v1 + 48);
  v10 = *(v1 + 56);
  v12 = *(v1 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0);
  v13 = swift_task_alloc();
  *(v1 + 96) = v13;
  (*(v6 + 16))(v5, v11, v9);
  type metadata accessor for SiriAttentionAndInvocationPlugin(0);
  swift_allocObject();

  *(v1 + 16) = sub_258EB9398(v12, v5, v10, v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A530, &unk_258F15120);
  swift_allocObject();
  v15 = sub_258F09E40();
  *(v1 + 104) = v15;
  if (v15)
  {
    v16 = *(v1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0);
    v17 = swift_task_alloc();
    *(v1 + 112) = v17;
    v18 = sub_258F09E00();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v17, v16, v18);
    (*(v19 + 56))(v17, 0, 1, v18);
    v20 = swift_task_alloc();
    *(v1 + 120) = v20;
    *v20 = v1;
    v20[1] = sub_258E4ADA8;

    return MEMORY[0x2821ED078](v13, v17);
  }

  else
  {
    v21 = *(v1 + 24);
    v22 = sub_258F09E50();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v13, 1, 1, v22);
    (*(v23 + 104))(v21, *MEMORY[0x277D81758], v22);

    v24 = *(v1 + 8);

    return v24();
  }
}

unint64_t sub_258EBFAF0()
{
  result = qword_27F98A538;
  if (!qword_27F98A538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A538);
  }

  return result;
}

unint64_t sub_258EBFB4C()
{
  result = qword_27F98A540;
  if (!qword_27F98A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A540);
  }

  return result;
}

unint64_t sub_258EBFBA4()
{
  result = qword_27F98A548;
  if (!qword_27F98A548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F98A550, &qword_258F15208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A548);
  }

  return result;
}

uint64_t sub_258EBFC40(uint64_t a1)
{
  result = sub_258F09B00();
  if (v2 <= 0x3F)
  {
    result = sub_258F0A370();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of SiriAttentionAndInvocationTaskExecutor.executeSiriAttentionAndInvocationSampling(defaults:pluginContext:logger:fbfBundleId:isMeDevice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = (*(*v7 + 88) + **(*v7 + 88));
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_258DE1DC4;

  return v18(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t SiriDeviceExperimentMetricsBiomeReporter.__allocating_init(biomeDonator:logger:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = OBJC_IVAR____TtC16MetricsFramework40SiriDeviceExperimentMetricsBiomeReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v4 + v5, a2, v6);
  return v4;
}

uint64_t SiriDeviceExperimentMetricsBiomeReporter.init(biomeDonator:logger:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = OBJC_IVAR____TtC16MetricsFramework40SiriDeviceExperimentMetricsBiomeReporter_logger;
  v5 = sub_258F0A370();
  (*(*(v5 - 8) + 32))(v2 + v4, a2, v5);
  return v2;
}

uint64_t sub_258EBFF88(uint64_t a1)
{
  v2[2] = v1;
  v2[3] = *(type metadata accessor for DeviceExperimentMetrics(0) - 8);
  v4 = swift_task_alloc();
  v5 = *(a1 + 16);
  v2[4] = v4;
  v2[5] = v5;

  return MEMORY[0x2822009F8](sub_258EC004C, 0, 0);
}

uint64_t sub_258EC004C(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Reporter invoked: SiriDeviceExperimentMetricsReporter", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v1[5];

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v1[3];
    v8 = v1[5] + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    do
    {
      v10 = v1[4];
      sub_258E730E0(v8, v10, type metadata accessor for DeviceExperimentMetrics);
      v11 = _s16MetricsFramework020SiriDeviceExperimentA13BiomeReporterC06createf2Ond6DigesteA5Event010experimentA0So06BMSiriidjeA0CAA0deA0V_tFZ_0(v10);
      sub_258EC08EC(v10, type metadata accessor for DeviceExperimentMetrics);
      sub_258F09B90();

      v8 += v9;
      --v6;
    }

    while (v6);
  }

  v12 = v1[1];

  return v12();
}

uint64_t sub_258EC01CC()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework40SiriDeviceExperimentMetricsBiomeReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t SiriDeviceExperimentMetricsBiomeReporter.deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework40SiriDeviceExperimentMetricsBiomeReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SiriDeviceExperimentMetricsBiomeReporter.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework40SiriDeviceExperimentMetricsBiomeReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id _s16MetricsFramework020SiriDeviceExperimentA13BiomeReporterC06createf2Ond6DigesteA5Event010experimentA0So06BMSiriidjeA0CAA0deA0V_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989AD8, &qword_258F114A8);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v41 - v8;
  v10 = type metadata accessor for ExperimentDigest(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x277D84F90];
  v15 = type metadata accessor for DeviceExperimentMetrics(0);
  v16 = *(a1 + v15[11]);
  if (v16)
  {
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v19 = *(v11 + 72);
      do
      {
        sub_258E730E0(v18, v14, type metadata accessor for ExperimentDigest);
        _s16MetricsFramework16ExperimentDigestV12toBiomeEvent010experimentD0So014BMSiriOnDevicedcacD0CAC_tFZ_0(v14);
        v20 = sub_258EC08EC(v14, type metadata accessor for ExperimentDigest);
        MEMORY[0x259C9DF50](v20);
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v43 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_258F0A6D0();
        }

        sub_258F0A700();
        v18 += v19;
        --v17;
      }

      while (v17);
    }
  }

  sub_258E730E0(a1, v9, type metadata accessor for DeviceExperimentMetrics);
  (*(*(v15 - 1) + 56))(v9, 0, 1, v15);
  v43 = _s16MetricsFramework13EventMetadataV07toBiomeC0016deviceExperimentA0So020BMSiriOnDeviceDigesthacD0CAA0khA0VSg_tFZ_0(v9);
  sub_258DE2184(v9, &qword_27F989AD8, &qword_258F114A8);
  if (*(a1 + v15[5] + 4))
  {
    v42 = 0;
  }

  else
  {
    v42 = sub_258F0AE20();
  }

  v21 = v15[7];
  v22 = (a1 + v15[6]);
  v23 = v22[1];
  v41 = *v22;
  sub_258E3A540(a1 + v21, v5);
  v24 = sub_258F09A70();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v5, 1, v24) == 1)
  {
    sub_258DE2184(v5, &qword_27F988730, &unk_258F0F8E0);
    v26 = 0;
  }

  else
  {
    sub_258F09A40();
    v26 = v27;
    (*(v25 + 8))(v5, v24);
  }

  if (*(a1 + v15[8] + 8))
  {
    v28 = 0;
  }

  else
  {
    v28 = sub_258F0AE30();
  }

  v29 = *(a1 + v15[9] + 8);
  if (*(a1 + v15[10] + 4))
  {
    v30 = 0;
    if (v23)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v30 = sub_258F0AE20();
    if (v23)
    {
LABEL_18:
      v31 = sub_258F0A4E0();
      if (v26)
      {
        goto LABEL_19;
      }

LABEL_23:
      v32 = 0;
      if (v29)
      {
        goto LABEL_20;
      }

LABEL_24:
      v33 = 0;
      goto LABEL_25;
    }
  }

  v31 = 0;
  if (!v26)
  {
    goto LABEL_23;
  }

LABEL_19:
  v32 = sub_258F0A4E0();

  if (!v29)
  {
    goto LABEL_24;
  }

LABEL_20:
  v33 = sub_258F0A4E0();
LABEL_25:
  v34 = objc_allocWithZone(MEMORY[0x277CF14C8]);
  sub_258EC08A0();
  v35 = sub_258F0A6A0();

  v36 = v34;
  v38 = v42;
  v37 = v43;
  v39 = [v36 initWithEventMetadata:v43 digestType:v42 experimentId:v31 treatmentIdUUID:v32 deploymentId:v28 deviceType:v33 programCode:v30 digests:v35];

  return v39;
}

uint64_t type metadata accessor for SiriDeviceExperimentMetricsBiomeReporter(uint64_t a1)
{
  result = qword_280CC5800;
  if (!qword_280CC5800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_258EC08A0()
{
  result = qword_27F98A560;
  if (!qword_27F98A560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F98A560);
  }

  return result;
}

uint64_t sub_258EC08EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SiriDeviceExperimentMetricsDataProvider.__allocating_init(logger:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t SiriDeviceExperimentMetricsDataProvider.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_258EC0A60(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: SiriDeviceExperimentMetricsDataProvider", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t SiriDeviceExperimentMetricsDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SiriDeviceExperimentMetricsDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_258EC0C3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258DE1DC4;

  return sub_258EC0A40();
}

uint64_t type metadata accessor for SiriDeviceExperimentMetricsDataProvider(uint64_t a1)
{
  result = qword_280CC5838;
  if (!qword_280CC5838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of SiriDeviceExperimentMetricsDataProvider.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 96) + **(*v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t sub_258EC0F34(uint64_t a1)
{
  v6 = (*(**v1 + 80) + **(**v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t dispatch thunk of SiriDeviceExperimentMetricsReporter.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 80) + **(*v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t SiriDeviceExperimentMetricsSELFReporter.__allocating_init(logger:reportingService:selfConversion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_oddSiriClientEvents) = MEMORY[0x277D84F90];
  v9 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_logger;
  v10 = sub_258F0A370();
  (*(*(v10 - 8) + 32))(v8 + v9, a1, v10);
  *(v8 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_reportingService) = a2;
  v11 = (v8 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_selfConversion);
  *v11 = a3;
  v11[1] = a4;
  return v8;
}

uint64_t sub_258EC127C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double sub_258EC12E4()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_258EC132C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t SiriDeviceExperimentMetricsSELFReporter.init(logger:reportingService:selfConversion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_oddSiriClientEvents) = MEMORY[0x277D84F90];
  v9 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_logger;
  v10 = sub_258F0A370();
  (*(*(v10 - 8) + 32))(v4 + v9, a1, v10);
  *(v4 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_reportingService) = a2;
  v11 = (v4 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_selfConversion);
  *v11 = a3;
  v11[1] = a4;
  return v4;
}

uint64_t sub_258EC1498(uint64_t a1)
{
  v2[2] = v1;
  v2[3] = *(type metadata accessor for DeviceExperimentMetrics(0) - 8);
  v4 = swift_task_alloc();
  v5 = *(a1 + 16);
  v2[4] = v4;
  v2[5] = v5;
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_258EC15A8;

  return sub_258E6422C(2, 1);
}

uint64_t sub_258EC15A8(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_258EC16A8, 0, 0);
}

uint64_t sub_258EC16A8(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 16);
  if (v2)
  {
    v4 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_logger;
    *(v1 + 64) = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_logger;
    v5 = swift_task_alloc();
    *(v1 + 72) = v5;
    *v5 = v1;
    v5[1] = sub_258EC19BC;
    v6 = v3 + v4;
LABEL_3:

    return sub_258EB5738(v2, v6);
  }

  v8 = sub_258F0A350();
  v9 = sub_258F0A820();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_258DD8000, v8, v9, "Unable to create exection metadata event", v10, 2u);
    MEMORY[0x259C9EF40](v10, -1, -1);
  }

  v11 = *(v1 + 40);
  v12 = *(v11 + 16);
  *(v1 + 88) = v12;
  if (v12)
  {
    v13 = *(v1 + 24);
    v14 = (*(v1 + 16) + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_selfConversion);
    v15 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_logger;
    *(v1 + 96) = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_reportingService;
    *(v1 + 104) = v15;
    *(v1 + 112) = *v14;
    *(v1 + 120) = v14[1];
    *(v1 + 184) = *(v13 + 80);
    *(v1 + 128) = 0;
    if (*(v11 + 16))
    {
      v16 = 0;
      while (1)
      {
        v17 = *(v1 + 112);
        v18 = *(v1 + 32);
        sub_258EC2610(v11 + ((*(v1 + 184) + 32) & ~*(v1 + 184)) + *(*(v1 + 24) + 72) * v16, v18);
        v19 = v17(v18);
        *(v1 + 136) = v19;
        sub_258EC2674(v18);
        result = v19 >> 62 ? sub_258F0AA20() : *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v1 + 144) = result;
        v20 = *(v1 + 136);
        if (result)
        {
          break;
        }

        v21 = *(v1 + 128);
        v22 = *(v1 + 88);

        if (v21 + 1 == v22)
        {
          goto LABEL_18;
        }

        v16 = *(v1 + 128) + 1;
        *(v1 + 128) = v16;
        v11 = *(v1 + 40);
        if (v16 >= *(v11 + 16))
        {
          goto LABEL_25;
        }
      }

      if ((v20 & 0xC000000000000001) == 0)
      {
        if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v24 = *(v20 + 32);
        goto LABEL_24;
      }
    }

    else
    {
LABEL_25:
      __break(1u);
    }

    v24 = MEMORY[0x259C9E3B0](0);
LABEL_24:
    v2 = v24;
    *(v1 + 152) = v24;
    *(v1 + 160) = 1;
    v25 = *(v1 + 104);
    v26 = *(v1 + 16);
    v27 = swift_task_alloc();
    *(v1 + 168) = v27;
    *v27 = v1;
    v27[1] = sub_258EC1D0C;
    v6 = v26 + v25;
    goto LABEL_3;
  }

LABEL_18:

  v23 = *(v1 + 8);

  return v23();
}

uint64_t sub_258EC19BC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_258EC202C;
  }

  else
  {
    v2 = sub_258EC1AD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}