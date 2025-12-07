void *sub_261B3B638(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v30 = type metadata accessor for ListEntity(0);
  v10 = *(v30 - 8);
  v11 = MEMORY[0x28223BE20](v30);
  v29 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v28 = &v24 - v13;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = *(type metadata accessor for AppEntityID(0) - 8);
  v25 = v10;
  v16 = (v10 + 48);
  v17 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v18 = *(v15 + 72);
  v19 = MEMORY[0x277D84F90];
  v26 = a2;
  v27 = a3;
  while (1)
  {
    sub_261B35144(a2, a3, v9);
    if (v3)
    {
      break;
    }

    if ((*v16)(v9, 1, v30) == 1)
    {
      sub_261AE6A40(v9, &unk_27FEDE0C0, &unk_261D02500);
    }

    else
    {
      v20 = v28;
      sub_261B01E2C(v9, v28);
      sub_261B01E2C(v20, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_261B419E8(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_261B419E8((v21 > 1), v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_261B01E2C(v29, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22);
      a2 = v26;
      a3 = v27;
    }

    v17 += v18;
    if (!--v14)
    {
      return v19;
    }
  }

  return v19;
}

unint64_t sub_261B3B918()
{
  result = qword_27FEDA570;
  if (!qword_27FEDA570)
  {
    sub_261B05020(255, &qword_280D21DF0, 0x277D44700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA570);
  }

  return result;
}

uint64_t sub_261B3B980(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_261B3B994(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261B3B9DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_261B3BA3C()
{
  result = qword_27FEDA710;
  if (!qword_27FEDA710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA710);
  }

  return result;
}

uint64_t sub_261B3BA90()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDA750);
  v1 = __swift_project_value_buffer(v0, qword_27FEDA750);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMStoreIntentPerformer.perform(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = sub_261CFD754();
  *(v2 + 24) = v4;
  *(v2 + 32) = *(v4 - 8);
  *(v2 + 40) = swift_task_alloc();
  type metadata accessor for SectionEntityID(0);
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = type metadata accessor for SectionEntity(0);
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = *a2;
  *(v2 + 88) = *(a2 + 16);
  sub_261CFFD24();
  *(v2 + 96) = sub_261CFFD14();
  v6 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261B3BCBC, v6, v5);
}

{
  *(v3 + 968) = v2;
  *(v3 + 960) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  *(v3 + 976) = swift_task_alloc();
  *(v3 + 984) = swift_task_alloc();
  *(v3 + 992) = type metadata accessor for ReminderEntity(0);
  *(v3 + 1000) = swift_task_alloc();
  v5 = sub_261CFD7E4();
  *(v3 + 1008) = v5;
  *(v3 + 1016) = *(v5 - 8);
  *(v3 + 1024) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA988, &unk_261D03480);
  *(v3 + 1032) = swift_task_alloc();
  v6 = sub_261CFD844();
  *(v3 + 1040) = v6;
  *(v3 + 1048) = *(v6 - 8);
  *(v3 + 1056) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  *(v3 + 1064) = swift_task_alloc();
  *(v3 + 1072) = swift_task_alloc();
  v7 = sub_261CFC954();
  *(v3 + 1080) = v7;
  *(v3 + 1088) = *(v7 - 8);
  *(v3 + 1096) = swift_task_alloc();
  *(v3 + 1104) = swift_task_alloc();
  *(v3 + 1112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA990, &unk_261D03490);
  *(v3 + 1120) = swift_task_alloc();
  v8 = sub_261CFF6A4();
  *(v3 + 1128) = v8;
  *(v3 + 1136) = *(v8 - 8);
  *(v3 + 1144) = swift_task_alloc();
  *(v3 + 1152) = swift_task_alloc();
  v9 = sub_261CFE1F4();
  *(v3 + 1160) = v9;
  *(v3 + 1168) = *(v9 - 8);
  *(v3 + 1176) = swift_task_alloc();
  *(v3 + 1184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA998, &unk_261D10200);
  *(v3 + 1192) = swift_task_alloc();
  v10 = sub_261CFC7E4();
  *(v3 + 1200) = v10;
  *(v3 + 1208) = *(v10 - 8);
  *(v3 + 1216) = swift_task_alloc();
  *(v3 + 1224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  *(v3 + 1232) = swift_task_alloc();
  *(v3 + 1240) = swift_task_alloc();
  v11 = sub_261CFDA54();
  *(v3 + 1248) = v11;
  *(v3 + 1256) = *(v11 - 8);
  *(v3 + 1264) = swift_task_alloc();
  *(v3 + 1272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  *(v3 + 1280) = swift_task_alloc();
  *(v3 + 1288) = swift_task_alloc();
  v12 = sub_261CFD4E4();
  *(v3 + 1296) = v12;
  *(v3 + 1304) = *(v12 - 8);
  *(v3 + 1312) = swift_task_alloc();
  *(v3 + 1320) = swift_task_alloc();
  *(v3 + 1328) = swift_task_alloc();
  v13 = sub_261CFDEA4();
  *(v3 + 1336) = v13;
  *(v3 + 1344) = *(v13 - 8);
  *(v3 + 1352) = swift_task_alloc();
  v14 = sub_261CFE8C4();
  *(v3 + 1360) = v14;
  *(v3 + 1368) = *(v14 - 8);
  *(v3 + 1376) = swift_task_alloc();
  *(v3 + 1384) = swift_task_alloc();
  *(v3 + 1392) = swift_task_alloc();
  v15 = sub_261CFDC34();
  *(v3 + 1400) = v15;
  *(v3 + 1408) = *(v15 - 8);
  *(v3 + 1416) = swift_task_alloc();
  v16 = sub_261CFD754();
  *(v3 + 1424) = v16;
  *(v3 + 1432) = *(v16 - 8);
  *(v3 + 1440) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  *(v3 + 1448) = swift_task_alloc();
  v17 = sub_261CFD524();
  *(v3 + 1456) = v17;
  *(v3 + 1464) = *(v17 - 8);
  *(v3 + 1472) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9B0, &qword_261D034B8);
  *(v3 + 1480) = swift_task_alloc();
  *(v3 + 1488) = swift_task_alloc();
  *(v3 + 1496) = type metadata accessor for CreateRemindersPerformingContext(0);
  *(v3 + 1504) = swift_task_alloc();
  v18 = *(a2 + 176);
  *(v3 + 176) = *(a2 + 160);
  *(v3 + 192) = v18;
  *(v3 + 208) = *(a2 + 192);
  *(v3 + 224) = *(a2 + 208);
  v19 = *(a2 + 112);
  *(v3 + 112) = *(a2 + 96);
  *(v3 + 128) = v19;
  v20 = *(a2 + 144);
  *(v3 + 144) = *(a2 + 128);
  *(v3 + 160) = v20;
  v21 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v21;
  v22 = *(a2 + 80);
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = v22;
  v23 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v23;
  sub_261CFFD24();
  *(v3 + 1512) = sub_261CFFD14();
  v24 = sub_261CFFCF4();
  *(v3 + 1520) = v24;
  *(v3 + 1528) = v25;

  return MEMORY[0x2822009F8](sub_261B438C4, v24, v25);
}

{
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  *(v3 + 80) = *a2;
  *(v3 + 96) = *(a2 + 16);
  sub_261CFFD24();
  *(v3 + 104) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v3 + 112) = v5;
  *(v3 + 120) = v4;

  return MEMORY[0x2822009F8](sub_261B81DDC, v5, v4);
}

{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  *(v3 + 112) = *a2;
  v4 = *(a2 + 16);
  *(v3 + 184) = *(a2 + 24);
  v5 = *(a2 + 32);
  *(v3 + 128) = v4;
  *(v3 + 136) = v5;
  sub_261CFFD24();
  *(v3 + 144) = sub_261CFFD14();
  v7 = sub_261CFFCF4();
  *(v3 + 152) = v7;
  *(v3 + 160) = v6;

  return MEMORY[0x2822009F8](sub_261B88B98, v7, v6);
}

{
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  v5 = sub_261CFE344();
  *(v3 + 128) = v5;
  *(v3 + 136) = *(v5 - 8);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = type metadata accessor for AppEntityID(0);
  *(v3 + 168) = swift_task_alloc();
  v6 = type metadata accessor for GroupEntity(0);
  *(v3 + 176) = v6;
  *(v3 + 184) = *(v6 - 8);
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = *a2;
  *(v3 + 216) = *(a2 + 16);
  sub_261CFFD24();
  *(v3 + 224) = sub_261CFFD14();
  v7 = sub_261CFFCF4();
  *(v3 + 232) = v7;
  *(v3 + 240) = v8;

  return MEMORY[0x2822009F8](sub_261BBC078, v7, v8);
}

{
  *(v3 + 120) = a1;
  *(v3 + 128) = v2;
  *(v3 + 136) = type metadata accessor for ListEntity(0);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  v5 = swift_task_alloc();
  *(v3 + 104) = *a2;
  v6 = *(a2 + 16);
  *(v3 + 168) = v5;
  *(v3 + 176) = v6;
  v7 = *(a2 + 72);
  *(v3 + 48) = *(a2 + 56);
  *(v3 + 64) = v7;
  *(v3 + 80) = *(a2 + 88);
  *(v3 + 96) = *(a2 + 104);
  v8 = *(a2 + 40);
  *(v3 + 16) = *(a2 + 24);
  *(v3 + 32) = v8;
  sub_261CFFD24();
  *(v3 + 184) = sub_261CFFD14();
  v10 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261BE9054, v10, v9);
}

{
  *(v3 + 104) = a1;
  *(v3 + 112) = v2;
  sub_261CFD754();
  *(v3 + 120) = swift_task_alloc();
  v5 = sub_261CFC9D4();
  *(v3 + 128) = v5;
  *(v3 + 136) = *(v5 - 8);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = type metadata accessor for ListEntity(0);
  *(v3 + 160) = swift_task_alloc();
  v6 = sub_261CFD884();
  *(v3 + 168) = v6;
  *(v3 + 176) = *(v6 - 8);
  *(v3 + 184) = swift_task_alloc();
  v7 = type metadata accessor for AppEntityID(0);
  *(v3 + 192) = v7;
  *(v3 + 200) = *(v7 - 8);
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA00, &qword_261D035A8);
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA708, &qword_261D03298);
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = *a2;
  *(v3 + 296) = *(a2 + 16);
  sub_261CFFD24();
  *(v3 + 304) = sub_261CFFD14();
  v9 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261BF12E4, v9, v8);
}

{
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  *(v3 + 56) = *a2;
  *(v3 + 72) = *(a2 + 16);
  sub_261CFFD24();
  *(v3 + 80) = sub_261CFFD14();
  v5 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261C65810, v5, v4);
}

{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  type metadata accessor for SectionEntityID(0);
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = type metadata accessor for AppEntityID(0);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = type metadata accessor for SectionEntity(0);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  v5 = *(a2 + 16);
  *(v3 + 120) = *a2;
  *(v3 + 136) = v5;
  *(v3 + 152) = *(a2 + 32);
  sub_261CFFD24();
  *(v3 + 160) = sub_261CFFD14();
  v7 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261CE5D44, v7, v6);
}

uint64_t sub_261B3BCBC()
{
  v27 = v0;

  if (qword_27FED9858 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDA750);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136446466;
    sub_261CFCBB4();
    sub_261B3C0DC(v4 + *(v5 + 24), v6);
    sub_261B3C140(v4, type metadata accessor for SectionEntity);
    v9 = SectionEntityID.entityIdentifierString.getter();
    v11 = v10;
    sub_261B3C140(v6, type metadata accessor for SectionEntityID);
    v12 = sub_261B879C8(v9, v11, &v26);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    sub_261CFCBB4();
    v13 = *(v0 + 105);
    if (v13 == 2)
    {
      v14 = 0xE300000000000000;
      v15 = 7104878;
    }

    else
    {
      *(v0 + 106) = v13 & 1;
      v15 = sub_261CFFAB4();
      v14 = v16;
    }

    v17 = sub_261B879C8(v15, v14, &v26);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_261AE2000, v2, v3, "[OpenSectionAppIntent] Open section with sectionID: %{public}s, showExpanded: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v8, -1, -1);
    MEMORY[0x26671D560](v7, -1, -1);
  }

  v18 = *(v0 + 64);
  v19 = *(v0 + 40);
  sub_261CFCBB4();
  v20 = *(v0 + 104);
  if (v20 == 2)
  {
    v21 = 2;
  }

  else
  {
    v21 = (v20 & 1) == 0;
  }

  sub_261CFCBB4();
  sub_261BBEA50(v21, v19);
  sub_261B3C140(v18, type metadata accessor for SectionEntity);
  v22 = [objc_opt_self() defaultWorkspace];
  if (v22)
  {
    v23 = v22;
    sub_261D00034();
  }

  (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
  sub_261CFC9A4();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_261B3C03C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261B3C0DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionEntityID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261B3C140(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261B3C1A0()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDA768);
  v1 = __swift_project_value_buffer(v0, qword_27FEDA768);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261B3C288()
{
  v45 = v0;
  if (qword_27FED9860 != -1)
  {
LABEL_25:
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDA768);
  sub_261CFD104();
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v39 = v6;
    *v5 = 136446210;
    v7 = MEMORY[0x26671C340](v4, MEMORY[0x277D837D0]);
    v9 = sub_261B879C8(v7, v8, &v39);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_261AE2000, v2, v3, "[ColorEntityQueryPerforming] Query color entities with identifiers: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x26671D560](v6, -1, -1);
    MEMORY[0x26671D560](v5, -1, -1);
  }

  v10 = *(v0 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v10 + 40;
    v14 = MEMORY[0x277D84F90];
    do
    {
      v15 = (v13 + 16 * v12);
      v16 = v12;
      while (1)
      {
        if (v16 >= v11)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v12 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_24;
        }

        v18 = *(v15 - 1);
        v17 = *v15;
        sub_261CFD104();
        sub_261B3C598(v18, v17, &v39);

        v19 = *(&v39 + 1);
        if (*(&v39 + 1))
        {
          break;
        }

        sub_261AF98C8(v39, 0, v40, v41, v42, v43, v44);
        v15 += 2;
        ++v16;
        if (v12 == v11)
        {
          goto LABEL_20;
        }
      }

      v37 = v40;
      v38 = v39;
      v36 = v41;
      v20 = v42;
      v21 = v43;
      v22 = v44;
      v35 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_261B41A10(0, *(v14 + 2) + 1, 1, v14);
      }

      v24 = *(v14 + 2);
      v23 = *(v14 + 3);
      v25 = v36;
      v26 = v37;
      v27 = v38;
      if (v24 >= v23 >> 1)
      {
        v32 = sub_261B41A10((v23 > 1), v24 + 1, 1, v14);
        v25 = v36;
        v26 = v37;
        v30 = v20;
        v29 = v21;
        v28 = v22;
        v14 = v32;
        v27 = v38;
      }

      else
      {
        v28 = v22;
        v29 = v21;
        v30 = v20;
      }

      *(v14 + 2) = v24 + 1;
      v31 = &v14[56 * v24];
      *(v31 + 4) = v27;
      *(v31 + 5) = v19;
      *(v31 + 6) = v26;
      *(v31 + 7) = v25;
      *(v31 + 8) = v30;
      *(v31 + 9) = v29;
      *(v31 + 10) = v28;
      v13 = v35;
    }

    while (v12 != v11);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

LABEL_20:
  v33 = *(v0 + 8);

  return v33(v14);
}

uint64_t sub_261B3C598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v133 = a3;
  v129 = sub_261CFD674();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v132 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD884();
  MEMORY[0x28223BE20](v6 - 8);
  v127 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFFA44();
  MEMORY[0x28223BE20](v8 - 8);
  v125 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v10 - 8);
  v126 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_261CFDC74();
  v138 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v139 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA828, &qword_261D033A8);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v19 = &v105 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA830, &qword_261D033B0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v105 - v21;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA838, &qword_261D033B8);
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = &v105 - v23;
  if (qword_27FED9868 != -1)
  {
LABEL_57:
    swift_once();
  }

  v24 = __swift_project_value_buffer(v13, qword_27FEDA780);
  (*(v14 + 16))(v19, v24, v13);
  v130 = a1;
  v131 = a2;
  sub_261CFFBF4();
  sub_261B01D28(&qword_27FEDA840, &qword_27FEDA828, &qword_261D033A8, MEMORY[0x277D85AC0]);
  sub_261CFE984();
  sub_261CFE9B4();

  v25 = *(v14 + 8);
  v25(v17, v13);
  v25(v19, v13);
  v26 = v136;
  v27 = v135;
  if ((*(v135 + 48))(v22, 1, v136) == 1)
  {
    result = sub_261AE6A40(v22, &qword_27FEDA830, &qword_261D033B0);
    v29 = v133;
    *v133 = 0u;
    v29[1] = 0u;
    v29[2] = 0u;
    *(v29 + 6) = 0;
    return result;
  }

  v118 = 0;
  (*(v27 + 32))(v134, v22, v26);
  sub_261CFE9C4();

  v14 = v146;
  v30 = v147;
  v31 = v148;
  v33 = v149;
  v32 = v150;
  v111 = v151;
  v110 = v152;
  v116 = v153;
  v123 = v154;
  v109 = v155;
  v34 = v157;
  v108 = v156;
  v120 = v160;
  v122 = v162;
  v121 = v161;
  v119 = v159;
  v124 = v158;
  if (v146)
  {
    v112 = v149;
    v113 = v148;
    v114 = v147;
    v115 = v150;
    v117 = v157;
    v35 = v143;
    v36 = v144;
    v22 = v145;
    a1 = sub_261CFDCC4();
    a2 = sub_261CFDC44();
    v19 = 0;
    v37 = *(a2 + 16);
    v137 = v138 + 16;
    v107 = v35;
    v13 = v35 >> 16;
    v106 = v36;
    v38 = v36 >> 16;
    v17 = (v138 + 8);
    while (v37 != v19)
    {
      if (v19 >= *(a2 + 16))
      {
        __break(1u);
        goto LABEL_57;
      }

      (*(v138 + 16))(v139, a2 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v19, v140);
      v40 = sub_261CFDC64();
      a1 = v41;
      if ((v41 & 0x2000000000000000) != 0)
      {
        v42 = HIBYTE(v41) & 0xF;
      }

      else
      {
        v42 = v40 & 0xFFFFFFFFFFFFLL;
      }

      if (v22 == v40 && v14 == v41 && !v13 && v38 == v42)
      {

        (*v17)(v139, v140);
LABEL_17:

        v140 = MEMORY[0x26671C1B0](v107, v106, v22, v14);
        v44 = v43;

        goto LABEL_21;
      }

      v39 = sub_261D005E4();

      (*v17)(v139, v140);
      ++v19;
      if (v39)
      {
        goto LABEL_17;
      }
    }

    v140 = 0;
    v44 = 0;
LABEL_21:
    v45 = v132;
    v34 = v117;
    v32 = v115;
    v30 = v114;
    v31 = v113;
    v33 = v112;
    if (!v115)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v140 = 0;
    v44 = 0;
    v45 = v132;
    if (!v150)
    {
      goto LABEL_27;
    }
  }

  if ((v31 ^ v30) >= 0x4000)
  {
    v46 = v45;
    v47 = v30;
    v48 = v31;
    v49 = v32;
    v50 = sub_261BD1624(v30, v31, v33, v32, 16);
    if ((v51 & 0x100) != 0)
    {
      sub_261CFD104();
      v138 = sub_261BD0C18(v47, v48, v33, v49, 16);
      v52 = v53;
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v52 = v51;
      v138 = v50;
    }

    v45 = v46;
    v54 = v124;
    if (v52)
    {
      goto LABEL_27;
    }

    v67 = v116;
    if (!v123)
    {
      goto LABEL_28;
    }

    v139 = v44;
    v117 = v34;
    v68 = v111;
    v69 = v110;
    if ((v110 ^ v111) < 0x4000)
    {
    }

    else
    {
      v70 = v123;
      v71 = sub_261BD1624(v111, v110, v116, v123, 16);
      if ((v72 & 0x100) != 0)
      {
        sub_261CFD104();
        v73 = sub_261BD0C18(v68, v69, v67, v70, 16);
        v76 = v75;
        swift_bridgeObjectRelease_n();
        if ((v76 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v73 = v71;
        v74 = v72;

        if ((v74 & 1) == 0)
        {
LABEL_41:
          v44 = v139;
          v77 = v109;
          v78 = v108;
          v79 = v117;
          if (!v54)
          {
            goto LABEL_29;
          }

          if ((v108 ^ v109) < 0x4000)
          {
            goto LABEL_28;
          }

          v80 = sub_261BD1624(v109, v108, v117, v54, 16);
          if ((v81 & 0x100) != 0)
          {
            sub_261CFD104();
            v82 = sub_261BD0C18(v77, v78, v79, v54, 16);
            v85 = v84;
            swift_bridgeObjectRelease_n();
            if (v85)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v82 = v80;
            v83 = v81;

            if (v83)
            {
              goto LABEL_29;
            }
          }

          v86 = v138 / 255.0;
          v87 = v73 / 255.0;
          v88 = 0.0;
          v89 = v82 / 255.0;
          if (v122 >= 2)
          {
            v90 = v120;
            if ((v120 ^ v119) >> 14)
            {
              v91 = v121;
              v92 = v119;
              v93 = v122;
              v94 = sub_261BD1624(v119, v120, v121, v122, 16);
              v96 = v90;
              if ((v95 & 0x100) != 0)
              {
                sub_261B426A4(v92, v90, v91, v93);
                v97 = sub_261BD0C18(v92, v90, v91, v93, 16);
                v98 = v99;
                sub_261B42690(v92, v96, v91, v93);
              }

              else
              {
                v97 = v94;
                v98 = v95;
              }

              sub_261B42690(v92, v96, v91, v93);
              if ((v98 & 1) == 0)
              {
                LODWORD(v132) = 0;
                v88 = v97 / 255.0;
                goto LABEL_55;
              }
            }

            else
            {
              sub_261B42690(v119, v120, v121, v122);
            }
          }

          LODWORD(v132) = 1;
LABEL_55:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
          sub_261CFF9B4();
          sub_261CFD874();
          v100 = *MEMORY[0x277CC9110];
          v101 = *(v128 + 104);
          v102 = v129;
          v101(v45, v100, v129);
          sub_261CFD6C4();
          v138 = sub_261CFCB14();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA850, &qword_261D033C0);
          sub_261CFF9B4();
          sub_261CFD874();
          v101(v45, v100, v102);
          sub_261CFD6B4();
          v62 = sub_261CFCB44();
          sub_261CFF9B4();
          sub_261CFD874();
          LODWORD(v124) = v100;
          v101(v45, v100, v102);
          sub_261CFD6B4();
          v137 = sub_261CFCB44();
          sub_261CFF9B4();
          sub_261CFD874();
          v101(v45, v100, v102);
          v103 = v101;
          sub_261CFD6B4();
          v104 = sub_261CFCB44();
          sub_261CFF9B4();
          sub_261CFD874();
          v103(v45, v124, v102);
          v60 = v138;
          v63 = v104;
          v61 = v137;
          sub_261CFD6C4();
          v64 = sub_261CFCB44();
          v141 = *&v140;
          v142 = v139;
          v44 = v131;
          sub_261CFD104();
          sub_261CFCA14();
          v141 = v86;
          LOBYTE(v142) = 0;
          sub_261CFCA14();
          v141 = v87;
          LOBYTE(v142) = 0;
          sub_261CFCA14();
          v141 = v89;
          LOBYTE(v142) = 0;
          sub_261CFCA14();
          v141 = v88;
          LOBYTE(v142) = v132;
          goto LABEL_31;
        }
      }
    }

    v44 = v139;
    goto LABEL_29;
  }

LABEL_27:

LABEL_28:

LABEL_29:
  sub_261B42690(v119, v120, v121, v122);
  if (!v44)
  {
    result = (*(v135 + 8))(v134, v136);
    v65 = 0;
    v60 = 0;
    v62 = 0;
    v61 = 0;
    v63 = 0;
    v64 = 0;
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  sub_261CFF9B4();
  v139 = v44;
  sub_261CFD874();
  v55 = *MEMORY[0x277CC9110];
  v56 = *(v128 + 104);
  v57 = v129;
  v56(v45, v55, v129);
  sub_261CFD6C4();
  v138 = sub_261CFCB14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA850, &qword_261D033C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v56(v45, v55, v57);
  sub_261CFD6B4();
  v132 = sub_261CFCB44();
  sub_261CFF9B4();
  sub_261CFD874();
  v56(v45, v55, v57);
  sub_261CFD6B4();
  v137 = sub_261CFCB44();
  sub_261CFF9B4();
  sub_261CFD874();
  v56(v45, v55, v57);
  sub_261CFD6B4();
  v58 = sub_261CFCB44();
  sub_261CFF9B4();
  sub_261CFD874();
  v59 = v57;
  v60 = v138;
  v56(v45, v55, v59);
  v61 = v137;
  v62 = v132;
  sub_261CFD6C4();
  v63 = v58;
  v64 = sub_261CFCB44();
  v141 = *&v140;
  v142 = v139;
  v44 = v131;
  sub_261CFD104();
  sub_261CFCA14();
  v141 = 0.0;
  LOBYTE(v142) = 1;
  sub_261CFCA14();
  v141 = 0.0;
  LOBYTE(v142) = 1;
  sub_261CFCA14();
  v141 = 0.0;
  LOBYTE(v142) = 1;
  sub_261CFCA14();
  v141 = 0.0;
  LOBYTE(v142) = 1;
LABEL_31:
  sub_261CFCA14();
  result = (*(v135 + 8))(v134, v136);
  v65 = v130;
LABEL_33:
  v66 = v133;
  *v133 = v65;
  v66[1] = v44;
  v66[2] = v60;
  v66[3] = v62;
  v66[4] = v61;
  v66[5] = v63;
  v66[6] = v64;
  return result;
}

uint64_t REMStoreIntentPerformer.suggestedEntities(query:targetList:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v4 = sub_261CFDC74();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v3[13] = swift_task_alloc();
  v5 = type metadata accessor for ListEntity(0);
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261B3DC2C, 0, 0);
}

