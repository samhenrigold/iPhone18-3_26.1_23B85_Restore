uint64_t sub_22B212108()
{
  v1 = v0;
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22B116000, v7, v8, "Delete all energy guidance tracking from cache", v9, 2u);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = *(v1 + 112);
  if (!v10)
  {
    return 0;
  }

  v11 = *(v10 + 48);

  v12 = v11;
  sub_22B360E7C();

  return v14[23];
}

void sub_22B212318(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = MEMORY[0x23188EEB0]();
  sub_22B339F64(0xD000000000000015, 0x800000022B36C8A0, a1, &v7);
  objc_autoreleasePoolPop(v5);
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v6 = v7;
    [*(a1 + 48) reset];
    *a2 = v6;
  }
}

id sub_22B2123B8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v28 = MEMORY[0x23188EEB0]();
  v18 = sub_22B20FCEC(a2, a3, a4, a5, a6, a7, a8, a9, a10, a1);
  if (v18)
  {
    isEscapingClosureAtFileLocation = v18;
    v20 = [v18 managedObjectContext];
    if (!v20)
    {
LABEL_5:

      goto LABEL_6;
    }

    v21 = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = isEscapingClosureAtFileLocation;
    *(v22 + 24) = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_22B2126D4;
    *(v23 + 24) = v22;
    aBlock[4] = sub_22B128240;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B32556C;
    aBlock[3] = &block_descriptor_18;
    v24 = _Block_copy(aBlock);
    v25 = v21;
    v26 = isEscapingClosureAtFileLocation;

    [v25 performBlockAndWait_];

    _Block_release(v24);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

LABEL_6:
  objc_autoreleasePoolPop(v28);
  return [*(a1 + 48) reset];
}

uint64_t type metadata accessor for CDEnergyGuidanceTracker(uint64_t a1)
{
  result = qword_281409858;
  if (!qword_281409858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B212670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CDEnergyGuidanceTracker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22B2126DC()
{
  v1 = *(sub_22B35DE9C() - 8);
  v2 = (*(v1 + 80) + 42) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_22B210314(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_22B2127D0(uint64_t a1)
{
  result = sub_22B35DE9C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22B212870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
  v5[13] = swift_task_alloc();
  v5[14] = *(type metadata accessor for CDEnergyWindowNotifications(0) - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v6 = sub_22B36052C();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2129F8, v4, 0);
}

uint64_t sub_22B2129F8()
{
  v21 = v0;
  if (v0[11])
  {
    if (qword_28140AF70 != -1)
    {
      swift_once();
    }

    v1 = qword_28140BDB8;
    v0[23] = qword_28140BDB8;
    v2 = sub_22B212C7C;
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v3 = v0[20];
    v4 = v0[17];
    v5 = v0[18];
    v6 = __swift_project_value_buffer(v4, qword_28140BD10);
    v0[25] = v6;
    swift_beginAccess();
    v7 = *(v5 + 16);
    v0[26] = v7;
    v0[27] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v7(v3, v6, v4);

    v8 = sub_22B36050C();
    v9 = sub_22B360D0C();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[20];
    v12 = v0[17];
    v13 = v0[18];
    if (v10)
    {
      v15 = v0[8];
      v14 = v0[9];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_22B1A7B20(v15, v14, &v20);
      _os_log_impl(&dword_22B116000, v8, v9, "Parsing for %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x23188F650](v17, -1, -1);
      MEMORY[0x23188F650](v16, -1, -1);
    }

    v18 = *(v13 + 8);
    v18(v11, v12);
    v0[28] = v18;
    if (qword_28140AF70 != -1)
    {
      swift_once();
    }

    v1 = qword_28140BDB8;
    v0[29] = qword_28140BDB8;
    v2 = sub_22B213240;
  }

  return MEMORY[0x2822009F8](v2, v1, 0);
}

uint64_t sub_22B212C7C()
{
  v1 = v0[12];
  v0[24] = sub_22B17FAD0(v0[8], v0[9], v0[10], v0[11]);

  return MEMORY[0x2822009F8](sub_22B212CF4, v1, 0);
}

uint64_t sub_22B212CF4()
{
  v55 = v0;
  if (qword_28140A0C8 != -1)
  {
LABEL_32:
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[18];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  v49 = *(v3 + 16);
  v50 = v4;
  v49(v1, v4, v2);

  v5 = sub_22B36050C();
  v6 = sub_22B360D0C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[22];
  v10 = v0[17];
  v9 = v0[18];
  if (v7)
  {
    v11 = v0[10];
    v47 = v0[11];
    v51 = v0[22];
    v12 = v0[8];
    v13 = v0[9];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v54 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_22B1A7B20(v12, v13, &v54);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_22B1A7B20(v11, v47, &v54);
    _os_log_impl(&dword_22B116000, v5, v6, "Parsing for %s and %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);

    v16 = *(v9 + 8);
    v17 = v51;
  }

  else
  {

    v16 = *(v9 + 8);
    v17 = v8;
  }

  v48 = v16;
  v16(v17, v10);
  v18 = v0[24];
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_24:

    v37 = 0;
    goto LABEL_28;
  }

  v20 = 0;
  v21 = v0[16];
  v53 = v0[14];
  v52 = v18 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
  v45 = *(v18 + 16);
  v46 = v0[24];
  while (1)
  {
    if (v20 >= *(v18 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    v22 = v0[16];
    v24 = v0[8];
    v23 = v0[9];
    sub_22B180AC8(v52 + *(v53 + 72) * v20, v22);
    v25 = *v22 == v24 && *(v21 + 8) == v23;
    if (v25 || (sub_22B36134C() & 1) != 0)
    {
      v26 = *(v21 + 80);
      if (v26)
      {
        if (*(v21 + 72) == v0[10] && v26 == v0[11] || (sub_22B36134C() & 1) != 0)
        {
          break;
        }
      }
    }

LABEL_7:
    ++v20;
    sub_22B180B2C(v0[16]);
    if (v19 == v20)
    {
      goto LABEL_24;
    }
  }

  v49(v0[21], v50, v0[17]);

  v27 = sub_22B36050C();
  v28 = sub_22B360D0C();

  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[21];
  v31 = v0[17];
  if (v29)
  {
    v42 = v0[10];
    v43 = v0[11];
    v44 = v0[21];
    v32 = v0[8];
    v33 = v0[9];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v54 = v35;
    *v34 = 136315394;
    *(v34 + 4) = sub_22B1A7B20(v32, v33, &v54);
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_22B1A7B20(v42, v43, &v54);
    _os_log_impl(&dword_22B116000, v27, v28, "Found entry for %s and %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v35, -1, -1);
    MEMORY[0x23188F650](v34, -1, -1);

    v36 = v44;
  }

  else
  {

    v36 = v30;
  }

  v48(v36, v31);
  v19 = v45;
  v18 = v46;
  if (*(v21 + 17))
  {
    if (*(v21 + 88))
    {
      goto LABEL_26;
    }

    goto LABEL_7;
  }

  if (*(v21 + 88))
  {
LABEL_26:
    v38 = v0[16];

    sub_22B180B2C(v38);
    v37 = 3;
    goto LABEL_28;
  }

  v39 = v0[16];

  sub_22B180B2C(v39);
  v37 = 2;
LABEL_28:

  v40 = v0[1];

  return v40(v37);
}

uint64_t sub_22B213240()
{
  v1 = v0[12];
  v0[30] = sub_22B17F314(v0[8], v0[9]);

  return MEMORY[0x2822009F8](sub_22B2132B4, v1, 0);
}

void sub_22B2132B4()
{
  v35 = v0;
  v1 = *(v0 + 240);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 120);
    v33 = *(v0 + 112);
    v32 = v1 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v31 = *(v1 + 16);
    do
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v5 = *(v0 + 120);
      v7 = *(v0 + 64);
      v6 = *(v0 + 72);
      sub_22B180AC8(v32 + *(v33 + 72) * v3, v5);
      v8 = *v5 == v7 && *(v4 + 8) == v6;
      if (v8 || (sub_22B36134C() & 1) != 0)
      {
        v9 = *(v0 + 104);

        sub_22B35DEBC();

        v10 = sub_22B35DF1C();
        v11 = (*(*(v10 - 8) + 48))(v9, 1, v10);
        sub_22B123284(v9, &qword_27D8BA970, &unk_22B363560);
        if (v11 == 1)
        {
          (*(v0 + 208))(*(v0 + 152), *(v0 + 200), *(v0 + 136));

          v12 = sub_22B36050C();
          v13 = sub_22B360D0C();

          v14 = os_log_type_enabled(v12, v13);
          v15 = *(v0 + 224);
          v16 = *(v0 + 152);
          v17 = *(v0 + 136);
          if (v14)
          {
            v30 = *(v0 + 136);
            v18 = v1;
            v19 = *(v0 + 64);
            v20 = *(v0 + 72);
            v29 = *(v0 + 224);
            v21 = swift_slowAlloc();
            v28 = v16;
            v22 = swift_slowAlloc();
            v34 = v22;
            *v21 = 136315138;
            v23 = v19;
            v1 = v18;
            *(v21 + 4) = sub_22B1A7B20(v23, v20, &v34);
            _os_log_impl(&dword_22B116000, v12, v13, "Found entry for %s", v21, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v22);
            MEMORY[0x23188F650](v22, -1, -1);
            MEMORY[0x23188F650](v21, -1, -1);

            v29(v28, v30);
          }

          else
          {

            v15(v16, v17);
          }

          v2 = v31;
          if ((*(v4 + 17) & 1) == 0)
          {
            if (*(v4 + 88))
            {
LABEL_19:
              v25 = *(v0 + 120);

              sub_22B180B2C(v25);
              v24 = 3;
              goto LABEL_21;
            }

            v26 = *(v0 + 120);

            sub_22B180B2C(v26);
            v24 = 2;
            goto LABEL_21;
          }

          if (*(v4 + 88))
          {
            goto LABEL_19;
          }
        }
      }

      ++v3;
      sub_22B180B2C(*(v0 + 120));
    }

    while (v2 != v3);
  }

  v24 = 0;
LABEL_21:

  v27 = *(v0 + 8);

  v27(v24);
}

uint64_t sub_22B21365C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 312) = a2;
  *(v4 + 320) = v3;
  *(v4 + 304) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790);
  *(v4 + 328) = swift_task_alloc();
  v6 = sub_22B35DE9C();
  *(v4 + 336) = v6;
  *(v4 + 344) = *(v6 - 8);
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();
  v7 = sub_22B35EE8C();
  *(v4 + 368) = v7;
  *(v4 + 376) = *(v7 - 8);
  *(v4 + 384) = swift_task_alloc();
  v8 = sub_22B36052C();
  *(v4 + 392) = v8;
  *(v4 + 400) = *(v8 - 8);
  *(v4 + 408) = swift_task_alloc();
  *(v4 + 416) = swift_task_alloc();
  v9 = *(a3 + 48);
  *(v4 + 48) = *(a3 + 32);
  *(v4 + 64) = v9;
  *(v4 + 80) = *(a3 + 64);
  v10 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v10;

  return MEMORY[0x2822009F8](sub_22B21384C, v3, 0);
}

uint64_t sub_22B21384C()
{
  if (qword_28140A7B0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 424) = v1;
  *v1 = v0;
  v1[1] = sub_22B213910;

  return sub_22B28C6E0();
}

uint64_t sub_22B213910(char a1)
{
  v2 = *(*v1 + 320);
  *(*v1 + 81) = a1;

  return MEMORY[0x2822009F8](sub_22B213A28, v2, 0);
}

uint64_t sub_22B213A28()
{
  if (*(v0 + 81))
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 400);
    v1 = *(v0 + 408);
    v3 = *(v0 + 392);
    v4 = __swift_project_value_buffer(v3, qword_28140BD10);
    swift_beginAccess();
    (*(v2 + 16))(v1, v4, v3);
    v5 = sub_22B36050C();
    v6 = sub_22B360D2C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B116000, v5, v6, "Permission for notifications granted", v7, 2u);
      MEMORY[0x23188F650](v7, -1, -1);
    }

    v9 = *(v0 + 400);
    v8 = *(v0 + 408);
    v11 = *(v0 + 384);
    v10 = *(v0 + 392);
    v12 = *(v0 + 368);
    v13 = *(v0 + 376);

    (*(v9 + 8))(v8, v10);
    (*(v13 + 104))(v11, *MEMORY[0x277D07360], v12);
    v14 = sub_22B35EE7C();
    (*(v13 + 8))(v11, v12);
    if (v14)
    {
      v15 = *(v0 + 328);
      v16 = sub_22B35D8BC();
      (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
      sub_22B35DE6C();
      if (qword_28140AC88 != -1)
      {
        swift_once();
      }

      v17 = qword_28140BD80;
      *(v0 + 440) = qword_28140BD80;

      return MEMORY[0x2822009F8](sub_22B2140A8, v17, 0);
    }

    else
    {
      sub_22B35DE6C();
      v30 = *(v0 + 16);
      *(v0 + 104) = *(v0 + 32);
      v31 = *(v0 + 64);
      *(v0 + 120) = *(v0 + 48);
      *(v0 + 136) = v31;
      *(v0 + 152) = *(v0 + 80);
      *(v0 + 88) = v30;
      v32 = swift_task_alloc();
      *(v0 + 432) = v32;
      *v32 = v0;
      v32[1] = sub_22B213EAC;
      v33 = *(v0 + 360);
      v34 = *(v0 + 312);
      v35 = *(v0 + 304);

      return sub_22B25053C(v33, v35, v34, v0 + 88, 1);
    }
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 416);
    v19 = *(v0 + 392);
    v20 = *(v0 + 400);
    v21 = __swift_project_value_buffer(v19, qword_28140BD10);
    swift_beginAccess();
    (*(v20 + 16))(v18, v21, v19);
    v22 = sub_22B36050C();
    v23 = sub_22B360D2C();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 416);
    v26 = *(v0 + 392);
    v27 = *(v0 + 400);
    if (v24)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22B116000, v22, v23, "Permission for notifications denied", v28, 2u);
      MEMORY[0x23188F650](v28, -1, -1);
    }

    (*(v27 + 8))(v25, v26);

    v29 = *(v0 + 8);

    return v29(9);
  }
}

uint64_t sub_22B213EAC(uint64_t a1)
{
  v3 = *(*v1 + 360);
  v4 = *(*v1 + 344);
  v5 = *(*v1 + 336);
  v6 = *v1;

  (*(v4 + 8))(v3, v5);

  v7 = *(v6 + 8);

  return v7(a1);
}

uint64_t sub_22B2140A8()
{
  v1 = *(v0 + 440);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v4 = *(v0 + 336);
  v5 = OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_nextPollDate;
  swift_beginAccess();
  (*(v3 + 16))(v2, v1 + v5, v4);
  v6 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v6;
  *(v0 + 224) = *(v0 + 80);
  v7 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v7;
  v8 = swift_task_alloc();
  *(v0 + 448) = v8;
  *v8 = v0;
  v8[1] = sub_22B2141B8;
  v9 = *(v0 + 352);
  v10 = *(v0 + 360);
  v11 = *(v0 + 328);
  v12 = *(v0 + 304);
  v13 = *(v0 + 312);

  return sub_22B28F98C(v10, v9, v12, v13, v0 + 160, v11);
}

uint64_t sub_22B2141B8(uint64_t a1)
{
  v2 = *(*v1 + 360);
  v3 = *(*v1 + 352);
  v4 = *(*v1 + 344);
  v5 = *(*v1 + 336);
  v6 = *(*v1 + 320);
  *(*v1 + 456) = a1;

  v7 = *(v4 + 8);
  v7(v3, v5);
  v7(v2, v5);

  return MEMORY[0x2822009F8](sub_22B21435C, v6, 0);
}

uint64_t sub_22B21435C()
{
  sub_22B123284(v0[41], &qword_27D8BA3E8, &unk_22B364790);
  v1 = v0[57];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_22B214420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = *(type metadata accessor for CDEnergyWindowNotifications(0) - 8);
  v5[17] = swift_task_alloc();
  v6 = sub_22B36052C();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B214584, v4, 0);
}

uint64_t sub_22B214584()
{
  v21 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[19];
  v9 = v0[20];
  v10 = v0[18];
  if (v7)
  {
    v11 = v0[11];
    v18 = v0[12];
    v13 = v0[9];
    v12 = v0[10];
    v19 = v0[20];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136380931;
    *(v14 + 4) = sub_22B1A7B20(v13, v12, &v20);
    *(v14 + 12) = 2081;
    *(v14 + 14) = sub_22B1A7B20(v11, v18, &v20);
    _os_log_impl(&dword_22B116000, v5, v6, "Disabling next clean energy window notifications for:%{private}s,%{private}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);

    (*(v8 + 8))(v19, v10);
  }

  else
  {

    (*(v8 + 8))(v9, v10);
  }

  if (qword_28140AF70 != -1)
  {
    swift_once();
  }

  v16 = qword_28140BDB8;
  v0[21] = qword_28140BDB8;

  return MEMORY[0x2822009F8](sub_22B2147FC, v16, 0);
}

uint64_t sub_22B2147FC()
{
  v1 = v0[13];
  v0[22] = sub_22B17FAD0(v0[9], v0[10], v0[11], v0[12]);

  return MEMORY[0x2822009F8](sub_22B214874, v1, 0);
}

uint64_t sub_22B214874()
{
  v1 = v0[22];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[16];
    v4 = v0[17];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    v24 = v6;
    v25 = v4;
    do
    {
      sub_22B180AC8(v5, v0[17]);
      if (*(v4 + 17) == 1)
      {
        v7 = *(v4 + 80);
        if (v7)
        {
          v8 = *(v4 + 72);
          if (qword_28140A7B0 != -1)
          {
            swift_once();
          }

          v9 = v0[17];
          v10 = v0[14];
          v11 = v0[15];
          v26 = qword_28140BD40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA228, &qword_22B367FF0);
          v12 = swift_allocObject();
          *(v12 + 16) = xmmword_22B3634B0;
          v27 = *v9;
          v28 = *(v4 + 8);

          MEMORY[0x23188E270](45, 0xE100000000000000);
          MEMORY[0x23188E270](v8, v7);
          *(v12 + 32) = v27;
          *(v12 + 40) = v28;
          v13 = sub_22B360B6C();
          v14 = *(v13 - 8);
          (*(v14 + 56))(v11, 1, 1, v13);
          v15 = swift_allocObject();
          v15[2] = 0;
          v15[3] = 0;
          v15[4] = v26;
          v15[5] = v12;
          sub_22B124BA8(v11, v10);
          LODWORD(v10) = (*(v14 + 48))(v10, 1, v13);

          v16 = v0[14];
          if (v10 == 1)
          {
            sub_22B123284(v0[14], &qword_27D8BA8D0, &qword_22B363610);
          }

          else
          {
            sub_22B360B5C();
            (*(v14 + 8))(v16, v13);
          }

          v17 = v15[2];
          swift_unknownObjectRetain();

          if (v17)
          {
            swift_getObjectType();
            v18 = sub_22B360ACC();
            v20 = v19;
            swift_unknownObjectRelease();
          }

          else
          {
            v18 = 0;
            v20 = 0;
          }

          sub_22B123284(v0[15], &qword_27D8BA8D0, &qword_22B363610);
          v21 = swift_allocObject();
          *(v21 + 16) = &unk_22B365E68;
          *(v21 + 24) = v15;
          if (v20 | v18)
          {
            v0[2] = 0;
            v0[3] = 0;
            v0[4] = v18;
            v0[5] = v20;
          }

          v6 = v24;
          swift_task_create();

          v4 = v25;
        }
      }

      sub_22B180B2C(v0[17]);
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  v22 = v0[21];

  return MEMORY[0x2822009F8](sub_22B214C08, v22, 0);
}

uint64_t sub_22B214C08()
{
  if (sub_22B17E790(v0[11], v0[12], v0[9], v0[10]))
  {
    v1 = 0;
  }

  else
  {
    v1 = 5;
  }

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_22B214CB8(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = *(type metadata accessor for CDEnergyWindowNotifications(0) - 8);
  v3[15] = swift_task_alloc();
  v4 = sub_22B36052C();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B214E18, v2, 0);
}

uint64_t sub_22B214E18()
{
  v18 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];
  if (v7)
  {
    v12 = v0[9];
    v11 = v0[10];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136380675;
    *(v13 + 4) = sub_22B1A7B20(v12, v11, &v17);
    _os_log_impl(&dword_22B116000, v5, v6, "Disabling all next clean energy window notifications for grid: %{private}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  if (qword_28140AF70 != -1)
  {
    swift_once();
  }

  v15 = qword_28140BDB8;
  v0[19] = qword_28140BDB8;

  return MEMORY[0x2822009F8](sub_22B215034, v15, 0);
}

uint64_t sub_22B215034()
{
  v1 = v0[11];
  v0[20] = sub_22B17F314(v0[9], v0[10]);

  return MEMORY[0x2822009F8](sub_22B2150A8, v1, 0);
}

uint64_t sub_22B2150A8()
{
  v1 = v0[20];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[14];
    v4 = v0[15];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    v24 = v6;
    v25 = v4;
    do
    {
      sub_22B180AC8(v5, v0[15]);
      if (*(v4 + 17) == 1)
      {
        v26 = v2;
        if (qword_28140A7B0 != -1)
        {
          swift_once();
        }

        v7 = v0[15];
        v8 = v0[12];
        v9 = v0[13];
        v10 = qword_28140BD40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA228, &qword_22B367FF0);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_22B3634B0;
        v12 = *(v4 + 8);
        *(v11 + 32) = *v7;
        *(v11 + 40) = v12;
        v13 = sub_22B360B6C();
        v14 = *(v13 - 8);
        (*(v14 + 56))(v9, 1, 1, v13);
        v15 = swift_allocObject();
        v15[2] = 0;
        v15[3] = 0;
        v15[4] = v10;
        v15[5] = v11;
        sub_22B124BA8(v9, v8);
        LODWORD(v8) = (*(v14 + 48))(v8, 1, v13);

        v16 = v0[12];
        if (v8 == 1)
        {
          sub_22B123284(v0[12], &qword_27D8BA8D0, &qword_22B363610);
        }

        else
        {
          sub_22B360B5C();
          (*(v14 + 8))(v16, v13);
        }

        v17 = v15[2];
        swift_unknownObjectRetain();

        v4 = v25;
        if (v17)
        {
          swift_getObjectType();
          v18 = sub_22B360ACC();
          v20 = v19;
          swift_unknownObjectRelease();
        }

        else
        {
          v18 = 0;
          v20 = 0;
        }

        sub_22B123284(v0[13], &qword_27D8BA8D0, &qword_22B363610);
        v21 = swift_allocObject();
        *(v21 + 16) = &unk_22B365E50;
        *(v21 + 24) = v15;
        if (v20 | v18)
        {
          v0[2] = 0;
          v0[3] = 0;
          v0[4] = v18;
          v0[5] = v20;
        }

        swift_task_create();

        v2 = v26;
        v6 = v24;
      }

      sub_22B180B2C(v0[15]);
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  v22 = v0[19];

  return MEMORY[0x2822009F8](sub_22B215408, v22, 0);
}

uint64_t sub_22B215408()
{
  if (sub_22B17EB2C(v0[9], v0[10]))
  {
    v1 = 0;
  }

  else
  {
    v1 = 5;
  }

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_22B2154B4()
{
  v1[13] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = *(type metadata accessor for CDEnergyWindowNotifications(0) - 8);
  v1[19] = swift_task_alloc();
  v2 = sub_22B36052C();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B215628, v0, 0);
}

uint64_t sub_22B215628()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "Disabling all next clean energy window notifications", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[20];

  (*(v9 + 8))(v8, v10);
  if (qword_28140AF70 != -1)
  {
    swift_once();
  }

  v11 = qword_28140BDB8;
  v0[23] = qword_28140BDB8;

  return MEMORY[0x2822009F8](sub_22B2157CC, v11, 0);
}

uint64_t sub_22B2157CC()
{
  v1 = *(v0 + 104);
  *(v0 + 192) = sub_22B1802B0();

  return MEMORY[0x2822009F8](sub_22B21583C, v1, 0);
}

uint64_t sub_22B21583C()
{
  v1 = v0[24];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[18];
    v4 = v0[19];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    v38 = v6;
    v39 = v4;
    do
    {
      sub_22B180AC8(v5, v0[19]);
      if (*(v4 + 17) == 1)
      {
        v7 = *(v4 + 80);
        if (v7)
        {
          v8 = *(v4 + 72);
          if (qword_28140A7B0 != -1)
          {
            swift_once();
          }

          v9 = v0[19];
          v11 = v0[16];
          v10 = v0[17];
          v40 = qword_28140BD40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA228, &qword_22B367FF0);
          v12 = swift_allocObject();
          *(v12 + 16) = xmmword_22B3634B0;
          v42 = *v9;
          v43 = *(v4 + 8);

          MEMORY[0x23188E270](45, 0xE100000000000000);
          MEMORY[0x23188E270](v8, v7);
          *(v12 + 32) = v42;
          *(v12 + 40) = v43;
          v13 = sub_22B360B6C();
          v14 = *(v13 - 8);
          (*(v14 + 56))(v10, 1, 1, v13);
          v15 = swift_allocObject();
          v15[2] = 0;
          v15[3] = 0;
          v15[4] = v40;
          v15[5] = v12;
          sub_22B124BA8(v10, v11);
          LODWORD(v10) = (*(v14 + 48))(v11, 1, v13);

          v16 = v0[16];
          if (v10 == 1)
          {
            sub_22B123284(v0[16], &qword_27D8BA8D0, &qword_22B363610);
          }

          else
          {
            sub_22B360B5C();
            (*(v14 + 8))(v16, v13);
          }

          v26 = v15[2];
          swift_unknownObjectRetain();

          if (v26)
          {
            swift_getObjectType();
            v27 = sub_22B360ACC();
            v29 = v28;
            swift_unknownObjectRelease();
          }

          else
          {
            v27 = 0;
            v29 = 0;
          }

          v6 = v38;
          sub_22B123284(v0[17], &qword_27D8BA8D0, &qword_22B363610);
          v30 = swift_allocObject();
          *(v30 + 16) = &unk_22B365E38;
          *(v30 + 24) = v15;
          if (v29 | v27)
          {
            v0[6] = 0;
            v0[7] = 0;
            v0[8] = v27;
            v0[9] = v29;
          }
        }

        else
        {
          if (qword_28140A7B0 != -1)
          {
            swift_once();
          }

          v17 = v0[19];
          v18 = v0[15];
          v41 = v0[14];
          v19 = qword_28140BD40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA228, &qword_22B367FF0);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_22B3634B0;
          v21 = *(v4 + 8);
          *(v20 + 32) = *v17;
          *(v20 + 40) = v21;
          v22 = sub_22B360B6C();
          v23 = *(v22 - 8);
          (*(v23 + 56))(v18, 1, 1, v22);
          v24 = swift_allocObject();
          v24[2] = 0;
          v24[3] = 0;
          v24[4] = v19;
          v24[5] = v20;
          sub_22B124BA8(v18, v41);
          LODWORD(v18) = (*(v23 + 48))(v41, 1, v22);

          v25 = v0[14];
          if (v18 == 1)
          {
            sub_22B123284(v0[14], &qword_27D8BA8D0, &qword_22B363610);
          }

          else
          {
            sub_22B360B5C();
            (*(v23 + 8))(v25, v22);
          }

          v31 = v24[2];
          swift_unknownObjectRetain();

          if (v31)
          {
            swift_getObjectType();
            v32 = sub_22B360ACC();
            v34 = v33;
            swift_unknownObjectRelease();
          }

          else
          {
            v32 = 0;
            v34 = 0;
          }

          v6 = v38;
          sub_22B123284(v0[15], &qword_27D8BA8D0, &qword_22B363610);
          v35 = swift_allocObject();
          *(v35 + 16) = &unk_22B365E30;
          *(v35 + 24) = v24;
          if (v34 | v32)
          {
            v0[2] = 0;
            v0[3] = 0;
            v0[4] = v32;
            v0[5] = v34;
          }
        }

        swift_task_create();

        v4 = v39;
      }

      sub_22B180B2C(v0[19]);
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  v36 = v0[23];

  return MEMORY[0x2822009F8](sub_22B215E28, v36, 0);
}

