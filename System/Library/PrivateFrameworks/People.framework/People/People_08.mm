unint64_t sub_22F08BB38()
{
  result = qword_27DAA1E38;
  if (!qword_27DAA1E38)
  {
    sub_22F0D037C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1E38);
  }

  return result;
}

id sub_22F08BB94()
{
  result = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0x6C616E7265746E49, 0xEE00726F72726520, 500);
  qword_27DAA1E40 = result;
  return result;
}

id static PeopleErrors.internalError.getter()
{
  if (qword_27DAA05C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27DAA1E40;

  return v1;
}

id sub_22F08BC34()
{
  result = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000016, 0x800000022F0DF2D0, 417);
  qword_27DAACEF0 = result;
  return result;
}

id sub_22F08BC70()
{
  result = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000020, 0x800000022F0DF2F0, 418);
  qword_27DAACEF8 = result;
  return result;
}

id sub_22F08BCAC()
{
  result = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD00000000000001FLL, 0x800000022F0DF2B0, 419);
  qword_27DAACF00 = result;
  return result;
}

id _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1DC0, &qword_22F0D94F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D2BF0;
  *(inited + 32) = sub_22F0D0CAC();
  *(inited + 40) = v6;
  type metadata accessor for DaemonConnection();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v18 = a2;
  v9 = sub_22F0D031C();
  v11 = v10;

  *(inited + 48) = v9;
  *(inited + 56) = v11;
  v12 = sub_22F07D584(inited);
  swift_setDeallocating();
  sub_22F086A04(inited + 32);
  sub_22F00DD94(v12);

  v13 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v14 = sub_22F0D0C7C();
  v15 = sub_22F0D0AEC();

  v16 = [v13 initWithDomain:v14 code:a3 userInfo:{v15, v18}];

  return v16;
}

uint64_t static BiomeHelper.createWith(_:useFamilyCache:resolveAppBundleInfo:withContactFetcher:bundleResolver:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 97) = a4;
  *(v6 + 96) = a3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  type metadata accessor for MessageDetails(0);
  *(v6 + 48) = swift_task_alloc();
  *(v6 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F08BF54, 0, 0);
}

uint64_t sub_22F08BF54()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    swift_unknownObjectRetain();
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_22F08C190;
    v4 = *(v0 + 56);
    v5 = *(v0 + 40);
    v6 = *(v0 + 97);

    return sub_22F06801C(v4, v2, v5, v6);
  }

  else
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      swift_unknownObjectRetain();
      sub_22F0D152C();

      v10 = [v9 description];
      v11 = sub_22F0D0CAC();
      v13 = v12;

      MEMORY[0x2318FD2C0](v11, v13);

      _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000021, 0x800000022F0DF340, 500);

      swift_willThrow();
      swift_unknownObjectRelease();
    }

    else
    {
      _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000016, 0x800000022F0DF320, 500);
      swift_willThrow();
    }

    swift_willThrow();

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_22F08C190()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_22F08C500;
  }

  else
  {
    v2 = sub_22F08C2A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22F08C2A4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_22F011BE8(v1, v2);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_22F08C35C;
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = *(v0 + 96);
  v7 = *(v0 + 16);

  return sub_22F03F290(v4, v5, v7, v6);
}

uint64_t sub_22F08C35C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_22F08C584;
  }

  else
  {
    v2 = sub_22F08C470;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22F08C470()
{
  v1 = v0[6];
  v2 = v0[2];
  sub_22F012058(v2);
  sub_22F011BE8(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22F08C500()
{
  swift_unknownObjectRelease();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22F08C584(uint64_t a1)
{
  v2 = *(v1 + 16);
  swift_willThrow();
  sub_22F012058(v2);

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_22F08C60C(int a1, uint64_t a2)
{
  v5 = sub_22F0D126C();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22F0D0A6C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_22F0D127C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = a2;
  v23 = sub_22F033250();
  v24 = a2;
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  swift_unknownObjectRetain();
  sub_22F0D152C();
  MEMORY[0x2318FD2C0](0xD000000000000010, 0x800000022F0DD990);
  MEMORY[0x2318FD2C0](46, 0xE100000000000000);
  HIDWORD(v21) = a1;
  sub_22F032B24(a1);
  MEMORY[0x2318FD2C0](0x722E65756575715FLL, 0xED00007265646165);
  (*(v8 + 104))(v10, *MEMORY[0x277D85268], v7);
  sub_22F0D0A5C();
  v25[0] = MEMORY[0x277D84F90];
  sub_22F08E660(&qword_280CBEC78, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1E90, qword_22F0DA870);
  v11 = v22;
  sub_22F08E6A8(&qword_280CBEC80, &qword_27DAA1E90, qword_22F0DA870);
  sub_22F0D13EC();
  *(v11 + 16) = sub_22F0D129C();
  if (qword_280CBDBD8 != -1)
  {
    swift_once();
  }

  v12 = sub_22F0D0A1C();
  __swift_project_value_buffer(v12, qword_280CBDBE0);
  v13 = sub_22F0D09FC();
  v14 = sub_22F0D124C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25[0] = v16;
    *v15 = 136315138;
    if (BYTE4(v21) > 4u)
    {
      if (BYTE4(v21) <= 6u)
      {
        if (BYTE4(v21) == 5)
        {
          v18 = 0x617453646C696863;
          v17 = 0xEA00000000006574;
        }

        else
        {
          v17 = 0xED00006567617373;
          v18 = 0x654D646165726E75;
        }
      }

      else if (BYTE4(v21) == 7)
      {
        v18 = 0x7373654D64616572;
        v17 = 0xEB00000000656761;
      }

      else if (BYTE4(v21) == 8)
      {
        v17 = 0xEA00000000006C6CLL;
        v18 = 0x614364657373696DLL;
      }

      else
      {
        v17 = 0xE800000000000000;
        v18 = 0x7261646E656C6163;
      }
    }

    else if (BYTE4(v21) <= 1u)
    {
      if (BYTE4(v21))
      {
        v17 = 0xEB00000000657461;
        v18 = 0x74536E6F69746F6DLL;
      }

      else
      {
        v17 = 0xEF7974696C696261;
        v18 = 0x6C69617641646E64;
      }
    }

    else if (BYTE4(v21) == 2)
    {
      v17 = 0xE800000000000000;
      v18 = 0x6E6F697461636F6CLL;
    }

    else if (BYTE4(v21) == 3)
    {
      v17 = 0xEF74736575716552;
      v18 = 0x7975426F546B7361;
    }

    else
    {
      v17 = 0x800000022F0DC350;
      v18 = 0xD000000000000011;
    }

    v19 = sub_22F00A560(v18, v17, v25);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_22EFE1000, v13, v14, "BiomeStreamReader for %s init", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x2318FE8B0](v16, -1, -1);
    MEMORY[0x2318FE8B0](v15, -1, -1);
  }

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_22F08CB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1E60, &qword_22F0D5A58);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  sub_22F08CCD4(v5, a4, sub_22F00CEE4, v12);
  return sub_22F0D00CC();
}

uint64_t sub_22F08CCD4(unsigned int a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v45 = a3;
  v46 = a4;
  v44 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v43[-v7];
  v9 = sub_22F0D05BC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v43[-v14];
  sub_22F0D05AC();
  v16 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v6 + 8))(v8, v5);
  sub_22F0D055C();
  v17 = *(v10 + 8);
  v17(v13, v9);
  v18 = *(v4 + 24);
  if (v18)
  {
    sub_22F0D04CC();
    v19 = [v18 publisherFromStartTime_];
    objc_opt_self();
    v20 = swift_dynamicCastObjCClassUnconditional();
    swift_unknownObjectRetain();
    sub_22F08D204(v44, v20, v45, v46);
    swift_unknownObjectRelease_n();
  }

  else
  {
    v21 = v44;
    if (qword_280CBDBD8 != -1)
    {
      swift_once();
    }

    v22 = sub_22F0D0A1C();
    __swift_project_value_buffer(v22, qword_280CBDBE0);
    v23 = sub_22F0D09FC();
    v24 = sub_22F0D123C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v47 = v26;
      *v25 = 136315138;
      if (v21 > 4u)
      {
        v35 = 0x7373654D64616572;
        v36 = 0xEB00000000656761;
        v37 = 0xEA00000000006C6CLL;
        v38 = 0x614364657373696DLL;
        if (v21 != 8)
        {
          v38 = 0x7261646E656C6163;
          v37 = 0xE800000000000000;
        }

        if (v21 != 7)
        {
          v35 = v38;
          v36 = v37;
        }

        v39 = 0x617453646C696863;
        v40 = 0xEA00000000006574;
        if (v21 != 5)
        {
          v39 = 0x654D646165726E75;
          v40 = 0xED00006567617373;
        }

        if (v21 <= 6u)
        {
          v33 = v39;
        }

        else
        {
          v33 = v35;
        }

        if (v21 <= 6u)
        {
          v34 = v40;
        }

        else
        {
          v34 = v36;
        }
      }

      else
      {
        v27 = 0xEF7974696C696261;
        v28 = 0x6C69617641646E64;
        v29 = 0xE800000000000000;
        v30 = 0x6E6F697461636F6CLL;
        v31 = 0xEF74736575716552;
        v32 = 0x7975426F546B7361;
        if (v21 != 3)
        {
          v32 = 0xD000000000000011;
          v31 = 0x800000022F0DC350;
        }

        if (v21 != 2)
        {
          v30 = v32;
          v29 = v31;
        }

        if (v21)
        {
          v28 = 0x74536E6F69746F6DLL;
          v27 = 0xEB00000000657461;
        }

        if (v21 <= 1u)
        {
          v33 = v28;
        }

        else
        {
          v33 = v30;
        }

        if (v21 <= 1u)
        {
          v34 = v27;
        }

        else
        {
          v34 = v29;
        }
      }

      v41 = sub_22F00A560(v33, v34, &v47);

      *(v25 + 4) = v41;
      _os_log_impl(&dword_22EFE1000, v23, v24, "%s serious errors, missing reader string!", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2318FE8B0](v26, -1, -1);
      MEMORY[0x2318FE8B0](v25, -1, -1);
    }

    v45(MEMORY[0x277D84F90]);
  }

  return (v17)(v15, v9);
}

void sub_22F08D204(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x277D84F90];
  LOBYTE(v18) = a1;
  v11 = _s6People0A9AnalyticsC22collectEventsStopwatchyAC9StopWatchCAA10StatusTypeOFZ_0(&v18);
  v12 = [a2 withBookmark_];
  v13 = swift_allocObject();
  v13[2] = v5;
  v13[3] = v11;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = v10;
  v22 = sub_22F08E618;
  v23 = v13;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_22F09A628;
  v21 = &block_descriptor_8;
  v14 = _Block_copy(&v18);
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0D00CC();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v5;
  *(v15 + 32) = v10;
  v22 = sub_22F08E640;
  v23 = v15;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_22F09B8A8;
  v21 = &block_descriptor_20;
  v16 = _Block_copy(&v18);
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0D00CC();
  v17 = [v12 sinkWithCompletion:v14 receiveInput:v16];
  _Block_release(v16);
  _Block_release(v14);
  sub_22F0D00CC();
  sub_22F0D00CC();
}

uint64_t sub_22F08D440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_22F0D0A4C();
  v21 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22F0D0A6C();
  v13 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  aBlock[4] = sub_22F08E654;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F009868;
  aBlock[3] = &block_descriptor_32;
  v17 = _Block_copy(aBlock);
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0D0A5C();
  v22 = MEMORY[0x277D84F90];
  sub_22F08E660(&qword_27DAA1E70, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1398, &qword_22F0D61C8);
  sub_22F08E6A8(&qword_27DAA1E80, &qword_27DAA1398, &qword_22F0D61C8);
  sub_22F0D13EC();
  MEMORY[0x2318FD7C0](0, v15, v12, v17);
  _Block_release(v17);
  (*(v21 + 8))(v12, v10);
  (*(v13 + 8))(v15, v20);
  return sub_22F0D00CC();
}

double sub_22F08D720(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  sub_22F08F590();
  swift_beginAccess();
  v6 = *(a4 + 16);
  if (v6 >> 62)
  {
    sub_22F0CFF1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1158, &unk_22F0DA960);
    v7 = sub_22F0D16AC();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_22F0D189C();
    v7 = v6;
  }

  _s6People011BMStoreDataA0O9logicSortySaySo0bC0_pGAFFZ_0(v7);
  v9 = v8;

  a2(v9);

  return result;
}

void sub_22F08D808(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22F0D0A4C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22F0D0A6C();
  v47 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15 && (v16 = [v15 eventBody]) != 0)
  {
    v17 = v16;
    v46 = *(a3 + 16);
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = v17;
    aBlock[4] = sub_22F08E64C;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F009868;
    aBlock[3] = &block_descriptor_26;
    v19 = _Block_copy(aBlock);
    sub_22F0CFFAC();
    v45 = v17;
    sub_22F0D0A5C();
    v49 = MEMORY[0x277D84F90];
    sub_22F08E660(&qword_27DAA1E70, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v44 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1398, &qword_22F0D61C8);
    sub_22F08E6A8(&qword_27DAA1E80, &qword_27DAA1398, &qword_22F0D61C8);
    sub_22F0D13EC();
    MEMORY[0x2318FD7C0](0, v14, v11, v19);
    swift_unknownObjectRelease();
    _Block_release(v19);

    (*(v9 + 8))(v11, v8);
    (v47[1].isa)(v14, v44);
    sub_22F0D00CC();
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_280CBDBD8 != -1)
    {
      swift_once();
    }

    v20 = sub_22F0D0A1C();
    __swift_project_value_buffer(v20, qword_280CBDBE0);
    swift_unknownObjectRetain();
    v47 = sub_22F0D09FC();
    v21 = sub_22F0D123C();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v47, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v22 = 136315394;
      if (a2 > 4u)
      {
        v33 = 0x7373654D64616572;
        v34 = 0xEB00000000656761;
        v35 = 0xEA00000000006C6CLL;
        v36 = 0x614364657373696DLL;
        if (a2 != 8)
        {
          v36 = 0x7261646E656C6163;
          v35 = 0xE800000000000000;
        }

        if (a2 != 7)
        {
          v33 = v36;
          v34 = v35;
        }

        v37 = 0x617453646C696863;
        v38 = 0xEA00000000006574;
        if (a2 != 5)
        {
          v37 = 0x654D646165726E75;
          v38 = 0xED00006567617373;
        }

        if (a2 <= 6u)
        {
          v30 = v37;
        }

        else
        {
          v30 = v33;
        }

        if (a2 <= 6u)
        {
          v31 = v38;
        }

        else
        {
          v31 = v34;
        }
      }

      else
      {
        v24 = 0xEF7974696C696261;
        v25 = 0x6C69617641646E64;
        v26 = 0xE800000000000000;
        v27 = 0x6E6F697461636F6CLL;
        v28 = 0xEF74736575716552;
        v29 = 0x7975426F546B7361;
        if (a2 != 3)
        {
          v29 = 0xD000000000000011;
          v28 = 0x800000022F0DC350;
        }

        if (a2 != 2)
        {
          v27 = v29;
          v26 = v28;
        }

        if (a2)
        {
          v25 = 0x74536E6F69746F6DLL;
          v24 = 0xEB00000000657461;
        }

        if (a2 <= 1u)
        {
          v30 = v25;
        }

        else
        {
          v30 = v27;
        }

        if (a2 <= 1u)
        {
          v31 = v24;
        }

        else
        {
          v31 = v26;
        }
      }

      v39 = sub_22F00A560(v30, v31, aBlock);

      *(v22 + 4) = v39;
      *(v22 + 12) = 2080;
      v49 = a1;
      swift_unknownObjectRetain();
      v40 = sub_22F0D0CFC();
      v42 = sub_22F00A560(v40, v41, aBlock);

      *(v22 + 14) = v42;
      _os_log_impl(&dword_22EFE1000, v47, v21, "%s event wrong: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v23, -1, -1);
      MEMORY[0x2318FE8B0](v22, -1, -1);
    }

    else
    {
      v32 = v47;
    }
  }
}

uint64_t sub_22F08DE5C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = a2;
  MEMORY[0x2318FD450]();
  if (*((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22F0D0F8C();
  }

  sub_22F0D0FEC();
  return swift_endAccess();
}

unint64_t sub_22F08DF04@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x2318FDAB0](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_22F08DF80(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
LABEL_22:
    v17 = a1;
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    v5 = sub_22F0D143C();
    a1 = v17;
  }

  else
  {
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = a1 & 0xC000000000000001;
  v18 = a1;
  v6 = a1 + 32;
  do
  {
    v7 = v5;
    if (!v5)
    {
      break;
    }

    --v5;
    if (__OFSUB__(v7, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v20)
    {
      v8 = MEMORY[0x2318FDAB0](v7 - 1, v18);
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }

      if (v5 >= *(v19 + 16))
      {
        goto LABEL_21;
      }

      v8 = *(v6 + 8 * v5);
    }

    v9 = v8;
    v10 = [v8 requestID];
    v11 = sub_22F0D0CAC();
    v13 = v12;

    if (v11 == a2 && v13 == a3)
    {

      return v5;
    }

    v15 = sub_22F0D188C();
  }

  while ((v15 & 1) == 0);
  return v5;
}

uint64_t sub_22F08E0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_22F08E110, 0, 0);
}

uint64_t sub_22F08E110()
{
  v1 = v0[6];
  v2 = [objc_opt_self() screenTimeRequestStream];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1E50, &qword_22F0D97B8);
  swift_allocObject();
  v3 = sub_22F08C60C(4, v2);
  v0[7] = v3;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = 4;
  *(v4 + 32) = v1;
  v5 = swift_task_alloc();
  v0[9] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1150, &unk_22F0D59C0);
  *v5 = v0;
  v5[1] = sub_22F08E28C;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000021, 0x800000022F0DF370, sub_22F08E5E8, v4, v6);
}

uint64_t sub_22F08E28C()
{

  return MEMORY[0x2822009F8](sub_22F08E3A4, 0, 0);
}

uint64_t sub_22F08E3A4()
{
  v16 = v0;
  v1 = v0[2];
  v15 = MEMORY[0x277D84F90];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_21:
    v4 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

LABEL_20:
  v2 = sub_22F0D143C();
  if (!v2)
  {
    goto LABEL_21;
  }

LABEL_3:
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v5 = v3;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2318FDAB0](v5, v1);
        v3 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        swift_unknownObjectRetain();
        v3 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v5;
      if (v3 == v2)
      {
        goto LABEL_22;
      }
    }

    MEMORY[0x2318FD450]();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22F0D0F8C();
    }

    sub_22F0D0FEC();
    v4 = v15;
  }

  while (v3 != v2);
LABEL_22:
  v7 = v0[4];
  v6 = v0[5];

  v0[3] = v4;
  sub_22F0CFF1C();
  v8 = sub_22F08DF80(v4, v7, v6);
  v10 = v9;

  v11 = 0;
  *(swift_task_alloc() + 16) = v0 + 3;
  if ((v10 & 1) == 0)
  {
    v14 = v8;
    sub_22F08E5F8(&v14, &v15);
    v11 = v15;
  }

  sub_22F0D00CC();

  v12 = v0[1];

  return v12(v11);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22F0CFFAC();
}

uint64_t sub_22F08E660(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22F08E6A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22F08E71C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D70, &unk_22F0D9110);
    v2 = sub_22F0D171C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  sub_22F0CFF1C();
  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v11 >= v6)
    {
      sub_22F0D00CC();
      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v12 = __clz(__rbit64(v5)) | (v11 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_22EFFFB40(*(a1 + 56) + 40 * v12, v28);
    *&v27 = v14;
    *(&v27 + 1) = v15;
    v24 = v27;
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v16 = v27;
    sub_22EFE6B9C(v25, v23);
    sub_22F0CFF1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1EE0, &unk_22F0D9E60);
    sub_22F01B924(0, &qword_280CBDC38, 0x277D82BB8);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v17 = sub_22EFFDA80(v16, *(&v16 + 1));
    if (v18)
    {
      *(v2[6] + 16 * v17) = v16;
      v8 = v17;

      v9 = v2[7];
      v10 = *(v9 + 8 * v8);
      *(v9 + 8 * v8) = v22;

      v7 = v11;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
      *(v2[6] + 16 * v17) = v16;
      *(v2[7] + 8 * v17) = v22;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_23;
      }

      v2[2] = v21;
      v7 = v11;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v11 = v7;
  }

  sub_22F0D00CC();

  sub_22F0D00CC();
}

void sub_22F08E9A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1998, &qword_22F0D9E70);
    v2 = sub_22F0D171C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  sub_22F0CFF1C();
  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      goto LABEL_23;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        sub_22F003428(*(a1 + 48) + 40 * v11, v24);
        sub_22F003598(*(a1 + 56) + 32 * v11, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_22F003428(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_22F003A4C(v21, &qword_27DAA1EE8, &unk_22F0D9E78);
          sub_22F0D00CC();
          goto LABEL_23;
        }

        sub_22F003598(v22 + 8, v20);
        sub_22F003A4C(v21, &qword_27DAA1EE8, &unk_22F0D9E78);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v12 = sub_22EFFDA80(v18, v19);
        if (v13)
        {
          v8 = (v2[6] + 16 * v12);
          *v8 = v18;
          v8[1] = v19;
          v9 = v12;

          *(v2[7] + 8 * v9) = v18;
          swift_unknownObjectRelease();
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_25;
          }

          *(v2 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
          v14 = (v2[6] + 16 * v12);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * v12) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_26;
          }

          v2[2] = v17;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }

      sub_22F0D00CC();

LABEL_23:
      sub_22F0D00CC();
      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

double static PeopleAnalytics.logDefaultContact(_:)(char a1)
{
  if (qword_280CBE8A8 != -1)
  {
    swift_once();
  }

  v6 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D2BF0;
  *(inited + 32) = 0xD000000000000012;
  v3 = inited + 32;
  *(inited + 40) = 0x800000022F0DEF00;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = a1 & 1;
  v4 = sub_22F07D320(inited);
  swift_setDeallocating();
  sub_22F003A4C(v3, &qword_27DAA14D0, &qword_22F0D8880);
  sub_22F08FCF8(&v6, v4);

  return result;
}