uint64_t sub_261B3DC2C()
{
  v71 = v0;
  v70 = *MEMORY[0x277D85DE8];
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  sub_261B425D4(v0[8], v3);
  v4 = 0x27FED9000uLL;
  v62 = v0;
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_261AE6A40(v0[13], &unk_27FEDE0C0, &unk_261D02500);
    if (qword_27FED9860 != -1)
    {
      swift_once();
    }

    v5 = sub_261CFF7A4();
    __swift_project_value_buffer(v5, qword_27FEDA768);
    v6 = sub_261CFF784();
    v7 = sub_261CFFE84();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261AE2000, v6, v7, "[ColorEntityQueryPerforming] Query suggested entities with no target list", v8, 2u);
      MEMORY[0x26671D560](v8, -1, -1);
    }

    sub_261CFDCC4();
    v9 = sub_261CFDC44();
    v10 = *(v9 + 16);
    if (v10)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

  sub_261B01E2C(v0[13], v0[17]);
  if (qword_27FED9860 != -1)
  {
    swift_once();
  }

  v25 = v0[16];
  v26 = v0[17];
  v27 = sub_261CFF7A4();
  __swift_project_value_buffer(v27, qword_27FEDA768);
  sub_261B0A18C(v26, v25);
  v28 = sub_261CFF784();
  v29 = sub_261CFFE84();
  v30 = os_log_type_enabled(v28, v29);
  v31 = v0[16];
  v32 = 0x277D44000uLL;
  v33 = &unk_279AFB000;
  if (v30)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138543362;
    type metadata accessor for AppEntityID(0);
    v36 = objc_allocWithZone(MEMORY[0x277D44700]);
    v37 = sub_261CFD814();
    v38 = sub_261CFFA54();
    v39 = v36;
    v32 = 0x277D44000;
    v40 = [v39 initWithUUID:v37 entityName:v38];

    v4 = 0x27FED9000;
    sub_261B0A1F0(v31);
    *(v34 + 4) = v40;
    *v35 = v40;
    v33 = &unk_279AFB000;
    _os_log_impl(&dword_261AE2000, v28, v29, "[ColorEntityQueryPerforming] Query suggested entities with target list: %{public}@", v34, 0xCu);
    sub_261AE6A40(v35, &unk_27FEDA730, &unk_261D035C0);
    MEMORY[0x26671D560](v35, -1, -1);
    MEMORY[0x26671D560](v34, -1, -1);
  }

  else
  {

    sub_261B0A1F0(v31);
  }

  v41 = *(v0[9] + 16);
  type metadata accessor for AppEntityID(0);
  v42 = objc_allocWithZone(*(v32 + 1792));
  v43 = sub_261CFD814();
  v44 = sub_261CFFA54();
  v45 = [v42 v33[46]];

  v0[7] = 0;
  v46 = [v41 fetchListWithObjectID:v45 error:v0 + 7];

  v47 = v0[7];
  v48 = v0[17];
  if (v46)
  {
    sub_261CFDCC4();
    v49 = sub_261B42644();
    v50 = MEMORY[0x277D45F10];
    v0[5] = v49;
    v0[6] = v50;
    v0[2] = v46;
    v51 = v47;
    v52 = sub_261CFDC54();
    sub_261B0A1F0(v48);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v9 = v52;
    v10 = *(v52 + 16);
    if (v10)
    {
LABEL_7:
      v11 = v0[11];
      v13 = *(v11 + 16);
      v12 = v11 + 16;
      v61 = v13;
      v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
      v15 = *(v12 + 56);
      v16 = MEMORY[0x277D84F90];
      do
      {
        v17 = v0[12];
        v18 = v0[10];
        v61(v17, v14, v18);
        v19 = sub_261CFDC64();
        ColorEntity.init(name:)(v19, v20, &v66);
        (*(v12 - 8))(v17, v18);
        v21 = v66;
        v64 = v68;
        v65 = v67;
        v63 = v69;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_261B41A10(0, *(v16 + 2) + 1, 1, v16);
        }

        v23 = *(v16 + 2);
        v22 = *(v16 + 3);
        if (v23 >= v22 >> 1)
        {
          v16 = sub_261B41A10((v22 > 1), v23 + 1, 1, v16);
        }

        *(v16 + 2) = v23 + 1;
        v24 = &v16[56 * v23];
        *(v24 + 4) = v21;
        *(v24 + 40) = v65;
        *(v24 + 56) = v64;
        *(v24 + 72) = v63;
        v14 += v15;
        --v10;
        v0 = v62;
      }

      while (v10);

      v4 = 0x27FED9000;
      goto LABEL_22;
    }

LABEL_21:

    v16 = MEMORY[0x277D84F90];
LABEL_22:
    if (*(v4 + 2144) != -1)
    {
      swift_once();
    }

    v53 = sub_261CFF7A4();
    __swift_project_value_buffer(v53, qword_27FEDA768);
    sub_261CFD104();
    v54 = sub_261CFF784();
    v55 = sub_261CFFE84();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 134217984;
      *(v56 + 4) = *(v16 + 2);

      _os_log_impl(&dword_261AE2000, v54, v55, "[ColorEntityQueryPerforming] Query suggested entities populated %ld colors", v56, 0xCu);
      MEMORY[0x26671D560](v56, -1, -1);
    }

    else
    {
    }

    v57 = v0[1];

    return v57(v16);
  }

  v59 = v47;
  sub_261CFD654();

  swift_willThrow();
  sub_261B0A1F0(v48);

  v60 = v0[1];

  return v60();
}

uint64_t REMStoreIntentPerformer.entities(query:matching:targetList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = v4;
  *(v5 + 104) = a2;
  *(v5 + 112) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA708, &qword_261D03298);
  *(v5 + 136) = swift_task_alloc();
  v7 = sub_261CFD6A4();
  *(v5 + 144) = v7;
  *(v5 + 152) = *(v7 - 8);
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = *a1;
  *(v5 + 200) = *(a1 + 16);

  return MEMORY[0x2822009F8](sub_261B3E4B4, 0, 0);
}

uint64_t sub_261B3E4B4()
{
  v13 = v0;
  if (qword_27FED9860 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDA768);
  sub_261CFD104();
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_261B879C8(v5, v4, &v12);
    _os_log_impl(&dword_261AE2000, v2, v3, "[ColorEntityQueryPerforming] Query color entities with string: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }

  v8 = *(v0 + 200);
  *(v0 + 16) = *(v0 + 184);
  *(v0 + 32) = v8;
  v9 = swift_task_alloc();
  *(v0 + 208) = v9;
  *v9 = v0;
  v9[1] = sub_261B3E680;
  v10 = *(v0 + 120);

  return REMStoreIntentPerformer.suggestedEntities(query:targetList:)(v9, v10);
}

uint64_t sub_261B3E680(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v4 = sub_261B3EC28;
  }

  else
  {
    v4 = sub_261B3E794;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_261B3E794()
{
  v1 = v0[27];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v41 = v0[19];
    v43 = -v2;
    v4 = MEMORY[0x277D84F90];
    v5 = v1 + 40;
    v44 = v0[27];
    v34 = v1 + 40;
    while (1)
    {
      v35 = v4;
      v6 = (v5 + 56 * v3++);
      while (1)
      {
        if ((v3 - 1) >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v7 = *v6;
        v42 = *(v6 - 1);
        v8 = v6[1];
        v9 = v6[2];
        v11 = v6[3];
        v10 = v6[4];
        v12 = v6[5];
        sub_261CFD104();
        sub_261CFCDA4();
        sub_261CFCDA4();
        v45 = v11;
        sub_261CFCDA4();
        v46 = v10;
        sub_261CFCDA4();
        v47 = v12;
        sub_261CFCDA4();
        sub_261CFCA04();
        v13 = v0[6];
        if (v13)
        {
          break;
        }

LABEL_5:

        ++v3;
        v6 += 7;
        v1 = v44;
        if (v43 + v3 == 1)
        {
          v4 = v35;
          goto LABEL_21;
        }
      }

      v14 = v0[5];
      if (qword_27FED99F8 != -1)
      {
        v29 = v0[5];
        swift_once();
        v14 = v29;
      }

      v15 = qword_27FEF3E40;
      if (!*(qword_27FEF3E40 + 16))
      {
        break;
      }

      v16 = sub_261B37CE8(v14, v13);
      v18 = v17;

      if ((v18 & 1) == 0)
      {
        goto LABEL_5;
      }

      v40 = v9;
      v20 = v0[21];
      v19 = v0[22];
      v21 = v0[18];
      v36 = v0[20];
      v37 = v0[17];
      v39 = v0[14];
      v38 = v0[13];
      v22 = *(v15 + 56) + *(v41 + 72) * v16;
      v23 = *(v41 + 16);
      v23(v20, v22, v21);
      (*(v41 + 32))(v19, v20, v21);
      v23(v36, v19, v21);
      v0[7] = sub_261CFFA94();
      v0[8] = v24;
      sub_261CFD874();
      v25 = sub_261CFD884();
      (*(*(v25 - 8) + 56))(v37, 0, 1, v25);
      sub_261B3BA3C();
      v26 = sub_261D00194();
      v28 = v27;
      sub_261AE6A40(v37, &qword_27FEDA708, &qword_261D03298);

      v0[9] = v26;
      v0[10] = v28;
      v0[11] = v38;
      v0[12] = v39;
      LOBYTE(v26) = sub_261D00184();

      (*(v41 + 8))(v19, v21);
      if ((v26 & 1) == 0)
      {
        goto LABEL_5;
      }

      v4 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_261B3A12C(0, *(v35 + 16) + 1, 1);
        v4 = v35;
      }

      v5 = v34;
      v31 = *(v4 + 16);
      v30 = *(v4 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_261B3A12C((v30 > 1), v31 + 1, 1);
        v4 = v35;
      }

      *(v4 + 16) = v31 + 1;
      v32 = (v4 + 56 * v31);
      v32[4] = v42;
      v32[5] = v7;
      v32[6] = v8;
      v32[7] = v40;
      v32[8] = v45;
      v32[9] = v46;
      v32[10] = v47;
      v1 = v44;
      if (!(v43 + v3))
      {
        goto LABEL_21;
      }
    }

    goto LABEL_5;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_21:

  v33 = v0[1];

  v33(v4);
}

uint64_t sub_261B3EC28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261B3ECB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA858, &unk_261D08610);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA828, &qword_261D033A8);
  __swift_allocate_value_buffer(v4, qword_27FEDA780);
  __swift_project_value_buffer(v4, qword_27FEDA780);
  v5 = MEMORY[0x277D85AC0];
  sub_261B01D28(&qword_27FEDA860, &qword_27FEDA858, &unk_261D08610, MEMORY[0x277D85AC0]);
  sub_261CFE9A4();
  v8 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA868, &qword_261D033C8);
  sub_261B01D28(&qword_27FEDA840, &qword_27FEDA828, &qword_261D033A8, v5);
  sub_261CFE9A4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_261B3EE94@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = sub_261CFE944();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x28223BE20](v1);
  v31 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA858, &unk_261D08610);
  v32 = *(v28 - 8);
  v3 = MEMORY[0x28223BE20](v28);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v29 = &v27 - v6;
  MEMORY[0x28223BE20](v5);
  v36 = &v27 - v7;
  v8 = sub_261CFDB44();
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA950, &qword_261D03448);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v27 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  sub_261CFE974();
  sub_261B42714();
  sub_261CFDB54();
  v19 = sub_261B01D28(&qword_27FEDA958, &qword_27FEDA950, &qword_261D03448, MEMORY[0x277D853E0]);
  v27 = v18;
  MEMORY[0x26671A1D0](v16, v9, v19);
  v20 = *(v10 + 8);
  v20(v16, v9);
  sub_261CFE974();
  sub_261CFDB54();
  MEMORY[0x26671A1D0](v13, v9, v19);
  v20(v13, v9);
  sub_261CFDB14();
  v21 = v31;
  sub_261CFDB34();
  sub_261B01D28(&qword_27FEDA860, &qword_27FEDA858, &unk_261D08610, MEMORY[0x277D85AC0]);
  v22 = v28;
  v23 = v29;
  sub_261CFE904();
  v24 = v30;
  sub_261CFE904();
  sub_261CFE8D4();
  v25 = *(v32 + 8);
  v25(v24, v22);
  v25(v23, v22);
  (*(v34 + 8))(v21, v35);
  v25(v36, v22);
  v20(v16, v9);
  return (v20)(v27, v9);
}

uint64_t sub_261B3F34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v65 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA870, &qword_261D033D0);
  v3 = *(v2 - 8);
  v63 = v2;
  v64 = v3;
  MEMORY[0x28223BE20](v2);
  v54 = v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA878, &qword_261D033D8);
  MEMORY[0x28223BE20](v5 - 8);
  v55 = v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA880, &qword_261D033E0);
  v8 = *(v7 - 8);
  v61 = v7;
  v62 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v56 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v57 = v49 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA888, &qword_261D033E8);
  v67 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v49 - v13;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA890, &qword_261D033F0);
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v16 = v49 - v15;
  v66 = sub_261CFE944();
  v70 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v18 = v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA898, &unk_261D08600);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v49 - v20;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8A0, &qword_261D033F8);
  v69 = *(v52 - 8);
  v22 = MEMORY[0x28223BE20](v52);
  v24 = v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v50 = v49 - v25;
  v26 = sub_261CFE994();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v49[1] = v27 + 56;
  v28(v21, 1, 1, v26);
  sub_261CFDB34();
  sub_261B3FB64(v14);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8A8, &qword_261D03400);
  v68 = MEMORY[0x277D85AC0];
  sub_261B01D28(&qword_27FEDA8B0, &qword_27FEDA888, &qword_261D033E8, MEMORY[0x277D85AC0]);
  v51 = v16;
  sub_261CFE934();
  (*(v67 + 8))(v14, v12);
  v67 = *(v70 + 8);
  v70 += 8;
  v30 = v66;
  (v67)(v18, v66);
  sub_261AE6A40(v21, &qword_27FEDA898, &unk_261D08600);
  MEMORY[0x26671A1F0](v16, v29);
  v31 = MEMORY[0x277D853B0];
  v32 = sub_261B01D28(&qword_27FEDA8B8, &qword_27FEDA8A0, &qword_261D033F8, MEMORY[0x277D853B0]);
  v33 = v52;
  MEMORY[0x26671A1D0](v24, v52, v32);
  v34 = *(v69 + 8);
  v69 += 8;
  v53 = v34;
  v34(v24, v33);
  v28(v21, 1, 1, v26);
  sub_261CFDB34();
  v35 = v54;
  sub_261B4032C(v59, v54);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8C0, &qword_261D03408);
  sub_261B01D28(&qword_27FEDA8C8, &qword_27FEDA870, &qword_261D033D0, v68);
  v37 = v55;
  v38 = v63;
  sub_261CFE934();
  (*(v64 + 8))(v35, v38);
  (v67)(v18, v30);
  sub_261AE6A40(v21, &qword_27FEDA898, &unk_261D08600);
  v39 = v56;
  MEMORY[0x26671A1F0](v37, v36);
  v40 = sub_261B01D28(&qword_27FEDA8D0, &qword_27FEDA880, &qword_261D033E0, v31);
  v41 = v57;
  v42 = v39;
  v43 = v61;
  MEMORY[0x26671A1D0](v39, v61, v40);
  v44 = *(v62 + 8);
  v44(v42, v43);
  v45 = v50;
  v46 = v51;
  sub_261CFDB14();
  sub_261CFDB34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA868, &qword_261D033C8);
  sub_261B01D28(&qword_27FEDA8D8, &qword_27FEDA890, &qword_261D033F0, v68);
  v47 = v58;
  sub_261CFE8D4();
  (v67)(v18, v66);
  (*(v60 + 8))(v46, v47);
  v44(v41, v43);
  return v53(v45, v33);
}

uint64_t sub_261B3FB64@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA898, &unk_261D08600);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v48 - v2;
  v4 = sub_261CFDB44();
  v58 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA938, &qword_261D03440);
  v59 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v55 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v51 = &v48 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA858, &unk_261D08610);
  v66 = *(v60 - 8);
  v11 = MEMORY[0x28223BE20](v60);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v54 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA888, &qword_261D033E8);
  MEMORY[0x28223BE20](v15 - 8);
  v56 = &v48 - v16;
  v17 = sub_261CFE944();
  v64 = v17;
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v48 = &v48 - v22;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8F0, &qword_261D08620);
  v65 = *(v57 - 8);
  v23 = MEMORY[0x28223BE20](v57);
  v50 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v52 = &v48 - v25;
  v67 = 64;
  v68 = 0xE100000000000000;
  v53 = sub_261B426C0();
  MEMORY[0x26671A1D0](v69, &v67, MEMORY[0x277D837D0], v53);
  sub_261CFDB34();
  sub_261CFE954();
  v26 = sub_261CFE994();
  (*(*(v26 - 8) + 56))(v3, 1, 1, v26);
  sub_261CFDB34();
  sub_261B42714();
  v27 = MEMORY[0x277D83E40];
  v49 = v13;
  sub_261CFE924();
  v62 = *(v18 + 8);
  v63 = v18 + 8;
  v62(v21, v17);
  sub_261AE6A40(v3, &qword_27FEDA898, &unk_261D08600);
  (*(v58 + 8))(v6, v4);
  v28 = v55;
  MEMORY[0x26671A290](v13, v27);
  v29 = sub_261B01D28(&qword_27FEDA948, &qword_27FEDA938, &qword_261D03440, MEMORY[0x277D85420]);
  v30 = v51;
  MEMORY[0x26671A1D0](v28, v7, v29);
  v31 = *(v59 + 1);
  v31(v28, v7);
  v32 = v54;
  sub_261CFDB14();
  v31(v30, v7);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA900, &qword_261D03420);
  sub_261B01D28(&qword_27FEDA860, &qword_27FEDA858, &unk_261D08610, MEMORY[0x277D85AC0]);
  v34 = v56;
  v58 = v33;
  v35 = v60;
  v36 = v48;
  sub_261CFE914();
  v37 = *(v66 + 8);
  v66 += 8;
  v59 = v37;
  v37(v32, v35);
  v38 = v36;
  v62(v36, v64);
  v39 = v50;
  MEMORY[0x26671A260](v34, v33);
  v40 = sub_261B01D28(&qword_27FEDA908, &qword_27FEDA8F0, &qword_261D08620, MEMORY[0x277D85408]);
  v41 = v52;
  v42 = v57;
  MEMORY[0x26671A1D0](v39, v57, v40);
  v43 = *(v65 + 8);
  v65 += 8;
  v43(v39, v42);
  v67 = v69[0];
  v68 = v69[1];
  sub_261CFDB14();

  v44 = v38;
  sub_261CFDB34();
  v45 = v49;
  sub_261CFE904();
  sub_261CFE8D4();
  v46 = v59;
  v59(v45, v35);
  v62(v44, v64);
  v46(v32, v35);
  return (v43)(v41, v42);
}

uint64_t sub_261B4032C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8E0, &qword_261D03410);
  v125 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v121 = &v113 - v3;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8E8, &qword_261D03418);
  v122 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v134 = &v113 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA890, &qword_261D033F0);
  MEMORY[0x28223BE20](v5 - 8);
  v119 = &v113 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA898, &unk_261D08600);
  MEMORY[0x28223BE20](v7 - 8);
  v132 = &v113 - v8;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8A0, &qword_261D033F8);
  v144 = *(v133 - 8);
  v9 = MEMORY[0x28223BE20](v133);
  v118 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v135 = &v113 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA858, &unk_261D08610);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v113 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA888, &qword_261D033E8);
  v20 = *(v19 - 8);
  v141 = v19;
  v142 = v20;
  v21 = MEMORY[0x28223BE20](v19);
  v116 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v113 - v23;
  v138 = sub_261CFE944();
  v150 = *(v138 - 8);
  v25 = MEMORY[0x28223BE20](v138);
  v114 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v113 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8F0, &qword_261D08620);
  v30 = *(v29 - 8);
  v152 = v29;
  v153 = v30;
  v31 = MEMORY[0x28223BE20](v29);
  v115 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v130 = &v113 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v139 = &v113 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v140 = &v113 - v38;
  MEMORY[0x28223BE20](v37);
  v143 = &v113 - v39;
  v154 = 35;
  v155 = 0xE100000000000000;
  v117 = sub_261B426C0();
  MEMORY[0x26671A1D0](v156, &v154, MEMORY[0x277D837D0], v117);
  sub_261CFDB34();
  v131 = MEMORY[0x277D85AC0];
  v40 = sub_261B01D28(&qword_27FEDA860, &qword_27FEDA858, &unk_261D08610, MEMORY[0x277D85AC0]);
  v146 = v16;
  v126 = a1;
  MEMORY[0x26671A1D0](a1, v12, v40);
  sub_261CFDB14();
  v41 = *(v13 + 8);
  v41(v16, v12);
  v151 = v41;
  v42 = v13 + 8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA900, &qword_261D03420);
  v149 = v24;
  v44 = v18;
  v137 = v18;
  v45 = v43;
  sub_261CFE914();
  v41(v44, v12);
  v46 = *(v150 + 8);
  v150 += 8;
  v128 = v46;
  v46(v28, v138);
  v47 = v140;
  MEMORY[0x26671A260](v24, v45);
  v145 = sub_261B01D28(&qword_27FEDA908, &qword_27FEDA8F0, &qword_261D08620, MEMORY[0x277D85408]);
  v48 = v47;
  v49 = v47;
  v50 = v152;
  MEMORY[0x26671A1D0](v48, v152, v145);
  v147 = *(v153 + 8);
  v153 += 8;
  v147(v49, v50);
  v51 = v28;
  sub_261CFDB34();
  v52 = v146;
  MEMORY[0x26671A1D0](a1, v12, v40);
  v53 = v137;
  sub_261CFDB14();
  v54 = v52;
  v55 = v151;
  v148 = v42;
  v151(v54, v12);
  v56 = v149;
  v136 = v45;
  sub_261CFE914();
  v55(v53, v12);
  v127 = v51;
  v57 = v138;
  v128(v51, v138);
  v58 = v139;
  MEMORY[0x26671A260](v56, v45);
  v59 = v152;
  v60 = v145;
  MEMORY[0x26671A1D0](v58, v152, v145);
  v147(v58, v59);
  sub_261CFDB34();
  v61 = v146;
  v62 = v40;
  MEMORY[0x26671A1D0](v126, v12, v40);
  sub_261CFDB14();
  v63 = v151;
  v151(v61, v12);
  v64 = v149;
  v65 = v136;
  v66 = v127;
  sub_261CFE914();
  v63(v53, v12);
  v67 = v57;
  v68 = v128;
  v128(v66, v67);
  v69 = v130;
  MEMORY[0x26671A260](v64, v65);
  v70 = v152;
  MEMORY[0x26671A1D0](v69, v152, v60);
  v147(v69, v70);
  v71 = sub_261CFE994();
  (*(*(v71 - 8) + 56))(v132, 1, 1, v71);
  sub_261CFDB34();
  v72 = v114;
  sub_261CFDB34();
  v73 = v146;
  MEMORY[0x26671A1D0](v126, v12, v62);
  v113 = v62;
  sub_261CFDB14();
  v74 = v73;
  v75 = v12;
  v129 = v12;
  v76 = v151;
  v151(v74, v12);
  v77 = v116;
  v78 = v136;
  sub_261CFE914();
  v76(v53, v75);
  v79 = v138;
  v68(v72, v138);
  v80 = v68;
  v81 = v115;
  MEMORY[0x26671A260](v77, v78);
  v82 = v130;
  v83 = v152;
  MEMORY[0x26671A1D0](v81, v152, v145);
  v84 = v81;
  v85 = v147;
  v147(v84, v83);
  v86 = v149;
  sub_261CFDB14();
  v85(v82, v83);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8A8, &qword_261D03400);
  v116 = sub_261B01D28(&qword_27FEDA8B0, &qword_27FEDA888, &qword_261D033E8, v131);
  v88 = v119;
  v89 = v132;
  v90 = v141;
  v91 = v127;
  sub_261CFE934();
  v92 = *(v142 + 8);
  v142 += 8;
  v130 = v92;
  (v92)(v86, v90);
  v93 = v91;
  v80(v91, v79);
  sub_261AE6A40(v89, &qword_27FEDA898, &unk_261D08600);
  v94 = v118;
  MEMORY[0x26671A1F0](v88, v87);
  v126 = sub_261B01D28(&qword_27FEDA8B8, &qword_27FEDA8A0, &qword_261D033F8, MEMORY[0x277D853B0]);
  v95 = v133;
  MEMORY[0x26671A1D0](v94, v133, v126);
  v96 = *(v144 + 8);
  v144 += 8;
  v132 = v96;
  (v96)(v94, v95);
  v154 = v156[0];
  v155 = v156[1];
  sub_261CFDB14();

  v97 = v93;
  sub_261CFDB34();
  v98 = v146;
  v99 = v129;
  v100 = v97;
  sub_261CFE904();
  sub_261CFE8D4();
  v151(v98, v99);
  v80(v97, v79);
  sub_261CFDB34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA910, &qword_261D03428);
  sub_261CFE8D4();
  v80(v97, v79);
  v101 = v80;
  sub_261CFDB34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA918, &qword_261D03430);
  v102 = v131;
  sub_261B01D28(&qword_27FEDA920, &qword_27FEDA8E8, &qword_261D03418, v131);
  v103 = v121;
  v104 = v139;
  v105 = v120;
  sub_261CFE8D4();
  v106 = v79;
  v101(v97, v79);
  sub_261CFDB34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA928, &qword_261D03438);
  sub_261B01D28(&qword_27FEDA930, &qword_27FEDA8E0, &qword_261D03410, v102);
  v107 = v135;
  v108 = v123;
  v109 = v133;
  sub_261CFE8D4();
  v101(v100, v106);
  (*(v125 + 8))(v103, v108);
  (*(v122 + 8))(v134, v105);
  (v130)(v149, v141);
  v151(v137, v129);
  (v132)(v107, v109);
  v110 = v152;
  v111 = v147;
  v147(v104, v152);
  v111(v140, v110);
  return (v111)(v143, v110);
}