uint64_t sub_22B215E28()
{
  sub_22B17EE98();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_22B215EE0(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = sub_22B36052C();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B215FA4, v2, 0);
}

uint64_t sub_22B215FA4()
{
  v19 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 112);
  v8 = *(v0 + 120);
  v10 = *(v0 + 104);
  if (v7)
  {
    v12 = *(v0 + 80);
    v11 = *(v0 + 88);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136380675;
    *(v13 + 4) = sub_22B1A7B20(v12, v11, &v18);
    _os_log_impl(&dword_22B116000, v5, v6, "Disabling all next clean energy window notifications for homeID: %{private}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  if (qword_28140A7B0 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = v15;
  *(v0 + 48) = 0;
  v16 = swift_task_alloc();
  *(v0 + 128) = v16;
  *v16 = v0;
  v16[1] = sub_22B216208;

  return sub_22B28DDB0(v0 + 16);
}

uint64_t sub_22B216208()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_22B216318, v1, 0);
}

uint64_t sub_22B216318()
{
  if (qword_28140AF70 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDB8;
  *(v0 + 136) = qword_28140BDB8;

  return MEMORY[0x2822009F8](sub_22B2163B0, v1, 0);
}

uint64_t sub_22B2163B0()
{
  if (sub_22B17EB14(v0[10], v0[11]))
  {
    v1 = 0;
  }

  else
  {
    v1 = 5;
  }

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_22B216430()
{
  v1[8] = v0;
  v2 = sub_22B35EE8C();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_22B36052C();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B21654C, v0, 0);
}

uint64_t sub_22B21654C()
{
  if (qword_28140AA30 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BD50;
  *(v0 + 120) = qword_28140BD50;

  return MEMORY[0x2822009F8](sub_22B2165E4, v1, 0);
}

uint64_t sub_22B2165E4()
{
  v1 = v0[15];
  v2 = v0[8];
  swift_beginAccess();
  v0[16] = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_22B216670, v2, 0);
}

uint64_t sub_22B216670()
{
  if (qword_28140A0C8 == -1)
  {
    goto LABEL_2;
  }

LABEL_40:
  swift_once();
LABEL_2:
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 128);
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    *(v9 + 4) = *(v8 + 16);

    _os_log_impl(&dword_22B116000, v5, v6, "Refresh notifications for %{public}ld locations", v9, 0xCu);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 128);
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  v11 = v10 + 56;
  v12 = -1;
  v13 = -1 << *(v10 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(v10 + 56);
  v15 = (63 - v13) >> 6;
  v46 = v10;

  v16 = 0;
  for (i = MEMORY[0x277D84F90]; v14; *(v24 + 5) = v20)
  {
LABEL_12:
    v19 = (*(v46 + 48) + 72 * (__clz(__rbit64(v14)) | (v16 << 6)));
    v21 = *v19;
    v20 = v19[1];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_22B32CD20(0, *(i + 2) + 1, 1, i);
    }

    v23 = *(i + 2);
    v22 = *(i + 3);
    if (v23 >= v22 >> 1)
    {
      i = sub_22B32CD20((v22 > 1), v23 + 1, 1, i);
    }

    v14 &= v14 - 1;
    *(i + 2) = v23 + 1;
    v24 = &i[16 * v23];
    *(v24 + 4) = v21;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v18);
    ++v16;
    if (v14)
    {
      v16 = v18;
      goto LABEL_12;
    }
  }

  v25 = sub_22B31A80C(i);
  *(v0 + 136) = v25;

  v26 = *(v25 + 32);
  *(v0 + 204) = v26;
  v27 = -1;
  v28 = -1 << v26;
  v29 = *(v25 + 56);
  if (-v28 < 64)
  {
    v27 = ~(-1 << -v28);
  }

  *(v0 + 200) = *MEMORY[0x277D07360];
  v30 = v27 & v29;
  if (v30)
  {
    v31 = 0;
    v32 = *(v0 + 136);
LABEL_25:
    *(v0 + 144) = v30;
    *(v0 + 152) = v31;
    v36 = *(v0 + 80);
    v35 = *(v0 + 88);
    v37 = *(v0 + 72);
    v38 = (*(v32 + 48) + ((v31 << 10) | (16 * __clz(__rbit64(v30)))));
    v40 = *v38;
    v39 = v38[1];
    *(v0 + 160) = v39;
    (*(v36 + 104))(v35);

    v41 = sub_22B35EE7C();
    (*(v36 + 8))(v35, v37);
    if (v41)
    {
      if (qword_28140A6A0 != -1)
      {
        swift_once();
      }

      *(v0 + 184) = qword_28140BD38;

      v42 = swift_task_alloc();
      *(v0 + 192) = v42;
      *v42 = v0;
      v42[1] = sub_22B21700C;

      return sub_22B2911E8(v40, v39);
    }

    else
    {
      if (qword_28140A6A0 != -1)
      {
        swift_once();
      }

      *(v0 + 168) = qword_28140BD38;

      v44 = swift_task_alloc();
      *(v0 + 176) = v44;
      *v44 = v0;
      v44[1] = sub_22B216BF4;

      return sub_22B251814(v40, v39);
    }
  }

  else
  {
    v33 = 0;
    v34 = ((63 - v28) >> 6) - 1;
    v32 = *(v0 + 136);
    while (v34 != v33)
    {
      v31 = v33 + 1;
      v30 = *(v32 + 8 * v33++ + 64);
      if (v30)
      {
        goto LABEL_25;
      }
    }

    v45 = *(v0 + 8);

    return v45();
  }
}

uint64_t sub_22B216BF4()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_22B216D44, v1, 0);
}

uint64_t sub_22B216D44()
{
  v3 = *(v2 + 152);
  v4 = (*(v2 + 144) - 1) & *(v2 + 144);
  if (v4)
  {
    v5 = *(v2 + 136);
LABEL_7:
    *(v2 + 144) = v4;
    *(v2 + 152) = v3;
    v7 = *(v2 + 200);
    v9 = *(v2 + 80);
    v8 = *(v2 + 88);
    v10 = *(v2 + 72);
    v11 = (*(v5 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v4)))));
    v1 = *v11;
    v0 = v11[1];
    *(v2 + 160) = v0;
    (*(v9 + 104))(v8, v7, v10);

    v12 = sub_22B35EE7C();
    (*(v9 + 8))(v8, v10);
    if (v12)
    {
      if (qword_28140A6A0 != -1)
      {
LABEL_21:
        swift_once();
      }

      *(v2 + 184) = qword_28140BD38;

      v13 = swift_task_alloc();
      *(v2 + 192) = v13;
      *v13 = v2;
      v13[1] = sub_22B21700C;

      return sub_22B2911E8(v1, v0);
    }

    else
    {
      if (qword_28140A6A0 != -1)
      {
        swift_once();
      }

      *(v2 + 168) = qword_28140BD38;

      v15 = swift_task_alloc();
      *(v2 + 176) = v15;
      *v15 = v2;
      v15[1] = sub_22B216BF4;

      return sub_22B251814(v1, v0);
    }
  }

  else
  {
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      v5 = *(v2 + 136);
      if (v6 >= (((1 << *(v2 + 204)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v5 + 8 * v6 + 56);
      ++v3;
      if (v4)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    v16 = *(v2 + 8);

    return v16();
  }
}

uint64_t sub_22B21700C()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_22B217394, v1, 0);
}

uint64_t sub_22B21715C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B124D88;

  return sub_22B28D78C(a1, v4, v5, v7, v6);
}

uint64_t sub_22B21721C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B119A60;

  return sub_22B28D78C(a1, v4, v5, v7, v6);
}

uint64_t sub_22B2172DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B119A60;

  return sub_22B1243B8(a1, v4);
}

void sub_22B217398(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 tariffProfileID];
  v5 = sub_22B36084C();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
  v8 = [a1 start];
  v9 = type metadata accessor for CDTOUPeak(0);
  sub_22B35DE5C();

  v10 = [a1 end];
  sub_22B35DE5C();

  v11 = [a1 peaks];
  v12 = sub_22B35DCDC();
  v14 = v13;

  v15 = sub_22B21CC88(v12, v14);
  sub_22B12F174(v12, v14);
  *(a2 + v9[7]) = v15;
  v16 = [a1 utilityID];
  v17 = sub_22B36084C();
  v19 = v18;

  v20 = (a2 + v9[8]);
  *v20 = v17;
  v20[1] = v19;
  v21 = [a1 descriptor];
  v22 = sub_22B36084C();
  v24 = v23;

  v25 = (a2 + v9[9]);
  *v25 = v22;
  v25[1] = v24;
}

void *sub_22B217524@<X0>(void *a3@<X2>, uint64_t *a4@<X8>)
{
  v34 = a4;
  v6 = sub_22B35FF8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  sub_22B128014(0, &qword_27D8BA690, 0x277CBEA60);
  result = sub_22B360F7C();
  if (v4)
  {
LABEL_2:
    *a3 = v4;
  }

  else
  {
    v17 = a3;
    v18 = v34;
    v39 = v15;
    v40 = v9;
    if (result)
    {
      v42 = 0;
      v43 = 0;
      v19 = result;
      sub_22B360A4C();

      result = v43;
      if (v43)
      {
        v38 = *(v43 + 16);
        if (v38)
        {
          v37 = v12;
          v33 = v17;
          v20 = 0;
          v35 = v7;
          v41 = (v7 + 32);
          v21 = (v43 + 40);
          v22 = MEMORY[0x277D84F90];
          v36 = v43;
          while (v20 < result[2])
          {
            v23 = *(v21 - 1);
            v24 = *v21;
            v25 = sub_22B144B30(v23, *v21);
            v26 = MEMORY[0x23188EEB0](v25);
            sub_22B35D7FC();
            swift_allocObject();
            sub_22B35D7EC();
            sub_22B21CA9C(&qword_27D8BA868, MEMORY[0x277D180E0], MEMORY[0x277D18100]);
            v27 = v42;
            sub_22B35D7DC();
            v42 = v27;
            if (v27)
            {

              objc_autoreleasePoolPop(v26);
              sub_22B12F174(v23, v24);

              v4 = v42;
              a3 = v33;
              goto LABEL_2;
            }

            objc_autoreleasePoolPop(v26);
            sub_22B12F174(v23, v24);
            v28 = *v41;
            v29 = v39;
            (*v41)(v39, v12, v6);
            v30 = v40;
            v28(v40, v29, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_22B32D1C8(0, *(v22 + 2) + 1, 1, v22);
            }

            v32 = *(v22 + 2);
            v31 = *(v22 + 3);
            if (v32 >= v31 >> 1)
            {
              v22 = sub_22B32D1C8((v31 > 1), v32 + 1, 1, v22);
            }

            ++v20;
            *(v22 + 2) = v32 + 1;
            v28(&v22[((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v32], v30, v6);
            v21 += 2;
            result = v36;
            if (v38 == v20)
            {
              goto LABEL_18;
            }
          }

          __break(1u);
        }

        else
        {
          v22 = MEMORY[0x277D84F90];
LABEL_18:

          *v34 = v22;
        }
      }

      else
      {
        *v18 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      *v34 = MEMORY[0x277D84F90];
    }
  }

  return result;
}

void sub_22B217904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7, uint64_t a8)
{
  v62[1] = a8;
  v68 = a7;
  v70 = a5;
  v71 = a2;
  v72 = a4;
  v82[1] = *MEMORY[0x277D85DE8];
  v13 = sub_22B35FF8C();
  v79 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22B36052C();
  v73 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x23188EEB0](v17);
  v20 = *(sub_22B36022C() + 16);

  v66 = a1;
  v67 = a6;
  if (!v20)
  {
    v36 = 0xC000000000000000;
LABEL_14:
    v42 = v70;
    v43 = v71;
    v80 = v20;
    v81 = v36;
    v44 = v67;
    if (v68)
    {
      v45 = v68;
    }

    else
    {
      v46 = sub_22B2A632C();
      v47 = [v46 newBackgroundContext];
      v48 = sub_22B36081C();
      [v47 setTransactionAuthor_];

      [v47 setMergePolicy_];
      [v47 setUndoManager_];
      [v47 setShouldRefreshAfterSave_];
      [v47 setStalenessInterval_];
      [v47 setShouldDeleteInaccessibleFaults_];

      v21 = v47;
      v45 = v21;
    }

    v82[0] = v45;
    MEMORY[0x28223BE20](v21);
    v49 = v66;
    v62[-8] = v44;
    v62[-7] = v49;
    v62[-6] = v82;
    v62[-5] = v43;
    v50 = v72;
    v62[-4] = a3;
    v62[-3] = v50;
    v62[-2] = v42;
    v62[-1] = &v80;
    v52 = v51;
    sub_22B360E7C();

    sub_22B12F174(v80, v81);
    objc_autoreleasePoolPop(v69);
    return;
  }

  v77 = v15;
  v78 = v13;
  v63 = a3;
  v22 = sub_22B36022C();
  MEMORY[0x28223BE20](v22);
  v62[-2] = a6;
  v82[0] = v23;

  v24 = 0;
  sub_22B21AEB4(sub_22B21AE94, &v62[-4]);
  v65 = v19;
  v64 = v16;

  v25 = v82[0];
  v76 = *(v82[0] + 2);
  if (v76)
  {
    v26 = 0;
    v27 = v78;
    v74 = v79 + 16;
    v75 = (v79 + 8);
    v28 = MEMORY[0x277D84F90];
    while (v26 < v25[2])
    {
      v9 = v25;
      v8 = v77;
      v29 = (*(v79 + 16))(v77, v25 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v26, v27);
      v30 = MEMORY[0x23188EEB0](v29);
      sub_22B35D82C();
      swift_allocObject();
      sub_22B35D81C();
      sub_22B21CA9C(&qword_27D8BA848, MEMORY[0x277D180E0], MEMORY[0x277D180E8]);
      v31 = sub_22B35D80C();
      v33 = v32;

      objc_autoreleasePoolPop(v30);
      (*v75)(v8, v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_22B32D0BC(0, *(v28 + 2) + 1, 1, v28);
      }

      v25 = v9;
      a6 = *(v28 + 2);
      v34 = *(v28 + 3);
      if (a6 >= v34 >> 1)
      {
        v28 = sub_22B32D0BC((v34 > 1), a6 + 1, 1, v28);
        v25 = v9;
      }

      ++v26;
      *(v28 + 2) = a6 + 1;
      v35 = &v28[16 * a6];
      *(v35 + 4) = v31;
      *(v35 + 5) = v33;
      if (v76 == v26)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_12:

  v37 = objc_opt_self();
  v38 = sub_22B360A3C();

  v82[0] = 0;
  v39 = [v37 archivedDataWithRootObject:v38 requiringSecureCoding:0 error:v82];

  v40 = v82[0];
  a6 = v73;
  v26 = v65;
  if (v39)
  {
    v20 = sub_22B35DCDC();
    v36 = v41;

    a3 = v63;
    goto LABEL_14;
  }

  v53 = v40;
  v54 = sub_22B35DB9C();

  swift_willThrow();
  v24 = v54;
  v28 = v64;
  v27 = v63;
  v8 = v70;
  v9 = v71;
  objc_autoreleasePoolPop(v69);
  if (qword_28140A0C8 != -1)
  {
LABEL_23:
    swift_once();
  }

  v55 = __swift_project_value_buffer(v28, qword_28140BD10);
  swift_beginAccess();
  (*(a6 + 16))(v26, v55, v28);

  v56 = sub_22B36050C();
  v57 = sub_22B360D1C();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = v8;
    v61 = v59;
    v82[0] = v59;
    *v58 = 136380931;
    *(v58 + 4) = sub_22B1A7B20(v72, v60, v82);
    *(v58 + 12) = 2081;
    *(v58 + 14) = sub_22B1A7B20(v9, v27, v82);
    _os_log_impl(&dword_22B116000, v56, v57, "Failed to add TOUPeaks entry for %{private}s profile %{private}s", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v61, -1, -1);
    MEMORY[0x23188F650](v58, -1, -1);
  }

  (*(a6 + 8))(v26, v28);
}

uint64_t sub_22B218168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v38 = sub_22B35DDBC();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v36 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v9 - 8);
  v35 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = sub_22B35DE9C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v28 - v19;
  v33 = a3;
  sub_22B35F55C();
  sub_22B35FF7C();
  v21 = v37;
  sub_22B35DD9C();
  if (v21)
  {

    (*(v4 + 8))(v8, v38);
    (*(v15 + 56))(v13, 1, 1, v14);
  }

  else
  {
    v30 = v17;
    v31 = 0;
    v32 = *(v4 + 8);
    v32(v8, v38);

    v37 = *(v15 + 56);
    v37(v13, 0, 1, v14);
    v29 = *(v15 + 32);
    v29(v20, v13, v14);
    sub_22B35F55C();
    sub_22B35FF7C();
    v13 = v35;
    v22 = v31;
    sub_22B35DD9C();
    v23 = (v15 + 8);
    if (!v22)
    {
      v32(v36, v38);

      v37(v13, 0, 1, v14);
      v26 = v30;
      v29(v30, v13, v14);
      v24 = sub_22B35DDFC();
      v27 = *v23;
      (*v23)(v26, v14);
      v27(v20, v14);
      return v24 & 1;
    }

    v32(v36, v38);
    v37(v13, 1, 1, v14);
    (*v23)(v20, v14);
  }

  sub_22B123284(v13, &qword_27D8BA340, &qword_22B363FB0);
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_22B2185AC(uint64_t a1, uint64_t a2, id *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v47 = a7;
  v48 = a8;
  v45 = a5;
  v46 = a6;
  v44 = a4;
  v49 = a3;
  v10 = sub_22B35DDBC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  v17 = sub_22B35DE9C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v52 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v41 - v21;
  v50 = a1;
  sub_22B35F59C();
  v51 = a2;
  sub_22B36021C();
  v23 = v53;
  sub_22B35DD9C();
  if (v23)
  {
    (*(v11 + 8))(v16, v10);
  }

  else
  {
    v42 = v22;
    v43 = v18;
    v53 = v17;
    v25 = *(v11 + 8);
    v25(v16, v10);

    sub_22B35F59C();
    sub_22B3601FC();
    sub_22B35DD9C();
    v25(v13, v10);

    sub_22B35FF3C();
    v26 = v49;
    v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    v28 = v42;
    v29 = sub_22B35DDDC();
    [v27 setStart_];

    v30 = sub_22B35DDDC();
    [v27 setEnd_];

    v31 = sub_22B36081C();
    [v27 setTariffProfileID_];

    v32 = sub_22B36081C();
    [v27 setUtilityID_];

    v33 = *v48;
    v34 = v48[1];
    sub_22B144B30(*v48, v34);
    v35 = sub_22B35DCCC();
    sub_22B12F174(v33, v34);
    [v27 setPeaks_];

    sub_22B3601DC();
    v36 = sub_22B36081C();

    [v27 setDescriptor_];

    v37 = *v26;
    sub_22B2A534C(0);
    v38 = v43;

    [*v26 refreshAllObjects];
    v39 = *(v38 + 8);
    v40 = v53;
    v39(v52, v53);
    return (v39)(v28, v40);
  }
}

void sub_22B218A08(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, int a5@<W5>, uint64_t a6@<X6>, id *a7@<X7>, uint64_t a8@<X8>)
{
  v70 = a3;
  v71 = a7;
  v65[0] = a8;
  v65[1] = a6;
  LODWORD(v73) = a5;
  v69 = a1;
  v11 = type metadata accessor for CDTOUPeak(0);
  v76 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v77 = (v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = sub_22B35FF3C();
  v13 = sub_22B35FF2C();
  [v13 setResultType_];
  v14 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v15 = sub_22B36081C();
  v16 = [v14 initWithKey:v15 ascending:1];

  v17 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v18 = sub_22B36081C();
  v19 = [v17 initWithKey:v18 ascending:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22B363950;
  *(v20 + 32) = v16;
  *(v20 + 40) = v19;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v67 = v16;
  v66 = v19;
  v21 = sub_22B360A3C();

  v72 = v13;
  [v13 setSortDescriptors_];

  v78 = MEMORY[0x277D84F90];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v22 = swift_allocObject();
  v68 = xmmword_22B3634C0;
  *(v22 + 16) = xmmword_22B3634C0;
  v23 = MEMORY[0x277D837D0];
  *(v22 + 56) = MEMORY[0x277D837D0];
  v24 = sub_22B1280E4();
  v25 = v70;
  *(v22 + 32) = v69;
  *(v22 + 40) = a2;
  *(v22 + 96) = v23;
  *(v22 + 104) = v24;
  *(v22 + 64) = v24;
  *(v22 + 72) = v25;
  *(v22 + 80) = a4;

  v26 = sub_22B360CCC();
  MEMORY[0x23188E350]();
  if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v70 = v26;
    sub_22B360A9C();
    v27 = swift_allocObject();
    *(v27 + 16) = v68;
    v28 = sub_22B35DDDC();
    v29 = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
    *(v27 + 56) = v29;
    v30 = sub_22B1D7CDC();
    *(v27 + 64) = v30;
    *(v27 + 32) = v28;
    v31 = sub_22B35DDDC();
    *(v27 + 96) = v29;
    *(v27 + 104) = v30;
    *(v27 + 72) = v31;
    v32 = sub_22B360CCC();
    if (v73)
    {
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_22B363660;
      v34 = sub_22B35DDDC();
      *(v33 + 56) = v29;
      *(v33 + 64) = v30;
      *(v33 + 32) = v34;
      v35 = sub_22B35DDDC();
      *(v33 + 96) = v29;
      *(v33 + 104) = v30;
      *(v33 + 72) = v35;
      v36 = sub_22B35DDDC();
      *(v33 + 136) = v29;
      *(v33 + 144) = v30;
      *(v33 + 112) = v36;
      v37 = sub_22B35DDDC();
      *(v33 + 176) = v29;
      *(v33 + 184) = v30;
      *(v33 + 152) = v37;
      v38 = sub_22B35DDDC();
      *(v33 + 216) = v29;
      *(v33 + 224) = v30;
      *(v33 + 192) = v38;
      v39 = sub_22B35DDDC();
      *(v33 + 256) = v29;
      *(v33 + 264) = v30;
      *(v33 + 232) = v39;
      v40 = sub_22B360CCC();

      v32 = v40;
      MEMORY[0x23188E350]();
      if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22B360A7C();
      }

      sub_22B360A9C();
    }

    v42 = v71;
    v41 = v72;
    v43 = v32;
    MEMORY[0x23188E350]();
    if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22B360A7C();
    }

    sub_22B360A9C();
    v44 = v78;
    v45 = objc_allocWithZone(MEMORY[0x277CCA920]);
    v46 = sub_22B360A3C();
    v47 = [v45 initWithType:1 subpredicates:v46];

    [v41 setPredicate_];
    v48 = *v42;
    v49 = v43;
    v50 = v48;
    v51 = v75;
    v52 = sub_22B360E9C();
    v73 = v51;
    if (v51)
    {

      v53 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v54 = sub_22B36081C();
      v55 = [v53 initWithDomain:v54 code:1 userInfo:0];

      v73 = v55;
      swift_willThrow();

      return;
    }

    v56 = v52;
    v74 = v44;
    v75 = v47;
    v69 = v49;

    if (!(v56 >> 62))
    {
      v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v26 = v75;
      if (!v57)
      {
        break;
      }

      goto LABEL_12;
    }

    v57 = sub_22B36109C();
    v26 = v75;
    if (!v57)
    {
      break;
    }

LABEL_12:
    v58 = 0;
    v59 = MEMORY[0x277D84F90];
    while ((v56 & 0xC000000000000001) != 0)
    {
      v60 = MEMORY[0x23188EAC0](v58, v56);
      v26 = (v58 + 1);
      if (__OFADD__(v58, 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      sub_22B217398(v60, v77);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_22B32D810(0, v59[2] + 1, 1, v59);
      }

      v62 = v59[2];
      v61 = v59[3];
      if (v62 >= v61 >> 1)
      {
        v59 = sub_22B32D810((v61 > 1), v62 + 1, 1, v59);
      }

      v59[2] = v62 + 1;
      sub_22B21CC24(v77, v59 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v62);
      ++v58;
      v63 = v26 == v57;
      v26 = v75;
      if (v63)
      {
        goto LABEL_30;
      }
    }

    if (v58 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

    v60 = *(v56 + 8 * v58 + 32);
    v26 = (v58 + 1);
    if (!__OFADD__(v58, 1))
    {
      goto LABEL_16;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    sub_22B360A7C();
  }

  v59 = MEMORY[0x277D84F90];
LABEL_30:

  v64 = *v71;
  [v64 refreshAllObjects];

  *v65[0] = v59;
}

void sub_22B2191D0(uint64_t a1, void *a2)
{
  v4 = sub_22B35DE9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = MEMORY[0x23188EEB0](v7);
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v10 = sub_22B2A632C();
    v11 = [v10 newBackgroundContext];
    v12 = sub_22B36081C();
    [v11 setTransactionAuthor_];

    [v11 setMergePolicy_];
    [v11 setUndoManager_];
    [v11 setShouldRefreshAfterSave_];
    [v11 setStalenessInterval_];
    [v11 setShouldDeleteInaccessibleFaults_];

    v9 = v11;
  }

  v22 = v9;
  (*(v5 + 16))(&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v13, &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = &v22;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_22B21CAE4;
  *(v15 + 24) = v14;
  aBlock[4] = sub_22B12819C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_17;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  [v9 performBlockAndWait_];

  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v19 = v22;

    objc_autoreleasePoolPop(v8);
  }
}

void sub_22B219510(uint64_t a1, id *a2)
{
  v94 = *MEMORY[0x277D85DE8];
  v83 = sub_22B35DE9C();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v5 = &v77[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_22B36052C();
  v85 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v77[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v84 = &v77[-v10];
  v11 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v12 = sub_22B36081C();
  v13 = [v11 initWithEntityName_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v14 = swift_allocObject();
  v81 = xmmword_22B3634B0;
  *(v14 + 16) = xmmword_22B3634B0;
  v15 = sub_22B35DDDC();
  *(v14 + 56) = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
  *(v14 + 64) = sub_22B1D7CDC();
  *(v14 + 32) = v15;
  v87 = sub_22B360CCC();
  [v13 setPredicate_];
  v16 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v16 setResultType_];
  v17 = *a2;
  *&v92 = 0;
  v18 = [v17 executeRequest:v16 error:&v92];
  v19 = v92;
  if (!v18)
  {
    v24 = v92;
    v25 = sub_22B35DB9C();

    swift_willThrow();
    v26 = v85;
    v89[0] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    sub_22B128014(0, &qword_281408530, 0x277CCA9B8);
    swift_dynamicCast();
    v27 = v88;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v6, qword_28140BD10);
    swift_beginAccess();
    v26[2](v8, v28, v6);
    v29 = v27;
    v30 = sub_22B36050C();
    v31 = sub_22B360D1C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v86 = v16;
      v33 = v32;
      v34 = swift_slowAlloc();
      v85 = v13;
      *&v81 = a2;
      v35 = v34;
      *&v92 = v34;
      *v33 = 136446210;
      v36 = [v29 localizedDescription];
      v37 = sub_22B36084C();
      v84 = v6;
      v39 = v38;

      v40 = sub_22B1A7B20(v37, v39, &v92);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_22B116000, v30, v31, "Failed to batch delete data %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      v41 = v35;
      a2 = v81;
      v13 = v85;
      MEMORY[0x23188F650](v41, -1, -1);
      v42 = v33;
      v16 = v86;
      MEMORY[0x23188F650](v42, -1, -1);

      (v26[1])(v8, v84);
    }

    else
    {

      (v26[1])(v8, v6);
    }

    v43 = [objc_opt_self() processInfo];
    v44 = [v43 processName];

    v45 = sub_22B36084C();
    v47 = v46;

    LOWORD(v92) = 513;
    BYTE2(v92) = 8;
    *(&v92 + 1) = v45;
    v93 = v47;
    static AutoBugCaptureManager.sendIssue(_:)(&v92);

    goto LABEL_12;
  }

  v20 = v18;
  v21 = v6;
  v86 = v16;
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  v23 = v19;
  if (!v22)
  {

    v92 = 0u;
    v93 = 0u;
LABEL_21:
    sub_22B123284(&v92, &unk_27D8BA950, &qword_22B364940);
    return;
  }

  if ([v22 result])
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v90 = 0u;
    v91 = 0u;
  }

  v92 = v90;
  v93 = v91;
  if (!*(&v91 + 1))
  {

    goto LABEL_21;
  }

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA858, &qword_22B365EF8);
  if (swift_dynamicCast())
  {
    v49 = a2;
    v50 = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA960, &qword_22B365F00);
    inited = swift_initStackObject();
    *(inited + 16) = v81;
    *&v92 = sub_22B36084C();
    *(&v92 + 1) = v52;
    sub_22B36110C();
    *(inited + 96) = v48;
    *(inited + 72) = v50;
    sub_22B321BDC(inited);
    swift_setDeallocating();
    sub_22B123284(inited + 32, &unk_27D8BACC0, &unk_22B3662C0);
    v80 = objc_opt_self();
    v53 = sub_22B3606CC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_22B363650;
    *&v81 = v49;
    v55 = *v49;
    *(v54 + 32) = v55;
    sub_22B128014(0, &qword_281408580, 0x277CBE440);
    v56 = v55;
    v57 = sub_22B360A3C();

    [v80 mergeChangesFromRemoteContextSave:v53 intoContexts:v57];

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v58 = v21;
    v59 = __swift_project_value_buffer(v21, qword_28140BD10);
    swift_beginAccess();
    v60 = v85;
    v85[2](v84, v59, v58);
    v61 = v82;
    v62 = v83;
    (*(v82 + 16))(v5, a1, v83);
    v63 = sub_22B36050C();
    v64 = sub_22B360D2C();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v79 = v63;
      v66 = v65;
      v80 = swift_slowAlloc();
      *&v92 = v80;
      *v66 = 136315138;
      sub_22B21CA9C(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v78 = v64;
      v67 = sub_22B36131C();
      v68 = v62;
      v70 = v69;
      (*(v61 + 8))(v5, v68);
      v71 = sub_22B1A7B20(v67, v70, &v92);

      v72 = v66;
      *(v66 + 4) = v71;
      v73 = v79;
      v74 = v72;
      _os_log_impl(&dword_22B116000, v79, v78, "Sucessfully deleted all data for TOUPeaks older than %s", v72, 0xCu);
      v75 = v80;
      __swift_destroy_boxed_opaque_existential_0(v80);
      MEMORY[0x23188F650](v75, -1, -1);
      MEMORY[0x23188F650](v74, -1, -1);
    }

    else
    {

      (*(v61 + 8))(v5, v62);
    }

    v60[1](v84, v58);
    a2 = v81;
    v76 = *v81;
    sub_22B2A534C(1);

    v16 = v86;
LABEL_12:
    [*a2 refreshAllObjects];

    return;
  }
}