People::AnalyticsType_optional __swiftcall AnalyticsType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F0D18BC();

  v5 = 18;
  if (v3 < 0x12)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AnalyticsType.rawValue.getter()
{
  result = 0x65722E612E746F6ELL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000021;
      break;
    case 2:
    case 0xE:
      result = 0xD00000000000002ALL;
      break;
    case 3:
    case 6:
      result = 0xD00000000000001FLL;
      break;
    case 4:
    case 7:
      result = 0xD000000000000027;
      break;
    case 5:
      result = 0xD000000000000025;
      break;
    case 8:
      result = 0xD00000000000002BLL;
      break;
    case 9:
    case 0xA:
      result = 0xD000000000000019;
      break;
    case 0xB:
      result = 0xD00000000000001DLL;
      break;
    case 0xC:
      result = 0xD00000000000001CLL;
      break;
    case 0xD:
      result = 0xD000000000000021;
      break;
    case 0xF:
      result = 0xD000000000000024;
      break;
    case 0x10:
      result = 0xD000000000000021;
      break;
    case 0x11:
      result = 0xD000000000000034;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22F08EFEC()
{
  v0 = AnalyticsType.rawValue.getter();
  v2 = v1;
  if (v0 == AnalyticsType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_22F0D188C();
  }

  return v5 & 1;
}

uint64_t sub_22F08F088()
{
  sub_22F0D199C();
  AnalyticsType.rawValue.getter();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

double sub_22F08F0F0(uint64_t a1)
{
  AnalyticsType.rawValue.getter();
  sub_22F0D0D5C();

  return result;
}

uint64_t sub_22F08F154(uint64_t a1)
{
  sub_22F0D199C();
  AnalyticsType.rawValue.getter();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

unint64_t sub_22F08F1C4@<X0>(unint64_t *a1@<X8>)
{
  result = AnalyticsType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_22F08F1EC(uint64_t a1, void *a2)
{
  if (!a1)
  {
    sub_22F0CFF1C();
    return a2;
  }

  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  v9 = 0;
  if (!v7)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v9;
LABEL_15:
    v15 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    sub_22EFFFB40(*(a1 + 56) + 40 * v16, v36);
    *&v37 = v19;
    *(&v37 + 1) = v18;
    sub_22EFE6B9C(v36, &v38);
    sub_22F0CFF1C();
    v14 = v12;
LABEL_16:
    v41 = v37;
    v42[0] = v38;
    v42[1] = v39;
    v43 = v40;
    v20 = *(&v37 + 1);
    if (!*(&v37 + 1))
    {
      sub_22F0D00CC();
      return a2;
    }

    v21 = v41;
    sub_22EFE6B9C(v42, &v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v36[0] = a2;
    v23 = sub_22EFFDA80(v21, v20);
    v25 = a2[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      break;
    }

    v29 = v24;
    if (a2[3] >= v28)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_22;
      }

      v34 = v23;
      sub_22F05F98C();
      v23 = v34;
      if ((v29 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_6:
      v10 = v23;

      a2 = *&v36[0];
      v11 = (*(*&v36[0] + 56) + 40 * v10);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      sub_22EFE6B9C(&v37, v11);
      v9 = v14;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_22F079828(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_22EFFDA80(v21, v20);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_35;
      }

LABEL_22:
      if (v29)
      {
        goto LABEL_6;
      }

LABEL_23:
      a2 = *&v36[0];
      *(*&v36[0] + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v31 = (a2[6] + 16 * v23);
      *v31 = v21;
      v31[1] = v20;
      sub_22EFE6B9C(&v37, a2[7] + 40 * v23);
      v32 = a2[2];
      v27 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v27)
      {
        goto LABEL_34;
      }

      a2[2] = v33;
      v9 = v14;
      if (!v7)
      {
LABEL_8:
        if (v8 <= v9 + 1)
        {
          v13 = v9 + 1;
        }

        else
        {
          v13 = v8;
        }

        v14 = v13 - 1;
        while (1)
        {
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v12 >= v8)
          {
            v7 = 0;
            v40 = 0;
            v38 = 0u;
            v39 = 0u;
            v37 = 0u;
            goto LABEL_16;
          }

          v7 = *(v4 + 8 * v12);
          ++v9;
          if (v7)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_22F0D191C();
  __break(1u);
  return result;
}

uint64_t sub_22F08F4B4()
{
  v1 = v0;
  v2 = sub_22F0D05BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F0D05AC();
  sub_22F0D04CC();
  v7 = v6;
  result = (*(v3 + 8))(v5, v2);
  *(v1 + 32) = v7;
  *(v1 + 40) = 0;
  return result;
}

void sub_22F08F590()
{
  v1 = sub_22F0D05BC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + 56) == 1 && (*(v0 + 40) & 1) == 0)
  {
    v6 = *(v0 + 32);
    v7 = v3;
    sub_22F0D05AC();
    sub_22F0D04CC();
    v9 = v8;
    (*(v2 + 8))(v5, v7);
    v10 = v9 - v6;
    *(v0 + 48) = v10;
    *(v0 + 56) = 0;
    if (qword_280CBE8A8 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22F0D2BF0;
    *(inited + 32) = 0x5464657370616C65;
    v12 = inited + 32;
    v13 = MEMORY[0x277D839F8];
    *(inited + 40) = 0xEB00000000656D69;
    *(inited + 72) = v13;
    *(inited + 80) = &protocol witness table for Double;
    *(inited + 48) = v10;
    v14 = sub_22F07D320(inited);
    swift_setDeallocating();
    sub_22F003A4C(v12, &qword_27DAA14D0, &qword_22F0D8880);
    v15 = sub_22F0CFF1C();
    v16 = sub_22F08F1EC(v15, v14);

    sub_22F08FCF8(&v18, v16);
  }
}

void sub_22F08F7A8(uint64_t a1)
{
  v2 = sub_22F0D05BC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 56) == 1 && (*(a1 + 40) & 1) == 0)
  {
    v7 = *(a1 + 32);
    v8 = v4;
    sub_22F0D05AC();
    sub_22F0D04CC();
    v10 = v9;
    (*(v3 + 8))(v6, v8);
    v11 = v10 - v7;
    *(a1 + 48) = v11;
    *(a1 + 56) = 0;
    if (qword_280CBE8A8 != -1)
    {
      swift_once();
    }

    v19 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22F0D2BF0;
    *(inited + 32) = 0x5464657370616C65;
    v13 = inited + 32;
    v14 = MEMORY[0x277D839F8];
    *(inited + 40) = 0xEB00000000656D69;
    *(inited + 72) = v14;
    *(inited + 80) = &protocol witness table for Double;
    *(inited + 48) = v11;
    v15 = sub_22F07D320(inited);
    swift_setDeallocating();
    sub_22F003A4C(v13, &qword_27DAA14D0, &qword_22F0D8880);
    v16 = sub_22F0CFF1C();
    v17 = sub_22F08F1EC(v16, v15);

    sub_22F08FCF8(&v19, v17);
  }
}

uint64_t PeopleAnalytics.StopWatch.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22F08FA2C()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_22F0D0AFC();
  type metadata accessor for RuntimeEnvironment();
  swift_initStackObject();
  v3 = RuntimeEnvironment.init(environment:)(v2);
  type metadata accessor for PeopleAnalytics();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  swift_beginAccess();
  v5 = *(v3 + 16);
  result = sub_22F0D00CC();
  if ((v5 & 1) == 0)
  {
    *(v4 + 16) = sub_22F08FB40;
    *(v4 + 24) = 0;
    result = sub_22F094D60(0, 0);
  }

  qword_280CBE8B0 = v4;
  return result;
}

uint64_t sub_22F08FB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_22F0D0C7C();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_22F08FC00;
  v10[3] = &block_descriptor_9;
  v7 = _Block_copy(v10);
  sub_22F0CFFAC();
  v8 = AnalyticsSendEventLazy();

  _Block_release(v7);
  sub_22F0D00CC();
  return v8;
}

id sub_22F08FC00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_22F0CFFAC();
  v3 = v1(v2);
  sub_22F0D00CC();
  if (v3)
  {
    sub_22F01B924(0, &qword_280CBDC38, 0x277D82BB8);
    v4 = sub_22F0D0AEC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t static PeopleAnalytics.shared.getter()
{
  if (qword_280CBE8A8 != -1)
  {
    swift_once();
  }

  return sub_22F0CFFAC();
}

void sub_22F08FCF8(uint64_t a1, uint64_t a2)
{
  sub_22F08E71C(a2);
  if (v3)
  {
    v4 = *(v2 + 16);
    if (v4)
    {
      v5 = *(v2 + 24);
      v6 = v3;
      v7 = AnalyticsType.rawValue.getter();
      v9 = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = v6;
      sub_22F0CFFAC();
      v4(v7, v9, sub_22F0952FC, v10);
      sub_22F094D60(v4, v5);

      sub_22F0D00CC();
    }

    else
    {
    }
  }

  else
  {
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v11 = sub_22F0D0A1C();
    __swift_project_value_buffer(v11, qword_280CBEC40);
    sub_22F0CFF1C();
    oslog = sub_22F0D09FC();
    v12 = sub_22F0D123C();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_22F00A560(0xD000000000000012, 0x800000022F0DF4C0, &v19);
      *(v13 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1EE0, &unk_22F0D9E60);
      v15 = sub_22F0D0B0C();
      v17 = sub_22F00A560(v15, v16, &v19);

      *(v13 + 14) = v17;
      _os_log_impl(&dword_22EFE1000, oslog, v12, "%s, failed to cast payload %s as? [String: NSObject]", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v14, -1, -1);
      MEMORY[0x2318FE8B0](v13, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t PeopleAnalytics.WidgetLocation.rawValue.getter()
{
  if (*v0)
  {
    return 0x657263536B636F6CLL;
  }

  else
  {
    return 0x65726353656D6F68;
  }
}

uint64_t sub_22F08FFF0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x657263536B636F6CLL;
  }

  else
  {
    v2 = 0x65726353656D6F68;
  }

  if (*a2)
  {
    v3 = 0x657263536B636F6CLL;
  }

  else
  {
    v3 = 0x65726353656D6F68;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_22F0D188C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_22F090084()
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

double sub_22F090104(uint64_t a1)
{
  sub_22F0D0D5C();

  return result;
}

uint64_t sub_22F090168(uint64_t a1)
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

void sub_22F0901F0(uint64_t *a1@<X8>)
{
  v2 = 0x65726353656D6F68;
  if (*v1)
  {
    v2 = 0x657263536B636F6CLL;
  }

  *a1 = v2;
  a1[1] = 0xEA00000000006E65;
}

uint64_t sub_22F09022C(char a1, uint64_t a2, unsigned __int8 *a3)
{
  v55 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D2BF0;
  *(inited + 32) = 0xD000000000000016;
  v6 = inited + 32;
  v7 = MEMORY[0x277D839B0];
  *(inited + 40) = 0x800000022F0DF3D0;
  *(inited + 72) = v7;
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = a1;
  v8 = sub_22F07D320(inited);
  swift_setDeallocating();
  sub_22F003A4C(v6, &qword_27DAA14D0, &qword_22F0D8880);
  v9 = *(a2 + 16);
  if (!v9)
  {
    v68 = MEMORY[0x277D837D0];
    v69 = &protocol witness table for String;
    *&v67 = 1701736270;
    *(&v67 + 1) = 0xE400000000000000;
    sub_22EFE6B9C(&v67, v65);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v61 = v8;
    v43 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
    MEMORY[0x28223BE20](v43);
    v45 = &v54[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v46 + 16))(v45);
    sub_22F093660(*v45, v45[1], 0x797469726F697270, 0xE800000000000000, isUniquelyReferenced_nonNull_native, &v61);
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    v8 = v61;
LABEL_16:
    v47 = 0x65726353656D6F68;
    if (v55)
    {
      v47 = 0x657263536B636F6CLL;
    }

    v68 = MEMORY[0x277D837D0];
    v69 = &protocol witness table for String;
    *&v67 = v47;
    *(&v67 + 1) = 0xEA00000000006E65;
    sub_22EFE6B9C(&v67, v65);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    *&v61 = v8;
    v49 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
    MEMORY[0x28223BE20](v49);
    v51 = &v54[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v52 + 16))(v51);
    sub_22F093660(*v51, v51[1], 1684957547, 0xE400000000000000, v48, &v61);
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    LOBYTE(v67) = 1;
    sub_22F08FCF8(&v67, v61);
    return sub_22F0D00CC();
  }

  v57 = -v9;
  v10 = (a2 + 40);
  v11 = 1;
  while (1)
  {
    v14 = *(v10 - 1);
    v13 = *v10;
    *&v67 = 0x797469726F697270;
    *(&v67 + 1) = 0xE800000000000000;
    v65[0] = v11;
    sub_22F0CFF1C();
    v15 = sub_22F0D183C();
    MEMORY[0x2318FD2C0](v15);

    v16 = v67;
    v68 = MEMORY[0x277D837D0];
    v69 = &protocol witness table for String;
    *&v67 = v14;
    *(&v67 + 1) = v13;
    sub_22EFE6B9C(&v67, v65);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v8;
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
    MEMORY[0x28223BE20](v18);
    v20 = &v54[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v21 + 16))(v20);
    v22 = *v20;
    v23 = v20[1];
    v62 = MEMORY[0x277D837D0];
    v63 = &protocol witness table for String;
    *&v61 = v22;
    *(&v61 + 1) = v23;
    v24 = sub_22EFFDA80(v16, *(&v16 + 1));
    v26 = v8[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      break;
    }

    v30 = v25;
    if (v8[3] < v29)
    {
      sub_22F079828(v29, v17);
      v24 = sub_22EFFDA80(v16, *(&v16 + 1));
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_21;
      }

LABEL_10:
      v8 = v64;
      if (v30)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (v17)
    {
      goto LABEL_10;
    }

    v41 = v24;
    sub_22F05F98C();
    v24 = v41;
    v8 = v64;
    if (v30)
    {
LABEL_3:
      v12 = (v8[7] + 40 * v24);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      sub_22EFE6B9C(&v61, v12);

      goto LABEL_4;
    }

LABEL_11:
    v56 = v54;
    v32 = v24;
    v33 = __swift_mutable_project_boxed_opaque_existential_1(&v61, v62);
    MEMORY[0x28223BE20](v33);
    v35 = &v54[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v36 + 16))(v35);
    v37 = *v35;
    v38 = v35[1];
    v59 = MEMORY[0x277D837D0];
    v60 = &protocol witness table for String;
    *&v58 = v37;
    *(&v58 + 1) = v38;
    v8[(v32 >> 6) + 8] |= 1 << v32;
    *(v8[6] + 16 * v32) = v16;
    sub_22EFE6B9C(&v58, v8[7] + 40 * v32);
    v39 = v8[2];
    v28 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v28)
    {
      goto LABEL_20;
    }

    v8[2] = v40;
    __swift_destroy_boxed_opaque_existential_1Tm(&v61);
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    ++v11;
    v10 += 2;
    if (v57 + v11 == 1)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22F0D191C();
  __break(1u);
  return result;
}

double sub_22F0908F0(unsigned __int8 *a1)
{
  v1 = *a1;
  v8 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D2BF0;
  *(inited + 32) = 0x6E6F69746361;
  v3 = inited + 32;
  *(inited + 40) = 0xE600000000000000;
  if (v1 <= 1)
  {
    v4 = 0xE90000000000006CLL;
    v5 = 0x6C61436563696F76;
    if (v1)
    {
      v5 = 0x6C61436F65646976;
    }
  }

  else if (v1 == 2)
  {
    v4 = 0xE700000000000000;
    v5 = 0x6567617373656DLL;
  }

  else if (v1 == 3)
  {
    v4 = 0xE400000000000000;
    v5 = 1818845549;
  }

  else
  {
    v4 = 0xE800000000000000;
    v5 = 0x6E6F697461636F6CLL;
  }

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 48) = v5;
  *(inited + 56) = v4;
  v6 = sub_22F07D320(inited);
  swift_setDeallocating();
  sub_22F003A4C(v3, &qword_27DAA14D0, &qword_22F0D8880);
  sub_22F08FCF8(&v8, v6);

  return result;
}

double static PeopleAnalytics.eventReceived(foundContacts:statusType:)(char a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (qword_280CBE8A8 != -1)
  {
    swift_once();
  }

  v4 = 0xEA00000000006574;
  v12 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6E6F69746361;
  *(inited + 16) = xmmword_22F0D5A80;
  v6 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xE600000000000000;
  strcpy((inited + 48), "eventReceived");
  *(inited + 62) = -4864;
  v7 = MEMORY[0x277D839B0];
  strcpy((inited + 88), "contactsFound");
  *(inited + 102) = -4864;
  *(inited + 128) = v7;
  *(inited + 136) = &protocol witness table for Bool;
  *(inited + 104) = a1 & 1;
  v8 = MEMORY[0x277D83B88];
  *(inited + 144) = 0x756F43746E657665;
  *(inited + 152) = 0xEA0000000000746ELL;
  *(inited + 184) = v8;
  *(inited + 192) = &protocol witness table for Int;
  *(inited + 160) = 1;
  *(inited + 200) = 1701869940;
  *(inited + 208) = 0xE400000000000000;
  if (v3 > 4)
  {
    if (v3 <= 6)
    {
      if (v3 == 5)
      {
        v9 = 0x617453646C696863;
      }

      else
      {
        v4 = 0xED00006567617373;
        v9 = 0x654D646165726E75;
      }
    }

    else if (v3 == 7)
    {
      v9 = 0x7373654D64616572;
      v4 = 0xEB00000000656761;
    }

    else if (v3 == 8)
    {
      v4 = 0xEA00000000006C6CLL;
      v9 = 0x614364657373696DLL;
    }

    else
    {
      v4 = 0xE800000000000000;
      v9 = 0x7261646E656C6163;
    }
  }

  else if (v3 <= 1)
  {
    if (v3)
    {
      v4 = 0xEB00000000657461;
      v9 = 0x74536E6F69746F6DLL;
    }

    else
    {
      v4 = 0xEF7974696C696261;
      v9 = 0x6C69617641646E64;
    }
  }

  else if (v3 == 2)
  {
    v4 = 0xE800000000000000;
    v9 = 0x6E6F697461636F6CLL;
  }

  else if (v3 == 3)
  {
    v4 = 0xEF74736575716552;
    v9 = 0x7975426F546B7361;
  }

  else
  {
    v4 = 0x800000022F0DC350;
    v9 = 0xD000000000000011;
  }

  *(inited + 240) = v6;
  *(inited + 248) = &protocol witness table for String;
  *(inited + 216) = v9;
  *(inited + 224) = v4;
  v10 = sub_22F07D320(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
  swift_arrayDestroy();
  sub_22F08FCF8(&v12, v10);

  return result;
}

double static PeopleAnalytics.eventsCollected(statusType:eventCount:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_280CBE8A8 != -1)
  {
    swift_once();
  }

  v4 = 0xEA00000000006574;
  v10 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D5A80;
  *(inited + 32) = 0x6E6F69746361;
  v6 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 0x6F4373746E657665;
  *(inited + 56) = 0xEF64657463656C6CLL;
  strcpy((inited + 88), "contactsFound");
  *(inited + 102) = -4864;
  *(inited + 128) = MEMORY[0x277D839B0];
  *(inited + 136) = &protocol witness table for Bool;
  *(inited + 104) = 1;
  *(inited + 144) = 0x756F43746E657665;
  *(inited + 152) = 0xEA0000000000746ELL;
  *(inited + 184) = MEMORY[0x277D83B88];
  *(inited + 192) = &protocol witness table for Int;
  *(inited + 160) = a2;
  *(inited + 200) = 1701869940;
  *(inited + 208) = 0xE400000000000000;
  if (v3 > 4)
  {
    if (v3 <= 6)
    {
      if (v3 == 5)
      {
        v7 = 0x617453646C696863;
      }

      else
      {
        v4 = 0xED00006567617373;
        v7 = 0x654D646165726E75;
      }
    }

    else if (v3 == 7)
    {
      v7 = 0x7373654D64616572;
      v4 = 0xEB00000000656761;
    }

    else if (v3 == 8)
    {
      v4 = 0xEA00000000006C6CLL;
      v7 = 0x614364657373696DLL;
    }

    else
    {
      v4 = 0xE800000000000000;
      v7 = 0x7261646E656C6163;
    }
  }

  else if (v3 <= 1)
  {
    if (v3)
    {
      v4 = 0xEB00000000657461;
      v7 = 0x74536E6F69746F6DLL;
    }

    else
    {
      v4 = 0xEF7974696C696261;
      v7 = 0x6C69617641646E64;
    }
  }

  else if (v3 == 2)
  {
    v4 = 0xE800000000000000;
    v7 = 0x6E6F697461636F6CLL;
  }

  else if (v3 == 3)
  {
    v4 = 0xEF74736575716552;
    v7 = 0x7975426F546B7361;
  }

  else
  {
    v4 = 0x800000022F0DC350;
    v7 = 0xD000000000000011;
  }

  *(inited + 240) = v6;
  *(inited + 248) = &protocol witness table for String;
  *(inited + 216) = v7;
  *(inited + 224) = v4;
  v8 = sub_22F07D320(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
  swift_arrayDestroy();
  sub_22F08FCF8(&v10, v8);

  return result;
}

double static PeopleAnalytics.logTimelineEntries(_:entries:contacts:widgetSize:)(_BYTE *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v6 = *a4;
  if (*a1)
  {
    v7 = 0x656C7069746C756DLL;
  }

  else
  {
    v7 = 0x656C676E6973;
  }

  if (*a1)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (*a1)
  {
    v9 = sub_22F0D188C();

    if ((v9 & 1) == 0 || a3 == 1)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (a3 == 1)
    {
      goto LABEL_17;
    }
  }

  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v10 = sub_22F0D0A1C();
  __swift_project_value_buffer(v10, qword_280CBEC40);
  v11 = sub_22F0D09FC();
  v12 = sub_22F0D123C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = a3;
    _os_log_impl(&dword_22EFE1000, v11, v12, "Forced contacts count to 1 from %ld!", v13, 0xCu);
    MEMORY[0x2318FE8B0](v13, -1, -1);
  }

  a3 = 1;
LABEL_17:
  if (qword_280CBE8A8 != -1)
  {
    swift_once();
  }

  v21 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D5A80;
  *(inited + 32) = 0x73656972746E65;
  v15 = MEMORY[0x277D83B88];
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 80) = &protocol witness table for Int;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = a2;
  *(inited + 88) = 0x73746361746E6F63;
  *(inited + 96) = 0xE800000000000000;
  *(inited + 128) = v15;
  *(inited + 136) = &protocol witness table for Int;
  *(inited + 104) = a3;
  *(inited + 144) = 1701869940;
  *(inited + 152) = 0xE400000000000000;
  v16 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = &protocol witness table for String;
  *(inited + 160) = v7;
  *(inited + 168) = v8;
  *(inited + 200) = 1702521203;
  *(inited + 208) = 0xE400000000000000;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v17 = 0xEB00000000656772;
      v18 = 0x614C6D6574737973;
    }

    else
    {
      v17 = 0x800000022F0DCAC0;
      v18 = 0xD000000000000010;
    }
  }

  else if (v6)
  {
    v17 = 0xEC0000006D756964;
    v18 = 0x654D6D6574737973;
  }

  else
  {
    v17 = 0xEB000000006C6C61;
    v18 = 0x6D536D6574737973;
  }

  *(inited + 240) = v16;
  *(inited + 248) = &protocol witness table for String;
  *(inited + 216) = v18;
  *(inited + 224) = v17;
  v19 = sub_22F07D320(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
  swift_arrayDestroy();
  sub_22F08FCF8(&v21, v19);

  return result;
}