uint64_t sub_261B41348(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_261B4276C;

  return REMStoreIntentPerformer.entities(query:for:)(v4, a2);
}

uint64_t sub_261B413E0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_261B0D584;

  return REMStoreIntentPerformer.suggestedEntities(query:targetList:)(v4, a2);
}

uint64_t sub_261B41478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261B4276C;

  return REMStoreIntentPerformer.entities(query:matching:targetList:)(a1, a2, a3, a4);
}

char *sub_261B415B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA5B0, &qword_261D03190);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261B41720(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA7D0, &qword_261D03350);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_261B418E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA818, &qword_261D03398);
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

char *sub_261B41A10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6C8, &qword_261D03270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261B41B60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA668, &qword_261D06FD0);
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

void *sub_261B41CE0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_261B41EC8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA7B0, &qword_261D03330);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA7B8, &qword_261D03338);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261B42010(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA7E8, &qword_261D03368);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261B42130(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA658, &qword_261D03218);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

char *sub_261B42274(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA800, &qword_261D03380);
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

void *sub_261B423F8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
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

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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
  v17[3] = 2 * ((result - v16) / v15);
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

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_261B425D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_261B42644()
{
  result = qword_27FEDB0E0;
  if (!qword_27FEDB0E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FEDB0E0);
  }

  return result;
}

uint64_t sub_261B42690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

double sub_261B426A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_261CFD104();
  }

  return result;
}

unint64_t sub_261B426C0()
{
  result = qword_27FEDA8F8;
  if (!qword_27FEDA8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA8F8);
  }

  return result;
}

unint64_t sub_261B42714()
{
  result = qword_27FEDA940;
  if (!qword_27FEDA940)
  {
    sub_261CFDB44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA940);
  }

  return result;
}

double ColorEntity.init(list:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_261CFDC94();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_261CFDCC4();
  sub_261AE498C(a1, &v14);
  sub_261CFDCA4();
  sub_261B428E0(&v14);
  (*(v5 + 16))(v8, v10, v4);
  sub_261B42948(v8, &v14);
  __swift_destroy_boxed_opaque_existential_0(a1);
  (*(v5 + 8))(v10, v4);
  *a2 = v14;
  v11 = v16;
  *(a2 + 8) = v15;
  *(a2 + 24) = v11;
  result = *&v17;
  *(a2 + 40) = v17;
  return result;
}

uint64_t sub_261B428E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA960, &qword_261D03460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261B42948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_261CFDC74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFDC94();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v11, a1, v8);
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == *MEMORY[0x277D45C48])
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 32))(v7, v11, v4);
    v13 = sub_261CFDC64();
    ColorEntity.init(name:)(v13, v14, &v28);
    (*(v9 + 8))(a1, v8);
    result = (*(v5 + 8))(v7, v4);
LABEL_5:
    v24 = v29;
    v25 = v30;
    v26 = v31;
    *a2 = v28;
    *(a2 + 8) = v24;
    *(a2 + 24) = v25;
    *(a2 + 40) = v26;
    return result;
  }

  if (v12 == *MEMORY[0x277D45C40])
  {
    (*(v9 + 96))(v11, v8);
    v16 = *v11;
    [*v11 red];
    v18 = v17;
    [v16 green];
    v20 = v19;
    [v16 blue];
    v22 = v21;
    [v16 alpha];
    ColorEntity.init(red:green:blue:alpha:)(v23, 0, &v28, v18, v20, v22);

    result = (*(v9 + 8))(a1, v8);
    goto LABEL_5;
  }

  result = sub_261D00604();
  __break(1u);
  return result;
}

id sub_261B42C3C(char a1)
{
  sub_261CFCA04();
  if (v23)
  {
    v2 = 0;
  }

  else
  {
    sub_261CFCA04();
    sub_261CFCA04();
    sub_261CFCA04();
    v7 = v22;
    v8 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA968, &qword_261D074F0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_261D01420;
    v10 = sub_261BBB14C();
    v11 = MEMORY[0x277D83B88];
    v12 = MEMORY[0x277D83C10];
    *(v9 + 56) = MEMORY[0x277D83B88];
    *(v9 + 64) = v12;
    *(v9 + 32) = v10;
    v13 = sub_261BBB14C();
    *(v9 + 96) = v11;
    *(v9 + 104) = v12;
    *(v9 + 72) = v13;
    v14 = sub_261BBB14C();
    *(v9 + 136) = v11;
    *(v9 + 144) = v12;
    *(v9 + 112) = v14;
    v15 = sub_261CFFA84();
    v2 = v16;
    v22 = *&v15;
    v23 = v16;
    if ((v8 & 1) == 0 && v7 >= 0.0 && v7 < 1.0)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_261D03450;
      v18 = sub_261BBB14C();
      *(v17 + 56) = v11;
      *(v17 + 64) = v12;
      *(v17 + 32) = v18;
      v19 = sub_261CFFA84();
      MEMORY[0x26671C210](v19);

      v2 = v23;
    }
  }

  sub_261CFCA04();
  if (v23)
  {
    v3 = sub_261CFFA54();

    if (a1)
    {
      if (v2)
      {
        v4 = sub_261CFFA54();
      }

      else
      {
        v4 = 0;
      }

      v20 = [objc_allocWithZone(MEMORY[0x277D445D0]) initWithCKSymbolicColorName:v3 hexString:{v4, *&v22}];
    }

    else
    {
      if (v2)
      {
        v4 = sub_261CFFA54();
      }

      else
      {
        v4 = 0;
      }

      v20 = [objc_allocWithZone(MEMORY[0x277D445D0]) initWithDASymbolicColorName:v3 daHexString:{v4, *&v22}];
    }

    v6 = v20;

    goto LABEL_22;
  }

  if (v2)
  {
    v5 = objc_allocWithZone(MEMORY[0x277D445D0]);
    v4 = sub_261CFFA54();

    v6 = [v5 initWithHexString_];
LABEL_22:

    return v6;
  }

  return 0;
}

uint64_t sub_261B42F2C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDA970);
  v1 = __swift_project_value_buffer(v0, qword_27FEDA970);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261B438C4()
{
  v49 = v0;
  v48 = *MEMORY[0x277D85DE8];
  v1 = (v0 + 16);
  sub_261CFCBB4();
  v2 = *(v0 + 856);
  v3 = *(v0 + 864);

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    sub_261CFCBB4();
    v5 = *(v0 + 840);
    v6 = *(v0 + 848);
  }

  else
  {
    sub_261CFCBB4();
    v6 = *(v0 + 816);
    if (v6)
    {
      v5 = *(v0 + 808);
    }

    else
    {
      v5 = sub_261CFE2A4();
    }
  }

  *(v0 + 1544) = v6;
  *(v0 + 1536) = v5;
  if (qword_27FED9870 != -1)
  {
    swift_once();
  }

  v7 = sub_261CFF7A4();
  *(v0 + 1552) = __swift_project_value_buffer(v7, qword_27FEDA970);
  sub_261B49630(v0 + 16, v0 + 232);
  v8 = sub_261CFF784();
  v9 = sub_261CFFE84();
  sub_261B4968C(v0 + 16);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33 = v11;
    *v10 = 136315138;
    v12 = *(v0 + 192);
    v44 = *(v0 + 176);
    v45 = v12;
    v46 = *(v0 + 208);
    v47 = *(v0 + 224);
    v13 = *(v0 + 128);
    v40 = *(v0 + 112);
    v41 = v13;
    v14 = *(v0 + 160);
    v42 = *(v0 + 144);
    v43 = v14;
    v15 = *(v0 + 64);
    v36 = *(v0 + 48);
    v37 = v15;
    v16 = *(v0 + 96);
    v38 = *(v0 + 80);
    v39 = v16;
    v17 = *(v0 + 32);
    v34 = *v1;
    v35 = v17;
    v18 = sub_261B46610();
    v20 = sub_261B879C8(v18, v19, &v33);

    *(v10 + 4) = v20;
    _os_log_impl(&dword_261AE2000, v8, v9, "[CreateReminderIntentPerforming] Creating reminder with %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26671D560](v11, -1, -1);
    MEMORY[0x26671D560](v10, -1, -1);
  }

  v21 = *(v0 + 968);
  *(v0 + 688) = &type metadata for CreateReminderAppIntent;
  *(v0 + 696) = &off_287442DC0;
  v22 = swift_allocObject();
  *(v0 + 664) = v22;
  v23 = *(v0 + 192);
  *(v22 + 176) = *(v0 + 176);
  *(v22 + 192) = v23;
  *(v22 + 208) = *(v0 + 208);
  *(v22 + 224) = *(v0 + 224);
  v24 = *(v0 + 128);
  *(v22 + 112) = *(v0 + 112);
  *(v22 + 128) = v24;
  v25 = *(v0 + 160);
  *(v22 + 144) = *(v0 + 144);
  *(v22 + 160) = v25;
  v26 = *(v0 + 64);
  *(v22 + 48) = *(v0 + 48);
  *(v22 + 64) = v26;
  v27 = *(v0 + 96);
  *(v22 + 80) = *(v0 + 80);
  *(v22 + 96) = v27;
  v28 = *(v0 + 32);
  *(v22 + 16) = *v1;
  *(v22 + 32) = v28;
  v29 = *(v21 + 16);
  *(v0 + 1560) = v29;
  sub_261B49630(v0 + 16, v0 + 448);
  v30 = swift_task_alloc();
  *(v0 + 1568) = v30;
  *v30 = v0;
  v30[1] = sub_261B43C0C;
  v31 = *(v0 + 1504);

  return sub_261B46EF4(v31, v0 + 664, v29);
}