uint64_t sub_22B21A08C()
{
  type metadata accessor for TOUPeaksManager();
  v0 = swift_allocObject();
  result = sub_22B21A0C8();
  qword_28140BC80 = v0;
  return result;
}

uint64_t sub_22B21A0C8()
{
  v1 = v0;
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  v2 = (v0 + 112);
  if (qword_28140AD60 != -1)
  {
    swift_once();
  }

  *v2 = sub_22B33AD90(0xD000000000000010, 0x800000022B368B50, 0x6361436C61636F4CLL, 0xEA00000000006568);

  v3 = *v2;
  if (v3)
  {

    v4 = sub_22B2A632C();

    v3 = [v4 newBackgroundContext];
    v5 = sub_22B36081C();
    [v3 setTransactionAuthor_];

    [v3 setMergePolicy_];
    [v3 setUndoManager_];
    [v3 setShouldRefreshAfterSave_];
    [v3 setStalenessInterval_];
    [v3 setShouldDeleteInaccessibleFaults_];
  }

  v6 = *(v1 + 120);
  *(v1 + 120) = v3;

  return v1;
}

uint64_t sub_22B21A278(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v75 = a1;
  v71 = a7;
  v76 = a3;
  v77 = a6;
  v10 = sub_22B35DE9C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  v17 = sub_22B36052C();
  v78 = *(v17 - 8);
  v79 = v17;
  MEMORY[0x28223BE20](v17);
  v69 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v61 - v20;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v22 = v79;
  v23 = __swift_project_value_buffer(v79, qword_28140BD10);
  swift_beginAccess();
  v24 = *(v78 + 16);
  v67 = v78 + 16;
  v68 = v23;
  v66 = v24;
  v24(v21, v23, v22);
  v25 = v21;
  v26 = *(v11 + 16);
  v70 = a5;
  v26(v16, a5, v10);
  v26(v13, v77, v10);

  v73 = v25;
  v27 = sub_22B36050C();
  v28 = sub_22B360D2C();

  v29 = os_log_type_enabled(v27, v28);
  v30 = v13;
  v72 = a4;
  if (v29)
  {
    v31 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v81 = v65;
    *v31 = 136315906;
    v62 = v30;
    v64 = v28;
    v32 = v75;
    *(v31 + 4) = sub_22B1A7B20(v75, a2, &v81);
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_22B1A7B20(v76, a4, &v81);
    *(v31 + 22) = 2080;
    sub_22B21CA9C(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v63 = v27;
    v33 = sub_22B36131C();
    v35 = v34;
    v36 = *(v11 + 8);
    v36(v16, v10);
    v37 = sub_22B1A7B20(v33, v35, &v81);
    v38 = v79;
    v39 = a2;

    *(v31 + 24) = v37;
    *(v31 + 32) = 2080;
    v40 = v62;
    v41 = sub_22B36131C();
    v43 = v42;
    v36(v40, v10);
    v44 = sub_22B1A7B20(v41, v43, &v81);

    *(v31 + 34) = v44;
    v45 = v63;
    _os_log_impl(&dword_22B116000, v63, v64, "Getting TOUPeaks for %s: %s between %s-%s", v31, 0x2Au);
    v46 = v65;
    swift_arrayDestroy();
    MEMORY[0x23188F650](v46, -1, -1);
    MEMORY[0x23188F650](v31, -1, -1);

    v47 = *(v78 + 8);
    v47(v73, v38);
  }

  else
  {

    v48 = *(v11 + 8);
    v48(v13, v10);
    v48(v16, v10);
    v47 = *(v78 + 8);
    v47(v73, v79);
    v32 = v75;
    v39 = a2;
  }

  if (!v74[14])
  {
    return 0;
  }

  v73 = v47;
  v49 = v74[15];
  v50 = v49;

  v52 = MEMORY[0x23188EEB0](v51);
  v74 = v52;
  v53 = v50;
  if (!v49)
  {
    v54 = sub_22B2A632C();
    v55 = [v54 newBackgroundContext];
    v56 = sub_22B36081C();
    [v55 setTransactionAuthor_];

    [v55 setMergePolicy_];
    [v55 setUndoManager_];
    [v55 setShouldRefreshAfterSave_];
    [v55 setStalenessInterval_];
    [v55 setShouldDeleteInaccessibleFaults_];

    v52 = v55;
    v53 = v52;
  }

  v80 = v53;
  MEMORY[0x28223BE20](v52);
  v57 = v77;
  v58 = v72;
  *(&v61 - 8) = v76;
  *(&v61 - 7) = v58;
  *(&v61 - 6) = v32;
  *(&v61 - 5) = v39;
  *(&v61 - 4) = v70;
  *(&v61 - 24) = v71 & 1;
  *(&v61 - 2) = v57;
  *(&v61 - 1) = &v80;
  v59 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA860, &qword_22B365F08);
  sub_22B360E7C();

  objc_autoreleasePoolPop(v74);

  return v81;
}

void sub_22B21AAAC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22B35DE9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B36052C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_28140BD10);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  (*(v5 + 16))(v7, a1, v4);
  v29 = v8;
  v13 = v9;
  v14 = sub_22B36050C();
  v15 = sub_22B360D2C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = a1;
    v17 = v16;
    v26 = swift_slowAlloc();
    v30 = v26;
    *v17 = 136315138;
    sub_22B21CA9C(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v18 = sub_22B36131C();
    v27 = v2;
    v20 = v19;
    (*(v5 + 8))(v7, v4);
    v21 = sub_22B1A7B20(v18, v20, &v30);
    v2 = v27;

    *(v17 + 4) = v21;
    _os_log_impl(&dword_22B116000, v14, v15, "Delete TOU Peaks older than %s", v17, 0xCu);
    v22 = v26;
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x23188F650](v22, -1, -1);
    v23 = v17;
    a1 = v28;
    MEMORY[0x23188F650](v23, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  (*(v13 + 8))(v11, v29);
  if (*(v2 + 112))
  {
    v24 = *(v2 + 120);
    v25 = v24;

    sub_22B2191D0(a1, v24);
  }
}

uint64_t sub_22B21AE30()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_22B21AEB4(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  sub_22B35FF8C();
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_22B21CA88(v5);
  }

  sub_22B21AF9C(a1, a2);
  *v2 = v5;
}

void sub_22B21AF9C(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  v6 = sub_22B36130C();
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22B35FF8C();
        v9 = sub_22B360A8C();
        *(v9 + 16) = v8;
      }

      v10 = *(sub_22B35FF8C() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_22B21B3C4(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_22B21B0D8(0, v5, 1, a1, a2);
  }
}

void sub_22B21B0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v7 = v6;
  v52 = a5;
  v53 = a4;
  v11 = sub_22B35FF8C();
  MEMORY[0x28223BE20](v11);
  v47 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v54 = &v38 - v14;
  v18 = MEMORY[0x28223BE20](v15);
  v39 = a2;
  if (a3 != a2)
  {
    v50 = &v38 - v16;
    v19 = *v5;
    v21 = *(v17 + 16);
    v20 = v17 + 16;
    v22 = *(v20 + 56);
    v48 = v21;
    v49 = (v20 - 8);
    v51 = v20;
    v45 = (v20 + 16);
    v46 = v19;
    v23 = (v19 + v22 * (a3 - 1));
    v44 = -v22;
    v24 = a1 - a3;
    v38 = v22;
    v25 = v19 + v22 * a3;
    v26 = v54;
    while (2)
    {
      v42 = v23;
      v43 = a3;
      v40 = v25;
      v41 = v24;
      v27 = v23;
      while (1)
      {
        v28 = v50;
        v29 = v48;
        (v48)(v50, v25, v11, v18);
        v29(v26, v27, v11);
        v30 = v53(v28, v26);
        if (v7)
        {
          v37 = *v49;
          (*v49)(v26, v11);
          v37(v28, v11);
          return;
        }

        v31 = v30;
        v32 = v26;
        v33 = *v49;
        (*v49)(v32, v11);
        v33(v28, v11);
        if ((v31 & 1) == 0)
        {
          break;
        }

        if (!v46)
        {
          __break(1u);
          return;
        }

        v34 = *v45;
        v35 = v47;
        (*v45)(v47, v25, v11);
        swift_arrayInitWithTakeFrontToBack();
        v34(v27, v35, v11);
        v27 += v44;
        v25 += v44;
        v36 = __CFADD__(v24++, 1);
        v26 = v54;
        v7 = 0;
        if (v36)
        {
          goto LABEL_11;
        }
      }

      v26 = v54;
      v7 = 0;
LABEL_11:
      a3 = v43 + 1;
      v23 = &v42[v38];
      v24 = v41 - 1;
      v25 = v40 + v38;
      if (v43 + 1 != v39)
      {
        continue;
      }

      break;
    }
  }
}