uint64_t PeopleAnalytics.WidgetType.description.getter()
{
  if (*v0)
  {
    return 0x656C7069746C756DLL;
  }

  else
  {
    return 0x656C676E6973;
  }
}

unint64_t PeopleAnalytics.WidgetSize.description.getter()
{
  v1 = 0x6D536D6574737973;
  v2 = 0x614C6D6574737973;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x654D6D6574737973;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

double static PeopleAnalytics.logTimelineStatus(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E88, &unk_22F0D5050);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19[-1] - v3;
  if (qword_280CBE8A8 != -1)
  {
    swift_once();
  }

  v20 = 12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D2BF0;
  *(inited + 32) = 0x614E737574617473;
  *(inited + 40) = 0xEA0000000000656DLL;
  sub_22EFFFB40(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA06E0, &qword_22F0D2C10);
  v6 = type metadata accessor for MotionPersonStatus(0);
  v7 = swift_dynamicCast();
  v8 = *(*(v6 - 8) + 56);
  if (v7)
  {
    v8(v4, 0, 1, v6);
    v9 = v4[*(v6 + 20)];
    sub_22F094984(v4);
    v10 = *&aRunning_1[8 * v9];
    v11 = qword_22F0D9EB8[v9];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = &protocol witness table for String;
    *(inited + 48) = v10;
    *(inited + 56) = v11;
  }

  else
  {
    v8(v4, 1, 1, v6);
    sub_22F003A4C(v4, &qword_27DAA0E88, &unk_22F0D5050);
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = &protocol witness table for String;
    v12 = a1[3];
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v12);
    (*(v13 + 40))(v19, v12, v13);
    if (LOBYTE(v19[0]) > 4u)
    {
      if (LOBYTE(v19[0]) <= 6u)
      {
        if (LOBYTE(v19[0]) == 5)
        {
          v14 = 0xEA00000000006574;
          v15 = 0x617453646C696863;
        }

        else
        {
          v14 = 0xED00006567617373;
          v15 = 0x654D646165726E75;
        }
      }

      else if (LOBYTE(v19[0]) == 7)
      {
        v15 = 0x7373654D64616572;
        v14 = 0xEB00000000656761;
      }

      else if (LOBYTE(v19[0]) == 8)
      {
        v14 = 0xEA00000000006C6CLL;
        v15 = 0x614364657373696DLL;
      }

      else
      {
        v14 = 0xE800000000000000;
        v15 = 0x7261646E656C6163;
      }
    }

    else if (LOBYTE(v19[0]) <= 1u)
    {
      if (LOBYTE(v19[0]))
      {
        v14 = 0xEB00000000657461;
        v15 = 0x74536E6F69746F6DLL;
      }

      else
      {
        v14 = 0xEF7974696C696261;
        v15 = 0x6C69617641646E64;
      }
    }

    else if (LOBYTE(v19[0]) == 2)
    {
      v14 = 0xE800000000000000;
      v15 = 0x6E6F697461636F6CLL;
    }

    else if (LOBYTE(v19[0]) == 3)
    {
      v14 = 0xEF74736575716552;
      v15 = 0x7975426F546B7361;
    }

    else
    {
      v14 = 0x800000022F0DC350;
      v15 = 0xD000000000000011;
    }

    *(inited + 48) = v15;
    *(inited + 56) = v14;
  }

  v16 = sub_22F07D320(inited);
  swift_setDeallocating();
  sub_22F003A4C(inited + 32, &qword_27DAA14D0, &qword_22F0D8880);
  sub_22F08FCF8(&v20, v16);

  return result;
}

double static PeopleAnalytics.logContactWidgetUIRenderType(_:_:)(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_280CBE8A8 != -1)
  {
    swift_once();
  }

  v9 = 17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D6710;
  *(inited + 32) = 0x7265566E776F6873;
  *(inited + 40) = 0xEF796C6C61636974;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = a1 & 1;
  *(inited + 88) = 0xD000000000000015;
  *(inited + 96) = 0x800000022F0DF3F0;
  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = &protocol witness table for String;
  *(inited + 104) = a2;
  *(inited + 112) = a3;
  sub_22F0CFF1C();
  v7 = sub_22F07D320(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
  swift_arrayDestroy();
  sub_22F08FCF8(&v9, v7);

  return result;
}

uint64_t PeopleAnalytics.MessageRequestBubbleSource.rawValue.getter()
{
  if (*v0)
  {
    return 21587;
  }

  else
  {
    return 4346945;
  }
}

uint64_t sub_22F091AC0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 21587;
  }

  else
  {
    v3 = 4346945;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (*a2)
  {
    v5 = 21587;
  }

  else
  {
    v5 = 4346945;
  }

  if (*a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22F0D188C();
  }

  return v8 & 1;
}

uint64_t sub_22F091B54()
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

double sub_22F091BC4(uint64_t a1)
{
  sub_22F0D0D5C();

  return result;
}

uint64_t sub_22F091C20(uint64_t a1)
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

void sub_22F091C98(uint64_t *a1@<X8>)
{
  v2 = 4346945;
  if (*v1)
  {
    v2 = 21587;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

double sub_22F091CC4(unsigned __int8 *a1, char a2, char a3)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6577656976657270;
  *(inited + 16) = xmmword_22F0D97C0;
  v7 = MEMORY[0x277D839B0];
  *(inited + 40) = 0xE900000000000064;
  *(inited + 72) = v7;
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = a2;
  *(inited + 88) = 0x697463416B6F6F74;
  *(inited + 96) = 0xEA00000000006E6FLL;
  *(inited + 128) = v7;
  *(inited + 136) = &protocol witness table for Bool;
  *(inited + 104) = a3;
  *(inited + 144) = 0x656372756F73;
  *(inited + 152) = 0xE600000000000000;
  v8 = 4346945;
  if (v5)
  {
    v8 = 21587;
  }

  v9 = 0xE300000000000000;
  if (v5)
  {
    v9 = 0xE200000000000000;
  }

  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = &protocol witness table for String;
  *(inited + 160) = v8;
  *(inited + 168) = v9;
  v10 = sub_22F07D320(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
  swift_arrayDestroy();
  v12 = 16;
  sub_22F08FCF8(&v12, v10);

  return result;
}

People::PeopleAnalytics::IMessageSendRuleResult_optional __swiftcall PeopleAnalytics.IMessageSendRuleResult.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F0D174C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PeopleAnalytics.IMessageSendRuleResult.rawValue.getter()
{
  v1 = *v0;
  v2 = 1684956531;
  v3 = 0xD00000000000001CLL;
  v4 = 0x7041646E65536F6ELL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22F091F40()
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

double sub_22F092034(uint64_t a1)
{
  sub_22F0D0D5C();

  return result;
}

uint64_t sub_22F092114(uint64_t a1)
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

void sub_22F092210(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1684956531;
  v5 = 0x800000022F0DCA00;
  v6 = 0xD00000000000001CLL;
  v7 = 0xEF737265766F7270;
  v8 = 0x7041646E65536F6ELL;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x800000022F0DCA30;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000017;
    v3 = 0x800000022F0DC9E0;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

double sub_22F0922D0(unsigned __int8 *a1, char a2, char a3)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D6710;
  *(inited + 32) = 0x746E65696C63;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = a2;
  *(inited + 88) = 0x746E657665;
  *(inited + 96) = 0xE500000000000000;
  if (v5 <= 1)
  {
    v7 = 0xE400000000000000;
    v8 = 1684956531;
    if (v5)
    {
      v8 = 0xD000000000000017;
      v7 = 0x800000022F0DC9E0;
    }
  }

  else if (v5 == 2)
  {
    v7 = 0x800000022F0DCA00;
    v8 = 0xD00000000000001CLL;
  }

  else if (v5 == 3)
  {
    v7 = 0xEF737265766F7270;
    v8 = 0x7041646E65536F6ELL;
  }

  else
  {
    v8 = 0xD000000000000010;
    v7 = 0x800000022F0DCA30;
  }

  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = &protocol witness table for String;
  *(inited + 104) = v8;
  *(inited + 112) = v7;
  v9 = sub_22F07D320(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
  swift_arrayDestroy();
  v11 = a3;
  sub_22F08FCF8(&v11, v9);

  return result;
}

double sub_22F092494(uint64_t a1, uint64_t a2)
{
  v7 = 13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D2BF0;
  *(inited + 32) = 0x6C436E6F69746361;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xEB00000000737361;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_22F0CFF1C();
  v5 = sub_22F07D320(inited);
  swift_setDeallocating();
  sub_22F003A4C(inited + 32, &qword_27DAA14D0, &qword_22F0D8880);
  sub_22F08FCF8(&v7, v5);

  return result;
}

uint64_t static PeopleAnalytics.stopWatch(_:startNow:)(_BYTE *a1, char a2)
{
  v4 = sub_22F0D05BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  type metadata accessor for PeopleAnalytics.StopWatch();
  result = swift_allocObject();
  *(result + 40) = 1;
  *(result + 48) = 0;
  *(result + 56) = 1;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  if (a2)
  {
    v9 = result;
    sub_22F0D05AC();
    sub_22F0D04CC();
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    result = v9;
    *(v9 + 32) = v11;
    *(v9 + 40) = 0;
  }

  return result;
}

uint64_t static PeopleAnalytics.stopwatchBlock(_:extra:block:)(char *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = sub_22F0D05BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  type metadata accessor for PeopleAnalytics.StopWatch();
  v11 = swift_allocObject();
  *(v11 + 40) = 1;
  *(v11 + 48) = 0;
  *(v11 + 56) = 1;
  *(v11 + 16) = v10;
  *(v11 + 24) = a2;
  *(v11 + 32) = 0;
  sub_22F0CFF1C();
  sub_22F0CFFAC();
  sub_22F0D05AC();
  sub_22F0D04CC();
  v13 = v12;
  v14 = (*(v7 + 8))(v9, v6);
  *(v11 + 32) = v13;
  *(v11 + 40) = 0;
  a3(v14);
  sub_22F08F7A8(v11);
  sub_22F0D00CC();
  return v11;
}

People::PeopleAnalytics::LookupAction_optional __swiftcall PeopleAnalytics.LookupAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F0D174C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PeopleAnalytics.LookupAction.rawValue.getter()
{
  v1 = 0x6120796C696D6166;
  v2 = 0x6D20796C696D6166;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x746361746E6F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22F092924()
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

double sub_22F0929FC(uint64_t a1)
{
  sub_22F0D0D5C();

  return result;
}

uint64_t sub_22F092AC0(uint64_t a1)
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

void sub_22F092BA0(unint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006C6CLL;
  v3 = 0x6120796C696D6166;
  v4 = 0xED00007265626D65;
  v5 = 0x6D20796C696D6166;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000022F0DCA70;
  }

  if (*v1)
  {
    v3 = 0x746361746E6F63;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_22F092C40(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656C7069746C756DLL;
  }

  else
  {
    v3 = 0x656C676E6973;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x656C7069746C756DLL;
  }

  else
  {
    v5 = 0x656C676E6973;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22F0D188C();
  }

  return v8 & 1;
}

uint64_t sub_22F092CE4()
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

double sub_22F092D64(uint64_t a1)
{
  sub_22F0D0D5C();

  return result;
}

uint64_t sub_22F092DD0(uint64_t a1)
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

void sub_22F092E58(uint64_t *a1@<X8>)
{
  v2 = 0x656C676E6973;
  if (*v1)
  {
    v2 = 0x656C7069746C756DLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

People::PeopleAnalytics::WidgetSize_optional __swiftcall PeopleAnalytics.WidgetSize.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F0D174C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22F092EFC()
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

double sub_22F092FDC(uint64_t a1)
{
  sub_22F0D0D5C();

  return result;
}

uint64_t sub_22F0930A8(uint64_t a1)
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

void sub_22F093190(unint64_t *a1@<X8>)
{
  v2 = 0xEB000000006C6C61;
  v3 = 0x6D536D6574737973;
  v4 = 0xEB00000000656772;
  v5 = 0x614C6D6574737973;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000022F0DCAC0;
  }

  if (*v1)
  {
    v3 = 0x654D6D6574737973;
    v2 = 0xEC0000006D756964;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_22F093240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = sub_22F0D05BC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 32) = a3;
  v15 = MEMORY[0x277D837D0];
  *(inited + 16) = xmmword_22F0D2BF0;
  *(inited + 72) = v15;
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = a4;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_22F0CFF1C();
  v16 = sub_22F07D320(inited);
  swift_setDeallocating();
  sub_22F003A4C(inited + 32, &qword_27DAA14D0, &qword_22F0D8880);
  type metadata accessor for PeopleAnalytics.StopWatch();
  v17 = swift_allocObject();
  *(v17 + 40) = 1;
  *(v17 + 48) = 0;
  *(v17 + 56) = 1;
  *(v17 + 16) = a5;
  *(v17 + 24) = v16;
  *(v17 + 32) = 0;
  sub_22F0D05AC();
  sub_22F0D04CC();
  v19 = v18;
  (*(v11 + 8))(v13, v10);
  *(v17 + 32) = v19;
  *(v17 + 40) = 0;
  return v17;
}

uint64_t static PeopleAnalytics.trackAction(_:extensionBundleID:isNotification:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v5 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1E98, &qword_22F0D97D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D97C0;
  *(inited + 32) = 0x4449656C646E7562;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_22F0D0C7C();
  *(inited + 56) = 0x6E6F69746361;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = sub_22F0D0C7C();
  strcpy((inited + 80), "isNotification");
  *(inited + 95) = -18;
  sub_22F01B924(0, &qword_27DAA1850, 0x277CCABB0);
  *(inited + 96) = sub_22F0D12DC();
  sub_22F07DD80(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1EA0, &qword_22F0D97D8);
  swift_arrayDestroy();
  v8 = sub_22F0D0C7C();
  sub_22F01B924(0, &qword_280CBDC38, 0x277D82BB8);
  v9 = sub_22F0D0AEC();

  AnalyticsSendEvent();

  return 1;
}

uint64_t PeopleAnalytics.__deallocating_deinit()
{
  sub_22F094D60(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_22F093660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = MEMORY[0x277D837D0];
  v30 = MEMORY[0x277D837D0];
  v31 = &protocol witness table for String;
  *&v29 = a1;
  *(&v29 + 1) = a2;
  v11 = *a6;
  v13 = sub_22EFFDA80(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      return sub_22EFE6B9C(&v29, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_22F05F98C();
    goto LABEL_7;
  }

  sub_22F079828(v16, a5 & 1);
  v22 = sub_22EFFDA80(a3, a4);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_22F0D191C();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_22F093A44(v13, a3, a4, *v26, v26[1], v19);
  sub_22F0CFF1C();
  return __swift_destroy_boxed_opaque_existential_1Tm(&v29);
}

uint64_t sub_22F093850(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  *&v23 = a1;
  v24 = MEMORY[0x277D83B88];
  v25 = &protocol witness table for Int;
  v9 = *a5;
  v11 = sub_22EFFDA80(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      return sub_22EFE6B9C(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_22F05F98C();
    goto LABEL_7;
  }

  sub_22F079828(v14, a4 & 1);
  v20 = sub_22EFFDA80(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_22F0D191C();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_1(&v23, MEMORY[0x277D83B88]);
  sub_22F0939B4(v11, a2, a3, *v22, v17);
  sub_22F0CFF1C();
  return __swift_destroy_boxed_opaque_existential_1Tm(&v23);
}

uint64_t sub_22F0939B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x277D83B88];
  v13 = &protocol witness table for Int;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22EFE6B9C(&v11, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_22F093A44(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277D837D0];
  v14 = &protocol witness table for String;
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_22EFE6B9C(&v12, a6[7] + 40 * a1);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t _s6People0A9AnalyticsC22collectEventsStopwatchyAC9StopWatchCAA10StatusTypeOFZ_0(unsigned __int8 *a1)
{
  v2 = sub_22F0D05BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D2BF0;
  *(inited + 32) = 0x457463656C6C6F63;
  v8 = inited + 32;
  *(inited + 40) = 0xED000073746E6576;
  if (v6 > 4)
  {
    if (v6 <= 6)
    {
      if (v6 == 5)
      {
        v10 = 0x617453646C696863;
        v9 = 0xEA00000000006574;
      }

      else
      {
        v9 = 0xED00006567617373;
        v10 = 0x654D646165726E75;
      }
    }

    else if (v6 == 7)
    {
      v10 = 0x7373654D64616572;
      v9 = 0xEB00000000656761;
    }

    else if (v6 == 8)
    {
      v9 = 0xEA00000000006C6CLL;
      v10 = 0x614364657373696DLL;
    }

    else
    {
      v9 = 0xE800000000000000;
      v10 = 0x7261646E656C6163;
    }
  }

  else if (v6 <= 1)
  {
    if (v6)
    {
      v9 = 0xEB00000000657461;
      v10 = 0x74536E6F69746F6DLL;
    }

    else
    {
      v9 = 0xEF7974696C696261;
      v10 = 0x6C69617641646E64;
    }
  }

  else if (v6 == 2)
  {
    v9 = 0xE800000000000000;
    v10 = 0x6E6F697461636F6CLL;
  }

  else if (v6 == 3)
  {
    v9 = 0xEF74736575716552;
    v10 = 0x7975426F546B7361;
  }

  else
  {
    v9 = 0x800000022F0DC350;
    v10 = 0xD000000000000011;
  }

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 48) = v10;
  *(inited + 56) = v9;
  v11 = sub_22F07D320(inited);
  swift_setDeallocating();
  sub_22F003A4C(v8, &qword_27DAA14D0, &qword_22F0D8880);
  type metadata accessor for PeopleAnalytics.StopWatch();
  v12 = swift_allocObject();
  *(v12 + 40) = 1;
  *(v12 + 48) = 0;
  *(v12 + 56) = 1;
  *(v12 + 16) = 8;
  *(v12 + 24) = v11;
  *(v12 + 32) = 0;
  sub_22F0D05AC();
  sub_22F0D04CC();
  v14 = v13;
  (*(v3 + 8))(v5, v2);
  *(v12 + 32) = v14;
  *(v12 + 40) = 0;
  return v12;
}

uint64_t _s6People0A9AnalyticsC21familyLookupStopwatchyAC9StopWatchCAC0D6ActionOFZ_0(unsigned __int8 *a1)
{
  v2 = sub_22F0D05BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D2BF0;
  *(inited + 32) = 0x6E6F69746361;
  v8 = inited + 32;
  *(inited + 40) = 0xE600000000000000;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v9 = 0xED00007265626D65;
      v10 = 0x6D20796C696D6166;
    }

    else
    {
      v9 = 0x800000022F0DCA70;
      v10 = 0xD000000000000010;
    }
  }

  else if (v6)
  {
    v9 = 0xE700000000000000;
    v10 = 0x746361746E6F63;
  }

  else
  {
    v9 = 0xEA00000000006C6CLL;
    v10 = 0x6120796C696D6166;
  }

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 48) = v10;
  *(inited + 56) = v9;
  v11 = sub_22F07D320(inited);
  swift_setDeallocating();
  sub_22F003A4C(v8, &qword_27DAA14D0, &qword_22F0D8880);
  type metadata accessor for PeopleAnalytics.StopWatch();
  v12 = swift_allocObject();
  *(v12 + 40) = 1;
  *(v12 + 48) = 0;
  *(v12 + 56) = 1;
  *(v12 + 16) = 11;
  *(v12 + 24) = v11;
  *(v12 + 32) = 0;
  sub_22F0D05AC();
  sub_22F0D04CC();
  v14 = v13;
  (*(v3 + 8))(v5, v2);
  *(v12 + 32) = v14;
  *(v12 + 40) = 0;
  return v12;
}

uint64_t _s6People0A9AnalyticsC17indexingStopwatchyAC9StopWatchCSSFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22F0D05BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D2BF0;
  *(inited + 32) = 0x6449656C646E7562;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_22F0CFF1C();
  v9 = sub_22F07D320(inited);
  swift_setDeallocating();
  sub_22F003A4C(inited + 32, &qword_27DAA14D0, &qword_22F0D8880);
  type metadata accessor for PeopleAnalytics.StopWatch();
  v10 = swift_allocObject();
  *(v10 + 40) = 1;
  *(v10 + 48) = 0;
  *(v10 + 56) = 1;
  *(v10 + 16) = 9;
  *(v10 + 24) = v9;
  *(v10 + 32) = 0;
  sub_22F0D05AC();
  sub_22F0D04CC();
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  *(v10 + 32) = v12;
  *(v10 + 40) = 0;
  return v10;
}

uint64_t _s6People0A9AnalyticsC24statusCoalescerStopwatch_9typeNames12contactCountAC9StopWatchCSS_SaySSGSitFZ_0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v65 = sub_22F0D05BC();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x277D837D0];
  v78 = &protocol witness table for String;
  *&v76 = a1;
  *(&v76 + 1) = a2;
  sub_22EFE6B9C(&v76, v74);
  sub_22F0CFF1C();
  v9 = MEMORY[0x277D84F98];
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  *&v70 = v9;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v74, v75);
  MEMORY[0x28223BE20](v10);
  v12 = (&v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  sub_22F093660(*v12, v12[1], 0x656372756F73, 0xE600000000000000, a1, &v70);
  __swift_destroy_boxed_opaque_existential_1Tm(v74);
  v14 = v70;
  v77 = MEMORY[0x277D83B88];
  v78 = &protocol witness table for Int;
  *&v76 = a4;
  sub_22EFE6B9C(&v76, v74);
  LOBYTE(a4) = swift_isUniquelyReferenced_nonNull_native();
  *&v70 = v14;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v74, v75);
  sub_22F093850(*v15, 0x73746361746E6F63, 0xE800000000000000, a4, &v70);
  __swift_destroy_boxed_opaque_existential_1Tm(v74);
  v16 = v70;
  v17 = a3[2];
  if (!v17)
  {
    v77 = MEMORY[0x277D837D0];
    v78 = &protocol witness table for String;
    *&v76 = 0x6E776F6E6B6E75;
    *(&v76 + 1) = 0xE700000000000000;
    sub_22EFE6B9C(&v76, v74);
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v70 = v16;
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v74, v75);
    MEMORY[0x28223BE20](v21);
    v23 = (&v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23);
    sub_22F093660(*v23, v23[1], 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native, &v70);
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    v16 = v70;
LABEL_6:
    type metadata accessor for PeopleAnalytics.StopWatch();
    v25 = swift_allocObject();
    *(v25 + 40) = 1;
    *(v25 + 48) = 0;
    *(v25 + 56) = 1;
    *(v25 + 16) = 6;
    *(v25 + 24) = v16;
    *(v25 + 32) = 0;
    v26 = v63;
    sub_22F0D05AC();
    sub_22F0D04CC();
    v28 = v27;
    (*(v64 + 8))(v26, v65);
    *(v25 + 32) = v28;
    *(v25 + 40) = 0;
    return v25;
  }

  if (v17 == 1)
  {
    v18 = a3[4];
    v19 = a3[5];
    v77 = MEMORY[0x277D837D0];
    v78 = &protocol witness table for String;
    *&v76 = v18;
    *(&v76 + 1) = v19;
    sub_22EFE6B9C(&v76, v74);
    sub_22F0CFF1C();
    goto LABEL_5;
  }

  v66 = -v17;
  v30 = a3 + 5;
  v31 = 1;
  while (1)
  {
    v33 = *(v30 - 1);
    v34 = *v30;
    *&v76 = 1701869940;
    *(&v76 + 1) = 0xE400000000000000;
    v74[0] = v31;
    sub_22F0CFF1C();
    v35 = sub_22F0D183C();
    MEMORY[0x2318FD2C0](v35);

    v36 = v76;
    v37 = MEMORY[0x277D837D0];
    v77 = MEMORY[0x277D837D0];
    v78 = &protocol witness table for String;
    *&v76 = v33;
    *(&v76 + 1) = v34;
    sub_22EFE6B9C(&v76, v74);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v16;
    v39 = __swift_mutable_project_boxed_opaque_existential_1(v74, v75);
    MEMORY[0x28223BE20](v39);
    v41 = (&v63 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v42 + 16))(v41);
    v43 = *v41;
    v44 = v41[1];
    v71 = v37;
    v72 = &protocol witness table for String;
    *&v70 = v43;
    *(&v70 + 1) = v44;
    v45 = sub_22EFFDA80(v36, *(&v36 + 1));
    v47 = v16[2];
    v48 = (v46 & 1) == 0;
    v49 = __OFADD__(v47, v48);
    v50 = v47 + v48;
    if (v49)
    {
      break;
    }

    v51 = v46;
    if (v16[3] < v50)
    {
      sub_22F079828(v50, v38);
      v45 = sub_22EFFDA80(v36, *(&v36 + 1));
      if ((v51 & 1) != (v52 & 1))
      {
        goto LABEL_22;
      }

LABEL_15:
      v16 = v73;
      if (v51)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

    if (v38)
    {
      goto LABEL_15;
    }

    v62 = v45;
    sub_22F05F98C();
    v45 = v62;
    v16 = v73;
    if (v51)
    {
LABEL_8:
      v32 = (v16[7] + 40 * v45);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      sub_22EFE6B9C(&v70, v32);

      goto LABEL_9;
    }

LABEL_16:
    v53 = v45;
    v54 = __swift_mutable_project_boxed_opaque_existential_1(&v70, v71);
    MEMORY[0x28223BE20](v54);
    v56 = (&v63 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v57 + 16))(v56);
    v58 = *v56;
    v59 = v56[1];
    v68 = MEMORY[0x277D837D0];
    v69 = &protocol witness table for String;
    *&v67 = v58;
    *(&v67 + 1) = v59;
    v16[(v53 >> 6) + 8] |= 1 << v53;
    *(v16[6] + 16 * v53) = v36;
    sub_22EFE6B9C(&v67, v16[7] + 40 * v53);
    v60 = v16[2];
    v49 = __OFADD__(v60, 1);
    v61 = v60 + 1;
    if (v49)
    {
      goto LABEL_21;
    }

    v16[2] = v61;
    __swift_destroy_boxed_opaque_existential_1Tm(&v70);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    ++v31;
    v30 += 2;
    if (v66 + v31 == 1)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_22F0D191C();
  __break(1u);
  return result;
}

uint64_t sub_22F094984(uint64_t a1)
{
  v2 = type metadata accessor for MotionPersonStatus(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s6People0A9AnalyticsC25receiveInpuStopwatchBlock_5blockAC9StopWatchCAA10StatusTypeO_yyXEtFZ_0(unsigned __int8 *a1, void (*a2)(uint64_t))
{
  v4 = sub_22F0D05BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D2BF0;
  *(inited + 32) = 0x4965766965636572;
  v10 = inited + 32;
  *(inited + 40) = 0xEC0000007475706ELL;
  if (v8 > 4)
  {
    if (v8 <= 6)
    {
      if (v8 == 5)
      {
        v12 = 0x617453646C696863;
        v11 = 0xEA00000000006574;
      }

      else
      {
        v11 = 0xED00006567617373;
        v12 = 0x654D646165726E75;
      }
    }

    else if (v8 == 7)
    {
      v12 = 0x7373654D64616572;
      v11 = 0xEB00000000656761;
    }

    else if (v8 == 8)
    {
      v11 = 0xEA00000000006C6CLL;
      v12 = 0x614364657373696DLL;
    }

    else
    {
      v11 = 0xE800000000000000;
      v12 = 0x7261646E656C6163;
    }
  }

  else if (v8 <= 1)
  {
    if (v8)
    {
      v11 = 0xEB00000000657461;
      v12 = 0x74536E6F69746F6DLL;
    }

    else
    {
      v11 = 0xEF7974696C696261;
      v12 = 0x6C69617641646E64;
    }
  }

  else if (v8 == 2)
  {
    v11 = 0xE800000000000000;
    v12 = 0x6E6F697461636F6CLL;
  }

  else if (v8 == 3)
  {
    v11 = 0xEF74736575716552;
    v12 = 0x7975426F546B7361;
  }

  else
  {
    v11 = 0x800000022F0DC350;
    v12 = 0xD000000000000011;
  }

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 48) = v12;
  *(inited + 56) = v11;
  v13 = sub_22F07D320(inited);
  swift_setDeallocating();
  sub_22F003A4C(v10, &qword_27DAA14D0, &qword_22F0D8880);
  type metadata accessor for PeopleAnalytics.StopWatch();
  v14 = swift_allocObject();
  *(v14 + 40) = 1;
  *(v14 + 48) = 0;
  *(v14 + 56) = 1;
  *(v14 + 16) = 8;
  *(v14 + 24) = v13;
  *(v14 + 32) = 0;
  sub_22F0CFFAC();
  sub_22F0D05AC();
  sub_22F0D04CC();
  v16 = v15;
  v17 = (*(v5 + 8))(v7, v4);
  *(v14 + 32) = v16;
  *(v14 + 40) = 0;
  a2(v17);
  sub_22F08F7A8(v14);
  sub_22F0D00CC();
  return v14;
}

uint64_t sub_22F094D60(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return sub_22F0D00CC();
  }

  return result;
}

unint64_t sub_22F094D74()
{
  result = qword_27DAA1EA8;
  if (!qword_27DAA1EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1EA8);
  }

  return result;
}