uint64_t sub_261B43C0C()
{
  v2 = *v1;
  *(*v1 + 1576) = v0;

  if (v0)
  {

    v3 = v2[191];
    v4 = v2[190];
    v5 = sub_261B46344;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 83);
    v3 = v2[191];
    v4 = v2[190];
    v5 = sub_261B43D6C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261B43D6C()
{
  v310 = v0;
  v309 = *MEMORY[0x277D85DE8];
  v1 = v0[195];
  v2 = v0[192];
  v3 = v0[188];
  v4 = v0[187];
  v5 = v0[186];
  v6 = v0[183];
  v297 = v0[182];
  v7 = v0[181];

  v292 = *v3;
  v264 = *(v3 + 8);
  v8 = *(v3 + 16);
  v302 = *(v3 + 24);
  sub_261AFB668(v3 + *(v4 + 28), v5, &qword_27FEDA9B0, &qword_261D034B8);
  v9 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  v260 = v8;
  v10 = [(SEL *)v9 updateList:v8];
  v11 = sub_261CFFA54();

  v270 = v9;
  v263 = v10;
  v12 = [(SEL *)v9 addReminderWithTitle:v11 toListChangeItem:v10];

  sub_261CFCBB4();
  if ((*(v6 + 48))(v7, 1, v297) != 1)
  {
    v14 = v0[184];
    v15 = v0[183];
    v16 = v0[182];
    (*(v15 + 32))(v14, v0[181], v16);
    sub_261CFD514();
    v17 = *(v15 + 8);
    v2 = (v15 + 8);
    v17(v14, v16);
    v13 = v0;
LABEL_5:
    v18 = v302;
    v19 = sub_261CFFA54();

    goto LABEL_6;
  }

  sub_261AE6A40(v0[181], &qword_27FEDA9A8, &qword_261D034B0);
  sub_261CFCBB4();
  v13 = v0;
  if (v0[104])
  {
    goto LABEL_5;
  }

  v19 = 0;
  v18 = v302;
LABEL_6:
  [v12 setNotesAsString_];

  sub_261CFCBB4();
  v20 = v13[114];
  if (*(v20 + 16))
  {
    (*(v13[179] + 16))(v13[180], v20 + ((*(v13[179] + 80) + 32) & ~*(v13[179] + 80)), v13[178]);

    v21 = [v12 attachmentContext];
    v22 = v13[180];
    v23 = v13[179];
    v24 = v13[178];
    if (v21)
    {
      v25 = v21;
      v26 = sub_261CFD724();
      v2 = [v25 addURLAttachmentWithURL_];
    }

    v27 = *(v23 + 8);
    v9 = (v23 + 8);
    v27(v22, v24);
    if (v18)
    {
      goto LABEL_10;
    }

LABEL_15:
    v30 = 0;
    goto LABEL_16;
  }

  if (!v18)
  {
    goto LABEL_15;
  }

LABEL_10:
  v28 = v18;
  v29 = [(SEL *)v270 updateReminder:v28];
  v30 = v29;
  if (v29)
  {
    v31 = [v29 subtaskContext];
    if (v31)
    {
      v32 = v31;
      [v31 insertReminderChangeItem:v12 afterReminderChangeItem:0];
    }
  }

LABEL_16:
  sub_261CFCBB4();
  v33 = v13[111];
  v303 = v13;
  if (!v33)
  {
LABEL_26:
    v265 = 0;
    goto LABEL_30;
  }

  if (!*(v33 + 16) || (v34 = [v12 subtaskContext]) == 0)
  {

    goto LABEL_26;
  }

  v35 = v34;
  v36 = v30;
  v37 = *(v33 + 16);
  if (v37)
  {
    v290 = v12;
    v304 = MEMORY[0x277D84F90];
    sub_261D003A4();
    v39 = *(v33 + 16);
    v40 = v39 - 1;
    v41 = v33 + 16 * v39 + 24;
    while (v40 != -1)
    {
      if (v40 >= *(v33 + 16))
      {
        goto LABEL_142;
      }

      sub_261CFD104();
      v42 = sub_261CFFA54();
      v9 = [(SEL *)v270 addReminderWithTitle:v42 toReminderSubtaskContextChangeItem:v35];

      sub_261D00374();
      v2 = v304[2];
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
      --v40;
      v41 -= 16;
      if (!--v37)
      {

        v43 = v304;
        v13 = v303;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  v43 = MEMORY[0x277D84F90];
LABEL_29:
  v265 = sub_261B48FBC(v43);

  v30 = v36;
LABEL_30:
  v44 = v13[185];
  v45 = v13[176];
  v46 = v13[175];
  sub_261AFB668(v13[186], v44, &qword_27FEDA9B0, &qword_261D034B8);
  v47 = (*(v45 + 48))(v44, 1, v46);
  v48 = v13[185];
  v262 = v30;
  if (v47 == 1)
  {
    sub_261AE6A40(v48, &qword_27FEDA9B0, &qword_261D034B8);
  }

  else
  {
    (*(v13[176] + 32))(v13[177], v48, v13[175]);
    if ((~v264 & 0xF000000000000007) != 0)
    {
      v49 = v13[171];
      *v13[172] = v292;
      v50 = *(v49 + 104);
      v51 = v13[172];
      v52 = v13[170];
      if (v264 < 0)
      {
        v50(v51, *MEMORY[0x277D45E78], v52);
        v53 = v292;
      }

      else
      {
        v50(v51, *MEMORY[0x277D45E80], v52);
        sub_261B49FA0(v292, v264);
      }

      v287 = v13[177];
      v293 = v13[176];
      v298 = v13[175];
      v54 = v13[174];
      v55 = v13[173];
      v56 = v13[172];
      v57 = v13[171];
      v58 = v13[170];
      v59 = v13[169];
      v60 = v13[168];
      v61 = v303[167];
      v62 = *(v57 + 32);
      v62(v55, v56, v58);
      v62(v54, v55, v58);
      v63 = sub_261CFE5B4();
      v64 = sub_261CFE494();
      v307 = v63;
      v308 = MEMORY[0x277D45E18];
      v304 = v64;
      sub_261CFE7F4();
      swift_allocObject();
      sub_261CFE7E4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_261D030F0;
      *(v65 + 32) = v12;
      *v59 = v270;
      (*(v60 + 104))(v59, *MEMORY[0x277D45CB0], v61);
      v66 = v12;
      v67 = v270;
      MEMORY[0x26671AE90](v65, v287, v54, 0, v59);

      v68 = v61;
      v13 = v303;
      (*(v60 + 8))(v59, v68);
      (*(v57 + 8))(v54, v58);
      (*(v293 + 8))(v287, v298);
    }

    else
    {
      (*(v13[176] + 8))(v13[177], v13[175]);
    }
  }

  v69 = v13[163];
  v70 = v13[162];
  v71 = v13[160];
  sub_261CFCBB4();
  v72 = *(v69 + 48);
  if (v72(v71, 1, v70) == 1)
  {
    v73 = v13[162];
    v74 = v13[160];
    sub_261CFCBB4();
    if (v72(v74, 1, v73) != 1)
    {
      sub_261AE6A40(v13[160], &qword_27FEDA160, &qword_261D02220);
    }
  }

  else
  {
    v75 = v13[163];
    v76 = v13[162];
    v77 = v13[161];
    (*(v75 + 32))(v77, v13[160], v76);
    (*(v75 + 56))(v77, 0, 1, v76);
  }

  v78 = v13[162];
  v79 = v13[161];
  if (v72(v79, 1, v78) == 1)
  {
    v80 = &qword_27FEDA160;
    v81 = &qword_261D02220;
  }

  else
  {
    v82 = *(v13[163] + 32);
    v82(v13[166], v79, v78);
    sub_261CFCBB4();
    v83 = *(v13 + 1586);
    if (v83 != 2 && (v83 & 1) != 0)
    {
      v84 = v13[166];
      v85 = v13[165];
      v86 = v13[164];
      v87 = v303[163];
      v88 = v303[162];
      sub_261CFD434();
      sub_261CFD454();
      v89 = *(v87 + 8);
      v89(v86, v88);
      v89(v84, v88);
      v13 = v303;
      v82(v84, v85, v88);
    }

    v90 = sub_261CFD464();
    [v12 setDueDateComponentsWithAlarmsIfNeeded_];

    sub_261CFCBB4();
    v91 = v13[89];
    if (v91)
    {
      v92 = v13[88];
      v93 = v13[90];
      v94 = v13[91];
      v95 = [v12 dueDateDeltaAlertContext];
      if (v95)
      {
        v96 = v95;
        v304 = v92;
        v305 = v91;
        v306 = v93;
        v307 = v94;
        v97 = sub_261CF8274();
        v98 = [v96 addDueDateDeltaAlertWithDueDateDelta_];
        sub_261B49F50(v92, v91, v93, v94);

        v13 = v303;
      }

      else
      {
        sub_261B49F50(v92, v91, v93, v94);
      }
    }

    v99 = v13[157];
    v100 = v13[156];
    v101 = v13[154];
    sub_261CFCBB4();
    v102 = *(v99 + 48);
    if (v102(v101, 1, v100) == 1)
    {
      v103 = v13[156];
      v104 = v13[154];
      sub_261CFCBB4();
      if (v102(v104, 1, v103) != 1)
      {
        sub_261AE6A40(v13[154], &qword_27FEDA9A0, &unk_261D034A0);
      }
    }

    else
    {
      v105 = v13[157];
      v106 = v13[156];
      v107 = v13[155];
      (*(v105 + 32))(v107, v13[154], v106);
      (*(v105 + 56))(v107, 0, 1, v106);
    }

    v108 = v13[156];
    v79 = v13[155];
    v109 = v102(v79, 1, v108);
    v110 = v13[163];
    if (v109 != 1)
    {
      v111 = v13[159];
      v112 = v13[158];
      v113 = v303[157];
      v284 = v113;
      v288 = v111;
      v294 = v13[162];
      v299 = v13[166];
      (*(v113 + 32))(v111, v79, v108);
      sub_261B05020(0, &qword_27FEDA9E0, 0x277D44740);
      (*(v113 + 16))(v112, v111, v108);
      v114 = REMRecurrenceRule.init(fromRule:)(v112);
      v115 = [v114 frequency];
      v280 = [v114 interval];
      v282 = [v114 firstDayOfTheWeek];
      v272 = [v114 daysOfTheWeek];
      v278 = [v114 daysOfTheMonth];
      v276 = [v114 monthsOfTheYear];
      v116 = [v114 weeksOfTheYear];
      v117 = [v114 daysOfTheYear];
      v118 = [v114 setPositions];
      v274 = v108;
      v119 = [v114 recurrenceEnd];
      v120 = v12;
      v121 = [v12 addRecurrenceRuleWithFrequency:v115 interval:v280 firstDayOfTheWeek:v282 daysOfTheWeek:v272 daysOfTheMonth:v278 monthsOfTheYear:v276 weeksOfTheYear:v116 daysOfTheYear:v117 setPositions:v118 end:v119];

      v12 = v120;
      (*(v284 + 8))(v288, v274);
      v13 = v303;
      (*(v110 + 8))(v299, v294);
      goto LABEL_59;
    }

    (*(v110 + 8))(v13[166], v13[162]);
    v80 = &qword_27FEDA9A0;
    v81 = &unk_261D034A0;
  }

  sub_261AE6A40(v79, v80, v81);
LABEL_59:
  sub_261CFCBB4();
  v122 = *(v13 + 1584);
  if (v122 != 3)
  {
    v123 = [v12 flaggedContext];
    if (v123)
    {

      [v12 setFlagged_];
    }
  }

  sub_261CFCBB4();
  v124 = *(v13 + 1585);
  if (v124 < 4)
  {
    [v12 setPriority_];
  }

  sub_261CFE144();
  sub_261B496E0(&qword_27FEDA9B8, MEMORY[0x277D45CF0], MEMORY[0x277D45CE8]);
  v125 = v12;
  sub_261CFE194();
  sub_261CFCBB4();
  v126 = *(v13[110] + 16);

  if (v126)
  {
    sub_261CFCBB4();
  }

  else
  {
    sub_261CFCBB4();
    if (!v13[118])
    {
      goto LABEL_69;
    }

    sub_261B49EB8(v13[118]);
  }

  sub_261CFDFC4();

LABEL_69:
  sub_261CFCBB4();
  v127 = *(v13[112] + 16);

  v261 = v125;
  if (v127)
  {
    sub_261CFCBB4();
    v128 = v13[113];
    v129 = *(v128 + 16);
    if (!v129)
    {
      goto LABEL_88;
    }
  }

  else
  {
    v130 = v13[151];
    v131 = v13[150];
    v132 = v13[149];
    sub_261CFCBB4();
    if ((*(v130 + 48))(v132, 1, v131) == 1)
    {
      sub_261AE6A40(v13[149], &qword_27FEDA998, &unk_261D10200);
      v128 = MEMORY[0x277D84F90];
      v129 = *(MEMORY[0x277D84F90] + 16);
      if (!v129)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v133 = v13[153];
      v134 = v13[151];
      v135 = v13[150];
      v136 = *(v134 + 32);
      v136(v133, v13[149], v135);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA7D8, &unk_261D034D0);
      v137 = (*(v134 + 80) + 32) & ~*(v134 + 80);
      v138 = swift_allocObject();
      *(v138 + 16) = xmmword_261D03450;
      v136(v138 + v137, v133, v135);
      v128 = v138;
      v129 = *(v138 + 16);
      if (!v129)
      {
        goto LABEL_88;
      }
    }
  }

  v139 = v13[151];
  v269 = v13[147];
  v140 = v13[146];
  v141 = v13[142];
  v143 = *(v139 + 16);
  v139 += 16;
  v142 = v143;
  v144 = v128 + ((*(v139 + 64) + 32) & ~*(v139 + 64));
  v145 = *(v139 + 56);
  v146 = (v141 + 48);
  v281 = (v141 + 32);
  v300 = (v139 - 8);
  v267 = (v140 + 104);
  v268 = v140;
  v277 = (v140 + 32);
  v295 = MEMORY[0x277D84F90];
  v266 = *MEMORY[0x277D45D20];
  v285 = v145;
  v289 = v143;
  v283 = (v141 + 48);
  v279 = (v141 + 8);
  do
  {
    v148 = v13[141];
    v149 = v13[140];
    v142(v13[152], v144, v13[150]);
    sub_261CFC7C4();
    if ((*v146)(v149, 1, v148) == 1)
    {
      v147 = v13[140];
      (*v300)(v13[152], v13[150]);
      sub_261AE6A40(v147, &qword_27FEDA990, &unk_261D03490);
    }

    else
    {
      v150 = v13[143];
      v151 = v13[141];
      v291 = *v281;
      (*v281)(v13[144], v13[140], v151);
      sub_261CFF684();
      v152 = sub_261CFF694();
      v153 = *v279;
      (*v279)(v150, v151);
      v154 = v13[152];
      v155 = v13[150];
      if (v152)
      {
        v156 = v13[148];
        v157 = v13[147];
        v158 = v13;
        v159 = v13[145];
        v273 = v158[144];
        v275 = v156;
        v271 = v158[141];
        v160 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9D8, &qword_261D034C8) + 48);
        v161 = sub_261CFC7B4();
        v163 = v162;
        (*v300)(v154, v155);
        *v157 = v161;
        *(v269 + 8) = v163;
        v291(v157 + v160, v273, v271);
        (*v267)(v157, v266, v159);
        v164 = *v277;
        (*v277)(v275, v157, v159);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v295 = sub_261B41C6C(0, v295[2] + 1, 1, v295);
        }

        v146 = v283;
        v145 = v285;
        v166 = v295[2];
        v165 = v295[3];
        v13 = v303;
        if (v166 >= v165 >> 1)
        {
          v295 = sub_261B41C6C((v165 > 1), v166 + 1, 1, v295);
        }

        v167 = v303[148];
        v168 = v303[145];
        v295[2] = v166 + 1;
        v164(v295 + ((*(v268 + 80) + 32) & ~*(v268 + 80)) + *(v268 + 72) * v166, v167, v168);
        v142 = v289;
      }

      else
      {
        v153(v13[144], v13[141]);
        (*v300)(v154, v155);
        v145 = v285;
        v142 = v289;
        v146 = v283;
      }
    }

    v144 += v145;
    --v129;
  }

  while (v129);

  sub_261CFE024();
LABEL_88:

  v169 = v13[136];
  v170 = v13[135];
  v171 = v13[134];
  sub_261CFCBB4();
  v172 = *(v169 + 48);
  if (v172(v171, 1, v170) == 1)
  {
    sub_261AE6A40(v13[134], &unk_27FEDB0B0, &unk_261D035D0);
  }

  else
  {
    v173 = v13[139];
    v174 = v13[138];
    v175 = v13[136];
    v176 = v13[135];
    (*(v175 + 32))(v173, v13[134], v176);
    sub_261B05020(0, &qword_27FEDB0D0, 0x277D445D8);
    (*(v175 + 16))(v174, v173, v176);
    v177 = sub_261C7D36C(v174);
    sub_261CFE054();

    (*(v175 + 8))(v173, v176);
  }

  v178 = v13[135];
  v179 = v13[133];
  sub_261CFCBB4();
  if (v172(v179, 1, v178) == 1)
  {
    sub_261AE6A40(v13[133], &unk_27FEDB0B0, &unk_261D035D0);
    v180 = v13[197];
    goto LABEL_103;
  }

  (*(v13[136] + 32))(v13[137], v13[133], v13[135]);
  v181 = [v260 sharees];
  if (!v181)
  {
    goto LABEL_101;
  }

  v182 = v181;
  sub_261B05020(0, &qword_27FEDA9D0, 0x277D447E8);
  v183 = sub_261CFFC64();

  if (![v260 isShared])
  {

LABEL_101:
    v180 = v13[197];
    goto LABEL_102;
  }

  v180 = v13[197];
  v184 = v13[137];
  v185 = swift_task_alloc();
  *(v185 + 16) = v184;
  v186 = sub_261B49450(sub_261B49774, v185, v183);

  if (!v186)
  {
LABEL_102:
    (*(v13[136] + 8))(v13[137], v13[135]);
    goto LABEL_103;
  }

  if (!v13[27])
  {
LABEL_99:
    v190 = v13[137];
    v191 = v13[136];
    v192 = v13[135];
    v193 = [v186 objectID];
    sub_261CFDFA4();

    (*(v191 + 8))(v190, v192);
    goto LABEL_103;
  }

  v187 = v13[131];
  v188 = v13[130];
  v189 = v13[129];
  sub_261CFD7F4();
  if ((*(v187 + 48))(v189, 1, v188) == 1)
  {
    sub_261AE6A40(v13[129], &qword_27FEDA988, &unk_261D03480);
    goto LABEL_99;
  }

  v245 = v13[136];
  v296 = v13[135];
  v301 = v13[137];
  v246 = v13[132];
  v247 = v13[131];
  v248 = v303[130];
  (*(v247 + 32))(v246, v303[129], v248);
  v249 = objc_opt_self();
  v250 = sub_261CFD814();
  v251 = [v249 objectIDWithUUID_];

  v252 = [v186 objectID];
  v253 = v251;
  sub_261CFDFA4();

  v254 = v248;
  v13 = v303;
  (*(v247 + 8))(v246, v254);
  (*(v245 + 8))(v301, v296);
LABEL_103:
  sub_261CFCBB4();
  v194 = v13[98];
  if (v194)
  {
    v195 = v13[99];
    v196 = v13[100];
    sub_261B05020(0, &qword_27FEDA9C0, 0x277D44580);
    v304 = v194;
    v305 = v195;
    v306 = v196;
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261B53114(&v304);
    if (v180)
    {
      v198 = v180;
      v199 = sub_261CFF784();
      v200 = sub_261CFFE64();

      if (os_log_type_enabled(v199, v200))
      {
        v201 = swift_slowAlloc();
        v202 = swift_slowAlloc();
        v304 = v202;
        *v201 = 136315138;
        swift_getErrorValue();
        v203 = sub_261D00674();
        v205 = sub_261B879C8(v203, v204, &v304);

        *(v201 + 4) = v205;
        _os_log_impl(&dword_261AE2000, v199, v200, "%s", v201, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v202);
        MEMORY[0x26671D560](v202, -1, -1);
        MEMORY[0x26671D560](v201, -1, -1);
        sub_261B49728(v194, v195, v196);
      }

      else
      {
        sub_261B49728(v194, v195, v196);
      }
    }

    else
    {
      if (v197)
      {
        v206 = v197;
        v207 = v197;
        MEMORY[0x26671A740](v206);
        sub_261B49728(v194, v195, v196);
      }

      else
      {
        sub_261B05020(0, &qword_27FEDA9C8, 0x277D44590);
        v304 = v194;
        v305 = v195;
        v306 = v196;
        sub_261CFCDA4();
        sub_261CFCDA4();
        sub_261CFCDA4();
        v207 = sub_261B535B8(&v304);
        MEMORY[0x26671A730]();
        sub_261B49728(v194, v195, v196);
      }
    }
  }

  v208 = (v13 + 115);
  if (v264 < 0 && (v264 & 0xF000000000000007) != 0xF000000000000007)
  {
    v209 = v13[128];
    v210 = v13[127];
    v211 = v13[126];
    sub_261CFD7D4();
    sub_261CFE104();
    (*(v210 + 8))(v209, v211);
  }

  *v208 = 0;
  v212 = [(SEL *)v270 saveSynchronouslyWithError:v13 + 115];
  v213 = *v208;
  if (!v212)
  {
    v220 = v213;

    v221 = sub_261CFD654();

    swift_willThrow();
    v222 = v221;
    v223 = sub_261CFF784();
    v224 = sub_261CFFE64();

    if (os_log_type_enabled(v223, v224))
    {
      v225 = swift_slowAlloc();
      v226 = swift_slowAlloc();
      v304 = v226;
      *v225 = 136315138;
      swift_getErrorValue();
      v227 = sub_261D00674();
      v229 = sub_261B879C8(v227, v228, &v304);

      *(v225 + 4) = v229;
      _os_log_impl(&dword_261AE2000, v223, v224, "[CreateReminderIntentPerforming] Create reminder failed to save new reminder error: %s", v225, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v226);
      MEMORY[0x26671D560](v226, -1, -1);
      MEMORY[0x26671D560](v225, -1, -1);
    }

    v230 = v13[188];
    v231 = v13[186];
    sub_261B01D70();
    swift_allocError();
    *v232 = 19;
    swift_willThrow();

    goto LABEL_124;
  }

  v214 = v13[123];
  v215 = type metadata accessor for RecurrentInstanceSpecifier(0);
  (*(*(v215 - 8) + 56))(v214, 1, 1, v215);
  v2 = v262;
  v36 = v261;
  v216 = v213;
  v217 = [v36 listChangeItem];
  if (!v217 || (v9 = &unk_279AFB000, v218 = v217, v219 = [v217 storage], v218, !v219))
  {
    v230 = v13[188];
    v231 = v13[186];
    v233 = v13[123];

    sub_261B01D70();
    swift_allocError();
    *v234 = 11;
    swift_willThrow();

    sub_261AE6A40(v233, &qword_27FEDA108, &unk_261D020C0);
LABEL_124:
    sub_261AE6A40(v231, &qword_27FEDA9B0, &qword_261D034B8);
    sub_261B4AD70(v230, type metadata accessor for CreateRemindersPerformingContext);

    v235 = v303[1];
    goto LABEL_125;
  }

  v297 = [v36 storage];
  v290 = [v36 accountCapabilities];
  if (v262)
  {
    v286 = [v2 storage];
  }

  else
  {
    v286 = 0;
  }

  v38 = v265;
  v292 = v219;
  if (v265)
  {
    if (!(v265 >> 62))
    {
      v237 = v265;
      v238 = *((v265 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v238)
      {
LABEL_144:

        v244 = MEMORY[0x277D84F90];
        goto LABEL_145;
      }

LABEL_132:
      v304 = MEMORY[0x277D84F90];
      sub_261D003A4();
      if (v238 < 0)
      {
        __break(1u);
      }

      v239 = 0;
      v240 = v237;
      do
      {
        if ((v237 & 0xC000000000000001) != 0)
        {
          v241 = MEMORY[0x26671CA10](v239);
        }

        else
        {
          v241 = *(v240 + 8 * v239 + 32);
        }

        v242 = v241;
        ++v239;
        v243 = [v241 v9[84]];

        sub_261D00374();
        sub_261D003B4();
        sub_261D003C4();
        sub_261D00384();
        v240 = v265;
      }

      while (v238 != v239);

      v244 = v304;
      goto LABEL_145;
    }

LABEL_143:
    v237 = v38;
    v238 = sub_261D00274();
    if (!v238)
    {
      goto LABEL_144;
    }

    goto LABEL_132;
  }

  v244 = 0;
LABEL_145:
  v259 = v303[188];
  v258 = v303[186];
  v255 = v303[125];
  v256 = v303[123];
  v257 = v303[122];
  sub_261AFB668(v256, v257, &qword_27FEDA108, &unk_261D020C0);
  sub_261C7EDC4(v297, v292, v290, v286, v244, v257, v255);

  sub_261AE6A40(v256, &qword_27FEDA108, &unk_261D020C0);
  sub_261B496E0(&qword_280D22350, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
  sub_261CFC994();

  sub_261B4AD70(v255, type metadata accessor for ReminderEntity);
  sub_261AE6A40(v258, &qword_27FEDA9B0, &qword_261D034B8);
  sub_261B4AD70(v259, type metadata accessor for CreateRemindersPerformingContext);

  v235 = v303[1];
LABEL_125:

  return v235();
}

uint64_t sub_261B46344()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 664));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261B46610()
{
  v1 = sub_261CFD4E4();
  v72 = *(v1 - 8);
  v73 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v62 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v63 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v70 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = &v58 - v8;
  v9 = sub_261CFD524();
  v67 = *(v9 - 8);
  v68 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v60 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v61 = &v58 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v66 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v58 - v16;
  v18 = type metadata accessor for AppEntityID(0);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v59 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v58 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v58 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA00, &qword_261D035A8);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v30 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v58 - v31;
  v33 = v0[4];
  v64 = v0[1];
  v65 = v33;
  v69 = v0[14];
  v77 = 0;
  v78 = 0xE000000000000000;
  sub_261D00334();
  MEMORY[0x26671C210](0xD000000000000013, 0x8000000261D17970);
  sub_261CFCBB4();
  MEMORY[0x26671C210](v75, v76);

  MEMORY[0x26671C210](0x746567726174202CLL, 0xEE00203A7473694CLL);
  sub_261CFCBB4();
  v34 = type metadata accessor for ListEntity(0);
  v35 = 1;
  if (!(*(*(v34 - 8) + 48))(v26, 1, v34))
  {
    sub_261B4AD08(&v26[*(v34 + 20)], v32, type metadata accessor for AppEntityID);
    v35 = 0;
  }

  v36 = 7104878;
  sub_261AE6A40(v26, &unk_27FEDE0C0, &unk_261D02500);
  (*(v19 + 56))(v32, v35, 1, v18);
  sub_261AFB668(v32, v30, &qword_27FEDAA00, &qword_261D035A8);
  if ((*(v19 + 48))(v30, 1, v18) == 1)
  {
    v37 = 0xE300000000000000;
    v38 = 7104878;
  }

  else
  {
    sub_261B4ADD0(v30, v23, type metadata accessor for AppEntityID);
    sub_261B4AD08(v23, v59, type metadata accessor for AppEntityID);
    v38 = sub_261CFFAB4();
    v37 = v39;
    sub_261B4AD70(v23, type metadata accessor for AppEntityID);
  }

  v41 = v71;
  v40 = v72;
  sub_261AE6A40(v32, &qword_27FEDAA00, &qword_261D035A8);
  MEMORY[0x26671C210](v38, v37);

  MEMORY[0x26671C210](0x3A7365746F6E202CLL, 0xE900000000000020);
  sub_261CFCBB4();
  v42 = v66;
  sub_261AFB668(v17, v66, &qword_27FEDA9A8, &qword_261D034B0);
  v44 = v67;
  v43 = v68;
  if ((*(v67 + 48))(v42, 1, v68) == 1)
  {
    v45 = 0xE300000000000000;
    v46 = 7104878;
  }

  else
  {
    v47 = v61;
    (*(v44 + 32))(v61, v42, v43);
    (*(v44 + 16))(v60, v47, v43);
    v46 = sub_261CFFAB4();
    v45 = v48;
    (*(v44 + 8))(v47, v43);
  }

  sub_261AE6A40(v17, &qword_27FEDA9A8, &qword_261D034B0);
  MEMORY[0x26671C210](v46, v45);

  MEMORY[0x26671C210](0x746144657564202CLL, 0xEB00000000203A65);
  sub_261CFCBB4();
  v49 = v70;
  sub_261AFB668(v41, v70, &qword_27FEDA160, &qword_261D02220);
  v50 = v73;
  if ((*(v40 + 48))(v49, 1, v73) == 1)
  {
    v51 = 0xE300000000000000;
    v52 = 7104878;
  }

  else
  {
    v53 = v63;
    (*(v40 + 32))(v63, v49, v50);
    (*(v40 + 16))(v62, v53, v50);
    v52 = sub_261CFFAB4();
    v51 = v54;
    (*(v40 + 8))(v53, v50);
  }

  sub_261AE6A40(v41, &qword_27FEDA160, &qword_261D02220);
  MEMORY[0x26671C210](v52, v51);

  MEMORY[0x26671C210](0x69726F697270202CLL, 0xEC000000203A7974);
  sub_261CFCBB4();
  if (v75 == 4)
  {
    v55 = 0xE300000000000000;
  }

  else
  {
    v74 = v75;
    v36 = sub_261CFFAB4();
    v55 = v56;
  }

  MEMORY[0x26671C210](v36, v55);

  MEMORY[0x26671C210](32032, 0xE200000000000000);
  return v77;
}

uint64_t sub_261B46EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_261CFE8C4();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = type metadata accessor for AppEntityID(0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = type metadata accessor for SectionEntityID(0);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v5 = type metadata accessor for SectionEntity(0);
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9B0, &qword_261D034B8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v3[26] = swift_task_alloc();
  v6 = type metadata accessor for ReminderEntity(0);
  v3[27] = v6;
  v3[28] = *(v6 - 8);
  v3[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v7 = type metadata accessor for ListEntity(0);
  v3[33] = v7;
  v3[34] = *(v7 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261B472BC, 0, 0);
}

uint64_t sub_261B472BC()
{
  v1 = v0[32];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[7];
  v5 = v0[8];
  type metadata accessor for REMRemindersAppIntentDataView();
  inited = swift_initStackObject();
  v0[40] = inited;
  *(inited + 16) = v5;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v7 = v5;
  sub_261C94504();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_261C94594();
  v8 = *(v3 + 48);
  v0[41] = v8;
  v0[42] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v8(v1, 1, v2) == 1)
  {
    v9 = v0[37];
    v10 = v0[33];
    v11 = v0[34];
    v12 = v0[31];
    v35 = v0[21];
    v13 = v0[7];
    sub_261AE6A40(v0[32], &qword_27FEDA1E0, &unk_261D02300);
    v14 = *(v11 + 56);
    v14(v9, 1, 1, v10);
    __swift_project_boxed_opaque_existential_1(v13, v4[3]);
    sub_261C94594();
    v15 = v8(v12, 1, v35);
    v16 = v0[38];
    if (v15 == 1)
    {
      v17 = v0[33];
      sub_261AE6A40(v0[31], &qword_27FEDA1E0, &unk_261D02300);
      v14(v16, 1, 1, v17);
    }

    else
    {
      v25 = v0[31];
      sub_261CFCA04();
      sub_261B4AD70(v25, type metadata accessor for SectionEntity);
    }

    v23 = v14;
    v26 = v0[37];
    v24 = *(v0[34] + 48);
    if (v24(v26, 1, v0[33]) != 1)
    {
      sub_261AE6A40(v26, &unk_27FEDE0C0, &unk_261D02500);
    }
  }

  else
  {
    v19 = v0[37];
    v18 = v0[38];
    v20 = v0[33];
    v21 = v0[34];
    v22 = v0[32];
    sub_261CFCA04();
    sub_261B4AD70(v22, type metadata accessor for SectionEntity);
    v23 = *(v21 + 56);
    v23(v19, 0, 1, v20);
    sub_261B4ADD0(v19, v18, type metadata accessor for ListEntity);
    v23(v18, 0, 1, v20);
    v24 = *(v21 + 48);
  }

  v27 = v0[38];
  v28 = v0[33];
  if (v24(v27, 1, v28) == 1)
  {
    sub_261AE6A40(v27, &unk_27FEDE0C0, &unk_261D02500);
  }

  else
  {
    v29 = v0[39];
    v30 = v0[36];
    sub_261AE6A40(v29, &unk_27FEDE0C0, &unk_261D02500);
    sub_261B4ADD0(v27, v30, type metadata accessor for ListEntity);
    sub_261B4ADD0(v30, v29, type metadata accessor for ListEntity);
    v23(v29, 0, 1, v28);
  }

  v31 = swift_task_alloc();
  v0[43] = v31;
  *v31 = v0;
  v31[1] = sub_261B47708;
  v32 = v0[39];
  v33 = v0[8];

  return sub_261B49814(v32, v33);
}