void sub_22B21B3C4(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v142 = a1;
  v163 = sub_22B35FF8C();
  MEMORY[0x28223BE20](v163);
  v146 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v149 = &v134 - v14;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v134 - v18;
  MEMORY[0x28223BE20](v20);
  v140 = &v134 - v21;
  MEMORY[0x28223BE20](v22);
  v29 = MEMORY[0x28223BE20](&v134 - v23);
  v161 = v26;
  v162 = a3;
  v30 = a3[1];
  if (v30 < 1)
  {
    v32 = MEMORY[0x277D84F90];
    v33 = a4;
LABEL_104:
    a4 = *v142;
    if (*v142)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_106;
    }

    goto LABEL_147;
  }

  v141 = &v134 - v25;
  v139 = v24;
  v151 = v19;
  v147 = v28;
  v148 = v27;
  v137 = a6;
  v31 = 0;
  v159 = (v26 + 8);
  v160 = v26 + 16;
  v155 = (v26 + 32);
  v32 = MEMORY[0x277D84F90];
  v156 = a5;
  v33 = a4;
  v158 = a4;
  while (1)
  {
    v34 = v31;
    v143 = v32;
    if ((v31 + 1) < v30)
    {
      v144 = v31;
      v145 = v30;
      v35 = *v162;
      v36 = *(v161 + 72);
      a4 = *v162 + v36 * (v31 + 1);
      v37 = *(v161 + 16);
      v38 = v163;
      v37(v141, a4, v163, v29);
      v157 = v36;
      v138 = v35;
      v39 = v35 + v36 * v144;
      v40 = v139;
      v152 = v37;
      (v37)(v139, v39, v38);
      v41 = v141;
      LODWORD(v154) = v33(v141, v40);
      if (v7)
      {
        v133 = *v159;
        (*v159)(v40, v38);
        v133(v41, v38);
        goto LABEL_117;
      }

      v164 = 0;
      v42 = *v159;
      (*v159)(v40, v38);
      v150 = v42;
      (v42)(v41, v38);
      v136 = v145 - 1;
      v153 = v145 - 2;
      v43 = v144;
      a5 = v156;
      v44 = v157;
      v45 = v138 + v157 * (v144 + 2);
      v46 = v140;
      while (v153 != v43)
      {
        v47 = v163;
        v48 = v152;
        (v152)(v46, v45, v163);
        v49 = a5;
        v50 = v151;
        (v48)(v151, a4, v47);
        v51 = v49;
        v52 = v164;
        v53 = v158(v46, v50);
        v164 = v52;
        if (v52)
        {
          v131 = v150;
          (v150)(v50, v47);
          v131(v46, v47);
LABEL_117:

          return;
        }

        v54 = v53;
        v55 = v150;
        (v150)(v50, v47);
        v55(v46, v47);
        ++v43;
        v44 = v157;
        v45 += v157;
        a4 += v157;
        a5 = v51;
        if ((v154 ^ v54))
        {
          v56 = v43 + 1;
          goto LABEL_12;
        }
      }

      v43 = v136;
      v56 = v145;
LABEL_12:
      v34 = v144;
      if (v154)
      {
        if (v56 < v144)
        {
          goto LABEL_141;
        }

        v32 = v163;
        if (v144 <= v43)
        {
          a4 = v44 * (v56 - 1);
          v57 = v56;
          v58 = v56 * v44;
          v145 = v57;
          v59 = v57;
          v60 = v144;
          v61 = v144 * v44;
          do
          {
            if (v60 != --v59)
            {
              v63 = *v162;
              if (!*v162)
              {
                goto LABEL_145;
              }

              v64 = *v155;
              (*v155)(v146, v63 + v61, v163);
              if (v61 < a4 || v63 + v61 >= (v63 + v58))
              {
                v62 = v163;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v62 = v163;
                if (v61 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v64((v63 + a4), v146, v62);
              a5 = v156;
              v44 = v157;
              v32 = v62;
            }

            ++v60;
            a4 -= v44;
            v58 -= v44;
            v61 += v44;
          }

          while (v60 < v59);
          v7 = v164;
          v33 = v158;
          v34 = v144;
          v56 = v145;
        }

        else
        {
          v7 = v164;
          v33 = v158;
        }
      }

      else
      {
        v32 = v163;
        v7 = v164;
        v33 = v158;
      }
    }

    else
    {
      v56 = (v31 + 1);
      v32 = v163;
    }

    v65 = v162[1];
    if (v56 < v65)
    {
      if (__OFSUB__(v56, v34))
      {
        goto LABEL_137;
      }

      if (v56 - v34 < v137)
      {
        if (__OFADD__(v34, v137))
        {
          __break(1u);
        }

        else
        {
          v145 = v56;
          if (&v34[v137] >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = &v34[v137];
          }

          if (v66 >= v34)
          {
            if (v145 == v66)
            {
              v56 = v145;
              goto LABEL_38;
            }

            v164 = v7;
            v113 = *v162;
            v114 = *(v161 + 72);
            v157 = *(v161 + 16);
            v115 = (v113 + v114 * (v145 - 1));
            v153 = -v114;
            v154 = v113;
            v144 = v34;
            v116 = &v34[-v145];
            v135 = v114;
            a4 = v113 + v145 * v114;
            v152 = v66;
            while (1)
            {
              v136 = a4;
              v138 = v116;
              v150 = v115;
              while (1)
              {
                v117 = v147;
                v118 = v157;
                (v157)(v147, a4, v32, v29);
                v119 = v148;
                v118(v148, v115, v32);
                v120 = v164;
                v121 = v158(v117, v119);
                v164 = v120;
                if (v120)
                {
                  v132 = *v159;
                  (*v159)(v119, v32);
                  v132(v117, v32);
                  goto LABEL_117;
                }

                v122 = v121;
                v123 = *v159;
                (*v159)(v119, v32);
                v123(v117, v32);
                if ((v122 & 1) == 0)
                {
                  break;
                }

                if (!v154)
                {
                  goto LABEL_143;
                }

                v124 = *v155;
                v125 = v149;
                v32 = v163;
                (*v155)(v149, a4, v163);
                swift_arrayInitWithTakeFrontToBack();
                v124(v115, v125, v32);
                v115 += v153;
                a4 += v153;
                v126 = __CFADD__(v116++, 1);
                a5 = v156;
                if (v126)
                {
                  goto LABEL_101;
                }
              }

              a5 = v156;
              v32 = v163;
LABEL_101:
              v115 = &v150[v135];
              v116 = (v138 - 1);
              a4 = v136 + v135;
              v56 = v152;
              if (++v145 == v152)
              {
                v33 = v158;
                v7 = v164;
                v34 = v144;
                goto LABEL_38;
              }
            }
          }
        }

        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

LABEL_38:
    v32 = v143;
    if (v56 < v34)
    {
      goto LABEL_136;
    }

    a4 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_22B21C984(0, *(v32 + 2) + 1, 1, v32);
    }

    v68 = *(v32 + 2);
    v67 = *(v32 + 3);
    v69 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      v32 = sub_22B21C984((v67 > 1), v68 + 1, 1, v32);
    }

    *(v32 + 2) = v69;
    v70 = &v32[16 * v68];
    *(v70 + 4) = v34;
    *(v70 + 5) = v56;
    v152 = v56;
    v71 = *v142;
    if (!*v142)
    {
      goto LABEL_146;
    }

    if (v68)
    {
      break;
    }

    a5 = v156;
    v33 = a4;
LABEL_90:
    v30 = v162[1];
    v31 = v152;
    if (v152 >= v30)
    {
      goto LABEL_104;
    }
  }

  a5 = v156;
  v33 = a4;
  while (1)
  {
    a4 = v69 - 1;
    if (v69 >= 4)
    {
      v76 = &v32[16 * v69 + 32];
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_123;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_124;
      }

      v83 = &v32[16 * v69];
      v85 = *v83;
      v84 = *(v83 + 1);
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_126;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_129;
      }

      if (v87 >= v79)
      {
        v105 = &v32[16 * a4 + 32];
        v107 = *v105;
        v106 = *(v105 + 1);
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_135;
        }

        if (v74 < v108)
        {
          a4 = v69 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v69 == 3)
    {
      v72 = *(v32 + 4);
      v73 = *(v32 + 5);
      v82 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      v75 = v82;
LABEL_59:
      if (v75)
      {
        goto LABEL_125;
      }

      v88 = &v32[16 * v69];
      v90 = *v88;
      v89 = *(v88 + 1);
      v91 = __OFSUB__(v89, v90);
      v92 = v89 - v90;
      v93 = v91;
      if (v91)
      {
        goto LABEL_128;
      }

      v94 = &v32[16 * a4 + 32];
      v96 = *v94;
      v95 = *(v94 + 1);
      v82 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v82)
      {
        goto LABEL_131;
      }

      if (__OFADD__(v92, v97))
      {
        goto LABEL_132;
      }

      if (v92 + v97 >= v74)
      {
        if (v74 < v97)
        {
          a4 = v69 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v98 = &v32[16 * v69];
    v100 = *v98;
    v99 = *(v98 + 1);
    v82 = __OFSUB__(v99, v100);
    v92 = v99 - v100;
    v93 = v82;
LABEL_73:
    if (v93)
    {
      goto LABEL_127;
    }

    v101 = &v32[16 * a4];
    v103 = *(v101 + 4);
    v102 = *(v101 + 5);
    v82 = __OFSUB__(v102, v103);
    v104 = v102 - v103;
    if (v82)
    {
      goto LABEL_130;
    }

    if (v104 < v92)
    {
      goto LABEL_90;
    }

LABEL_80:
    v109 = a4 - 1;
    if (a4 - 1 >= v69)
    {
      break;
    }

    if (!*v162)
    {
      goto LABEL_142;
    }

    v110 = *&v32[16 * v109 + 32];
    v111 = *&v32[16 * a4 + 40];
    sub_22B21BFD0((*v162 + *(v161 + 72) * v110), (*v162 + *(v161 + 72) * *&v32[16 * a4 + 32]), (*v162 + *(v161 + 72) * v111), v71, v33, a5);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v111 < v110)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_22B21C768(v32);
    }

    if (v109 >= *(v32 + 2))
    {
      goto LABEL_122;
    }

    v112 = &v32[16 * v109];
    *(v112 + 4) = v110;
    *(v112 + 5) = v111;
    v165 = v32;
    sub_22B21C6DC(a4);
    v32 = v165;
    v69 = *(v165 + 2);
    if (v69 <= 1)
    {
      goto LABEL_90;
    }
  }

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
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
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
LABEL_137:
  __break(1u);
LABEL_138:
  v32 = sub_22B21C768(v32);
LABEL_106:
  v165 = v32;
  v127 = *(v32 + 2);
  if (v127 < 2)
  {
    goto LABEL_117;
  }

  while (*v162)
  {
    v128 = *&v32[16 * v127];
    v129 = *&v32[16 * v127 + 24];
    sub_22B21BFD0((*v162 + *(v161 + 72) * v128), (*v162 + *(v161 + 72) * *&v32[16 * v127 + 16]), (*v162 + *(v161 + 72) * v129), a4, v33, a5);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v129 < v128)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_22B21C768(v32);
    }

    if (v127 - 2 >= *(v32 + 2))
    {
      goto LABEL_134;
    }

    v130 = &v32[16 * v127];
    *v130 = v128;
    *(v130 + 1) = v129;
    v165 = v32;
    sub_22B21C6DC(v127 - 1);
    v32 = v165;
    v127 = *(v165 + 2);
    if (v127 <= 1)
    {
      goto LABEL_117;
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

void sub_22B21BFD0(char *a1, char *a2, char *a3, char *a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6)
{
  v77 = a6;
  v78 = a5;
  v76 = sub_22B35FF8C();
  v11 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v68 - v16;
  MEMORY[0x28223BE20](v18);
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v23 = &v68 - v19;
  if (a2 - a1 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_67;
  }

  v24 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v22 != -1)
  {
    v25 = (a2 - a1) / v22;
    v84 = a1;
    v83 = a4;
    v79 = v22;
    if (v25 < v24 / v22)
    {
      v26 = v25 * v22;
      if (a4 < a1 || &a1[v26] <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v75 = &a4[v26];
      v82 = &a4[v26];
      if (v26 >= 1 && a2 < a3)
      {
        v52 = *(v11 + 16);
        v73 = v17;
        v74 = v11 + 16;
        v71 = v52;
        v72 = (v11 + 8);
        v53 = v23;
        v54 = v76;
        v55 = v6;
        v70 = a3;
        while (1)
        {
          v80 = a1;
          v56 = v71;
          v71(v53, a2, v54);
          v57 = a2;
          v58 = v53;
          v59 = v73;
          v56(v73, a4, v54);
          v60 = v78(v58, v59);
          if (v55)
          {
            break;
          }

          v61 = v60;
          v81 = 0;
          v62 = *v72;
          (*v72)(v59, v54);
          v62(v58, v54);
          v53 = v58;
          if (v61)
          {
            v63 = v79;
            v64 = v80;
            a2 = &v57[v79];
            if (v80 < v57 || v80 >= a2)
            {
              v54 = v76;
              swift_arrayInitWithTakeFrontToBack();
              v63 = v79;
              v55 = v81;
            }

            else
            {
              v55 = v81;
              v54 = v76;
              if (v80 != v57)
              {
                swift_arrayInitWithTakeBackToFront();
                v63 = v79;
              }
            }
          }

          else
          {
            v63 = v79;
            v64 = v80;
            v65 = &a4[v79];
            a2 = v57;
            if (v80 < a4 || v80 >= v65)
            {
              v54 = v76;
              swift_arrayInitWithTakeFrontToBack();
              v63 = v79;
              v55 = v81;
            }

            else
            {
              v55 = v81;
              v54 = v76;
              if (v80 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
                v63 = v79;
              }
            }

            v83 = v65;
            a4 = v65;
          }

          a1 = &v64[v63];
          v84 = a1;
          if (a4 >= v75 || a2 >= v70)
          {
            goto LABEL_65;
          }
        }

        v66 = *v72;
        (*v72)(v59, v54);
        v66(v58, v54);
      }

LABEL_65:
      sub_22B21C7AC(&v84, &v83, &v82, MEMORY[0x277D180E0]);
      return;
    }

    v75 = v20;
    v27 = a3;
    v28 = a2;
    v29 = v24 / v22 * v22;
    if (a4 < v28 || &v28[v29] <= a4)
    {
      v30 = v28;
      v31 = v76;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v30 = v28;
      v31 = v76;
      if (a4 == v28)
      {
LABEL_24:
        v81 = v6;
        v33 = &a4[v29];
        if (v29 >= 1)
        {
          v34 = -v22;
          v68 = a4;
          v69 = (v11 + 16);
          v71 = (v11 + 8);
          v35 = &a4[v29];
          v36 = v27;
          v37 = v75;
          v80 = a1;
          v73 = -v22;
          do
          {
            v74 = v33;
            v70 = v33;
            v38 = v30;
            v76 = v30 + v34;
            v72 = v30;
            while (1)
            {
              if (v38 <= a1)
              {
                v84 = v38;
                v33 = v70;
                goto LABEL_64;
              }

              v39 = v36;
              v40 = v73;
              v79 = v35;
              v41 = &v35[v73];
              v42 = *v69;
              (*v69)(v37, &v35[v73], v31);
              v42(v13, v76, v31);
              v43 = v37;
              v44 = v81;
              v45 = v78(v37, v13);
              v81 = v44;
              if (v44)
              {
                v67 = *v71;
                (*v71)(v13, v31);
                v67(v43, v31);
                v84 = v72;
                v33 = v74;
                goto LABEL_64;
              }

              v46 = v45;
              v47 = &v39[v40];
              v48 = v13;
              v49 = *v71;
              v50 = v48;
              (*v71)();
              v49(v43, v31);
              if (v46)
              {
                break;
              }

              v36 = &v39[v40];
              if (v39 < v79 || v47 >= v79)
              {
                swift_arrayInitWithTakeFrontToBack();
                v13 = v50;
                v37 = v75;
              }

              else
              {
                v13 = v50;
                v37 = v75;
                if (v39 != v79)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v74 = v41;
              v35 = v41;
              a1 = v80;
              v38 = v72;
              if (v41 <= v68)
              {
                v30 = v72;
                v33 = v74;
                goto LABEL_63;
              }
            }

            v36 = &v39[v40];
            if (v39 < v72 || v47 >= v72)
            {
              v30 = v76;
              swift_arrayInitWithTakeFrontToBack();
              v51 = v68;
              v13 = v50;
              v37 = v75;
            }

            else
            {
              v37 = v75;
              v30 = v76;
              v51 = v68;
              v13 = v50;
              if (v39 != v72)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v35 = v79;
            a1 = v80;
            v34 = v73;
            v33 = v74;
          }

          while (v79 > v51);
        }

LABEL_63:
        v84 = v30;
LABEL_64:
        v82 = v33;
        goto LABEL_65;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v22 = v79;
    goto LABEL_24;
  }

LABEL_68:
  __break(1u);
}

uint64_t sub_22B21C6DC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22B21C768(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_22B21C7AC(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_22B21C894(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA870, &unk_22B366480);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_22B21C984(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA850, &qword_22B365EF0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_22B21CA9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22B21CAE4()
{
  v1 = *(sub_22B35DE9C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_22B219510(v0 + v2, v3);
}

uint64_t type metadata accessor for CDTOUPeak(uint64_t a1)
{
  result = qword_27D8BA878;
  if (!qword_27D8BA878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B21CC24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CDTOUPeak(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B21CC88(uint64_t a1, uint64_t a2)
{
  v2 = sub_22B36052C();
  v3 = MEMORY[0x28223BE20](v2);
  v4 = MEMORY[0x23188EEB0](v3);
  sub_22B217524(&v7, v6);
  objc_autoreleasePoolPop(v4);
  return v6[0];
}

void sub_22B21CF2C(uint64_t a1)
{
  sub_22B35DE9C();
  if (v1 <= 0x3F)
  {
    sub_22B21CFC8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22B21CFC8(uint64_t a1)
{
  if (!qword_27D8BA888)
  {
    sub_22B35FF8C();
    v1 = sub_22B360AAC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8BA888);
    }
  }
}

uint64_t HomeEnergyStatusCode.description.getter(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0xD000000000000013;
      }

      if (a1 == 3)
      {
        return 0xD000000000000015;
      }

      return 0xD000000000000014;
    }

    if (!a1)
    {
      return 0x73736563637553;
    }

    if (a1 == 1)
    {
      return 0xD000000000000017;
    }

LABEL_22:
    result = sub_22B36138C();
    __break(1u);
    return result;
  }

  if (a1 > 6)
  {
    switch(a1)
    {
      case 7:
        return 0xD000000000000011;
      case 8:
        return 0x2065636976726553;
      case 9:
        return 0xD000000000000023;
    }

    goto LABEL_22;
  }

  if (a1 == 5)
  {
    return 0x6573616261746144;
  }

  else
  {
    return 0x6961676120797254;
  }
}

uint64_t sub_22B21D218()
{
  v1 = *v0;
  sub_22B36149C();
  MEMORY[0x23188EDD0](v1);
  return sub_22B3614DC();
}

uint64_t sub_22B21D28C(uint64_t a1)
{
  v2 = *v1;
  sub_22B36149C();
  MEMORY[0x23188EDD0](v2);
  return sub_22B3614DC();
}

unint64_t sub_22B21D2D0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22B21D30C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_22B21D30C(unint64_t result)
{
  if (result > 9)
  {
    return 0;
  }

  return result;
}

unint64_t sub_22B21D320()
{
  result = qword_27D8BA890;
  if (!qword_27D8BA890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BA890);
  }

  return result;
}

uint64_t sub_22B21D384()
{
  type metadata accessor for LoadEventsDownloaderAndProcessor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  qword_27D8BB1C8 = v0;
  return result;
}

uint64_t sub_22B21D3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  v13 = sub_22B360B6C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_22B12B3CC(a1, v18);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  sub_22B11A02C(v18, (v14 + 5));
  v14[10] = a3;
  v14[11] = a4;
  v14[12] = a5;

  v15 = sub_22B145224(0, 0, v12, &unk_22B3660F8, v14);
  sub_22B118DDC(v12);
  return v15;
}

uint64_t sub_22B21D550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_22B21D578, 0, 0);
}

uint64_t sub_22B21D578()
{

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_22B21D640;
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  return sub_22B346628(v5, v6, v4, v2, v3);
}

uint64_t sub_22B21D640()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B21D774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = sub_22B36052C();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B21D868, 0, 0);
}

uint64_t sub_22B21D868()
{
  v20 = v0;
  v0[30] = os_transaction_create();
  sub_22B220980();
  if (qword_28140A0C8[0] != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[23];
  v3 = v0[24];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[31] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[32] = v5;
  v0[33] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);

  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[29];
  v10 = v0[23];
  v11 = v0[24];
  if (v8)
  {
    v13 = v0[20];
    v12 = v0[21];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_22B1A7B20(v13, v12, &v19);
    _os_log_impl(&dword_22B116000, v6, v7, "[LoadEventsDownloaderAndProcessor] Executing task %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);
  }

  v16 = *(v11 + 8);
  v16(v9, v10);
  v0[34] = v16;
  if (qword_27D8B9FA8 != -1)
  {
    swift_once();
  }

  v17 = qword_27D8BB1C8;
  v0[35] = qword_27D8BB1C8;

  return MEMORY[0x2822009F8](sub_22B21DAD4, v17, 0);
}

uint64_t sub_22B21DAD4()
{
  v1 = *(v0 + 280);
  if (*(v1 + 112))
  {
    v2 = sub_22B21E28C;
  }

  else
  {
    *(v1 + 112) = 1;
    v2 = sub_22B21DB14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B21DB14()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    v2 = sub_22B35EABC();
    *(v0 + 16) = sub_22B35EAAC();
    *(v0 + 40) = v2;
    *(v0 + 48) = &off_283EF8EA8;
    type metadata accessor for ActivityLogCoordinator();
    v1 = swift_allocObject();
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v2);
    v4 = *(v2 - 8);
    v5 = swift_task_alloc();
    (*(v4 + 16))(v5, v3, v2);
    v6 = *v5;
    v1[5] = v2;
    v1[6] = &off_283EF8EA8;
    v1[2] = v6;
    v1[7] = 5000;
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  *(v0 + 80) = &type metadata for DefaultLoadEventUploader;
  *(v0 + 88) = &off_283EFC910;
  type metadata accessor for LoadEventsProcessor();
  v7 = swift_allocObject();
  *(v0 + 288) = v7;
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, &type metadata for DefaultLoadEventUploader);
  *(v0 + 120) = &type metadata for DefaultLoadEventUploader;
  *(v0 + 128) = &off_283EFC910;

  swift_defaultActor_initialize();
  sub_22B11A02C((v0 + 96), v7 + 112);
  *(v7 + 152) = v1;
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v8 = swift_task_alloc();
  *(v0 + 296) = v8;
  *v8 = v0;
  v8[1] = sub_22B21DD18;

  return sub_22B1F628C();
}

uint64_t sub_22B21DD18(char a1)
{
  *(*v1 + 312) = a1;

  return MEMORY[0x2822009F8](sub_22B21DE38, 0, 0);
}

uint64_t sub_22B21DE38()
{
  if (*(v0 + 312) == 1)
  {
    (*(v0 + 256))(*(v0 + 224), *(v0 + 248), *(v0 + 184));
    v1 = sub_22B36050C();
    v2 = sub_22B360CFC();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_22B116000, v1, v2, "[LoadEventsDownloaderAndProcessor] Cleanup of load events was successful. Reset retry counter", v3, 2u);
      MEMORY[0x23188F650](v3, -1, -1);
    }

    v5 = *(v0 + 272);
    v4 = *(v0 + 280);
    v6 = *(v0 + 224);
    v7 = *(v0 + 184);

    v5(v6, v7);
    v8 = sub_22B21DF74;
    v9 = v4;
  }

  else
  {
    v9 = *(v0 + 280);
    v8 = sub_22B21DF9C;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_22B21DF74()
{
  v1 = *(v0 + 280);
  *(v0 + 313) = 1;
  *(v1 + 120) = 0;
  return MEMORY[0x2822009F8](sub_22B21E1C0, v1, 0);
}

uint64_t sub_22B21DFC4()
{
  v1 = v0[32];
  v2 = v0[31];
  v3 = v0[23];
  if (v0[38] >= 2)
  {
    v1(v0[27], v2, v3);
    v12 = sub_22B36050C();
    v13 = sub_22B360D1C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22B116000, v12, v13, "[LoadEventsDownloaderAndProcessor] Cleanup of load events was not successful. Current retry counter >= 2. Reset counter and halt", v14, 2u);
      MEMORY[0x23188F650](v14, -1, -1);
    }

    v15 = v0[34];
    v7 = v0[35];
    v16 = v0[27];
    v17 = v0[23];

    v15(v16, v17);
    v11 = sub_22B221440;
  }

  else
  {
    v1(v0[26], v2, v3);
    v4 = sub_22B36050C();
    v5 = sub_22B360D1C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22B116000, v4, v5, "[LoadEventsDownloaderAndProcessor] Cleanup of load events was not successful. Current retry counter < 2. Increment counter and retry", v6, 2u);
      MEMORY[0x23188F650](v6, -1, -1);
    }

    v8 = v0[34];
    v7 = v0[35];
    v9 = v0[26];
    v10 = v0[23];

    v8(v9, v10);
    v11 = sub_22B21E194;
  }

  return MEMORY[0x2822009F8](v11, v7, 0);
}

uint64_t sub_22B21E194()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 304) + 1;
  *(v0 + 313) = 0;
  *(v1 + 120) = v2;
  return MEMORY[0x2822009F8](sub_22B21E1C0, v1, 0);
}

uint64_t sub_22B21E1E4()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 313);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22B21E28C()
{
  (*(v0 + 256))(*(v0 + 200), *(v0 + 248), *(v0 + 184));
  v1 = sub_22B36050C();
  v2 = sub_22B360D2C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 272);
  v5 = *(v0 + 200);
  v6 = *(v0 + 184);
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v1, v2, "[LoadEventsDownloaderAndProcessor] In progress already", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  swift_unknownObjectRelease();

  v4(v5, v6);

  v8 = *(v0 + 8);

  return v8(1);
}

uint64_t sub_22B21E404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22B21E428, 0, 0);
}

uint64_t sub_22B21E428()
{

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_22B21E4E0;
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  return sub_22B346B20(v3, v4, v2);
}

uint64_t sub_22B21E4E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B21E5F0(uint64_t a1)
{
  v1[20] = a1;
  v2 = sub_22B36052C();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B21E6E0, 0, 0);
}

uint64_t sub_22B21E6E0()
{
  v18 = v0;
  v0[28] = os_transaction_create();
  sub_22B220980();
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[21];
  v3 = v0[22];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[29] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[30] = v5;
  v0[31] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[27];
  v10 = v0[21];
  v11 = v0[22];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_22B1A7B20(0xD000000000000032, 0x800000022B36CB20, &v17);
    _os_log_impl(&dword_22B116000, v6, v7, "[LoadEventsDownloaderAndProcessor] Executing task %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  v14 = *(v11 + 8);
  v14(v9, v10);
  v0[32] = v14;
  if (qword_27D8B9FA8 != -1)
  {
    swift_once();
  }

  v15 = qword_27D8BB1C8;
  v0[33] = qword_27D8BB1C8;

  return MEMORY[0x2822009F8](sub_22B21E940, v15, 0);
}

uint64_t sub_22B21E940()
{
  v1 = *(v0 + 264);
  if (*(v1 + 112))
  {
    v2 = sub_22B21F0FC;
  }

  else
  {
    *(v1 + 112) = 1;
    v2 = sub_22B21E980;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B21E980()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    v2 = sub_22B35EABC();
    *(v0 + 16) = sub_22B35EAAC();
    *(v0 + 40) = v2;
    *(v0 + 48) = &off_283EF8EA8;
    type metadata accessor for ActivityLogCoordinator();
    v1 = swift_allocObject();
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v2);
    v4 = *(v2 - 8);
    v5 = swift_task_alloc();
    (*(v4 + 16))(v5, v3, v2);
    v6 = *v5;
    v1[5] = v2;
    v1[6] = &off_283EF8EA8;
    v1[2] = v6;
    v1[7] = 5000;
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  *(v0 + 80) = &type metadata for DefaultLoadEventUploader;
  *(v0 + 88) = &off_283EFC910;
  type metadata accessor for LoadEventsProcessor();
  v7 = swift_allocObject();
  *(v0 + 272) = v7;
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, &type metadata for DefaultLoadEventUploader);
  *(v0 + 120) = &type metadata for DefaultLoadEventUploader;
  *(v0 + 128) = &off_283EFC910;

  swift_defaultActor_initialize();
  sub_22B11A02C((v0 + 96), v7 + 112);
  *(v7 + 152) = v1;
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v8 = swift_task_alloc();
  *(v0 + 280) = v8;
  *v8 = v0;
  v8[1] = sub_22B21EB88;

  return sub_22B1F195C(0);
}

uint64_t sub_22B21EB88(char a1)
{
  *(*v1 + 296) = a1;

  return MEMORY[0x2822009F8](sub_22B21ECA8, 0, 0);
}

uint64_t sub_22B21ECA8()
{
  if (*(v0 + 296) == 1)
  {
    (*(v0 + 240))(*(v0 + 208), *(v0 + 232), *(v0 + 168));
    v1 = sub_22B36050C();
    v2 = sub_22B360CFC();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_22B116000, v1, v2, "[LoadEventsDownloaderAndProcessor] Processed load events with result successful. Reset retry counter", v3, 2u);
      MEMORY[0x23188F650](v3, -1, -1);
    }

    v5 = *(v0 + 256);
    v4 = *(v0 + 264);
    v6 = *(v0 + 208);
    v7 = *(v0 + 168);

    v5(v6, v7);
    v8 = sub_22B21EDE4;
    v9 = v4;
  }

  else
  {
    v9 = *(v0 + 264);
    v8 = sub_22B21EE0C;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_22B21EDE4()
{
  v1 = *(v0 + 264);
  *(v0 + 297) = 1;
  *(v1 + 120) = 0;
  return MEMORY[0x2822009F8](sub_22B21F030, v1, 0);
}

uint64_t sub_22B21EE34()
{
  v1 = v0[30];
  v2 = v0[29];
  v3 = v0[21];
  if (v0[36] >= 2)
  {
    v1(v0[25], v2, v3);
    v12 = sub_22B36050C();
    v13 = sub_22B360D1C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22B116000, v12, v13, "[LoadEventsDownloaderAndProcessor] Processed load events with result not successful. Current retry counter >= 2. Reset counter and halt", v14, 2u);
      MEMORY[0x23188F650](v14, -1, -1);
    }

    v15 = v0[32];
    v7 = v0[33];
    v16 = v0[25];
    v17 = v0[21];

    v15(v16, v17);
    v11 = sub_22B221444;
  }

  else
  {
    v1(v0[24], v2, v3);
    v4 = sub_22B36050C();
    v5 = sub_22B360D1C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22B116000, v4, v5, "[LoadEventsDownloaderAndProcessor] Processed load events with result not successful. Current retry counter < 2. Increment counter and retry", v6, 2u);
      MEMORY[0x23188F650](v6, -1, -1);
    }

    v8 = v0[32];
    v7 = v0[33];
    v9 = v0[24];
    v10 = v0[21];

    v8(v9, v10);
    v11 = sub_22B21F004;
  }

  return MEMORY[0x2822009F8](v11, v7, 0);
}

uint64_t sub_22B21F004()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 288) + 1;
  *(v0 + 297) = 0;
  *(v1 + 120) = v2;
  return MEMORY[0x2822009F8](sub_22B21F030, v1, 0);
}

uint64_t sub_22B21F054()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 297);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22B21F0FC()
{
  (*(v0 + 240))(*(v0 + 184), *(v0 + 232), *(v0 + 168));
  v1 = sub_22B36050C();
  v2 = sub_22B360D2C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 256);
  v5 = *(v0 + 184);
  v6 = *(v0 + 168);
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v1, v2, "[LoadEventsDownloaderAndProcessor] In progress already", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  swift_unknownObjectRelease();

  v4(v5, v6);

  v8 = *(v0 + 8);

  return v8(1);
}

uint64_t sub_22B21F274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_22B360B6C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_22B12B3CC(a1, v17);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  sub_22B11A02C(v17, (v13 + 5));
  v13[10] = a3;

  v14 = sub_22B145224(0, 0, v11, a5, v13);
  sub_22B118DDC(v11);
  return v14;
}

uint64_t sub_22B21F3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22B21F3DC, 0, 0);
}

uint64_t sub_22B21F3DC()
{

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_22B22143C;
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  return sub_22B347010(v3, v4, v2);
}

uint64_t sub_22B21F494(uint64_t a1)
{
  v1[50] = a1;
  v2 = sub_22B35F6FC();
  v1[51] = v2;
  v1[52] = *(v2 - 8);
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v3 = sub_22B35DE9C();
  v1[55] = v3;
  v1[56] = *(v3 - 8);
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v4 = sub_22B36052C();
  v1[60] = v4;
  v1[61] = *(v4 - 8);
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B21F660, 0, 0);
}