unint64_t sub_22F094DCC()
{
  result = qword_27DAA1EB0;
  if (!qword_27DAA1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1EB0);
  }

  return result;
}

unint64_t sub_22F094E24()
{
  result = qword_27DAA1EB8;
  if (!qword_27DAA1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1EB8);
  }

  return result;
}

unint64_t sub_22F094E7C()
{
  result = qword_27DAA1EC0;
  if (!qword_27DAA1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1EC0);
  }

  return result;
}

unint64_t sub_22F094ED4()
{
  result = qword_27DAA1EC8;
  if (!qword_27DAA1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1EC8);
  }

  return result;
}

unint64_t sub_22F094F2C()
{
  result = qword_27DAA1ED0;
  if (!qword_27DAA1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1ED0);
  }

  return result;
}

unint64_t sub_22F094F84()
{
  result = qword_27DAA1ED8;
  if (!qword_27DAA1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1ED8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnalyticsType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnalyticsType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22F0CFFAC();
}

People::FetchContactsStatusMessage __swiftcall FetchContactsStatusMessage.init(contactIDs:types:)(Swift::OpaquePointer contactIDs, Swift::OpaquePointer types)
{
  v2->_rawValue = contactIDs._rawValue;
  v2[1]._rawValue = types._rawValue;
  result.types = types;
  result.contactIDs = contactIDs;
  return result;
}

uint64_t sub_22F09533C()
{
  if (*v0)
  {
    return 0x7365707974;
  }

  else
  {
    return 0x49746361746E6F63;
  }
}

void sub_22F095378(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49746361746E6F63 && a2 == 0xEA00000000007344;
  if (v6 || (sub_22F0D188C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7365707974 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_22F0D188C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_22F095458(uint64_t a1)
{
  v2 = sub_22F0956FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F095494(uint64_t a1)
{
  v2 = sub_22F0956FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FetchContactsStatusMessage.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1EF0, &unk_22F0D9EF0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F0956FC();
  sub_22F0CFF1C();
  sub_22F0D19FC();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA0DE0, &unk_22F0D4FB0);
  sub_22F095A28(&qword_27DAA1EF8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_22F0D180C();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0990, &qword_22F0D9F00);
    sub_22F095A94(&qword_27DAA1F00, sub_22F095750, MEMORY[0x277D83948]);
    sub_22F0D180C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_22F0956FC()
{
  result = qword_280CBD220[0];
  if (!qword_280CBD220[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CBD220);
  }

  return result;
}

unint64_t sub_22F095750()
{
  result = qword_27DAA1F08;
  if (!qword_27DAA1F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1F08);
  }

  return result;
}

void FetchContactsStatusMessage.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1F10, &qword_22F0D9F08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F0956FC();
  sub_22F0D19EC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA0DE0, &unk_22F0D4FB0);
    v12 = 0;
    sub_22F095A28(&qword_280CBD168, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_22F0D17BC();
    v9 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0990, &qword_22F0D9F00);
    v12 = 1;
    sub_22F095A94(&qword_280CBD178, sub_22F095B0C, MEMORY[0x277D83978]);
    sub_22F0D17BC();
    (*(v6 + 8))(v8, v5);
    v10 = v13;
    *a2 = v9;
    a2[1] = v10;
    sub_22F0CFF1C();
    sub_22F0CFF1C();
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t sub_22F095A28(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DAA0DE0, &unk_22F0D4FB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22F095A94(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA0990, &qword_22F0D9F00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F095B0C()
{
  result = qword_280CBD8E8;
  if (!qword_280CBD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD8E8);
  }

  return result;
}

uint64_t sub_22F095BD0(uint64_t a1)
{
  v2 = sub_22F095D5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F095C0C(uint64_t a1)
{
  v2 = sub_22F095D5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PingMessage.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1F18, &qword_22F0D9F10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F095D5C();
  sub_22F0D19FC();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_22F095D5C()
{
  result = qword_27DAA1F20;
  if (!qword_27DAA1F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1F20);
  }

  return result;
}

uint64_t sub_22F095E00(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1F18, &qword_22F0D9F10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F095D5C();
  sub_22F0D19FC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_22F095F14(uint64_t a1)
{
  v2 = sub_22F095FD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F095F50(uint64_t a1)
{
  v2 = sub_22F095FD0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_22F095FD0()
{
  result = qword_27DAA1F30;
  if (!qword_27DAA1F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1F30);
  }

  return result;
}

void sub_22F0960D4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x800000022F0DF520 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_22F0D188C();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_22F096168(uint64_t a1)
{
  v2 = sub_22F096364();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F0961A4(uint64_t a1)
{
  v2 = sub_22F096364();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22F096224(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v12 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12();
  sub_22F0D19FC();
  sub_22F0D17DC();
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_22F096364()
{
  result = qword_27DAA1F48;
  if (!qword_27DAA1F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1F48);
  }

  return result;
}

uint64_t sub_22F0963FC@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, _BYTE *a6@<X8>)
{
  v16 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v17 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_22F0D19EC();
  if (!v6)
  {
    v12 = v16;
    v13 = sub_22F0D178C();
    (*(v17 + 8))(v11, v9);
    *v12 = v13 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_22F0965BC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v14 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14();
  sub_22F0D19FC();
  sub_22F0D17DC();
  return (*(v9 + 8))(v11, v8);
}

uint64_t FamilyATBSendIMessage.requestID.getter()
{
  v1 = *v0;
  sub_22F0CFF1C();
  return v1;
}

unint64_t FamilyATBSendIMessage.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22F0D152C();

  MEMORY[0x2318FD2C0](v1, v2);
  return 0xD000000000000016;
}

People::FamilyATBSendIMessage __swiftcall FamilyATBSendIMessage.init(requestID:isCallerAskToProcess:)(People::FamilyATBSendIMessage requestID, Swift::Bool isCallerAskToProcess)
{
  *v2 = requestID.requestID;
  *(v2 + 16) = isCallerAskToProcess;
  requestID.isCallerAskToProcess = isCallerAskToProcess;
  return requestID;
}

uint64_t sub_22F0967BC()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x4974736575716572;
  }
}

void sub_22F096800(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4974736575716572 && a2 == 0xE900000000000044;
  if (v6 || (sub_22F0D188C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022F0DF520 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_22F0D188C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_22F0968EC(uint64_t a1)
{
  v2 = sub_22F096AF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F096928(uint64_t a1)
{
  v2 = sub_22F096AF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FamilyATBSendIMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1F58, &qword_22F0D9F38);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F096AF8();
  sub_22F0D19FC();
  v12 = 0;
  v7 = v9[1];
  sub_22F0D17CC();
  if (!v7)
  {
    v11 = 1;
    sub_22F0D17DC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22F096AF8()
{
  result = qword_27DAA1F60;
  if (!qword_27DAA1F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1F60);
  }

  return result;
}

void FamilyATBSendIMessage.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1F68, &qword_22F0D9F40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F096AF8();
  sub_22F0D19EC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v16 = 0;
    v9 = sub_22F0D177C();
    v11 = v10;
    v12 = v9;
    v15 = 1;
    v13 = sub_22F0D178C();
    (*(v6 + 8))(v8, v5);
    *a2 = v12;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13 & 1;
    sub_22F0CFF1C();
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

unint64_t sub_22F096D30()
{
  result = qword_280CBD200;
  if (!qword_280CBD200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD200);
  }

  return result;
}

unint64_t sub_22F096D88()
{
  result = qword_280CBD208;
  if (!qword_280CBD208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD208);
  }

  return result;
}

unint64_t sub_22F096DE0()
{
  result = qword_27DAA1F70;
  if (!qword_27DAA1F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1F78, &qword_22F0D9F48);
    sub_22F096E9C(&qword_27DAA1F80, sub_22F096F14, MEMORY[0x277D83978]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1F70);
  }

  return result;
}

uint64_t sub_22F096E9C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1F88, &qword_22F0D9F50);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F096F14()
{
  result = qword_27DAA1F90;
  if (!qword_27DAA1F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1F90);
  }

  return result;
}

unint64_t sub_22F096F6C()
{
  result = qword_280CBD188;
  if (!qword_280CBD188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1F78, &qword_22F0D9F48);
    sub_22F096E9C(&qword_280CBD170, sub_22F097028, MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD188);
  }

  return result;
}

unint64_t sub_22F097028()
{
  result = qword_280CBD6C0;
  if (!qword_280CBD6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD6C0);
  }

  return result;
}

unint64_t sub_22F097080()
{
  result = qword_280CBD770;
  if (!qword_280CBD770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD770);
  }

  return result;
}

unint64_t sub_22F0970D8()
{
  result = qword_280CBD778[0];
  if (!qword_280CBD778[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CBD778);
  }

  return result;
}

unint64_t sub_22F097148()
{
  result = qword_280CBD1E0;
  if (!qword_280CBD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD1E0);
  }

  return result;
}

unint64_t sub_22F0971A0()
{
  result = qword_280CBD1E8;
  if (!qword_280CBD1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD1E8);
  }

  return result;
}

unint64_t sub_22F097210()
{
  result = qword_280CBD1F0;
  if (!qword_280CBD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD1F0);
  }

  return result;
}

unint64_t sub_22F097268()
{
  result = qword_280CBD1F8;
  if (!qword_280CBD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD1F8);
  }

  return result;
}

unint64_t sub_22F0972C0()
{
  result = qword_280CBD360;
  if (!qword_280CBD360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD360);
  }

  return result;
}

unint64_t sub_22F097318()
{
  result = qword_280CBD368[0];
  if (!qword_280CBD368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CBD368);
  }

  return result;
}

unint64_t sub_22F09736C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22F0D152C();

  MEMORY[0x2318FD2C0](v1, v2);
  return 0xD000000000000016;
}

uint64_t sub_22F097448(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22F09750C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22F097554(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_22F0975F8()
{
  result = qword_27DAA1F98;
  if (!qword_27DAA1F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1F98);
  }

  return result;
}

unint64_t sub_22F097650()
{
  result = qword_27DAA1FA0;
  if (!qword_27DAA1FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1FA0);
  }

  return result;
}

unint64_t sub_22F0976A8()
{
  result = qword_27DAA1FA8;
  if (!qword_27DAA1FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1FA8);
  }

  return result;
}

unint64_t sub_22F097700()
{
  result = qword_27DAA1FB0;
  if (!qword_27DAA1FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1FB0);
  }

  return result;
}

unint64_t sub_22F097758()
{
  result = qword_27DAA1FB8;
  if (!qword_27DAA1FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1FB8);
  }

  return result;
}

unint64_t sub_22F0977B0()
{
  result = qword_27DAA1FC0;
  if (!qword_27DAA1FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1FC0);
  }

  return result;
}

unint64_t sub_22F097808()
{
  result = qword_27DAA1FC8;
  if (!qword_27DAA1FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1FC8);
  }

  return result;
}

unint64_t sub_22F097860()
{
  result = qword_27DAA1FD0;
  if (!qword_27DAA1FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1FD0);
  }

  return result;
}

unint64_t sub_22F0978B8()
{
  result = qword_27DAA1FD8;
  if (!qword_27DAA1FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1FD8);
  }

  return result;
}

unint64_t sub_22F097910()
{
  result = qword_27DAA1FE0;
  if (!qword_27DAA1FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1FE0);
  }

  return result;
}

unint64_t sub_22F097968()
{
  result = qword_27DAA1FE8;
  if (!qword_27DAA1FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1FE8);
  }

  return result;
}

unint64_t sub_22F0979C0()
{
  result = qword_27DAA1FF0;
  if (!qword_27DAA1FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1FF0);
  }

  return result;
}

unint64_t sub_22F097A18()
{
  result = qword_280CBD210;
  if (!qword_280CBD210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD210);
  }

  return result;
}

unint64_t sub_22F097A70()
{
  result = qword_280CBD218;
  if (!qword_280CBD218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD218);
  }

  return result;
}

uint64_t sub_22F097AE0(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = a2;
  v2[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1760, &unk_22F0D77D8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v3 = type metadata accessor for ResolvedFamily(0);
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1448, &unk_22F0D6640);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v4 = type metadata accessor for MessageDetails(0);
  v2[31] = v4;
  v2[32] = *(v4 - 8);
  v2[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F097CC4, 0, 0);
}