uint64_t sub_261B47708(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[44] = a1;
  v4[45] = a2;
  v4[46] = v2;

  if (v2)
  {
    v5 = sub_261B48E08;
  }

  else
  {
    v5 = sub_261B4784C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261B4784C()
{
  v177 = v0;
  v176[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 360);
  if (v1 < 0)
  {
    v2 = 0;
  }

  else
  {
    sub_261B49FA0(*(v0 + 352), *(v0 + 360));
    v2 = *(v0 + 352);
  }

  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v5 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1(*(v0 + 56), *(*(v0 + 56) + 24));
  sub_261C9454C();
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_261AE6A40(*(v0 + 208), &unk_27FEDE110, &unk_261D035B0);
    v6 = 0;
    if (v2)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

  v14 = *(v0 + 368);
  sub_261B4ADD0(*(v0 + 208), *(v0 + 232), type metadata accessor for ReminderEntity);
  v15 = objc_allocWithZone(MEMORY[0x277D44700]);
  v16 = sub_261CFD814();
  v17 = sub_261CFFA54();
  v18 = [v15 initWithUUID:v16 entityName:v17];

  v19 = sub_261CFBFC8(v18);
  if (v14)
  {
    v21 = *(v0 + 352);
    v20 = *(v0 + 360);
    v22 = *(v0 + 232);
    sub_261AE6A40(*(v0 + 312), &unk_27FEDE0C0, &unk_261D02500);

    sub_261B4AC84(v21, v20);

    v23 = v22;
LABEL_28:
    sub_261B4AD70(v23, type metadata accessor for ReminderEntity);
LABEL_38:

    v59 = *(v0 + 8);
    goto LABEL_39;
  }

  v6 = v19;

  v42 = sub_261CFFDF4();
  v43 = [v42 supportsSubtasks];

  if (!v43)
  {
    v47 = *(v0 + 352);
    v46 = *(v0 + 360);
    v48 = *(v0 + 312);
    v49 = *(v0 + 232);
    sub_261B01D70();
    swift_allocError();
    v51 = 18;
    goto LABEL_27;
  }

  if (([v6 isSubtask] & 1) != 0 || (__swift_project_boxed_opaque_existential_1(*(v0 + 56), *(*(v0 + 56) + 24)), (v44 = sub_261C945DC()) != 0) && (v45 = *(v44 + 16), , v45))
  {
    v47 = *(v0 + 352);
    v46 = *(v0 + 360);
    v48 = *(v0 + 312);
    v49 = *(v0 + 232);
    sub_261B01D70();
    swift_allocError();
    v51 = 17;
LABEL_27:
    *v50 = v51;
    swift_willThrow();

    sub_261B4AC84(v47, v46);
    sub_261AE6A40(v48, &unk_27FEDE0C0, &unk_261D02500);
    v23 = v49;
    goto LABEL_28;
  }

  sub_261B4AD70(*(v0 + 232), type metadata accessor for ReminderEntity);
  if (v2)
  {
    goto LABEL_6;
  }

  if (v6)
  {
    v52 = [v6 list];
    if (v52)
    {
      v2 = v52;
      goto LABEL_6;
    }
  }

LABEL_35:
  v53 = *(v0 + 64);
  *(v0 + 40) = 0;
  v54 = [v53 fetchDefaultListWithError_];
  v2 = v54;
  v55 = *(v0 + 40);
  if (v55)
  {
    v57 = *(v0 + 352);
    v56 = *(v0 + 360);
    v58 = *(v0 + 312);
    v55;

    swift_willThrow();

    sub_261B4AC84(v57, v56);
    v13 = v58;
    goto LABEL_37;
  }

  if (!v54)
  {
    if (qword_27FED9870 != -1)
    {
      swift_once();
    }

    v61 = sub_261CFF7A4();
    __swift_project_value_buffer(v61, qword_27FEDA970);
    v62 = sub_261CFF784();
    v63 = sub_261CFFE64();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_261AE2000, v62, v63, "[CreateReminderIntentPerforming] Unable to fetch default list", v64, 2u);
      MEMORY[0x26671D560](v64, -1, -1);
    }

    v9 = *(v0 + 352);
    v8 = *(v0 + 360);
    v10 = *(v0 + 312);

    sub_261B01D70();
    swift_allocError();
    *v65 = 14;
    swift_willThrow();

    goto LABEL_9;
  }

LABEL_6:
  v7 = v2;
  if ([v7 isGroup])
  {
    v9 = *(v0 + 352);
    v8 = *(v0 + 360);
    v10 = *(v0 + 312);
    sub_261B01D70();
    swift_allocError();
    v12 = 4;
LABEL_8:
    *v11 = v12;
    swift_willThrow();

LABEL_9:
    sub_261B4AC84(v9, v8);
    v13 = v10;
LABEL_37:
    sub_261AE6A40(v13, &unk_27FEDE0C0, &unk_261D02500);
    goto LABEL_38;
  }

  __swift_project_boxed_opaque_existential_1(*(v0 + 56), *(*(v0 + 56) + 24));
  v24 = sub_261C945DC();
  if (v24)
  {
    v25 = *(v24 + 16);

    if (v25)
    {
      v26 = sub_261D000B4();
      v27 = [v26 supportsSubtasks];

      if ((v27 & 1) == 0)
      {
        v9 = *(v0 + 352);
        v8 = *(v0 + 360);
        v10 = *(v0 + 312);
        sub_261B01D70();
        swift_allocError();
        v12 = 18;
        goto LABEL_8;
      }
    }
  }

  if (v6)
  {
    v175 = v6;
    v28 = v6;
    v29 = [v28 list];
    v30 = [v29 objectID];

    v31 = [v7 objectID];
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    LOBYTE(v29) = sub_261D000F4();

    if ((v29 & 1) == 0)
    {
      if (qword_27FED9870 != -1)
      {
        swift_once();
      }

      v32 = sub_261CFF7A4();
      __swift_project_value_buffer(v32, qword_27FEDA970);
      v173 = v7;
      v33 = v7;
      v34 = v28;
      v35 = sub_261CFF784();
      v36 = sub_261CFFE64();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412546;
        v39 = [v33 objectID];
        *(v37 + 4) = v39;
        *v38 = v39;
        *(v37 + 12) = 2112;
        v40 = [v34 objectID];
        *(v37 + 14) = v40;
        v38[1] = v40;
        _os_log_impl(&dword_261AE2000, v35, v36, "[CreateRemindersPerformingContext] Attempted to create reminder(s) as subtask(s) on a different list than the parent reminder. Skip. {targetList: %@, parentReminder: %@}", v37, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA730, &unk_261D035C0);
        swift_arrayDestroy();
        MEMORY[0x26671D560](v38, -1, -1);
        MEMORY[0x26671D560](v37, -1, -1);
        v41 = v34;
      }

      else
      {
        v41 = v35;
        v35 = v34;
      }

      v175 = 0;
      v7 = v173;
    }
  }

  else
  {
    v175 = 0;
  }

  v66 = *(v0 + 200);
  v67 = sub_261CFDC34();
  v68 = *(v67 - 8);
  v69 = *(v68 + 56);
  v69(v66, 1, 1, v67);
  if ((v1 & 0xF000000000000007) == 0xF000000000000007)
  {
    sub_261AE6A40(*(v0 + 312), &unk_27FEDE0C0, &unk_261D02500);

    v70 = v7;
  }

  else
  {
    v171 = v69;
    v172 = v67;
    v174 = v7;
    v71 = *(v0 + 352);
    v72 = *(v0 + 360);
    v73 = *(v0 + 328);
    v74 = *(v0 + 240);
    v75 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1(*(v0 + 56), *(*(v0 + 56) + 24));
    sub_261B49FA0(v71, v72);
    sub_261C94594();
    if (v73(v74, 1, v75) == 1)
    {
      v76 = *(v0 + 352);
      v77 = *(v0 + 360);
      v78 = *(v0 + 240);
      sub_261AE6A40(*(v0 + 312), &unk_27FEDE0C0, &unk_261D02500);

      sub_261B4AC84(v76, v77);
      v70 = v7;

      sub_261AE6A40(v78, &qword_27FEDA1E0, &unk_261D02300);
    }

    else
    {
      v79 = *(v0 + 184);
      v80 = *(v0 + 160);
      v81 = *(v0 + 168);
      sub_261B4ADD0(*(v0 + 240), v79, type metadata accessor for SectionEntity);
      v82 = *(v81 + 24);
      sub_261B4AD08(v79 + v82, v80, type metadata accessor for SectionEntityID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v83 = *(v0 + 352);
        v84 = *(v0 + 360);
        v85 = *(v0 + 184);
        v86 = *(v0 + 160);
        sub_261AE6A40(*(v0 + 312), &unk_27FEDE0C0, &unk_261D02500);

        sub_261B4AC84(v83, v84);
        v70 = v7;

        sub_261B4AD70(v86, type metadata accessor for SectionEntityID);
        sub_261B4AD70(v85, type metadata accessor for SectionEntity);
      }

      else
      {
        v87 = *(v0 + 192);
        v165 = *(v0 + 200);
        v88 = *(v0 + 152);
        v89 = *(v0 + 136);
        v90 = *(v0 + 80);
        v166 = *(v0 + 88);
        v168 = *(v0 + 352);
        sub_261B4AD70(*(v0 + 160), type metadata accessor for SectionEntityID);
        sub_261B4AD08(v79 + v82, v88, type metadata accessor for SectionEntityID);
        sub_261B4ADD0(v88, v89, type metadata accessor for AppEntityID);
        v91 = objc_allocWithZone(MEMORY[0x277D44700]);
        v92 = sub_261CFD814();
        v93 = sub_261CFFA54();
        v94 = [v91 initWithUUID:v92 entityName:v93];

        sub_261AE6A40(v165, &qword_27FEDA9B0, &qword_261D034B8);
        *v87 = v94;
        (*(v68 + 104))(v87, *MEMORY[0x277D45C38], v172);
        v171(v87, 0, 1, v172);
        sub_261B4AC98(v87, v165);
        *v166 = v168;
        v95 = *(v90 + 104);
        if (v1 < 0)
        {
          v95(*(v0 + 88), *MEMORY[0x277D45E78], *(v0 + 72));
          v98 = v168;
        }

        else
        {
          v96 = *(v0 + 352);
          v97 = *(v0 + 360);
          v95(*(v0 + 88), *MEMORY[0x277D45E80], *(v0 + 72));
          sub_261B49FA0(v96, v97);
        }

        v99 = v175;
        v100 = *(v0 + 280);
        v101 = *(v0 + 264);
        v102 = *(v0 + 128);
        v103 = *(v0 + 96);
        v104 = *(v0 + 72);
        v105 = *(v0 + 80);
        (*(v105 + 32))(v103, *(v0 + 88), v104);
        v106 = sub_261CFE8B4();
        (*(v105 + 8))(v103, v104);
        sub_261CFCA04();
        sub_261B4AD08(v100 + *(v101 + 20), v102, type metadata accessor for AppEntityID);
        sub_261B4AD70(v100, type metadata accessor for ListEntity);
        v107 = objc_allocWithZone(MEMORY[0x277D44700]);
        v108 = sub_261CFD814();
        v109 = sub_261CFFA54();
        v110 = [v107 initWithUUID:v108 entityName:v109];

        sub_261B4AD70(v102, type metadata accessor for AppEntityID);
        sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
        LOBYTE(v108) = sub_261D000F4();

        v111 = v174;
        if ((v108 & 1) == 0)
        {
          if (qword_27FED9870 != -1)
          {
            swift_once();
          }

          v112 = *(v0 + 136);
          v113 = *(v0 + 120);
          v114 = sub_261CFF7A4();
          __swift_project_value_buffer(v114, qword_27FEDA970);
          sub_261B4AD08(v112, v113, type metadata accessor for AppEntityID);
          v115 = v174;
          v116 = sub_261CFF784();
          v117 = sub_261CFFE64();

          v118 = os_log_type_enabled(v116, v117);
          v119 = *(v0 + 200);
          v120 = *(v0 + 120);
          if (v118)
          {
            v121 = swift_slowAlloc();
            v122 = swift_slowAlloc();
            v123 = swift_slowAlloc();
            v176[0] = v123;
            *v121 = 138412546;
            v124 = [v115 objectID];
            *(v121 + 4) = v124;
            *v122 = v124;
            *(v121 + 12) = 2080;
            v125 = AppEntityID.entityIdentifierString.getter();
            v127 = v126;
            sub_261B4AD70(v120, type metadata accessor for AppEntityID);
            v128 = sub_261B879C8(v125, v127, v176);

            *(v121 + 14) = v128;
            _os_log_impl(&dword_261AE2000, v116, v117, "[CreateRemindersPerformingContext] Attempted to add reminder(s) to a section on a different list than the section's. Skip. {targetList: %@, section: %s}", v121, 0x16u);
            sub_261AE6A40(v122, &unk_27FEDA730, &unk_261D035C0);
            MEMORY[0x26671D560](v122, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v123);
            v129 = v123;
            v99 = v175;
            MEMORY[0x26671D560](v129, -1, -1);
            v130 = v121;
            v111 = v174;
            MEMORY[0x26671D560](v130, -1, -1);
          }

          else
          {

            sub_261B4AD70(v120, type metadata accessor for AppEntityID);
          }

          sub_261AE6A40(v119, &qword_27FEDA9B0, &qword_261D034B8);
          v171(*(v0 + 200), 1, 1, v172);
        }

        if (v99)
        {
          if (qword_27FED9870 != -1)
          {
            swift_once();
          }

          v131 = *(v0 + 136);
          v132 = *(v0 + 112);
          v133 = sub_261CFF7A4();
          __swift_project_value_buffer(v133, qword_27FEDA970);
          sub_261B4AD08(v131, v132, type metadata accessor for AppEntityID);
          v134 = v111;
          v135 = sub_261CFF784();
          v136 = sub_261CFFE64();

          v137 = os_log_type_enabled(v135, v136);
          v138 = *(v0 + 360);
          v170 = *(v0 + 352);
          v139 = *(v0 + 312);
          v140 = *(v0 + 200);
          v141 = *(v0 + 184);
          v142 = *(v0 + 136);
          v143 = *(v0 + 112);
          if (v137)
          {
            v169 = *(v0 + 312);
            v144 = swift_slowAlloc();
            v167 = v140;
            v145 = swift_slowAlloc();
            v163 = v138;
            v146 = swift_slowAlloc();
            v176[0] = v146;
            *v144 = 138412546;
            v147 = [v134 objectID];
            *(v144 + 4) = v147;
            *v145 = v147;
            *(v144 + 12) = 2080;
            v164 = v141;
            v148 = v134;
            v149 = AppEntityID.entityIdentifierString.getter();
            v162 = v142;
            v151 = v150;
            sub_261B4AD70(v143, type metadata accessor for AppEntityID);
            v152 = sub_261B879C8(v149, v151, v176);

            *(v144 + 14) = v152;
            _os_log_impl(&dword_261AE2000, v135, v136, "[CreateRemindersPerformingContext] Attempted to add subtask(s) to a section. Skip. {targetList: %@, section: %s}", v144, 0x16u);
            sub_261AE6A40(v145, &unk_27FEDA730, &unk_261D035C0);
            MEMORY[0x26671D560](v145, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v146);
            MEMORY[0x26671D560](v146, -1, -1);
            MEMORY[0x26671D560](v144, -1, -1);

            sub_261B4AC84(v170, v163);
            sub_261AE6A40(v167, &qword_27FEDA9B0, &qword_261D034B8);
            sub_261AE6A40(v169, &unk_27FEDE0C0, &unk_261D02500);
            sub_261B4AD70(v162, type metadata accessor for AppEntityID);
            v153 = v164;
          }

          else
          {

            sub_261B4AC84(v170, v138);
            sub_261B4AD70(v143, type metadata accessor for AppEntityID);
            sub_261AE6A40(v140, &qword_27FEDA9B0, &qword_261D034B8);
            sub_261AE6A40(v139, &unk_27FEDE0C0, &unk_261D02500);
            sub_261B4AD70(v142, type metadata accessor for AppEntityID);
            v153 = v141;
          }

          sub_261B4AD70(v153, type metadata accessor for SectionEntity);
          v171(*(v0 + 200), 1, 1, v172);
          v70 = v174;
        }

        else
        {
          v154 = *(v0 + 352);
          v155 = *(v0 + 360);
          v156 = *(v0 + 312);
          v157 = *(v0 + 184);
          v158 = *(v0 + 136);

          sub_261B4AC84(v154, v155);
          sub_261AE6A40(v156, &unk_27FEDE0C0, &unk_261D02500);
          sub_261B4AD70(v158, type metadata accessor for AppEntityID);
          sub_261B4AD70(v157, type metadata accessor for SectionEntity);
          v70 = v111;
        }
      }
    }
  }

  v159 = *(v0 + 200);
  v160 = *(v0 + 48);
  *v160 = *(v0 + 352);
  *(v160 + 16) = v70;
  *(v160 + 24) = v175;
  RemindersPerformingContext = type metadata accessor for CreateRemindersPerformingContext(0);
  sub_261B4AC98(v159, v160 + *(RemindersPerformingContext + 28));

  v59 = *(v0 + 8);
LABEL_39:

  return v59();
}

uint64_t sub_261B48E08()
{
  v1 = *(v0 + 312);

  sub_261AE6A40(v1, &unk_27FEDE0C0, &unk_261D02500);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_261B48FBC(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_261D00274();
    if (v19)
    {
      v20 = v19;
      v1 = sub_261C44054();
      sub_261BBDF58(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_261D00274();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x26671CA10]();
          v11 = MEMORY[0x26671CA10](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_261BA00C0();
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_261BA00C0();
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

void *sub_261B491CC(void *a1)
{
  v2 = type metadata accessor for ReminderEntity(0);
  v15 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v3);
  v16 = &v15 - v7;
  v8 = a1[2];
  if (v8 < 2)
  {
    return a1;
  }

  v9 = 0;
  v10 = v8 >> 1;
  for (i = v8 - 1; ; --i)
  {
    if (v9 == i)
    {
      goto LABEL_5;
    }

    v12 = a1[2];
    if (v9 >= v12)
    {
      break;
    }

    v13 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v14 = *(v15 + 72);
    result = sub_261B4AD08(a1 + v13 + v14 * v9, v16, type metadata accessor for ReminderEntity);
    if (i >= v12)
    {
      goto LABEL_14;
    }

    sub_261B4AD08(a1 + v13 + v14 * i, v5, type metadata accessor for ReminderEntity);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_261B9D834(a1);
    }

    result = sub_261B4AC20(v5, a1 + v13 + v14 * v9);
    if (i >= a1[2])
    {
      goto LABEL_15;
    }

    result = sub_261B4AC20(v16, a1 + v13 + v14 * i);
LABEL_5:
    if (v10 == ++v9)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_261B493A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

void *sub_261B49450(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_261D00274())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26671CA10](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

void (*sub_261B49564(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26671CA10](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return _s19RemindersAppIntents27QuickReminderViewControllerC13ConfigurationVwxx_0;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for CreateRemindersPerformingContext(uint64_t a1)
{
  result = qword_27FEDA9E8;
  if (!qword_27FEDA9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261B496E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261B49728(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

void (*sub_261B49794(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26671CA10](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return destroy for QuickReminderViewController.Configuration;
  }

  __break(1u);
  return result;
}

uint64_t sub_261B49814(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v2[6] = swift_task_alloc();
  v3 = type metadata accessor for ListEntity(0);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261B49938, 0, 0);
}

uint64_t sub_261B49938()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_261AFB668(*(v0 + 32), v3, &unk_27FEDE0C0, &unk_261D02500);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_261AE6A40(*(v0 + 48), &unk_27FEDE0C0, &unk_261D02500);
    v4 = 0;
    v5 = 0xF000000000000007;
LABEL_10:

    v20 = *(v0 + 8);

    return v20(v4, v5);
  }

  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  sub_261B4ADD0(*(v0 + 48), v6, type metadata accessor for ListEntity);
  v8 = *(v6 + *(v7 + 84));
  type metadata accessor for AppEntityID(0);
  v9 = objc_allocWithZone(MEMORY[0x277D44700]);
  v10 = sub_261CFD814();
  v11 = sub_261CFFA54();
  v12 = [v9 initWithUUID:v10 entityName:v11];

  v13 = *(v0 + 40);
  if ((v8 & 1) == 0)
  {
    *(v0 + 24) = 0;
    v4 = [v13 fetchListWithObjectID:v12 error:v0 + 24];

    v19 = *(v0 + 24);
    if (v4)
    {
      sub_261B4AD70(*(v0 + 72), type metadata accessor for ListEntity);
      v5 = 0;
      goto LABEL_10;
    }

    v27 = v19;
    goto LABEL_20;
  }

  *(v0 + 16) = 0;
  v4 = [v13 fetchCustomSmartListWithObjectID:v12 error:v0 + 16];

  v14 = *(v0 + 16);
  if (!v4)
  {
    v27 = v14;
LABEL_20:
    sub_261CFD654();

    swift_willThrow();
    goto LABEL_21;
  }

  v15 = v14;
  v16 = [v4 customContext];
  if (v16)
  {
    v17 = v16;
    v18 = sub_261D00094();

    if (v18)
    {
      sub_261B4AD70(*(v0 + 72), type metadata accessor for ListEntity);
      v5 = v18 | 0x8000000000000000;
      goto LABEL_10;
    }
  }

  if (qword_27FED9870 != -1)
  {
    swift_once();
  }

  v22 = sub_261CFF7A4();
  __swift_project_value_buffer(v22, qword_27FEDA970);
  v23 = sub_261CFF784();
  v24 = sub_261CFFE64();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_261AE2000, v23, v24, "[CreateReminderIntentPerforming] Unable to fetch custom smart list filter", v25, 2u);
    MEMORY[0x26671D560](v25, -1, -1);
  }

  sub_261B01D70();
  swift_allocError();
  *v26 = 10;
  swift_willThrow();

LABEL_21:
  sub_261B4AD70(*(v0 + 72), type metadata accessor for ListEntity);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_261B49D78(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_261D00274())
  {
    v4 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    v5 = sub_261B3B918();
    result = MEMORY[0x26671C450](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26671CA10](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_261B9C850(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_261D00274();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_261B49EB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26671C450](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_261CFD104();
      sub_261B9CA88(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_261B49F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

id sub_261B49FA0(void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    v4 = (a2 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = a1;
    a1 = v4;
  }

  return a1;
}

char *sub_261B49FEC(char *a1, void **a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v7 = *a2;
    *v4 = *a2;
    v4 = &v7[(v5 + 16) & ~v5];
    sub_261CFCDA4();
  }

  else
  {
    v6 = a2[1];
    if ((~v6 & 0xF000000000000007) != 0)
    {
      v8 = *a2;
      v9 = a3;
      sub_261B49FA0(*a2, a2[1]);
      a3 = v9;
      *v4 = v8;
      *(v4 + 1) = v6;
    }

    else
    {
      *a1 = *a2;
    }

    v10 = a2[2];
    v11 = a2[3];
    *(v4 + 2) = v10;
    *(v4 + 3) = v11;
    v12 = *(a3 + 28);
    v13 = sub_261CFDC34();
    v14 = *(v13 - 8);
    v15 = *(v14 + 48);
    v16 = v10;
    v17 = v11;
    if (v15(a2 + v12, 1, v13))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9B0, &qword_261D034B8);
      memcpy(&v4[v12], a2 + v12, *(*(v18 - 8) + 64));
    }

    else
    {
      (*(v14 + 16))(&v4[v12], a2 + v12, v13);
      (*(v14 + 56))(&v4[v12], 0, 1, v13);
    }
  }

  return v4;
}

uint64_t sub_261B4A19C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if ((~v4 & 0xF000000000000007) != 0)
  {
    sub_261B4A290(*a1, v4);
  }

  v5 = *(a2 + 28);
  v6 = sub_261CFDC34();
  v9 = *(v6 - 8);
  result = (*(v9 + 48))(a1 + v5, 1, v6);
  if (!result)
  {
    v8 = *(v9 + 8);

    return v8(a1 + v5, v6);
  }

  return result;
}

void sub_261B4A290(void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    v3 = (a2 & 0x7FFFFFFFFFFFFFFFLL);

    a1 = v3;
  }
}

char *sub_261B4A2DC(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  if ((~v6 & 0xF000000000000007) != 0)
  {
    v7 = *a2;
    sub_261B49FA0(*a2, *(a2 + 8));
    *a1 = v7;
    *(a1 + 1) = v6;
  }

  else
  {
    *a1 = *a2;
  }

  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  *(a1 + 2) = v8;
  *(a1 + 3) = v9;
  v10 = *(a3 + 28);
  v11 = sub_261CFDC34();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v8;
  v15 = v9;
  if (v13(a2 + v10, 1, v11))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9B0, &qword_261D034B8);
    memcpy(&a1[v10], (a2 + v10), *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v12 + 16))(&a1[v10], a2 + v10, v11);
    (*(v12 + 56))(&a1[v10], 0, 1, v11);
  }

  return a1;
}

char *sub_261B4A43C(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  v7 = v6 & 0xF000000000000007;
  if ((~*(a1 + 1) & 0xF000000000000007) == 0)
  {
    if (v7 != 0xF000000000000007)
    {
      v8 = *a2;
      sub_261B49FA0(*a2, *(a2 + 8));
      *a1 = v8;
      *(a1 + 1) = v6;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v7 == 0xF000000000000007)
  {
    sub_261B4A648(a1);
LABEL_6:
    *a1 = *a2;
    goto LABEL_8;
  }

  v9 = *a2;
  sub_261B49FA0(*a2, *(a2 + 8));
  v10 = *a1;
  v11 = *(a1 + 1);
  *a1 = v9;
  *(a1 + 1) = v6;
  sub_261B4A290(v10, v11);
LABEL_8:
  v12 = *(a2 + 16);
  v13 = *(a1 + 2);
  *(a1 + 2) = v12;
  v14 = v12;

  v15 = *(a1 + 3);
  v16 = *(a2 + 24);
  *(a1 + 3) = v16;
  v17 = v16;

  v18 = *(a3 + 28);
  v19 = sub_261CFDC34();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  LODWORD(v15) = v21(&a1[v18], 1, v19);
  v22 = v21((a2 + v18), 1, v19);
  if (!v15)
  {
    if (!v22)
    {
      (*(v20 + 24))(&a1[v18], a2 + v18, v19);
      return a1;
    }

    (*(v20 + 8))(&a1[v18], v19);
    goto LABEL_13;
  }

  if (v22)
  {
LABEL_13:
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9B0, &qword_261D034B8);
    memcpy(&a1[v18], (a2 + v18), *(*(v23 - 8) + 64));
    return a1;
  }

  (*(v20 + 16))(&a1[v18], a2 + v18, v19);
  (*(v20 + 56))(&a1[v18], 0, 1, v19);
  return a1;
}

uint64_t sub_261B4A678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  v6 = *(a3 + 28);
  v7 = sub_261CFDC34();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9B0, &qword_261D034B8);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  return a1;
}

uint64_t sub_261B4A794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if ((~v6 & 0xF000000000000007) == 0)
  {
    goto LABEL_4;
  }

  v7 = *(a2 + 8);
  if ((~v7 & 0xF000000000000007) == 0)
  {
    sub_261B4A648(a1);
LABEL_4:
    *a1 = *a2;
    goto LABEL_6;
  }

  v8 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v7;
  sub_261B4A290(v8, v6);