uint64_t sub_22B21F660()
{
  v18 = v0;
  v0[67] = os_transaction_create();
  sub_22B220980();
  v0[68] = 0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[66];
  v2 = v0[60];
  v3 = v0[61];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[69] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[70] = v5;
  v0[71] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[66];
  v10 = v0[60];
  v11 = v0[61];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_22B1A7B20(0xD000000000000026, 0x800000022B36A4C0, &v17);
    _os_log_impl(&dword_22B116000, v6, v7, "[LoadEventsDownloaderAndProcessor] Executing task %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  v14 = *(v11 + 8);
  v14(v9, v10);
  v0[72] = v14;
  if (qword_27D8B9FA8 != -1)
  {
    swift_once();
  }

  v15 = qword_27D8BB1C8;
  v0[73] = qword_27D8BB1C8;

  return MEMORY[0x2822009F8](sub_22B21F8C8, v15, 0);
}

uint64_t sub_22B21F8C8()
{
  v1 = *(v0 + 584);
  if (*(v1 + 112))
  {
    v2 = sub_22B2207E4;
  }

  else
  {
    *(v1 + 112) = 1;
    v2 = sub_22B21F908;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B21F908(uint64_t a1)
{
  v2 = *(v1 + 464);
  v3 = *(v1 + 440);
  v4 = *(v1 + 448);
  sub_22B35DE6C();
  sub_22B35DDCC();
  v5 = *(v4 + 8);
  *(v1 + 592) = v5;
  *(v1 + 600) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38 = v5;
  v5(v2, v3);
  if (sub_22B35EEBC())
  {
    if (qword_27D8B9FF8 != -1)
    {
      swift_once();
    }

    v7 = *(v1 + 424);
    v6 = *(v1 + 432);
    v8 = *(v1 + 408);
    v9 = *(v1 + 416);
    v10 = __swift_project_value_buffer(v8, qword_27D8BB230);
    swift_beginAccess();
    v37 = *(v9 + 16);
    v37(v6, v10, v8);
    sub_22B35F6AC();
    sub_22B221204(&qword_27D8BA820, MEMORY[0x277D07410]);
    v11 = sub_22B36103C();
    v12 = *(v9 + 8);
    v12(v7, v8);
    v12(v6, v8);
    if (v11)
    {
      v14 = *(v1 + 424);
      v13 = *(v1 + 432);
      v15 = *(v1 + 408);
      v37(v13, v10, v15);
      sub_22B35F6BC();
      v16 = sub_22B36103C();
      v12(v14, v15);
      v12(v13, v15);
      if (v16 & 1) != 0 || (v18 = *(v1 + 424), v17 = *(v1 + 432), v19 = *(v1 + 408), v37(v17, v10, v19), sub_22B35F6CC(), v20 = sub_22B36103C(), v12(v18, v19), v12(v17, v19), (v20))
      {
        v22 = *(v1 + 464);
        v21 = *(v1 + 472);
        v24 = *(v1 + 448);
        v23 = *(v1 + 456);
        v25 = *(v1 + 440);
        sub_22B35DE6C();
        sub_22B35DDCC();
        v38(v23, v25);
        v38(v21, v25);
        (*(v24 + 32))(v21, v22, v25);
      }
    }
  }

  if (*(v1 + 400))
  {
    v26 = *(v1 + 400);
  }

  else
  {
    v27 = sub_22B35EABC();
    v28 = sub_22B35EAAC();
    *(v1 + 40) = v27;
    *(v1 + 48) = &off_283EF8EA8;
    *(v1 + 16) = v28;
    type metadata accessor for ActivityLogCoordinator();
    v26 = swift_allocObject();
    v29 = __swift_mutable_project_boxed_opaque_existential_1(v1 + 16, v27);
    v30 = *(v27 - 8);
    v31 = swift_task_alloc();
    (*(v30 + 16))(v31, v29, v27);
    v32 = *v31;
    v26[5] = v27;
    v26[6] = &off_283EF8EA8;
    v26[2] = v32;
    v26[7] = 5000;
    __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  }

  *(v1 + 80) = &type metadata for DefaultLoadEventUploader;
  *(v1 + 88) = &off_283EFC910;
  type metadata accessor for LoadEventsProcessor();
  v33 = swift_allocObject();
  *(v1 + 608) = v33;
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 56, &type metadata for DefaultLoadEventUploader);
  *(v1 + 120) = &type metadata for DefaultLoadEventUploader;
  *(v1 + 128) = &off_283EFC910;

  swift_defaultActor_initialize();
  sub_22B11A02C((v1 + 96), v33 + 112);
  *(v33 + 152) = v26;
  __swift_destroy_boxed_opaque_existential_0((v1 + 56));
  v34 = swift_task_alloc();
  *(v1 + 616) = v34;
  *v34 = v1;
  v34[1] = sub_22B21FDAC;
  v35 = *(v1 + 472);

  return sub_22B1F3330(v35);
}

uint64_t sub_22B21FDAC(char a1)
{
  *(*v1 + 632) = a1;

  return MEMORY[0x2822009F8](sub_22B21FECC, 0, 0);
}

uint64_t sub_22B21FECC(uint64_t a1)
{
  if (sub_22B35EEBC())
  {
    if (qword_27D8B9FF8 != -1)
    {
      swift_once();
    }

    v3 = *(v1 + 424);
    v2 = *(v1 + 432);
    v4 = *(v1 + 408);
    v5 = *(v1 + 416);
    v6 = __swift_project_value_buffer(v4, qword_27D8BB230);
    swift_beginAccess();
    v7 = *(v5 + 16);
    v27 = v6;
    v7(v2, v6, v4);
    sub_22B35F6AC();
    sub_22B221204(&qword_27D8BA820, MEMORY[0x277D07410]);
    v8 = sub_22B36103C();
    v9 = *(v5 + 8);
    v9(v3, v4);
    v9(v2, v4);
    if (v8)
    {
      v11 = *(v1 + 424);
      v10 = *(v1 + 432);
      v12 = *(v1 + 408);
      v7(v10, v27, v12);
      sub_22B35F6CC();
      v13 = sub_22B36103C();
      v9(v11, v12);
      v9(v10, v12);
      if (v13)
      {
        v14 = *(v1 + 432);
        v16 = *(v1 + 408);
        v15 = *(v1 + 416);
        *(v1 + 392) = 0;
        sub_22B221204(&qword_27D8BA898, MEMORY[0x277D07418]);
        sub_22B3614EC();
        swift_beginAccess();
        (*(v15 + 40))(v27, v14, v16);
        swift_endAccess();
      }
    }
  }

  if (*(v1 + 632) == 1)
  {
    (*(v1 + 560))(*(v1 + 520), *(v1 + 552), *(v1 + 480));
    v17 = sub_22B36050C();
    v18 = sub_22B360CFC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22B116000, v17, v18, "[LoadEventsDownloaderAndProcessor] Processed load events with result successful. Reset retry counter", v19, 2u);
      MEMORY[0x23188F650](v19, -1, -1);
    }

    v20 = *(v1 + 584);
    v21 = *(v1 + 576);
    v22 = *(v1 + 520);
    v23 = *(v1 + 480);

    v21(v22, v23);
    v24 = sub_22B2201FC;
    v25 = v20;
  }

  else
  {
    v25 = *(v1 + 584);
    v24 = sub_22B22033C;
  }

  return MEMORY[0x2822009F8](v24, v25, 0);
}

uint64_t sub_22B220220()
{
  if (qword_281409448 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 544);
  *(v0 + 240) = &type metadata for BackgroundSystemTaskScheduler;
  *(v0 + 248) = &off_283EFE540;
  sub_22B220B58(1.0, v0 + 216, 0xD000000000000032, 0x800000022B36CB20);
  if (v1)
  {
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  *(v0 + 280) = &type metadata for BackgroundSystemTaskScheduler;
  *(v0 + 288) = &off_283EFE540;
  sub_22B220F14(60.0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  *(v0 + 633) = 1;
  v2 = *(v0 + 584);

  return MEMORY[0x2822009F8](sub_22B2206B0, v2, 0);
}

uint64_t sub_22B220364()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[60];
  if (v0[78] >= 2)
  {
    v1(v0[64], v2, v3);
    v12 = sub_22B36050C();
    v13 = sub_22B360D1C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22B116000, v12, v13, "[LoadEventsDownloaderAndProcessor] Processed load events with result not successful. Current retry counter >= 2. Reset counter and halt", v14, 2u);
      MEMORY[0x23188F650](v14, -1, -1);
    }

    v7 = v0[73];
    v15 = v0[72];
    v16 = v0[64];
    v17 = v0[60];

    v15(v16, v17);
    v11 = sub_22B220540;
  }

  else
  {
    v1(v0[63], v2, v3);
    v4 = sub_22B36050C();
    v5 = sub_22B360D1C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22B116000, v4, v5, "[LoadEventsDownloaderAndProcessor] Processed load events with result not successful. Current retry counter < 2. Increment counter and retry", v6, 2u);
      MEMORY[0x23188F650](v6, -1, -1);
    }

    v7 = v0[73];
    v8 = v0[72];
    v9 = v0[63];
    v10 = v0[60];

    v8(v9, v10);
    v11 = sub_22B220680;
  }

  return MEMORY[0x2822009F8](v11, v7, 0);
}

uint64_t sub_22B220564()
{
  if (qword_281409448 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 544);
  *(v0 + 160) = &type metadata for BackgroundSystemTaskScheduler;
  *(v0 + 168) = &off_283EFE540;
  sub_22B220B58(1.0, v0 + 136, 0xD000000000000032, 0x800000022B36CB20);
  if (v1)
  {
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  *(v0 + 200) = &type metadata for BackgroundSystemTaskScheduler;
  *(v0 + 208) = &off_283EFE540;
  sub_22B220F14(60.0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  *(v0 + 633) = 1;
  v2 = *(v0 + 584);

  return MEMORY[0x2822009F8](sub_22B2206B0, v2, 0);
}

uint64_t sub_22B220680()
{
  *(*(v0 + 584) + 120) = *(v0 + 624) + 1;
  *(v0 + 633) = 0;
  return MEMORY[0x2822009F8](sub_22B2206B0, *(v0 + 584), 0);
}

uint64_t sub_22B2206D4()
{
  swift_unknownObjectRelease();
  v3 = *(v0 + 633);
  (*(v0 + 592))(*(v0 + 472), *(v0 + 440));

  v1 = *(v0 + 8);

  return v1(v3);
}

uint64_t sub_22B2207E4()
{
  (*(v0 + 560))(*(v0 + 496), *(v0 + 552), *(v0 + 480));
  v1 = sub_22B36050C();
  v2 = sub_22B360D2C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22B116000, v1, v2, "[LoadEventsDownloaderAndProcessor] In progress already", v3, 2u);
    MEMORY[0x23188F650](v3, -1, -1);
  }

  swift_unknownObjectRelease();

  (*(v0 + 576))(*(v0 + 496), *(v0 + 480));

  v4 = *(v0 + 8);

  return v4(1);
}

uint64_t sub_22B220980()
{
  v0 = sub_22B36052C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_28140BD10);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "[LoadEventsDownloaderAndProcessor] Taking extended lifetime", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_22B220B58(double a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_22B36052C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() sharedScheduler];
  v13 = sub_22B36081C();
  v14 = [v12 taskRequestForIdentifier_];

  if (v14)
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v8, qword_28140BD10);
    swift_beginAccess();
    (*(v9 + 16))(v11, v15, v8);

    v16 = sub_22B36050C();
    v17 = sub_22B360D2C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23[1] = v4;
      v24 = v19;
      v20 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_22B1A7B20(a3, a4, &v24);
      _os_log_impl(&dword_22B116000, v16, v17, "[BackgroundTask] %s is already scheduled", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x23188F650](v20, -1, -1);
      MEMORY[0x23188F650](v18, -1, -1);
    }

    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v25[3] = &type metadata for BackgroundSystemTaskRequest;
    v25[4] = &off_283EFE7E8;
    v22 = swift_allocObject();
    v25[0] = v22;
    *(v22 + 16) = a3;
    *(v22 + 24) = a4;
    *(v22 + 32) = a1;
    *(v22 + 40) = 0;

    sub_22B348FC8(v25, 1, 1);
    return __swift_destroy_boxed_opaque_existential_0(v25);
  }
}

uint64_t sub_22B220E4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B124D88;

  return sub_22B21F3B8(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_22B220F14(double a1)
{
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedScheduler];
  v7 = sub_22B36081C();
  v8 = [v6 taskRequestForIdentifier_];

  if (v8)
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v2, qword_28140BD10);
    swift_beginAccess();
    (*(v3 + 16))(v5, v9, v2);
    v10 = sub_22B36050C();
    v11 = sub_22B360D2C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_22B1A7B20(0xD000000000000026, 0x800000022B36CB60, &v16);
      _os_log_impl(&dword_22B116000, v10, v11, "[BackgroundTask] %s is already scheduled", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x23188F650](v13, -1, -1);
      MEMORY[0x23188F650](v12, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    v17[3] = &type metadata for BackgroundSystemTaskRequest;
    v17[4] = &off_283EFE7E8;
    v15 = swift_allocObject();
    v17[0] = v15;
    *(v15 + 16) = 0xD000000000000026;
    *(v15 + 24) = 0x800000022B36CB60;
    *(v15 + 32) = a1;
    *(v15 + 40) = 0;
    sub_22B348FC8(v17, 1, 1);
    return __swift_destroy_boxed_opaque_existential_0(v17);
  }
}

uint64_t sub_22B221204(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22B35F6FC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_24Tm()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_22B221298(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B124D88;

  return sub_22B21E404(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_22B221360(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22B119A60;

  return sub_22B21D550(a1, v4, v5, v6, (v1 + 5), v7, v8, v9);
}

uint64_t sub_22B221448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v127 = a8;
  v128 = a7;
  v135 = a6;
  v134 = a5;
  v126 = a4;
  v125 = a3;
  v124 = a2;
  v123 = a1;
  v131 = sub_22B3604BC();
  v133 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v121[4] = v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v132 = v121 - v11;
  v12 = sub_22B36052C();
  v148 = *(v12 - 8);
  v149 = v12;
  MEMORY[0x28223BE20](v12);
  v121[3] = v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v136 = v121 - v15;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA078, &unk_22B362BB0);
  MEMORY[0x28223BE20](v140);
  v130 = v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v129 = v121 - v18;
  MEMORY[0x28223BE20](v19);
  v141 = v121 - v20;
  v21 = sub_22B3604AC();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v121[6] = v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v144 = v121 - v25;
  MEMORY[0x28223BE20](v26);
  v142 = v121 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = v121 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = v121 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = v121 - v35;
  v37 = sub_22B36047C();
  v146 = *(v37 - 8);
  v147 = v37;
  MEMORY[0x28223BE20](v37);
  v121[5] = v121 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v143 = v121 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = v121 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = v121 - v45;
  if (qword_281408E08 != -1)
  {
    swift_once();
  }

  v47 = __swift_project_value_buffer(v21, qword_28140BC88);
  v154 = v21;
  v48 = v47;
  v49 = v22 + 16;
  v50 = *(v22 + 16);
  v50(v36, v47, v154);
  sub_22B36048C();
  sub_22B36045C();
  v52 = *(v22 + 8);
  v51 = v22 + 8;
  v153 = v52;
  v52(v36, v154);
  v150 = v48;
  v151 = v50;
  v53 = v48;
  v54 = v154;
  v152 = v49;
  v50(v33, v53, v154);
  v55 = sub_22B36048C();
  v56 = sub_22B360E2C();
  v57 = sub_22B360FDC();
  v145 = v46;
  if (v57)
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    v59 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v55, v56, v59, "cdChangesMonth", "", v58, 2u);
    v60 = v58;
    v46 = v145;
    MEMORY[0x23188F650](v60, -1, -1);
  }

  (*(v146 + 16))(v43, v46, v147);
  sub_22B3604EC();
  swift_allocObject();
  v138 = sub_22B3604DC();
  v153(v33, v54);
  v151(v30, v150, v54);
  v61 = sub_22B36048C();
  v62 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v61, v62, v64, "getting results from CD", "", v63, 2u);
    MEMORY[0x23188F650](v63, -1, -1);
  }

  v139 = v51;
  v153(v30, v54);
  v65 = sub_22B35DE9C();
  v122 = *(v65 - 8);
  v66 = *(v122 + 16);
  v67 = v141;
  v66(v141, v134, v65);
  v68 = v67 + *(v140 + 48);
  v69 = v135;
  v135 = v65;
  v66(v68, v69, v65);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v70 = v149;
  v71 = __swift_project_value_buffer(v149, qword_28140BD10);
  swift_beginAccess();
  v72 = v148;
  v73 = v148 + 16;
  v74 = v136;
  v134 = *(v148 + 16);
  v134(v136, v71, v70);
  v75 = sub_22B36050C();
  v76 = sub_22B360D2C();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_22B116000, v75, v76, "Get interval readings", v77, 2u);
    v78 = v77;
    v72 = v148;
    MEMORY[0x23188F650](v78, -1, -1);
  }

  v81 = *(v72 + 8);
  v80 = v72 + 8;
  v79 = v81;
  (v81)(v74, v149);
  v82 = v137[14];
  if (v82)
  {
    v148 = v80;
    v84 = v137[15];
    v83 = v137[16];
    if (v83)
    {
      v121[1] = v73;
      v121[2] = v71;
      v136 = v79;
      v137 = a9;
      v85 = v129;
      sub_22B123130(v67, v129);
      v86 = v140;
      v87 = *(v140 + 48);
      v88 = v130;
      v89 = v135;
      v66(v130, v85, v135);
      v90 = v88 + *(v86 + 48);
      v140 = v87;
      v66(v90, (v85 + v87), v89);
      sub_22B1231A0(v82, v84);
      v91 = v83;
      v92 = MEMORY[0x23188EEB0]();
      v155 = MEMORY[0x277D84F98];
      MEMORY[0x28223BE20](v92);
      v93 = v123;
      v121[-12] = v91;
      v121[-11] = v93;
      v94 = v125;
      v121[-10] = v124;
      v121[-9] = v94;
      v95 = v127;
      v121[-8] = v126;
      v121[-7] = v95;
      v96 = v137;
      v121[-6] = v88;
      v121[-5] = v96;
      LOBYTE(v121[-4]) = 1;
      v121[-3] = v128;
      v121[-2] = &v155;
      sub_22B360E7C();
      v98 = v155;
      objc_autoreleasePoolPop(v92);

      sub_22B123284(v141, &qword_27D8BA078, &unk_22B362BB0);
      sub_22B123284(v88, &qword_27D8BA078, &unk_22B362BB0);
      v99 = *(v122 + 8);
      v99(v85 + v140, v89);
      v99(v85, v89);
    }

    else
    {

      v97 = v84;
      sub_22B123284(v67, &qword_27D8BA078, &unk_22B362BB0);

      v98 = 0;
    }
  }

  else
  {
    sub_22B123284(v67, &qword_27D8BA078, &unk_22B362BB0);
    v98 = 0;
  }

  v100 = v145;
  v151(v142, v150, v154);
  v101 = sub_22B36048C();
  v102 = sub_22B360E3C();
  v103 = sub_22B360FDC();
  v104 = v132;
  if (v103)
  {
    v105 = swift_slowAlloc();
    *v105 = 0;
    v106 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v101, v102, v106, "Retrieved results from CD", "", v105, 2u);
    MEMORY[0x23188F650](v105, -1, -1);
  }

  v107 = v154;
  v153(v142, v154);
  v151(v144, v150, v107);
  v108 = sub_22B36048C();
  sub_22B3604CC();
  v109 = sub_22B360E1C();
  v110 = sub_22B360FDC();
  v111 = v133;
  if (v110)
  {

    sub_22B3604FC();

    v112 = v131;
    if ((*(v111 + 88))(v104, v131) == *MEMORY[0x277D85B00])
    {
      v113 = "[Error] Interval already ended";
    }

    else
    {
      (*(v111 + 8))(v104, v112);
      v113 = "";
    }

    v115 = swift_slowAlloc();
    *v115 = 0;
    v116 = v143;
    v117 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v108, v109, v117, "intervalReading", v113, v115, 2u);
    MEMORY[0x23188F650](v115, -1, -1);

    v114 = v116;
  }

  else
  {

    v114 = v143;
  }

  v118 = v147;
  v119 = *(v146 + 8);
  v119(v114, v147);
  v153(v144, v154);
  v119(v100, v118);
  return v98;
}

void *sub_22B2224D0()
{
  type metadata accessor for EnergySiteManager();
  v0 = swift_allocObject();
  result = sub_22B23DED0();
  qword_28140BDD8 = v0;
  return result;
}

uint64_t sub_22B22250C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 89) = a4;
  *(v5 + 88) = a3;
  *(v5 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8A0, &unk_22B365970);
  *(v5 + 40) = swift_task_alloc();
  v6 = type metadata accessor for CDEnergySite(0);
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B222610, v4, 0);
}

uint64_t sub_22B222610()
{
  if (*(v0 + 89))
  {
    if (qword_28140B2D8 != -1)
    {
      swift_once();
    }

    v1 = qword_28140BDD0;
    *(v0 + 80) = qword_28140BDD0;

    return MEMORY[0x2822009F8](sub_22B2228E8, v1, 0);
  }

  else
  {
    if (qword_28140B2D8 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_22B222740;

    return sub_22B142D7C();
  }
}

uint64_t sub_22B222740()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_22B222850, v1, 0);
}

uint64_t sub_22B222850()
{
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDD0;
  *(v0 + 80) = qword_28140BDD0;

  return MEMORY[0x2822009F8](sub_22B2228E8, v1, 0);
}

uint64_t sub_22B2228E8()
{
  v1 = *(v0 + 32);
  sub_22B141AE8(*(v0 + 16), *(v0 + 24), *(v0 + 88), *(v0 + 40));

  return MEMORY[0x2822009F8](sub_22B22295C, v1, 0);
}

uint64_t sub_22B22295C()
{
  v1 = v0[6];
  v2 = v0[5];
  if ((*(v0[7] + 48))(v2, 1, v1) == 1)
  {
    sub_22B123284(v2, &qword_27D8BA8A0, &unk_22B365970);
    v7 = 0;
  }

  else
  {
    v3 = v0[8];
    sub_22B144DC0(v2, v3);
    sub_22B35EAFC();
    v4 = (v3 + *(v1 + 28));
    v5 = *v4;
    v6 = v4[1];

    sub_22B144B30(v5, v6);

    v7 = sub_22B35EAEC();
    sub_22B23E068(v0[8], type metadata accessor for CDEnergySite);

    sub_22B12F174(v5, v6);
  }

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_22B222B30(uint64_t a1)
{
  v2[62] = a1;
  v2[63] = v1;
  v3 = sub_22B36052C();
  v2[64] = v3;
  v2[65] = *(v3 - 8);
  v2[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B222BF0, v1, 0);
}

uint64_t sub_22B222BF0(uint64_t a1)
{
  v2 = sub_22B35F3AC();
  v4 = v3;
  *(v1 + 536) = v3;
  v5 = swift_task_alloc();
  *(v1 + 544) = v5;
  *v5 = v1;
  v5[1] = sub_22B222CAC;

  return sub_22B22250C(v2, v4, 0, 0);
}

uint64_t sub_22B222CAC(uint64_t a1)
{
  v2 = *(*v1 + 504);
  *(*v1 + 552) = a1;

  return MEMORY[0x2822009F8](sub_22B222DE0, v2, 0);
}

uint64_t sub_22B222DE0()
{
  v1 = v0[69];
  if (v1)
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v2 = v0[66];
    v3 = v0[65];
    v4 = v0[64];
    v5 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v3 + 16))(v2, v5, v4);
    v6 = sub_22B36050C();
    v7 = sub_22B360D1C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[66];
    v10 = v0[65];
    v11 = v0[64];
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22B116000, v6, v7, "Site already exists", v12, 2u);
      MEMORY[0x23188F650](v12, -1, -1);
    }

    (*(v10 + 8))(v9, v11);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = swift_task_alloc();
    v0[70] = v15;
    *v15 = v0;
    v15[1] = sub_22B222FE0;

    return EKEnergySite.createCKZone()();
  }
}

uint64_t sub_22B222FE0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 568) = v6;
    *v6 = v3;
    v6[1] = sub_22B223164;

    return EKEnergySite.save(reset:tokenUpdate:)(0, 0);
  }
}

uint64_t sub_22B223164()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 504);

    return MEMORY[0x2822009F8](sub_22B2232B0, v6, 0);
  }
}

uint64_t sub_22B2232B0()
{
  v1 = *(*(v0 + 504) + 112);
  sub_22B35EEEC();
  v2 = sub_22B36081C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA960, &qword_22B365F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3634B0;
  *(v0 + 480) = sub_22B35EE9C();
  *(v0 + 488) = v4;
  v5 = MEMORY[0x277D837D0];
  sub_22B36110C();
  v6 = sub_22B35F3AC();
  *(inited + 96) = v5;
  *(inited + 72) = v6;
  *(inited + 80) = v7;
  sub_22B321BDC(inited);
  swift_setDeallocating();
  sub_22B123284(inited + 32, &unk_27D8BACC0, &unk_22B3662C0);
  v8 = sub_22B3606CC();

  [v1 postNotificationName:v2 object:0 userInfo:v8 deliverImmediately:1];

  sub_22B23E8B0(v0 + 184);
  type metadata accessor for EnergyKitAnalyticsEvent();
  v9 = swift_allocObject();
  v10 = *(v0 + 296);
  v12 = *(v0 + 312);
  v11 = *(v0 + 328);
  *(v0 + 144) = v12;
  *(v0 + 160) = v11;
  v13 = *(v0 + 232);
  v14 = *(v0 + 264);
  v15 = *(v0 + 280);
  *(v0 + 80) = *(v0 + 248);
  *(v0 + 96) = v14;
  v16 = *(v0 + 264);
  v17 = *(v0 + 296);
  *(v0 + 112) = *(v0 + 280);
  *(v0 + 128) = v17;
  v18 = *(v0 + 200);
  *(v0 + 16) = *(v0 + 184);
  *(v0 + 32) = v18;
  *(v0 + 48) = *(v0 + 216);
  *(v0 + 64) = v13;
  *(v9 + 136) = v10;
  *(v9 + 152) = v12;
  *(v9 + 168) = *(v0 + 328);
  *(v9 + 72) = *(v0 + 232);
  *(v9 + 88) = *(v0 + 248);
  *(v9 + 104) = v16;
  *(v9 + 16) = 0;
  *(v0 + 176) = *(v0 + 344);
  *(v9 + 184) = *(v0 + 344);
  *(v9 + 120) = v15;
  *(v9 + 24) = *(v0 + 184);
  *(v9 + 40) = *(v0 + 200);
  *(v9 + 56) = *(v0 + 216);
  sub_22B123284(v0 + 16, &unk_27D8BACF0, &qword_22B3662D0);
  sub_22B1A81C0(v9);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_22B223504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v7 = sub_22B36052C();
  v4[7] = v7;
  v4[8] = *(v7 - 8);
  v4[9] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[10] = v8;
  *v8 = v4;
  v8[1] = sub_22B223610;

  return sub_22B22250C(a1, a2, 0, 0);
}

uint64_t sub_22B223610(uint64_t a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_22B223728, v2, 0);
}