uint64_t sub_22F097CC4()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  sub_22F040184(*(v0 + 136), v1, type metadata accessor for MessageDetails);
  v6 = *(v3 + 48);
  *(v0 + 352) = v6;
  sub_22F049FF4(v1 + v6, v2, &qword_27DAA1448, &unk_22F0D6640);
  v7 = *(v5 + 48);
  *(v0 + 272) = v7;
  *(v0 + 280) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v1) = v7(v2, 1, v4);
  sub_22F003A4C(v2, &qword_27DAA1448, &unk_22F0D6640);
  if (v1 == 1)
  {
    v8 = *(v0 + 248);
    v9 = *(v0 + 136);
    v10 = v9 + *(v8 + 36);
    *(v0 + 288) = *v10;
    if (*(v10 + 8))
    {
      if (qword_280CBEC28 != -1)
      {
        swift_once();
      }

      v11 = qword_280CBEC30;
      *(v0 + 40) = type metadata accessor for ContactFetcher();
      *(v0 + 48) = &protocol witness table for ContactFetcher;
      *(v0 + 16) = v11;
      sub_22F0CFFAC();
      v12 = swift_task_alloc();
      *(v0 + 328) = v12;
      *v12 = v0;
      v12[1] = sub_22F098AC4;
      v13 = *(v0 + 208);

      return static ResolvedFamily.getFamilyForLoggedInChild(withContactFetcher:)(v13, v0 + 16);
    }

    else
    {
      v20 = v9 + *(v8 + 40);
      *(v0 + 296) = *v20;
      *(v0 + 356) = *(v20 + 8);
      if (qword_280CBEC28 != -1)
      {
        swift_once();
      }

      v21 = qword_280CBEC30;
      *(v0 + 80) = type metadata accessor for ContactFetcher();
      *(v0 + 88) = &protocol witness table for ContactFetcher;
      *(v0 + 56) = v21;
      v22 = qword_27DAA0688;
      sub_22F0CFFAC();
      if (v22 != -1)
      {
        swift_once();
      }

      *(v0 + 304) = qword_27DAA2360;

      return MEMORY[0x2822009F8](sub_22F098050);
    }
  }

  else
  {
    v15 = *(v0 + 264);
    v16 = swift_task_alloc();
    *(v0 + 336) = v16;
    *(v16 + 16) = v15;
    v17 = swift_task_alloc();
    *(v0 + 344) = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAA11D0, &qword_22F0D5D88);
    *v17 = v0;
    v17[1] = sub_22F098F64;
    v19 = *(v0 + 128);

    return MEMORY[0x2822007B8](v19, 0, 0, 0xD000000000000028, 0x800000022F0DD4E0, sub_22F01DF0C, v16, v18);
  }
}

uint64_t sub_22F098050()
{
  sub_22F0B301C(*(v0 + 288), *(v0 + 224));

  return MEMORY[0x2822009F8](sub_22F0980C0, 0, 0);
}

uint64_t sub_22F0980C0()
{
  v1 = *(v0 + 224);
  if ((*(v0 + 272))(v1, 1, *(v0 + 168)) == 1)
  {
    v2 = *(v0 + 356);
    v4 = *(v0 + 288);
    v3 = *(v0 + 296);
    sub_22F003A4C(v1, &qword_27DAA1448, &unk_22F0D6640);
    v5 = swift_task_alloc();
    *(v0 + 312) = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v5 + 32) = v2;
    *(v5 + 40) = v0 + 56;
    v6 = swift_task_alloc();
    *(v0 + 320) = v6;
    *v6 = v0;
    v6[1] = sub_22F098388;
    v7 = *(v0 + 160);
    v8 = *(v0 + 144);
    v9 = sub_22F040104;
    v10 = 0xD000000000000043;
    v11 = 0x800000022F0DE1C0;
    v12 = v5;
  }

  else
  {
    sub_22F01DE40(v1, *(v0 + 232), type metadata accessor for ResolvedFamily);
    v13 = *(v0 + 352);
    v14 = *(v0 + 264);
    v15 = *(v0 + 232);
    v16 = *(v0 + 200);
    v17 = *(v0 + 168);
    v18 = *(v0 + 176);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    v19 = *(v18 + 56);
    v19(v15, 0, 1, v17);
    sub_22F01DE40(v15, v16, type metadata accessor for ResolvedFamily);
    sub_22F003A4C(v14 + v13, &qword_27DAA1448, &unk_22F0D6640);
    sub_22F01DE40(v16, v14 + v13, type metadata accessor for ResolvedFamily);
    v19(*(v0 + 264) + *(v0 + 352), 0, 1, *(v0 + 168));
    v20 = *(v0 + 264);
    v21 = swift_task_alloc();
    *(v0 + 336) = v21;
    *(v21 + 16) = v20;
    v22 = swift_task_alloc();
    *(v0 + 344) = v22;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAA11D0, &qword_22F0D5D88);
    *v22 = v0;
    v22[1] = sub_22F098F64;
    v7 = *(v0 + 128);
    v9 = sub_22F01DF0C;
    v11 = 0x800000022F0DD4E0;
    v10 = 0xD000000000000028;
    v12 = v21;
  }

  return MEMORY[0x2822007B8](v7, 0, 0, v10, v11, v9, v12, v8);
}

uint64_t sub_22F098388()
{

  return MEMORY[0x2822009F8](sub_22F0984A0, 0, 0);
}

uint64_t sub_22F0984A0()
{
  sub_22F049FF4(v0[20], v0[19], &qword_27DAA1760, &unk_22F0D77D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[19];
    v2 = v0[20];
    v3 = *v1;
    v0[15] = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0870, &qword_22F0D2CB0);
    swift_willThrowTypedImpl();

    sub_22F003A4C(v2, &qword_27DAA1760, &unk_22F0D77D8);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    v4 = v0[29];
    (*(v0[22] + 56))(v4, 1, 1, v0[21]);
    v5 = v0[33];
    sub_22F003A4C(v4, &qword_27DAA1448, &unk_22F0D6640);
    v6 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000022, 0x800000022F0DF560, 500);
    swift_willThrow();
    sub_22F012058(v5);
    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    v7 = v0[31];
    v8 = v0[32];
    v9 = v0[16];
    v10 = sub_22F0D0A1C();
    __swift_project_value_buffer(v10, qword_27DAA1A28);
    v11 = v6;
    Logger.ifError(_:message:)(v6, 0xD00000000000001BLL, 0x800000022F0DF540);

    (*(v8 + 56))(v9, 1, 1, v7);

    v12 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v13 = v0[38];
  sub_22F01DE40(v0[19], v0[24], type metadata accessor for ResolvedFamily);

  return MEMORY[0x2822009F8](sub_22F0987A4, v13, 0);
}

uint64_t sub_22F0987A4()
{
  v1 = [**(v0 + 192) dsid];
  if (v1)
  {
    v2 = *(v0 + 216);
    v3 = *(v0 + 192);
    v4 = *(v0 + 168);
    v5 = *(v0 + 176);
    v6 = v1;
    v7 = [v1 integerValue];
    sub_22F040184(v3, v2, type metadata accessor for ResolvedFamily);
    (*(v5 + 56))(v2, 0, 1, v4);
    swift_beginAccess();
    sub_22F046214(v2, v7);
    swift_endAccess();
  }

  return MEMORY[0x2822009F8](sub_22F0988D0, 0, 0);
}

uint64_t sub_22F0988D0()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 192);
  sub_22F003A4C(*(v0 + 160), &qword_27DAA1760, &unk_22F0D77D8);
  sub_22F01DE40(v2, v1, type metadata accessor for ResolvedFamily);
  v3 = *(v0 + 352);
  v4 = *(v0 + 264);
  v5 = *(v0 + 232);
  v6 = *(v0 + 200);
  v7 = *(v0 + 168);
  v8 = *(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v9 = *(v8 + 56);
  v9(v5, 0, 1, v7);
  sub_22F01DE40(v5, v6, type metadata accessor for ResolvedFamily);
  sub_22F003A4C(v4 + v3, &qword_27DAA1448, &unk_22F0D6640);
  sub_22F01DE40(v6, v4 + v3, type metadata accessor for ResolvedFamily);
  v9(*(v0 + 264) + *(v0 + 352), 0, 1, *(v0 + 168));
  v10 = *(v0 + 264);
  v11 = swift_task_alloc();
  *(v0 + 336) = v11;
  *(v11 + 16) = v10;
  v12 = swift_task_alloc();
  *(v0 + 344) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAA11D0, &qword_22F0D5D88);
  *v12 = v0;
  v12[1] = sub_22F098F64;
  v14 = *(v0 + 128);

  return MEMORY[0x2822007B8](v14, 0, 0, 0xD000000000000028, 0x800000022F0DD4E0, sub_22F01DF0C, v11, v13);
}

uint64_t sub_22F098AC4()
{
  v2 = *v1;

  if (v0)
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
    v3 = sub_22F09916C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
    v3 = sub_22F098BF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22F098BF8()
{
  v1 = *(v0 + 208);
  if ((*(v0 + 272))(v1, 1, *(v0 + 168)) == 1)
  {
    v2 = *(v0 + 264);
    sub_22F003A4C(v1, &qword_27DAA1448, &unk_22F0D6640);
    v3 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000028, 0x800000022F0DD4B0, 500);
    swift_willThrow();
    sub_22F012058(v2);
    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 248);
    v5 = *(v0 + 256);
    v6 = *(v0 + 128);
    v7 = sub_22F0D0A1C();
    __swift_project_value_buffer(v7, qword_27DAA1A28);
    v8 = v3;
    Logger.ifError(_:message:)(v3, 0xD00000000000001BLL, 0x800000022F0DF540);

    (*(v5 + 56))(v6, 1, 1, v4);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 352);
    v12 = *(v0 + 264);
    v14 = *(v0 + 176);
    v13 = *(v0 + 184);
    sub_22F01DE40(v1, v13, type metadata accessor for ResolvedFamily);
    sub_22F003A4C(v12 + v11, &qword_27DAA1448, &unk_22F0D6640);
    sub_22F01DE40(v13, v12 + v11, type metadata accessor for ResolvedFamily);
    (*(v14 + 56))(*(v0 + 264) + *(v0 + 352), 0, 1, *(v0 + 168));
    v15 = *(v0 + 264);
    v16 = swift_task_alloc();
    *(v0 + 336) = v16;
    *(v16 + 16) = v15;
    v17 = swift_task_alloc();
    *(v0 + 344) = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAA11D0, &qword_22F0D5D88);
    *v17 = v0;
    v17[1] = sub_22F098F64;
    v19 = *(v0 + 128);

    return MEMORY[0x2822007B8](v19, 0, 0, 0xD000000000000028, 0x800000022F0DD4E0, sub_22F01DF0C, v16, v18);
  }
}

uint64_t sub_22F098F64()
{

  return MEMORY[0x2822009F8](sub_22F09907C, 0, 0);
}

uint64_t sub_22F09907C()
{
  sub_22F012058(*(v0 + 264));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22F09916C()
{
  v1 = v0[26];
  (*(v0[22] + 56))(v1, 1, 1, v0[21]);
  v2 = v0[33];
  sub_22F003A4C(v1, &qword_27DAA1448, &unk_22F0D6640);
  v3 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000028, 0x800000022F0DD4B0, 500);
  swift_willThrow();
  sub_22F012058(v2);
  if (qword_27DAA0570 != -1)
  {
    swift_once();
  }

  v4 = v0[31];
  v5 = v0[32];
  v6 = v0[16];
  v7 = sub_22F0D0A1C();
  __swift_project_value_buffer(v7, qword_27DAA1A28);
  v8 = v3;
  Logger.ifError(_:message:)(v3, 0xD00000000000001BLL, 0x800000022F0DF540);

  (*(v5 + 56))(v6, 1, 1, v4);

  v9 = v0[1];

  return v9();
}

uint64_t static AskToBuySupport.getDetailsWithDetails(withDetails:forId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAA11D0, &qword_22F0D5D88);
  v6 = swift_task_alloc();
  v4[6] = v6;
  v7 = type metadata accessor for MessageDetails(0);
  v4[7] = v7;
  v4[8] = *(v7 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[11] = v8;
  *v8 = v4;
  v8[1] = sub_22F0994C4;

  return sub_22F097AE0(v6, a2);
}

uint64_t sub_22F0994C4()
{

  return MEMORY[0x2822009F8](sub_22F0995C0, 0, 0);
}

uint64_t sub_22F0995C0()
{
  v27 = v0;
  v1 = v0[6];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) == 1)
  {
    sub_22F003A4C(v1, qword_27DAA11D0, &qword_22F0D5D88);
    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    v2 = sub_22F0D0A1C();
    __swift_project_value_buffer(v2, qword_27DAA1A28);
    sub_22F0CFF1C();
    v3 = sub_22F0D09FC();
    v4 = sub_22F0D124C();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[4];
      v5 = v0[5];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v26 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_22F00A560(v6, v5, &v26);
      _os_log_impl(&dword_22EFE1000, v3, v4, "%s looking at spotlight for backing store", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x2318FE8B0](v8, -1, -1);
      MEMORY[0x2318FE8B0](v7, -1, -1);
    }

    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_22F0999BC;
    v10 = v0[2];
    v11 = v0[3];

    return static SpotlightHelper.fillinDetailsFromSpotlight(withDetails:)(v10, v11);
  }

  else
  {
    sub_22F01DE40(v1, v0[10], type metadata accessor for MessageDetails);
    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    v13 = v0[9];
    v14 = v0[3];
    v15 = sub_22F0D0A1C();
    __swift_project_value_buffer(v15, qword_27DAA1A28);
    sub_22F040184(v14, v13, type metadata accessor for MessageDetails);
    v16 = sub_22F0D09FC();
    v17 = sub_22F0D122C();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[9];
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136315138;
      v22 = *v19;
      v23 = v19[1];
      sub_22F0CFF1C();
      sub_22F012058(v19);
      v24 = sub_22F00A560(v22, v23, &v26);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_22EFE1000, v16, v17, "Fetched details from ask cache for %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x2318FE8B0](v21, -1, -1);
      MEMORY[0x2318FE8B0](v20, -1, -1);
    }

    else
    {

      sub_22F012058(v19);
    }

    sub_22F01DE40(v0[10], v0[2], type metadata accessor for MessageDetails);

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_22F0999BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t BiomeStreamReader.__allocating_init(statusType:readerStream:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  BiomeStreamReader.init(statusType:readerStream:)(a1, a2);
  return v4;
}

void sub_22F099B78()
{
  v1 = v0;
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v2 = sub_22F0D0A1C();
  __swift_project_value_buffer(v2, qword_280CBEC40);
  sub_22F0CFFAC();
  v3 = sub_22F0D09FC();
  v4 = sub_22F0D122C();
  sub_22F0D00CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136315138;
    v7 = *(v1 + 16);
    if (v7 > 4)
    {
      v16 = 0x7373654D64616572;
      v17 = 0xEB00000000656761;
      v18 = 0xEA00000000006C6CLL;
      v19 = 0x614364657373696DLL;
      if (v7 != 8)
      {
        v19 = 0x7261646E656C6163;
        v18 = 0xE800000000000000;
      }

      if (v7 != 7)
      {
        v16 = v19;
        v17 = v18;
      }

      v20 = 0x617453646C696863;
      v21 = 0xEA00000000006574;
      if (v7 != 5)
      {
        v20 = 0x654D646165726E75;
        v21 = 0xED00006567617373;
      }

      if (*(v1 + 16) <= 6u)
      {
        v14 = v20;
      }

      else
      {
        v14 = v16;
      }

      if (*(v1 + 16) <= 6u)
      {
        v15 = v21;
      }

      else
      {
        v15 = v17;
      }
    }

    else
    {
      v8 = 0xEF7974696C696261;
      v9 = 0x6C69617641646E64;
      v10 = 0xE800000000000000;
      v11 = 0x6E6F697461636F6CLL;
      v12 = 0xEF74736575716552;
      v13 = 0x7975426F546B7361;
      if (v7 != 3)
      {
        v13 = 0xD000000000000011;
        v12 = 0x800000022F0DC350;
      }

      if (v7 != 2)
      {
        v11 = v13;
        v10 = v12;
      }

      if (*(v1 + 16))
      {
        v9 = 0x74536E6F69746F6DLL;
        v8 = 0xEB00000000657461;
      }

      if (*(v1 + 16) <= 1u)
      {
        v14 = v9;
      }

      else
      {
        v14 = v11;
      }

      if (*(v1 + 16) <= 1u)
      {
        v15 = v8;
      }

      else
      {
        v15 = v10;
      }
    }

    v22 = sub_22F00A560(v14, v15, &v24);

    *(v5 + 4) = v22;
    _os_log_impl(&dword_22EFE1000, v3, v4, "BiomeStream cancel %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x2318FE8B0](v6, -1, -1);
    MEMORY[0x2318FE8B0](v5, -1, -1);
  }

  [*(v1 + 24) cancel];
  v23 = *(v1 + 24);
  *(v1 + 24) = 0;
}

uint64_t BiomeStreamListener.__allocating_init(statusType:biomePublisher:eventHandler:)(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  BiomeStreamListener.init(statusType:biomePublisher:eventHandler:)(a1, a2, a3, a4);
  return v8;
}

uint64_t *BiomeStreamListener.init(statusType:biomePublisher:eventHandler:)(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = *a1;
  v4[3] = 0;
  *(v4 + 16) = v10;
  v11 = v9;
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v12 = sub_22F0D0A1C();
  __swift_project_value_buffer(v12, qword_280CBEC40);
  v13 = sub_22F0D09FC();
  v14 = sub_22F0D124C();
  if (os_log_type_enabled(v13, v14))
  {
    v39 = v11;
    v40 = a3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock = v16;
    *v15 = 136315138;
    if (v10 > 4)
    {
      v25 = 0x7373654D64616572;
      v26 = 0xEB00000000656761;
      v27 = 0xEA00000000006C6CLL;
      v28 = 0x614364657373696DLL;
      if (v10 != 8)
      {
        v28 = 0x7261646E656C6163;
        v27 = 0xE800000000000000;
      }

      if (v10 != 7)
      {
        v25 = v28;
        v26 = v27;
      }

      v29 = 0x617453646C696863;
      v30 = 0xEA00000000006574;
      if (v10 != 5)
      {
        v29 = 0x654D646165726E75;
        v30 = 0xED00006567617373;
      }

      if (v10 <= 6)
      {
        v23 = v29;
      }

      else
      {
        v23 = v25;
      }

      if (v10 <= 6)
      {
        v24 = v30;
      }

      else
      {
        v24 = v26;
      }
    }

    else
    {
      v17 = 0xEF7974696C696261;
      v18 = 0x6C69617641646E64;
      v19 = 0xE800000000000000;
      v20 = 0x6E6F697461636F6CLL;
      v21 = 0xEF74736575716552;
      v22 = 0x7975426F546B7361;
      if (v10 != 3)
      {
        v22 = 0xD000000000000011;
        v21 = 0x800000022F0DC350;
      }

      if (v10 != 2)
      {
        v20 = v22;
        v19 = v21;
      }

      if (v10)
      {
        v18 = 0x74536E6F69746F6DLL;
        v17 = 0xEB00000000657461;
      }

      if (v10 <= 1)
      {
        v23 = v18;
      }

      else
      {
        v23 = v20;
      }

      if (v10 <= 1)
      {
        v24 = v17;
      }

      else
      {
        v24 = v19;
      }
    }

    v31 = sub_22F00A560(v23, v24, &aBlock);

    *(v15 + 4) = v31;
    _os_log_impl(&dword_22EFE1000, v13, v14, "BiomeStreamListener create for %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x2318FE8B0](v16, -1, -1);
    MEMORY[0x2318FE8B0](v15, -1, -1);

    v11 = v39;
    a3 = v40;
  }

  else
  {
  }

  v32 = swift_allocObject();
  *(v32 + 16) = v10;
  v45 = sub_22F09D598;
  v46 = v32;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_22F09A628;
  v44 = &block_descriptor_10;
  v33 = _Block_copy(&aBlock);
  sub_22F0D00CC();
  v34 = swift_allocObject();
  *(v34 + 16) = *(v11 + 80);
  *(v34 + 24) = v10;
  *(v34 + 32) = a3;
  *(v34 + 40) = a4;
  v45 = sub_22F09D5B8;
  v46 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_22F09B8A8;
  v44 = &block_descriptor_6;
  v35 = _Block_copy(&aBlock);
  sub_22F0CFFAC();
  sub_22F0D00CC();
  v36 = [a2 sinkWithCompletion:v33 receiveInput:v35];

  sub_22F0D00CC();
  _Block_release(v35);
  _Block_release(v33);
  v37 = v5[3];
  v5[3] = v36;

  return v5;
}

void sub_22F09A35C(uint64_t a1, unsigned __int8 a2)
{
  if (qword_280CBDBD8 != -1)
  {
    swift_once();
  }

  v3 = sub_22F0D0A1C();
  __swift_project_value_buffer(v3, qword_280CBDBE0);
  oslog = sub_22F0D09FC();
  v4 = sub_22F0D124C();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315138;
    if (a2 > 4u)
    {
      v15 = 0x7373654D64616572;
      v16 = 0xEB00000000656761;
      v17 = 0xEA00000000006C6CLL;
      v18 = 0x614364657373696DLL;
      if (a2 != 8)
      {
        v18 = 0x7261646E656C6163;
        v17 = 0xE800000000000000;
      }

      if (a2 != 7)
      {
        v15 = v18;
        v16 = v17;
      }

      v19 = 0x617453646C696863;
      v20 = 0xEA00000000006574;
      if (a2 != 5)
      {
        v19 = 0x654D646165726E75;
        v20 = 0xED00006567617373;
      }

      if (a2 <= 6u)
      {
        v13 = v19;
      }

      else
      {
        v13 = v15;
      }

      if (a2 <= 6u)
      {
        v14 = v20;
      }

      else
      {
        v14 = v16;
      }
    }

    else
    {
      v7 = 0xEF7974696C696261;
      v8 = 0x6C69617641646E64;
      v9 = 0xE800000000000000;
      v10 = 0x6E6F697461636F6CLL;
      v11 = 0xEF74736575716552;
      v12 = 0x7975426F546B7361;
      if (a2 != 3)
      {
        v12 = 0xD000000000000011;
        v11 = 0x800000022F0DC350;
      }

      if (a2 != 2)
      {
        v10 = v12;
        v9 = v11;
      }

      if (a2)
      {
        v8 = 0x74536E6F69746F6DLL;
        v7 = 0xEB00000000657461;
      }

      if (a2 <= 1u)
      {
        v13 = v8;
      }

      else
      {
        v13 = v10;
      }

      if (a2 <= 1u)
      {
        v14 = v7;
      }

      else
      {
        v14 = v9;
      }
    }

    v21 = sub_22F00A560(v13, v14, &v23);

    *(v5 + 4) = v21;
    _os_log_impl(&dword_22EFE1000, oslog, v4, "Biome stream sunk: %s it's all over now", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x2318FE8B0](v6, -1, -1);
    MEMORY[0x2318FE8B0](v5, -1, -1);
  }
}