LABEL_6:
  v9 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v10 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  v11 = *(a3 + 28);
  v12 = sub_261CFDC34();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(a1 + v11, 1, v12);
  v16 = v14(a2 + v11, 1, v12);
  if (!v15)
  {
    if (!v16)
    {
      (*(v13 + 40))(a1 + v11, a2 + v11, v12);
      return a1;
    }

    (*(v13 + 8))(a1 + v11, v12);
    goto LABEL_11;
  }

  if (v16)
  {
LABEL_11:
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9B0, &qword_261D034B8);
    memcpy((a1 + v11), (a2 + v11), *(*(v17 - 8) + 64));
    return a1;
  }

  (*(v13 + 32))(a1 + v11, a2 + v11, v12);
  (*(v13 + 56))(a1 + v11, 0, 1, v12);
  return a1;
}

void sub_261B4A990(uint64_t a1)
{
  sub_261B4AA40(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_261B4AA40(uint64_t a1)
{
  if (!qword_27FEDA9F8)
  {
    sub_261CFDC34();
    v1 = sub_261D00154();
    if (!v2)
    {
      atomic_store(v1, &qword_27FEDA9F8);
    }
  }
}

uint64_t assignWithCopy for CreateRemindersPerformingContext.IntendedList(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_261B49FA0(*a2, v4);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  sub_261B4A290(v5, v6);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t assignWithTake for CreateRemindersPerformingContext.IntendedList(uint64_t a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  *a1 = *a2;
  sub_261B4A290(v3, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for CreateRemindersPerformingContext.IntendedList(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 8) >> 57) >> 6) | (2 * ((*(a1 + 8) >> 57) & 0x38 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for CreateRemindersPerformingContext.IntendedList(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_261B4AC20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderEntity(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_261B4AC84(void *a1, uint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    sub_261B4A290(a1, a2);
  }
}

uint64_t sub_261B4AC98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9B0, &qword_261D034B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261B4AD08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261B4AD70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261B4ADD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_261B4AE74(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[11];
  v13[10] = a2[10];
  v13[11] = v3;
  v4 = a2[13];
  v13[12] = a2[12];
  v13[13] = v4;
  v5 = a2[7];
  v13[6] = a2[6];
  v13[7] = v5;
  v6 = a2[9];
  v13[8] = a2[8];
  v13[9] = v6;
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v8 = a2[5];
  v13[4] = a2[4];
  v13[5] = v8;
  v9 = a2[1];
  v13[0] = *a2;
  v13[1] = v9;
  v12 = v2;
  sub_261B4E63C(v13, v11);
  sub_261CFCBC4();
  return sub_261B4E674(v13);
}

uint64_t (*UpdateReminderAppIntent.isCompleted.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

void *sub_261B4AFEC(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  sub_261AFB668(a1, v18 - v8, &qword_27FEDA9A8, &qword_261D034B0);
  v10 = a2[11];
  v19[10] = a2[10];
  v19[11] = v10;
  v11 = a2[13];
  v19[12] = a2[12];
  v19[13] = v11;
  v12 = a2[7];
  v19[6] = a2[6];
  v19[7] = v12;
  v13 = a2[9];
  v19[8] = a2[8];
  v19[9] = v13;
  v14 = a2[3];
  v19[2] = a2[2];
  v19[3] = v14;
  v15 = a2[5];
  v19[4] = a2[4];
  v19[5] = v15;
  v16 = a2[1];
  v19[0] = *a2;
  v19[1] = v16;
  sub_261AFB668(v9, v7, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261B4E63C(v19, v18);
  sub_261CFCBC4();
  sub_261AE6A40(v9, &qword_27FEDA9A8, &qword_261D034B0);
  return sub_261B4E674(v19);
}

uint64_t UpdateReminderAppIntent.note.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA9A8, &qword_261D034B0);
}

uint64_t (*UpdateReminderAppIntent.note.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

void *sub_261B4B2C0(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[11];
  v12[10] = a2[10];
  v12[11] = v3;
  v4 = a2[13];
  v12[12] = a2[12];
  v12[13] = v4;
  v5 = a2[7];
  v12[6] = a2[6];
  v12[7] = v5;
  v6 = a2[9];
  v12[8] = a2[8];
  v12[9] = v6;
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  v11[28] = v2;
  sub_261CFD104();
  sub_261B4E63C(v12, v11);
  sub_261CFCBC4();
  return sub_261B4E674(v12);
}

uint64_t (*UpdateReminderAppIntent.tags.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

void *sub_261B4B43C(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  sub_261AFB668(a1, v18 - v8, &qword_27FEDA160, &qword_261D02220);
  v10 = a2[11];
  v19[10] = a2[10];
  v19[11] = v10;
  v11 = a2[13];
  v19[12] = a2[12];
  v19[13] = v11;
  v12 = a2[7];
  v19[6] = a2[6];
  v19[7] = v12;
  v13 = a2[9];
  v19[8] = a2[8];
  v19[9] = v13;
  v14 = a2[3];
  v19[2] = a2[2];
  v19[3] = v14;
  v15 = a2[5];
  v19[4] = a2[4];
  v19[5] = v15;
  v16 = a2[1];
  v19[0] = *a2;
  v19[1] = v16;
  sub_261AFB668(v9, v7, &qword_27FEDA160, &qword_261D02220);
  sub_261B4E63C(v19, v18);
  sub_261CFCBC4();
  sub_261AE6A40(v9, &qword_27FEDA160, &qword_261D02220);
  return sub_261B4E674(v19);
}

uint64_t UpdateReminderAppIntent.dueDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA160, &qword_261D02220);
}

uint64_t (*UpdateReminderAppIntent.dueDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

void *sub_261B4B700(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  sub_261AFB668(a1, v18 - v8, &qword_27FEDA9A0, &unk_261D034A0);
  v10 = a2[11];
  v19[10] = a2[10];
  v19[11] = v10;
  v11 = a2[13];
  v19[12] = a2[12];
  v19[13] = v11;
  v12 = a2[7];
  v19[6] = a2[6];
  v19[7] = v12;
  v13 = a2[9];
  v19[8] = a2[8];
  v19[9] = v13;
  v14 = a2[3];
  v19[2] = a2[2];
  v19[3] = v14;
  v15 = a2[5];
  v19[4] = a2[4];
  v19[5] = v15;
  v16 = a2[1];
  v19[0] = *a2;
  v19[1] = v16;
  sub_261AFB668(v9, v7, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261B4E63C(v19, v18);
  sub_261CFCBC4();
  sub_261AE6A40(v9, &qword_27FEDA9A0, &unk_261D034A0);
  return sub_261B4E674(v19);
}

uint64_t UpdateReminderAppIntent.recurrence.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA9A0, &unk_261D034A0);
}

uint64_t (*UpdateReminderAppIntent.recurrence.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

void *sub_261B4B9D4(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[11];
  v12[10] = a2[10];
  v12[11] = v3;
  v4 = a2[13];
  v12[12] = a2[12];
  v12[13] = v4;
  v5 = a2[7];
  v12[6] = a2[6];
  v12[7] = v5;
  v6 = a2[9];
  v12[8] = a2[8];
  v12[9] = v6;
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  v11[28] = v2;
  sub_261CFD104();
  sub_261B4E63C(v12, v11);
  sub_261CFCBC4();
  return sub_261B4E674(v12);
}

uint64_t (*UpdateReminderAppIntent.subtasks.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

void *sub_261B4BB50(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  sub_261AFB668(a1, v18 - v8, &unk_27FEDE0C0, &unk_261D02500);
  v10 = a2[11];
  v19[10] = a2[10];
  v19[11] = v10;
  v11 = a2[13];
  v19[12] = a2[12];
  v19[13] = v11;
  v12 = a2[7];
  v19[6] = a2[6];
  v19[7] = v12;
  v13 = a2[9];
  v19[8] = a2[8];
  v19[9] = v13;
  v14 = a2[3];
  v19[2] = a2[2];
  v19[3] = v14;
  v15 = a2[5];
  v19[4] = a2[4];
  v19[5] = v15;
  v16 = a2[1];
  v19[0] = *a2;
  v19[1] = v16;
  sub_261AFB668(v9, v7, &unk_27FEDE0C0, &unk_261D02500);
  sub_261B4E63C(v19, v18);
  sub_261CFCBC4();
  sub_261AE6A40(v9, &unk_27FEDE0C0, &unk_261D02500);
  return sub_261B4E674(v19);
}

uint64_t UpdateReminderAppIntent.targetList.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &unk_27FEDE0C0, &unk_261D02500);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &unk_27FEDE0C0, &unk_261D02500);
}

uint64_t (*UpdateReminderAppIntent.targetList.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

void *sub_261B4BE14(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  sub_261AFB668(a1, v18 - v8, &qword_27FEDA1E0, &unk_261D02300);
  v10 = a2[11];
  v19[10] = a2[10];
  v19[11] = v10;
  v11 = a2[13];
  v19[12] = a2[12];
  v19[13] = v11;
  v12 = a2[7];
  v19[6] = a2[6];
  v19[7] = v12;
  v13 = a2[9];
  v19[8] = a2[8];
  v19[9] = v13;
  v14 = a2[3];
  v19[2] = a2[2];
  v19[3] = v14;
  v15 = a2[5];
  v19[4] = a2[4];
  v19[5] = v15;
  v16 = a2[1];
  v19[0] = *a2;
  v19[1] = v16;
  sub_261AFB668(v9, v7, &qword_27FEDA1E0, &unk_261D02300);
  sub_261B4E63C(v19, v18);
  sub_261CFCBC4();
  sub_261AE6A40(v9, &qword_27FEDA1E0, &unk_261D02300);
  return sub_261B4E674(v19);
}

uint64_t UpdateReminderAppIntent.targetSection.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &qword_27FEDA1E0, &unk_261D02300);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA1E0, &unk_261D02300);
}

uint64_t (*UpdateReminderAppIntent.targetSection.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t static UpdateReminderAppIntent.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FEDAA08 = a1;
  return result;
}

uint64_t sub_261B4C198()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v6, qword_27FEDAA10);
  __swift_project_value_buffer(v6, qword_27FEDAA10);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateReminderAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9878 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAA10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateReminderAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v5);
  sub_261CFD6C4();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_261CFCF04();
  v13 = sub_261CFCEE4();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

void *sub_261B4C764(uint64_t a1, _OWORD *a2)
{
  v4 = type metadata accessor for ReminderEntity(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  sub_261B4C910(a1, v18 - v8);
  v10 = a2[11];
  v19[10] = a2[10];
  v19[11] = v10;
  v11 = a2[13];
  v19[12] = a2[12];
  v19[13] = v11;
  v12 = a2[7];
  v19[6] = a2[6];
  v19[7] = v12;
  v13 = a2[9];
  v19[8] = a2[8];
  v19[9] = v13;
  v14 = a2[3];
  v19[2] = a2[2];
  v19[3] = v14;
  v15 = a2[5];
  v19[4] = a2[4];
  v19[5] = v15;
  v16 = a2[1];
  v19[0] = *a2;
  v19[1] = v16;
  sub_261B4C910(v9, v7);
  sub_261B4E63C(v19, v18);
  sub_261CFCBC4();
  sub_261B4C974(v9);
  return sub_261B4E674(v19);
}

uint64_t UpdateReminderAppIntent.target.setter(uint64_t a1)
{
  v2 = type metadata accessor for ReminderEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B4C910(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B4C974(a1);
}

uint64_t sub_261B4C910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261B4C974(uint64_t a1)
{
  v2 = type metadata accessor for ReminderEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*UpdateReminderAppIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

void *sub_261B4CA9C(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[11];
  v13[10] = a2[10];
  v13[11] = v4;
  v5 = a2[13];
  v13[12] = a2[12];
  v13[13] = v5;
  v6 = a2[7];
  v13[6] = a2[6];
  v13[7] = v6;
  v7 = a2[9];
  v13[8] = a2[8];
  v13[9] = v7;
  v8 = a2[3];
  v13[2] = a2[2];
  v13[3] = v8;
  v9 = a2[5];
  v13[4] = a2[4];
  v13[5] = v9;
  v10 = a2[1];
  v13[0] = *a2;
  v13[1] = v10;
  v12[28] = v3;
  v12[29] = v2;
  sub_261CFD104();
  sub_261B4E63C(v13, v12);
  sub_261CFCBC4();
  return sub_261B4E674(v13);
}

uint64_t (*UpdateReminderAppIntent.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

void *sub_261B4CC14(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  sub_261AFB668(a1, v18 - v8, &unk_27FEDE0C0, &unk_261D02500);
  v10 = a2[11];
  v19[10] = a2[10];
  v19[11] = v10;
  v11 = a2[13];
  v19[12] = a2[12];
  v19[13] = v11;
  v12 = a2[7];
  v19[6] = a2[6];
  v19[7] = v12;
  v13 = a2[9];
  v19[8] = a2[8];
  v19[9] = v13;
  v14 = a2[3];
  v19[2] = a2[2];
  v19[3] = v14;
  v15 = a2[5];
  v19[4] = a2[4];
  v19[5] = v15;
  v16 = a2[1];
  v19[0] = *a2;
  v19[1] = v16;
  sub_261AFB668(v9, v7, &unk_27FEDE0C0, &unk_261D02500);
  sub_261B4E63C(v19, v18);
  sub_261CFCBC4();
  sub_261AE6A40(v9, &unk_27FEDE0C0, &unk_261D02500);
  return sub_261B4E674(v19);
}

uint64_t UpdateReminderAppIntent.list.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &unk_27FEDE0C0, &unk_261D02500);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &unk_27FEDE0C0, &unk_261D02500);
}

uint64_t (*UpdateReminderAppIntent.list.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

void *sub_261B4CED8(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  sub_261AFB668(a1, v18 - v8, &qword_27FEDA160, &qword_261D02220);
  v10 = a2[11];
  v19[10] = a2[10];
  v19[11] = v10;
  v11 = a2[13];
  v19[12] = a2[12];
  v19[13] = v11;
  v12 = a2[7];
  v19[6] = a2[6];
  v19[7] = v12;
  v13 = a2[9];
  v19[8] = a2[8];
  v19[9] = v13;
  v14 = a2[3];
  v19[2] = a2[2];
  v19[3] = v14;
  v15 = a2[5];
  v19[4] = a2[4];
  v19[5] = v15;
  v16 = a2[1];
  v19[0] = *a2;
  v19[1] = v16;
  sub_261AFB668(v9, v7, &qword_27FEDA160, &qword_261D02220);
  sub_261B4E63C(v19, v18);
  sub_261CFCBC4();
  sub_261AE6A40(v9, &qword_27FEDA160, &qword_261D02220);
  return sub_261B4E674(v19);
}

uint64_t UpdateReminderAppIntent.dueDateComponents.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA160, &qword_261D02220);
}

uint64_t (*UpdateReminderAppIntent.dueDateComponents.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

void *sub_261B4D19C(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[11];
  v15[10] = a2[10];
  v15[11] = v6;
  v7 = a2[13];
  v15[12] = a2[12];
  v15[13] = v7;
  v8 = a2[7];
  v15[6] = a2[6];
  v15[7] = v8;
  v9 = a2[9];
  v15[8] = a2[8];
  v15[9] = v9;
  v10 = a2[3];
  v15[2] = a2[2];
  v15[3] = v10;
  v11 = a2[5];
  v15[4] = a2[4];
  v15[5] = v11;
  v12 = a2[1];
  v15[0] = *a2;
  v15[1] = v12;
  v14[28] = v2;
  v14[29] = v3;
  v14[30] = v4;
  v14[31] = v5;
  sub_261B530B8(v2, v3, v4, v5);
  sub_261B4E63C(v15, v14);
  sub_261CFCBC4();
  return sub_261B4E674(v15);
}

uint64_t (*UpdateReminderAppIntent.earlyAlert.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

void *sub_261B4D328(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  sub_261AFB668(a1, v18 - v8, &qword_27FEDA9A0, &unk_261D034A0);
  v10 = a2[11];
  v19[10] = a2[10];
  v19[11] = v10;
  v11 = a2[13];
  v19[12] = a2[12];
  v19[13] = v11;
  v12 = a2[7];
  v19[6] = a2[6];
  v19[7] = v12;
  v13 = a2[9];
  v19[8] = a2[8];
  v19[9] = v13;
  v14 = a2[3];
  v19[2] = a2[2];
  v19[3] = v14;
  v15 = a2[5];
  v19[4] = a2[4];
  v19[5] = v15;
  v16 = a2[1];
  v19[0] = *a2;
  v19[1] = v16;
  sub_261AFB668(v9, v7, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261B4E63C(v19, v18);
  sub_261CFCBC4();
  sub_261AE6A40(v9, &qword_27FEDA9A0, &unk_261D034A0);
  return sub_261B4E674(v19);
}

uint64_t UpdateReminderAppIntent.recurrenceRule.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA9A0, &unk_261D034A0);
}

uint64_t (*UpdateReminderAppIntent.recurrenceRule.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

void *sub_261B4D5EC(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[11];
  v14[10] = a2[10];
  v14[11] = v5;
  v6 = a2[13];
  v14[12] = a2[12];
  v14[13] = v6;
  v7 = a2[7];
  v14[6] = a2[6];
  v14[7] = v7;
  v8 = a2[9];
  v14[8] = a2[8];
  v14[9] = v8;
  v9 = a2[3];
  v14[2] = a2[2];
  v14[3] = v9;
  v10 = a2[5];
  v14[4] = a2[4];
  v14[5] = v10;
  v11 = a2[1];
  v14[0] = *a2;
  v14[1] = v11;
  v13[28] = v2;
  v13[29] = v3;
  v13[30] = v4;
  sub_261B5306C(v2, v3, v4);
  sub_261B4E63C(v14, v13);
  sub_261CFCBC4();
  return sub_261B4E674(v14);
}

uint64_t (*UpdateReminderAppIntent.spatialEventTrigger.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

void *sub_261B4D784(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  sub_261AFB668(a1, v18 - v8, &unk_27FEDB0B0, &unk_261D035D0);
  v10 = a2[11];
  v19[10] = a2[10];
  v19[11] = v10;
  v11 = a2[13];
  v19[12] = a2[12];
  v19[13] = v11;
  v12 = a2[7];
  v19[6] = a2[6];
  v19[7] = v12;
  v13 = a2[9];
  v19[8] = a2[8];
  v19[9] = v13;
  v14 = a2[3];
  v19[2] = a2[2];
  v19[3] = v14;
  v15 = a2[5];
  v19[4] = a2[4];
  v19[5] = v15;
  v16 = a2[1];
  v19[0] = *a2;
  v19[1] = v16;
  sub_261AFB668(v9, v7, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261B4E63C(v19, v18);
  sub_261CFCBC4();
  sub_261AE6A40(v9, &unk_27FEDB0B0, &unk_261D035D0);
  return sub_261B4E674(v19);
}

uint64_t UpdateReminderAppIntent.contactPerson.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &unk_27FEDB0B0, &unk_261D035D0);
}

uint64_t (*UpdateReminderAppIntent.contactPerson.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

void *sub_261B4DA48(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  sub_261AFB668(a1, v18 - v8, &unk_27FEDB0B0, &unk_261D035D0);
  v10 = a2[11];
  v19[10] = a2[10];
  v19[11] = v10;
  v11 = a2[13];
  v19[12] = a2[12];
  v19[13] = v11;
  v12 = a2[7];
  v19[6] = a2[6];
  v19[7] = v12;
  v13 = a2[9];
  v19[8] = a2[8];
  v19[9] = v13;
  v14 = a2[3];
  v19[2] = a2[2];
  v19[3] = v14;
  v15 = a2[5];
  v19[4] = a2[4];
  v19[5] = v15;
  v16 = a2[1];
  v19[0] = *a2;
  v19[1] = v16;
  sub_261AFB668(v9, v7, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261B4E63C(v19, v18);
  sub_261CFCBC4();
  sub_261AE6A40(v9, &unk_27FEDB0B0, &unk_261D035D0);
  return sub_261B4E674(v19);
}

uint64_t UpdateReminderAppIntent.assignedPerson.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &unk_27FEDB0B0, &unk_261D035D0);
}

uint64_t (*UpdateReminderAppIntent.assignedPerson.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

void *sub_261B4DD1C(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[11];
  v13[10] = a2[10];
  v13[11] = v4;
  v5 = a2[13];
  v13[12] = a2[12];
  v13[13] = v5;
  v6 = a2[7];
  v13[6] = a2[6];
  v13[7] = v6;
  v7 = a2[9];
  v13[8] = a2[8];
  v13[9] = v7;
  v8 = a2[3];
  v13[2] = a2[2];
  v13[3] = v8;
  v9 = a2[5];
  v13[4] = a2[4];
  v13[5] = v9;
  v10 = a2[1];
  v13[0] = *a2;
  v13[1] = v10;
  v12[28] = v3;
  v12[29] = v2;
  sub_261CFD104();
  sub_261B4E63C(v13, v12);
  sub_261CFCBC4();
  return sub_261B4E674(v13);
}

uint64_t (*UpdateReminderAppIntent.notes.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

void *sub_261B4DE94(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[11];
  v13[10] = a2[10];
  v13[11] = v3;
  v4 = a2[13];
  v13[12] = a2[12];
  v13[13] = v4;
  v5 = a2[7];
  v13[6] = a2[6];
  v13[7] = v5;
  v6 = a2[9];
  v13[8] = a2[8];
  v13[9] = v6;
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v8 = a2[5];
  v13[4] = a2[4];
  v13[5] = v8;
  v9 = a2[1];
  v13[0] = *a2;
  v13[1] = v9;
  v12 = v2;
  sub_261B4E63C(v13, v11);
  sub_261CFCBC4();
  return sub_261B4E674(v13);
}

uint64_t (*UpdateReminderAppIntent.flags.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

void *sub_261B4E010(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[11];
  v13[10] = a2[10];
  v13[11] = v3;
  v4 = a2[13];
  v13[12] = a2[12];
  v13[13] = v4;
  v5 = a2[7];
  v13[6] = a2[6];
  v13[7] = v5;
  v6 = a2[9];
  v13[8] = a2[8];
  v13[9] = v6;
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v8 = a2[5];
  v13[4] = a2[4];
  v13[5] = v8;
  v9 = a2[1];
  v13[0] = *a2;
  v13[1] = v9;
  v12 = v2;
  sub_261B4E63C(v13, v11);
  sub_261CFCBC4();
  return sub_261B4E674(v13);
}

uint64_t (*UpdateReminderAppIntent.priorityLevel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

void *sub_261B4E18C(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  sub_261AFB668(a1, v18 - v8, &unk_27FEDE110, &unk_261D035B0);
  v10 = a2[11];
  v19[10] = a2[10];
  v19[11] = v10;
  v11 = a2[13];
  v19[12] = a2[12];
  v19[13] = v11;
  v12 = a2[7];
  v19[6] = a2[6];
  v19[7] = v12;
  v13 = a2[9];
  v19[8] = a2[8];
  v19[9] = v13;
  v14 = a2[3];
  v19[2] = a2[2];
  v19[3] = v14;
  v15 = a2[5];
  v19[4] = a2[4];
  v19[5] = v15;
  v16 = a2[1];
  v19[0] = *a2;
  v19[1] = v16;
  sub_261AFB668(v9, v7, &unk_27FEDE110, &unk_261D035B0);
  sub_261B4E63C(v19, v18);
  sub_261CFCBC4();
  sub_261AE6A40(v9, &unk_27FEDE110, &unk_261D035B0);
  return sub_261B4E674(v19);
}

uint64_t UpdateReminderAppIntent.parent.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &unk_27FEDE110, &unk_261D035B0);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &unk_27FEDE110, &unk_261D035B0);
}

uint64_t (*UpdateReminderAppIntent.parent.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

void *sub_261B4E42C(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[11];
  v12[10] = a2[10];
  v12[11] = v3;
  v4 = a2[13];
  v12[12] = a2[12];
  v12[13] = v4;
  v5 = a2[7];
  v12[6] = a2[6];
  v12[7] = v5;
  v6 = a2[9];
  v12[8] = a2[8];
  v12[9] = v6;
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  v11[28] = v2;
  sub_261CFD104();
  sub_261B4E63C(v12, v11);
  sub_261CFCBC4();
  return sub_261B4E674(v12);
}

uint64_t (*UpdateReminderAppIntent.reminders.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

void *UpdateReminderAppIntent.reminderSubtasks.setter(uint64_t a1)
{
  v2 = v1[11];
  v11[10] = v1[10];
  v11[11] = v2;
  v3 = v1[13];
  v11[12] = v1[12];
  v11[13] = v3;
  v4 = v1[7];
  v11[6] = v1[6];
  v11[7] = v4;
  v5 = v1[9];
  v11[8] = v1[8];
  v11[9] = v5;
  v6 = v1[3];
  v11[2] = v1[2];
  v11[3] = v6;
  v7 = v1[5];
  v11[4] = v1[4];
  v11[5] = v7;
  v8 = v1[1];
  v11[0] = *v1;
  v11[1] = v8;
  v10[28] = a1;
  sub_261B4E63C(v11, v10);
  sub_261CFCBC4();
  return sub_261B4E674(v11);
}

void (*UpdateReminderAppIntent.reminderSubtasks.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1D8uLL);
  }

  *a1 = v3;
  *(v3 + 464) = v1;
  sub_261CFCBB4();
  return sub_261B4E720;
}

void sub_261B4E720(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 464);
  v4 = *(*a1 + 448);
  v5 = v3[1];
  *v2 = *v3;
  *(v2 + 16) = v5;
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[5];
  *(v2 + 64) = v3[4];
  *(v2 + 80) = v8;
  *(v2 + 32) = v6;
  *(v2 + 48) = v7;
  v9 = v3[6];
  v10 = v3[7];
  v11 = v3[9];
  *(v2 + 128) = v3[8];
  *(v2 + 144) = v11;
  *(v2 + 96) = v9;
  *(v2 + 112) = v10;
  v12 = v3[10];
  v13 = v3[11];
  v14 = v3[13];
  *(v2 + 192) = v3[12];
  *(v2 + 208) = v14;
  *(v2 + 160) = v12;
  *(v2 + 176) = v13;
  *(v2 + 456) = v4;
  if (a2)
  {
    sub_261CFD104();
    sub_261B4E63C(v2, (v2 + 224));
    sub_261CFCBC4();
    sub_261B4E674(v2);
  }

  else
  {
    sub_261B4E63C(v2, (v2 + 224));
    sub_261CFCBC4();
    sub_261B4E674(v2);
  }

  free(v2);
}

void *sub_261B4E81C(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[11];
  v12[10] = a2[10];
  v12[11] = v3;
  v4 = a2[13];
  v12[12] = a2[12];
  v12[13] = v4;
  v5 = a2[7];
  v12[6] = a2[6];
  v12[7] = v5;
  v6 = a2[9];
  v12[8] = a2[8];
  v12[9] = v6;
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  v11[28] = v2;
  sub_261CFD104();
  sub_261B4E63C(v12, v11);
  sub_261CFCBC4();
  return sub_261B4E674(v12);
}

uint64_t (*UpdateReminderAppIntent.hashtags.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

void *sub_261B4E9A8(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[11];
  v12[10] = a2[10];
  v12[11] = v3;
  v4 = a2[13];
  v12[12] = a2[12];
  v12[13] = v4;
  v5 = a2[7];
  v12[6] = a2[6];
  v12[7] = v5;
  v6 = a2[9];
  v12[8] = a2[8];
  v12[9] = v6;
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  v11[28] = v2;
  sub_261CFD104();
  sub_261B4E63C(v12, v11);
  sub_261CFCBC4();
  return sub_261B4E674(v12);
}

uint64_t (*UpdateReminderAppIntent.urls.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

void *sub_261B4EB34(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[11];
  v12[10] = a2[10];
  v12[11] = v3;
  v4 = a2[13];
  v12[12] = a2[12];
  v12[13] = v4;
  v5 = a2[7];
  v12[6] = a2[6];
  v12[7] = v5;
  v6 = a2[9];
  v12[8] = a2[8];
  v12[9] = v6;
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  v11[28] = v2;
  sub_261CFD104();
  sub_261B4E63C(v12, v11);
  sub_261CFCBC4();
  return sub_261B4E674(v12);
}

uint64_t (*UpdateReminderAppIntent.images.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateReminderAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v218 = a1;
  v193 = sub_261CFC894();
  v196 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v192 = v174 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  MEMORY[0x28223BE20](v2 - 8);
  v189 = v174 - v3;
  v205 = sub_261CFD674();
  v211 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v210 = v174 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  MEMORY[0x28223BE20](v5 - 8);
  v209 = v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFFA44();
  MEMORY[0x28223BE20](v7 - 8);
  v214 = v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFD6A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v201 = v174 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  MEMORY[0x28223BE20](v12 - 8);
  v208 = v174 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v14 - 8);
  v185 = v174 - v15;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA28, &unk_261D035E0);
  v194 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v186 = v174 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  MEMORY[0x28223BE20](v17 - 8);
  v207 = v174 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  MEMORY[0x28223BE20](v19 - 8);
  v200 = v174 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  MEMORY[0x28223BE20](v21 - 8);
  v199 = v174 - v22;
  v212 = sub_261CFD184();
  v23 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v25 = v174 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v203 = v174 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = v174 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = v174 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = v174 - v35;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA30, &unk_261D035F0);
  v217 = *(v10 + 56);
  v219 = v10 + 56;
  v217(v36, 1, 1, v9);
  LOBYTE(v225) = 2;
  v37 = sub_261CFFCE4();
  (*(*(v37 - 8) + 56))(v33, 1, 1, v37);
  v38 = sub_261CFC834();
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v220 = v39 + 56;
  v223 = v38;
  v40(v30, 1, 1, v38);
  v221 = v40;
  v222 = *MEMORY[0x277CBA308];
  v213 = *(v23 + 104);
  v216 = v23 + 104;
  v41 = v212;
  v213(v25);
  v204 = v36;
  v42 = v25;
  v43 = sub_261CFCD34();
  v44 = v218;
  *v218 = v43;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA38, &qword_261D10210);
  v45 = v217;
  v217(v36, 1, 1, v9);
  v46 = sub_261CFD524();
  (*(*(v46 - 8) + 56))(v199, 1, 1, v46);
  v40(v30, 1, 1, v38);
  v215 = v42;
  v47 = v42;
  v48 = v213;
  (v213)(v47, v222, v41);
  v49 = v204;
  v44[1] = sub_261CFCCB4();
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA40, &unk_261D03600);
  v206 = v9;
  v45(v49, 1, 1, v9);
  *&v225 = 0;
  v198 = sub_261CFF994();
  v50 = *(v198 - 8);
  v197 = *(v50 + 56);
  v199 = (v50 + 56);
  v197(v200, 1, 1, v198);
  v51 = v223;
  v221(v30, 1, 1, v223);
  v52 = v215;
  (v48)(v215, v222, v212);
  v53 = v52;
  v218[2] = sub_261CFCD04();
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA48, &unk_261D10230);
  v217(v49, 1, 1, v9);
  v54 = sub_261CFD4E4();
  (*(*(v54 - 8) + 56))(v207, 1, 1, v54);
  v55 = v221;
  v221(v30, 1, 1, v51);
  v178 = *MEMORY[0x277CB9EF0];
  v56 = *(v194 + 104);
  v194 += 104;
  v179 = v56;
  v56(v186);
  v57 = v53;
  v58 = v53;
  v59 = v212;
  v60 = v213;
  (v213)(v58, v222, v212);
  v61 = v204;
  v218[3] = sub_261CFCC94();
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA50, &qword_261D03610);
  v62 = v61;
  v63 = v206;
  v64 = v217;
  v217(v62, 1, 1, v206);
  v55(v30, 1, 1, v223);
  (v60)(v57, v222, v59);
  v65 = v204;
  v66 = sub_261CFCCD4();
  v67 = v218;
  v218[4] = v66;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA58, &qword_261D03618);
  v68 = v65;
  v69 = v64;
  v64(v68, 1, 1, v63);
  *&v225 = 0;
  v70 = v223;
  v55(v30, 1, 1, v223);
  v55(v203, 1, 1, v70);
  v71 = v222;
  (v213)(v215, v222, v212);
  v195 = sub_261B517D0(&qword_280D22358, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
  v72 = v204;
  v67[5] = sub_261CFCC14();
  v174[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA60, &unk_261D03620);
  v73 = v206;
  v69(v72, 1, 1, v206);
  v176 = type metadata accessor for ListEntity(0);
  v74 = *(v176 - 8);
  v175 = *(v74 + 56);
  v177 = v74 + 56;
  v175(v185, 1, 1, v176);
  v75 = v223;
  v76 = v221;
  v221(v30, 1, 1, v223);
  v76(v203, 1, 1, v75);
  v77 = v212;
  v78 = v213;
  (v213)(v215, v71, v212);
  v174[0] = sub_261B517D0(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  v79 = sub_261CFCC14();
  v80 = v218;
  v218[6] = v79;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA208, &qword_261D02328);
  v217(v72, 1, 1, v73);
  v81 = type metadata accessor for SectionEntity(0);
  (*(*(v81 - 8) + 56))(v208, 1, 1, v81);
  v82 = v223;
  v83 = v221;
  v221(v30, 1, 1, v223);
  v83(v203, 1, 1, v82);
  (v78)(v215, v222, v77);
  sub_261B517D0(&qword_280D224E0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
  v84 = v204;
  v80[7] = sub_261CFCC14();
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA68, &unk_261D03630);
  sub_261CFF9B4();
  sub_261CFD874();
  LODWORD(v208) = *MEMORY[0x277CC9110];
  v85 = *(v211 + 104);
  v211 += 104;
  v207 = v85;
  v86 = v205;
  (v85)(v210);
  sub_261CFD6B4();
  v217(v84, 1, 1, v206);
  v182 = type metadata accessor for ReminderEntity(0);
  v87 = *(v182 - 8);
  v181 = *(v87 + 56);
  v183 = v87 + 56;
  v181(v189, 1, 1, v182);
  v88 = v223;
  v89 = v221;
  v221(v30, 1, 1, v223);
  v89(v203, 1, 1, v88);
  v90 = v215;
  (v213)(v215, v222, v212);
  v91 = v90;
  v218[8] = sub_261CFCC34();
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA290, qword_261D0F1D0);
  sub_261CFF9B4();
  sub_261CFD874();
  (v207)(v210, v208, v86);
  sub_261CFD6B4();
  v92 = v84;
  v93 = v206;
  v94 = v217;
  v217(v92, 1, 1, v206);
  v225 = 0uLL;
  v197(v200, 1, 1, v198);
  v221(v30, 1, 1, v223);
  v95 = v212;
  (v213)(v91, v222, v212);
  v96 = sub_261CFCD24();
  v97 = v218;
  v218[9] = v96;
  v190 = 0xD000000000000025;
  sub_261CFF9B4();
  sub_261CFD874();
  (v207)(v210, v208, v205);
  sub_261CFD6C4();
  v98 = v204;
  v94(v204, 1, 1, v93);
  v175(v185, 1, 1, v176);
  v99 = v30;
  v100 = v30;
  v101 = v223;
  v102 = v221;
  v221(v100, 1, 1, v223);
  v102(v203, 1, 1, v101);
  v103 = v222;
  v104 = v95;
  v105 = v213;
  (v213)(v215, v222, v104);
  v106 = v98;
  v107 = v99;
  v97[10] = sub_261CFCC34();
  sub_261CFF9B4();
  sub_261CFD874();
  v108 = v210;
  (v207)(v210, v208, v205);
  sub_261CFD6C4();
  v109 = v217;
  v217(v106, 1, 1, v206);
  v221(v107, 1, 1, v223);
  v179(v186, v178, v191);
  v105(v215, v103, v212);
  v218[11] = sub_261CFCCA4();
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA70, &qword_261D03640);
  sub_261CFF9B4();
  sub_261CFD874();
  (v207)(v108, v208, v205);
  sub_261CFD6C4();
  v110 = v206;
  v109(v106, 1, 1, v206);
  v225 = 0u;
  v226 = 0u;
  v202 = v107;
  v111 = v107;
  v112 = v223;
  v113 = v221;
  v221(v111, 1, 1, v223);
  v113(v203, 1, 1, v112);
  v114 = v212;
  (v213)(v215, v222, v212);
  sub_261B51818();
  v218[12] = sub_261CFCC34();
  sub_261CFF9B4();
  sub_261CFD874();
  v115 = v205;
  (v207)(v108, v208, v205);
  sub_261CFD6C4();
  v116 = v110;
  v117 = v110;
  v118 = v217;
  v217(v204, 1, 1, v116);
  v221(v202, 1, 1, v223);
  (v213)(v215, v222, v114);
  v218[13] = sub_261CFCCF4();
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA80, &qword_261D03648);
  sub_261CFF9B4();
  sub_261CFD874();
  v119 = v208;
  v120 = v115;
  v121 = v207;
  (v207)(v210, v208, v120);
  sub_261CFD6C4();
  v118(v204, 1, 1, v117);
  *&v226 = 0;
  v225 = 0uLL;
  v122 = v223;
  v123 = v221;
  v221(v202, 1, 1, v223);
  v123(v203, 1, 1, v122);
  (v213)(v215, v222, v212);
  sub_261B5186C();
  v218[14] = sub_261CFCC34();
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA88, &unk_261D03650);
  sub_261CFF9B4();
  sub_261CFD874();
  (v121)(v210, v119, v205);
  sub_261CFD6C4();
  v124 = v204;
  v217(v204, 1, 1, v206);
  v123(v202, 1, 1, v223);
  LODWORD(v191) = *MEMORY[0x277CB9CE0];
  v125 = *(v196 + 104);
  v196 += 104;
  v187 = v125;
  v125(v192);
  v126 = v222;
  v127 = v212;
  v128 = v213;
  (v213)(v215, v222, v212);
  v129 = sub_261CFCC84();
  v130 = v218;
  v218[15] = v129;
  sub_261CFF9B4();
  sub_261CFD874();
  v131 = v207;
  (v207)(v210, v208, v205);
  sub_261CFD6C4();
  v217(v124, 1, 1, v206);
  v132 = v202;
  v221(v202, 1, 1, v223);
  v187(v192, v191, v193);
  v133 = v215;
  v128(v215, v126, v127);
  v130[16] = sub_261CFCC84();
  v196 = 0xD000000000000026;
  sub_261CFF9B4();
  sub_261CFD874();
  v134 = v205;
  (v131)(v210, v208, v205);
  sub_261CFD6C4();
  v135 = v206;
  v217(v124, 1, 1, v206);
  v225 = 0uLL;
  v197(v200, 1, 1, v198);
  v221(v132, 1, 1, v223);
  (v213)(v133, v222, v212);
  v218[17] = sub_261CFCD24();
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA90, &qword_261D10240);
  sub_261CFF9B4();
  sub_261CFD874();
  (v207)(v210, v208, v134);
  sub_261CFD6C4();
  v136 = v204;
  v217(v204, 1, 1, v135);
  LOBYTE(v225) = 3;
  v137 = v223;
  v138 = v221;
  v221(v132, 1, 1, v223);
  v139 = v203;
  v138(v203, 1, 1, v137);
  v140 = v222;
  v141 = v213;
  (v213)(v215, v222, v212);
  sub_261B52470();
  v218[18] = sub_261CFCC04();
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAA0, &unk_261D03660);
  sub_261CFF9B4();
  sub_261CFD874();
  v142 = v208;
  (v207)(v210, v208, v205);
  sub_261CFD6C4();
  v143 = v136;
  v144 = v217;
  v217(v136, 1, 1, v206);
  LOBYTE(v225) = 4;
  v145 = v223;
  v146 = v221;
  v221(v202, 1, 1, v223);
  v146(v139, 1, 1, v145);
  v141(v215, v140, v212);
  sub_261B524C4();
  v218[19] = sub_261CFCC04();
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAB0, &qword_261D07BA0);
  sub_261CFF9B4();
  sub_261CFD874();
  v147 = v205;
  (v207)(v210, v142, v205);
  sub_261CFD6C4();
  v148 = v206;
  v144(v143, 1, 1, v206);
  v181(v189, 1, 1, v182);
  v149 = v223;
  v150 = v221;
  v221(v202, 1, 1, v223);
  v150(v203, 1, 1, v149);
  v151 = v213;
  (v213)(v215, v222, v212);
  v152 = v204;
  v153 = sub_261CFCC34();
  v154 = v218;
  v218[20] = v153;
  sub_261CFF9B4();
  sub_261CFD874();
  (v207)(v210, v208, v147);
  sub_261CFD6C4();
  v155 = v152;
  v217(v152, 1, 1, v148);
  *&v225 = 0;
  v156 = v202;
  v157 = v223;
  v158 = v221;
  v221(v202, 1, 1, v223);
  v158(v203, 1, 1, v157);
  v159 = v215;
  v160 = v212;
  (v151)(v215, v222, v212);
  v161 = v155;
  v162 = v156;
  v163 = v159;
  v154[21] = sub_261CFCC34();
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAB8, &qword_261D03670);
  sub_261CFF9B4();
  sub_261CFD874();
  v164 = v210;
  (v207)(v210, v208, v205);
  sub_261CFD6C4();
  v217(v161, 1, 1, v206);
  *&v225 = 0;
  v197(v200, 1, 1, v198);
  v221(v162, 1, 1, v223);
  v165 = v160;
  v166 = v160;
  v167 = v213;
  (v213)(v163, v222, v165);
  v168 = sub_261CFCD24();
  v169 = v218;
  v218[22] = v168;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAC0, &qword_261D03678);
  sub_261CFF9B4();
  sub_261CFD874();
  (v207)(v164, v208, v205);
  sub_261CFD6C4();
  v170 = v204;
  v217(v204, 1, 1, v206);
  *&v225 = 0;
  v171 = v202;
  v221(v202, 1, 1, v223);
  v172 = v215;
  (v167)(v215, v222, v166);
  v169[23] = sub_261CFCCC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAC8, &unk_261D03680);
  sub_261CFF9B4();
  sub_261CFD874();
  (v207)(v210, v208, v205);
  sub_261CFD6C4();
  v217(v170, 1, 1, v206);
  *&v225 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAD0, &qword_261D10220);
  sub_261CFF6A4();
  *(swift_allocObject() + 16) = xmmword_261D03450;
  sub_261CFF684();
  v221(v171, 1, 1, v223);
  (v213)(v172, v222, v166);
  v169[24] = sub_261CFCC64();
  v169[25] = 0;
  v169[26] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAD8, &qword_261D03690);
  v224 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v169[27] = result;
  return result;
}