uint64_t sub_22B223728(uint64_t a1)
{
  v32 = v1;
  v2 = *(v1 + 88);
  if (v2)
  {
    v3 = sub_22B35F12C();
    if (!v4)
    {
      goto LABEL_13;
    }

    v5 = v3;
    v6 = v4;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v9 = *(v1 + 64);
      v8 = *(v1 + 72);
      v10 = *(v1 + 56);
      v11 = __swift_project_value_buffer(v10, qword_28140BD10);
      swift_beginAccess();
      (*(v9 + 16))(v8, v11, v10);
      v12 = v2;
      v13 = sub_22B36050C();
      v14 = sub_22B360D1C();

      v15 = os_log_type_enabled(v13, v14);
      v17 = *(v1 + 64);
      v16 = *(v1 + 72);
      v18 = *(v1 + 56);
      if (v15)
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v31 = v20;
        *v19 = 136315138;
        v21 = sub_22B35F3AC();
        v23 = sub_22B1A7B20(v21, v22, &v31);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_22B116000, v13, v14, "Site %s is already onboarded. Cannot update location.", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x23188F650](v20, -1, -1);
        MEMORY[0x23188F650](v19, -1, -1);
      }

      (*(v17 + 8))(v16, v18);

      v24 = *(v1 + 8);
      v25 = *(v1 + 88);

      return v24(v25);
    }

    else
    {
LABEL_13:
      v27 = *(v1 + 40);
      sub_22B35F3EC();
      v28 = swift_task_alloc();
      *(v1 + 96) = v28;
      *v28 = v1;
      v28[1] = sub_22B223A58;

      return EKEnergySite.save(reset:tokenUpdate:)(0, 0);
    }
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v29 = 10;
    swift_willThrow();

    v30 = *(v1 + 8);

    return v30();
  }
}

uint64_t sub_22B223A58()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {
    v3 = v2[6];

    return MEMORY[0x2822009F8](sub_22B223B98, v3, 0);
  }

  else
  {

    v4 = v2[1];
    v5 = v2[11];

    return v4(v5);
  }
}

uint64_t sub_22B223B98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B223C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[5] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  v5[8] = swift_task_alloc();
  v8 = sub_22B36052C();
  v5[9] = v8;
  v5[10] = *(v8 - 8);
  v5[11] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[12] = v9;
  *v9 = v5;
  v9[1] = sub_22B223D4C;

  return sub_22B22250C(a1, a2, 0, 0);
}

uint64_t sub_22B223D4C(uint64_t a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_22B223E64, v2, 0);
}

uint64_t sub_22B223E64(uint64_t a1)
{
  v42 = v1;
  v2 = v1[13];
  if (!v2)
  {
    sub_22B134CDC();
    swift_allocError();
    *v11 = 10;
    swift_willThrow();
LABEL_17:

    v18 = v1[1];

    return v18();
  }

  v3 = sub_22B35F12C();
  if (v4)
  {
    v5 = v3;
    v6 = v4;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v8 = sub_22B35F41C();
      v10 = v1[6];
      if (v9)
      {
        if (v8 == v1[5] && v9 == v10)
        {

LABEL_23:
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v22 = v1[10];
          v21 = v1[11];
          v23 = v1[9];
          v24 = __swift_project_value_buffer(v23, qword_28140BD10);
          swift_beginAccess();
          (*(v22 + 16))(v21, v24, v23);
          v25 = v2;

          v26 = sub_22B36050C();
          v27 = sub_22B360D1C();

          v28 = os_log_type_enabled(v26, v27);
          v30 = v1[10];
          v29 = v1[11];
          v31 = v1[9];
          if (v28)
          {
            v39 = v1[5];
            v40 = v1[6];
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            v41[0] = v33;
            *v32 = 136315394;
            v34 = sub_22B35F3AC();
            v36 = sub_22B1A7B20(v34, v35, v41);

            *(v32 + 4) = v36;
            *(v32 + 12) = 2080;
            *(v32 + 14) = sub_22B1A7B20(v39, v40, v41);
            _os_log_impl(&dword_22B116000, v26, v27, "Site %s is already onboarded.Timezone %s is the same or empty", v32, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x23188F650](v33, -1, -1);
            MEMORY[0x23188F650](v32, -1, -1);
          }

          (*(v30 + 8))(v29, v31);

          v37 = v1[1];
          v38 = v1[13];

          return v37(v38);
        }

        v12 = sub_22B36134C();

        if (v12)
        {
          goto LABEL_23;
        }
      }

      v13 = v1[5] & 0xFFFFFFFFFFFFLL;
      if ((v10 & 0x2000000000000000) != 0)
      {
        v13 = HIBYTE(v10) & 0xF;
      }

      if (!v13)
      {
        goto LABEL_23;
      }
    }
  }

  v14 = v1[8];
  sub_22B35E05C();
  v15 = sub_22B35E0BC();
  v16 = (*(*(v15 - 8) + 48))(v14, 1, v15);
  sub_22B123284(v14, &unk_27D8BA080, &unk_22B364280);
  if (v16 == 1)
  {
    sub_22B134CDC();
    swift_allocError();
    *v17 = 17;
    swift_willThrow();

    goto LABEL_17;
  }

  sub_22B35F42C();
  v20 = swift_task_alloc();
  v1[14] = v20;
  *v20 = v1;
  v20[1] = sub_22B224308;

  return EKEnergySite.save(reset:tokenUpdate:)(0, 0);
}

uint64_t sub_22B224308()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {
    v3 = v2[7];

    return MEMORY[0x2822009F8](sub_22B224458, v3, 0);
  }

  else
  {

    v4 = v2[1];
    v5 = v2[13];

    return v4(v5);
  }
}

uint64_t sub_22B224458()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B2244D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[119] = v3;
  v4[118] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v4[120] = swift_task_alloc();
  v4[121] = swift_task_alloc();
  v4[122] = swift_task_alloc();
  v4[123] = swift_task_alloc();
  v4[124] = swift_task_alloc();
  v4[125] = swift_task_alloc();
  v7 = sub_22B35DE9C();
  v4[126] = v7;
  v4[127] = *(v7 - 8);
  v4[128] = swift_task_alloc();
  v4[129] = swift_task_alloc();
  v8 = sub_22B36052C();
  v4[130] = v8;
  v4[131] = *(v8 - 8);
  v4[132] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  v4[133] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[134] = v9;
  *v9 = v4;
  v9[1] = sub_22B2246F4;

  return sub_22B22250C(a1, a2, 0, 0);
}

uint64_t sub_22B2246F4(uint64_t a1)
{
  v2 = *(*v1 + 952);
  *(*v1 + 1080) = a1;

  return MEMORY[0x2822009F8](sub_22B22480C, v2, 0);
}

uint64_t sub_22B22480C()
{
  v129 = v0;
  v1 = *(v0 + 1080);
  if (!v1)
  {
    sub_22B134CDC();
    swift_allocError();
    *v14 = 10;
    swift_willThrow();
    goto LABEL_12;
  }

  v2 = *(v0 + 944);
  if (*(v2 + 16))
  {
    v3 = sub_22B33B28C(1701667182, 0xE400000000000000);
    if (v4)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v3, v0 + 16);
      if (swift_dynamicCast())
      {
        sub_22B35F40C();
      }
    }
  }

  if (*(v2 + 16))
  {
    v5 = sub_22B33B28C(0x656E6F5A656D6974, 0xE800000000000000);
    if (v6)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v5, v0 + 624);
      if (swift_dynamicCast())
      {
        v7 = *(v0 + 1064);
        v8 = *(v0 + 888);
        v9 = *(v0 + 896);
        sub_22B35E05C();
        v10 = sub_22B35E0BC();
        v11 = (*(*(v10 - 8) + 48))(v7, 1, v10);
        v12 = *(v0 + 1064);
        if (v11 == 1)
        {

          sub_22B123284(v12, &unk_27D8BA080, &unk_22B364280);
          sub_22B134CDC();
          swift_allocError();
          *v13 = 17;
          swift_willThrow();

LABEL_12:

          v15 = *(v0 + 8);

          return v15();
        }

        sub_22B123284(*(v0 + 1064), &unk_27D8BA080, &unk_22B364280);
        v17 = sub_22B35F12C();
        if (!v18)
        {
          goto LABEL_28;
        }

        v19 = v17;
        v20 = v18;

        v21 = HIBYTE(v20) & 0xF;
        if ((v20 & 0x2000000000000000) == 0)
        {
          v21 = v19 & 0xFFFFFFFFFFFFLL;
        }

        if (!v21)
        {
          goto LABEL_28;
        }

        v22 = sub_22B35F41C();
        if (v23)
        {
          if (v22 == v8 && v23 == v9 || (v24 = sub_22B36134C(), , , (v24 & 1) != 0))
          {

LABEL_29:
            if (qword_28140A0C8 != -1)
            {
              swift_once();
            }

            v26 = *(v0 + 1056);
            v27 = *(v0 + 1048);
            v28 = *(v0 + 1040);
            v29 = __swift_project_value_buffer(v28, qword_28140BD10);
            swift_beginAccess();
            (*(v27 + 16))(v26, v29, v28);

            v30 = v1;
            v31 = sub_22B36050C();
            LOBYTE(v28) = sub_22B360D1C();

            v126 = v28;
            v32 = os_log_type_enabled(v31, v28);
            v33 = *(v0 + 1056);
            v34 = *(v0 + 1048);
            v127 = *(v0 + 1040);
            if (v32)
            {
              v125 = *(v0 + 1056);
              v35 = swift_slowAlloc();
              v124 = swift_slowAlloc();
              v128[0] = v124;
              *v35 = 136315394;
              log = v31;
              v36 = sub_22B35F3AC();
              v38 = sub_22B1A7B20(v36, v37, v128);

              *(v35 + 4) = v38;
              *(v35 + 12) = 2080;
              v39 = sub_22B1A7B20(v8, v9, v128);

              *(v35 + 14) = v39;
              _os_log_impl(&dword_22B116000, log, v126, "Site %s is already onboarded.Timezone %s is the same or empty", v35, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x23188F650](v124, -1, -1);
              MEMORY[0x23188F650](v35, -1, -1);

              (*(v34 + 8))(v125, v127);
            }

            else
            {

              (*(v34 + 8))(v33, v127);
            }

            goto LABEL_34;
          }
        }

        else
        {
        }

        v25 = HIBYTE(v9) & 0xF;
        if ((v9 & 0x2000000000000000) == 0)
        {
          v25 = v8 & 0xFFFFFFFFFFFFLL;
        }

        if (v25)
        {
LABEL_28:
          sub_22B35F42C();
          goto LABEL_34;
        }

        goto LABEL_29;
      }
    }
  }

LABEL_34:
  if (*(v2 + 16))
  {
    v40 = sub_22B33B28C(0xD000000000000016, 0x800000022B36CE20);
    if (v41)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v40, v0 + 48);
      if (swift_dynamicCast())
      {
        sub_22B35F39C();
      }
    }
  }

  if (*(v2 + 16))
  {
    v42 = sub_22B33B28C(0x497974696C697475, 0xE900000000000044);
    if (v43)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v42, v0 + 80);
      if (swift_dynamicCast())
      {
        v44 = *(v0 + 864);
        v45 = HIBYTE(v44) & 0xF;
        if ((v44 & 0x2000000000000000) == 0)
        {
          v45 = *(v0 + 856) & 0xFFFFFFFFFFFFLL;
        }

        if (!v45)
        {
        }

        sub_22B35F44C();
      }
    }
  }

  if (*(v2 + 16))
  {
    v46 = sub_22B33B28C(0x7069726373627573, 0xEE0044496E6F6974);
    if (v47)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v46, v0 + 112);
      if (swift_dynamicCast())
      {
        v48 = *(v0 + 848);
        v49 = HIBYTE(v48) & 0xF;
        if ((v48 & 0x2000000000000000) == 0)
        {
          v49 = *(v0 + 840) & 0xFFFFFFFFFFFFLL;
        }

        if (!v49)
        {
        }

        sub_22B35F13C();
      }
    }
  }

  if (!*(v2 + 16) || (v50 = sub_22B33B28C(0x6F54737365636361, 0xEB000000006E656BLL), (v51 & 1) == 0) || (sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v50, v0 + 144), (swift_dynamicCast() & 1) == 0))
  {
    v54 = 0;
    if (!*(v2 + 16))
    {
      goto LABEL_71;
    }

    goto LABEL_64;
  }

  v52 = *(v0 + 832);
  v53 = HIBYTE(v52) & 0xF;
  if ((v52 & 0x2000000000000000) == 0)
  {
    v53 = *(v0 + 824) & 0xFFFFFFFFFFFFLL;
  }

  if (!v53)
  {
  }

  sub_22B35F07C();
  v54 = 1;
  if (*(v2 + 16))
  {
LABEL_64:
    v55 = sub_22B33B28C(0x5468736572666572, 0xEC0000006E656B6FLL);
    if (v56)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v55, v0 + 176);
      if (swift_dynamicCast())
      {
        v57 = *(v0 + 816);
        v58 = HIBYTE(v57) & 0xF;
        if ((v57 & 0x2000000000000000) == 0)
        {
          v58 = *(v0 + 808) & 0xFFFFFFFFFFFFLL;
        }

        if (!v58)
        {
        }

        sub_22B35F0CC();
        v54 = 1;
      }
    }
  }

LABEL_71:
  if (*(v2 + 16))
  {
    v59 = sub_22B33B28C(0x6974636E75466B63, 0xEF6E656B6F546E6FLL);
    if (v60)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v59, v0 + 208);
      if (swift_dynamicCast())
      {
        v61 = *(v0 + 800);
        v62 = HIBYTE(v61) & 0xF;
        if ((v61 & 0x2000000000000000) == 0)
        {
          v62 = *(v0 + 792) & 0xFFFFFFFFFFFFLL;
        }

        if (!v62)
        {
        }

        sub_22B35F15C();
        v54 = 1;
      }
    }
  }

  if (*(v2 + 16))
  {
    v63 = sub_22B33B28C(0x72656D6F74737563, 0xEC000000656D614ELL);
    if (v64)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v63, v0 + 240);
      if (swift_dynamicCast())
      {
        v65 = *(v0 + 784);
        v66 = HIBYTE(v65) & 0xF;
        if ((v65 & 0x2000000000000000) == 0)
        {
          v66 = *(v0 + 776) & 0xFFFFFFFFFFFFLL;
        }

        if (!v66)
        {
        }

        sub_22B35F09C();
      }
    }
  }

  if (*(v2 + 16))
  {
    v67 = sub_22B33B28C(0x4E746E756F636361, 0xED00007265626D75);
    if (v68)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v67, v0 + 272);
      if (swift_dynamicCast())
      {
        v69 = *(v0 + 768);
        v70 = HIBYTE(v69) & 0xF;
        if ((v69 & 0x2000000000000000) == 0)
        {
          v70 = *(v0 + 760) & 0xFFFFFFFFFFFFLL;
        }

        if (!v70)
        {
        }

        sub_22B35F0EC();
      }
    }
  }

  if (*(v2 + 16))
  {
    v71 = sub_22B33B28C(0x4165636976726573, 0xEE00737365726464);
    if (v72)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v71, v0 + 304);
      if (swift_dynamicCast())
      {
        v73 = *(v0 + 752);
        v74 = HIBYTE(v73) & 0xF;
        if ((v73 & 0x2000000000000000) == 0)
        {
          v74 = *(v0 + 744) & 0xFFFFFFFFFFFFLL;
        }

        if (!v74)
        {
        }

        sub_22B35F3CC();
      }
    }
  }

  if (*(v2 + 16))
  {
    v75 = sub_22B33B28C(0xD000000000000011, 0x800000022B36CE40);
    if (v76)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v75, v0 + 336);
      if (swift_dynamicCast())
      {
        v77 = *(v0 + 736);
        v78 = HIBYTE(v77) & 0xF;
        if ((v77 & 0x2000000000000000) == 0)
        {
          v78 = *(v0 + 728) & 0xFFFFFFFFFFFFLL;
        }

        if (!v78)
        {
        }

        sub_22B35F1DC();
      }
    }
  }

  if (*(v2 + 16))
  {
    v79 = sub_22B33B28C(0xD000000000000012, 0x800000022B36CE60);
    if (v80)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v79, v0 + 368);
      if (swift_dynamicCast())
      {
        v81 = *(v0 + 720);
        v82 = HIBYTE(v81) & 0xF;
        if ((v81 & 0x2000000000000000) == 0)
        {
          v82 = *(v0 + 712) & 0xFFFFFFFFFFFFLL;
        }

        if (!v82)
        {
        }

        sub_22B35F1BC();
      }
    }
  }

  if (*(v2 + 16) && (v83 = sub_22B33B28C(0xD000000000000019, 0x800000022B36CE80), (v84 & 1) != 0))
  {
    v85 = *(v0 + 1016);
    v86 = *(v0 + 1008);
    v87 = *(v0 + 1000);
    sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v83, v0 + 400);
    v88 = swift_dynamicCast();
    v89 = *(v85 + 56);
    v89(v87, v88 ^ 1u, 1, v86);
    if ((*(v85 + 48))(v87, 1, v86) != 1)
    {
      v90 = *(v0 + 1032);
      v91 = *(v0 + 1016);
      v92 = *(v0 + 1008);
      v93 = *(v0 + 992);
      (*(v91 + 32))(v90, *(v0 + 1000), v92);
      (*(v91 + 16))(v93, v90, v92);
      v89(v93, 0, 1, v92);
      sub_22B35F2DC();
      (*(v91 + 8))(v90, v92);
      goto LABEL_131;
    }
  }

  else
  {
    v89 = *(*(v0 + 1016) + 56);
    v89(*(v0 + 1000), 1, 1, *(v0 + 1008));
  }

  sub_22B123284(*(v0 + 1000), &qword_27D8BA340, &qword_22B363FB0);
  if (*(v2 + 16))
  {
    v94 = sub_22B33B28C(0xD000000000000019, 0x800000022B36CE80);
    if (v95)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v94, v0 + 432);
      if (swift_dynamicCast())
      {
        v96 = sub_22B35F5EC();
        v97 = sub_22B36081C();

        v98 = [v96 dateFromString_];

        if (v98)
        {
          sub_22B35DE5C();

          v99 = 0;
        }

        else
        {
          v99 = 1;
        }

        v89(*(v0 + 984), v99, 1, *(v0 + 1008));
        sub_22B35F2DC();
      }
    }
  }

LABEL_131:
  if (*(v2 + 16))
  {
    v100 = sub_22B33B28C(0xD000000000000019, 0x800000022B36CEA0);
    if (v101)
    {
      sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v100, v0 + 464);
      if (swift_dynamicCast())
      {
        v102 = sub_22B35F5EC();
        v103 = sub_22B36081C();

        v104 = [v102 dateFromString_];

        if (v104)
        {
          sub_22B35DE5C();

          v105 = 0;
        }

        else
        {
          v105 = 1;
        }

        v89(*(v0 + 976), v105, 1, *(v0 + 1008));
        sub_22B35F33C();
      }
    }
  }

  if (!*(v2 + 16) || (v106 = sub_22B33B28C(0xD000000000000012, 0x800000022B36CEC0), (v107 & 1) == 0))
  {
    v89(*(v0 + 968), 1, 1, *(v0 + 1008));
    goto LABEL_143;
  }

  v108 = *(v0 + 1016);
  v109 = *(v0 + 1008);
  v110 = *(v0 + 968);
  sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v106, v0 + 496);
  v111 = swift_dynamicCast();
  v89(v110, v111 ^ 1u, 1, v109);
  if ((*(v108 + 48))(v110, 1, v109) == 1)
  {
LABEL_143:
    sub_22B123284(*(v0 + 968), &qword_27D8BA340, &qword_22B363FB0);
    if (*(v2 + 16))
    {
      v116 = sub_22B33B28C(0xD000000000000012, 0x800000022B36CEC0);
      if (v117)
      {
        sub_22B170C58(*(*(v0 + 944) + 56) + 32 * v116, v0 + 528);
        if (swift_dynamicCast())
        {
          v118 = sub_22B35F5EC();
          v119 = sub_22B36081C();

          v120 = [v118 dateFromString_];

          if (v120)
          {
            sub_22B35DE5C();

            v121 = 0;
          }

          else
          {
            v121 = 1;
          }

          v89(*(v0 + 960), v121, 1, *(v0 + 1008));
          sub_22B35F20C();
        }
      }
    }

    goto LABEL_150;
  }

  v112 = *(v0 + 1024);
  v113 = *(v0 + 1016);
  v114 = *(v0 + 1008);
  v115 = *(v0 + 992);
  (*(v113 + 32))(v112, *(v0 + 968), v114);
  (*(v113 + 16))(v115, v112, v114);
  v89(v115, 0, 1, v114);
  sub_22B35F20C();
  (*(v113 + 8))(v112, v114);
LABEL_150:
  sub_22B2AC400(0xD000000000000011, 0x800000022B36CEE0, *(v0 + 944), (v0 + 560));
  if (*(v0 + 584))
  {
    if (swift_dynamicCast())
    {
      sub_22B35F03C();
    }
  }

  else
  {
    sub_22B123284(v0 + 560, &unk_27D8BA950, &qword_22B364940);
  }

  sub_22B2AC400(0xD000000000000010, 0x800000022B36C000, *(v0 + 944), (v0 + 592));
  if (*(v0 + 616))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
    if (swift_dynamicCast())
    {
      sub_22B35F19C();
    }
  }

  else
  {
    sub_22B123284(v0 + 592, &unk_27D8BA950, &qword_22B364940);
  }

  v122 = swift_task_alloc();
  *(v0 + 1088) = v122;
  *v122 = v0;
  v122[1] = sub_22B225BEC;

  return EKEnergySite.save(reset:tokenUpdate:)(0, v54);
}

uint64_t sub_22B225BEC()
{
  v2 = *v1;
  v2[137] = v0;

  if (v0)
  {
    v3 = v2[119];

    return MEMORY[0x2822009F8](sub_22B225DD0, v3, 0);
  }

  else
  {

    v4 = v2[1];
    v5 = v2[135];

    return v4(v5);
  }
}

uint64_t sub_22B225DD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B225ED0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 16) = v3;
  *(v4 + 56) = a3;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_22B225F84;

  return sub_22B22250C(a1, a2, 1, 0);
}

uint64_t sub_22B225F84(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_22B22609C, v2, 0);
}

uint64_t sub_22B22609C(uint64_t a1)
{
  if (v1[4])
  {
    v2 = sub_22B35F12C();
    if (v3)
    {
      v4 = v2;
      v5 = v3;

      v6 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v6 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v6)
      {
        sub_22B35F2FC();
      }
    }

    v10 = swift_task_alloc();
    v1[5] = v10;
    *v10 = v1;
    v10[1] = sub_22B226204;

    return EKEnergySite.save(reset:tokenUpdate:)(0, 0);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v7 = 10;
    swift_willThrow();
    v8 = v1[1];

    return v8();
  }
}

uint64_t sub_22B226204()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {
    v3 = v2[2];

    return MEMORY[0x2822009F8](sub_22B22633C, v3, 0);
  }

  else
  {
    v4 = v2[1];
    v5 = v2[4];

    return v4(v5);
  }
}

uint64_t sub_22B22633C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B2263A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v9 = sub_22B35FF8C();
  v6[17] = v9;
  v6[18] = *(v9 - 8);
  v6[19] = swift_task_alloc();
  v10 = sub_22B35EC2C();
  v6[20] = v10;
  v6[21] = *(v10 - 8);
  v6[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v11 = sub_22B35DE9C();
  v6[27] = v11;
  v6[28] = *(v11 - 8);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v12 = sub_22B35F7CC();
  v6[36] = v12;
  v6[37] = *(v12 - 8);
  v6[38] = swift_task_alloc();
  v6[39] = *(type metadata accessor for CDUsagePointRecords(0) - 8);
  v6[40] = swift_task_alloc();
  v13 = sub_22B35EC0C();
  v6[41] = v13;
  v6[42] = *(v13 - 8);
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA560, &unk_22B366200);
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v14 = sub_22B36052C();
  v6[48] = v14;
  v6[49] = *(v14 - 8);
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v15 = swift_task_alloc();
  v6[52] = v15;
  *v15 = v6;
  v15[1] = sub_22B226844;

  return sub_22B22250C(a1, a2, 0, 0);
}

uint64_t sub_22B226844(uint64_t a1)
{
  v2 = *(*v1 + 128);
  *(*v1 + 424) = a1;

  return MEMORY[0x2822009F8](sub_22B226988, v2, 0);
}