void sub_22F09A628(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_22F0CFFAC();
  v4 = a2;
  v3();
  sub_22F0D00CC();
}

uint64_t sub_22F09A690(uint64_t a1, unsigned __int8 a2)
{
  sub_22F0D093C();
  swift_allocObject();
  sub_22F0D091C();
  v5 = a2;
  _s6People0A9AnalyticsC25receiveInpuStopwatchBlock_5blockAC9StopWatchCAA10StatusTypeO_yyXEtFZ_0(&v5, sub_22F09D924);
  v3 = sub_22F0D00CC();
  MEMORY[0x2318FCE60](v3);
  return sub_22F0D00CC();
}

void sub_22F09A74C(int a1, uint64_t a2, uint64_t (*a3)(id), uint64_t a4)
{
  v78 = a4;
  v79 = a3;
  v83 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v81 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v80 = &v74 - v6;
  v7 = sub_22F0D0A8C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v74 - v12);
  if (qword_280CBDBD8 != -1)
  {
    swift_once();
  }

  v77 = sub_22F0D0A1C();
  __swift_project_value_buffer(v77, qword_280CBDBE0);
  v14 = sub_22F0D09FC();
  v15 = sub_22F0D124C();
  if (os_log_type_enabled(v14, v15))
  {
    v82 = v13;
    v75 = v8;
    v76 = v7;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v85 = v17;
    *v16 = 136315138;
    if (v83 > 4u)
    {
      v26 = 0x7373654D64616572;
      v27 = 0xEB00000000656761;
      v28 = 0x614364657373696DLL;
      v29 = 0xEA00000000006C6CLL;
      if (v83 != 8)
      {
        v28 = 0x7261646E656C6163;
        v29 = 0xE800000000000000;
      }

      if (v83 != 7)
      {
        v26 = v28;
        v27 = v29;
      }

      v30 = 0x617453646C696863;
      v31 = 0xEA00000000006574;
      if (v83 != 5)
      {
        v30 = 0x654D646165726E75;
        v31 = 0xED00006567617373;
      }

      if (v83 <= 6u)
      {
        v24 = v30;
      }

      else
      {
        v24 = v26;
      }

      if (v83 <= 6u)
      {
        v25 = v31;
      }

      else
      {
        v25 = v27;
      }
    }

    else
    {
      v18 = 0x6C69617641646E64;
      v19 = 0xEF7974696C696261;
      v20 = 0xE800000000000000;
      v21 = 0x6E6F697461636F6CLL;
      v22 = 0x7975426F546B7361;
      v23 = 0xEF74736575716552;
      if (v83 != 3)
      {
        v22 = 0xD000000000000011;
        v23 = 0x800000022F0DC350;
      }

      if (v83 != 2)
      {
        v21 = v22;
        v20 = v23;
      }

      if (v83)
      {
        v18 = 0x74536E6F69746F6DLL;
        v19 = 0xEB00000000657461;
      }

      if (v83 <= 1u)
      {
        v24 = v18;
      }

      else
      {
        v24 = v21;
      }

      if (v83 <= 1u)
      {
        v25 = v19;
      }

      else
      {
        v25 = v20;
      }
    }

    v32 = sub_22F00A560(v24, v25, &v85);

    *(v16 + 4) = v32;
    _os_log_impl(&dword_22EFE1000, v14, v15, "%s event consume...", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x2318FE8B0](v17, -1, -1);
    MEMORY[0x2318FE8B0](v16, -1, -1);

    v8 = v75;
    v7 = v76;
    v13 = v82;
  }

  else
  {
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (v33)
  {
    v34 = [v33 eventBody];
    swift_unknownObjectRelease();
    if (v34)
    {
      v35 = dispatch_group_create();
      dispatch_group_enter(v35);
      v76 = v34;
      v79(v34);
      v36 = swift_allocObject();
      *(v36 + 16) = v83;
      *(v36 + 24) = v35;
      v37 = v35;
      sub_22F0D094C();
      sub_22F0D00CC();
      sub_22F0D00CC();
      sub_22F0D0A7C();
      if (qword_280CBD948 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v5, qword_280CBD950);
      v38 = [objc_opt_self() seconds];
      v39 = v80;
      sub_22F0D019C();

      sub_22F0D018C();
      v81[1](v39, v5);
      sub_22F0D0A9C();
      v40 = *(v8 + 8);
      (v40)(v11, v7);
      sub_22F0D125C();
      if (sub_22F0D0A3C())
      {
        v41 = sub_22F0D09FC();
        v42 = sub_22F0D124C();
        if (os_log_type_enabled(v41, v42))
        {
          v82 = v13;
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v85 = v44;
          *v43 = 136315138;
          v81 = v40;
          if (v83 > 4u)
          {
            if (v83 <= 6u)
            {
              if (v83 == 5)
              {
                v45 = 0x617453646C696863;
                v46 = 0xEA00000000006574;
              }

              else
              {
                v45 = 0x654D646165726E75;
                v46 = 0xED00006567617373;
              }
            }

            else if (v83 == 7)
            {
              v45 = 0x7373654D64616572;
              v46 = 0xEB00000000656761;
            }

            else if (v83 == 8)
            {
              v45 = 0x614364657373696DLL;
              v46 = 0xEA00000000006C6CLL;
            }

            else
            {
              v46 = 0xE800000000000000;
              v45 = 0x7261646E656C6163;
            }
          }

          else if (v83 <= 1u)
          {
            if (v83)
            {
              v45 = 0x74536E6F69746F6DLL;
              v46 = 0xEB00000000657461;
            }

            else
            {
              v45 = 0x6C69617641646E64;
              v46 = 0xEF7974696C696261;
            }
          }

          else if (v83 == 2)
          {
            v46 = 0xE800000000000000;
            v45 = 0x6E6F697461636F6CLL;
          }

          else if (v83 == 3)
          {
            v45 = 0x7975426F546B7361;
            v46 = 0xEF74736575716552;
          }

          else
          {
            v45 = 0xD000000000000011;
            v46 = 0x800000022F0DC350;
          }

          v72 = sub_22F00A560(v45, v46, &v85);

          *(v43 + 4) = v72;
          _os_log_impl(&dword_22EFE1000, v41, v42, "receiveInput: %s eventHandler complete", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v44);
LABEL_112:
          MEMORY[0x2318FE8B0](v44, -1, -1);
          MEMORY[0x2318FE8B0](v43, -1, -1);

          swift_unknownObjectRelease();
          (v81)(v82, v7);
          return;
        }
      }

      else
      {
        if (qword_280CBDB90 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v77, qword_280CBDB98);
        v41 = sub_22F0D09FC();
        v59 = sub_22F0D123C();
        if (os_log_type_enabled(v41, v59))
        {
          v81 = v40;
          v82 = v13;
          v60 = 0xD000000000000011;
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v85 = v44;
          *v43 = 136315394;
          *(v43 + 4) = sub_22F00A560(0xD00000000000002DLL, 0x800000022F0DF5F0, &v85);
          *(v43 + 12) = 2080;
          if (v83 > 4u)
          {
            if (v83 <= 6u)
            {
              if (v83 == 5)
              {
                v60 = 0x617453646C696863;
                v61 = 0xEA00000000006574;
              }

              else
              {
                v60 = 0x654D646165726E75;
                v61 = 0xED00006567617373;
              }
            }

            else if (v83 == 7)
            {
              v60 = 0x7373654D64616572;
              v61 = 0xEB00000000656761;
            }

            else if (v83 == 8)
            {
              v60 = 0x614364657373696DLL;
              v61 = 0xEA00000000006C6CLL;
            }

            else
            {
              v61 = 0xE800000000000000;
              v60 = 0x7261646E656C6163;
            }
          }

          else if (v83 <= 1u)
          {
            if (v83)
            {
              v60 = 0x74536E6F69746F6DLL;
              v61 = 0xEB00000000657461;
            }

            else
            {
              v60 = 0x6C69617641646E64;
              v61 = 0xEF7974696C696261;
            }
          }

          else if (v83 == 2)
          {
            v61 = 0xE800000000000000;
            v60 = 0x6E6F697461636F6CLL;
          }

          else if (v83 == 3)
          {
            v60 = 0x7975426F546B7361;
            v61 = 0xEF74736575716552;
          }

          else
          {
            v61 = 0x800000022F0DC350;
          }

          v73 = sub_22F00A560(v60, v61, &v85);

          *(v43 + 14) = v73;
          _os_log_impl(&dword_22EFE1000, v41, v59, "%s timeout exceeded for %s", v43, 0x16u);
          swift_arrayDestroy();
          goto LABEL_112;
        }
      }

      swift_unknownObjectRelease();
      (v40)(v13, v7);
      return;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  v82 = sub_22F0D09FC();
  v47 = sub_22F0D123C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v82, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v85 = v49;
    *v48 = 136315394;
    if (v83 > 4u)
    {
      v62 = 0x7373654D64616572;
      v63 = 0xEB00000000656761;
      v64 = 0x614364657373696DLL;
      v65 = 0xEA00000000006C6CLL;
      if (v83 != 8)
      {
        v64 = 0x7261646E656C6163;
        v65 = 0xE800000000000000;
      }

      if (v83 != 7)
      {
        v62 = v64;
        v63 = v65;
      }

      v66 = 0x617453646C696863;
      v67 = 0xEA00000000006574;
      if (v83 != 5)
      {
        v66 = 0x654D646165726E75;
        v67 = 0xED00006567617373;
      }

      if (v83 <= 6u)
      {
        v56 = v66;
      }

      else
      {
        v56 = v62;
      }

      if (v83 <= 6u)
      {
        v57 = v67;
      }

      else
      {
        v57 = v63;
      }
    }

    else
    {
      v50 = 0x6C69617641646E64;
      v51 = 0xEF7974696C696261;
      v52 = 0xE800000000000000;
      v53 = 0x6E6F697461636F6CLL;
      v54 = 0x7975426F546B7361;
      v55 = 0xEF74736575716552;
      if (v83 != 3)
      {
        v54 = 0xD000000000000011;
        v55 = 0x800000022F0DC350;
      }

      if (v83 != 2)
      {
        v53 = v54;
        v52 = v55;
      }

      if (v83)
      {
        v50 = 0x74536E6F69746F6DLL;
        v51 = 0xEB00000000657461;
      }

      if (v83 <= 1u)
      {
        v56 = v50;
      }

      else
      {
        v56 = v53;
      }

      if (v83 <= 1u)
      {
        v57 = v51;
      }

      else
      {
        v57 = v52;
      }
    }

    v68 = sub_22F00A560(v56, v57, &v85);

    *(v48 + 4) = v68;
    *(v48 + 12) = 2080;
    v84 = a2;
    swift_unknownObjectRetain();
    v69 = sub_22F0D0CFC();
    v71 = sub_22F00A560(v69, v70, &v85);

    *(v48 + 14) = v71;
    _os_log_impl(&dword_22EFE1000, v82, v47, "%s the wrong type: %s", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v49, -1, -1);
    MEMORY[0x2318FE8B0](v48, -1, -1);
  }

  else
  {
    v58 = v82;
  }
}

void sub_22F09B544(uint64_t a1, unsigned __int8 a2, dispatch_group_t group)
{
  if (*(a1 + 8) == 1)
  {
    v5 = *a1;
    if (qword_280CBDBD8 != -1)
    {
      swift_once();
    }

    v6 = sub_22F0D0A1C();
    __swift_project_value_buffer(v6, qword_280CBDBE0);
    v7 = v5;
    v8 = sub_22F0D09FC();
    v9 = sub_22F0D123C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v31 = v11;
      *v10 = 136315394;
      if (a2 > 4u)
      {
        v20 = 0x7373654D64616572;
        v21 = 0xEB00000000656761;
        v22 = 0xEA00000000006C6CLL;
        v23 = 0x614364657373696DLL;
        if (a2 != 8)
        {
          v23 = 0x7261646E656C6163;
          v22 = 0xE800000000000000;
        }

        if (a2 != 7)
        {
          v20 = v23;
          v21 = v22;
        }

        v24 = 0x617453646C696863;
        v25 = 0xEA00000000006574;
        if (a2 != 5)
        {
          v24 = 0x654D646165726E75;
          v25 = 0xED00006567617373;
        }

        if (a2 <= 6u)
        {
          v18 = v24;
        }

        else
        {
          v18 = v20;
        }

        if (a2 <= 6u)
        {
          v19 = v25;
        }

        else
        {
          v19 = v21;
        }
      }

      else
      {
        v12 = 0xEF7974696C696261;
        v13 = 0x6C69617641646E64;
        v14 = 0xE800000000000000;
        v15 = 0x6E6F697461636F6CLL;
        v16 = 0xEF74736575716552;
        v17 = 0x7975426F546B7361;
        if (a2 != 3)
        {
          v17 = 0xD000000000000011;
          v16 = 0x800000022F0DC350;
        }

        if (a2 != 2)
        {
          v15 = v17;
          v14 = v16;
        }

        if (a2)
        {
          v13 = 0x74536E6F69746F6DLL;
          v12 = 0xEB00000000657461;
        }

        if (a2 <= 1u)
        {
          v18 = v13;
        }

        else
        {
          v18 = v15;
        }

        if (a2 <= 1u)
        {
          v19 = v12;
        }

        else
        {
          v19 = v14;
        }
      }

      v26 = sub_22F00A560(v18, v19, &v31);

      *(v10 + 4) = v26;
      *(v10 + 12) = 2080;
      swift_getErrorValue();
      v27 = sub_22F0D192C();
      v29 = v28;
      sub_22F00CED8(v5, 1);
      v30 = sub_22F00A560(v27, v29, &v31);

      *(v10 + 14) = v30;
      _os_log_impl(&dword_22EFE1000, v8, v9, "%s event error: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v11, -1, -1);
      MEMORY[0x2318FE8B0](v10, -1, -1);
    }

    else
    {

      sub_22F00CED8(v5, 1);
    }
  }

  dispatch_group_leave(group);
}

uint64_t sub_22F09B8A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_22F0CFFAC();
  v3 = swift_unknownObjectRetain();
  v2(v3);
  sub_22F0D00CC();

  return swift_unknownObjectRelease();
}

uint64_t BiomeStreamListener.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t BiomeStreamReader.init(statusType:readerStream:)(unsigned __int8 *a1, uint64_t a2)
{
  v5 = sub_22F0D126C();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22F0D0A6C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_22F0D127C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a1) = *a1;
  *(v2 + 24) = a2;
  v23 = sub_22F033250();
  v24 = a2;
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  swift_unknownObjectRetain();
  sub_22F0D152C();
  MEMORY[0x2318FD2C0](0xD000000000000010, 0x800000022F0DD990);
  MEMORY[0x2318FD2C0](46, 0xE100000000000000);
  HIDWORD(v21) = a1;
  sub_22F032B24(a1);
  MEMORY[0x2318FD2C0](0x722E65756575715FLL, 0xED00007265646165);
  (*(v8 + 104))(v10, *MEMORY[0x277D85268], v7);
  sub_22F0D0A5C();
  v25[0] = MEMORY[0x277D84F90];
  sub_22F09D8CC(&qword_280CBEC78, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1E90, qword_22F0DA870);
  sub_22F08E6A8(&qword_280CBEC80, &qword_27DAA1E90, qword_22F0DA870);
  sub_22F0D13EC();
  v11 = v22;
  *(v11 + 16) = sub_22F0D129C();
  if (qword_280CBDBD8 != -1)
  {
    swift_once();
  }

  v12 = sub_22F0D0A1C();
  __swift_project_value_buffer(v12, qword_280CBDBE0);
  v13 = sub_22F0D09FC();
  v14 = sub_22F0D124C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25[0] = v16;
    *v15 = 136315138;
    if (SHIDWORD(v21) > 4)
    {
      if (SHIDWORD(v21) <= 6)
      {
        if (HIDWORD(v21) == 5)
        {
          v18 = 0x617453646C696863;
          v17 = 0xEA00000000006574;
        }

        else
        {
          v17 = 0xED00006567617373;
          v18 = 0x654D646165726E75;
        }
      }

      else if (HIDWORD(v21) == 7)
      {
        v18 = 0x7373654D64616572;
        v17 = 0xEB00000000656761;
      }

      else if (HIDWORD(v21) == 8)
      {
        v17 = 0xEA00000000006C6CLL;
        v18 = 0x614364657373696DLL;
      }

      else
      {
        v17 = 0xE800000000000000;
        v18 = 0x7261646E656C6163;
      }
    }

    else if (SHIDWORD(v21) <= 1)
    {
      if (HIDWORD(v21))
      {
        v17 = 0xEB00000000657461;
        v18 = 0x74536E6F69746F6DLL;
      }

      else
      {
        v17 = 0xEF7974696C696261;
        v18 = 0x6C69617641646E64;
      }
    }

    else if (HIDWORD(v21) == 2)
    {
      v17 = 0xE800000000000000;
      v18 = 0x6E6F697461636F6CLL;
    }

    else if (HIDWORD(v21) == 3)
    {
      v17 = 0xEF74736575716552;
      v18 = 0x7975426F546B7361;
    }

    else
    {
      v17 = 0x800000022F0DC350;
      v18 = 0xD000000000000011;
    }

    v19 = sub_22F00A560(v18, v17, v25);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_22EFE1000, v13, v14, "BiomeStreamReader for %s init", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x2318FE8B0](v16, -1, -1);
    MEMORY[0x2318FE8B0](v15, -1, -1);
  }

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_22F09BEC4(_BYTE *a1, uint64_t a2)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = v2;
  *(v3 + 56) = *a1;
  return MEMORY[0x2822009F8](sub_22F09BEEC, 0, 0);
}

uint64_t sub_22F09BEEC()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v3;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1150, &unk_22F0D59C0);
  *v5 = v0;
  v5[1] = sub_22F09C008;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000021, 0x800000022F0DF370, sub_22F09D5C8, v4, v6);
}

uint64_t sub_22F09C008()
{

  return MEMORY[0x2822009F8](sub_22F09C120, 0, 0);
}

uint64_t sub_22F09C138(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1E60, &qword_22F0D5A58);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-v9];
  v15 = a3;
  (*(v8 + 16))(&v14[-v9], a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  sub_22F09C298(&v15, a4, sub_22F00CEE4, v12);
  return sub_22F0D00CC();
}

uint64_t sub_22F09C298(unsigned __int8 *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v48 = a4;
  v49 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - v7;
  v9 = sub_22F0D05BC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  v16 = *a1;
  sub_22F0D05AC();
  v17 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v6 + 8))(v8, v5);
  sub_22F0D055C();
  v18 = *(v10 + 8);
  v19 = v47;
  v18(v13, v9);
  v20 = *(v19 + 24);
  if (v20)
  {
    sub_22F0D04CC();
    v21 = [v20 publisherFromStartTime_];
    v50 = v16;
    objc_opt_self();
    v22 = swift_dynamicCastObjCClassUnconditional();
    swift_unknownObjectRetain();
    sub_22F09C7FC(&v50, v22, v49, v48);
    swift_unknownObjectRelease_n();
    v23 = v15;
  }

  else
  {
    v24 = v16;
    if (qword_280CBDBD8 != -1)
    {
      swift_once();
    }

    v25 = sub_22F0D0A1C();
    __swift_project_value_buffer(v25, qword_280CBDBE0);
    v26 = sub_22F0D09FC();
    v27 = sub_22F0D123C();
    if (os_log_type_enabled(v26, v27))
    {
      v47 = v9;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v51 = v29;
      *v28 = 136315138;
      if (v24 > 4)
      {
        v38 = 0x7373654D64616572;
        v39 = 0xEB00000000656761;
        v40 = 0xEA00000000006C6CLL;
        v41 = 0x614364657373696DLL;
        if (v24 != 8)
        {
          v41 = 0x7261646E656C6163;
          v40 = 0xE800000000000000;
        }

        if (v24 != 7)
        {
          v38 = v41;
          v39 = v40;
        }

        v42 = 0x617453646C696863;
        v43 = 0xEA00000000006574;
        if (v24 != 5)
        {
          v42 = 0x654D646165726E75;
          v43 = 0xED00006567617373;
        }

        if (v24 <= 6)
        {
          v36 = v42;
        }

        else
        {
          v36 = v38;
        }

        if (v24 <= 6)
        {
          v37 = v43;
        }

        else
        {
          v37 = v39;
        }
      }

      else
      {
        v30 = 0xEF7974696C696261;
        v31 = 0x6C69617641646E64;
        v32 = 0xE800000000000000;
        v33 = 0x6E6F697461636F6CLL;
        v34 = 0xEF74736575716552;
        v35 = 0x7975426F546B7361;
        if (v24 != 3)
        {
          v35 = 0xD000000000000011;
          v34 = 0x800000022F0DC350;
        }

        if (v24 != 2)
        {
          v33 = v35;
          v32 = v34;
        }

        if (v24)
        {
          v31 = 0x74536E6F69746F6DLL;
          v30 = 0xEB00000000657461;
        }

        if (v24 <= 1)
        {
          v36 = v31;
        }

        else
        {
          v36 = v33;
        }

        if (v24 <= 1)
        {
          v37 = v30;
        }

        else
        {
          v37 = v32;
        }
      }

      v44 = sub_22F00A560(v36, v37, &v51);

      *(v28 + 4) = v44;
      _os_log_impl(&dword_22EFE1000, v26, v27, "%s serious errors, missing reader string!", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x2318FE8B0](v29, -1, -1);
      MEMORY[0x2318FE8B0](v28, -1, -1);

      v9 = v47;
      v49(MEMORY[0x277D84F90]);
    }

    else
    {

      v49(MEMORY[0x277D84F90]);
    }

    v23 = v15;
  }

  return (v18)(v23, v9);
}