uint64_t sub_261B517D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_261B51818()
{
  result = qword_27FEDAA78;
  if (!qword_27FEDAA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAA78);
  }

  return result;
}

unint64_t sub_261B5186C()
{
  result = qword_280D22110;
  if (!qword_280D22110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22110);
  }

  return result;
}

uint64_t UpdateReminderAppIntent.perform()(uint64_t a1)
{
  *(v2 + 464) = a1;
  v3 = v1[11];
  *(v2 + 176) = v1[10];
  *(v2 + 192) = v3;
  v4 = v1[13];
  *(v2 + 208) = v1[12];
  *(v2 + 224) = v4;
  v5 = v1[7];
  *(v2 + 112) = v1[6];
  *(v2 + 128) = v5;
  v6 = v1[9];
  *(v2 + 144) = v1[8];
  *(v2 + 160) = v6;
  v7 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v7;
  v8 = v1[5];
  *(v2 + 80) = v1[4];
  *(v2 + 96) = v8;
  v9 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v9;
  sub_261CFFD24();
  *(v2 + 472) = sub_261CFFD14();
  v11 = sub_261CFFCF4();
  *(v2 + 480) = v11;
  *(v2 + 488) = v10;

  return MEMORY[0x2822009F8](sub_261B51990, v11, v10);
}

uint64_t sub_261B51990()
{
  sub_261B4E63C(v0 + 2, v0 + 30);
  v1 = swift_task_alloc();
  v0[62] = v1;
  *v1 = v0;
  v1[1] = sub_261B51A58;
  v2 = v0[58];

  return sub_261C55268(v2, "UpdateReminderAppIntent", 23, 2, (v0 + 2));
}

uint64_t sub_261B51A58()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  v3 = *(v2 + 488);
  v4 = *(v2 + 480);
  if (v0)
  {
    v5 = sub_261B53108;
  }

  else
  {
    v5 = sub_261B5310C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261B51B94(uint64_t a1, uint64_t a2)
{
  v2[35] = a1;
  v2[36] = a2;
  sub_261CFFD24();
  v2[37] = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  v2[38] = v4;
  v2[39] = v3;

  return MEMORY[0x2822009F8](sub_261B51C2C, v4, v3);
}

uint64_t sub_261B51C2C()
{
  v1 = *(v0 + 288);
  sub_261B11B20(1);
  sub_261CFC664();
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  __swift_project_boxed_opaque_existential_1((v0 + 240), v2);
  v4 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v4;
  v5 = v1[5];
  v7 = v1[2];
  v6 = v1[3];
  *(v0 + 80) = v1[4];
  *(v0 + 96) = v5;
  *(v0 + 48) = v7;
  *(v0 + 64) = v6;
  v8 = v1[9];
  v10 = v1[6];
  v9 = v1[7];
  *(v0 + 144) = v1[8];
  *(v0 + 160) = v8;
  *(v0 + 112) = v10;
  *(v0 + 128) = v9;
  v11 = v1[13];
  v13 = v1[10];
  v12 = v1[11];
  *(v0 + 208) = v1[12];
  *(v0 + 224) = v11;
  *(v0 + 176) = v13;
  *(v0 + 192) = v12;
  v17 = (*(v3 + 8) + **(v3 + 8));
  v14 = swift_task_alloc();
  *(v0 + 320) = v14;
  *v14 = v0;
  v14[1] = sub_261B51DB8;
  v15 = *(v0 + 280);

  return v17(v15, v0 + 16, v2, v3);
}

uint64_t sub_261B51DB8()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 304);
  v4 = *(v2 + 312);
  if (v0)
  {
    v5 = sub_261B51F38;
  }

  else
  {
    v5 = sub_261B51ECC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_261B51ECC()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 240));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261B51F38()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 240));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261B51FA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9878 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAA10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B52094(uint64_t a1)
{
  *(v2 + 464) = a1;
  v3 = v1[11];
  *(v2 + 176) = v1[10];
  *(v2 + 192) = v3;
  v4 = v1[13];
  *(v2 + 208) = v1[12];
  *(v2 + 224) = v4;
  v5 = v1[7];
  *(v2 + 112) = v1[6];
  *(v2 + 128) = v5;
  v6 = v1[9];
  *(v2 + 144) = v1[8];
  *(v2 + 160) = v6;
  v7 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v7;
  v8 = v1[5];
  *(v2 + 80) = v1[4];
  *(v2 + 96) = v8;
  v9 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v9;
  sub_261CFFD24();
  *(v2 + 472) = sub_261CFFD14();
  v11 = sub_261CFFCF4();
  *(v2 + 480) = v11;
  *(v2 + 488) = v10;

  return MEMORY[0x2822009F8](sub_261B52164, v11, v10);
}

uint64_t sub_261B52164()
{
  sub_261B4E63C(v0 + 2, v0 + 30);
  v1 = swift_task_alloc();
  v0[62] = v1;
  *v1 = v0;
  v1[1] = sub_261B5222C;
  v2 = v0[58];

  return sub_261C55268(v2, "UpdateReminderAppIntent", 23, 2, (v0 + 2));
}

uint64_t sub_261B5222C()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  v3 = *(v2 + 488);
  v4 = *(v2 + 480);
  if (v0)
  {
    v5 = sub_261B523CC;
  }

  else
  {
    v5 = sub_261B52368;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261B52368()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261B523CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261B52434(uint64_t a1)
{
  v2 = sub_261B31CE4();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_261B52470()
{
  result = qword_27FEDAA98;
  if (!qword_27FEDAA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAA98);
  }

  return result;
}

unint64_t sub_261B524C4()
{
  result = qword_27FEDAAA8;
  if (!qword_27FEDAAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAAA8);
  }

  return result;
}

unint64_t sub_261B5251C()
{
  result = qword_27FEDAAE0;
  if (!qword_27FEDAAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAAE0);
  }

  return result;
}

unint64_t sub_261B52574()
{
  result = qword_27FEDAAE8;
  if (!qword_27FEDAAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAAE8);
  }

  return result;
}

void *keypath_get_53Tm@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t destroy for UpdateReminderAppIntent(void *a1)
{
}