uint64_t sub_22B226988()
{
  v108 = v0;
  v107[2] = *MEMORY[0x277D85DE8];
  v1 = v0[53];
  if (v1)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v2 = v0[51];
    v4 = v0[48];
    v3 = v0[49];
    v5 = __swift_project_value_buffer(v4, qword_28140BD10);
    v0[54] = v5;
    swift_beginAccess();
    v6 = *(v3 + 16);
    v0[55] = v6;
    v0[56] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v2, v5, v4);

    v7 = sub_22B36050C();
    v8 = sub_22B360D2C();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[51];
    v12 = v0[48];
    v11 = v0[49];
    if (v9)
    {
      v14 = v0[11];
      v13 = v0[12];
      v104 = v1;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v107[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_22B1A7B20(v14, v13, v107);
      _os_log_impl(&dword_22B116000, v7, v8, "Refresh Tariff Profiles for %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x23188F650](v16, -1, -1);
      v17 = v15;
      v1 = v104;
      MEMORY[0x23188F650](v17, -1, -1);
    }

    v18 = *(v11 + 8);
    v18(v10, v12);
    v0[57] = v18;
    v0[58] = sub_22B35F43C();
    v0[59] = v19;
    if (v19)
    {
      v0[60] = sub_22B35F41C();
      v0[61] = v20;
      if (v20)
      {
        v21 = v0[13];
        v0[9] = MEMORY[0x277D84FA0];
        if (v21)
        {

          v23 = sub_22B31A80C(v22);

          v24 = v23;
          v0[9] = v23;
LABEL_10:
          v0[69] = 0;
          v0[70] = v24;
          if (*(v24 + 16))
          {
            v105 = v24;
            v25 = v0[26];
            sub_22B35DE6C();
            sub_22B35E05C();
            v26 = sub_22B35E0BC();
            v0[71] = v26;
            v27 = *(v26 - 8);
            v103 = *(v27 + 48);
            v28 = v103(v25, 1, v26);
            if (v28 == 1)
            {
              __break(1u);
            }

            else
            {
              v31 = v0[34];
              v33 = v0[27];
              v32 = v0[28];
              v34 = v0[26];
              v35 = v0[24];
              v100 = v0[14];
              sub_22B35F50C();
              v36 = *(v32 + 8);
              v0[72] = v36;
              v0[73] = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v101 = v36;
              v36(v31, v33);
              v37 = *(v27 + 8);
              v0[74] = v37;
              v0[75] = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v102 = v26;
              v37(v34, v26);
              sub_22B35DDCC();
              sub_22B170BE0(v100, v35, &qword_27D8BA340, &qword_22B363FB0);
              v38 = *(v32 + 48);
              if (v38(v35, 1, v33) == 1)
              {
                sub_22B123284(v0[24], &qword_27D8BA340, &qword_22B363FB0);
              }

              else
              {
                v55 = v0[35];
                v56 = v0[32];
                v57 = v0[27];
                v58 = v0[28];
                v60 = v0[23];
                v59 = v0[24];
                v98 = v0[15];
                v101(v55, v57);
                v99 = *(v58 + 32);
                v99(v56, v59, v57);
                (*(v58 + 16))(v55, v56, v57);
                sub_22B170BE0(v98, v60, &qword_27D8BA340, &qword_22B363FB0);
                if (v38(v60, 1, v57) == 1)
                {
                  v62 = v0[32];
                  v61 = v0[33];
                  v63 = v0[31];
                  v64 = v0[27];
                  sub_22B123284(v0[23], &qword_27D8BA340, &qword_22B363FB0);
                  sub_22B35DDCC();
                  v101(v62, v64);
                  v101(v61, v64);
                  v65 = v61;
                  v66 = v63;
                  v67 = v64;
                }

                else
                {
                  v80 = v0[33];
                  v81 = v0[27];
                  v82 = v0[23];
                  v101(v0[32], v81);
                  v101(v80, v81);
                  v65 = v80;
                  v66 = v82;
                  v67 = v81;
                }

                v99(v65, v66, v67);
              }

              v83 = v0[35];
              v84 = v0[33];
              v86 = v0[29];
              v85 = v0[30];
              v88 = v0[27];
              v87 = v0[28];
              v89 = v0[25];
              sub_22B35EC1C();
              v90 = *(v87 + 16);
              v90(v85, v83, v88);
              v90(v86, v84, v88);

              sub_22B35E05C();
              v28 = v103(v89, 1, v102);
              if (v28 != 1)
              {
                v91 = v0[59];

                v92 = swift_task_alloc();
                v0[76] = v92;
                *v92 = v0;
                v92[1] = sub_22B227E28;
                v93 = v0[58];
                v94 = v0[29];
                v95 = v0[30];
                v96 = v0[25];

                return sub_22B313FE4(v95, v94, v105, v93, v91, v96);
              }
            }

            __break(1u);
            return MEMORY[0x2822009F8](v28, v29, v30);
          }

          v54 = v0[53];

          goto LABEL_49;
        }

        v41 = v0[47];
        v43 = v0[20];
        v42 = v0[21];
        sub_22B35F16C();
        v44 = (*(v42 + 48))(v41, 1, v43);
        v45 = v0[47];
        if (v44)
        {
          sub_22B123284(v0[47], &qword_27D8BA560, &unk_22B366200);
        }

        else
        {
          v68 = sub_22B35EBAC();
          sub_22B123284(v45, &qword_27D8BA560, &unk_22B366200);
          v69 = *(v68 + 16);
          if (v69)
          {
            v70 = v0[42];
            v72 = *(v70 + 16);
            v71 = v70 + 16;
            v106 = v72;
            v73 = v68 + ((*(v71 + 64) + 32) & ~*(v71 + 64));
            v74 = *(v71 + 56);
            do
            {
              v75 = v0[45];
              v76 = v0[41];
              v106(v75, v73, v76);
              v77 = sub_22B35EBCC();
              v79 = v78;
              (*(v71 - 8))(v75, v76);
              sub_22B32DF50(v107, v77, v79);

              v73 += v74;
              --v69;
            }

            while (v69);

            v24 = v0[9];
            goto LABEL_10;
          }
        }

        v46 = sub_22B35F12C();
        v0[62] = v46;
        v0[63] = v47;
        if (v47)
        {
          v48 = v46;
          v49 = v47;
          v50 = sub_22B35F43C();
          v0[64] = v50;
          v0[65] = v51;
          if (v51)
          {
            v52 = HIBYTE(v49) & 0xF;
            if ((v49 & 0x2000000000000000) == 0)
            {
              v52 = v48 & 0xFFFFFFFFFFFFLL;
            }

            if (v52)
            {
              v53 = HIBYTE(v51) & 0xF;
              if ((v51 & 0x2000000000000000) == 0)
              {
                v53 = v50 & 0xFFFFFFFFFFFFLL;
              }

              if (v53)
              {
                if (qword_2814096B8 != -1)
                {
                  swift_once();
                }

                v29 = qword_28140BCE8;
                v0[66] = qword_28140BCE8;
                v28 = sub_22B227550;
                v30 = 0;

                return MEMORY[0x2822009F8](v28, v29, v30);
              }
            }
          }
        }
      }

      else
      {
      }
    }

    else
    {
    }

LABEL_49:

    v40 = v0[1];
    goto LABEL_50;
  }

  sub_22B134CDC();
  swift_allocError();
  *v39 = 10;
  swift_willThrow();

  v40 = v0[1];
LABEL_50:

  return v40();
}

uint64_t sub_22B227550()
{
  sub_22B32C2B8(v0[62], v0[63], v0[64], v0[65], 0, 0);
  v0[67] = v1;
  v0[68] = 0;
  v2 = v0[16];

  return MEMORY[0x2822009F8](sub_22B227668, v2, 0);
}

uint64_t sub_22B227668()
{
  v75 = v0;
  v74[2] = *MEMORY[0x277D85DE8];
  v1 = v0[67];
  if (v1)
  {
    v68 = *(v1 + 16);
    if (v68)
    {
      v2 = 0;
      v64 = v0[39];
      v66 = v0[40];
      v60 = v0[67];
      v62 = v1 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
      v59 = v0[37];
      do
      {
        if (v2 >= *(v1 + 16))
        {
          __break(1u);
        }

        v3 = v0[40];
        sub_22B23E004(v62 + *(v64 + 72) * v2, v3);
        v4 = *(v66 + 32);

        sub_22B23E068(v3, type metadata accessor for CDUsagePointRecords);
        v5 = *(v4 + 16);
        if (v5)
        {
          v71 = v2;
          v6 = v4 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
          v72 = *(v59 + 72);
          v7 = *(v59 + 16);
          do
          {
            v8 = v0[38];
            v9 = v0[36];
            v7(v8, v6, v9);
            v10 = sub_22B35F75C();
            v12 = v11;
            (*(v59 + 8))(v8, v9);
            sub_22B32DF50(v74, v10, v12);

            v6 += v72;
            --v5;
          }

          while (v5);

          v1 = v60;
          v2 = v71;
        }

        else
        {
        }

        ++v2;
      }

      while (v2 != v68);
    }

    v0[69] = v0[68];
    v13 = v0[9];
    v0[70] = v13;
    if (*(v13 + 16))
    {
      v73 = v13;
      v14 = v0[26];
      sub_22B35DE6C();
      sub_22B35E05C();
      v15 = sub_22B35E0BC();
      v0[71] = v15;
      v16 = *(v15 - 8);
      v70 = *(v16 + 48);
      result = v70(v14, 1, v15);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        v18 = v0[34];
        v20 = v0[27];
        v19 = v0[28];
        v21 = v0[26];
        v22 = v0[24];
        v65 = v0[14];
        sub_22B35F50C();
        v23 = *(v19 + 8);
        v0[72] = v23;
        v0[73] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v67 = v23;
        v23(v18, v20);
        v24 = *(v16 + 8);
        v0[74] = v24;
        v0[75] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v69 = v15;
        v24(v21, v15);
        sub_22B35DDCC();
        sub_22B170BE0(v65, v22, &qword_27D8BA340, &qword_22B363FB0);
        v25 = *(v19 + 48);
        if (v25(v22, 1, v20) == 1)
        {
          sub_22B123284(v0[24], &qword_27D8BA340, &qword_22B363FB0);
        }

        else
        {
          v28 = v0[35];
          v29 = v0[32];
          v30 = v0[27];
          v31 = v0[28];
          v33 = v0[23];
          v32 = v0[24];
          v61 = v0[15];
          v67(v28, v30);
          v63 = *(v31 + 32);
          v63(v29, v32, v30);
          (*(v31 + 16))(v28, v29, v30);
          sub_22B170BE0(v61, v33, &qword_27D8BA340, &qword_22B363FB0);
          if (v25(v33, 1, v30) == 1)
          {
            v35 = v0[32];
            v34 = v0[33];
            v36 = v0[31];
            v37 = v0[27];
            sub_22B123284(v0[23], &qword_27D8BA340, &qword_22B363FB0);
            sub_22B35DDCC();
            v67(v35, v37);
            v67(v34, v37);
            v38 = v34;
            v39 = v36;
            v40 = v37;
          }

          else
          {
            v41 = v0[33];
            v42 = v0[27];
            v43 = v0[23];
            v67(v0[32], v42);
            v67(v41, v42);
            v38 = v41;
            v39 = v43;
            v40 = v42;
          }

          v63(v38, v39, v40);
        }

        v44 = v0;
        v45 = v0[35];
        v46 = v0[33];
        v48 = v0[29];
        v47 = v0[30];
        v49 = v0[28];
        v50 = v44[27];
        v51 = v44[25];
        sub_22B35EC1C();
        v52 = *(v49 + 16);
        v52(v47, v45, v50);
        v52(v48, v46, v50);

        sub_22B35E05C();
        result = v70(v51, 1, v69);
        if (result != 1)
        {
          v53 = v44[59];

          v54 = swift_task_alloc();
          v44[76] = v54;
          *v54 = v44;
          v54[1] = sub_22B227E28;
          v55 = v44[58];
          v56 = v44[29];
          v57 = v44[25];
          v58 = v44[30];

          return sub_22B313FE4(v58, v56, v73, v55, v53, v57);
        }
      }

      __break(1u);
      return result;
    }

    v26 = v0[53];
  }

  else
  {
    v26 = v0[53];
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_22B227E28(uint64_t a1)
{
  v10 = *(*v1 + 592);
  v2 = *(*v1 + 576);
  v9 = *(*v1 + 568);
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 232);
  v5 = *(*v1 + 216);
  v6 = *(*v1 + 200);
  v8 = *(*v1 + 128);
  *(*v1 + 616) = a1;

  v2(v4, v5);
  v2(v3, v5);
  v10(v6, v9);

  return MEMORY[0x2822009F8](sub_22B2280B4, v8, 0);
}

uint64_t sub_22B2280B4()
{
  v1 = 0;
  v2 = v0[77];
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v75 = v0[77];
  v7 = -1 << *(v75 + 32);
  v8 = v0[42];
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v9 = v6 & v3;
  v10 = (63 - v7) >> 6;
  v85 = v0[18];
  v88 = (v85 + 8);
  v68 = (v8 + 16);
  v70 = v0[42];
  v74 = (v8 + 8);
  v11 = v0[69];
  v72 = v4;
  v69 = v10;
  if (v9)
  {
    while (1)
    {
      v12 = v93;
LABEL_10:
      v77 = v1;
      v79 = v9;
      v14 = *(*(v75 + 56) + 24 * (__clz(__rbit64(v9)) | (v1 << 6)));

      sub_22B35EBFC();

      sub_22B35EBBC();

      sub_22B35EBDC();
      v90 = *(v14 + 16);
      if (v90)
      {
        break;
      }

LABEL_19:

      v29 = objc_opt_self();
      v30 = sub_22B360A3C();

      v93[10] = 0;
      v31 = [v29 archivedDataWithRootObject:v30 requiringSecureCoding:0 error:v93 + 10];

      v32 = v93[10];
      if (!v31)
      {
        v62 = v93[72];
        v63 = v93[53];
        v51 = v93;
        v82 = v93[44];
        v64 = v93[41];
        v92 = v93[35];
        v65 = v93[27];
        v66 = v93[21];
        v87 = v93[22];
        v89 = v93[33];
        v84 = v93[20];
        v67 = v32;
        sub_22B35DB9C();

        swift_willThrow();

        (*v74)(v82, v64);
        (*(v66 + 8))(v87, v84);
        v62(v89, v65);
        v62(v92, v65);
        goto LABEL_27;
      }

      v33 = v93[43];
      v34 = v93[44];
      v35 = v93[41];
      v36 = v32;
      v37 = sub_22B35DCDC();
      v39 = v38;

      sub_22B144B30(v37, v39);
      sub_22B35EBEC();
      (*v68)(v33, v34, v35);
      v40 = sub_22B35EB9C();
      v42 = v41;
      v43 = *v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v42 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v43 = sub_22B32D1F0(0, v43[2] + 1, 1, v43);
        *v42 = v43;
      }

      v46 = v43[2];
      v45 = v43[3];
      if (v46 >= v45 >> 1)
      {
        v43 = sub_22B32D1F0((v45 > 1), v46 + 1, 1, v43);
        *v42 = v43;
      }

      v47 = v93[44];
      v48 = v93[43];
      v49 = v93[41];
      v43[2] = v46 + 1;
      v50 = v43 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
      v9 = (v79 - 1) & v79;
      (*(v70 + 32))(&v50[*(v70 + 72) * v46], v48, v49);
      v40();
      sub_22B12F174(v37, v39);
      (*(v70 + 8))(v47, v49);
      v4 = v72;
      v10 = v69;
      v1 = v77;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v15 >= *(v14 + 16))
      {
        __break(1u);
LABEL_35:
        __break(1u);
      }

      v17 = v14;
      v18 = (*(v85 + 16))(v12[19], v14 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v15, v12[17]);
      v19 = MEMORY[0x23188EEB0](v18);
      sub_22B35D82C();
      swift_allocObject();
      sub_22B35D81C();
      sub_22B23E468(&qword_27D8BA848, 255, MEMORY[0x277D180E0], MEMORY[0x277D180E8]);
      v20 = sub_22B35D80C();
      if (v11)
      {
        break;
      }

      v22 = v20;
      v23 = v21;
      v24 = v12[19];
      v25 = v12[17];

      objc_autoreleasePoolPop(v19);
      (*v88)(v24, v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_22B32D0BC(0, *(v16 + 2) + 1, 1, v16);
      }

      v27 = *(v16 + 2);
      v26 = *(v16 + 3);
      v12 = v93;
      if (v27 >= v26 >> 1)
      {
        v16 = sub_22B32D0BC((v26 > 1), v27 + 1, 1, v16);
      }

      v11 = 0;
      ++v15;
      *(v16 + 2) = v27 + 1;
      v28 = &v16[16 * v27];
      *(v28 + 4) = v22;
      *(v28 + 5) = v23;
      v14 = v17;
      if (v90 == v15)
      {
        goto LABEL_19;
      }
    }

    v51 = v12;
    v91 = v12[72];
    v52 = v12[53];
    v76 = v51[41];
    v78 = v51[44];
    v83 = v51[33];
    v86 = v51[35];
    v53 = v51[27];
    v54 = v51[21];
    v80 = v51[20];
    v81 = v51[22];
    v71 = v51[17];
    v73 = v51[19];

    objc_autoreleasePoolPop(v19);

    (*v88)(v73, v71);
    (*v74)(v78, v76);
    (*(v54 + 8))(v81, v80);
    v91(v83, v53);
    v91(v86, v53);

LABEL_27:

    v55 = v51[1];

    return v55();
  }

  else
  {
LABEL_5:
    v12 = v93;
    while (1)
    {
      v13 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_35;
      }

      if (v13 >= v10)
      {
        break;
      }

      v9 = *(v4 + 8 * v13);
      ++v1;
      if (v9)
      {
        v1 = v13;
        goto LABEL_10;
      }
    }

    v57 = v93[46];
    v59 = v93[21];
    v58 = v93[22];
    v60 = v93[20];

    (*(v59 + 16))(v57, v58, v60);
    (*(v59 + 56))(v57, 0, 1, v60);
    sub_22B35F17C();
    v61 = swift_task_alloc();
    v93[78] = v61;
    *v61 = v93;
    v61[1] = sub_22B228A04;

    return EKEnergySite.save(reset:tokenUpdate:)(0, 0);
  }
}

uint64_t sub_22B228A04()
{
  v2 = *v1;
  *(*v1 + 632) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_22B229078;
  }

  else
  {
    v4 = sub_22B228B5C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B228B5C()
{
  v26 = v0;
  v25[1] = *MEMORY[0x277D85DE8];
  (*(v0 + 440))(*(v0 + 400), *(v0 + 432), *(v0 + 384));

  v1 = sub_22B36050C();
  v2 = sub_22B360D2C();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 576);
  v5 = *(v0 + 456);
  v20 = *(v0 + 424);
  v21 = *(v0 + 384);
  v22 = *(v0 + 400);
  v6 = *(v0 + 280);
  v7 = *(v0 + 264);
  v8 = *(v0 + 216);
  v9 = *(v0 + 168);
  v23 = *(v0 + 160);
  v24 = *(v0 + 176);
  if (v3)
  {
    v19 = *(v0 + 280);
    v11 = *(v0 + 88);
    v10 = *(v0 + 96);
    v18 = *(v0 + 264);
    v12 = swift_slowAlloc();
    v17 = v5;
    v13 = swift_slowAlloc();
    v25[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_22B1A7B20(v11, v10, v25);
    _os_log_impl(&dword_22B116000, v1, v2, "Refresh Tariff Profiles complete %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);

    v17(v22, v21);
    (*(v9 + 8))(v24, v23);
    v4(v18, v8);
    v14 = v19;
  }

  else
  {

    v5(v22, v21);
    (*(v9 + 8))(v24, v23);
    v4(v7, v8);
    v14 = v6;
  }

  v4(v14, v8);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_22B228EC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B229078()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 216);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v7 = *(v0 + 160);

  (*(v6 + 8))(v5, v7);
  v1(v3, v4);
  v1(v2, v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22B229278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v61 = a7;
  v62 = a8;
  v58 = a5;
  v59 = a6;
  v63 = a2;
  v49 = a1;
  v60 = a13;
  v52 = a4;
  v53 = a12;
  v56 = a3;
  v57 = a11;
  v51 = a10;
  v54 = a14;
  v55 = a9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  v46 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - v17;
  v48 = &v43 - v17;
  v19 = sub_22B35DE9C();
  v45 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v47 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v43 - v23;
  v50 = &v43 - v23;
  v25 = sub_22B360B6C();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  (*(v20 + 16))(&v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), a15, v19);
  v44 = v16;
  (*(v16 + 16))(v18, v49, v15);
  v27 = sub_22B23E468(&qword_27D8BA2B0, v26, type metadata accessor for EnergySiteManager, &unk_22B3661D8);
  v28 = (*(v20 + 80) + 136) & ~*(v20 + 80);
  v29 = (v21 + *(v16 + 80) + v28) & ~*(v16 + 80);
  v30 = swift_allocObject();
  v31 = v63;
  *(v30 + 2) = v63;
  *(v30 + 3) = v27;
  v32 = v56;
  *(v30 + 4) = v31;
  *(v30 + 5) = v32;
  v33 = v51;
  v34 = v58;
  v35 = v59;
  *(v30 + 6) = v52;
  *(v30 + 7) = v34;
  v36 = v61;
  v37 = v62;
  *(v30 + 8) = v35;
  *(v30 + 9) = v36;
  v39 = v54;
  v38 = v55;
  *(v30 + 10) = v37;
  *(v30 + 11) = v38;
  v40 = v57;
  *(v30 + 12) = v33;
  *(v30 + 13) = v40;
  v41 = v60;
  *(v30 + 14) = v53;
  *(v30 + 15) = v41;
  *(v30 + 16) = v39;
  (*(v20 + 32))(&v30[v28], v47, v45);
  (*(v44 + 32))(&v30[v29], v48, v46);

  swift_retain_n();

  sub_22B123DF0(0, 0, v50, &unk_22B366298, v30);
}

uint64_t sub_22B229628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 640) = v28;
  *(v8 + 632) = v27;
  *(v8 + 616) = v26;
  *(v8 + 600) = v25;
  *(v8 + 584) = v24;
  *(v8 + 568) = v23;
  *(v8 + 560) = a8;
  *(v8 + 552) = a7;
  *(v8 + 544) = a6;
  *(v8 + 536) = a5;
  *(v8 + 528) = a4;
  v11 = sub_22B35DE9C();
  *(v8 + 648) = v11;
  *(v8 + 656) = *(v11 - 8);
  *(v8 + 664) = swift_task_alloc();
  *(v8 + 672) = swift_task_alloc();
  *(v8 + 680) = swift_task_alloc();
  v12 = sub_22B35EE4C();
  *(v8 + 688) = v12;
  *(v8 + 696) = *(v12 - 8);
  *(v8 + 704) = swift_task_alloc();
  v13 = sub_22B36052C();
  *(v8 + 712) = v13;
  *(v8 + 720) = *(v13 - 8);
  *(v8 + 728) = swift_task_alloc();
  *(v8 + 736) = swift_task_alloc();
  *(v8 + 744) = swift_task_alloc();
  *(v8 + 752) = swift_task_alloc();
  *(v8 + 760) = swift_task_alloc();
  *(v8 + 768) = swift_task_alloc();
  *(v8 + 776) = swift_task_alloc();
  *(v8 + 784) = swift_task_alloc();
  *(v8 + 792) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  *(v8 + 800) = swift_task_alloc();
  *(v8 + 808) = swift_task_alloc();
  *(v8 + 816) = swift_task_alloc();
  v14 = sub_22B35E0BC();
  *(v8 + 824) = v14;
  *(v8 + 832) = *(v14 - 8);
  *(v8 + 840) = swift_task_alloc();
  v15 = sub_22B35DD8C();
  *(v8 + 848) = v15;
  *(v8 + 856) = *(v15 - 8);
  *(v8 + 864) = swift_task_alloc();
  v16 = sub_22B35DD6C();
  *(v8 + 872) = v16;
  *(v8 + 880) = *(v16 - 8);
  *(v8 + 888) = swift_task_alloc();
  v17 = sub_22B35DD4C();
  *(v8 + 896) = v17;
  *(v8 + 904) = *(v17 - 8);
  *(v8 + 912) = swift_task_alloc();
  v18 = sub_22B35DD5C();
  *(v8 + 920) = v18;
  *(v8 + 928) = *(v18 - 8);
  *(v8 + 936) = swift_task_alloc();
  v19 = sub_22B35DDBC();
  *(v8 + 944) = v19;
  *(v8 + 952) = *(v19 - 8);
  *(v8 + 960) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  *(v8 + 968) = swift_task_alloc();
  *(v8 + 976) = swift_task_alloc();
  *(v8 + 984) = swift_task_alloc();
  *(v8 + 992) = swift_task_alloc();
  *(v8 + 1000) = swift_task_alloc();
  *(v8 + 1008) = swift_task_alloc();
  *(v8 + 1016) = swift_task_alloc();
  *(v8 + 1024) = swift_task_alloc();
  v20 = swift_task_alloc();
  *(v8 + 1032) = v20;
  *v20 = v8;
  v20[1] = sub_22B229BB4;

  return sub_22B22250C(a5, a6, 0, 0);
}

uint64_t sub_22B229BB4(uint64_t a1)
{
  v2 = *(*v1 + 528);
  *(*v1 + 1040) = a1;

  return MEMORY[0x2822009F8](sub_22B229CCC, v2, 0);
}