void sub_22F09C7FC(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_22F0D0ABC();
  LOBYTE(v18) = v9;
  v11 = _s6People0A9AnalyticsC22collectEventsStopwatchyAC9StopWatchCAA10StatusTypeOFZ_0(&v18);
  v12 = [a2 withBookmark_];
  v13 = swift_allocObject();
  v13[2] = v5;
  v13[3] = v11;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = v10;
  v22 = sub_22F09D5D8;
  v23 = v13;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_22F09A628;
  v21 = &block_descriptor_16;
  v14 = _Block_copy(&v18);
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0D00CC();
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  *(v15 + 24) = v5;
  *(v15 + 32) = v10;
  v22 = sub_22F09D5E8;
  v23 = v15;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_22F09B8A8;
  v21 = &block_descriptor_22_0;
  v16 = _Block_copy(&v18);
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0D00CC();
  v17 = [v12 sinkWithCompletion:v14 receiveInput:v16];
  _Block_release(v16);
  _Block_release(v14);
  sub_22F0D00CC();
  sub_22F0D00CC();
}

uint64_t sub_22F09CA4C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v12 = sub_22F0D0A4C();
  v23 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22F0D0A6C();
  v15 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a2[2];
  v18 = swift_allocObject();
  v18[2] = *(v11 + 80);
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  v18[6] = a6;
  aBlock[4] = sub_22F09D914;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F009868;
  aBlock[3] = &block_descriptor_36;
  v19 = _Block_copy(aBlock);
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0D0A5C();
  v24 = MEMORY[0x277D84F90];
  sub_22F09D8CC(&qword_27DAA1E70, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1398, &qword_22F0D61C8);
  sub_22F08E6A8(&qword_27DAA1E80, &qword_27DAA1398, &qword_22F0D61C8);
  sub_22F0D13EC();
  MEMORY[0x2318FD7C0](0, v17, v14, v19);
  _Block_release(v19);
  (*(v23 + 8))(v14, v12);
  (*(v15 + 8))(v17, v22);
  return sub_22F0D00CC();
}

double sub_22F09CD4C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22F08F590();
  swift_beginAccess();
  sub_22F0CFF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1158, &unk_22F0DA960);
  v6 = sub_22F0D167C();

  _s6People011BMStoreDataA0O9logicSortySaySo0bC0_pGAFFZ_0(v6);
  v8 = v7;

  a2(v8);

  return result;
}

void sub_22F09CE14(uint64_t a1, unsigned __int8 a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = sub_22F0D0A4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22F0D0A6C();
  isa = v13[-1].isa;
  v48 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16 && (v17 = [v16 eventBody]) != 0)
  {
    v18 = v17;
    v46 = a3[2];
    v19 = swift_allocObject();
    v19[2] = *(v8 + 80);
    v19[3] = a4;
    v19[4] = v18;
    aBlock[4] = sub_22F09D8C0;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F009868;
    aBlock[3] = &block_descriptor_30;
    v45 = _Block_copy(aBlock);
    sub_22F0CFFAC();
    swift_unknownObjectRetain();
    sub_22F0D0A5C();
    v50 = MEMORY[0x277D84F90];
    sub_22F09D8CC(&qword_27DAA1E70, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1398, &qword_22F0D61C8);
    sub_22F08E6A8(&qword_27DAA1E80, &qword_27DAA1398, &qword_22F0D61C8);
    sub_22F0D13EC();
    v20 = v45;
    MEMORY[0x2318FD7C0](0, v15, v12, v45);
    swift_unknownObjectRelease();
    _Block_release(v20);
    swift_unknownObjectRelease();
    (*(v10 + 8))(v12, v9);
    (*(isa + 1))(v15, v48);
    sub_22F0D00CC();
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_280CBDBD8 != -1)
    {
      swift_once();
    }

    v21 = sub_22F0D0A1C();
    __swift_project_value_buffer(v21, qword_280CBDBE0);
    swift_unknownObjectRetain();
    v48 = sub_22F0D09FC();
    v22 = sub_22F0D123C();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v48, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136315394;
      if (a2 > 4u)
      {
        v34 = 0x7373654D64616572;
        v35 = 0xEB00000000656761;
        v36 = 0xEA00000000006C6CLL;
        v37 = 0x614364657373696DLL;
        if (a2 != 8)
        {
          v37 = 0x7261646E656C6163;
          v36 = 0xE800000000000000;
        }

        if (a2 != 7)
        {
          v34 = v37;
          v35 = v36;
        }

        v38 = 0x617453646C696863;
        v39 = 0xEA00000000006574;
        if (a2 != 5)
        {
          v38 = 0x654D646165726E75;
          v39 = 0xED00006567617373;
        }

        if (a2 <= 6u)
        {
          v31 = v38;
        }

        else
        {
          v31 = v34;
        }

        if (a2 <= 6u)
        {
          v32 = v39;
        }

        else
        {
          v32 = v35;
        }
      }

      else
      {
        v25 = 0xEF7974696C696261;
        v26 = 0x6C69617641646E64;
        v27 = 0xE800000000000000;
        v28 = 0x6E6F697461636F6CLL;
        v29 = 0xEF74736575716552;
        v30 = 0x7975426F546B7361;
        if (a2 != 3)
        {
          v30 = 0xD000000000000011;
          v29 = 0x800000022F0DC350;
        }

        if (a2 != 2)
        {
          v28 = v30;
          v27 = v29;
        }

        if (a2)
        {
          v26 = 0x74536E6F69746F6DLL;
          v25 = 0xEB00000000657461;
        }

        if (a2 <= 1u)
        {
          v31 = v26;
        }

        else
        {
          v31 = v28;
        }

        if (a2 <= 1u)
        {
          v32 = v25;
        }

        else
        {
          v32 = v27;
        }
      }

      v40 = sub_22F00A560(v31, v32, aBlock);

      *(v23 + 4) = v40;
      *(v23 + 12) = 2080;
      v50 = a1;
      swift_unknownObjectRetain();
      v41 = sub_22F0D0CFC();
      v43 = sub_22F00A560(v41, v42, aBlock);

      *(v23 + 14) = v43;
      _os_log_impl(&dword_22EFE1000, v48, v22, "%s event wrong: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v24, -1, -1);
      MEMORY[0x2318FE8B0](v23, -1, -1);
    }

    else
    {
      v33 = v48;
    }
  }
}

uint64_t sub_22F09D48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_22F0D103C();
  swift_unknownObjectRetain();
  sub_22F0D100C();
  return swift_endAccess();
}

uint64_t BiomeStreamReader.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22F0CFFAC();
}

uint64_t dispatch thunk of BiomeStreamReader.collectEvents(statusType:maxAge:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 112) + **(*v2 + 112));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22F01F1CC;

  return v8(a1, a2);
}

uint64_t objectdestroy_18Tm(void (*a1)(void))
{
  sub_22F0D00CC();
  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_22F09D8CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_22F09D970(uint64_t a1, unsigned __int8 a2)
{
  sub_22F0D0D5C();

  return result;
}

double sub_22F09DA8C(uint64_t a1, unsigned __int8 a2)
{
  sub_22F0D0D5C();

  return result;
}

uint64_t sub_22F09DC44(uint64_t a1, unsigned __int8 a2)
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F09DD3C(uint64_t a1, unsigned __int8 a2)
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F09DE6C(uint64_t a1, unsigned __int8 a2)
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F09DF68(uint64_t a1, char a2)
{
  sub_22F0D199C();
  if (a2)
  {
    v3 = 0x3FD999999999999ALL;
  }

  else
  {
    v3 = 0x3FF0000000000000;
  }

  MEMORY[0x2318FDEF0](v3);
  return sub_22F0D19CC();
}

uint64_t AppBundleResolver.__allocating_init()(uint64_t a1)
{
  type metadata accessor for AppBundleResolver();
  result = swift_allocObject();
  *(result + 16) = sub_22F09EEDC;
  *(result + 24) = 0;
  return result;
}

uint64_t BundleAppInfo.displayName.getter()
{
  v1 = *v0;
  sub_22F0CFF1C();
  return v1;
}

uint64_t BundleAppInfo.thumbnail.getter()
{
  v1 = *(v0 + 16);
  sub_22F0CFF1C();
  return v1;
}

uint64_t BundleAppInfo.thumbnailImage.getter()
{
  v1 = *(v0 + 32);
  sub_22F0303BC(v1, *(v0 + 40));
  return v1;
}

People::FirstPartyApps_optional __swiftcall FirstPartyApps.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F0D174C();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FirstPartyApps.rawValue.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x697261666173;
  if (v1 != 6)
  {
    v3 = 0x69746E6565726373;
  }

  v4 = 0x656D697465636166;
  if (v1 != 4)
  {
    v4 = 0x736567617373656DLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x65726F7473707061;
  if (v1 != 2)
  {
    v5 = 0x6172656D6163;
  }

  if (*v0)
  {
    v2 = 0x736F746F6870;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_22F09E210(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE600000000000000;
  v6 = 0x697261666173;
  if (v2 != 6)
  {
    v6 = 0x69746E6565726373;
    v5 = 0xEA0000000000656DLL;
  }

  v7 = 0x656D697465636166;
  if (v2 != 4)
  {
    v7 = 0x736567617373656DLL;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE800000000000000;
  }

  v8 = 0xE800000000000000;
  v9 = 0x65726F7473707061;
  if (v2 != 2)
  {
    v9 = 0x6172656D6163;
    v8 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x736F746F6870;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

id sub_22F09E30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = sub_22F0D00EC();
  v11[4] = a2;
  v11[5] = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_22F09E3E8;
  v11[3] = &block_descriptor_11;
  v8 = _Block_copy(v11);
  sub_22F0CFFAC();
  v9 = [v6 dataTaskWithRequest:v7 completionHandler:v8];

  _Block_release(v8);
  sub_22F0D00CC();
  return v9;
}

uint64_t sub_22F09E3E8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_22F0CFFAC();
    v8 = v6;
    v6 = sub_22F0D049C();
    v10 = v9;
  }

  else
  {
    sub_22F0CFFAC();
    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_22F00AB48(v6, v10);

  return sub_22F0D00CC();
}

void sub_22F09E4C0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v31 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA20D8, &qword_22F0DACE8);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for AppBundleResolver.AppInfo(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F0A38F4();
  sub_22F0D19EC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v28 = v14;
    v29 = a1;
    sub_22F0D043C();
    v37 = 0;
    sub_22F0A3948(&qword_27DAA20E8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    v15 = v31;
    v16 = v33;
    sub_22F0D176C();
    v17 = v15;
    v18 = v28;
    sub_22F0361C4(v17, v28);
    v36 = 1;
    sub_22F0D176C();
    sub_22F0361C4(v7, v18 + v12[5]);
    v35 = 2;
    v19 = sub_22F0D177C();
    v20 = v18;
    v21 = v29;
    v22 = (v20 + v12[6]);
    *v22 = v19;
    v22[1] = v23;
    v34 = 3;
    v24 = sub_22F0D177C();
    v26 = v25;
    (*(v32 + 8))(v11, v16);
    v27 = (v20 + v12[7]);
    *v27 = v24;
    v27[1] = v26;
    sub_22F0A3304(v20, v30);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    sub_22F0A3368(v20);
  }
}

uint64_t sub_22F09E914()
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

double sub_22F09E9E0(uint64_t a1)
{
  sub_22F0D0D5C();

  return result;
}

uint64_t sub_22F09EA98(uint64_t a1)
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

unint64_t sub_22F09EB60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22F0A361C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22F09EB90(uint64_t *a1@<X8>)
{
  v2 = 0xED00003231356C72;
  v3 = 0xE900000000000065;
  v4 = 0x6D614E6B63617274;
  if (*v1 != 2)
  {
    v4 = 0x6449656C646E7562;
    v3 = 0xE800000000000000;
  }

  if (*v1)
  {
    v2 = 0xED00003030316C72;
  }

  if (*v1 <= 1u)
  {
    v5 = 0x556B726F77747261;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v3;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_22F09EC2C()
{
  v1 = 0x6D614E6B63617274;
  if (*v0 != 2)
  {
    v1 = 0x6449656C646E7562;
  }

  if (*v0 <= 1u)
  {
    return 0x556B726F77747261;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_22F09ECB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F0A361C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F09ECD8(uint64_t a1)
{
  v2 = sub_22F0A38F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F09ED14(uint64_t a1)
{
  v2 = sub_22F0A38F4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22F09ED80(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_22F0D188C();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_22F09EE08(uint64_t a1)
{
  v2 = sub_22F0A37EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F09EE44(uint64_t a1)
{
  v2 = sub_22F0A37EC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_22F09EE80@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_22F0A3668(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t static AppBundleResolver.shared.getter(uint64_t a1)
{
  v1 = type metadata accessor for AppBundleResolver();

  return MEMORY[0x2821FEAF0](v1, &unk_2818EA740);
}

unint64_t sub_22F09EEDC@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() ephemeralSessionConfiguration];
  v3 = [objc_opt_self() sessionWithConfiguration:v2 delegate:0 delegateQueue:0];

  result = sub_22F0A3520();
  a1[3] = result;
  a1[4] = &off_2843D0B88;
  *a1 = v3;
  return result;
}

void sub_22F09EF98(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v45 = a5;
  v46 = a2;
  v7 = type metadata accessor for AppBundleResolver.AppInfo(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2080, &qword_22F0DAC40);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  sub_22F0D013C();
  swift_allocObject();
  sub_22F0D012C();
  sub_22F0A32B0();
  sub_22F0D011C();
  v42 = v19;
  v43 = v17;
  v44 = v11;
  v46 = 0;
  sub_22F0D00CC();
  v29 = v47;
  v30 = v47[2];
  if (v30)
  {
    v31 = 0;
    while (v31 < *(v29 + 16))
    {
      sub_22F0A3304(v29 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v31, v13);
      v32 = &v13[*(v7 + 28)];
      v33 = *v32 == a3 && *(v32 + 1) == a4;
      if (v33 || (sub_22F0D188C() & 1) != 0)
      {

        v35 = v42;
        sub_22F0A33C4(v13, v42);
        v34 = 0;
        goto LABEL_17;
      }

      ++v31;
      sub_22F0A3368(v13);
      if (v30 == v31)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    swift_once();
    v20 = sub_22F0D0A1C();
    __swift_project_value_buffer(v20, qword_280CBDB98);
    v21 = v31;
    v22 = sub_22F0D09FC();
    v23 = sub_22F0D123C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v47 = v25;
      *v24 = 136315138;
      swift_getErrorValue();
      v26 = sub_22F0D192C();
      v28 = sub_22F00A560(v26, v27, &v47);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_22EFE1000, v22, v23, "icon fetch json serialize failure %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2318FE8B0](v25, -1, -1);
      MEMORY[0x2318FE8B0](v24, -1, -1);
    }

    else
    {
    }

    v36 = v45;
    *v45 = xmmword_22F0DA970;
    v36[1] = 0u;
    v36[2] = 0u;
  }

  else
  {
LABEL_13:

    v34 = 1;
    v35 = v42;
LABEL_17:
    (*(v8 + 56))(v35, v34, 1, v7);
    v37 = v43;
    sub_22F049FF4(v35, v43, &qword_27DAA2080, &qword_22F0DAC40);
    v38 = (*(v8 + 48))(v37, 1, v7);
    v39 = v45;
    v40 = v44;
    if (v38 == 1)
    {
      sub_22F003A4C(v35, &qword_27DAA2080, &qword_22F0DAC40);
      *v39 = xmmword_22F0DA970;
      v39[1] = 0u;
      v39[2] = 0u;
    }

    else
    {
      sub_22F0A33C4(v37, v44);
      sub_22F09F444(v40, v39);
      sub_22F0A3368(v40);
      sub_22F003A4C(v35, &qword_27DAA2080, &qword_22F0DAC40);
    }
  }
}

double sub_22F09F444@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  sub_22F049FF4(a1, &v21 - v8, &qword_27DAA10F8, &qword_22F0D5320);
  v10 = sub_22F0D043C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v9, 1, v10) == 1)
  {
    sub_22F003A4C(v9, &qword_27DAA10F8, &qword_22F0D5320);
    v13 = type metadata accessor for AppBundleResolver.AppInfo(0);
    sub_22F049FF4(a1 + *(v13 + 20), v7, &qword_27DAA10F8, &qword_22F0D5320);
    if (v12(v7, 1, v10) == 1)
    {
      sub_22F003A4C(v7, &qword_27DAA10F8, &qword_22F0D5320);
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v14 = sub_22F0D038C();
      v15 = v17;
      (*(v11 + 8))(v7, v10);
    }
  }

  else
  {
    v14 = sub_22F0D038C();
    v15 = v16;
    (*(v11 + 8))(v9, v10);
  }

  v18 = (a1 + *(type metadata accessor for AppBundleResolver.AppInfo(0) + 24));
  v19 = v18[1];
  *a2 = *v18;
  *(a2 + 8) = v19;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = xmmword_22F0D6620;
  sub_22F0CFF1C();
  return result;
}

uint64_t sub_22F09F66C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v155 = a3;
  v5 = sub_22F0D043C();
  v153 = *(v5 - 8);
  v154 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v148 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v151 = &v147 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v149 = &v147 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v150 = &v147 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v147 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v152 = &v147 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v147 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v147 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v147 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v147 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v147 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v147 - v34;
  v158 = xmmword_22F0D6620;
  v156 = a1;
  if (a1 == 0xD000000000000012 && 0x800000022F0DF620 == a2 || (sub_22F0D188C() & 1) != 0)
  {
    type metadata accessor for DaemonConnection();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v37 = objc_opt_self();
    v38 = [v37 bundleForClass_];
    v39 = sub_22F0D031C();
    v41 = v40;

    v42 = sub_22F05AF80(v156, a2);
    if (v43 >> 60 == 15)
    {
      type metadata accessor for AppBundleResolver();
      v44 = [v37 bundleForClass_];
      v45 = sub_22F0D0C7C();
      v46 = sub_22F0D0C7C();
      v47 = [v44 URLForResource:v45 withExtension:v46];

      if (!v47)
      {
        v67 = 0xF000000000000000;
        sub_22F00AB48(0, 0xF000000000000000);

        *&v158 = 0;
        v50 = v41;
        goto LABEL_26;
      }

      sub_22F0D03EC();

      v48 = v153;
      v49 = v154;
      (*(v153 + 32))(v35, v33, v154);
      v65 = sub_22F0D044C();
      v67 = v66;
      (*(v48 + 8))(v35, v49);

      v69 = *(&v158 + 1);
      v68 = v158;
    }

    else
    {
      v65 = v42;
      v67 = v43;
      v68 = 0;
      v69 = 0xF000000000000000;
    }

    sub_22F00AB48(v68, v69);
    *&v158 = v65;
    v50 = v41;
LABEL_26:
    *(&v158 + 1) = v67;
    goto LABEL_27;
  }

  if (v156 == 0xD000000000000012 && 0x800000022F0DF640 == a2 || (sub_22F0D188C() & 1) != 0)
  {
    type metadata accessor for DaemonConnection();
    v51 = swift_getObjCClassFromMetadata();
    v52 = objc_opt_self();
    v53 = [v52 bundleForClass_];
    v54 = sub_22F0D031C();
    v152 = v55;

    v56 = sub_22F05AF80(v156, a2);
    if (v57 >> 60 == 15)
    {
      type metadata accessor for AppBundleResolver();
      v58 = [v52 bundleForClass_];
      v59 = sub_22F0D0C7C();
      v60 = sub_22F0D0C7C();
      v61 = [v58 URLForResource:v59 withExtension:v60];

      if (!v61)
      {
        v67 = 0xF000000000000000;
        sub_22F00AB48(0, 0xF000000000000000);

        *&v158 = 0;
        goto LABEL_25;
      }

      sub_22F0D03EC();

      v62 = v153;
      v63 = v27;
      v64 = v154;
      (*(v153 + 32))(v30, v63, v154);
      v98 = sub_22F0D044C();
      v67 = v99;
      (*(v62 + 8))(v30, v64);

      v101 = *(&v158 + 1);
      v100 = v158;
    }

    else
    {
      v98 = v56;
      v67 = v57;
      v100 = 0;
      v101 = 0xF000000000000000;
    }

    sub_22F00AB48(v100, v101);
    *&v158 = v98;
LABEL_25:
    v39 = v54;
    v50 = v152;
    goto LABEL_26;
  }

  if (v156 == 0xD000000000000019 && 0x800000022F0DF660 == a2 || (sub_22F0D188C() & 1) != 0)
  {
    type metadata accessor for DaemonConnection();
    v70 = swift_getObjCClassFromMetadata();
    v71 = objc_opt_self();
    v72 = [v71 bundleForClass_];
    v39 = sub_22F0D031C();
    v50 = v73;

    v74 = sub_22F05AF80(v156, a2);
    if (v75 >> 60 == 15)
    {
      type metadata accessor for AppBundleResolver();
      v76 = [v71 bundleForClass_];
      v77 = sub_22F0D0C7C();
      v78 = sub_22F0D0C7C();
      v79 = [v76 URLForResource:v77 withExtension:v78];

      if (v79)
      {
        sub_22F0D03EC();

        v80 = v153;
        v81 = v154;
        (*(v153 + 32))(v24, v21, v154);
        v118 = sub_22F0D044C();
        v67 = v119;
        (*(v80 + 8))(v24, v81);

        sub_22F00AB48(v158, *(&v158 + 1));
        *&v158 = v118;
      }

      else
      {
        v67 = 0xF000000000000000;
        sub_22F00AB48(0, 0xF000000000000000);

        *&v158 = 0;
      }
    }

    else
    {
      v97 = v74;
      v67 = v75;
      sub_22F00AB48(0, 0xF000000000000000);
      *&v158 = v97;
    }

    goto LABEL_26;
  }

  if (v156 == 0xD000000000000010 && 0x800000022F0DF680 == a2 || (sub_22F0D188C() & 1) != 0)
  {
    type metadata accessor for DaemonConnection();
    v102 = swift_getObjCClassFromMetadata();
    v103 = objc_opt_self();
    v104 = [v103 bundleForClass_];
    v39 = sub_22F0D031C();
    v50 = v105;

    v106 = sub_22F05AF80(v156, a2);
    if (v107 >> 60 == 15)
    {
      type metadata accessor for AppBundleResolver();
      v108 = [v103 bundleForClass_];
      v109 = sub_22F0D0C7C();
      v110 = sub_22F0D0C7C();
      v111 = [v108 URLForResource:v109 withExtension:v110];

      if (v111)
      {
        sub_22F0D03EC();

        v113 = v152;
        v112 = v153;
        v114 = v16;
        v115 = v154;
        (*(v153 + 32))(v152, v114, v154);
        v116 = sub_22F0D044C();
LABEL_69:
        v142 = v116;
        v67 = v117;
        (*(v112 + 8))(v113, v115);

        v144 = *(&v158 + 1);
        v143 = v158;
        goto LABEL_67;
      }

LABEL_55:
      v67 = 0xF000000000000000;
      sub_22F00AB48(0, 0xF000000000000000);

      *&v158 = 0;
      goto LABEL_26;
    }

LABEL_66:
    v142 = v106;
    v67 = v107;
    v143 = 0;
    v144 = 0xF000000000000000;
LABEL_67:
    sub_22F00AB48(v143, v144);
LABEL_68:
    *&v158 = v142;
    goto LABEL_26;
  }

  if (v156 == 0xD000000000000013 && 0x800000022F0DCC30 == a2 || (sub_22F0D188C() & 1) != 0)
  {
    type metadata accessor for DaemonConnection();
    v120 = swift_getObjCClassFromMetadata();
    v121 = objc_opt_self();
    v122 = [v121 bundleForClass_];
    v39 = sub_22F0D031C();
    v50 = v123;

    v124 = sub_22F05AF80(v156, a2);
    v126 = v154;
    if (v125 >> 60 != 15)
    {
      v133 = v124;
      v67 = v125;
      sub_22F00AB48(0, 0xF000000000000000);
      *&v158 = v133;
      goto LABEL_26;
    }

    type metadata accessor for AppBundleResolver();
    v108 = [v121 bundleForClass_];
    v127 = sub_22F0D0C7C();
    v128 = sub_22F0D0C7C();
    v129 = [v108 URLForResource:v127 withExtension:v128];

    if (v129)
    {
      v130 = v149;
      sub_22F0D03EC();

      v131 = v153;
      v132 = v150;
      (*(v153 + 32))(v150, v130, v126);
      v145 = sub_22F0D044C();
      v67 = v146;
      (*(v131 + 8))(v132, v126);

      sub_22F00AB48(v158, *(&v158 + 1));
      *&v158 = v145;
      goto LABEL_26;
    }

    goto LABEL_55;
  }

  if (v156 == 0xD000000000000016 && 0x800000022F0DD8D0 == a2 || (sub_22F0D188C() & 1) != 0 || v156 == 0xD000000000000010 && 0x800000022F0DF6A0 == a2 || (sub_22F0D188C() & 1) != 0)
  {
    type metadata accessor for DaemonConnection();
    v134 = swift_getObjCClassFromMetadata();
    v135 = objc_opt_self();
    v136 = [v135 bundleForClass_];
    v39 = sub_22F0D031C();
    v50 = v137;

    v106 = sub_22F05AF80(0xD000000000000016, 0x800000022F0DD8D0);
    v113 = v151;
    if (v107 >> 60 == 15)
    {
      type metadata accessor for AppBundleResolver();
      v108 = [v135 bundleForClass_];
      v138 = sub_22F0D0C7C();
      v139 = sub_22F0D0C7C();
      v140 = [v108 URLForResource:v138 withExtension:v139];

      if (!v140)
      {
        v67 = 0xF000000000000000;
        sub_22F00AB48(0, 0xF000000000000000);

        v142 = 0;
        goto LABEL_68;
      }

      v141 = v148;
      sub_22F0D03EC();

      v112 = v153;
      v115 = v154;
      (*(v153 + 32))(v113, v141, v154);
      v116 = sub_22F0D044C();
      goto LABEL_69;
    }

    goto LABEL_66;
  }

  v39 = 0;
  v50 = 0;
LABEL_27:
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v82 = sub_22F0D0A1C();
  __swift_project_value_buffer(v82, qword_280CBEC40);
  v83 = v158;
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  sub_22F0303BC(v83, *(&v83 + 1));
  v84 = sub_22F0D09FC();
  v85 = sub_22F0D122C();

  sub_22F00AB48(v83, *(&v83 + 1));
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v157[0] = v87;
    *v86 = 136315650;
    if (v50)
    {
      v88 = v39;
    }

    else
    {
      v88 = 7104878;
    }

    v89 = v39;
    if (v50)
    {
      v90 = v50;
    }

    else
    {
      v90 = 0xE300000000000000;
    }

    sub_22F0CFF1C();
    v91 = sub_22F00A560(v88, v90, v157);
    v39 = v89;

    *(v83 + 4) = v91;
    *(v83 + 12) = 2080;
    *(v83 + 14) = sub_22F00A560(v156, a2, v157);
    *(v83 + 22) = 2080;
    if (*(&v83 + 1) >> 60 == 15)
    {
      v92 = 1701736302;
    }

    else
    {
      v92 = 1635017060;
    }

    v93 = sub_22F00A560(v92, 0xE400000000000000, v157);

    *(v86 + 24) = v93;
    _os_log_impl(&dword_22EFE1000, v84, v85, "Fallback resolution:%s for:%s image:%s", v86, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v87, -1, -1);
    MEMORY[0x2318FE8B0](v86, -1, -1);
  }

  swift_beginAccess();
  v94 = v158;
  sub_22F0303BC(v158, *(&v158 + 1));
  result = sub_22F00AB48(v94, *(&v94 + 1));
  v96 = v155;
  *v155 = v39;
  v96[1] = v50;
  v96[2] = 0;
  v96[3] = 0;
  *(v96 + 2) = v94;
  return result;
}

uint64_t sub_22F0A0878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22F0A089C, 0, 0);
}

uint64_t sub_22F0A089C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_22F0A09A4;
  v6 = v0[2];

  return MEMORY[0x2822007B8](v6, 0, 0, 0xD000000000000017, 0x800000022F0DF6C0, sub_22F0A2D10, v4, &type metadata for BundleAppInfo);
}

uint64_t sub_22F0A09A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22F0A0AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2090, &qword_22F0DAC48);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  sub_22F0A0CA4(a3, a4, sub_22F0A34A4, v12);
  return sub_22F0D00CC();
}