uint64_t *initializeWithCopy for UpdateReminderAppIntent(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  v7 = a2[9];
  a1[8] = a2[8];
  a1[9] = v7;
  v11 = a2[11];
  a1[10] = a2[10];
  a1[11] = v11;
  v12 = a2[13];
  a1[12] = a2[12];
  a1[13] = v12;
  v13 = a2[15];
  a1[14] = a2[14];
  a1[15] = v13;
  v14 = a2[17];
  a1[16] = a2[16];
  a1[17] = v14;
  v15 = a2[19];
  a1[18] = a2[18];
  a1[19] = v15;
  v16 = a2[21];
  a1[20] = a2[20];
  a1[21] = v16;
  v8 = a2[23];
  a1[22] = a2[22];
  a1[23] = v8;
  v9 = a2[25];
  a1[24] = a2[24];
  a1[25] = v9;
  v17 = a2[27];
  a1[26] = a2[26];
  a1[27] = v17;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for UpdateReminderAppIntent(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_261CFCDA4();

  a1[1] = a2[1];
  sub_261CFCDA4();

  a1[2] = a2[2];
  sub_261CFCDA4();

  a1[3] = a2[3];
  sub_261CFCDA4();

  a1[4] = a2[4];
  sub_261CFCDA4();

  a1[5] = a2[5];
  sub_261CFCDA4();

  a1[6] = a2[6];
  sub_261CFCDA4();

  a1[7] = a2[7];
  sub_261CFCDA4();

  a1[8] = a2[8];
  sub_261CFCDA4();

  a1[9] = a2[9];
  sub_261CFCDA4();

  a1[10] = a2[10];
  sub_261CFCDA4();

  a1[11] = a2[11];
  sub_261CFCDA4();

  a1[12] = a2[12];
  sub_261CFCDA4();

  a1[13] = a2[13];
  sub_261CFCDA4();

  a1[14] = a2[14];
  sub_261CFCDA4();

  a1[15] = a2[15];
  sub_261CFCDA4();

  a1[16] = a2[16];
  sub_261CFCDA4();

  a1[17] = a2[17];
  sub_261CFCDA4();

  a1[18] = a2[18];
  sub_261CFCDA4();

  a1[19] = a2[19];
  sub_261CFCDA4();

  a1[20] = a2[20];
  sub_261CFCDA4();

  a1[21] = a2[21];
  sub_261CFCDA4();

  a1[22] = a2[22];
  sub_261CFCDA4();

  a1[23] = a2[23];
  sub_261CFCDA4();

  a1[24] = a2[24];
  sub_261CFCDA4();

  a1[25] = a2[25];
  a1[26] = a2[26];
  sub_261CFD104();

  a1[27] = a2[27];
  sub_261CFCDA4();

  return a1;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

void *assignWithTake for UpdateReminderAppIntent(void *a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 1) = *(a2 + 16);

  *(a1 + 2) = *(a2 + 32);

  *(a1 + 3) = *(a2 + 48);

  *(a1 + 4) = *(a2 + 64);

  *(a1 + 5) = *(a2 + 80);

  *(a1 + 6) = *(a2 + 96);

  *(a1 + 7) = *(a2 + 112);

  *(a1 + 8) = *(a2 + 128);

  *(a1 + 9) = *(a2 + 144);

  *(a1 + 10) = *(a2 + 160);

  *(a1 + 11) = *(a2 + 176);

  a1[24] = *(a2 + 192);

  a1[25] = *(a2 + 200);

  *(a1 + 13) = *(a2 + 208);

  return a1;
}

uint64_t getEnumTagSinglePayload for UpdateReminderAppIntent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t storeEnumTagSinglePayload for UpdateReminderAppIntent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of UpdateReminderIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return v11(a1, a2, a3, a4);
}

unint64_t sub_261B53008()
{
  result = qword_27FEDAAF0;
  if (!qword_27FEDAAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDAAF8, &qword_261D13230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAAF0);
  }

  return result;
}

uint64_t sub_261B5306C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    sub_261CFCDA4();
    sub_261CFCDA4();

    return sub_261CFCDA4();
  }

  return result;
}

void sub_261B530B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_261CFD104();
    sub_261CFCDA4();

    sub_261CFCDA4();
  }
}

void sub_261B53114(uint64_t *a1)
{
  sub_261CFCA04();
  if (v24)
  {
    v1 = sub_261D00614();

    if ((v1 & 1) == 0)
    {

      return;
    }
  }

  else
  {
  }

  sub_261CFCA04();
  if (v24)
  {
    v2 = [v24 region];
    if (v2)
    {
      v3 = v2;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v4 = [v24 name];
        if (v4)
        {
          v5 = v4;
          sub_261CFFA74();
        }

        sub_261B05020(0, &qword_27FEDAB20, 0x277D44868);
        v23 = v24;
        v19 = v3;
        v20 = sub_261D00024();
        sub_261CFCA04();

        [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStructuredLocation:v20 proximity:v24];

        return;
      }
    }

    else
    {
    }

    if (qword_27FED9880 != -1)
    {
      swift_once();
    }

    v10 = sub_261CFF7A4();
    __swift_project_value_buffer(v10, qword_27FEDAB00);
    v11 = v24;
    v12 = sub_261CFF784();
    v13 = sub_261CFFE64();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136315138;
      if ([v11 region])
      {
        sub_261B05020(0, &qword_27FEDAB18, 0x277CBFC70);
        v16 = sub_261CFFAB4();
        v18 = v17;
      }

      else
      {
        v18 = 0xE300000000000000;
        v16 = 7104878;
      }

      v21 = sub_261B879C8(v16, v18, &v24);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_261AE2000, v12, v13, "locationAlarmEntity.placemark.region is not a CLCircularRegion, unable to create REMAlarmLocationTrigger. {region: %s}", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x26671D560](v15, -1, -1);
      MEMORY[0x26671D560](v14, -1, -1);
    }

    sub_261B01D70();
    swift_allocError();
    *v22 = 29;
    swift_willThrow();
  }

  else
  {

    if (qword_27FED9880 != -1)
    {
      swift_once();
    }

    v6 = sub_261CFF7A4();
    __swift_project_value_buffer(v6, qword_27FEDAB00);
    v7 = sub_261CFF784();
    v8 = sub_261CFFE64();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_261AE2000, v7, v8, "locationAlarmEntity.placemark is nil, unable to create REMAlarmLocationTrigger.", v9, 2u);
      MEMORY[0x26671D560](v9, -1, -1);
    }
  }
}

id sub_261B535B8(uint64_t *a1)
{
  sub_261CFCA04();
  if (v4 == 1)
  {

LABEL_4:
    sub_261CFCA04();

    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEvent_];
  }

  v1 = sub_261D00614();

  if (v1)
  {
    goto LABEL_4;
  }

  return 0;
}

uint64_t sub_261B536B8()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDAB00);
  v1 = __swift_project_value_buffer(v0, qword_27FEDAB00);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_261B53780(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a1;
  v3 = sub_261CFD674();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFD884();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_261CFFA44();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v9 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB28, &unk_261D108C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v10 = *MEMORY[0x277CC9110];
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  sub_261CFD6C4();
  sub_261B54038();
  v17 = sub_261CFCA34();
  *a2 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB38, &unk_261D08660);
  sub_261CFF9B4();
  sub_261CFD874();
  v11(v6, v10, v3);
  sub_261CFD6C4();
  sub_261B5408C();
  v18 = sub_261CFCA34();
  a2[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB48, &qword_261D108D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v11(v6, v10, v3);
  sub_261CFD6C4();
  a2[2] = sub_261CFCB64();
  v22[0] = 0;
  sub_261CFCA14();
  v12 = v19;
  v13 = [v19 structuredLocation];
  v14 = sub_261D00014();

  v21 = v14;
  v15 = v14;
  sub_261CFCA14();

  v16 = [v12 proximity];
  sub_261B53F34(&v20, "Unexpected REMAlarmProximity value when converting to RemindersAppIntents SpatialEvent {value: %ld}", v16, v17);
  sub_261CFCA14();
}

void sub_261B53B70(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a1;
  v3 = sub_261CFD674();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFD884();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_261CFFA44();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v9 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB28, &unk_261D108C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v10 = *MEMORY[0x277CC9110];
  v11 = *(v4 + 104);
  v14 = v3;
  v11(v6, v10, v3);
  sub_261CFD6C4();
  sub_261B54038();
  v15 = sub_261CFCA34();
  *a2 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB38, &unk_261D08660);
  sub_261CFF9B4();
  sub_261CFD874();
  v11(v6, v10, v3);
  sub_261CFD6C4();
  sub_261B5408C();
  a2[1] = sub_261CFCA34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB48, &qword_261D108D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v11(v6, v10, v14);
  sub_261CFD6C4();
  a2[2] = sub_261CFCB64();
  v19[0] = 1;
  sub_261CFCA14();
  v18 = 0;
  sub_261CFCA14();
  v12 = v16;
  v13 = [v16 event];
  sub_261B53F34(&v17, "Unexpected REMAlarmVehicleTriggerEvent value when converting to RemindersAppIntents SpatialEvent {value: %ld}", v13, v14);
  sub_261CFCA14();
}

void sub_261B53F34(void *__return_ptr a1@<X8>, const char *a2@<X1>, unint64_t a3@<X0>, uint64_t a4, ...)
{
  v4 = a3;
  if (a3 >= 3)
  {
    if (qword_27FED9880 != -1)
    {
      swift_once();
    }

    v7 = sub_261CFF7A4();
    __swift_project_value_buffer(v7, qword_27FEDAB00);
    v8 = sub_261CFF784();
    v9 = sub_261CFFE74();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = v4;
      _os_log_impl(&dword_261AE2000, v8, v9, a2, v10, 0xCu);
      MEMORY[0x26671D560](v10, -1, -1);
    }

    LOBYTE(v4) = 0;
  }

  *a1 = v4;
}

unint64_t sub_261B54038()
{
  result = qword_27FEDAB30;
  if (!qword_27FEDAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAB30);
  }

  return result;
}

unint64_t sub_261B5408C()
{
  result = qword_27FEDAB40;
  if (!qword_27FEDAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAB40);
  }

  return result;
}

uint64_t sub_261B540E0()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDAB50);
  v1 = __swift_project_value_buffer(v0, qword_27FEDAB50);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMStoreIntentPerformer.perform(_:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  v5 = type metadata accessor for ReminderEntity(0);
  *(v3 + 144) = v5;
  *(v3 + 152) = *(v5 - 8);
  *(v3 + 160) = swift_task_alloc();
  v6 = sub_261CFD7E4();
  *(v3 + 168) = v6;
  v7 = *(v6 - 8);
  *(v3 + 176) = v7;
  *(v3 + 184) = *(v7 + 64);
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = _s20CategorizedRemindersV17RecurrentInstanceVMa(0);
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = _s20CategorizedRemindersV15FetchedReminderVMa(0);
  *(v3 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = _s20CategorizedRemindersV12EditableItemOMa(0);
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  v8 = a2[1];
  *(v3 + 304) = *a2;
  *(v3 + 320) = v8;
  sub_261CFFD24();
  *(v3 + 336) = sub_261CFFD14();
  v10 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261B54494, v10, v9);
}

{
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  *(v3 + 80) = *a2;
  sub_261CFFD24();
  *(v3 + 96) = sub_261CFFD14();
  v5 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261B71EBC, v5, v4);
}

{
  *(v2 + 48) = a1;
  v4 = sub_261CFD754();
  *(v2 + 56) = v4;
  *(v2 + 64) = *(v4 - 8);
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = *a2;
  sub_261CFFD24();
  *(v2 + 96) = sub_261CFFD14();
  v6 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261BA02B0, v6, v5);
}

{
  *(v2 + 16) = a1;
  v4 = sub_261CFD754();
  *(v2 + 24) = v4;
  *(v2 + 32) = *(v4 - 8);
  *(v2 + 40) = swift_task_alloc();
  type metadata accessor for AppEntityID(0);
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = type metadata accessor for ReminderEntity(0);
  *(v2 + 64) = swift_task_alloc();
  v5 = a2[1];
  *(v2 + 72) = *a2;
  *(v2 + 88) = v5;
  *(v2 + 104) = a2[2];
  sub_261CFFD24();
  *(v2 + 120) = sub_261CFFD14();
  v7 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261BAEE4C, v7, v6);
}

{
  *(v2 + 16) = a1;
  v4 = sub_261CFD754();
  *(v2 + 24) = v4;
  *(v2 + 32) = *(v4 - 8);
  *(v2 + 40) = swift_task_alloc();
  type metadata accessor for AppEntityID(0);
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = type metadata accessor for ListEntity(0);
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = *a2;
  sub_261CFFD24();
  *(v2 + 88) = sub_261CFFD14();
  v6 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261BAF514, v6, v5);
}

{
  *(v3 + 136) = a1;
  *(v3 + 144) = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBFF0, &qword_261D090B8);
  *(v3 + 152) = v5;
  *(v3 + 160) = *(v5 - 8);
  *(v3 + 168) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBFF8, &qword_261D090C0);
  *(v3 + 176) = v6;
  *(v3 + 184) = *(v6 - 8);
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  *(v3 + 208) = swift_task_alloc();
  v7 = _s20CategorizedRemindersV17RecurrentInstanceVMa(0);
  *(v3 + 216) = v7;
  *(v3 + 224) = *(v7 - 8);
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = _s20CategorizedRemindersV15FetchedReminderVMa(0);
  *(v3 + 272) = swift_task_alloc();
  v8 = _s20CategorizedRemindersV12EditableItemOMa(0);
  *(v3 + 280) = v8;
  *(v3 + 288) = *(v8 - 8);
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = *a2;
  *(v3 + 320) = sub_261CFFD24();
  *(v3 + 328) = sub_261CFFD14();
  v9 = sub_261CFFCF4();
  *(v3 + 336) = v9;
  *(v3 + 344) = v10;

  return MEMORY[0x2822009F8](sub_261BDAD90, v9, v10);
}

{
  *(v3 + 88) = a1;
  *(v3 + 96) = v2;
  v4 = a2[1];
  *(v3 + 104) = *a2;
  *(v3 + 120) = v4;
  sub_261CFFD24();
  *(v3 + 136) = sub_261CFFD14();
  v6 = sub_261CFFCF4();
  *(v3 + 144) = v6;
  *(v3 + 152) = v5;

  return MEMORY[0x2822009F8](sub_261BF41E8, v6, v5);
}

{
  *(v3 + 136) = a1;
  *(v3 + 144) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = *(type metadata accessor for ReminderEntity(0) - 8);
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  v5 = sub_261CFD7E4();
  *(v3 + 192) = v5;
  v6 = *(v5 - 8);
  *(v3 + 200) = v6;
  *(v3 + 208) = *(v6 + 64);
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = _s20CategorizedRemindersV17RecurrentInstanceVMa(0);
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = _s20CategorizedRemindersV15FetchedReminderVMa(0);
  *(v3 + 296) = swift_task_alloc();
  v7 = _s20CategorizedRemindersV12EditableItemOMa(0);
  *(v3 + 304) = v7;
  *(v3 + 312) = *(v7 - 8);
  *(v3 + 320) = swift_task_alloc();
  *(v3 + 328) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA620, &qword_261D031E0);
  *(v3 + 336) = v8;
  *(v3 + 344) = *(v8 - 8);
  *(v3 + 352) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCCF8, &qword_261D0C3D8);
  *(v3 + 360) = swift_task_alloc();
  *(v3 + 368) = swift_task_alloc();
  v9 = a2[1];
  *(v3 + 376) = *a2;
  *(v3 + 392) = v9;
  sub_261CFFD24();
  *(v3 + 408) = sub_261CFFD14();
  v11 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261C24E74, v11, v10);
}

{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  *(v3 + 112) = type metadata accessor for GroupEntity(0);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = *(type metadata accessor for ListEntity(0) - 8);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = *a2;
  sub_261CFFD24();
  *(v3 + 160) = sub_261CFFD14();
  v6 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261C2E888, v6, v5);
}

{
  *(v2 + 24) = a1;
  v4 = sub_261CFD754();
  *(v2 + 32) = v4;
  *(v2 + 40) = *(v4 - 8);
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = *a2;
  sub_261CFFD24();
  *(v2 + 72) = sub_261CFFD14();
  v6 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261C653A4, v6, v5);
}

{
  *(v2 + 16) = a1;
  v4 = sub_261CFD754();
  *(v2 + 24) = v4;
  *(v2 + 32) = *(v4 - 8);
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = *a2;
  sub_261CFFD24();
  *(v2 + 64) = sub_261CFFD14();
  v6 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261C6634C, v6, v5);
}

{
  *(v2 + 16) = a1;
  v4 = sub_261CFD754();
  *(v2 + 24) = v4;
  *(v2 + 32) = *(v4 - 8);
  *(v2 + 40) = swift_task_alloc();
  type metadata accessor for AppEntityID(0);
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = type metadata accessor for GroupEntity(0);
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = *a2;
  sub_261CFFD24();
  *(v2 + 88) = sub_261CFFD14();
  v6 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261CA61E4, v6, v5);
}

{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = type metadata accessor for GroupEntity(0);
  *(v3 + 40) = swift_task_alloc();
  v5 = a2[1];
  *(v3 + 48) = *a2;
  *(v3 + 64) = v5;
  sub_261CFFD24();
  *(v3 + 80) = sub_261CFFD14();
  v7 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261CA830C, v7, v6);
}

{
  *(v3 + 88) = a1;
  *(v3 + 96) = v2;
  v4 = a2[1];
  *(v3 + 104) = *a2;
  *(v3 + 120) = v4;
  sub_261CFFD24();
  *(v3 + 136) = sub_261CFFD14();
  v6 = sub_261CFFCF4();
  *(v3 + 144) = v6;
  *(v3 + 152) = v5;

  return MEMORY[0x2822009F8](sub_261CAE6C8, v6, v5);
}

{
  *(v3 + 520) = v2;
  *(v3 + 512) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  *(v3 + 528) = swift_task_alloc();
  *(v3 + 536) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE170, &qword_261D11180);
  *(v3 + 544) = v5;
  *(v3 + 552) = *(v5 - 8);
  *(v3 + 560) = swift_task_alloc();
  *(v3 + 568) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE178, &qword_261D11188);
  *(v3 + 576) = v6;
  *(v3 + 584) = *(v6 - 8);
  *(v3 + 592) = swift_task_alloc();
  *(v3 + 600) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE180, &qword_261D11190);
  *(v3 + 608) = v7;
  *(v3 + 616) = *(v7 - 8);
  *(v3 + 624) = swift_task_alloc();
  *(v3 + 632) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
  *(v3 + 640) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE188, &qword_261D11198);
  *(v3 + 648) = v8;
  *(v3 + 656) = *(v8 - 8);
  *(v3 + 664) = swift_task_alloc();
  *(v3 + 672) = swift_task_alloc();
  v9 = sub_261CFD524();
  *(v3 + 680) = v9;
  *(v3 + 688) = *(v9 - 8);
  *(v3 + 696) = swift_task_alloc();
  *(v3 + 704) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE190, &qword_261D111A0);
  *(v3 + 712) = v10;
  *(v3 + 720) = *(v10 - 8);
  *(v3 + 728) = swift_task_alloc();
  *(v3 + 736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA988, &unk_261D03480);
  *(v3 + 744) = swift_task_alloc();
  v11 = sub_261CFD844();
  *(v3 + 752) = v11;
  *(v3 + 760) = *(v11 - 8);
  *(v3 + 768) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  *(v3 + 776) = swift_task_alloc();
  v12 = sub_261CFC954();
  *(v3 + 784) = v12;
  *(v3 + 792) = *(v12 - 8);
  *(v3 + 800) = swift_task_alloc();
  *(v3 + 808) = swift_task_alloc();
  *(v3 + 816) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE198, &qword_261D111A8);
  *(v3 + 824) = v13;
  *(v3 + 832) = *(v13 - 8);
  *(v3 + 840) = swift_task_alloc();
  *(v3 + 848) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE1A0, &qword_261D111B0);
  *(v3 + 856) = v14;
  *(v3 + 864) = *(v14 - 8);
  *(v3 + 872) = swift_task_alloc();
  *(v3 + 880) = swift_task_alloc();
  v15 = sub_261CFDA54();
  *(v3 + 888) = v15;
  *(v3 + 896) = *(v15 - 8);
  *(v3 + 904) = swift_task_alloc();
  *(v3 + 912) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE1A8, &qword_261D111B8);
  *(v3 + 920) = v16;
  *(v3 + 928) = *(v16 - 8);
  *(v3 + 936) = swift_task_alloc();
  *(v3 + 944) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  *(v3 + 952) = swift_task_alloc();
  *(v3 + 960) = swift_task_alloc();
  *(v3 + 968) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE1B0, &qword_261D111C0);
  *(v3 + 976) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE1B8, &qword_261D111C8);
  *(v3 + 984) = v17;
  *(v3 + 992) = *(v17 - 8);
  *(v3 + 1000) = swift_task_alloc();
  *(v3 + 1008) = swift_task_alloc();
  *(v3 + 1016) = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE1C0, &qword_261D111D0);
  *(v3 + 1024) = v18;
  *(v3 + 1032) = *(v18 - 8);
  *(v3 + 1040) = swift_task_alloc();
  *(v3 + 1048) = swift_task_alloc();
  v19 = sub_261CFDCE4();
  *(v3 + 1056) = v19;
  *(v3 + 1064) = *(v19 - 8);
  *(v3 + 1072) = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE1C8, &qword_261D111D8);
  *(v3 + 1080) = v20;
  *(v3 + 1088) = *(v20 - 8);
  *(v3 + 1096) = swift_task_alloc();
  v21 = type metadata accessor for ListEntity(0);
  *(v3 + 1104) = v21;
  *(v3 + 1112) = *(v21 - 8);
  *(v3 + 1120) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE1D0, &qword_261D111E0);
  *(v3 + 1128) = v22;
  *(v3 + 1136) = *(v22 - 8);
  *(v3 + 1144) = swift_task_alloc();
  *(v3 + 1152) = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE1D8, &qword_261D111E8);
  *(v3 + 1160) = v23;
  *(v3 + 1168) = *(v23 - 8);
  *(v3 + 1176) = swift_task_alloc();
  *(v3 + 1184) = type metadata accessor for AppEntityID(0);
  *(v3 + 1192) = swift_task_alloc();
  v24 = type metadata accessor for ReminderEntity(0);
  *(v3 + 1200) = v24;
  *(v3 + 1208) = *(v24 - 8);
  *(v3 + 1216) = swift_task_alloc();
  *(v3 + 1224) = swift_task_alloc();
  v25 = a2[11];
  *(v3 + 176) = a2[10];
  *(v3 + 192) = v25;
  v26 = a2[13];
  *(v3 + 208) = a2[12];
  *(v3 + 224) = v26;
  v27 = a2[7];
  *(v3 + 112) = a2[6];
  *(v3 + 128) = v27;
  v28 = a2[9];
  *(v3 + 144) = a2[8];
  *(v3 + 160) = v28;
  v29 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v29;
  v30 = a2[5];
  *(v3 + 80) = a2[4];
  *(v3 + 96) = v30;
  v31 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v31;
  sub_261CFFD24();
  *(v3 + 1232) = sub_261CFFD14();
  v33 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261CB7F84, v33, v32);
}

{
  *(v3 + 184) = a1;
  *(v3 + 192) = v2;
  sub_261CFD754();
  *(v3 + 200) = swift_task_alloc();
  v5 = sub_261CFC9D4();
  *(v3 + 208) = v5;
  *(v3 + 216) = *(v5 - 8);
  *(v3 + 224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  v6 = sub_261CFD674();
  *(v3 + 248) = v6;
  *(v3 + 256) = *(v6 - 8);
  *(v3 + 264) = swift_task_alloc();
  v7 = sub_261CFD884();
  *(v3 + 272) = v7;
  *(v3 + 280) = *(v7 - 8);
  *(v3 + 288) = swift_task_alloc();
  sub_261CFFA44();
  *(v3 + 296) = swift_task_alloc();
  sub_261CFD6A4();
  *(v3 + 304) = swift_task_alloc();
  *(v3 + 312) = type metadata accessor for SectionEntity(0);
  *(v3 + 320) = swift_task_alloc();
  type metadata accessor for SectionEntityID(0);
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  v8 = type metadata accessor for ListEntity(0);
  *(v3 + 344) = v8;
  *(v3 + 352) = *(v8 - 8);
  *(v3 + 360) = swift_task_alloc();
  *(v3 + 368) = swift_task_alloc();
  *(v3 + 376) = swift_task_alloc();
  *(v3 + 384) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA708, &qword_261D03298);
  *(v3 + 392) = swift_task_alloc();
  v9 = a2[1];
  *(v3 + 400) = *a2;
  *(v3 + 416) = v9;
  sub_261CFFD24();
  *(v3 + 432) = sub_261CFFD14();
  v11 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261CBC038, v11, v10);
}