uint64_t sub_22B229CCC()
{
  if (v0[130])
  {
    sub_22B36012C();

    v1 = swift_task_alloc();
    v0[131] = v1;
    *v1 = v0;
    v1[1] = sub_22B229FD4;
    v2 = v0[70];
    v3 = v0[69];

    return MEMORY[0x282172500](v3, v2);
  }

  else
  {
    sub_22B134CDC();
    v4 = swift_allocError();
    *v5 = 10;
    swift_willThrow();
    v0[63] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
    sub_22B360ADC();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22B229FD4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1056) = a1;
  *(v4 + 1064) = v1;

  v5 = *(v3 + 528);
  if (v1)
  {
    v6 = sub_22B22EB20;
  }

  else
  {
    v6 = sub_22B22A10C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B22A10C()
{
  v1 = *(v0[66] + 120);
  v0[134] = v1;
  v9 = (*MEMORY[0x277D181A0] + MEMORY[0x277D181A0]);
  v2 = v1;
  v3 = swift_task_alloc();
  v0[135] = v3;
  *v3 = v0;
  v3[1] = sub_22B22A1E4;
  v4 = v0[74];
  v5 = v0[73];
  v6 = v0[72];
  v7 = v0[71];

  return v9(v7, v6, v5, v4, v2);
}

uint64_t sub_22B22A1E4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1088) = a1;
  *(v3 + 1096) = v1;

  if (v1)
  {
    v4 = *(v3 + 528);
    v5 = sub_22B22ED5C;
  }

  else
  {
    v6 = *(v3 + 528);

    v5 = sub_22B22A310;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B22A310()
{
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[112];
  v4 = v0[111];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[107];
  v26 = v0[106];
  v27 = v0[108];
  v8 = v0[104];
  v28 = v0[103];
  v9 = v0[102];
  (*(v0[116] + 104))(v0[117], *MEMORY[0x277CC9460], v0[115]);
  (*(v2 + 104))(v1, *MEMORY[0x277CC9458], v3);
  (*(v5 + 104))(v4, *MEMORY[0x277CC9468], v6);
  (*(v7 + 104))(v27, *MEMORY[0x277CC9480], v26);
  sub_22B35E08C();
  v10 = *(v8 + 48);
  v0[138] = v10;
  v0[139] = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v11 = v10(v9, 1, v28);
  if (v11 == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = v0[137];
    (*(v0[104] + 32))(v0[105], v0[102], v0[103]);
    sub_22B35DD7C();
    v13 = sub_22B36013C();
    sub_22B3601BC();

    sub_22B35DD9C();
    v14 = v12;
    v15 = v0[120];
    v16 = v0[119];
    v17 = v0[118];
    if (v14)
    {

      (*(v16 + 8))(v15, v17);
      v18 = 1;
    }

    else
    {
      (*(v16 + 8))(v0[120], v0[118]);

      v18 = 0;
    }

    v19 = v0[128];
    v20 = v0[81];
    v21 = v0[66];
    v22 = *(v0[82] + 56);
    v0[140] = v22;
    v22(v19, v18, 1, v20);
    v23 = *(v21 + 120);
    v0[141] = v23;
    v0[2] = v0;
    v0[3] = sub_22B22A664;
    v24 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD20, &qword_22B366250);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_22B30F28C;
    v0[21] = &block_descriptor_79;
    v0[22] = v24;
    [v23 resetWithCompletionHandler_];
    v11 = (v0 + 2);
  }

  return MEMORY[0x282200938](v11);
}

uint64_t sub_22B22A664()
{
  v1 = *(*v0 + 528);

  return MEMORY[0x2822009F8](sub_22B22A758, v1, 0);
}

uint64_t sub_22B22A758()
{
  v129 = v0;

  v1 = sub_22B36013C();
  v2 = sub_22B3601AC();

  v3 = v2 >> 62;
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_56;
  }

LABEL_49:
  if (sub_22B36109C() != 1)
  {
LABEL_56:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v88 = *(v0 + 728);
    v89 = *(v0 + 720);
    v90 = *(v0 + 712);
    v91 = __swift_project_value_buffer(v90, qword_28140BD10);
    swift_beginAccess();
    (*(v89 + 16))(v88, v91, v90);

    v92 = sub_22B36050C();
    v93 = sub_22B360D1C();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v127 = v95;
      *v94 = 136315394;
      *(v94 + 4) = sub_22B1A7B20(0xD000000000000085, 0x800000022B369350, &v127);
      *(v94 + 12) = 2048;
      if (v3)
      {
        v96 = sub_22B36109C();
      }

      else
      {
        v96 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v100 = *(v0 + 728);
      v101 = *(v0 + 720);
      v102 = *(v0 + 712);

      *(v94 + 14) = v96;

      _os_log_impl(&dword_22B116000, v92, v93, "%s multiple customer agreements not supported: %ld", v94, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v95);
      MEMORY[0x23188F650](v95, -1, -1);
      MEMORY[0x23188F650](v94, -1, -1);

      (*(v101 + 8))(v100, v102);
    }

    else
    {
      v97 = *(v0 + 728);
      v98 = *(v0 + 720);
      v99 = *(v0 + 712);
      swift_bridgeObjectRelease_n();

      (*(v98 + 8))(v97, v99);
    }

    v34 = swift_task_alloc();
    *(v0 + 1384) = v34;
    *v34 = v0;
    v35 = sub_22B22E780;
    goto LABEL_71;
  }

  if (!sub_22B36109C())
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v76 = *(v0 + 736);
    v77 = *(v0 + 720);
    v78 = *(v0 + 712);
    v79 = __swift_project_value_buffer(v78, qword_28140BD10);
    swift_beginAccess();
    (*(v77 + 16))(v76, v79, v78);
    v80 = sub_22B36050C();
    v81 = sub_22B360D1C();
    v82 = os_log_type_enabled(v80, v81);
    v83 = *(v0 + 736);
    v84 = *(v0 + 720);
    v85 = *(v0 + 712);
    if (v82)
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v127 = v87;
      *v86 = 136315138;
      *(v86 + 4) = sub_22B1A7B20(0xD000000000000085, 0x800000022B369350, &v127);
      _os_log_impl(&dword_22B116000, v80, v81, "%s customer agreement is nil", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v87);
      MEMORY[0x23188F650](v87, -1, -1);
      MEMORY[0x23188F650](v86, -1, -1);
    }

    (*(v84 + 8))(v83, v85);
    v34 = swift_task_alloc();
    *(v0 + 1376) = v34;
    *v34 = v0;
    v35 = sub_22B22E3E4;
LABEL_71:
    v34[1] = v35;
    v115 = *(v0 + 1088);
    v116 = *(v0 + 560);
    v117 = *(v0 + 552);

    return sub_22B22EFA8(v115, v117, v116);
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23188EAC0](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_75;
    }

    v4 = *(v2 + 32);
  }

  *(v0 + 1136) = v4;

  v5 = sub_22B3600BC();
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v6)
    {
      goto LABEL_8;
    }

LABEL_67:
    if (qword_28140A0C8 == -1)
    {
LABEL_68:
      v103 = *(v0 + 792);
      v104 = *(v0 + 720);
      v105 = *(v0 + 712);
      v106 = __swift_project_value_buffer(v105, qword_28140BD10);
      swift_beginAccess();
      (*(v104 + 16))(v103, v106, v105);
      v107 = sub_22B36050C();
      v108 = sub_22B360D1C();
      v109 = os_log_type_enabled(v107, v108);
      v110 = *(v0 + 792);
      v111 = *(v0 + 720);
      v112 = *(v0 + 712);
      if (v109)
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v127 = v114;
        *v113 = 136315394;
        *(v113 + 4) = sub_22B1A7B20(0xD000000000000085, 0x800000022B369350, &v127);
        *(v113 + 12) = 2048;
        *(v113 + 14) = 0;
        _os_log_impl(&dword_22B116000, v107, v108, "%s accounts without meters not supported: %ld", v113, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v114);
        MEMORY[0x23188F650](v114, -1, -1);
        MEMORY[0x23188F650](v113, -1, -1);
      }

      (*(v111 + 8))(v110, v112);
      v34 = swift_task_alloc();
      *(v0 + 1144) = v34;
      *v34 = v0;
      v35 = sub_22B22B5F0;
      goto LABEL_71;
    }

LABEL_75:
    swift_once();
    goto LABEL_68;
  }

  v6 = sub_22B36109C();

  if (!v6)
  {
    goto LABEL_67;
  }

LABEL_8:
  if (v6 >= 2)
  {
    v8 = sub_22B3600BC();
    v2 = v8;
    v9 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v8 >> 62)
    {
      v10 = sub_22B36109C();
    }

    else
    {
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = 0;
    v125 = MEMORY[0x277D84F90];
    while (v10 != v3)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x23188EAC0](v3, v2);
      }

      else
      {
        if (v3 >= *(v9 + 16))
        {
          goto LABEL_48;
        }

        v11 = *(v2 + 8 * v3 + 32);
      }

      v12 = v11;
      v13 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v14 = sub_22B3601CC();
      v16 = v15;

      ++v3;
      if (v16)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v125 = sub_22B32CD20(0, *(v125 + 2) + 1, 1, v125);
        }

        v18 = *(v125 + 2);
        v17 = *(v125 + 3);
        if (v18 >= v17 >> 1)
        {
          v125 = sub_22B32CD20((v17 > 1), v18 + 1, 1, v125);
        }

        *(v125 + 2) = v18 + 1;
        v19 = &v125[16 * v18];
        *(v19 + 4) = v14;
        *(v19 + 5) = v16;
        v3 = v13;
      }
    }

    v20 = sub_22B31A80C(v125);

    v21 = *(v20 + 16);

    if (v21 <= 1)
    {
      goto LABEL_30;
    }

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 784);
    v23 = *(v0 + 720);
    v24 = *(v0 + 712);
    v25 = __swift_project_value_buffer(v24, qword_28140BD10);
    swift_beginAccess();
    (*(v23 + 16))(v22, v25, v24);
    v26 = sub_22B36050C();
    v27 = sub_22B360D1C();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 784);
    v30 = *(v0 + 720);
    v31 = *(v0 + 712);
    if (v28)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v127 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_22B1A7B20(0xD000000000000085, 0x800000022B369350, &v127);
      _os_log_impl(&dword_22B116000, v26, v27, "%s usage points found!", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x23188F650](v33, -1, -1);
      MEMORY[0x23188F650](v32, -1, -1);
    }

    (*(v30 + 8))(v29, v31);
    v34 = swift_task_alloc();
    *(v0 + 1152) = v34;
    *v34 = v0;
    v35 = sub_22B22B998;
    goto LABEL_71;
  }

LABEL_30:
  v126 = MEMORY[0x23188EEB0](v7);
  *(v0 + 1160) = sub_22B3600CC();
  *(v0 + 1168) = v36;
  *(v0 + 1176) = sub_22B3600AC();
  *(v0 + 1184) = v37;
  v38 = sub_22B36013C();
  v39 = sub_22B36019C();

  v40 = sub_22B36009C();
  v41 = [objc_allocWithZone(MEMORY[0x277CBDB60]) init];
  sub_22B35FFFC();
  v42 = sub_22B36000C();
  if (v43)
  {
    v44 = HIBYTE(v43) & 0xF;
    if ((v43 & 0x2000000000000000) == 0)
    {
      v44 = v42 & 0xFFFFFFFFFFFFLL;
    }

    if (v44)
    {
      v127 = 10;
      v128 = 0xE100000000000000;
      MEMORY[0x23188E270]();

      MEMORY[0x23188E270](10, 0xE100000000000000);
    }
  }

  v45 = sub_22B36001C();
  if (v46)
  {
    v47 = HIBYTE(v46) & 0xF;
    if ((v46 & 0x2000000000000000) == 0)
    {
      v47 = v45 & 0xFFFFFFFFFFFFLL;
    }

    if (v47)
    {
      v127 = 10;
      v128 = 0xE100000000000000;
      MEMORY[0x23188E270]();

      MEMORY[0x23188E270](10, 0xE100000000000000);
    }
  }

  v48 = *(v0 + 1120);
  v118 = *(v0 + 1040);
  v120 = *(v0 + 1016);
  v121 = *(v0 + 1008);
  v124 = *(v0 + 704);
  v49 = *(v0 + 696);
  v122 = *(v0 + 1000);
  v123 = *(v0 + 688);
  v50 = *(v0 + 656);
  v51 = *(v0 + 648);
  v119 = *(v0 + 632);
  v52 = sub_22B36081C();

  [v41 setStreet_];

  sub_22B36002C();
  v53 = sub_22B36081C();

  [v41 setCity_];

  sub_22B36003C();
  v54 = sub_22B36081C();

  [v41 setState_];

  sub_22B35FFEC();
  v55 = sub_22B36081C();

  [v41 setPostalCode_];

  sub_22B36004C();
  v56 = sub_22B36090C();

  sub_22B36004C();
  v57 = sub_22B36081C();

  v58 = &selRef_setISOCountryCode_;
  if (v56 != 2)
  {
    v58 = &selRef_setCountry_;
  }

  [v41 *v58];

  v59 = [objc_opt_self() stringFromPostalAddress:v41 style:0];
  v60 = sub_22B36084C();
  v62 = v61;

  *(v0 + 1192) = v60;
  *(v0 + 1200) = v62;
  objc_autoreleasePoolPop(v126);
  v63 = sub_22B35F3AC();
  v65 = v64;
  *(v0 + 1208) = v63;
  *(v0 + 1216) = v64;
  v66 = sub_22B36013C();
  v67 = sub_22B36018C();
  v69 = v68;
  *(v0 + 488) = v67;
  *(v0 + 496) = v68;

  *(v0 + 1224) = v69;
  *(v0 + 1232) = sub_22B36014C();
  *(v0 + 1240) = v70;
  v72 = *(v50 + 16);
  v71 = v50 + 16;
  *(v0 + 1248) = v72;
  *(v0 + 1256) = v71 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v72(v120, v119, v51);
  *(v0 + 1264) = (v71 + 40) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v48(v120, 0, 1, v51);
  sub_22B35DE6C();
  v48(v121, 0, 1, v51);
  v48(v122, 1, 1, v51);
  (*(v49 + 104))(v124, *MEMORY[0x277D07358], v123);
  *(v0 + 1272) = sub_22B35EE3C();
  *(v0 + 1280) = v73;
  (*(v49 + 8))(v124, v123);
  v74 = swift_task_alloc();
  *(v0 + 1288) = v74;
  *v74 = v0;
  v74[1] = sub_22B22BD40;

  return sub_22B22250C(v63, v65, 0, 0);
}

uint64_t sub_22B22B5F0()
{
  v1 = *(*v0 + 528);

  return MEMORY[0x2822009F8](sub_22B22B700, v1, 0);
}

uint64_t sub_22B22B700()
{
  v1 = v0[142];
  v2 = v0[136];
  v3 = v0[132];
  v4 = v0[130];
  v5 = v0[128];
  sub_22B134CDC();
  v6 = swift_allocError();
  *v7 = 26;
  swift_willThrow();

  sub_22B123284(v5, &qword_27D8BA340, &qword_22B363FB0);
  v0[63] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();

  v8 = v0[1];

  return v8();
}

uint64_t sub_22B22B998()
{
  v1 = *(*v0 + 528);

  return MEMORY[0x2822009F8](sub_22B22BAA8, v1, 0);
}

uint64_t sub_22B22BAA8()
{
  v1 = v0[142];
  v2 = v0[136];
  v3 = v0[132];
  v4 = v0[130];
  v5 = v0[128];
  sub_22B134CDC();
  v6 = swift_allocError();
  *v7 = 25;
  swift_willThrow();

  sub_22B123284(v5, &qword_27D8BA340, &qword_22B363FB0);
  v0[63] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();

  v8 = v0[1];

  return v8();
}

uint64_t sub_22B22BD40(uint64_t a1)
{
  v2 = *(*v1 + 528);
  *(*v1 + 1296) = a1;

  return MEMORY[0x2822009F8](sub_22B22BE58, v2, 0);
}

uint64_t sub_22B22BE58()
{
  if (v0[162])
  {
    v1 = v0[127];
    v2 = v0[124];
    v13 = v0[155];

    sub_22B35F13C();

    sub_22B35F44C();
    sub_22B170BE0(v1, v2, &qword_27D8BA340, &qword_22B363FB0);
    sub_22B35F2DC();

    sub_22B35F07C();

    sub_22B35F0CC();

    sub_22B35F0CC();
    if (v13)
    {

      sub_22B35F15C();
    }

    if (v0[78])
    {

      sub_22B35F09C();
    }

    sub_22B35F0EC();

    sub_22B35F3CC();
    v3 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
    v0[163] = v3;
    v4 = sub_22B36081C();
    v0[164] = v4;
    v0[10] = v0;
    v0[15] = v0 + 64;
    v0[11] = sub_22B22C1F8;
    v5 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA8E0, qword_22B366260);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_22B164948;
    v0[29] = &block_descriptor_85;
    v0[30] = v5;
    [v3 geocodeAddressString:v4 completionHandler:v0 + 26];

    return MEMORY[0x282200938](v0 + 10);
  }

  else
  {

    v6 = v0[127];
    v7 = v0[126];
    sub_22B123284(v0[125], &qword_27D8BA340, &qword_22B363FB0);
    sub_22B123284(v7, &qword_27D8BA340, &qword_22B363FB0);
    sub_22B123284(v6, &qword_27D8BA340, &qword_22B363FB0);
    v8 = swift_task_alloc();
    v0[171] = v8;
    *v8 = v0;
    v8[1] = sub_22B22E014;
    v9 = v0[136];
    v10 = v0[70];
    v11 = v0[69];

    return sub_22B22EFA8(v9, v11, v10);
  }
}

uint64_t sub_22B22C1F8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1320) = v2;
  v3 = *(v1 + 528);
  if (v2)
  {
    v4 = sub_22B22CF88;
  }

  else
  {
    v4 = sub_22B22C318;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B22C318()
{
  v115 = v1;
  v4 = *(v1 + 512);
  if (v4 >> 62)
  {
    if (sub_22B36109C())
    {
LABEL_3:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x23188EAC0](0, v4);
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_43;
        }

        v5 = *(v4 + 32);
      }

      v3 = v5;
      v6 = *(v1 + 1312);

      v7 = [v3 location];
      if (!v7)
      {
LABEL_11:
        v25 = [v3 timeZone];
        if (v25)
        {
          v26 = v25;
          sub_22B35E0AC();

          v27 = 0;
        }

        else
        {
          v27 = 1;
        }

        v28 = *(v1 + 1104);
        v29 = *(v1 + 824);
        v30 = *(v1 + 808);
        v31 = *(v1 + 800);
        (*(*(v1 + 832) + 56))(v31, v27, 1, v29);
        sub_22B23E3A4(v31, v30);
        if (v28(v30, 1, v29) == 1)
        {
          v32 = *(v1 + 808);

          sub_22B123284(v32, &unk_27D8BA080, &unk_22B364280);
        }

        else
        {
          v33 = *(v1 + 832);
          v34 = *(v1 + 824);
          v35 = *(v1 + 808);
          v36 = sub_22B35E06C();
          v38 = v37;
          (*(v33 + 8))(v35, v34);

          sub_22B35F42C();
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v39 = *(v1 + 760);
          v40 = *(v1 + 720);
          v41 = *(v1 + 712);
          v42 = __swift_project_value_buffer(v41, qword_28140BD10);
          swift_beginAccess();
          (*(v40 + 16))(v39, v42, v41);

          v43 = sub_22B36050C();
          v44 = sub_22B360D2C();

          v45 = os_log_type_enabled(v43, v44);
          v46 = *(v1 + 1216);
          if (v45)
          {
            v47 = *(v1 + 1208);
            v104 = *(v1 + 720);
            v106 = *(v1 + 712);
            v109 = *(v1 + 760);
            v48 = swift_slowAlloc();
            v112 = v3;
            v114 = swift_slowAlloc();
            v49 = v114;
            *v48 = 136315650;
            *(v48 + 4) = sub_22B1A7B20(0xD00000000000011ALL, 0x800000022B36A810, &v114);
            *(v48 + 12) = 2080;
            v50 = sub_22B1A7B20(v47, v46, &v114);

            *(v48 + 14) = v50;
            *(v48 + 22) = 2080;
            v51 = sub_22B1A7B20(v36, v38, &v114);

            *(v48 + 24) = v51;
            _os_log_impl(&dword_22B116000, v43, v44, "%s site %s set time zone to %s", v48, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x23188F650](v49, -1, -1);
            MEMORY[0x23188F650](v48, -1, -1);

            (*(v104 + 8))(v109, v106);
          }

          else
          {
            v52 = *(v1 + 760);
            v53 = *(v1 + 720);
            v54 = *(v1 + 712);

            (*(v53 + 8))(v52, v54);
          }
        }

        goto LABEL_27;
      }

      v0 = v7;
      v2 = v7;
      sub_22B35F3EC();
      if (qword_28140A0C8 == -1)
      {
LABEL_8:
        v8 = *(v1 + 768);
        v9 = *(v1 + 720);
        v10 = *(v1 + 712);
        v11 = __swift_project_value_buffer(v10, qword_28140BD10);
        swift_beginAccess();
        (*(v9 + 16))(v8, v11, v10);

        v12 = v2;
        v13 = sub_22B36050C();
        v14 = sub_22B360D2C();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = *(v1 + 1208);
          v108 = *(v1 + 768);
          v16 = *(v1 + 720);
          v103 = *(v1 + 1216);
          v105 = *(v1 + 712);
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v111 = v3;
          v114 = swift_slowAlloc();
          v19 = v114;
          *v17 = 136315650;
          *(v17 + 4) = sub_22B1A7B20(0xD00000000000011ALL, 0x800000022B36A810, &v114);
          *(v17 + 12) = 2080;
          *(v17 + 14) = sub_22B1A7B20(v15, v103, &v114);
          *(v17 + 22) = 2112;
          *(v17 + 24) = v12;
          *v18 = v0;
          v20 = v12;
          _os_log_impl(&dword_22B116000, v13, v14, "%s site %s set location to %@", v17, 0x20u);
          sub_22B123284(v18, &unk_27D8BAA90, &unk_22B362BC0);
          MEMORY[0x23188F650](v18, -1, -1);
          swift_arrayDestroy();
          v21 = v19;
          v3 = v111;
          MEMORY[0x23188F650](v21, -1, -1);
          MEMORY[0x23188F650](v17, -1, -1);

          (*(v16 + 8))(v108, v105);
        }

        else
        {
          v22 = *(v1 + 768);
          v23 = *(v1 + 720);
          v24 = *(v1 + 712);

          (*(v23 + 8))(v22, v24);
        }

        goto LABEL_11;
      }

LABEL_43:
      swift_once();
      goto LABEL_8;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v55 = *(v1 + 1312);
  v56 = *(v1 + 1304);

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v57 = *(v1 + 776);
  v58 = *(v1 + 720);
  v59 = *(v1 + 712);
  v60 = __swift_project_value_buffer(v59, qword_28140BD10);
  swift_beginAccess();
  (*(v58 + 16))(v57, v60, v59);

  v61 = sub_22B36050C();
  v62 = sub_22B360D1C();

  v63 = os_log_type_enabled(v61, v62);
  v64 = *(v1 + 1216);
  if (v63)
  {
    v65 = *(v1 + 1208);
    v66 = *(v1 + 1192);
    v113 = *(v1 + 776);
    v67 = *(v1 + 720);
    v107 = *(v1 + 1200);
    v110 = *(v1 + 712);
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v114 = v69;
    *v68 = 136315650;
    *(v68 + 4) = sub_22B1A7B20(0xD00000000000011ALL, 0x800000022B36A810, &v114);
    *(v68 + 12) = 2080;
    v70 = sub_22B1A7B20(v65, v64, &v114);

    *(v68 + 14) = v70;
    *(v68 + 22) = 2080;
    *(v68 + 24) = sub_22B1A7B20(v66, v107, &v114);
    _os_log_impl(&dword_22B116000, v61, v62, "%s site %s could not get placemark from %s", v68, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v69, -1, -1);
    MEMORY[0x23188F650](v68, -1, -1);

    (*(v67 + 8))(v113, v110);
  }

  else
  {
    v71 = *(v1 + 776);
    v72 = *(v1 + 720);
    v73 = *(v1 + 712);

    (*(v72 + 8))(v71, v73);
  }

LABEL_27:
  v74 = *(v1 + 1184);

  sub_22B35F1DC();
  if (v74)
  {

    sub_22B35F1BC();
  }

  v75 = *(v1 + 984);
  v76 = *(v1 + 656);
  v77 = *(v1 + 648);
  sub_22B170BE0(*(v1 + 1008), v75, &qword_27D8BA340, &qword_22B363FB0);
  v78 = *(v76 + 48);
  if (v78(v75, 1, v77) == 1)
  {
    sub_22B123284(*(v1 + 984), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v79 = *(v1 + 1248);
    v80 = *(v1 + 1120);
    v81 = *(v1 + 992);
    v82 = *(v1 + 680);
    v83 = *(v1 + 656);
    v84 = *(v1 + 648);
    (*(v83 + 32))(v82, *(v1 + 984), v84);
    v79(v81, v82, v84);
    v80(v81, 0, 1, v84);
    sub_22B35F2BC();
    (*(v83 + 8))(v82, v84);
  }

  v85 = *(v1 + 976);
  v86 = *(v1 + 648);
  sub_22B170BE0(*(v1 + 1024), v85, &qword_27D8BA340, &qword_22B363FB0);
  if (v78(v85, 1, v86) == 1)
  {
    sub_22B123284(*(v1 + 976), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v87 = *(v1 + 1248);
    v88 = *(v1 + 1120);
    v89 = *(v1 + 992);
    v90 = *(v1 + 672);
    v91 = *(v1 + 656);
    v92 = *(v1 + 648);
    (*(v91 + 32))(v90, *(v1 + 976), v92);
    v87(v89, v90, v92);
    v88(v89, 0, 1, v92);
    sub_22B35F23C();
    (*(v91 + 8))(v90, v92);
  }

  v93 = *(v1 + 968);
  v94 = *(v1 + 648);
  sub_22B170BE0(*(v1 + 1000), v93, &qword_27D8BA340, &qword_22B363FB0);
  if (v78(v93, 1, v94) == 1)
  {
    sub_22B123284(*(v1 + 968), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v95 = *(v1 + 1248);
    v96 = *(v1 + 1120);
    v97 = *(v1 + 992);
    v98 = *(v1 + 664);
    v99 = *(v1 + 656);
    v100 = *(v1 + 648);
    (*(v99 + 32))(v98, *(v1 + 968), v100);
    v95(v97, v98, v100);
    v96(v97, 0, 1, v100);
    sub_22B35F10C();
    (*(v99 + 8))(v98, v100);
  }

  sub_22B35F39C();
  LOBYTE(v114) = 0;
  sub_22B35F2FC();
  v101 = swift_task_alloc();
  *(v1 + 1328) = v101;
  *v101 = v1;
  v101[1] = sub_22B22D5CC;

  return EKEnergySite.save(reset:tokenUpdate:)(0, 1);
}