uint64_t sub_22F0A0C14(uint64_t *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  sub_22F0303BC(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2090, &qword_22F0DAC48);
  return sub_22F0D108C();
}

uint64_t sub_22F0A0CA4(uint64_t a1, uint64_t a2, void (*a3)(__int128 *), uint64_t a4)
{
  v95 = a3;
  v96 = a4;
  v102 = a1;
  v103 = a2;
  v89 = sub_22F0D010C();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v92 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_22F0D043C();
  v91 = *(v93 - 8);
  v5 = MEMORY[0x28223BE20](v93);
  v86 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v90 = &v86 - v7;
  v8 = sub_22F0D069C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22F0D06BC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2060, &unk_22F0DA988);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v86 - v17;
  v98 = sub_22F0D021C();
  v101 = *(v98 - 8);
  v19 = MEMORY[0x28223BE20](v98);
  v99 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v100 = &v86 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v86 - v23;
  v25 = objc_allocWithZone(MEMORY[0x277CCACE0]);
  v26 = sub_22F0D0C7C();
  v27 = [v25 initWithString_];

  v97 = v27;
  if (v27)
  {
    sub_22F0D01EC();
    v28 = [objc_opt_self() currentLocale];
    sub_22F0D063C();

    sub_22F0D06AC();
    (*(v13 + 8))(v15, v12);
    sub_22F0D068C();
    (*(v9 + 8))(v11, v8);
    v29 = sub_22F0D065C();
    v30 = *(v29 - 8);
    v31 = (*(v30 + 48))(v18, 1, v29);
    v94 = v24;
    if (v31 == 1)
    {
      sub_22F003A4C(v18, &qword_27DAA2060, &unk_22F0DA988);
    }

    else
    {
      sub_22F0D060C();
      (*(v30 + 8))(v18, v29);
    }

    v43 = v98;
    v42 = v99;
    v44 = v100;
    v45 = v101;
    sub_22F0D01EC();

    sub_22F0D01EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E20, &qword_22F0D4FF0);
    v46 = *(v45 + 72);
    v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_22F0D97C0;
    v49 = v48 + v47;
    v50 = *(v45 + 16);
    v50(v49, v94, v43);
    v50(v49 + v46, v44, v43);
    v50(v49 + 2 * v46, v42, v43);
    v51 = sub_22F0D0F2C();

    v52 = v97;
    [v97 setQueryItems_];

    v53 = [v52 URL];
    v54 = v102;
    if (v53)
    {
      v55 = v90;
      v56 = v53;
      sub_22F0D03EC();

      (*(v91 + 16))(v86, v55, v93);
      v57 = sub_22F0D00FC();
      v58 = v87;
      (*(v87 + 16))(&v104, v57);
      v59 = swift_allocObject();
      v60 = v96;
      v59[2] = v95;
      v59[3] = v60;
      v61 = v101;
      v59[4] = v58;
      v59[5] = v54;
      v59[6] = v103;
      v62 = *(&v105 + 1);
      v63 = v106;
      __swift_project_boxed_opaque_existential_1(&v104, *(&v105 + 1));
      v64 = *(v63 + 8);
      sub_22F0CFFAC();
      sub_22F0CFFAC();
      sub_22F0CFF1C();
      v65 = v92;
      v66 = v64(v92, sub_22F0A2D1C, v59, v62, v63);
      [v66 resume];
      v67 = *(&v105 + 1);
      v68 = v106;
      __swift_project_boxed_opaque_existential_1(&v104, *(&v105 + 1));
      (*(v68 + 16))(v67, v68);

      sub_22F0D00CC();
      (*(v88 + 8))(v65, v89);
      (*(v91 + 8))(v90, v93);
      v69 = *(v61 + 8);
      v70 = v98;
      v69(v99, v98);
      v69(v100, v70);
      v69(v94, v70);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v104);
    }

    else
    {
      v71 = v43;
      v72 = v101;
      if (qword_280CBEC38 != -1)
      {
        swift_once();
      }

      v73 = sub_22F0D0A1C();
      __swift_project_value_buffer(v73, qword_280CBEC40);
      v74 = v103;
      sub_22F0CFF1C();
      v75 = sub_22F0D09FC();
      v76 = sub_22F0D123C();

      v77 = os_log_type_enabled(v75, v76);
      v78 = v99;
      if (v77)
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *&v104 = v80;
        *v79 = 136315138;
        *(v79 + 4) = sub_22F00A560(v54, v74, &v104);
        _os_log_impl(&dword_22EFE1000, v75, v76, "Lookup url error for %s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
        v81 = v80;
        v71 = v43;
        MEMORY[0x2318FE8B0](v81, -1, -1);
        MEMORY[0x2318FE8B0](v79, -1, -1);
      }

      v104 = 0u;
      v105 = 0u;
      v106 = 0;
      v107 = 0xF000000000000000;
      v82 = v94;
      v95(&v104);

      v83 = v106;
      v84 = v107;

      sub_22F00AB48(v83, v84);
      v85 = *(v72 + 8);
      v85(v78, v71);
      v85(v100, v71);
      return (v85)(v82, v71);
    }
  }

  else
  {
    v33 = v102;
    v32 = v103;
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v34 = sub_22F0D0A1C();
    __swift_project_value_buffer(v34, qword_280CBEC40);
    sub_22F0CFF1C();
    v35 = sub_22F0D09FC();
    v36 = sub_22F0D123C();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v104 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_22F00A560(v33, v32, &v104);
      _os_log_impl(&dword_22EFE1000, v35, v36, "Lookup url error for %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x2318FE8B0](v38, -1, -1);
      MEMORY[0x2318FE8B0](v37, -1, -1);
    }

    v104 = 0u;
    v105 = 0u;
    v106 = 0;
    v107 = 0xF000000000000000;
    v95(&v104);
    v39 = v106;
    v40 = v107;

    return sub_22F00AB48(v39, v40);
  }
}

uint64_t sub_22F0A17F0(uint64_t a1, unint64_t a2, id a3, uint64_t a4, void (*a5)(__int128 *), int a6, int a7, uint64_t a8, uint64_t a9)
{
  if (a2 >> 60 == 15)
  {
    if (a4)
    {
      swift_getErrorValue();
      v10 = sub_22F0D192C();
      v12 = v11;
    }

    else if (a3)
    {
      v22 = [a3 debugDescription];
      v10 = sub_22F0D0CAC();
      v12 = v23;
    }

    else
    {
      v12 = 0xED0000726F727265;
      v10 = 0x206E776F6E6B6E75;
    }

    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v28 = sub_22F0D0A1C();
    __swift_project_value_buffer(v28, qword_280CBEC40);
    sub_22F0CFF1C();
    v29 = sub_22F0D09FC();
    v30 = sub_22F0D123C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v40 = v32;
      *v31 = 136315138;
      v33 = sub_22F00A560(v10, v12, &v40);

      *(v31 + 4) = v33;
      _os_log_impl(&dword_22EFE1000, v29, v30, "icon fetch failure %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x2318FE8B0](v32, -1, -1);
      MEMORY[0x2318FE8B0](v31, -1, -1);
    }

    else
    {
    }

    v40 = 0u;
    v41 = 0u;
    *&v42 = 0;
    *(&v42 + 1) = 0xF000000000000000;
    a5(&v40);
    goto LABEL_21;
  }

  sub_22F00AC04(a1, a2);
  sub_22F09EF98(a2, a8, a9, &v40);
  v16 = v40;
  v17 = v41;
  v35 = *(&v42 + 1);
  v36 = v42;
  v19 = *(&v40 + 1);
  v18 = v40;
  if (!*(&v40 + 1))
  {
LABEL_10:
    if (*(&v17 + 1))
    {
      sub_22F0CFF1C();
      v25 = String.trimToNil()();
      countAndFlagsBits = v25.value._countAndFlagsBits;
      object = v25.value._object;
    }

    else
    {
      object = 0;
      countAndFlagsBits = v17;
    }

    *&v40 = v18;
    *(&v40 + 1) = v19;
    *&v41 = countAndFlagsBits;
    *(&v41 + 1) = object;
    v42 = xmmword_22F0D6620;
    a5(&v40);
    sub_22F00AB48(a1, a2);
    sub_22F0A3440(v16, *(&v16 + 1), v17, *(&v17 + 1), v36, v35);
LABEL_21:
    v21 = *(&v42 + 1);
    v20 = v42;
    goto LABEL_22;
  }

  if (*(&v40 + 1) != 1)
  {
    sub_22F0CFF1C();
    v24 = String.trimToNil()();
    v18 = v24.value._countAndFlagsBits;
    v19 = v24.value._object;

    goto LABEL_10;
  }

  sub_22F09F66C(a8, a9, &v40);
  v38[0] = v40;
  v38[1] = v41;
  v39 = v42;
  a5(v38);
  sub_22F00AB48(a1, a2);
  v21 = *(&v39 + 1);
  v20 = v39;
LABEL_22:

  return sub_22F00AB48(v20, v21);
}

uint64_t static AppBundleResolver.resolveThumbnail(_:_:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  *(v3 + 80) = swift_task_alloc();
  v5 = sub_22F0D043C();
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 - 8);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 160) = *a3;

  return MEMORY[0x2822009F8](sub_22F0A1C94, 0, 0);
}

uint64_t sub_22F0A1C94()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = v0[8];
    v0[16] = type metadata accessor for AppBundleResolver();
    v3 = swift_allocObject();
    v0[17] = v3;
    *(v3 + 16) = sub_22F09EEDC;
    *(v3 + 24) = 0;
    v4 = swift_task_alloc();
    v0[18] = v4;
    v4[2] = v3;
    v4[3] = v2;
    v4[4] = v1;
    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = sub_22F0A1EEC;

    return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000017, 0x800000022F0DF6C0, sub_22F0A3BC4, v4, &type metadata for BundleAppInfo);
  }

  else
  {
    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    v6 = sub_22F0D0A1C();
    __swift_project_value_buffer(v6, qword_27DAA1A28);
    v7 = sub_22F0D09FC();
    v8 = sub_22F0D123C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22EFE1000, v7, v8, "No bundle id", v9, 2u);
      MEMORY[0x2318FE8B0](v9, -1, -1);
    }

    v10 = v0[1];

    return v10(0, 0xF000000000000000);
  }
}

uint64_t sub_22F0A1EEC()
{

  return MEMORY[0x2822009F8](sub_22F0A2004, 0, 0);
}

uint64_t sub_22F0A2004()
{
  v48 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  if (v2 >> 60 != 15)
  {
    sub_22F00AC04(*(v0 + 48), *(v0 + 56));

    v7 = v1;
    v8 = v2;
    goto LABEL_40;
  }

  v46 = *(v0 + 48);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 80);
  sub_22F0CFF1C();
  sub_22F0D042C();

  if ((*(v3 + 48))(v5, 1, v4) == 1)
  {
    v6 = *(v0 + 160);
    sub_22F003A4C(*(v0 + 80), &qword_27DAA10F8, &qword_22F0D5320);
    if (!v6)
    {

LABEL_8:
      if (qword_27DAA0570 != -1)
      {
        swift_once();
      }

      v12 = sub_22F0D0A1C();
      __swift_project_value_buffer(v12, qword_27DAA1A28);
      v13 = sub_22F0D09FC();
      v14 = sub_22F0D122C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_22EFE1000, v13, v14, "resolveThumbnail no fallback requested, return nil", v15, 2u);
        MEMORY[0x2318FE8B0](v15, -1, -1);
      }

      goto LABEL_38;
    }

    v11 = sub_22F0D188C();

    if (v11)
    {
      goto LABEL_8;
    }

    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    v16 = sub_22F0D0A1C();
    __swift_project_value_buffer(v16, qword_27DAA1A28);
    sub_22F0CFF1C();
    v17 = sub_22F0D09FC();
    v18 = sub_22F0D122C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 160);
      v20 = *(v0 + 64);
      v43 = *(v0 + 72);
      v21 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v47[0] = v44;
      *v21 = 136315394;
      *(v21 + 4) = sub_22F00A560(v20, v43, v47);
      v22 = 0xE600000000000000;
      *(v21 + 12) = 2080;
      v23 = 0xE600000000000000;
      v24 = 0x697261666173;
      if (v19 != 6)
      {
        v24 = 0x69746E6565726373;
        v23 = 0xEA0000000000656DLL;
      }

      v25 = 0x656D697465636166;
      if (v19 != 4)
      {
        v25 = 0x736567617373656DLL;
      }

      if (v19 <= 5)
      {
        v24 = v25;
        v23 = 0xE800000000000000;
      }

      v26 = 0xE800000000000000;
      v27 = 0x65726F7473707061;
      if (v19 != 2)
      {
        v27 = 0x6172656D6163;
        v26 = 0xE600000000000000;
      }

      if (v19 == 1)
      {
        v27 = 0x736F746F6870;
      }

      else
      {
        v22 = v26;
      }

      if (v19 <= 3)
      {
        v28 = v27;
      }

      else
      {
        v28 = v24;
      }

      if (v19 <= 3)
      {
        v29 = v22;
      }

      else
      {
        v29 = v23;
      }

      v30 = sub_22F00A560(v28, v29, v47);

      *(v21 + 14) = v30;
      _os_log_impl(&dword_22EFE1000, v17, v18, "Thumbnail fallback for %s using %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v44, -1, -1);
      MEMORY[0x2318FE8B0](v21, -1, -1);
    }

    else
    {
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32 = [objc_opt_self() bundleForClass_];
    v33 = sub_22F0D0C7C();

    v34 = sub_22F0D0C7C();
    v35 = [v32 URLForResource:v33 withExtension:v34];

    if (!v35)
    {

LABEL_38:

      v7 = 0;
      v8 = 0xF000000000000000;
      goto LABEL_39;
    }

    v45 = v32;
    v37 = *(v0 + 104);
    v36 = *(v0 + 112);
    v39 = *(v0 + 88);
    v38 = *(v0 + 96);
    sub_22F0D03EC();

    (*(v38 + 32))(v36, v37, v39);
    v7 = sub_22F0D044C();
    v8 = v40;
    (*(*(v0 + 96) + 8))(*(v0 + 112), *(v0 + 88));
  }

  else
  {
    v9 = *(v0 + 96);
    (*(v9 + 32))(*(v0 + 120), *(v0 + 80), *(v0 + 88));
    v7 = sub_22F0D044C();
    v8 = v10;
    (*(v9 + 8))(*(v0 + 120), *(v0 + 88));
  }

LABEL_39:
  v1 = v46;
LABEL_40:

  sub_22F00AB48(v1, v2);
  sub_22F0D00CC();

  v41 = *(v0 + 8);

  return v41(v7, v8);
}

uint64_t AppBundleResolver.__deallocating_deinit()
{
  sub_22F0D00CC();

  return swift_deallocClassInstance();
}

uint64_t sub_22F0A28D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_22F0A2900, 0, 0);
}

uint64_t sub_22F0A2900()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_22F0A3BC0;
  v6 = v0[2];

  return MEMORY[0x2822007B8](v6, 0, 0, 0xD000000000000017, 0x800000022F0DF6C0, sub_22F0A3BC4, v4, &type metadata for BundleAppInfo);
}

uint64_t sub_22F0A2A20(unsigned __int8 *a1)
{
  v1 = sub_22F0D043C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v15[-v6];
  type metadata accessor for AppBundleResolver();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_22F0D0C7C();

  v11 = sub_22F0D0C7C();
  v12 = [v9 URLForResource:v10 withExtension:v11];

  if (v12)
  {
    sub_22F0D03EC();

    (*(v2 + 32))(v7, v5, v1);
    v13 = sub_22F0D044C();
    (*(v2 + 8))(v7, v1);

    return v13;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_22F0A2D50()
{
  result = qword_27DAA2068;
  if (!qword_27DAA2068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2068);
  }

  return result;
}

unint64_t sub_22F0A2DA8()
{
  result = qword_27DAA2070;
  if (!qword_27DAA2070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA2078, &qword_22F0DAA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2070);
  }

  return result;
}