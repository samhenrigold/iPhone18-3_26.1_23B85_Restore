uint64_t sub_22B9C7B00(void *a1)
{
  v2 = sub_22B9349C8(&qword_27D8D5930, &qword_22BA19318);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_22B9358B4(a1, a1[3]);
  sub_22B9C7D54();
  sub_22BA10D9C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_22B9C7C14(uint64_t a1)
{
  *(a1 + 8) = sub_22B9C7D0C(&qword_27D8D58E8, type metadata accessor for ActionRecord, &unk_22BA192CC);
  result = sub_22B9C7D0C(&qword_27D8D58F0, type metadata accessor for ActionRecord, &unk_22BA192A4);
  *(a1 + 16) = result;
  return result;
}

void sub_22B9C7C98(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_22B9C7D0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22B9C7D54()
{
  result = qword_27D8D5900;
  if (!qword_27D8D5900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5900);
  }

  return result;
}

uint64_t sub_22B9C7DA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B9C7E0C(unint64_t a1)
{
  if (a1 >= 8)
  {
    return 5;
  }

  else
  {
    return (0x403020100050505uLL >> (8 * a1));
  }
}

unint64_t sub_22B9C7E34()
{
  result = qword_27D8D5938;
  if (!qword_27D8D5938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5938);
  }

  return result;
}

unint64_t sub_22B9C7E9C()
{
  result = qword_27D8D5940;
  if (!qword_27D8D5940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5940);
  }

  return result;
}

unint64_t sub_22B9C7EF4()
{
  result = qword_27D8D5948;
  if (!qword_27D8D5948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5948);
  }

  return result;
}

unint64_t sub_22B9C7F4C()
{
  result = qword_27D8D5950;
  if (!qword_27D8D5950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5950);
  }

  return result;
}

unint64_t sub_22B9C7FA0(uint64_t a1, uint64_t a2)
{
  v2 = sub_22BA10AAC();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22B9C7FF4()
{
  sub_22B95FA40(v9);
  v0 = v10;
  if (v10)
  {
    v1 = v11;
    sub_22B9358B4(v9, v10);
    v2 = (*(v1 + 56))(v0, v1);
    v4 = v3;
    sub_22B936C4C(v9);
    v5 = v4;
    v6 = 6;
    if (v5)
    {
      v7 = sub_22B9C2E30(v2, v5);
      if (v7 == 7)
      {
        return 6;
      }

      else
      {
        return v7;
      }
    }
  }

  else
  {
    sub_22B936BEC(v9, &qword_27D8D4FF8, &qword_22BA14748);
    return 6;
  }

  return v6;
}

uint64_t sub_22B9C80B4()
{
  if (qword_281416778 != -1)
  {
    swift_once();
  }

  v0 = xmmword_28141AEB0;
  v1 = objc_opt_self();
  swift_unknownObjectRetain();
  v2 = [v1 defaultManager];
  if (qword_281414F10 != -1)
  {
    swift_once();
  }

  sub_22B935B38(&unk_28141AD68, v15);
  sub_22B943D3C(v15, v15[3]);
  v14[3] = &type metadata for FileManagerProvider;
  v14[4] = &off_283F53B48;
  v13[3] = &type metadata for DatabaseRecordPersistence;
  v13[4] = &off_283F55858;
  v14[0] = v2;
  type metadata accessor for DatabaseImporter(0);
  v3 = swift_allocObject();
  v4 = sub_22B943D3C(v14, &type metadata for FileManagerProvider);
  MEMORY[0x28223BE20](v4);
  v6 = (&v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  sub_22B943D3C(v13, &type metadata for DatabaseRecordPersistence);
  v8 = *v6;
  v9 = v2;
  v10 = sub_22B9D5A14(v0, *(&v0 + 1), v8, v3);

  sub_22B936C4C(v13);
  sub_22B936C4C(v14);
  result = sub_22B936C4C(v15);
  qword_28141ADA8 = v10;
  return result;
}

uint64_t sub_22B9C82E0(uint64_t a1, char a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 232) = a7;
  *(v8 + 240) = v7;
  *(v8 + 216) = a3;
  *(v8 + 224) = a6;
  *(v8 + 187) = a5;
  *(v8 + 186) = a4;
  *(v8 + 185) = a2;
  *(v8 + 208) = a1;
  *(v8 + 248) = type metadata accessor for UnknownRecord(0);
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = type metadata accessor for MessageUpdateRecord(0);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = type metadata accessor for RecoverableMessageRecord(0);
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = type metadata accessor for AttachmentRecord(0);
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = type metadata accessor for ItemRecord(0);
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = type metadata accessor for ChatRecord(0);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = type metadata accessor for ChatLockRecord(0);
  *(v8 + 352) = swift_task_alloc();
  v9 = sub_22B9349C8(&qword_27D8D5958, &qword_22BA195D0);
  *(v8 + 360) = v9;
  *(v8 + 368) = *(v9 - 8);
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  v10 = type metadata accessor for DatabaseRecord(0);
  *(v8 + 392) = v10;
  *(v8 + 400) = *(v10 - 8);
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  *(v8 + 456) = swift_task_alloc();
  *(v8 + 464) = swift_task_alloc();
  *(v8 + 472) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9C85D8, v7, 0);
}

uint64_t sub_22B9C85D8()
{
  v41 = v0;
  if (*(v0 + 187) == 1)
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v1 = sub_22BA0FEFC();
    sub_22B936CA8(v1, qword_28141AD10);
    v2 = sub_22BA0FEDC();
    v3 = sub_22BA1042C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 186);
      v5 = *(v0 + 216);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v40 = v7;
      *v6 = 136315138;
      *(v0 + 192) = v5;
      *(v0 + 200) = v4 & 1;
      v8 = sub_22BA1005C();
      v10 = sub_22B99153C(v8, v9, &v40);

      *(v6 + 4) = v10;
      v11 = "Performing import with tombstoning with batch: %s";
LABEL_10:
      _os_log_impl(&dword_22B92A000, v2, v3, v11, v6, 0xCu);
      sub_22B936C4C(v7);
      MEMORY[0x23189ADD0](v7, -1, -1);
      MEMORY[0x23189ADD0](v6, -1, -1);
    }
  }

  else
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v12 = sub_22BA0FEFC();
    sub_22B936CA8(v12, qword_28141AD10);
    v2 = sub_22BA0FEDC();
    v3 = sub_22BA1042C();
    if (os_log_type_enabled(v2, v3))
    {
      v13 = *(v0 + 186);
      v14 = *(v0 + 216);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v40 = v7;
      *v6 = 136315138;
      *(v0 + 176) = v14;
      *(v0 + 184) = v13 & 1;
      v15 = sub_22BA1005C();
      v17 = sub_22B99153C(v15, v16, &v40);

      *(v6 + 4) = v17;
      v11 = "Performing import, given predicate with batch: %s";
      goto LABEL_10;
    }
  }

  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 208);
  v19 = sub_22BA0FEFC();
  *(v0 + 480) = sub_22B936CA8(v19, qword_28141AD10);
  v20 = v18;
  v21 = sub_22BA0FEDC();
  v22 = sub_22BA1043C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 208);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v23;
    *v25 = v23;
    v26 = v23;
    _os_log_impl(&dword_22B92A000, v21, v22, "Doing remote record query with predicate %@", v24, 0xCu);
    sub_22B936BEC(v25, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v25, -1, -1);
    MEMORY[0x23189ADD0](v24, -1, -1);
  }

  v27 = *(v0 + 186);

  v28 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v29 = sub_22BA0FFCC();
  v30 = [v28 initWithEntityName_];
  *(v0 + 488) = v30;

  if ((v27 & 1) == 0)
  {
    [v30 setFetchLimit_];
  }

  v31 = *(v0 + 240);
  v32 = *(v0 + 208);
  v33 = sub_22BA101DC();
  [v30 setRelationshipKeyPathsForPrefetching_];

  [v30 setPredicate_];
  *(v0 + 496) = *(v31 + 112);
  v34 = *(v31 + 120);
  *(v0 + 504) = v34;
  ObjectType = swift_getObjectType();
  *(v0 + 512) = ObjectType;
  v39 = (*(v34 + 48) + **(v34 + 48));
  v36 = swift_task_alloc();
  *(v0 + 520) = v36;
  v37 = type metadata accessor for RemoteRecord();
  *(v0 + 528) = v37;
  *v36 = v0;
  v36[1] = sub_22B9C8B2C;

  return v39(v30, v37, &off_281415E10, &off_283F57740, ObjectType, v34);
}

uint64_t sub_22B9C8B2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 536) = a1;
  *(v4 + 544) = v1;

  v5 = *(v3 + 240);
  if (v1)
  {
    v6 = sub_22B9CAEB8;
  }

  else
  {
    v6 = sub_22B9C8C64;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B9C8C64()
{
  v1 = *(v0 + 536);
  v2 = *(v1 + 16);
  *(v0 + 552) = v2;
  if (v2)
  {
    v3 = *(v0 + 400);
    v4 = *(v0 + 368);
    v31 = *(v0 + 360);
    v32 = MEMORY[0x277D84F90];
    sub_22B9680C0(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v30 = *(v4 + 72);
    do
    {
      v6 = *(v0 + 464);
      v8 = *(v0 + 376);
      v7 = *(v0 + 384);
      sub_22B9934AC(v5, v7, &qword_27D8D5958, &qword_22BA195D0);
      sub_22B9D7BE4(v7, v8, &qword_27D8D5958, &qword_22BA195D0);

      sub_22B9D7B1C(v8 + *(v31 + 48), v6, type metadata accessor for DatabaseRecord);
      v10 = *(v32 + 16);
      v9 = *(v32 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_22B9680C0((v9 > 1), v10 + 1, 1);
      }

      *(v0 + 600) = v32;
      v11 = *(v0 + 464);
      *(v32 + 16) = v10 + 1;
      v12 = *(v3 + 80);
      *(v0 + 188) = v12;
      v13 = *(v3 + 72);
      *(v0 + 608) = v13;
      sub_22B9D7B1C(v11, v32 + ((v12 + 32) & ~v12) + v13 * v10, type metadata accessor for DatabaseRecord);
      v5 += v30;
      --v2;
    }

    while (v2);

    v14 = swift_task_alloc();
    *(v0 + 560) = v14;
    *v14 = v0;
    v14[1] = sub_22B9C9074;
    v15 = *(v0 + 232);
    v16 = *(v0 + 224);
    v17 = *(v0 + 185);

    return sub_22B9CE630(v32, v17, v16, v15);
  }

  else
  {
    v19 = *(v0 + 208);

    v20 = v19;
    v21 = sub_22BA0FEDC();
    v22 = sub_22BA1046C();

    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 488);
    if (v23)
    {
      v25 = *(v0 + 208);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v25;
      *v27 = v25;
      v28 = v25;
      _os_log_impl(&dword_22B92A000, v21, v22, "Query to sync store returned empty for predicate: %@", v26, 0xCu);
      sub_22B936BEC(v27, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v27, -1, -1);
      MEMORY[0x23189ADD0](v26, -1, -1);
    }

    v29 = *(v0 + 8);

    return v29(0);
  }
}

uint64_t sub_22B9C9074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *v3;
  v5[71] = a1;
  v5[72] = a2;
  v5[73] = a3;

  v7 = swift_task_alloc();
  v5[74] = v7;
  *v7 = v6;
  v7[1] = sub_22B9C91D0;

  return sub_22B9D295C(a1);
}

uint64_t sub_22B9C91D0()
{
  v1 = *(*v0 + 240);

  return MEMORY[0x2822009F8](sub_22B9C92E0, v1, 0);
}

uint64_t sub_22B9C92E0()
{
  v1 = *(*(v0 + 600) + 16);
  if (v1)
  {
    v2 = 0;
    v3 = MEMORY[0x277D84F90];
    do
    {
      v4 = *(v0 + 472);
      v5 = *(v0 + 448);
      sub_22B960B88(*(v0 + 600) + ((*(v0 + 188) + 32) & ~*(v0 + 188)) + *(v0 + 608) * v2, v4);
      sub_22B960B88(v4, v5);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v7 = *(v0 + 448);
      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v14 = *(v0 + 328);
            v8 = *(v0 + 336);
            v10 = type metadata accessor for ChatRecord;
            sub_22B9D7B1C(v7, v8, type metadata accessor for ChatRecord);
            *(v0 + 40) = v14;
            v11 = type metadata accessor for ChatRecord;
            v12 = &unk_22BA16D28;
            v13 = &qword_281416388;
          }

          else
          {
            v17 = *(v0 + 312);
            v8 = *(v0 + 320);
            v10 = type metadata accessor for ItemRecord;
            sub_22B9D7B1C(v7, v8, type metadata accessor for ItemRecord);
            *(v0 + 40) = v17;
            v11 = type metadata accessor for ItemRecord;
            v12 = &unk_22BA140A0;
            v13 = &qword_2814161A0;
          }
        }

        else
        {
          v16 = *(v0 + 344);
          v8 = *(v0 + 352);
          v10 = type metadata accessor for ChatLockRecord;
          sub_22B9D7B1C(v7, v8, type metadata accessor for ChatLockRecord);
          *(v0 + 40) = v16;
          v11 = type metadata accessor for ChatLockRecord;
          v12 = &unk_22BA147E8;
          v13 = &qword_27D8D5010;
        }
      }

      else if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload == 5)
        {
          v15 = *(v0 + 264);
          v8 = *(v0 + 272);
          v10 = type metadata accessor for MessageUpdateRecord;
          sub_22B9D7B1C(v7, v8, type metadata accessor for MessageUpdateRecord);
          *(v0 + 40) = v15;
          v11 = type metadata accessor for MessageUpdateRecord;
          v12 = &unk_22BA16844;
          v13 = &unk_281415528;
        }

        else
        {
          v19 = *(v0 + 248);
          v8 = *(v0 + 256);
          v10 = type metadata accessor for UnknownRecord;
          sub_22B9D7B1C(v7, v8, type metadata accessor for UnknownRecord);
          *(v0 + 40) = v19;
          v11 = type metadata accessor for UnknownRecord;
          v12 = &unk_22BA19A98;
          v13 = &unk_27D8D5000;
        }
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v9 = *(v0 + 296);
        v8 = *(v0 + 304);
        v10 = type metadata accessor for AttachmentRecord;
        sub_22B9D7B1C(v7, v8, type metadata accessor for AttachmentRecord);
        *(v0 + 40) = v9;
        v11 = type metadata accessor for AttachmentRecord;
        v12 = &unk_22BA1B564;
        v13 = &qword_2814159B0;
      }

      else
      {
        v18 = *(v0 + 280);
        v8 = *(v0 + 288);
        v10 = type metadata accessor for RecoverableMessageRecord;
        sub_22B9D7B1C(v7, v8, type metadata accessor for RecoverableMessageRecord);
        *(v0 + 40) = v18;
        v11 = type metadata accessor for RecoverableMessageRecord;
        v12 = &unk_22BA14FCC;
        v13 = &unk_27D8D5008;
      }

      *(v0 + 48) = sub_22B9D7C4C(v13, v11, v12);
      v20 = sub_22B957E80((v0 + 16));
      sub_22B9D7B1C(v8, v20, v10);
      v21 = *(v0 + 40);
      v22 = *(v0 + 472);
      if (v21)
      {
        v23 = *(v0 + 48);
        sub_22B9358B4((v0 + 16), *(v0 + 40));
        v24 = (*(v23 + 48))(v21, v23);
        v26 = v25;
        sub_22B936C4C((v0 + 16));
        sub_22B9D7B84(v22, type metadata accessor for DatabaseRecord);
        if (v26)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_22B97FB74(0, *(v3 + 2) + 1, 1, v3);
          }

          v28 = *(v3 + 2);
          v27 = *(v3 + 3);
          if (v28 >= v27 >> 1)
          {
            v3 = sub_22B97FB74((v27 > 1), v28 + 1, 1, v3);
          }

          *(v3 + 2) = v28 + 1;
          v29 = &v3[16 * v28];
          *(v29 + 4) = v24;
          *(v29 + 5) = v26;
        }
      }

      else
      {
        sub_22B936BEC(v0 + 16, &qword_27D8D4FF8, &qword_22BA14748);
        sub_22B9D7B84(v22, type metadata accessor for DatabaseRecord);
      }

      ++v2;
    }

    while (v1 != v2);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
  }

  v30 = *(v0 + 568);
  *(v0 + 616) = sub_22BA0197C(v3);

  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = 0;
    v33 = *(v0 + 568) + ((*(v0 + 188) + 32) & ~*(v0 + 188));
    v34 = MEMORY[0x277D84F90];
    do
    {
      v35 = *(v0 + 456);
      v36 = *(v0 + 432);
      sub_22B960B88(v33 + *(v0 + 608) * v32, v35);
      sub_22B960B88(v35, v36);
      v37 = swift_getEnumCaseMultiPayload();
      v38 = *(v0 + 432);
      if (v37 <= 2)
      {
        if (v37)
        {
          if (v37 == 1)
          {
            v45 = *(v0 + 328);
            v39 = *(v0 + 336);
            v41 = type metadata accessor for ChatRecord;
            sub_22B9D7B1C(v38, v39, type metadata accessor for ChatRecord);
            *(v0 + 80) = v45;
            v42 = type metadata accessor for ChatRecord;
            v43 = &unk_22BA16D28;
            v44 = &qword_281416388;
          }

          else
          {
            v48 = *(v0 + 312);
            v39 = *(v0 + 320);
            v41 = type metadata accessor for ItemRecord;
            sub_22B9D7B1C(v38, v39, type metadata accessor for ItemRecord);
            *(v0 + 80) = v48;
            v42 = type metadata accessor for ItemRecord;
            v43 = &unk_22BA140A0;
            v44 = &qword_2814161A0;
          }
        }

        else
        {
          v47 = *(v0 + 344);
          v39 = *(v0 + 352);
          v41 = type metadata accessor for ChatLockRecord;
          sub_22B9D7B1C(v38, v39, type metadata accessor for ChatLockRecord);
          *(v0 + 80) = v47;
          v42 = type metadata accessor for ChatLockRecord;
          v43 = &unk_22BA147E8;
          v44 = &qword_27D8D5010;
        }
      }

      else if (v37 > 4)
      {
        if (v37 == 5)
        {
          v46 = *(v0 + 264);
          v39 = *(v0 + 272);
          v41 = type metadata accessor for MessageUpdateRecord;
          sub_22B9D7B1C(v38, v39, type metadata accessor for MessageUpdateRecord);
          *(v0 + 80) = v46;
          v42 = type metadata accessor for MessageUpdateRecord;
          v43 = &unk_22BA16844;
          v44 = &unk_281415528;
        }

        else
        {
          v50 = *(v0 + 248);
          v39 = *(v0 + 256);
          v41 = type metadata accessor for UnknownRecord;
          sub_22B9D7B1C(v38, v39, type metadata accessor for UnknownRecord);
          *(v0 + 80) = v50;
          v42 = type metadata accessor for UnknownRecord;
          v43 = &unk_22BA19A98;
          v44 = &unk_27D8D5000;
        }
      }

      else if (v37 == 3)
      {
        v40 = *(v0 + 296);
        v39 = *(v0 + 304);
        v41 = type metadata accessor for AttachmentRecord;
        sub_22B9D7B1C(v38, v39, type metadata accessor for AttachmentRecord);
        *(v0 + 80) = v40;
        v42 = type metadata accessor for AttachmentRecord;
        v43 = &unk_22BA1B564;
        v44 = &qword_2814159B0;
      }

      else
      {
        v49 = *(v0 + 280);
        v39 = *(v0 + 288);
        v41 = type metadata accessor for RecoverableMessageRecord;
        sub_22B9D7B1C(v38, v39, type metadata accessor for RecoverableMessageRecord);
        *(v0 + 80) = v49;
        v42 = type metadata accessor for RecoverableMessageRecord;
        v43 = &unk_22BA14FCC;
        v44 = &unk_27D8D5008;
      }

      *(v0 + 88) = sub_22B9D7C4C(v44, v42, v43);
      v51 = sub_22B957E80((v0 + 56));
      sub_22B9D7B1C(v39, v51, v41);
      v52 = *(v0 + 80);
      v53 = *(v0 + 456);
      if (v52)
      {
        v54 = *(v0 + 88);
        sub_22B9358B4((v0 + 56), *(v0 + 80));
        v55 = (*(v54 + 48))(v52, v54);
        v57 = v56;
        sub_22B936C4C((v0 + 56));
        sub_22B9D7B84(v53, type metadata accessor for DatabaseRecord);
        if (v57)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_22B97FB74(0, *(v34 + 2) + 1, 1, v34);
          }

          v59 = *(v34 + 2);
          v58 = *(v34 + 3);
          if (v59 >= v58 >> 1)
          {
            v34 = sub_22B97FB74((v58 > 1), v59 + 1, 1, v34);
          }

          *(v34 + 2) = v59 + 1;
          v60 = &v34[16 * v59];
          *(v60 + 4) = v55;
          *(v60 + 5) = v57;
        }
      }

      else
      {
        sub_22B936BEC(v0 + 56, &qword_27D8D4FF8, &qword_22BA14748);
        sub_22B9D7B84(v53, type metadata accessor for DatabaseRecord);
      }

      ++v32;
    }

    while (v31 != v32);
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  v61 = *(v0 + 576);
  *(v0 + 624) = sub_22BA0197C(v34);

  v62 = *(v61 + 16);
  if (v62)
  {
    v63 = 0;
    v64 = *(v0 + 576) + ((*(v0 + 188) + 32) & ~*(v0 + 188));
    v65 = MEMORY[0x277D84F90];
    do
    {
      v66 = *(v0 + 440);
      v67 = *(v0 + 416);
      sub_22B960B88(v64 + *(v0 + 608) * v63, v66);
      sub_22B960B88(v66, v67);
      v68 = swift_getEnumCaseMultiPayload();
      v69 = *(v0 + 416);
      if (v68 <= 2)
      {
        if (v68)
        {
          if (v68 == 1)
          {
            v76 = *(v0 + 328);
            v70 = *(v0 + 336);
            v72 = type metadata accessor for ChatRecord;
            sub_22B9D7B1C(v69, v70, type metadata accessor for ChatRecord);
            *(v0 + 120) = v76;
            v73 = type metadata accessor for ChatRecord;
            v74 = &unk_22BA16D28;
            v75 = &qword_281416388;
          }

          else
          {
            v79 = *(v0 + 312);
            v70 = *(v0 + 320);
            v72 = type metadata accessor for ItemRecord;
            sub_22B9D7B1C(v69, v70, type metadata accessor for ItemRecord);
            *(v0 + 120) = v79;
            v73 = type metadata accessor for ItemRecord;
            v74 = &unk_22BA140A0;
            v75 = &qword_2814161A0;
          }
        }

        else
        {
          v78 = *(v0 + 344);
          v70 = *(v0 + 352);
          v72 = type metadata accessor for ChatLockRecord;
          sub_22B9D7B1C(v69, v70, type metadata accessor for ChatLockRecord);
          *(v0 + 120) = v78;
          v73 = type metadata accessor for ChatLockRecord;
          v74 = &unk_22BA147E8;
          v75 = &qword_27D8D5010;
        }
      }

      else if (v68 > 4)
      {
        if (v68 == 5)
        {
          v77 = *(v0 + 264);
          v70 = *(v0 + 272);
          v72 = type metadata accessor for MessageUpdateRecord;
          sub_22B9D7B1C(v69, v70, type metadata accessor for MessageUpdateRecord);
          *(v0 + 120) = v77;
          v73 = type metadata accessor for MessageUpdateRecord;
          v74 = &unk_22BA16844;
          v75 = &unk_281415528;
        }

        else
        {
          v81 = *(v0 + 248);
          v70 = *(v0 + 256);
          v72 = type metadata accessor for UnknownRecord;
          sub_22B9D7B1C(v69, v70, type metadata accessor for UnknownRecord);
          *(v0 + 120) = v81;
          v73 = type metadata accessor for UnknownRecord;
          v74 = &unk_22BA19A98;
          v75 = &unk_27D8D5000;
        }
      }

      else if (v68 == 3)
      {
        v71 = *(v0 + 296);
        v70 = *(v0 + 304);
        v72 = type metadata accessor for AttachmentRecord;
        sub_22B9D7B1C(v69, v70, type metadata accessor for AttachmentRecord);
        *(v0 + 120) = v71;
        v73 = type metadata accessor for AttachmentRecord;
        v74 = &unk_22BA1B564;
        v75 = &qword_2814159B0;
      }

      else
      {
        v80 = *(v0 + 280);
        v70 = *(v0 + 288);
        v72 = type metadata accessor for RecoverableMessageRecord;
        sub_22B9D7B1C(v69, v70, type metadata accessor for RecoverableMessageRecord);
        *(v0 + 120) = v80;
        v73 = type metadata accessor for RecoverableMessageRecord;
        v74 = &unk_22BA14FCC;
        v75 = &unk_27D8D5008;
      }

      *(v0 + 128) = sub_22B9D7C4C(v75, v73, v74);
      v82 = sub_22B957E80((v0 + 96));
      sub_22B9D7B1C(v70, v82, v72);
      v83 = *(v0 + 120);
      v84 = *(v0 + 440);
      if (v83)
      {
        v85 = *(v0 + 128);
        sub_22B9358B4((v0 + 96), *(v0 + 120));
        v86 = (*(v85 + 48))(v83, v85);
        v88 = v87;
        sub_22B936C4C((v0 + 96));
        sub_22B9D7B84(v84, type metadata accessor for DatabaseRecord);
        if (v88)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = sub_22B97FB74(0, *(v65 + 2) + 1, 1, v65);
          }

          v90 = *(v65 + 2);
          v89 = *(v65 + 3);
          if (v90 >= v89 >> 1)
          {
            v65 = sub_22B97FB74((v89 > 1), v90 + 1, 1, v65);
          }

          *(v65 + 2) = v90 + 1;
          v91 = &v65[16 * v90];
          *(v91 + 4) = v86;
          *(v91 + 5) = v88;
        }
      }

      else
      {
        sub_22B936BEC(v0 + 96, &qword_27D8D4FF8, &qword_22BA14748);
        sub_22B9D7B84(v84, type metadata accessor for DatabaseRecord);
      }

      ++v63;
    }

    while (v62 != v63);
  }

  else
  {
    v65 = MEMORY[0x277D84F90];
  }

  v92 = *(v0 + 584);
  *(v0 + 632) = sub_22BA0197C(v65);

  v93 = *(v92 + 16);
  if (v93)
  {
    v94 = 0;
    v95 = *(v0 + 584) + ((*(v0 + 188) + 32) & ~*(v0 + 188));
    v96 = MEMORY[0x277D84F90];
    do
    {
      v97 = *(v0 + 424);
      v98 = *(v0 + 408);
      sub_22B960B88(v95 + *(v0 + 608) * v94, v97);
      sub_22B960B88(v97, v98);
      v99 = swift_getEnumCaseMultiPayload();
      v100 = *(v0 + 408);
      if (v99 <= 2)
      {
        if (v99)
        {
          if (v99 == 1)
          {
            v107 = *(v0 + 328);
            v101 = *(v0 + 336);
            v103 = type metadata accessor for ChatRecord;
            sub_22B9D7B1C(v100, v101, type metadata accessor for ChatRecord);
            *(v0 + 160) = v107;
            v104 = type metadata accessor for ChatRecord;
            v105 = &unk_22BA16D28;
            v106 = &qword_281416388;
          }

          else
          {
            v110 = *(v0 + 312);
            v101 = *(v0 + 320);
            v103 = type metadata accessor for ItemRecord;
            sub_22B9D7B1C(v100, v101, type metadata accessor for ItemRecord);
            *(v0 + 160) = v110;
            v104 = type metadata accessor for ItemRecord;
            v105 = &unk_22BA140A0;
            v106 = &qword_2814161A0;
          }
        }

        else
        {
          v109 = *(v0 + 344);
          v101 = *(v0 + 352);
          v103 = type metadata accessor for ChatLockRecord;
          sub_22B9D7B1C(v100, v101, type metadata accessor for ChatLockRecord);
          *(v0 + 160) = v109;
          v104 = type metadata accessor for ChatLockRecord;
          v105 = &unk_22BA147E8;
          v106 = &qword_27D8D5010;
        }
      }

      else if (v99 > 4)
      {
        if (v99 == 5)
        {
          v108 = *(v0 + 264);
          v101 = *(v0 + 272);
          v103 = type metadata accessor for MessageUpdateRecord;
          sub_22B9D7B1C(v100, v101, type metadata accessor for MessageUpdateRecord);
          *(v0 + 160) = v108;
          v104 = type metadata accessor for MessageUpdateRecord;
          v105 = &unk_22BA16844;
          v106 = &unk_281415528;
        }

        else
        {
          v112 = *(v0 + 248);
          v101 = *(v0 + 256);
          v103 = type metadata accessor for UnknownRecord;
          sub_22B9D7B1C(v100, v101, type metadata accessor for UnknownRecord);
          *(v0 + 160) = v112;
          v104 = type metadata accessor for UnknownRecord;
          v105 = &unk_22BA19A98;
          v106 = &unk_27D8D5000;
        }
      }

      else if (v99 == 3)
      {
        v102 = *(v0 + 296);
        v101 = *(v0 + 304);
        v103 = type metadata accessor for AttachmentRecord;
        sub_22B9D7B1C(v100, v101, type metadata accessor for AttachmentRecord);
        *(v0 + 160) = v102;
        v104 = type metadata accessor for AttachmentRecord;
        v105 = &unk_22BA1B564;
        v106 = &qword_2814159B0;
      }

      else
      {
        v111 = *(v0 + 280);
        v101 = *(v0 + 288);
        v103 = type metadata accessor for RecoverableMessageRecord;
        sub_22B9D7B1C(v100, v101, type metadata accessor for RecoverableMessageRecord);
        *(v0 + 160) = v111;
        v104 = type metadata accessor for RecoverableMessageRecord;
        v105 = &unk_22BA14FCC;
        v106 = &unk_27D8D5008;
      }

      *(v0 + 168) = sub_22B9D7C4C(v106, v104, v105);
      v113 = sub_22B957E80((v0 + 136));
      sub_22B9D7B1C(v101, v113, v103);
      v114 = *(v0 + 160);
      v115 = *(v0 + 424);
      if (v114)
      {
        v116 = *(v0 + 168);
        sub_22B9358B4((v0 + 136), *(v0 + 160));
        v117 = (*(v116 + 48))(v114, v116);
        v119 = v118;
        sub_22B936C4C((v0 + 136));
        sub_22B9D7B84(v115, type metadata accessor for DatabaseRecord);
        if (v119)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v96 = sub_22B97FB74(0, *(v96 + 2) + 1, 1, v96);
          }

          v121 = *(v96 + 2);
          v120 = *(v96 + 3);
          if (v121 >= v120 >> 1)
          {
            v96 = sub_22B97FB74((v120 > 1), v121 + 1, 1, v96);
          }

          *(v96 + 2) = v121 + 1;
          v122 = &v96[16 * v121];
          *(v122 + 4) = v117;
          *(v122 + 5) = v119;
        }
      }

      else
      {
        sub_22B936BEC(v0 + 136, &qword_27D8D4FF8, &qword_22BA14748);
        sub_22B9D7B84(v115, type metadata accessor for DatabaseRecord);
      }

      ++v94;
    }

    while (v93 != v94);
  }

  else
  {

    v96 = MEMORY[0x277D84F90];
  }

  v123 = *(v0 + 187);
  *(v0 + 640) = sub_22BA0197C(v96);

  if (v123)
  {
    v124 = swift_task_alloc();
    *(v0 + 648) = v124;
    *v124 = v0;
    v124[1] = sub_22B9CA7B0;
    v125 = *(v0 + 568);

    return sub_22B9D345C(v125);
  }

  else
  {
    v127 = *(v0 + 624);
    v128 = *(v0 + 616);
    v143 = *(v0 + 504);
    v129 = *(v0 + 187);
    v141 = *(v0 + 632);
    KeyPath = swift_getKeyPath();
    v131 = sub_22B9CE458(KeyPath, v128);

    v132 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v133 = sub_22BA0FFCC();
    v134 = [v132 initWithEntityName_];
    *(v0 + 664) = v134;

    [v134 setPredicate_];
    v135 = swift_allocObject();
    swift_weakInit();
    v136 = swift_allocObject();
    *(v0 + 672) = v136;
    *(v136 + 16) = v135;
    *(v136 + 24) = v127;
    *(v136 + 32) = v129;
    *(v136 + 40) = v141;
    v142 = (*(v143 + 72) + **(v143 + 72));
    v137 = swift_task_alloc();
    *(v0 + 680) = v137;
    *v137 = v0;
    v137[1] = sub_22B9CAB34;
    v138 = *(v0 + 528);
    v140 = *(v0 + 504);
    v139 = *(v0 + 512);

    return v142(v134, sub_22B9D7AF8, v136, v138, &off_283F57740, v139, v140);
  }
}

uint64_t sub_22B9CA7B0()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_22B9CB144;
  }

  else
  {
    v4 = sub_22B9CA8DC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B9CA8DC()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v18 = *(v0 + 504);
  v3 = *(v0 + 187);
  v16 = *(v0 + 632);
  KeyPath = swift_getKeyPath();
  v5 = sub_22B9CE458(KeyPath, v2);

  v6 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v7 = sub_22BA0FFCC();
  v8 = [v6 initWithEntityName_];
  *(v0 + 664) = v8;

  [v8 setPredicate_];
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v0 + 672) = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v1;
  *(v10 + 32) = v3;
  *(v10 + 40) = v16;
  v17 = (*(v18 + 72) + **(v18 + 72));
  v11 = swift_task_alloc();
  *(v0 + 680) = v11;
  *v11 = v0;
  v11[1] = sub_22B9CAB34;
  v12 = *(v0 + 528);
  v14 = *(v0 + 504);
  v13 = *(v0 + 512);

  return v17(v8, sub_22B9D7AF8, v10, v12, &off_283F57740, v13, v14);
}

uint64_t sub_22B9CAB34()
{
  v2 = *v1;
  *(*v1 + 688) = v0;

  if (v0)
  {
    v3 = *(v2 + 240);
    v4 = sub_22B9CB414;
  }

  else
  {
    v5 = *(v2 + 240);

    v4 = sub_22B9CAC5C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B9CAC5C()
{

  v1 = sub_22BA0FEDC();
  v2 = sub_22BA1042C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 664);
  v5 = *(v0 + 576);
  v6 = *(v0 + 568);
  v7 = *(v0 + 488);
  if (v3)
  {
    v8 = *(v0 + 187);
    v9 = swift_slowAlloc();
    *v9 = 134218496;
    v10 = *(v6 + 16);

    *(v9 + 4) = v10;

    *(v9 + 12) = 2048;
    v11 = *(v5 + 16);

    *(v9 + 14) = v11;

    *(v9 + 22) = 1024;
    *(v9 + 24) = v8;
    _os_log_impl(&dword_22B92A000, v1, v2, "Successfully imported %ld records, had %ld unsupported records, did tombstone? %{BOOL}d", v9, 0x1Cu);
    MEMORY[0x23189ADD0](v9, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v14 = *(v0 + 552);

  v12 = *(v0 + 8);

  return v12(v14);
}

uint64_t sub_22B9CAEB8()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 208);
  sub_22B975FD8(0, v1, 0, 0);
  v3 = v2;
  v4 = v1;
  v5 = sub_22BA0FEDC();
  v6 = sub_22BA1044C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 208);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v7;
    *v9 = v11;
    v9[1] = v7;
    v12 = v7;
    _os_log_impl(&dword_22B92A000, v5, v6, "Failed query: %@ for predicate: %@, batch size: none", v8, 0x16u);
    sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v9, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13(0);
}

uint64_t sub_22B9CB144()
{
  v1 = v0[61];

  v2 = v0[82];
  v3 = v0[26];
  sub_22B975FD8(0, v2, 0, 0);
  v4 = v3;
  v5 = v2;
  v6 = sub_22BA0FEDC();
  v7 = sub_22BA1044C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[26];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    v11 = v2;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v8;
    *v10 = v12;
    v10[1] = v8;
    v13 = v8;
    _os_log_impl(&dword_22B92A000, v6, v7, "Failed query: %@ for predicate: %@, batch size: none", v9, 0x16u);
    sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v10, -1, -1);
    MEMORY[0x23189ADD0](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_22B9CB414()
{
  v1 = v0[83];
  v2 = v0[61];

  v3 = v0[86];
  v4 = v0[26];
  sub_22B975FD8(0, v3, 0, 0);
  v5 = v4;
  v6 = v3;
  v7 = sub_22BA0FEDC();
  v8 = sub_22BA1044C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[26];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    v12 = v3;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v9;
    *v11 = v13;
    v11[1] = v9;
    v14 = v9;
    _os_log_impl(&dword_22B92A000, v7, v8, "Failed query: %@ for predicate: %@, batch size: none", v10, 0x16u);
    sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v11, -1, -1);
    MEMORY[0x23189ADD0](v10, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15(0);
}

void sub_22B9CB6C8()
{
  v1 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v18[-v5];
  v7 = sub_22BA0FD8C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v18[-v12];
  v14 = OBJC_IVAR____TtC17MessagesCloudSync16DatabaseImporter_lastImportProgressDate;
  swift_beginAccess();
  sub_22B9934AC(v0 + v14, v6, &unk_27D8D4A90, &qword_22BA126A0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_22B936BEC(v6, &unk_27D8D4A90, &qword_22BA126A0);
    sub_22BA0FD6C();
    (*(v8 + 56))(v4, 0, 1, v7);
    swift_beginAccess();
    sub_22B9D7A7C(v4, v0 + v14);
    swift_endAccess();
    return;
  }

  (*(v8 + 32))(v13, v6, v7);
  sub_22BA0FD6C();
  sub_22BA0FCEC();
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v15 < 9.22337204e18)
  {
    v16 = sub_22BA0FFCC();
    IMBagIntValueWithDefault();

    v17 = *(v8 + 8);
    v17(v11, v7);
    v17(v13, v7);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_22B9CB9CC(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9CBA6C, v2, 0);
}

uint64_t sub_22B9CBA6C()
{
  v1 = v0[15];
  KeyPath = swift_getKeyPath();
  v3 = sub_22B9A7818(KeyPath, 1);

  v4 = swift_getKeyPath();
  v5 = sub_22B9A7C48(v4, 0xD000000000000012, 0x800000022BA1B9F0);

  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22BA17B40;
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;
  v7 = objc_allocWithZone(MEMORY[0x277CCA920]);
  sub_22B9A90E8();
  v8 = v3;
  v9 = v5;
  v10 = sub_22BA101DC();

  v11 = [v7 initWithType:1 subpredicates:v10];
  v0[17] = v11;

  v12 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v13 = sub_22BA0FFCC();
  v14 = [v12 initWithEntityName_];
  v0[18] = v14;

  [v14 setFetchLimit_];
  [v14 setPredicate_];
  v0[19] = OBJC_IVAR____TtC17MessagesCloudSync16DatabaseImporter_lastImportProgressDate;
  v0[20] = *(v1 + 112);
  v15 = *(v1 + 120);
  v0[21] = v15;
  v0[22] = swift_getObjectType();
  v0[23] = *(v15 + 56);
  v0[24] = (v15 + 56) & 0xFFFFFFFFFFFFLL | 0x997000000000000;
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v16 = v0[17];
  v17 = sub_22BA0FEFC();
  v0[25] = sub_22B936CA8(v17, qword_28141AD10);
  v18 = v16;
  v19 = sub_22BA0FEDC();
  v20 = sub_22BA1043C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = v0[17];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v21;
    *v23 = v21;
    v24 = v21;
    _os_log_impl(&dword_22B92A000, v19, v20, "Running RemoteRecord query for completed message GUIDs with predicate %@", v22, 0xCu);
    sub_22B936BEC(v23, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v23, -1, -1);
    MEMORY[0x23189ADD0](v22, -1, -1);
  }

  v25 = v0[23];

  v31 = (v25 + *v25);
  v26 = swift_task_alloc();
  v0[26] = v26;
  *v26 = v0;
  v26[1] = sub_22B9CBE3C;
  v28 = v0[21];
  v27 = v0[22];
  v29 = v0[18];

  return v31(v29, v27, v28);
}

uint64_t sub_22B9CBE3C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 216) = a1;
  *(v4 + 224) = v1;

  v5 = *(v3 + 120);
  if (v1)
  {
    v6 = sub_22B9CD490;
  }

  else
  {
    v6 = sub_22B9CBF70;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B9CBF70()
{
  v1 = v0[27];
  if (*(v1 + 16))
  {

    v2 = sub_22BA0FEDC();
    v3 = sub_22BA1046C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      *(v4 + 4) = *(v1 + 16);

      _os_log_impl(&dword_22B92A000, v2, v3, "Found %ld message GUIDs to look for stragglers for", v4, 0xCu);
      MEMORY[0x23189ADD0](v4, -1, -1);
    }

    else
    {
    }

    v8 = swift_task_alloc();
    v0[29] = v8;
    *v8 = v0;
    v8[1] = sub_22B9CC180;
    v9 = v0[27];
    v10 = v0[14];
    v11 = v0[13];

    return sub_22B9CD584(v9, 2, v11, v10);
  }

  else
  {

    v5 = sub_22BA0FEDC();
    v6 = sub_22BA1046C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B92A000, v5, v6, "No completed message GUIDs found to search for straggling sub records for", v7, 2u);
      MEMORY[0x23189ADD0](v7, -1, -1);
    }

    return MEMORY[0x2822009F8](sub_22B9CD1C8, 0, 0);
  }
}

uint64_t sub_22B9CC180()
{
  v1 = *(*v0 + 120);

  return MEMORY[0x2822009F8](sub_22B9CC290, v1, 0);
}

uint64_t sub_22B9CC290()
{

  v1 = sub_22BA0FEDC();
  v2 = sub_22BA1046C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[27];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_22B92A000, v1, v2, "Marking %ld messages as being re-written", v5, 0xCu);
    MEMORY[0x23189ADD0](v5, -1, -1);
  }

  else
  {
  }

  v6 = v0[27];
  v21 = v0[21];
  v0[11] = 1684632935;
  v0[12] = 0xE400000000000000;
  MEMORY[0x231899730](0x4025204E4920, 0xE600000000000000);
  sub_22B9349C8(&qword_27D8D5170, &unk_22BA19630);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22BA13CB0;
  *(v7 + 56) = sub_22B9349C8(&qword_27D8D5960, &unk_22BA1AA20);
  *(v7 + 32) = v6;

  v8 = sub_22BA0FFCC();

  v9 = sub_22BA101DC();

  v10 = [objc_opt_self() predicateWithFormat:v8 argumentArray:v9];

  v11 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v12 = sub_22BA0FFCC();
  v13 = [v11 initWithEntityName_];
  v0[30] = v13;

  [v13 setPredicate_];
  v14 = swift_allocObject();
  v0[31] = v14;
  swift_weakInit();
  v20 = (*(v21 + 72) + **(v21 + 72));
  v15 = swift_task_alloc();
  v0[32] = v15;
  v16 = type metadata accessor for RemoteRecord();
  *v15 = v0;
  v15[1] = sub_22B9CC61C;
  v18 = v0[21];
  v17 = v0[22];

  return v20(v13, sub_22B9D7D04, v14, v16, &off_283F57740, v17, v18);
}

uint64_t sub_22B9CC61C()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = sub_22B9CD500;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_22B9CC744;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B9CC744()
{
  sub_22B9CB6C8();
  if (v1)
  {
    v2 = sub_22BA0FEDC();
    v3 = sub_22BA1046C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_22B92A000, v2, v3, "Broadcasting import progress", v4, 2u);
      MEMORY[0x23189ADD0](v4, -1, -1);
    }

    v5 = *(v0 + 152);
    v7 = *(v0 + 120);
    v6 = *(v0 + 128);

    sub_22BA0FD6C();
    v8 = sub_22BA0FD8C();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
    swift_beginAccess();
    sub_22B9D7A7C(v6, v7 + v5);
    swift_endAccess();

    return MEMORY[0x2822009F8](sub_22B9CCBF8, 0, 0);
  }

  else
  {
    v9 = *(v0 + 264);
    sub_22B97EAEC();
    if (v9)
    {
      v10 = v9;
      v11 = v9;
      v12 = sub_22BA0FEDC();
      v13 = sub_22BA1042C();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        v16 = v10;
        v17 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 4) = v17;
        *v15 = v17;
        _os_log_impl(&dword_22B92A000, v12, v13, "Importer stopping work due to %@", v14, 0xCu);
        sub_22B936BEC(v15, &qword_27D8D4CD0, qword_22BA14360);
        MEMORY[0x23189ADD0](v15, -1, -1);
        MEMORY[0x23189ADD0](v14, -1, -1);
      }

      v18 = *(v0 + 240);
      v20 = *(v0 + 136);
      v19 = *(v0 + 144);

      swift_willThrow();

      v21 = *(v0 + 8);

      return v21();
    }

    else
    {

      if (qword_281414D18 != -1)
      {
        swift_once();
      }

      v22 = *(v0 + 136);
      v23 = sub_22BA0FEFC();
      *(v0 + 200) = sub_22B936CA8(v23, qword_28141AD10);
      v24 = v22;
      v25 = sub_22BA0FEDC();
      v26 = sub_22BA1043C();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = *(v0 + 136);
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        *(v28 + 4) = v27;
        *v29 = v27;
        v30 = v27;
        _os_log_impl(&dword_22B92A000, v25, v26, "Running RemoteRecord query for completed message GUIDs with predicate %@", v28, 0xCu);
        sub_22B936BEC(v29, &qword_27D8D4CD0, qword_22BA14360);
        MEMORY[0x23189ADD0](v29, -1, -1);
        MEMORY[0x23189ADD0](v28, -1, -1);
      }

      v31 = *(v0 + 184);

      v37 = (v31 + *v31);
      v32 = swift_task_alloc();
      *(v0 + 208) = v32;
      *v32 = v0;
      v32[1] = sub_22B9CBE3C;
      v34 = *(v0 + 168);
      v33 = *(v0 + 176);
      v35 = *(v0 + 144);

      return v37(v35, v33, v34);
    }
  }
}

uint64_t sub_22B9CCBF8()
{
  v1 = *(*(v0 + 104) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 272) = v1;
  return MEMORY[0x2822009F8](sub_22B9CCC28, v1, 0);
}

uint64_t sub_22B9CCC28()
{
  v1 = *(v0 + 272);
  swift_beginAccess();
  *(v0 + 280) = *(v1 + 120);
  *(v0 + 288) = *(v1 + 128);
  *(v0 + 320) = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_22B9CCCB8, 0, 0);
}

uint64_t sub_22B9CCCB8()
{
  v1 = *sub_22B9358B4((*(v0 + 104) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore), *(*(v0 + 104) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore + 24));

  return MEMORY[0x2822009F8](sub_22B9CCD34, v1, 0);
}

uint64_t sub_22B9CCD34()
{
  sub_22B9E45D8(*(v0 + 280), *(v0 + 288), 0);

  return MEMORY[0x2822009F8](sub_22B9CCDA0, 0, 0);
}

uint64_t sub_22B9CCDA0()
{
  v1 = *(v0 + 320);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 120);
  sub_22B9358B4((*(v0 + 104) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(*(v0 + 104) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  sub_22BA0980C(v3, v2, v1);

  return MEMORY[0x2822009F8](sub_22B9CCE4C, v4, 0);
}

uint64_t sub_22B9CCE4C()
{
  v1 = *(v0 + 264);
  sub_22B97EAEC();
  if (v1)
  {
    v2 = v1;
    v3 = v1;
    v4 = sub_22BA0FEDC();
    v5 = sub_22BA1042C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = v2;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_22B92A000, v4, v5, "Importer stopping work due to %@", v6, 0xCu);
      sub_22B936BEC(v7, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v7, -1, -1);
      MEMORY[0x23189ADD0](v6, -1, -1);
    }

    v10 = *(v0 + 240);
    v12 = *(v0 + 136);
    v11 = *(v0 + 144);

    swift_willThrow();

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {

    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 136);
    v16 = sub_22BA0FEFC();
    *(v0 + 200) = sub_22B936CA8(v16, qword_28141AD10);
    v17 = v15;
    v18 = sub_22BA0FEDC();
    v19 = sub_22BA1043C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 136);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v20;
      *v22 = v20;
      v23 = v20;
      _os_log_impl(&dword_22B92A000, v18, v19, "Running RemoteRecord query for completed message GUIDs with predicate %@", v21, 0xCu);
      sub_22B936BEC(v22, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v22, -1, -1);
      MEMORY[0x23189ADD0](v21, -1, -1);
    }

    v24 = *(v0 + 184);

    v29 = (v24 + *v24);
    v25 = swift_task_alloc();
    *(v0 + 208) = v25;
    *v25 = v0;
    v25[1] = sub_22B9CBE3C;
    v27 = *(v0 + 168);
    v26 = *(v0 + 176);
    v28 = *(v0 + 144);

    return v29(v28, v26, v27);
  }
}

uint64_t sub_22B9CD1C8()
{
  v1 = *(*(v0 + 104) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 296) = v1;
  return MEMORY[0x2822009F8](sub_22B9CD1F8, v1, 0);
}

uint64_t sub_22B9CD1F8()
{
  v1 = *(v0 + 296);
  swift_beginAccess();
  *(v0 + 304) = *(v1 + 120);
  *(v0 + 312) = *(v1 + 128);
  *(v0 + 321) = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_22B9CD288, 0, 0);
}

uint64_t sub_22B9CD288()
{
  v1 = *sub_22B9358B4((*(v0 + 104) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore), *(*(v0 + 104) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore + 24));

  return MEMORY[0x2822009F8](sub_22B9CD304, v1, 0);
}

uint64_t sub_22B9CD304()
{
  sub_22B9E45D8(*(v0 + 304), *(v0 + 312), 0);

  return MEMORY[0x2822009F8](sub_22B9CD370, 0, 0);
}

uint64_t sub_22B9CD370()
{
  v1 = *(v0 + 321);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 120);
  sub_22B9358B4((*(v0 + 104) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(*(v0 + 104) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  sub_22BA0980C(v3, v2, v1);

  return MEMORY[0x2822009F8](sub_22B9CD41C, v4, 0);
}

uint64_t sub_22B9CD41C()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B9CD490()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B9CD500()
{
  v1 = v0[30];
  v3 = v0[17];
  v2 = v0[18];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22B9CD584(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = v4;
  *(v5 + 112) = a2;
  *(v5 + 40) = a1;
  *(v5 + 48) = a3;
  return MEMORY[0x2822009F8](sub_22B9CD5AC, v4, 0);
}

uint64_t sub_22B9CD5AC()
{
  if (!*(*(v0 + 40) + 16) || (v1 = sub_22B9D5BC0(*(v0 + 112)), (*(v0 + 72) = v1) == 0))
  {
LABEL_31:
    v22 = *(v0 + 8);

    return v22();
  }

  v2 = v1[2];
  *(v0 + 80) = v2;
  if (!v2)
  {
LABEL_30:

    goto LABEL_31;
  }

  v3 = 0;
  while (1)
  {
    *(v0 + 88) = v3;
    v7 = *(v0 + 72) + v3;
    v8 = *(v7 + 32);
    v9 = sub_22B9D5D28(*(v7 + 32), *(v0 + 40));
    *(v0 + 96) = v9;
    if (v9)
    {
      break;
    }

    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v10 = sub_22BA0FEFC();
    sub_22B936CA8(v10, qword_28141AD40);
    v11 = sub_22BA0FEDC();
    v12 = sub_22BA1044C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *(v0 + 16) = v14;
      *v13 = 136315138;
      if (v8 <= 2)
      {
        v4 = 0x72636E4574616863;
        if (v8)
        {
          v5 = 0xEF32766465747079;
          if (v8 != 1)
          {
            v4 = 0xD000000000000012;
            v5 = 0x800000022BA1B9F0;
          }
        }

        else
        {
          v4 = 0xD000000000000012;
          v5 = 0x800000022BA1B9C0;
        }
      }

      else if (v8 > 4)
      {
        if (v8 == 5)
        {
          v4 = 0x556567617373656DLL;
          v5 = 0xEF31566574616470;
        }

        else
        {
          v5 = 0xE700000000000000;
          v4 = 0x6E776F6E6B6E75;
        }
      }

      else if (v8 == 3)
      {
        v4 = 0x656D686361747461;
        v5 = 0xEA0000000000746ELL;
      }

      else
      {
        v4 = 0xD000000000000012;
        v5 = 0x800000022BA1BA10;
      }

      v6 = sub_22B99153C(v4, v5, (v0 + 16));

      *(v13 + 4) = v6;
      _os_log_impl(&dword_22B92A000, v11, v12, "Failed to generate sub predicate for subtype %s", v13, 0xCu);
      sub_22B936C4C(v14);
      MEMORY[0x23189ADD0](v14, -1, -1);
      MEMORY[0x23189ADD0](v13, -1, -1);
    }

    v3 = *(v0 + 88) + 1;
    if (v3 == *(v0 + 80))
    {
      goto LABEL_30;
    }
  }

  v42 = v9;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v15 = sub_22BA0FEFC();
  sub_22B936CA8(v15, qword_28141AD40);

  v16 = sub_22BA0FEDC();
  v17 = sub_22BA1046C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *(v0 + 24) = v19;
    *v18 = 136315650;
    if (v8 <= 2)
    {
      if (v8)
      {
        v21 = 0xEF32766465747079;
        v20 = 0x72636E4574616863;
        if (v8 != 1)
        {
          v20 = 0xD000000000000012;
          v21 = 0x800000022BA1B9F0;
        }
      }

      else
      {
        v20 = 0xD000000000000012;
        v21 = 0x800000022BA1B9C0;
      }
    }

    else if (v8 > 4)
    {
      if (v8 == 5)
      {
        v20 = 0x556567617373656DLL;
        v21 = 0xEF31566574616470;
      }

      else
      {
        v21 = 0xE700000000000000;
        v20 = 0x6E776F6E6B6E75;
      }
    }

    else if (v8 == 3)
    {
      v20 = 0x656D686361747461;
      v21 = 0xEA0000000000746ELL;
    }

    else
    {
      v20 = 0xD000000000000012;
      v21 = 0x800000022BA1BA10;
    }

    v24 = *(v0 + 112);
    v25 = sub_22B99153C(v20, v21, (v0 + 24));

    *(v18 + 4) = v25;
    *(v18 + 12) = 2080;
    v26 = 0xE700000000000000;
    v27 = 0x556567617373656DLL;
    if (v24 == 5)
    {
      v26 = 0xEF31566574616470;
    }

    else
    {
      v27 = 0x6E776F6E6B6E75;
    }

    v28 = 0x656D686361747461;
    if (v24 != 3)
    {
      v28 = 0xD000000000000012;
    }

    v29 = 0xEA0000000000746ELL;
    if (v24 != 3)
    {
      v29 = 0x800000022BA1BA10;
    }

    if (v24 <= 4)
    {
      v27 = v28;
      v26 = v29;
    }

    v30 = 0x72636E4574616863;
    if (v24 != 1)
    {
      v30 = 0xD000000000000012;
    }

    v31 = 0xEF32766465747079;
    if (v24 != 1)
    {
      v31 = 0x800000022BA1B9F0;
    }

    if (!v24)
    {
      v30 = 0xD000000000000012;
      v31 = 0x800000022BA1B9C0;
    }

    if (v24 <= 2)
    {
      v32 = v30;
    }

    else
    {
      v32 = v27;
    }

    if (v24 <= 2)
    {
      v33 = v31;
    }

    else
    {
      v33 = v26;
    }

    v34 = *(v0 + 40);
    v35 = sub_22B99153C(v32, v33, (v0 + 24));

    *(v18 + 14) = v35;
    *(v18 + 22) = 2080;
    *(v0 + 32) = v34;
    sub_22B9349C8(&qword_27D8D5960, &unk_22BA1AA20);
    sub_22B9D7C94();
    sub_22B936ACC();
    v36 = sub_22BA1015C();
    v38 = sub_22B99153C(v36, v37, (v0 + 24));

    *(v18 + 24) = v38;
    _os_log_impl(&dword_22B92A000, v16, v17, "Fetching related %s records for %s %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v19, -1, -1);
    MEMORY[0x23189ADD0](v18, -1, -1);
  }

  v39 = swift_task_alloc();
  *(v0 + 104) = v39;
  *v39 = v0;
  v39[1] = sub_22B9CDC84;
  v40 = *(v0 + 56);
  v41 = *(v0 + 48);

  return sub_22B9C82E0(v42, v8, 0, 1, 1, v41, v40);
}

uint64_t sub_22B9CDC84()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_22B9CDD94, v1, 0);
}

uint64_t sub_22B9CDD94()
{
  v1 = *(v0 + 88) + 1;
  if (v1 == *(v0 + 80))
  {
LABEL_2:

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    while (1)
    {
      *(v0 + 88) = v1;
      v7 = *(v0 + 72) + v1;
      v8 = *(v7 + 32);
      v9 = sub_22B9D5D28(*(v7 + 32), *(v0 + 40));
      *(v0 + 96) = v9;
      if (v9)
      {
        break;
      }

      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v10 = sub_22BA0FEFC();
      sub_22B936CA8(v10, qword_28141AD40);
      v11 = sub_22BA0FEDC();
      v12 = sub_22BA1044C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *(v0 + 16) = v14;
        *v13 = 136315138;
        if (v8 <= 2)
        {
          v4 = 0x72636E4574616863;
          if (v8)
          {
            v5 = 0xEF32766465747079;
            if (v8 != 1)
            {
              v4 = 0xD000000000000012;
              v5 = 0x800000022BA1B9F0;
            }
          }

          else
          {
            v4 = 0xD000000000000012;
            v5 = 0x800000022BA1B9C0;
          }
        }

        else if (v8 > 4)
        {
          if (v8 == 5)
          {
            v4 = 0x556567617373656DLL;
            v5 = 0xEF31566574616470;
          }

          else
          {
            v5 = 0xE700000000000000;
            v4 = 0x6E776F6E6B6E75;
          }
        }

        else if (v8 == 3)
        {
          v4 = 0x656D686361747461;
          v5 = 0xEA0000000000746ELL;
        }

        else
        {
          v4 = 0xD000000000000012;
          v5 = 0x800000022BA1BA10;
        }

        v6 = sub_22B99153C(v4, v5, (v0 + 16));

        *(v13 + 4) = v6;
        _os_log_impl(&dword_22B92A000, v11, v12, "Failed to generate sub predicate for subtype %s", v13, 0xCu);
        sub_22B936C4C(v14);
        MEMORY[0x23189ADD0](v14, -1, -1);
        MEMORY[0x23189ADD0](v13, -1, -1);
      }

      v1 = *(v0 + 88) + 1;
      if (v1 == *(v0 + 80))
      {
        goto LABEL_2;
      }
    }

    v40 = v9;
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v15 = sub_22BA0FEFC();
    sub_22B936CA8(v15, qword_28141AD40);

    v16 = sub_22BA0FEDC();
    v17 = sub_22BA1046C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *(v0 + 24) = v19;
      *v18 = 136315650;
      if (v8 <= 2)
      {
        if (v8)
        {
          v21 = 0xEF32766465747079;
          v20 = 0x72636E4574616863;
          if (v8 != 1)
          {
            v20 = 0xD000000000000012;
            v21 = 0x800000022BA1B9F0;
          }
        }

        else
        {
          v20 = 0xD000000000000012;
          v21 = 0x800000022BA1B9C0;
        }
      }

      else if (v8 > 4)
      {
        if (v8 == 5)
        {
          v20 = 0x556567617373656DLL;
          v21 = 0xEF31566574616470;
        }

        else
        {
          v21 = 0xE700000000000000;
          v20 = 0x6E776F6E6B6E75;
        }
      }

      else if (v8 == 3)
      {
        v20 = 0x656D686361747461;
        v21 = 0xEA0000000000746ELL;
      }

      else
      {
        v20 = 0xD000000000000012;
        v21 = 0x800000022BA1BA10;
      }

      v22 = *(v0 + 112);
      v23 = sub_22B99153C(v20, v21, (v0 + 24));

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      v24 = 0xE700000000000000;
      v25 = 0x556567617373656DLL;
      if (v22 == 5)
      {
        v24 = 0xEF31566574616470;
      }

      else
      {
        v25 = 0x6E776F6E6B6E75;
      }

      v26 = 0x656D686361747461;
      if (v22 != 3)
      {
        v26 = 0xD000000000000012;
      }

      v27 = 0xEA0000000000746ELL;
      if (v22 != 3)
      {
        v27 = 0x800000022BA1BA10;
      }

      if (v22 <= 4)
      {
        v25 = v26;
        v24 = v27;
      }

      v28 = 0x72636E4574616863;
      if (v22 != 1)
      {
        v28 = 0xD000000000000012;
      }

      v29 = 0xEF32766465747079;
      if (v22 != 1)
      {
        v29 = 0x800000022BA1B9F0;
      }

      if (!v22)
      {
        v28 = 0xD000000000000012;
        v29 = 0x800000022BA1B9C0;
      }

      if (v22 <= 2)
      {
        v30 = v28;
      }

      else
      {
        v30 = v25;
      }

      if (v22 <= 2)
      {
        v31 = v29;
      }

      else
      {
        v31 = v24;
      }

      v32 = *(v0 + 40);
      v33 = sub_22B99153C(v30, v31, (v0 + 24));

      *(v18 + 14) = v33;
      *(v18 + 22) = 2080;
      *(v0 + 32) = v32;
      sub_22B9349C8(&qword_27D8D5960, &unk_22BA1AA20);
      sub_22B9D7C94();
      sub_22B936ACC();
      v34 = sub_22BA1015C();
      v36 = sub_22B99153C(v34, v35, (v0 + 24));

      *(v18 + 24) = v36;
      _os_log_impl(&dword_22B92A000, v16, v17, "Fetching related %s records for %s %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v19, -1, -1);
      MEMORY[0x23189ADD0](v18, -1, -1);
    }

    v37 = swift_task_alloc();
    *(v0 + 104) = v37;
    *v37 = v0;
    v37[1] = sub_22B9CDC84;
    v38 = *(v0 + 56);
    v39 = *(v0 + 48);

    return sub_22B9C82E0(v40, v8, 0, 1, 1, v39, v38);
  }
}

id sub_22B9CE458(uint64_t a1, uint64_t a2)
{
  sub_22BA107BC();
  if (v3)
  {
    MEMORY[0x231899730](0x4025204E4920, 0xE600000000000000);
    sub_22B9349C8(&qword_27D8D5170, &unk_22BA19630);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_22BA13CB0;
    *(v4 + 56) = sub_22B9349C8(&qword_27D8D5960, &unk_22BA1AA20);
    *(v4 + 32) = a2;

    v5 = sub_22BA0FFCC();

    v6 = sub_22BA101DC();

    v7 = [objc_opt_self() predicateWithFormat:v5 argumentArray:v6];

    return v7;
  }

  else
  {
    v9 = [objc_opt_self() predicateWithValue_];

    return v9;
  }
}

id sub_22B9CE5BC(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    return [a2 setStatusValue_];
  }

  return result;
}

uint64_t sub_22B9CE630(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 584) = v4;
  *(v5 + 576) = a4;
  *(v5 + 568) = a3;
  *(v5 + 1133) = a2;
  *(v5 + 560) = a1;
  *(v5 + 592) = type metadata accessor for UnknownRecord(0);
  *(v5 + 600) = swift_task_alloc();
  *(v5 + 608) = type metadata accessor for MessageUpdateRecord(0);
  *(v5 + 616) = swift_task_alloc();
  *(v5 + 624) = type metadata accessor for RecoverableMessageRecord(0);
  *(v5 + 632) = swift_task_alloc();
  *(v5 + 640) = type metadata accessor for AttachmentRecord(0);
  *(v5 + 648) = swift_task_alloc();
  *(v5 + 656) = type metadata accessor for ItemRecord(0);
  *(v5 + 664) = swift_task_alloc();
  *(v5 + 672) = type metadata accessor for ChatRecord(0);
  *(v5 + 680) = swift_task_alloc();
  *(v5 + 688) = type metadata accessor for ChatLockRecord(0);
  *(v5 + 696) = swift_task_alloc();
  v6 = type metadata accessor for DatabaseRecord(0);
  *(v5 + 704) = v6;
  *(v5 + 712) = *(v6 - 8);
  *(v5 + 720) = swift_task_alloc();
  *(v5 + 728) = swift_task_alloc();
  *(v5 + 736) = swift_task_alloc();
  *(v5 + 744) = swift_task_alloc();
  *(v5 + 752) = swift_task_alloc();
  *(v5 + 760) = swift_task_alloc();
  *(v5 + 768) = swift_task_alloc();
  *(v5 + 776) = swift_task_alloc();
  *(v5 + 784) = swift_task_alloc();
  *(v5 + 792) = swift_task_alloc();
  *(v5 + 800) = swift_task_alloc();
  *(v5 + 808) = swift_task_alloc();
  *(v5 + 816) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9CE8E0, v4, 0);
}

uint64_t sub_22B9CE8E0()
{
  if (qword_281415390 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 584);

  return MEMORY[0x2822009F8](sub_22B9CE970, v1, 0);
}

uint64_t sub_22B9CE970()
{
  v1 = *(*(v0 + 560) + 16);
  *(v0 + 824) = v1;
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    v11 = 0;
    v7 = MEMORY[0x277D84F90];
LABEL_32:
    *(v0 + 1080) = v2;
    *(v0 + 1072) = v7;
    *(v0 + 1064) = v2;
    *(v0 + 1000) = 0u;
    *(v0 + 1016) = 0u;
    *(v0 + 1032) = 0u;
    *(v0 + 1048) = 0u;
    v44 = *(v2 + 2);
    if (v44)
    {
      v45 = *(v0 + 712);
      v46 = &v2[(*(v45 + 80) + 32) & ~*(v45 + 80)];
      v47 = *(v45 + 72);

      do
      {
        v48 = *(v0 + 728);
        v49 = *(v0 + 720);
        sub_22B960B88(v46, v48);
        sub_22B960B88(v48, v49);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v51 = *(v0 + 720);
        if (EnumCaseMultiPayload <= 2)
        {
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload == 1)
            {
              v52 = *(v0 + 680);
              v58 = *(v0 + 672);
              v54 = type metadata accessor for ChatRecord;
              sub_22B9D7B1C(v51, v52, type metadata accessor for ChatRecord);
              *(v0 + 80) = v58;
              v55 = type metadata accessor for ChatRecord;
              v56 = &unk_22BA16D28;
              v57 = &qword_281416388;
            }

            else
            {
              v52 = *(v0 + 664);
              v61 = *(v0 + 656);
              v54 = type metadata accessor for ItemRecord;
              sub_22B9D7B1C(v51, v52, type metadata accessor for ItemRecord);
              *(v0 + 80) = v61;
              v55 = type metadata accessor for ItemRecord;
              v56 = &unk_22BA140A0;
              v57 = &qword_2814161A0;
            }
          }

          else
          {
            v52 = *(v0 + 696);
            v60 = *(v0 + 688);
            v54 = type metadata accessor for ChatLockRecord;
            sub_22B9D7B1C(v51, v52, type metadata accessor for ChatLockRecord);
            *(v0 + 80) = v60;
            v55 = type metadata accessor for ChatLockRecord;
            v56 = &unk_22BA147E8;
            v57 = &qword_27D8D5010;
          }
        }

        else if (EnumCaseMultiPayload > 4)
        {
          if (EnumCaseMultiPayload == 5)
          {
            v52 = *(v0 + 616);
            v59 = *(v0 + 608);
            v54 = type metadata accessor for MessageUpdateRecord;
            sub_22B9D7B1C(v51, v52, type metadata accessor for MessageUpdateRecord);
            *(v0 + 80) = v59;
            v55 = type metadata accessor for MessageUpdateRecord;
            v56 = &unk_22BA16844;
            v57 = &unk_281415528;
          }

          else
          {
            v52 = *(v0 + 600);
            v63 = *(v0 + 592);
            v54 = type metadata accessor for UnknownRecord;
            sub_22B9D7B1C(v51, v52, type metadata accessor for UnknownRecord);
            *(v0 + 80) = v63;
            v55 = type metadata accessor for UnknownRecord;
            v56 = &unk_22BA19A98;
            v57 = &unk_27D8D5000;
          }
        }

        else if (EnumCaseMultiPayload == 3)
        {
          v52 = *(v0 + 648);
          v53 = *(v0 + 640);
          v54 = type metadata accessor for AttachmentRecord;
          sub_22B9D7B1C(v51, v52, type metadata accessor for AttachmentRecord);
          *(v0 + 80) = v53;
          v55 = type metadata accessor for AttachmentRecord;
          v56 = &unk_22BA1B564;
          v57 = &qword_2814159B0;
        }

        else
        {
          v52 = *(v0 + 632);
          v62 = *(v0 + 624);
          v54 = type metadata accessor for RecoverableMessageRecord;
          sub_22B9D7B1C(v51, v52, type metadata accessor for RecoverableMessageRecord);
          *(v0 + 80) = v62;
          v55 = type metadata accessor for RecoverableMessageRecord;
          v56 = &unk_22BA14FCC;
          v57 = &unk_27D8D5008;
        }

        *(v0 + 88) = sub_22B9D7C4C(v57, v55, v56);
        v64 = sub_22B957E80((v0 + 56));
        sub_22B9D7B1C(v52, v64, v54);
        v65 = *(v0 + 80);
        v66 = *(v0 + 728);
        if (v65)
        {
          v67 = *(v0 + 88);
          sub_22B9358B4((v0 + 56), *(v0 + 80));
          v68 = (*(v67 + 24))(v65, v67);
          v70 = v69;
          sub_22B936C4C((v0 + 56));
          sub_22B9D7B84(v66, type metadata accessor for DatabaseRecord);
          if (v70)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v2 = sub_22B97FB74(0, *(v2 + 2) + 1, 1, v2);
            }

            v72 = *(v2 + 2);
            v71 = *(v2 + 3);
            if (v72 >= v71 >> 1)
            {
              v2 = sub_22B97FB74((v71 > 1), v72 + 1, 1, v2);
            }

            *(v2 + 2) = v72 + 1;
            v73 = &v2[16 * v72];
            *(v73 + 4) = v68;
            *(v73 + 5) = v70;
          }
        }

        else
        {
          sub_22B936BEC(v0 + 56, &qword_27D8D4FF8, &qword_22BA14748);
          sub_22B9D7B84(v66, type metadata accessor for DatabaseRecord);
        }

        v46 += v47;
        --v44;
      }

      while (v44);
      v11 = *(v0 + 824);
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    v74 = sub_22BA0197C(v2);
    *(v0 + 1088) = v74;

    v75 = *(v74 + 16);
    v76 = v11 - v75;
    if (v11 > v75)
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v77 = sub_22BA0FEFC();
      sub_22B936CA8(v77, qword_28141AD40);
      v78 = sub_22BA0FEDC();
      v79 = sub_22BA1045C();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 134217984;
        *(v80 + 4) = v76;

        _os_log_impl(&dword_22B92A000, v78, v79, "Found %ld records without GUIDs!", v80, 0xCu);
        MEMORY[0x23189ADD0](v80, -1, -1);

LABEL_65:
        v81 = swift_task_alloc();
        *(v0 + 1096) = v81;
        *v81 = v0;
        v81[1] = sub_22B9D2088;
        v82 = *(v0 + 576);
        v83 = *(v0 + 568);
        v84 = *(v0 + 1133);

        return sub_22B9CD584(v74, v84, v83, v82);
      }
    }

    goto LABEL_65;
  }

  v3 = 0;
  v4 = *(v0 + 712);
  *(v0 + 1128) = *(v4 + 80);
  *(v0 + 832) = *(v4 + 72);
  v5 = &unk_281415000;
  v6 = &unk_28141A000;
  v7 = v2;
  while (1)
  {
    *(v0 + 928) = v2;
    *(v0 + 920) = v7;
    *(v0 + 912) = v2;
    *(v0 + 848) = 0u;
    *(v0 + 864) = 0u;
    *(v0 + 880) = 0u;
    *(v0 + 896) = 0u;
    *(v0 + 840) = v3;
    v12 = *(v0 + 816);
    v13 = *(v0 + 808);
    sub_22B960B88(*(v0 + 560) + ((*(v0 + 1128) + 32) & ~*(v0 + 1128)) + *(v0 + 832) * v3, v12);
    sub_22B960B88(v12, v13);
    LODWORD(v12) = swift_getEnumCaseMultiPayload();
    sub_22B9D7B84(v13, type metadata accessor for DatabaseRecord);
    if (v12 == 6)
    {
      sub_22B960B88(*(v0 + 816), *(v0 + 800));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_22B97FC80(0, v7[2] + 1, 1, v7);
      }

      v15 = v7[2];
      v14 = v7[3];
      if (v15 >= v14 >> 1)
      {
        v7 = sub_22B97FC80((v14 > 1), v15 + 1, 1, v7);
      }

      v16 = *(v0 + 832);
      v17 = *(v0 + 1128);
      v18 = *(v0 + 800);
      v7[2] = v15 + 1;
      sub_22B9D7B1C(v18, v7 + ((v17 + 32) & ~v17) + v16 * v15, type metadata accessor for DatabaseRecord);
      if (v5[245] != -1)
      {
        swift_once();
      }

      v19 = *(v0 + 816);
      swift_beginAccess();
      sub_22B9C34D8(1, 0, 0x6E776F6E6B6E75, 0xE700000000000000, 0);
      swift_endAccess();
      v10 = v19;
      goto LABEL_4;
    }

    sub_22B95FA40((v0 + 16));
    v20 = *(v0 + 40);
    if (!v20)
    {
      sub_22B936BEC(v0 + 16, &qword_27D8D4FF8, &qword_22BA14748);
      goto LABEL_18;
    }

    v21 = *(v0 + 48);
    sub_22B9358B4((v0 + 16), *(v0 + 40));
    v22 = (*(v21 + 56))(v20, v21);
    v24 = v23;
    *(v0 + 936) = v22;
    *(v0 + 944) = v23;
    sub_22B936C4C((v0 + 16));
    if (v24)
    {
      break;
    }

LABEL_18:
    sub_22B960B88(*(v0 + 816), *(v0 + 744));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_22B97FC80(0, v7[2] + 1, 1, v7);
    }

    v26 = v7[2];
    v25 = v7[3];
    if (v26 >= v25 >> 1)
    {
      v7 = sub_22B97FC80((v25 > 1), v26 + 1, 1, v7);
    }

    v27 = *(v0 + 832);
    v28 = *(v0 + 1128);
    v29 = *(v0 + 744);
    v7[2] = v26 + 1;
    sub_22B9D7B1C(v29, v7 + ((v28 + 32) & ~v28) + v27 * v26, type metadata accessor for DatabaseRecord);
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 816);
    v31 = *(v0 + 736);
    v32 = sub_22BA0FEFC();
    sub_22B936CA8(v32, qword_28141AD10);
    sub_22B960B88(v30, v31);
    v33 = sub_22BA0FEDC();
    v34 = sub_22BA1044C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *(v0 + 536) = v36;
      *v35 = 136315138;
      sub_22B95FA40((v0 + 96));
      v37 = *(v0 + 120);
      if (v37)
      {
        v38 = *(v0 + 128);
        sub_22B9358B4((v0 + 96), *(v0 + 120));
        v39 = (*(v38 + 24))(v37, v38);
        v41 = v40;
        sub_22B936C4C((v0 + 96));
        if (v41)
        {
          sub_22B9D7B84(*(v0 + 736), type metadata accessor for DatabaseRecord);
LABEL_30:
          v42 = *(v0 + 816);
          v43 = sub_22B99153C(v39, v41, (v0 + 536));

          *(v35 + 4) = v43;
          _os_log_impl(&dword_22B92A000, v33, v34, "No record type for record guid %s", v35, 0xCu);
          sub_22B936C4C(v36);
          MEMORY[0x23189ADD0](v36, -1, -1);
          MEMORY[0x23189ADD0](v35, -1, -1);

          sub_22B9D7B84(v42, type metadata accessor for DatabaseRecord);
          v6 = &unk_28141A000;
          v5 = &unk_281415000;
          goto LABEL_5;
        }
      }

      else
      {
        sub_22B936BEC(v0 + 96, &qword_27D8D4FF8, &qword_22BA14748);
      }

      sub_22B9D7B84(*(v0 + 736), type metadata accessor for DatabaseRecord);

      v41 = 0xE400000000000000;
      v39 = 1701736302;
      goto LABEL_30;
    }

    v8 = *(v0 + 816);
    v9 = *(v0 + 736);

    sub_22B9D7B84(v9, type metadata accessor for DatabaseRecord);
    v10 = v8;
LABEL_4:
    sub_22B9D7B84(v10, type metadata accessor for DatabaseRecord);
LABEL_5:
    v11 = *(v0 + 824);
    v3 = *(v0 + 840) + 1;
    if (v3 == v11)
    {
      goto LABEL_32;
    }
  }

  if (v5[245] != -1)
  {
    swift_once();
  }

  *(v0 + 952) = v6[435];
  swift_beginAccess();
  sub_22B9C34D8(1, 0, v22, v24, 0);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_22B9CF608, 0, 0);
}

uint64_t sub_22B9CF608()
{
  sub_22B95FA40(v0 + 17);
  v1 = v0[20];
  if (v1)
  {
    v2 = v0[21];
    sub_22B9358B4(v0 + 17, v0[20]);
    v6 = (*(v2 + 104) + **(v2 + 104));
    v3 = swift_task_alloc();
    v0[120] = v3;
    *v3 = v0;
    v3[1] = sub_22B9CF798;

    return v6(v1, v2);
  }

  else
  {
    v5 = v0[73];
    sub_22B936BEC((v0 + 17), &qword_27D8D4FF8, &qword_22BA14748);

    return MEMORY[0x2822009F8](sub_22B9CF8C0, v5, 0);
  }
}

uint64_t sub_22B9CF798(char a1)
{
  v4 = *v2;
  *(*v2 + 968) = v1;

  if (v1)
  {
    v5 = sub_22B9CFA3C;
  }

  else
  {
    *(v4 + 1134) = a1;
    v5 = sub_22B9D0F10;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B9CF8C0()
{
  sub_22B960B88(*(v0 + 816), *(v0 + 752));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 920);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22B97FC80(0, v2[2] + 1, 1, v2);
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_22B97FC80((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 752);
  *(v0 + 984) = *(v0 + 928);
  *(v0 + 976) = v2;
  v6 = *(v0 + 944);
  v7 = *(v0 + 936);
  v8 = *(v0 + 832);
  v9 = *(v0 + 1128);
  v10 = *(v0 + 568);
  v2[2] = v4 + 1;
  sub_22B9D7B1C(v5, v2 + ((v9 + 32) & ~v9) + v8 * v4, type metadata accessor for DatabaseRecord);
  swift_beginAccess();
  sub_22B9C34D8(1, 1, v7, v6, 0);
  swift_endAccess();

  v11 = *(v10 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 992) = v11;

  return MEMORY[0x2822009F8](sub_22B9D118C, v11, 0);
}

uint64_t sub_22B9CFA3C()
{
  v1 = *(v0 + 584);
  sub_22B936C4C((v0 + 136));

  return MEMORY[0x2822009F8](sub_22B9CFAA8, v1, 0);
}

uint64_t sub_22B9CFAA8()
{
  sub_22B960B88(*(v0 + 816), *(v0 + 792));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 912);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22B97FC80(0, v2[2] + 1, 1, v2);
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_22B97FC80((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 832);
  v6 = *(v0 + 1128);
  v7 = *(v0 + 792);
  v2[2] = v4 + 1;
  v139 = v2;
  sub_22B9D7B1C(v7, v2 + ((v6 + 32) & ~v6) + v5 * v4, type metadata accessor for DatabaseRecord);
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 968);
  v9 = *(v0 + 816);
  v10 = *(v0 + 784);
  v11 = *(v0 + 776);
  v12 = *(v0 + 768);
  v140 = sub_22BA0FEFC();
  v13 = sub_22B936CA8(v140, qword_28141AD10);
  sub_22B960B88(v9, v10);
  sub_22B960B88(v9, v11);
  sub_22B960B88(v9, v12);
  v14 = v8;
  v15 = sub_22BA0FEDC();
  v16 = sub_22BA1044C();

  if (!os_log_type_enabled(v15, v16))
  {
    v28 = *(v0 + 784);
    v29 = *(v0 + 776);
    v30 = *(v0 + 768);

    sub_22B9D7B84(v30, type metadata accessor for DatabaseRecord);
    sub_22B9D7B84(v29, type metadata accessor for DatabaseRecord);
    sub_22B9D7B84(v28, type metadata accessor for DatabaseRecord);
    goto LABEL_25;
  }

  v17 = *(v0 + 968);
  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  *(v0 + 552) = v13;
  *v18 = 138413058;
  v20 = v17;
  v21 = _swift_stdlib_bridgeErrorToNSError();
  *(v18 + 4) = v21;
  *v19 = v21;
  *(v18 + 12) = 2080;
  sub_22B95FA40((v0 + 216));
  v22 = *(v0 + 240);
  if (v22)
  {
    v23 = *(v0 + 248);
    sub_22B9358B4((v0 + 216), *(v0 + 240));
    v24 = (*(v23 + 24))(v22, v23);
    v26 = v25;
    sub_22B936C4C((v0 + 216));
    if (v26)
    {
      sub_22B9D7B84(*(v0 + 784), type metadata accessor for DatabaseRecord);
      v27 = v24;
      goto LABEL_14;
    }
  }

  else
  {
    sub_22B936BEC(v0 + 216, &qword_27D8D4FF8, &qword_22BA14748);
  }

  sub_22B9D7B84(*(v0 + 784), type metadata accessor for DatabaseRecord);

  v26 = 0xEA00000000003E64;
  v27 = 0x6975675F6C696E3CLL;
LABEL_14:
  v31 = sub_22B99153C(v27, v26, (v0 + 552));

  *(v18 + 14) = v31;
  *(v18 + 22) = 2080;
  sub_22B95FA40((v0 + 256));
  v32 = *(v0 + 280);
  if (v32)
  {
    v33 = *(v0 + 288);
    sub_22B9358B4((v0 + 256), *(v0 + 280));
    v34 = (*(v33 + 56))(v32, v33);
    v36 = v35;
    sub_22B936C4C((v0 + 256));
    if (v36)
    {
      sub_22B9D7B84(*(v0 + 776), type metadata accessor for DatabaseRecord);
      v37 = v34;
      goto LABEL_19;
    }
  }

  else
  {
    sub_22B936BEC(v0 + 256, &qword_27D8D4FF8, &qword_22BA14748);
  }

  sub_22B9D7B84(*(v0 + 776), type metadata accessor for DatabaseRecord);

  v36 = 0x800000022BA1E4D0;
  v37 = 0xD000000000000010;
LABEL_19:
  v38 = sub_22B99153C(v37, v36, (v0 + 552));

  *(v18 + 24) = v38;
  *(v18 + 32) = 2080;
  sub_22B95FA40((v0 + 296));
  v39 = *(v0 + 320);
  if (!v39)
  {
    sub_22B936BEC(v0 + 296, &qword_27D8D4FF8, &qword_22BA14748);
    goto LABEL_23;
  }

  v40 = *(v0 + 328);
  sub_22B9358B4((v0 + 296), *(v0 + 320));
  v41 = (*(v40 + 48))(v39, v40);
  v43 = v42;
  sub_22B936C4C((v0 + 296));
  if (!v43)
  {
LABEL_23:
    sub_22B9D7B84(*(v0 + 768), type metadata accessor for DatabaseRecord);

    v43 = 0x800000022BA1E4F0;
    v44 = 0xD000000000000010;
    goto LABEL_24;
  }

  sub_22B9D7B84(*(v0 + 768), type metadata accessor for DatabaseRecord);
  v44 = v41;
LABEL_24:
  v29 = sub_22B99153C(v44, v43, (v0 + 552));

  *(v18 + 34) = v29;
  _os_log_impl(&dword_22B92A000, v15, v16, "Error importing: %@ for record(guid = %s, recordType = %s, recordName = %s)", v18, 0x2Au);
  sub_22B936BEC(v19, &qword_27D8D4CD0, qword_22BA14360);
  MEMORY[0x23189ADD0](v19, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x23189ADD0](v13, -1, -1);
  MEMORY[0x23189ADD0](v18, -1, -1);

LABEL_25:
  v45 = sub_22B9C7FF4();
  if (v45 <= 2)
  {
    if (v45 == 1)
    {
      v51 = *(v0 + 896);
      v49 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

LABEL_36:
      v142 = *(v0 + 880);
      goto LABEL_37;
    }

    if (v45 == 2)
    {
      v46 = *(v0 + 880);
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (!v47)
      {
        v142 = v48;
        v49 = *(v0 + 896);
LABEL_37:
        v148 = *(v0 + 864);
LABEL_40:
        v147 = *(v0 + 848);
        goto LABEL_41;
      }

      __break(1u);
      goto LABEL_113;
    }

LABEL_34:
    v49 = *(v0 + 896);
    goto LABEL_36;
  }

  if (v45 != 3)
  {
    if (v45 == 4)
    {
      v50 = *(v0 + 848);
      v147 = v50 + 1;
      if (!__OFADD__(v50, 1))
      {
        v49 = *(v0 + 896);
        v142 = *(v0 + 880);
        v148 = *(v0 + 864);
LABEL_41:
        v53 = *(v0 + 968);
        v54 = *(v0 + 944);
        v55 = *(v0 + 936);
        v56 = *(v0 + 816);
        *(v0 + 520) = 0;
        *(v0 + 528) = 0xE000000000000000;
        sub_22BA108FC();

        *(v0 + 504) = 0xD00000000000001CLL;
        *(v0 + 512) = 0x800000022BA1E4B0;
        MEMORY[0x231899730](v55, v54);
        MEMORY[0x231899730](8250, 0xE200000000000000);
        swift_getErrorValue();
        v57 = sub_22B958118(*(v0 + 440), *(v0 + 448));
        MEMORY[0x231899730](v57);

        sub_22B975FD8(9, v53, *(v0 + 504), *(v0 + 512));

        swift_beginAccess();
        v58 = v53;
        sub_22B9C34D8(1, 2, v55, v54, v53);
        swift_endAccess();

        sub_22B9D7B84(v56, type metadata accessor for DatabaseRecord);
        v59 = *(v0 + 928);
        v60 = *(v0 + 920);
        v143 = *(v0 + 904);
        v144 = *(v0 + 888);
        v145 = *(v0 + 872);
        v146 = *(v0 + 856);
        v61 = *(v0 + 824);
        v62 = *(v0 + 840) + 1;
        v141 = v59;
        if (v62 == v61)
        {
          v63 = v139;
          v64 = v142;
LABEL_43:
          *(v0 + 1080) = v59;
          *(v0 + 1072) = v60;
          *(v0 + 1064) = v63;
          *(v0 + 1056) = v143;
          *(v0 + 1048) = v49;
          *(v0 + 1040) = v144;
          *(v0 + 1032) = v64;
          *(v0 + 1024) = v145;
          *(v0 + 1016) = v148;
          *(v0 + 1008) = v146;
          *(v0 + 1000) = v147;
          v65 = *(v59 + 16);
          if (v65)
          {
            v66 = *(v0 + 712);
            v67 = v59 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
            v68 = *(v66 + 72);

            v69 = MEMORY[0x277D84F90];
            do
            {
              v70 = *(v0 + 728);
              v71 = *(v0 + 720);
              sub_22B960B88(v67, v70);
              sub_22B960B88(v70, v71);
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              v73 = *(v0 + 720);
              if (EnumCaseMultiPayload <= 2)
              {
                if (EnumCaseMultiPayload)
                {
                  if (EnumCaseMultiPayload == 1)
                  {
                    v74 = *(v0 + 680);
                    v80 = *(v0 + 672);
                    v76 = type metadata accessor for ChatRecord;
                    sub_22B9D7B1C(v73, v74, type metadata accessor for ChatRecord);
                    *(v0 + 80) = v80;
                    v77 = type metadata accessor for ChatRecord;
                    v78 = &unk_22BA16D28;
                    v79 = &qword_281416388;
                  }

                  else
                  {
                    v74 = *(v0 + 664);
                    v83 = *(v0 + 656);
                    v76 = type metadata accessor for ItemRecord;
                    sub_22B9D7B1C(v73, v74, type metadata accessor for ItemRecord);
                    *(v0 + 80) = v83;
                    v77 = type metadata accessor for ItemRecord;
                    v78 = &unk_22BA140A0;
                    v79 = &qword_2814161A0;
                  }
                }

                else
                {
                  v74 = *(v0 + 696);
                  v82 = *(v0 + 688);
                  v76 = type metadata accessor for ChatLockRecord;
                  sub_22B9D7B1C(v73, v74, type metadata accessor for ChatLockRecord);
                  *(v0 + 80) = v82;
                  v77 = type metadata accessor for ChatLockRecord;
                  v78 = &unk_22BA147E8;
                  v79 = &qword_27D8D5010;
                }
              }

              else if (EnumCaseMultiPayload > 4)
              {
                if (EnumCaseMultiPayload == 5)
                {
                  v74 = *(v0 + 616);
                  v81 = *(v0 + 608);
                  v76 = type metadata accessor for MessageUpdateRecord;
                  sub_22B9D7B1C(v73, v74, type metadata accessor for MessageUpdateRecord);
                  *(v0 + 80) = v81;
                  v77 = type metadata accessor for MessageUpdateRecord;
                  v78 = &unk_22BA16844;
                  v79 = &unk_281415528;
                }

                else
                {
                  v74 = *(v0 + 600);
                  v85 = *(v0 + 592);
                  v76 = type metadata accessor for UnknownRecord;
                  sub_22B9D7B1C(v73, v74, type metadata accessor for UnknownRecord);
                  *(v0 + 80) = v85;
                  v77 = type metadata accessor for UnknownRecord;
                  v78 = &unk_22BA19A98;
                  v79 = &unk_27D8D5000;
                }
              }

              else if (EnumCaseMultiPayload == 3)
              {
                v74 = *(v0 + 648);
                v75 = *(v0 + 640);
                v76 = type metadata accessor for AttachmentRecord;
                sub_22B9D7B1C(v73, v74, type metadata accessor for AttachmentRecord);
                *(v0 + 80) = v75;
                v77 = type metadata accessor for AttachmentRecord;
                v78 = &unk_22BA1B564;
                v79 = &qword_2814159B0;
              }

              else
              {
                v74 = *(v0 + 632);
                v84 = *(v0 + 624);
                v76 = type metadata accessor for RecoverableMessageRecord;
                sub_22B9D7B1C(v73, v74, type metadata accessor for RecoverableMessageRecord);
                *(v0 + 80) = v84;
                v77 = type metadata accessor for RecoverableMessageRecord;
                v78 = &unk_22BA14FCC;
                v79 = &unk_27D8D5008;
              }

              *(v0 + 88) = sub_22B9D7C4C(v79, v77, v78);
              v86 = sub_22B957E80((v0 + 56));
              sub_22B9D7B1C(v74, v86, v76);
              v87 = *(v0 + 80);
              v88 = *(v0 + 728);
              if (v87)
              {
                v89 = *(v0 + 88);
                sub_22B9358B4((v0 + 56), *(v0 + 80));
                v90 = (*(v89 + 24))(v87, v89);
                v92 = v91;
                sub_22B936C4C((v0 + 56));
                sub_22B9D7B84(v88, type metadata accessor for DatabaseRecord);
                if (v92)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v69 = sub_22B97FB74(0, *(v69 + 2) + 1, 1, v69);
                  }

                  v94 = *(v69 + 2);
                  v93 = *(v69 + 3);
                  if (v94 >= v93 >> 1)
                  {
                    v69 = sub_22B97FB74((v93 > 1), v94 + 1, 1, v69);
                  }

                  *(v69 + 2) = v94 + 1;
                  v95 = &v69[16 * v94];
                  *(v95 + 4) = v90;
                  *(v95 + 5) = v92;
                }
              }

              else
              {
                sub_22B936BEC(v0 + 56, &qword_27D8D4FF8, &qword_22BA14748);
                sub_22B9D7B84(v88, type metadata accessor for DatabaseRecord);
              }

              v67 += v68;
              --v65;
            }

            while (v65);
            v61 = *(v0 + 824);
          }

          else
          {

            v69 = MEMORY[0x277D84F90];
          }

          v128 = sub_22BA0197C(v69);
          *(v0 + 1088) = v128;

          v129 = *(v128 + 16);
          v130 = v61 - v129;
          if (v61 > v129)
          {
            if (qword_281414D30 != -1)
            {
              swift_once();
            }

            sub_22B936CA8(v140, qword_28141AD40);
            v131 = sub_22BA0FEDC();
            v132 = sub_22BA1045C();
            if (os_log_type_enabled(v131, v132))
            {
              v133 = swift_slowAlloc();
              *v133 = 134217984;
              *(v133 + 4) = v130;

              _os_log_impl(&dword_22B92A000, v131, v132, "Found %ld records without GUIDs!", v133, 0xCu);
              MEMORY[0x23189ADD0](v133, -1, -1);

LABEL_105:
              v134 = swift_task_alloc();
              *(v0 + 1096) = v134;
              *v134 = v0;
              v134[1] = sub_22B9D2088;
              v135 = *(v0 + 576);
              v136 = *(v0 + 568);
              v137 = *(v0 + 1133);

              return sub_22B9CD584(v128, v137, v136, v135);
            }
          }

          goto LABEL_105;
        }

        v63 = v139;
        v64 = v142;
        while (1)
        {
          *(v0 + 928) = v59;
          *(v0 + 920) = v60;
          *(v0 + 912) = v63;
          *(v0 + 904) = v143;
          *(v0 + 896) = v49;
          *(v0 + 888) = v144;
          *(v0 + 880) = v64;
          *(v0 + 872) = v145;
          *(v0 + 864) = v148;
          *(v0 + 856) = v146;
          *(v0 + 848) = v147;
          *(v0 + 840) = v62;
          v98 = *(v0 + 816);
          v99 = *(v0 + 808);
          sub_22B960B88(*(v0 + 560) + ((*(v0 + 1128) + 32) & ~*(v0 + 1128)) + *(v0 + 832) * v62, v98);
          sub_22B960B88(v98, v99);
          LODWORD(v98) = swift_getEnumCaseMultiPayload();
          sub_22B9D7B84(v99, type metadata accessor for DatabaseRecord);
          if (v98 == 6)
          {
            sub_22B960B88(*(v0 + 816), *(v0 + 800));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = sub_22B97FC80(0, v60[2] + 1, 1, v60);
            }

            v101 = v60[2];
            v100 = v60[3];
            if (v101 >= v100 >> 1)
            {
              v60 = sub_22B97FC80((v100 > 1), v101 + 1, 1, v60);
            }

            v102 = *(v0 + 832);
            v103 = *(v0 + 1128);
            v104 = *(v0 + 800);
            v60[2] = v101 + 1;
            sub_22B9D7B1C(v104, v60 + ((v103 + 32) & ~v103) + v102 * v101, type metadata accessor for DatabaseRecord);
            if (qword_2814157A8 != -1)
            {
              swift_once();
            }

            v105 = *(v0 + 816);
            swift_beginAccess();
            sub_22B9C34D8(1, 0, 0x6E776F6E6B6E75, 0xE700000000000000, 0);
            swift_endAccess();
            sub_22B9D7B84(v105, type metadata accessor for DatabaseRecord);
            goto LABEL_71;
          }

          sub_22B95FA40((v0 + 16));
          v106 = *(v0 + 40);
          if (v106)
          {
            v107 = *(v0 + 48);
            sub_22B9358B4((v0 + 16), *(v0 + 40));
            v29 = (*(v107 + 56))(v106, v107);
            v13 = v108;
            *(v0 + 936) = v29;
            *(v0 + 944) = v108;
            sub_22B936C4C((v0 + 16));
            if (v13)
            {
              if (qword_2814157A8 == -1)
              {
                goto LABEL_109;
              }

              goto LABEL_116;
            }
          }

          else
          {
            sub_22B936BEC(v0 + 16, &qword_27D8D4FF8, &qword_22BA14748);
          }

          sub_22B960B88(*(v0 + 816), *(v0 + 744));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v60 = sub_22B97FC80(0, v60[2] + 1, 1, v60);
          }

          v110 = v60[2];
          v109 = v60[3];
          if (v110 >= v109 >> 1)
          {
            v60 = sub_22B97FC80((v109 > 1), v110 + 1, 1, v60);
          }

          v111 = v49;
          v112 = *(v0 + 832);
          v113 = *(v0 + 1128);
          v114 = *(v0 + 744);
          v60[2] = v110 + 1;
          sub_22B9D7B1C(v114, v60 + ((v113 + 32) & ~v113) + v112 * v110, type metadata accessor for DatabaseRecord);
          if (qword_281414D18 != -1)
          {
            swift_once();
          }

          v115 = *(v0 + 816);
          v116 = *(v0 + 736);
          sub_22B936CA8(v140, qword_28141AD10);
          sub_22B960B88(v115, v116);
          v117 = sub_22BA0FEDC();
          v118 = sub_22BA1044C();
          if (os_log_type_enabled(v117, v118))
          {
            break;
          }

          v96 = *(v0 + 816);
          v97 = *(v0 + 736);

          sub_22B9D7B84(v97, type metadata accessor for DatabaseRecord);
          v59 = v141;
          sub_22B9D7B84(v96, type metadata accessor for DatabaseRecord);
LABEL_70:
          v49 = v111;
          v64 = v142;
LABEL_71:
          v61 = *(v0 + 824);
          v62 = *(v0 + 840) + 1;
          if (v62 == v61)
          {
            goto LABEL_43;
          }
        }

        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        *(v0 + 536) = v120;
        *v119 = 136315138;
        sub_22B95FA40((v0 + 96));
        v121 = *(v0 + 120);
        if (v121)
        {
          v122 = *(v0 + 128);
          sub_22B9358B4((v0 + 96), *(v0 + 120));
          v123 = (*(v122 + 24))(v121, v122);
          v125 = v124;
          sub_22B936C4C((v0 + 96));
          if (v125)
          {
            sub_22B9D7B84(*(v0 + 736), type metadata accessor for DatabaseRecord);
LABEL_96:
            v126 = *(v0 + 816);
            v127 = sub_22B99153C(v123, v125, (v0 + 536));

            *(v119 + 4) = v127;
            _os_log_impl(&dword_22B92A000, v117, v118, "No record type for record guid %s", v119, 0xCu);
            sub_22B936C4C(v120);
            MEMORY[0x23189ADD0](v120, -1, -1);
            MEMORY[0x23189ADD0](v119, -1, -1);

            sub_22B9D7B84(v126, type metadata accessor for DatabaseRecord);
            v63 = v139;
            v59 = v141;
            goto LABEL_70;
          }
        }

        else
        {
          sub_22B936BEC(v0 + 96, &qword_27D8D4FF8, &qword_22BA14748);
        }

        sub_22B9D7B84(*(v0 + 736), type metadata accessor for DatabaseRecord);

        v125 = 0xE400000000000000;
        v123 = 1701736302;
        goto LABEL_96;
      }

LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    goto LABEL_34;
  }

  v52 = *(v0 + 864);
  v148 = v52 + 1;
  if (!__OFADD__(v52, 1))
  {
    v49 = *(v0 + 896);
    v142 = *(v0 + 880);
    goto LABEL_40;
  }

LABEL_115:
  __break(1u);
LABEL_116:
  swift_once();
LABEL_109:
  *(v0 + 952) = qword_28141AD98;
  swift_beginAccess();
  sub_22B9C34D8(1, 0, v29, v13, 0);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_22B9CF608, 0, 0);
}

uint64_t sub_22B9D0F10()
{
  v1 = *(v0 + 584);
  sub_22B936C4C((v0 + 136));

  return MEMORY[0x2822009F8](sub_22B9D0F7C, v1, 0);
}

uint64_t sub_22B9D0F7C()
{
  v1 = *(v0 + 816);
  if (*(v0 + 1134))
  {
    v2 = (v0 + 760);
    sub_22B960B88(v1, *(v0 + 760));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 928);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_22B97FC80(0, v4[2] + 1, 1, v4);
    }

    v6 = v4[2];
    v5 = v4[3];
    v7 = v6 + 1;
    if (v6 >= v5 >> 1)
    {
      v4 = sub_22B97FC80((v5 > 1), v6 + 1, 1, v4);
    }

    v8 = *(v0 + 920);
    v9 = v4;
  }

  else
  {
    v2 = (v0 + 752);
    sub_22B960B88(v1, *(v0 + 752));
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 920);
    if ((v10 & 1) == 0)
    {
      v4 = sub_22B97FC80(0, v4[2] + 1, 1, v4);
    }

    v6 = v4[2];
    v11 = v4[3];
    v7 = v6 + 1;
    if (v6 >= v11 >> 1)
    {
      v4 = sub_22B97FC80((v11 > 1), v6 + 1, 1, v4);
    }

    v9 = *(v0 + 928);
    v8 = v4;
  }

  v12 = *v2;
  *(v0 + 984) = v9;
  *(v0 + 976) = v8;
  v13 = *(v0 + 944);
  v14 = *(v0 + 936);
  v15 = *(v0 + 832);
  v16 = *(v0 + 1128);
  v17 = *(v0 + 568);
  v4[2] = v7;
  sub_22B9D7B1C(v12, v4 + ((v16 + 32) & ~v16) + v15 * v6, type metadata accessor for DatabaseRecord);
  swift_beginAccess();
  sub_22B9C34D8(1, 1, v14, v13, 0);
  swift_endAccess();

  v18 = *(v17 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 992) = v18;

  return MEMORY[0x2822009F8](sub_22B9D118C, v18, 0);
}

uint64_t sub_22B9D118C()
{
  v1 = *(v0 + 992);
  v2 = swift_beginAccess();
  v5 = *(v1 + 120);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 584);
    *(v1 + 120) = v7;
    v2 = sub_22B9D1218;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22B9D1218()
{
  sub_22B95FA40((v0 + 176));
  v1 = *(v0 + 200);
  if (!v1)
  {
    sub_22B936BEC(v0 + 176, &qword_27D8D4FF8, &qword_22BA14748);
    goto LABEL_9;
  }

  v2 = *(v0 + 208);
  sub_22B9358B4((v0 + 176), *(v0 + 200));
  v3 = (*(v2 + 56))(v1, v2);
  v5 = v4;
  sub_22B936C4C((v0 + 176));
  if (!v5)
  {
LABEL_9:
    sub_22B9D7B84(*(v0 + 816), type metadata accessor for DatabaseRecord);
    goto LABEL_10;
  }

  v6 = v5;
  v7 = *(v0 + 816);
  v8 = sub_22B9C2E30(v3, v6);
  v9 = sub_22B9D7B84(v7, type metadata accessor for DatabaseRecord);
  if (v8 > 2u)
  {
    if (v8 != 3)
    {
      if (v8 == 4)
      {
        v99 = *(v0 + 856);
        v15 = v99 + 1;
        if (!__OFADD__(v99, 1))
        {
          v110 = *(v0 + 904);
          v13 = *(v0 + 888);
          v14 = *(v0 + 872);
          goto LABEL_14;
        }

        goto LABEL_95;
      }

      goto LABEL_10;
    }

LABEL_92:
    v101 = *(v0 + 872);
    v14 = v101 + 1;
    if (!__OFADD__(v101, 1))
    {
      v110 = *(v0 + 904);
      v13 = *(v0 + 888);
      goto LABEL_13;
    }

LABEL_96:
    __break(1u);
    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  if (v8 == 1)
  {
    v100 = *(v0 + 904);
    v110 = v100 + 1;
    if (!__OFADD__(v100, 1))
    {
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_92;
  }

  if (v8 != 2)
  {
LABEL_10:
    v110 = *(v0 + 904);
LABEL_11:
    v13 = *(v0 + 888);
    goto LABEL_12;
  }

  v12 = *(v0 + 888);
  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v110 = *(v0 + 904);
LABEL_12:
  v14 = *(v0 + 872);
LABEL_13:
  v15 = *(v0 + 856);
LABEL_14:
  v16 = *(v0 + 984);
  v17 = *(v0 + 976);
  v106 = *(v0 + 912);
  v107 = *(v0 + 896);
  v108 = *(v0 + 880);
  v109 = *(v0 + 864);
  v18 = *(v0 + 848);
  v19 = *(v0 + 824);
  v20 = *(v0 + 840) + 1;
  v104 = v16;
  if (v20 == v19)
  {
LABEL_15:
    *(v0 + 1080) = v16;
    *(v0 + 1072) = v17;
    *(v0 + 1064) = v106;
    *(v0 + 1056) = v110;
    *(v0 + 1048) = v107;
    *(v0 + 1040) = v13;
    *(v0 + 1032) = v108;
    *(v0 + 1024) = v14;
    *(v0 + 1016) = v109;
    *(v0 + 1008) = v15;
    *(v0 + 1000) = v18;
    v21 = *(v16 + 16);
    if (v21)
    {
      v22 = *(v0 + 712);
      v23 = v16 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
      v24 = *(v22 + 72);

      v25 = MEMORY[0x277D84F90];
      do
      {
        v26 = *(v0 + 728);
        v27 = *(v0 + 720);
        sub_22B960B88(v23, v26);
        sub_22B960B88(v26, v27);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v29 = *(v0 + 720);
        if (EnumCaseMultiPayload <= 2)
        {
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload == 1)
            {
              v30 = *(v0 + 680);
              v36 = *(v0 + 672);
              v32 = type metadata accessor for ChatRecord;
              sub_22B9D7B1C(v29, v30, type metadata accessor for ChatRecord);
              *(v0 + 80) = v36;
              v33 = type metadata accessor for ChatRecord;
              v34 = &unk_22BA16D28;
              v35 = &qword_281416388;
            }

            else
            {
              v30 = *(v0 + 664);
              v39 = *(v0 + 656);
              v32 = type metadata accessor for ItemRecord;
              sub_22B9D7B1C(v29, v30, type metadata accessor for ItemRecord);
              *(v0 + 80) = v39;
              v33 = type metadata accessor for ItemRecord;
              v34 = &unk_22BA140A0;
              v35 = &qword_2814161A0;
            }
          }

          else
          {
            v30 = *(v0 + 696);
            v38 = *(v0 + 688);
            v32 = type metadata accessor for ChatLockRecord;
            sub_22B9D7B1C(v29, v30, type metadata accessor for ChatLockRecord);
            *(v0 + 80) = v38;
            v33 = type metadata accessor for ChatLockRecord;
            v34 = &unk_22BA147E8;
            v35 = &qword_27D8D5010;
          }
        }

        else if (EnumCaseMultiPayload > 4)
        {
          if (EnumCaseMultiPayload == 5)
          {
            v30 = *(v0 + 616);
            v37 = *(v0 + 608);
            v32 = type metadata accessor for MessageUpdateRecord;
            sub_22B9D7B1C(v29, v30, type metadata accessor for MessageUpdateRecord);
            *(v0 + 80) = v37;
            v33 = type metadata accessor for MessageUpdateRecord;
            v34 = &unk_22BA16844;
            v35 = &unk_281415528;
          }

          else
          {
            v30 = *(v0 + 600);
            v41 = *(v0 + 592);
            v32 = type metadata accessor for UnknownRecord;
            sub_22B9D7B1C(v29, v30, type metadata accessor for UnknownRecord);
            *(v0 + 80) = v41;
            v33 = type metadata accessor for UnknownRecord;
            v34 = &unk_22BA19A98;
            v35 = &unk_27D8D5000;
          }
        }

        else if (EnumCaseMultiPayload == 3)
        {
          v30 = *(v0 + 648);
          v31 = *(v0 + 640);
          v32 = type metadata accessor for AttachmentRecord;
          sub_22B9D7B1C(v29, v30, type metadata accessor for AttachmentRecord);
          *(v0 + 80) = v31;
          v33 = type metadata accessor for AttachmentRecord;
          v34 = &unk_22BA1B564;
          v35 = &qword_2814159B0;
        }

        else
        {
          v30 = *(v0 + 632);
          v40 = *(v0 + 624);
          v32 = type metadata accessor for RecoverableMessageRecord;
          sub_22B9D7B1C(v29, v30, type metadata accessor for RecoverableMessageRecord);
          *(v0 + 80) = v40;
          v33 = type metadata accessor for RecoverableMessageRecord;
          v34 = &unk_22BA14FCC;
          v35 = &unk_27D8D5008;
        }

        *(v0 + 88) = sub_22B9D7C4C(v35, v33, v34);
        v42 = sub_22B957E80((v0 + 56));
        sub_22B9D7B1C(v30, v42, v32);
        v43 = *(v0 + 80);
        v44 = *(v0 + 728);
        if (v43)
        {
          v45 = *(v0 + 88);
          sub_22B9358B4((v0 + 56), *(v0 + 80));
          v46 = (*(v45 + 24))(v43, v45);
          v48 = v47;
          sub_22B936C4C((v0 + 56));
          sub_22B9D7B84(v44, type metadata accessor for DatabaseRecord);
          if (v48)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_22B97FB74(0, *(v25 + 2) + 1, 1, v25);
            }

            v50 = *(v25 + 2);
            v49 = *(v25 + 3);
            if (v50 >= v49 >> 1)
            {
              v25 = sub_22B97FB74((v49 > 1), v50 + 1, 1, v25);
            }

            *(v25 + 2) = v50 + 1;
            v51 = &v25[16 * v50];
            *(v51 + 4) = v46;
            *(v51 + 5) = v48;
          }
        }

        else
        {
          sub_22B936BEC(v0 + 56, &qword_27D8D4FF8, &qword_22BA14748);
          sub_22B9D7B84(v44, type metadata accessor for DatabaseRecord);
        }

        v23 += v24;
        --v21;
      }

      while (v21);
      v19 = *(v0 + 824);
    }

    else
    {

      v25 = MEMORY[0x277D84F90];
    }

    v87 = sub_22BA0197C(v25);
    *(v0 + 1088) = v87;

    v88 = *(v87 + 16);
    v89 = v19 - v88;
    if (v19 > v88)
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v90 = sub_22BA0FEFC();
      sub_22B936CA8(v90, qword_28141AD40);
      v91 = sub_22BA0FEDC();
      v92 = sub_22BA1045C();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 134217984;
        *(v93 + 4) = v89;

        _os_log_impl(&dword_22B92A000, v91, v92, "Found %ld records without GUIDs!", v93, 0xCu);
        MEMORY[0x23189ADD0](v93, -1, -1);

LABEL_77:
        v94 = swift_task_alloc();
        *(v0 + 1096) = v94;
        *v94 = v0;
        v94[1] = sub_22B9D2088;
        v95 = *(v0 + 576);
        v96 = *(v0 + 568);
        v97 = *(v0 + 1133);

        return sub_22B9CD584(v87, v97, v96, v95);
      }
    }

    goto LABEL_77;
  }

  v105 = *(v0 + 848);
  v102 = v14;
  v103 = v13;
  while (1)
  {
    *(v0 + 928) = v16;
    *(v0 + 920) = v17;
    *(v0 + 912) = v106;
    *(v0 + 904) = v110;
    *(v0 + 896) = v107;
    *(v0 + 888) = v13;
    *(v0 + 880) = v108;
    *(v0 + 872) = v14;
    *(v0 + 864) = v109;
    *(v0 + 856) = v15;
    *(v0 + 848) = v18;
    *(v0 + 840) = v20;
    v54 = *(v0 + 816);
    v55 = *(v0 + 808);
    sub_22B960B88(*(v0 + 560) + ((*(v0 + 1128) + 32) & ~*(v0 + 1128)) + *(v0 + 832) * v20, v54);
    sub_22B960B88(v54, v55);
    LODWORD(v54) = swift_getEnumCaseMultiPayload();
    sub_22B9D7B84(v55, type metadata accessor for DatabaseRecord);
    if (v54 == 6)
    {
      sub_22B960B88(*(v0 + 816), *(v0 + 800));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_22B97FC80(0, v17[2] + 1, 1, v17);
      }

      v57 = v17[2];
      v56 = v17[3];
      if (v57 >= v56 >> 1)
      {
        v17 = sub_22B97FC80((v56 > 1), v57 + 1, 1, v17);
      }

      v58 = *(v0 + 832);
      v59 = *(v0 + 1128);
      v60 = *(v0 + 800);
      v17[2] = v57 + 1;
      sub_22B9D7B1C(v60, v17 + ((v59 + 32) & ~v59) + v58 * v57, type metadata accessor for DatabaseRecord);
      if (qword_2814157A8 != -1)
      {
        swift_once();
      }

      v61 = *(v0 + 816);
      swift_beginAccess();
      sub_22B9C34D8(1, 0, 0x6E776F6E6B6E75, 0xE700000000000000, 0);
      swift_endAccess();
      sub_22B9D7B84(v61, type metadata accessor for DatabaseRecord);
      goto LABEL_43;
    }

    sub_22B95FA40((v0 + 16));
    v62 = *(v0 + 40);
    if (v62)
    {
      break;
    }

    sub_22B936BEC(v0 + 16, &qword_27D8D4FF8, &qword_22BA14748);
LABEL_56:
    sub_22B960B88(*(v0 + 816), *(v0 + 744));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_22B97FC80(0, v17[2] + 1, 1, v17);
    }

    v68 = v17[2];
    v67 = v17[3];
    if (v68 >= v67 >> 1)
    {
      v17 = sub_22B97FC80((v67 > 1), v68 + 1, 1, v17);
    }

    v69 = v15;
    v70 = *(v0 + 832);
    v71 = *(v0 + 1128);
    v72 = *(v0 + 744);
    v17[2] = v68 + 1;
    sub_22B9D7B1C(v72, v17 + ((v71 + 32) & ~v71) + v70 * v68, type metadata accessor for DatabaseRecord);
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v73 = *(v0 + 816);
    v74 = *(v0 + 736);
    v75 = sub_22BA0FEFC();
    sub_22B936CA8(v75, qword_28141AD10);
    sub_22B960B88(v73, v74);
    v76 = sub_22BA0FEDC();
    v77 = sub_22BA1044C();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *(v0 + 536) = v79;
      *v78 = 136315138;
      sub_22B95FA40((v0 + 96));
      v80 = *(v0 + 120);
      if (v80)
      {
        v81 = *(v0 + 128);
        sub_22B9358B4((v0 + 96), *(v0 + 120));
        v82 = (*(v81 + 24))(v80, v81);
        v84 = v83;
        sub_22B936C4C((v0 + 96));
        if (v84)
        {
          sub_22B9D7B84(*(v0 + 736), type metadata accessor for DatabaseRecord);
LABEL_68:
          v85 = *(v0 + 816);
          v86 = sub_22B99153C(v82, v84, (v0 + 536));

          *(v78 + 4) = v86;
          _os_log_impl(&dword_22B92A000, v76, v77, "No record type for record guid %s", v78, 0xCu);
          sub_22B936C4C(v79);
          MEMORY[0x23189ADD0](v79, -1, -1);
          MEMORY[0x23189ADD0](v78, -1, -1);

          sub_22B9D7B84(v85, type metadata accessor for DatabaseRecord);
          v13 = v103;
          v16 = v104;
          v14 = v102;
          goto LABEL_42;
        }
      }

      else
      {
        sub_22B936BEC(v0 + 96, &qword_27D8D4FF8, &qword_22BA14748);
      }

      sub_22B9D7B84(*(v0 + 736), type metadata accessor for DatabaseRecord);

      v84 = 0xE400000000000000;
      v82 = 1701736302;
      goto LABEL_68;
    }

    v52 = *(v0 + 816);
    v53 = *(v0 + 736);

    sub_22B9D7B84(v53, type metadata accessor for DatabaseRecord);
    sub_22B9D7B84(v52, type metadata accessor for DatabaseRecord);
LABEL_42:
    v15 = v69;
    v18 = v105;
LABEL_43:
    v19 = *(v0 + 824);
    v20 = *(v0 + 840) + 1;
    if (v20 == v19)
    {
      goto LABEL_15;
    }
  }

  v63 = *(v0 + 48);
  sub_22B9358B4((v0 + 16), *(v0 + 40));
  v64 = (*(v63 + 56))(v62, v63);
  v66 = v65;
  *(v0 + 936) = v64;
  *(v0 + 944) = v65;
  sub_22B936C4C((v0 + 16));
  if (!v66)
  {
    goto LABEL_56;
  }

  if (qword_2814157A8 != -1)
  {
    swift_once();
  }

  *(v0 + 952) = qword_28141AD98;
  swift_beginAccess();
  sub_22B9C34D8(1, 0, v64, v66, 0);
  swift_endAccess();
  v9 = sub_22B9CF608;
  v10 = 0;
  v11 = 0;

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22B9D2088()
{
  v1 = *(*v0 + 584);

  return MEMORY[0x2822009F8](sub_22B9D2198, v1, 0);
}

uint64_t sub_22B9D2198()
{
  v9 = v0;
  v1 = *(v0 + 1088);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_22B9801C4(*(v1 + 16), 0);
    v4 = sub_22B954698(&v8, v3 + 4, v2, v1);
    sub_22B951944(v8);
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  *(v0 + 1104) = v3;
  *(v0 + 1132) = *(*sub_22B9358B4((*(v0 + 568) + 16), *(*(v0 + 568) + 40)) + 17);
  v5 = swift_task_alloc();
  *(v0 + 1112) = v5;
  *v5 = v0;
  v5[1] = sub_22B9D22C4;
  v6 = *(v0 + 1133);

  return sub_22B9D4560(v3, v6, (v0 + 1132));
}

uint64_t sub_22B9D22C4()
{
  v1 = *(*v0 + 584);

  return MEMORY[0x2822009F8](sub_22B9D23F0, v1, 0);
}

uint64_t sub_22B9D23F0()
{
  v1 = *(*(v0 + 568) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 1120) = v1;
  return MEMORY[0x2822009F8](sub_22B9D2420, v1, 0);
}

uint64_t sub_22B9D2420()
{
  v1 = v0[140];
  swift_beginAccess();
  v2 = *(v1 + 144);
  v3 = *(v2 + 16);

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_22B990B64(3);
  if ((v5 & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = v0[132];
  v8 = (*(v2 + 56) + 16 * v4);
  v9 = *v8 + v7;
  if (__OFADD__(*v8, v7))
  {
    __break(1u);
    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  v10 = v0[131];
  v11 = v8[1];
  v12 = v11 + v10;
  if (__OFADD__(v11, v10))
  {
    __break(1u);
LABEL_7:
    v9 = v0[132];
    v12 = v0[131];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v2;
  sub_22B9BB0F8(v9, v12, 3, isUniquelyReferenced_nonNull_native);
  v14 = v0[140];
  *(v1 + 144) = v16;

  v4 = sub_22B9D2538;
  v5 = v14;
  v6 = 0;

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22B9D2538()
{
  v1 = v0[140];
  v2 = *(v1 + 152);
  v3 = *(v2 + 16);

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_22B990B64(3);
  if ((v5 & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = v0[130];
  v8 = (*(v2 + 56) + 16 * v4);
  v9 = *v8 + v7;
  if (__OFADD__(*v8, v7))
  {
    __break(1u);
    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  v10 = v0[129];
  v11 = v8[1];
  v12 = v11 + v10;
  if (__OFADD__(v11, v10))
  {
    __break(1u);
LABEL_7:
    v9 = v0[130];
    v12 = v0[129];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v2;
  sub_22B9BB0F8(v9, v12, 3, isUniquelyReferenced_nonNull_native);
  v14 = v0[140];
  *(v1 + 152) = v16;

  v4 = sub_22B9D263C;
  v5 = v14;
  v6 = 0;

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22B9D263C()
{
  v1 = v0[140];
  v2 = *(v1 + 160);
  v3 = *(v2 + 16);

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_22B990B64(3);
  if ((v5 & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = v0[128];
  v8 = (*(v2 + 56) + 16 * v4);
  v9 = *v8 + v7;
  if (__OFADD__(*v8, v7))
  {
    __break(1u);
    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  v10 = v0[127];
  v11 = v8[1];
  v12 = v11 + v10;
  if (__OFADD__(v11, v10))
  {
    __break(1u);
LABEL_7:
    v9 = v0[128];
    v12 = v0[127];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v2;
  sub_22B9BB0F8(v9, v12, 3, isUniquelyReferenced_nonNull_native);
  v14 = v0[140];
  *(v1 + 160) = v16;

  v4 = sub_22B9D2740;
  v5 = v14;
  v6 = 0;

  return MEMORY[0x2822009F8](v4, v5, v6);
}

unint64_t sub_22B9D2740()
{
  v1 = v0[140];
  v2 = *(v1 + 168);
  v3 = *(v2 + 16);

  if (!v3)
  {
    goto LABEL_7;
  }

  result = sub_22B990B64(3);
  if ((v5 & 1) == 0)
  {
    goto LABEL_7;
  }

  v6 = v0[126];
  v7 = (*(v2 + 56) + 16 * result);
  v8 = *v7 + v6;
  if (__OFADD__(*v7, v6))
  {
    __break(1u);
    return result;
  }

  v9 = v0[125];
  v10 = v7[1];
  v11 = v10 + v9;
  if (__OFADD__(v10, v9))
  {
    __break(1u);
LABEL_7:
    v8 = v0[126];
    v11 = v0[125];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22B9BB0F8(v8, v11, 3, isUniquelyReferenced_nonNull_native);
  *(v1 + 168) = v2;

  v13 = v0[1];
  v14 = v0[135];
  v15 = v0[134];
  v16 = v0[133];

  return v13(v14, v15, v16);
}

uint64_t sub_22B9D295C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for ItemRecord(0);
  v2[5] = swift_task_alloc();
  v2[6] = type metadata accessor for ActionRecord(0);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for MessageRecord(0);
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for ChatRecord(0);
  v2[11] = swift_task_alloc();
  v3 = sub_22BA0FD8C();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = type metadata accessor for DatabaseRecord(0);
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9D2BAC, v1, 0);
}

uint64_t sub_22B9D2BAC()
{
  v1 = v0[2];
  v58 = *(v0[13] + 56);
  v58(v0[23], 1, 1, v0[12]);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[17];
    v4 = v0[13];
    v54 = v0[8];
    v55 = v0[10];
    v53 = v0[6];
    v5 = v0[2] + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = (v4 + 48);
    v7 = (v4 + 32);
    v51 = (v4 + 8);
    v52 = (v4 + 48);
    v59 = (v4 + 32);
    v60 = *(v3 + 72);
    do
    {
      v12 = v0[18];
      v11 = v0[19];
      sub_22B960B88(v5, v11);
      sub_22B960B88(v11, v12);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2 || EnumCaseMultiPayload == 0)
      {
        v8 = v0[22];
        v9 = v0[18];
        v10 = v0[12];
        sub_22B9D7B84(v0[19], type metadata accessor for DatabaseRecord);
        v7 = v59;
        sub_22B9D7B84(v9, type metadata accessor for DatabaseRecord);
        v58(v8, 1, 1, v10);
      }

      else
      {
        if (EnumCaseMultiPayload == 1)
        {
          v15 = v0[11];
          sub_22B9D7B1C(v0[18], v15, type metadata accessor for ChatRecord);
          v16 = v15 + *(v55 + 100);
          if (*(v16 + 8))
          {
            v17 = v0[22];
            v18 = v0[12];
            sub_22B9D7B84(v0[11], type metadata accessor for ChatRecord);
            v58(v17, 1, 1, v18);
          }

          else
          {
            v24 = [objc_opt_self() __im_dateWithNanosecondTimeIntervalSinceReferenceDate_];
            if (v24)
            {
              v25 = v24;
              sub_22BA0FD5C();

              v26 = 0;
            }

            else
            {
              v26 = 1;
            }

            v28 = v0[21];
            v27 = v0[22];
            v29 = v0[12];
            sub_22B9D7B84(v0[11], type metadata accessor for ChatRecord);
            v58(v28, v26, 1, v29);
            sub_22B9D7BE4(v28, v27, &unk_27D8D4A90, &qword_22BA126A0);
            v7 = v59;
          }
        }

        else
        {
          sub_22B9D7B1C(v0[18], v0[5], type metadata accessor for ItemRecord);
          v19 = swift_getEnumCaseMultiPayload();
          v20 = v0[22];
          v21 = v0[5];
          if (v19 > 1)
          {
            v22 = v0[7];
            sub_22B9D7B1C(v21, v22, type metadata accessor for ActionRecord);
            sub_22B9934AC(v22 + *(v53 + 64), v20, &unk_27D8D4A90, &qword_22BA126A0);
            v23 = type metadata accessor for ActionRecord;
          }

          else
          {
            v22 = v0[9];
            sub_22B9D7B1C(v21, v22, type metadata accessor for MessageRecord);
            sub_22B9934AC(v22 + *(v54 + 56), v20, &unk_27D8D4A90, &qword_22BA126A0);
            v23 = type metadata accessor for MessageRecord;
          }

          sub_22B9D7B84(v22, v23);
        }

        v30 = v0[22];
        v31 = v0[12];
        v32 = *v6;
        if ((*v6)(v30, 1, v31) != 1)
        {
          v56 = v0[23];
          v33 = v7;
          v34 = v0[20];
          v57 = *v33;
          (*v33)(v0[15], v30, v31);
          sub_22B9934AC(v56, v34, &unk_27D8D4A90, &qword_22BA126A0);
          v35 = v32(v34, 1, v31);
          v36 = v0[12];
          if (v35 == 1)
          {
            v37 = v0[23];
            v38 = v0[20];
            v39 = v0[15];
            sub_22B9D7B84(v0[19], type metadata accessor for DatabaseRecord);
            sub_22B936BEC(v37, &unk_27D8D4A90, &qword_22BA126A0);
            sub_22B936BEC(v38, &unk_27D8D4A90, &qword_22BA126A0);
            v40 = v39;
            v7 = v59;
            v57(v37, v40, v36);
            v58(v37, 0, 1, v36);
          }

          else
          {
            v41 = v0[19];
            v42 = v0[14];
            v57(v42, v0[20], v0[12]);
            v43 = sub_22BA0FD0C();
            v44 = *v51;
            (*v51)(v42, v36);
            sub_22B9D7B84(v41, type metadata accessor for DatabaseRecord);
            if (v43)
            {
              v45 = v0[23];
              v46 = v0[15];
              v47 = v0[12];
              sub_22B936BEC(v45, &unk_27D8D4A90, &qword_22BA126A0);
              v7 = v59;
              v57(v45, v46, v47);
              v58(v45, 0, 1, v47);
              v6 = v52;
            }

            else
            {
              v44(v0[15], v0[12]);
              v6 = v52;
              v7 = v59;
            }
          }

          goto LABEL_5;
        }

        sub_22B9D7B84(v0[19], type metadata accessor for DatabaseRecord);
      }

      sub_22B936BEC(v0[22], &unk_27D8D4A90, &qword_22BA126A0);
LABEL_5:
      v5 += v60;
      --v2;
    }

    while (v2);
  }

  v48 = swift_task_alloc();
  v0[24] = v48;
  *v48 = v0;
  v48[1] = sub_22B9D3234;
  v49 = v0[23];

  return sub_22B9D509C(v49);
}

uint64_t sub_22B9D3234()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_22B9D3344, v1, 0);
}

uint64_t sub_22B9D3344()
{
  sub_22B936BEC(*(v0 + 184), &unk_27D8D4A90, &qword_22BA126A0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B9D345C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = type metadata accessor for UnknownRecord(0);
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for MessageUpdateRecord(0);
  v2[12] = swift_task_alloc();
  v2[13] = type metadata accessor for RecoverableMessageRecord(0);
  v2[14] = swift_task_alloc();
  v2[15] = type metadata accessor for AttachmentRecord(0);
  v2[16] = swift_task_alloc();
  v2[17] = type metadata accessor for ItemRecord(0);
  v2[18] = swift_task_alloc();
  v2[19] = type metadata accessor for ChatRecord(0);
  v2[20] = swift_task_alloc();
  v2[21] = type metadata accessor for ChatLockRecord(0);
  v2[22] = swift_task_alloc();
  v3 = type metadata accessor for DatabaseRecord(0);
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9D3684, v1, 0);
}

uint64_t sub_22B9D3684()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  *(v0 + 224) = v2;
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 192);
    v5 = *(v4 + 80);
    *(v0 + 264) = v5;
    v6 = *(v4 + 72);
    *(v0 + 232) = v6;
    while (1)
    {
      *(v0 + 240) = v3;
      v7 = *(v0 + 208);
      v8 = *(v0 + 216);
      sub_22B960B88(v1 + ((v5 + 32) & ~v5) + v6 * v3, v8);
      sub_22B960B88(v8, v7);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        break;
      }

      sub_22B9D7B84(*(v0 + 216), type metadata accessor for DatabaseRecord);
      v9 = *(v0 + 224);
      v10 = *(v0 + 240) + 1;
      sub_22B9D7B84(*(v0 + 208), type metadata accessor for DatabaseRecord);
      if (v10 == v9)
      {
        goto LABEL_6;
      }

      v6 = *(v0 + 232);
      v3 = *(v0 + 240) + 1;
      LOBYTE(v5) = *(v0 + 264);
      v1 = *(v0 + 56);
    }

    sub_22B9D7B84(*(v0 + 208), type metadata accessor for DatabaseRecord);

    return MEMORY[0x2822009F8](sub_22B9D3898, 0, 0);
  }

  else
  {
LABEL_6:

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_22B9D3898()
{
  sub_22B960B88(v0[27], v0[25]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[25];
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v9 = v0[19];
        v3 = v0[20];
        v5 = type metadata accessor for ChatRecord;
        sub_22B9D7B1C(v2, v3, type metadata accessor for ChatRecord);
        v0[5] = v9;
        v6 = &qword_281416388;
        v7 = type metadata accessor for ChatRecord;
        v8 = &unk_22BA16D28;
      }

      else
      {
        v12 = v0[17];
        v3 = v0[18];
        v5 = type metadata accessor for ItemRecord;
        sub_22B9D7B1C(v2, v3, type metadata accessor for ItemRecord);
        v0[5] = v12;
        v6 = &qword_2814161A0;
        v7 = type metadata accessor for ItemRecord;
        v8 = &unk_22BA140A0;
      }
    }

    else
    {
      v11 = v0[21];
      v3 = v0[22];
      v5 = type metadata accessor for ChatLockRecord;
      sub_22B9D7B1C(v2, v3, type metadata accessor for ChatLockRecord);
      v0[5] = v11;
      v6 = &qword_27D8D5010;
      v7 = type metadata accessor for ChatLockRecord;
      v8 = &unk_22BA147E8;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v10 = v0[11];
      v3 = v0[12];
      v5 = type metadata accessor for MessageUpdateRecord;
      sub_22B9D7B1C(v2, v3, type metadata accessor for MessageUpdateRecord);
      v0[5] = v10;
      v6 = &unk_281415528;
      v7 = type metadata accessor for MessageUpdateRecord;
      v8 = &unk_22BA16844;
    }

    else
    {
      v14 = v0[9];
      v3 = v0[10];
      v5 = type metadata accessor for UnknownRecord;
      sub_22B9D7B1C(v2, v3, type metadata accessor for UnknownRecord);
      v0[5] = v14;
      v6 = &unk_27D8D5000;
      v7 = type metadata accessor for UnknownRecord;
      v8 = &unk_22BA19A98;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v4 = v0[15];
    v3 = v0[16];
    v5 = type metadata accessor for AttachmentRecord;
    sub_22B9D7B1C(v2, v3, type metadata accessor for AttachmentRecord);
    v0[5] = v4;
    v6 = &qword_2814159B0;
    v7 = type metadata accessor for AttachmentRecord;
    v8 = &unk_22BA1B564;
  }

  else
  {
    v13 = v0[13];
    v3 = v0[14];
    v5 = type metadata accessor for RecoverableMessageRecord;
    sub_22B9D7B1C(v2, v3, type metadata accessor for RecoverableMessageRecord);
    v0[5] = v13;
    v6 = &unk_27D8D5008;
    v7 = type metadata accessor for RecoverableMessageRecord;
    v8 = &unk_22BA14FCC;
  }

  v0[6] = sub_22B9D7C4C(v6, v7, v8);
  v15 = sub_22B957E80(v0 + 2);
  sub_22B9D7B1C(v3, v15, v5);
  v16 = v0[5];
  if (v16)
  {
    v17 = v0[8];
    v18 = v0[6];
    sub_22B9358B4(v0 + 2, v0[5]);
    v22 = (*(v18 + 112) + **(v18 + 112));
    v19 = swift_task_alloc();
    v0[31] = v19;
    *v19 = v0;
    v19[1] = sub_22B9D3D0C;

    return v22(v17 + 176, v16, v18);
  }

  else
  {
    sub_22B936BEC((v0 + 2), &qword_27D8D4FF8, &qword_22BA14748);
    v21 = v0[8];

    return MEMORY[0x2822009F8](sub_22B9D4004, v21, 0);
  }
}

uint64_t sub_22B9D3D0C()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_22B9D3E88;
  }

  else
  {
    v2 = sub_22B9D3E20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B9D3E20()
{
  sub_22B936C4C((v0 + 16));
  v1 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_22B9D4004, v1, 0);
}

uint64_t sub_22B9D3E88()
{
  v1 = *(v0 + 64);
  sub_22B936C4C((v0 + 16));

  return MEMORY[0x2822009F8](sub_22B9D3EF4, v1, 0);
}

uint64_t sub_22B9D3EF4()
{
  sub_22B9D7B84(*(v0 + 216), type metadata accessor for DatabaseRecord);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B9D4004()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 240) + 1;
  sub_22B9D7B84(*(v0 + 216), type metadata accessor for DatabaseRecord);
  if (v2 == v1)
  {
LABEL_4:

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    while (1)
    {
      v3 = *(v0 + 232);
      v4 = *(v0 + 240) + 1;
      *(v0 + 240) = v4;
      v5 = *(v0 + 208);
      v6 = *(v0 + 216);
      sub_22B960B88(*(v0 + 56) + ((*(v0 + 264) + 32) & ~*(v0 + 264)) + v3 * v4, v6);
      sub_22B960B88(v6, v5);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        break;
      }

      sub_22B9D7B84(*(v0 + 216), type metadata accessor for DatabaseRecord);
      v7 = *(v0 + 224);
      v8 = *(v0 + 240) + 1;
      sub_22B9D7B84(*(v0 + 208), type metadata accessor for DatabaseRecord);
      if (v8 == v7)
      {
        goto LABEL_4;
      }
    }

    sub_22B9D7B84(*(v0 + 208), type metadata accessor for DatabaseRecord);

    return MEMORY[0x2822009F8](sub_22B9D3898, 0, 0);
  }
}

id sub_22B9D4214(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v14 = [a2 recordName];
    if (!v14)
    {
      return [a2 setStatusValue_];
    }

    v15 = v14;
    v22 = a7;
    v16 = sub_22BA0FFFC();
    v18 = v17;

    if (sub_22B9D4394(v16, v18, a4))
    {
      if (a5)
      {
        v19 = [a2 data];
        if (v19)
        {
          v20 = v19;
          [a1 deleteObject_];
        }
      }

      [a2 setStatusValue_];
    }

    if (sub_22B9D4394(v16, v18, a6))
    {
      [a2 setStatusValue_];
    }

    v21 = sub_22B9D4394(v16, v18, v22);

    if (v21)
    {
      return [a2 setStatusValue_];
    }
  }

  return result;
}

uint64_t sub_22B9D4394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22BA10D3C();
  sub_22BA1008C();
  v6 = sub_22BA10D6C();
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
    if (v11 || (sub_22BA10C6C() & 1) != 0)
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

void sub_22B9D448C(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22BA0FFFC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_22B9D44F0(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = sub_22BA0FFCC();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t sub_22B9D4560(uint64_t a1, char a2, _BYTE *a3)
{
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  *(v4 + 65) = *a3;
  return MEMORY[0x2822009F8](sub_22B9D458C, v3, 0);
}

uint64_t sub_22B9D458C()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isSpotlightRefactorEnabled];

  if (!v2)
  {
    goto LABEL_25;
  }

  v3 = *(v0 + 64);
  if (*(v0 + 65) == 6)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2 * (*(v0 + 65) == 0);
  }

  if (v3 == 1)
  {
    v14 = qword_28141ADC8;
    if (qword_28141ADC8)
    {
      v15 = qword_28141ADD0;
      v33 = (*(qword_28141ADD0 + 56) + **(qword_28141ADD0 + 56));
      v16 = swift_task_alloc();
      *(v0 + 48) = v16;
      *v16 = v0;
      v16[1] = sub_22B9D4C00;
      v8 = *(v0 + 16);
      v9 = v4;
      v10 = v14;
      v11 = v15;
      v12 = v33;

      return v12(v8, v9, v10, v11);
    }

    sub_22B952500();
    v17 = swift_allocError();
    swift_willThrow();
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v27 = sub_22BA0FEFC();
    sub_22B936CA8(v27, qword_28141AD40);
    v28 = v17;
    v20 = sub_22BA0FEDC();
    v21 = sub_22BA1044C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v29 = v17;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v30;
      *v23 = v30;
      v26 = "Failed to complete chat batch indexing with error %@";
      goto LABEL_23;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (v3 == 2)
  {
    v5 = qword_28141ADC8;
    if (qword_28141ADC8)
    {
      v6 = qword_28141ADD0;
      v32 = (*(qword_28141ADD0 + 48) + **(qword_28141ADD0 + 48));
      v7 = swift_task_alloc();
      *(v0 + 32) = v7;
      *v7 = v0;
      v7[1] = sub_22B9D4ACC;
      v8 = *(v0 + 16);
      v9 = v4;
      v10 = v5;
      v11 = v6;
      v12 = v32;

      return v12(v8, v9, v10, v11);
    }

    sub_22B952500();
    v17 = swift_allocError();
    swift_willThrow();
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v18 = sub_22BA0FEFC();
    sub_22B936CA8(v18, qword_28141AD40);
    v19 = v17;
    v20 = sub_22BA0FEDC();
    v21 = sub_22BA1044C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v17;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      v26 = "Failed to complete message batch indexing with error %@";
LABEL_23:
      _os_log_impl(&dword_22B92A000, v20, v21, v26, v22, 0xCu);
      sub_22B936BEC(v23, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v23, -1, -1);
      MEMORY[0x23189ADD0](v22, -1, -1);

      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_25:
  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_22B9D4ACC()
{
  v2 = *v1;
  v2[5] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x2822009F8](sub_22B9D4D34, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_22B9D4C00()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x2822009F8](sub_22B9D4ED4, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_22B9D4D34()
{
  v1 = *(v0 + 40);
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD40);
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1044C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_22B92A000, v4, v5, "Failed to complete message batch indexing with error %@", v6, 0xCu);
    sub_22B936BEC(v7, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v7, -1, -1);
    MEMORY[0x23189ADD0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22B9D4ED4()
{
  v1 = *(v0 + 56);
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD40);
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1044C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_22B92A000, v4, v5, "Failed to complete chat batch indexing with error %@", v6, 0xCu);
    sub_22B936BEC(v7, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v7, -1, -1);
    MEMORY[0x23189ADD0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22B9D5074(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t sub_22B9D509C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v2[10] = swift_task_alloc();
  v3 = sub_22BA0FD8C();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9D51B8, v1, 0);
}

uint64_t sub_22B9D51B8()
{
  v45 = v0;
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v7 = OBJC_IVAR____TtC17MessagesCloudSync16DatabaseImporter_lastReloadDate;
  v0[17] = OBJC_IVAR____TtC17MessagesCloudSync16DatabaseImporter_lastReloadDate;
  swift_beginAccess();
  v8 = *(v3 + 16);
  v8(v1, v5 + v7, v2);
  sub_22BA0FD3C();
  v10 = v9;
  v11 = *(v3 + 8);
  v11(v1, v2);
  v12 = fabs(v10);
  sub_22B9934AC(v6, v4, &unk_27D8D4A90, &qword_22BA126A0);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_22B936BEC(v0[10], &unk_27D8D4A90, &qword_22BA126A0);
LABEL_3:
    v13 = 3600.0;
    goto LABEL_4;
  }

  v14 = v0[15];
  v15 = v0[11];
  (*(v0[12] + 32))(v14, v0[10], v15);
  sub_22BA0FD3C();
  v17 = fabs(v16);
  v11(v14, v15);
  if (v17 >= 172800.0)
  {
    if (v17 >= 604800.0)
    {
      if (v17 >= 1209600.0)
      {
        goto LABEL_3;
      }

      v13 = 600.0;
    }

    else
    {
      v13 = 300.0;
    }

LABEL_4:
    if (v12 <= v13)
    {
      goto LABEL_22;
    }

    goto LABEL_8;
  }

  if (v12 <= 30.0)
  {
LABEL_22:

    v41 = v0[1];

    return v41();
  }

LABEL_8:
  sub_22BA0FD7C();
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v18 = v0[13];
  v19 = v0[14];
  v20 = v0[11];
  v21 = sub_22BA0FEFC();
  sub_22B936CA8(v21, qword_28141AD10);
  v8(v18, v19, v20);
  v22 = sub_22BA0FEDC();
  v23 = sub_22BA1046C();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[13];
  v26 = v0[11];
  if (v24)
  {
    v27 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = v43;
    *v27 = 136315138;
    sub_22B9D7C4C(&qword_281416BF0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v28 = sub_22BA10C1C();
    v30 = v29;
    v11(v25, v26);
    v31 = sub_22B99153C(v28, v30, &v44);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_22B92A000, v22, v23, "Reload chat registry at %s", v27, 0xCu);
    sub_22B936C4C(v43);
    MEMORY[0x23189ADD0](v43, -1, -1);
    MEMORY[0x23189ADD0](v27, -1, -1);
  }

  else
  {

    v11(v25, v26);
  }

  v32 = qword_28141ADC8;
  v0[18] = qword_28141ADC8;
  if (!v32)
  {
    v36 = v0[17];
    v37 = v0[14];
    v38 = v0[11];
    v39 = v0[12];
    v40 = v0[9];
    swift_beginAccess();
    (*(v39 + 40))(v40 + v36, v37, v38);
    swift_endAccess();
    goto LABEL_22;
  }

  v33 = qword_28141ADD0;
  v0[19] = qword_28141ADD0;
  v0[20] = *(v33 + 136);
  v0[21] = (v33 + 136) & 0xFFFFFFFFFFFFLL | 0x4484000000000000;
  if (qword_281416450 != -1)
  {
    swift_once();
  }

  sub_22BA102EC();
  v35 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22B9D56B4, v35, v34);
}

uint64_t sub_22B9D56B4()
{
  v1 = *(v0 + 72);
  (*(v0 + 160))();

  return MEMORY[0x2822009F8](sub_22B9D5728, v1, 0);
}

uint64_t sub_22B9D5728()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[9];
  swift_beginAccess();
  (*(v4 + 40))(v5 + v1, v2, v3);
  swift_endAccess();

  v6 = v0[1];

  return v6();
}

uint64_t sub_22B9D5808()
{
  swift_unknownObjectRelease();
  sub_22B936C4C((v0 + 128));
  sub_22B936C4C((v0 + 176));
  v1 = OBJC_IVAR____TtC17MessagesCloudSync16DatabaseImporter_lastReloadDate;
  v2 = sub_22BA0FD8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_22B936BEC(v0 + OBJC_IVAR____TtC17MessagesCloudSync16DatabaseImporter_lastImportProgressDate, &unk_27D8D4A90, &qword_22BA126A0);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for DatabaseImporter(uint64_t a1)
{
  result = qword_281415898;
  if (!qword_281415898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22B9D5920(uint64_t a1)
{
  sub_22BA0FD8C();
  if (v1 <= 0x3F)
  {
    sub_22B934C68(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_22B9D5A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22BA0FD8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = &type metadata for FileManagerProvider;
  v15[4] = &off_283F53B48;
  v14[3] = &type metadata for DatabaseRecordPersistence;
  v14[4] = &off_283F55858;
  v15[0] = a3;
  swift_defaultActor_initialize();
  *(a4 + 168) = 0;
  (*(v9 + 56))(a4 + OBJC_IVAR____TtC17MessagesCloudSync16DatabaseImporter_lastImportProgressDate, 1, 1, v8);
  v12 = (a4 + OBJC_IVAR____TtC17MessagesCloudSync16DatabaseImporter_importActivityName);
  *v12 = 0xD00000000000001ELL;
  v12[1] = 0x800000022BA1E460;
  *(a4 + 112) = a1;
  *(a4 + 120) = a2;
  sub_22B935B38(v15, a4 + 176);
  sub_22B935B38(v14, a4 + 128);
  sub_22BA0FD7C();
  sub_22B936C4C(v14);
  sub_22B936C4C(v15);
  (*(v9 + 32))(a4 + OBJC_IVAR____TtC17MessagesCloudSync16DatabaseImporter_lastReloadDate, v11, v8);
  return a4;
}

void *sub_22B9D5BC0(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        goto LABEL_14;
      }

      v1 = "MessageEncryptedV3";
    }

    else
    {
      v1 = "chatLockRecordType";
    }
  }

  else
  {
    if (a1 > 4u || a1 == 3)
    {
      goto LABEL_14;
    }

    v1 = "recoverableMessage";
  }

  if (0x800000022BA1B9F0 == ((v1 - 32) | 0x8000000000000000))
  {

    return &unk_283F50D98;
  }

LABEL_14:
  v3 = sub_22BA10C6C();

  if (v3)
  {
    return &unk_283F50D98;
  }

  else
  {
    return 0;
  }
}

id sub_22B9D5D28(unsigned __int8 a1, uint64_t a2)
{
  if (a1 == 3)
  {
    goto LABEL_14;
  }

  v4 = sub_22BA10C6C();

  if (v4)
  {
    goto LABEL_16;
  }

  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        goto LABEL_15;
      }

      v5 = "MessageEncryptedV3";
    }

    else
    {
      v5 = "chatLockRecordType";
    }
  }

  else
  {
    if (a1 > 4u || a1 == 3)
    {
      goto LABEL_15;
    }

    v5 = "recoverableMessage";
  }

  if (0x800000022BA1BA10 == ((v5 - 32) | 0x8000000000000000))
  {
LABEL_14:

    goto LABEL_16;
  }

LABEL_15:
  v6 = sub_22BA10C6C();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  if (!*(a2 + 16))
  {
    return 0;
  }

  KeyPath = swift_getKeyPath();
  v8 = sub_22B9CE458(KeyPath, a2);

  v9 = swift_getKeyPath();
  v10 = sub_22B9A7818(v9, 0);

  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22BA17B40;
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
  v12 = objc_allocWithZone(MEMORY[0x277CCA920]);
  sub_22B9A90E8();
  v13 = v8;
  v14 = v10;
  v15 = sub_22BA101DC();

  v16 = [v12 initWithType:1 subpredicates:v15];

  v17 = swift_getKeyPath();
  v18 = 0x556567617373656DLL;
  v19 = 0xEF31566574616470;
  if (a1 != 5)
  {
    v18 = 0x6E776F6E6B6E75;
    v19 = 0xE700000000000000;
  }

  v20 = 0x800000022BA1BA10;
  v21 = 0x656D686361747461;
  if (a1 == 3)
  {
    v20 = 0xEA0000000000746ELL;
  }

  else
  {
    v21 = 0xD000000000000012;
  }

  if (a1 <= 4u)
  {
    v18 = v21;
    v19 = v20;
  }

  v22 = 0x800000022BA1B9C0;
  v23 = 0x800000022BA1B9F0;
  v24 = 0x72636E4574616863;
  if (a1 == 1)
  {
    v23 = 0xEF32766465747079;
  }

  else
  {
    v24 = 0xD000000000000012;
  }

  if (a1)
  {
    v22 = v23;
  }

  else
  {
    v24 = 0xD000000000000012;
  }

  if (a1 <= 2u)
  {
    v25 = v24;
  }

  else
  {
    v25 = v18;
  }

  if (a1 <= 2u)
  {
    v26 = v22;
  }

  else
  {
    v26 = v19;
  }

  v27 = sub_22B9A7C48(v17, v25, v26);

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_22BA17B40;
  *(v28 + 32) = v16;
  *(v28 + 40) = v27;
  v29 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v30 = v16;
  v31 = v27;
  v32 = sub_22BA101DC();

  v33 = [v29 initWithType:1 subpredicates:v32];

  return v33;
}

uint64_t sub_22B9D6234(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 96) = a3;
  *(v4 + 104) = v3;
  *(v4 + 88) = a2;
  *(v4 + 208) = a1;
  sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  *(v4 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9D62D8, v3, 0);
}

uint64_t sub_22B9D62D8()
{
  v1 = *(v0 + 208);
  *(v0 + 120) = OBJC_IVAR____TtC17MessagesCloudSync16DatabaseImporter_lastImportProgressDate;
  *(v0 + 128) = 0;
  KeyPath = swift_getKeyPath();
  v3 = sub_22B9A7818(KeyPath, 0);

  v4 = swift_getKeyPath();
  v5 = 0xEF32766465747079;
  v6 = 0x72636E4574616863;
  v7 = 0xEF31566574616470;
  v8 = 0x556567617373656DLL;
  if (v1 != 5)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  v9 = 0xEA0000000000746ELL;
  v10 = 0x656D686361747461;
  if (v1 != 3)
  {
    v10 = 0xD000000000000012;
    v9 = 0x800000022BA1BA10;
  }

  if (v1 <= 4)
  {
    v8 = v10;
    v7 = v9;
  }

  if (v1 != 1)
  {
    v6 = 0xD000000000000012;
    v5 = 0x800000022BA1B9F0;
  }

  if (!v1)
  {
    v6 = 0xD000000000000012;
    v5 = 0x800000022BA1B9C0;
  }

  if (v1 <= 2)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v1 <= 2)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  v13 = *(v0 + 208);
  v14 = sub_22B9A7C48(v4, v11, v12);

  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22BA17B40;
  *(v15 + 32) = v3;
  *(v15 + 40) = v14;
  v16 = objc_allocWithZone(MEMORY[0x277CCA920]);
  sub_22B9A90E8();
  v17 = v3;
  v18 = v14;
  v19 = sub_22BA101DC();

  v20 = [v16 initWithType:1 subpredicates:v19];
  *(v0 + 136) = v20;

  v21 = swift_task_alloc();
  *(v0 + 144) = v21;
  *v21 = v0;
  v21[1] = sub_22B9D65A0;
  if (v13 == 2)
  {
    v22 = 100;
  }

  else
  {
    v22 = 5;
  }

  v23 = *(v0 + 96);
  v24 = *(v0 + 88);
  v25 = *(v0 + 208);

  return sub_22B9C82E0(v20, v25, v22, 0, 1, v24, v23);
}

uint64_t sub_22B9D65A0(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 104);
  *(*v1 + 152) = a1;

  return MEMORY[0x2822009F8](sub_22B9D66D0, v3, 0);
}

uint64_t sub_22B9D66D0()
{
  sub_22B9CB6C8();
  if (v1)
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v2 = sub_22BA0FEFC();
    sub_22B936CA8(v2, qword_28141AD10);
    v3 = sub_22BA0FEDC();
    v4 = sub_22BA1046C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22B92A000, v3, v4, "Broadcasting import progress", v5, 2u);
      MEMORY[0x23189ADD0](v5, -1, -1);
    }

    v6 = *(v0 + 112);
    v7 = *(v0 + 120);
    v8 = *(v0 + 104);

    sub_22BA0FD6C();
    v9 = sub_22BA0FD8C();
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
    swift_beginAccess();
    sub_22B9D7A7C(v6, v8 + v7);
    swift_endAccess();
    v10 = sub_22B9D6CB0;
    goto LABEL_17;
  }

  if (!*(v0 + 152))
  {
    v10 = sub_22B9D739C;
LABEL_17:

    return MEMORY[0x2822009F8](v10, 0, 0);
  }

  v11 = *(v0 + 128);
  sub_22B97EAEC();
  if (v11)
  {
    v12 = v11;
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v13 = sub_22BA0FEFC();
    sub_22B936CA8(v13, qword_28141AD10);
    v14 = v11;
    v15 = sub_22BA0FEDC();
    v16 = sub_22BA1042C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v12;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_22B92A000, v15, v16, "Importer stopping work due to %@", v17, 0xCu);
      sub_22B936BEC(v18, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v18, -1, -1);
      MEMORY[0x23189ADD0](v17, -1, -1);
    }

    swift_willThrow();

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    *(v0 + 128) = 0;
    v23 = *(v0 + 208);
    KeyPath = swift_getKeyPath();
    v25 = sub_22B9A7818(KeyPath, 0);

    v26 = swift_getKeyPath();
    v27 = 0xEF32766465747079;
    v28 = 0x72636E4574616863;
    v29 = 0xEF31566574616470;
    v30 = 0x556567617373656DLL;
    if (v23 != 5)
    {
      v30 = 0x6E776F6E6B6E75;
      v29 = 0xE700000000000000;
    }

    v31 = 0xEA0000000000746ELL;
    v32 = 0x656D686361747461;
    if (v23 != 3)
    {
      v32 = 0xD000000000000012;
      v31 = 0x800000022BA1BA10;
    }

    if (v23 <= 4)
    {
      v30 = v32;
      v29 = v31;
    }

    if (v23 != 1)
    {
      v28 = 0xD000000000000012;
      v27 = 0x800000022BA1B9F0;
    }

    if (!v23)
    {
      v28 = 0xD000000000000012;
      v27 = 0x800000022BA1B9C0;
    }

    if (v23 <= 2)
    {
      v33 = v28;
    }

    else
    {
      v33 = v30;
    }

    if (v23 <= 2)
    {
      v34 = v27;
    }

    else
    {
      v34 = v29;
    }

    v35 = *(v0 + 208);
    v36 = sub_22B9A7C48(v26, v33, v34);

    sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_22BA17B40;
    *(v37 + 32) = v25;
    *(v37 + 40) = v36;
    v38 = objc_allocWithZone(MEMORY[0x277CCA920]);
    sub_22B9A90E8();
    v39 = v25;
    v40 = v36;
    v41 = sub_22BA101DC();

    v42 = [v38 initWithType:1 subpredicates:v41];
    *(v0 + 136) = v42;

    v43 = swift_task_alloc();
    *(v0 + 144) = v43;
    *v43 = v0;
    v43[1] = sub_22B9D65A0;
    if (v35 == 2)
    {
      v44 = 100;
    }

    else
    {
      v44 = 5;
    }

    v45 = *(v0 + 96);
    v46 = *(v0 + 88);
    v47 = *(v0 + 208);

    return sub_22B9C82E0(v42, v47, v44, 0, 1, v46, v45);
  }
}

uint64_t sub_22B9D6CB0()
{
  v1 = *(*(v0 + 88) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 160) = v1;
  return MEMORY[0x2822009F8](sub_22B9D6CE0, v1, 0);
}

uint64_t sub_22B9D6CE0()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  *(v0 + 168) = *(v1 + 120);
  *(v0 + 176) = *(v1 + 128);
  *(v0 + 209) = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_22B9D6D70, 0, 0);
}

uint64_t sub_22B9D6D70()
{
  v1 = *sub_22B9358B4((*(v0 + 88) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore), *(*(v0 + 88) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore + 24));

  return MEMORY[0x2822009F8](sub_22B9D6DEC, v1, 0);
}

uint64_t sub_22B9D6DEC()
{
  sub_22B9E45D8(*(v0 + 168), *(v0 + 176), 0);

  return MEMORY[0x2822009F8](sub_22B9D6E58, 0, 0);
}

uint64_t sub_22B9D6E58()
{
  v1 = *(v0 + 209);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 104);
  sub_22B9358B4((*(v0 + 88) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(*(v0 + 88) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  sub_22BA0980C(v3, v2, v1);

  return MEMORY[0x2822009F8](sub_22B9D6F04, v4, 0);
}

uint64_t sub_22B9D6F04()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 128);
    sub_22B97EAEC();
    if (v1)
    {
      v2 = v1;
      if (qword_281414D18 != -1)
      {
        swift_once();
      }

      v3 = sub_22BA0FEFC();
      sub_22B936CA8(v3, qword_28141AD10);
      v4 = v1;
      v5 = sub_22BA0FEDC();
      v6 = sub_22BA1042C();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138412290;
        v9 = v2;
        v10 = _swift_stdlib_bridgeErrorToNSError();
        *(v7 + 4) = v10;
        *v8 = v10;
        _os_log_impl(&dword_22B92A000, v5, v6, "Importer stopping work due to %@", v7, 0xCu);
        sub_22B936BEC(v8, &qword_27D8D4CD0, qword_22BA14360);
        MEMORY[0x23189ADD0](v8, -1, -1);
        MEMORY[0x23189ADD0](v7, -1, -1);
      }

      swift_willThrow();

      v11 = *(v0 + 8);

      return v11();
    }

    else
    {
      *(v0 + 128) = 0;
      v13 = *(v0 + 208);
      KeyPath = swift_getKeyPath();
      v15 = sub_22B9A7818(KeyPath, 0);

      v16 = swift_getKeyPath();
      v17 = 0xEF32766465747079;
      v18 = 0x72636E4574616863;
      v19 = 0xEF31566574616470;
      v20 = 0x556567617373656DLL;
      if (v13 != 5)
      {
        v20 = 0x6E776F6E6B6E75;
        v19 = 0xE700000000000000;
      }

      v21 = 0xEA0000000000746ELL;
      v22 = 0x656D686361747461;
      if (v13 != 3)
      {
        v22 = 0xD000000000000012;
        v21 = 0x800000022BA1BA10;
      }

      if (v13 <= 4)
      {
        v20 = v22;
        v19 = v21;
      }

      if (v13 != 1)
      {
        v18 = 0xD000000000000012;
        v17 = 0x800000022BA1B9F0;
      }

      if (!v13)
      {
        v18 = 0xD000000000000012;
        v17 = 0x800000022BA1B9C0;
      }

      if (v13 <= 2)
      {
        v23 = v18;
      }

      else
      {
        v23 = v20;
      }

      if (v13 <= 2)
      {
        v24 = v17;
      }

      else
      {
        v24 = v19;
      }

      v25 = *(v0 + 208);
      v26 = sub_22B9A7C48(v16, v23, v24);

      sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_22BA17B40;
      *(v27 + 32) = v15;
      *(v27 + 40) = v26;
      v28 = objc_allocWithZone(MEMORY[0x277CCA920]);
      sub_22B9A90E8();
      v29 = v15;
      v30 = v26;
      v31 = sub_22BA101DC();

      v32 = [v28 initWithType:1 subpredicates:v31];
      *(v0 + 136) = v32;

      v33 = swift_task_alloc();
      *(v0 + 144) = v33;
      *v33 = v0;
      v33[1] = sub_22B9D65A0;
      if (v25 == 2)
      {
        v34 = 100;
      }

      else
      {
        v34 = 5;
      }

      v35 = *(v0 + 96);
      v36 = *(v0 + 88);
      v37 = *(v0 + 208);

      return sub_22B9C82E0(v32, v37, v34, 0, 1, v36, v35);
    }
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22B9D739C, 0, 0);
  }
}

uint64_t sub_22B9D739C()
{
  v1 = *(*(v0 + 88) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 184) = v1;
  return MEMORY[0x2822009F8](sub_22B9D73CC, v1, 0);
}

uint64_t sub_22B9D73CC()
{
  v1 = *(v0 + 184);
  swift_beginAccess();
  *(v0 + 192) = *(v1 + 120);
  *(v0 + 200) = *(v1 + 128);
  *(v0 + 210) = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_22B9D745C, 0, 0);
}

uint64_t sub_22B9D745C()
{
  v1 = *sub_22B9358B4((*(v0 + 88) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore), *(*(v0 + 88) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore + 24));

  return MEMORY[0x2822009F8](sub_22B9D74D8, v1, 0);
}

uint64_t sub_22B9D74D8()
{
  sub_22B9E45D8(*(v0 + 192), *(v0 + 200), 0);

  return MEMORY[0x2822009F8](sub_22B9D7544, 0, 0);
}

uint64_t sub_22B9D7544()
{
  v1 = *(v0 + 210);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  sub_22B9358B4((*(v0 + 88) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(*(v0 + 88) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  sub_22BA0980C(v3, v2, v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22B9D75F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9D7694, v3, 0);
}

uint64_t sub_22B9D7694()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = sub_22BA0FD8C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = OBJC_IVAR____TtC17MessagesCloudSync16DatabaseImporter_lastImportProgressDate;
  swift_beginAccess();
  sub_22B9D7A7C(v2, v1 + v5);
  swift_endAccess();
  v6 = *(v3 + 16);
  v0[10] = v6;
  if (v6)
  {
    v7 = v0[7];
    v0[11] = 0;
    v8 = *(v7 + 32);
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_22B9D7820;
    v10 = v0[5];
    v11 = v0[6];

    return sub_22B9D6234(v8, v10, v11);
  }

  else
  {

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_22B9D7820()
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
    v6 = *(v2 + 64);

    return MEMORY[0x2822009F8](sub_22B9D796C, v6, 0);
  }
}

uint64_t sub_22B9D796C()
{
  v1 = v0[11] + 1;
  if (v1 == v0[10])
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[11] = v1;
    v4 = *(v0[7] + v1 + 32);
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_22B9D7820;
    v6 = v0[5];
    v7 = v0[6];

    return sub_22B9D6234(v4, v6, v7);
  }
}

uint64_t sub_22B9D7A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B9D7B1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B9D7B84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22B9D7BE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22B9349C8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22B9D7C4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22B9D7C94()
{
  result = qword_281414C00;
  if (!qword_281414C00)
  {
    sub_22B948760(&qword_27D8D5960, &unk_22BA1AA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281414C00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseImporter.Batch(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DatabaseImporter.Batch(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_22B9D7D70(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B9D7D8C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_22B9D7DBC()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22B9D7E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_22B945AC8;

  return sub_22B9DA594(a3, a4, a5, a6 & 1);
}

uint64_t sub_22B9D7EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_22B943E68;

  return (sub_22B9DA014)(a3);
}

uint64_t sub_22B9D7F9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22B9349C8(&qword_27D8D4BC0, &qword_22BA18560);
  v34 = v4;
  result = sub_22BA10A7C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_22BA10D3C();
      sub_22BA1008C();
      result = sub_22BA10D6C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22B9D823C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22B9349C8(&qword_27D8D5968, &unk_22BA19760);
  v38 = v4;
  result = sub_22BA10A7C();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v39 = *(v26 + 8);
      if ((v38 & 1) == 0)
      {

        v28 = v27;
      }

      sub_22BA10D3C();
      sub_22BA1008C();
      result = sub_22BA10D6C();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v27;
      v18[1] = v39;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22B9D84F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22B9349C8(&unk_27D8D57A0, &qword_22BA18568);
  v35 = v4;
  result = sub_22BA10A7C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v35 & 1) == 0)
      {
        v25 = v21;
      }

      result = sub_22BA1071C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22B9D877C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22B9349C8(&qword_27D8D5510, &qword_22BA16DF0);
  v33 = v4;
  result = sub_22BA10A7C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_22B936C98(v24, v34);
      }

      else
      {
        sub_22B936B20(v24, v34);
      }

      sub_22BA10D3C();
      sub_22BA1008C();
      result = sub_22BA10D6C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_22B936C98(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_22B9D8A34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22B9349C8(&qword_27D8D5990, &qword_22BA197A0);
  v36 = v4;
  result = sub_22BA10A7C();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 48 * v21;
      v26 = *v25;
      v41 = *(v25 + 8);
      v40 = *(v25 + 16);
      v39 = *(v25 + 24);
      v38 = *(v25 + 32);
      v37 = *(v25 + 40);
      if ((v36 & 1) == 0)
      {
      }

      sub_22BA10D3C();
      sub_22BA1008C();
      result = sub_22BA10D6C();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 48 * v15;
      *v17 = v26;
      *(v17 + 8) = v41;
      *(v17 + 16) = v40;
      *(v17 + 24) = v39;
      *(v17 + 32) = v38;
      *(v17 + 40) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22B9D8D34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22B9349C8(&unk_27D8D5790, &unk_22BA19790);
  result = sub_22BA10A7C();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v30 = *(*(v5 + 56) + 16 * v22);
      sub_22BA10D3C();
      sub_22BA1008C();

      result = sub_22BA10D6C();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v15) >> 6;
        while (++v17 != v25 || (v24 & 1) == 0)
        {
          v26 = v17 == v25;
          if (v17 == v25)
          {
            v17 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v17);
          if (v27 != -1)
          {
            v18 = __clz(__rbit64(~v27)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 16 * v18) = v30;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if (v29)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_22B9D9050(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22B9349C8(&qword_27D8D5998, &qword_22BA197A8);
  result = sub_22BA10A7C();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_22BA1071C();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_22B9D92B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22B9349C8(&qword_27D8D5508, &unk_22BA16DE0);
  result = sub_22BA10A7C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_22B936C98((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_22B958068(v23, &v36);
        sub_22B936B20(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_22BA1084C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_22B936C98(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_22B9D956C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22B9349C8(&unk_27D8D5970, &unk_22BA19770);
  v30 = v4;
  result = sub_22BA10A7C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_22BA10D3C();
      MEMORY[0x23189A3B0](v20);
      result = sub_22BA10D6C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22B9D97FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22B9349C8(&qword_27D8D5808, qword_22BA18600);
  v37 = v4;
  result = sub_22BA10A7C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_22BA10D3C();
      sub_22BA1008C();
      result = sub_22BA10D6C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22B9D9ABC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22B9349C8(&unk_27D8D5980, &unk_22BA19780);
  v34 = v4;
  result = sub_22BA10A7C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_22BA10D3C();
      sub_22BA1008C();
      result = sub_22BA10D6C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_22B9D9D64(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_22B9D9DAC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_22B9D9DF4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22B936C98(a4, (a5[7] + 32 * a1));
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

unint64_t sub_22B9D9E60(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 48 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  *(v6 + 25) = *(a4 + 25);
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

unint64_t sub_22B9D9EBC(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_22B9D9F04(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_22B936C98(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_22B9D9F80(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_22B9D9FC4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_22B9DA034()
{
  v1 = sub_22B972028();
  if (!v1)
  {
    v1 = sub_22B9BBDDC(MEMORY[0x277D84F90]);
  }

  v2 = v1;
  v3 = *(v0 + 40);
  v73 = v0;
  swift_beginAccess();
  v72 = v3;
  v4 = *(v3 + 112);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  v8 = -1;
  v9 = -1 << *(*(v3 + 112) + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & v5;
  v11 = (63 - v9) >> 6;
  v75 = *(v3 + 112);

  v12 = 0;
  while (v10)
  {
    v14 = v12;
LABEL_12:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v14 << 6);
    v17 = (*(v75 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = *(*(v75 + 56) + 8 * v16);
    v21 = v2[2];

    if (v21 && (v22 = sub_22B990A58(v19, v18), (v23 & 1) != 0))
    {
      v24 = *(v2[7] + 8 * v22);
      v25 = __OFADD__(v24, v20);
      v26 = v24 + v20;
      if (v25)
      {
        goto LABEL_49;
      }

      v74 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v18;
      v29 = isUniquelyReferenced_nonNull_native;
      v76 = v2;
      v30 = v19;
      v31 = v28;
      v32 = sub_22B990A58(v19, v28);
      v34 = v2[2];
      v35 = (v33 & 1) == 0;
      v25 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v25)
      {
        goto LABEL_50;
      }

      v37 = v33;
      if (v2[3] < v36)
      {
        sub_22B9D7F9C(v36, v29);
        v32 = sub_22B990A58(v30, v31);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_43;
        }

LABEL_31:
        if (v37)
        {
          goto LABEL_32;
        }

LABEL_34:
        v2 = v76;
        v76[(v32 >> 6) + 8] |= 1 << v32;
        v60 = (v76[6] + 16 * v32);
        *v60 = v30;
        v60[1] = v31;
        *(v76[7] + 8 * v32) = v74;
        v61 = v76[2];
        v25 = __OFADD__(v61, 1);
        v56 = v61 + 1;
        if (v25)
        {
          goto LABEL_51;
        }

        goto LABEL_35;
      }

      if (v29)
      {
        goto LABEL_31;
      }

      v59 = v32;
      sub_22B9EBAF4();
      v32 = v59;
      if ((v37 & 1) == 0)
      {
        goto LABEL_34;
      }

LABEL_32:
      v57 = v32;

      v2 = v76;
      *(v76[7] + 8 * v57) = v74;
      v12 = v14;
    }

    else
    {
      v39 = v2;
      v40 = v11;
      v41 = v6;
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v43 = v18;
      v44 = v42;
      v77 = v39;
      v45 = v19;
      v6 = v43;
      v46 = sub_22B990A58(v19, v43);
      v48 = v39[2];
      v49 = (v47 & 1) == 0;
      v25 = __OFADD__(v48, v49);
      v50 = v48 + v49;
      if (v25)
      {
        goto LABEL_47;
      }

      v51 = v47;
      if (v39[3] >= v50)
      {
        if ((v44 & 1) == 0)
        {
          v58 = v46;
          sub_22B9EBAF4();
          v46 = v58;
        }

        v52 = v6;
      }

      else
      {
        sub_22B9D7F9C(v50, v44);
        v52 = v6;
        v46 = sub_22B990A58(v45, v6);
        if ((v51 & 1) != (v53 & 1))
        {
LABEL_43:

          return sub_22BA10CBC();
        }
      }

      v6 = v41;
      v11 = v40;
      if (v51)
      {
        v13 = v46;

        v2 = v77;
        *(v77[7] + 8 * v13) = v20;
        v12 = v14;
      }

      else
      {
        v2 = v39;
        v39[(v46 >> 6) + 8] |= 1 << v46;
        v54 = (v39[6] + 16 * v46);
        *v54 = v45;
        v54[1] = v52;
        *(v39[7] + 8 * v46) = v20;
        v55 = v39[2];
        v25 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (v25)
        {
          goto LABEL_48;
        }

LABEL_35:
        v2[2] = v56;
        v12 = v14;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      sub_22B9724B4(v2);
      v10 = v73;
      goto LABEL_40;
    }

    v10 = v6[v14];
    ++v12;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  swift_once();
  v62 = sub_22BA0FEFC();
  sub_22B936CA8(v62, qword_28141AD40);
  v63 = v6;
  v64 = sub_22BA0FEDC();
  v65 = sub_22BA1044C();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v66 = 138412290;
    v68 = v6;
    v69 = _swift_stdlib_bridgeErrorToNSError();
    *(v66 + 4) = v69;
    *v67 = v69;
    _os_log_impl(&dword_22B92A000, v64, v65, "Failed to encode and write duplicates diagnostics file %@", v66, 0xCu);
    sub_22B95DEF0(v67);
    MEMORY[0x23189ADD0](v67, -1, -1);
    MEMORY[0x23189ADD0](v66, -1, -1);
  }

  else
  {
  }

LABEL_40:
  *(v72 + 112) = sub_22B9BBDDC(MEMORY[0x277D84F90]);

  v70 = *(v10 + 8);

  return v70();
}

uint64_t sub_22B9DA594(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 112) = a4;
  *(v5 + 96) = a3;
  *(v5 + 104) = v4;
  *(v5 + 80) = a1;
  *(v5 + 88) = a2;
  return MEMORY[0x2822009F8](sub_22B9DA5BC, v4, 0);
}

uint64_t sub_22B9DA5BC(uint64_t a1)
{
  v55 = v1;
  v2 = *(v1 + 88);
  if ((*(v1 + 112) & 1) == 0)
  {
    v20 = *(v1 + 96);
    v21 = sub_22BA106BC();
    v23 = sub_22B9C2E30(v21, v22);
    if (v23 > 3)
    {
      if ((v23 - 6) < 2 || v23 != 4)
      {
        goto LABEL_20;
      }

      v25 = "recoverableMessage";
    }

    else
    {
      if (v23 <= 1)
      {
        v24 = "ndPlayed";
        if (v23)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      if (v23 != 2)
      {
        goto LABEL_20;
      }

      v25 = "MessageEncryptedV3";
    }

    v24 = (v25 - 32);
LABEL_18:
    if (0x800000022BA1B9C0 == (v24 | 0x8000000000000000))
    {

LABEL_21:
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v27 = sub_22BA0FEFC();
      sub_22B936CA8(v27, qword_28141AD40);
      v8 = sub_22BA0FEDC();
      v28 = sub_22BA1046C();
      if (!os_log_type_enabled(v8, v28))
      {
        goto LABEL_37;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22B92A000, v8, v28, "Record id chat lock record, skipping", v10, 2u);
LABEL_36:
      MEMORY[0x23189ADD0](v10, -1, -1);
LABEL_37:

      goto LABEL_38;
    }

LABEL_20:
    v26 = sub_22BA10C6C();

    if (v26)
    {
      goto LABEL_21;
    }

    v29 = [v20 encryptedValues];
    v30 = sub_22BA0FFCC();
    v31 = [v29 objectForKey_];
    swift_unknownObjectRelease();

    if (!v31 || (*(v1 + 56) = v31, sub_22B9349C8(&unk_27D8D4F50, &unk_22BA17980), (swift_dynamicCast() & 1) == 0))
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v44 = sub_22BA0FEFC();
      sub_22B936CA8(v44, qword_28141AD40);
      v45 = v2;
      v8 = sub_22BA0FEDC();
      v46 = sub_22BA1044C();

      if (!os_log_type_enabled(v8, v46))
      {
        goto LABEL_37;
      }

      v10 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v54 = v47;
      *v10 = 136315138;
      v48 = [v45 recordName];
      v49 = sub_22BA0FFFC();
      v51 = v50;

      v52 = sub_22B99153C(v49, v51, &v54);

      *(v10 + 4) = v52;
      _os_log_impl(&dword_22B92A000, v8, v46, "No GUID present for chat record %s", v10, 0xCu);
      sub_22B936C4C(v47);
      v19 = v47;
      goto LABEL_35;
    }

    v32 = *(v1 + 104);
    v34 = *(v1 + 16);
    v33 = *(v1 + 24);
    swift_beginAccess();
    v35 = *(v32 + 112);
    if (*(v35 + 16))
    {

      v36 = sub_22B990A58(v34, v33);
      if (v37)
      {
        v38 = *(*(v35 + 56) + 8 * v36);

        v40 = __OFADD__(v38, 1);
        v41 = v38 + 1;
        if (v40)
        {
          __break(1u);
          return result;
        }

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = *(v32 + 112);
        *(v32 + 112) = 0x8000000000000000;
        v43 = v41;
        goto LABEL_43;
      }
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = *(v32 + 112);
    *(v32 + 112) = 0x8000000000000000;
    v43 = 1;
LABEL_43:
    sub_22B9BABE4(v43, v34, v33, isUniquelyReferenced_nonNull_native);

    *(v32 + 112) = v54;
    swift_endAccess();
    goto LABEL_38;
  }

  v3 = *(v1 + 88);
  if (qword_281414D30 != -1)
  {
    swift_once();
    v3 = *(v1 + 88);
  }

  v4 = *(v1 + 96);
  v5 = *(v1 + 80);
  v6 = sub_22BA0FEFC();
  sub_22B936CA8(v6, qword_28141AD40);
  sub_22B935B38(v5, v1 + 16);
  v7 = v2;
  v8 = sub_22BA0FEDC();
  v9 = sub_22BA1044C();
  sub_22B99E324(v3, v4, 1);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v54 = v12;
    *v10 = 136315394;
    v13 = sub_22B9358B4((v1 + 16), *(v1 + 40));
    v14 = *v13;
    v15 = v13[1];

    sub_22B936C4C((v1 + 16));
    v16 = sub_22B99153C(v14, v15, &v54);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2112;
    v17 = v2;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v18;
    *v11 = v18;
    _os_log_impl(&dword_22B92A000, v8, v9, "Read from %s encountered error: %@", v10, 0x16u);
    sub_22B95DEF0(v11);
    MEMORY[0x23189ADD0](v11, -1, -1);
    sub_22B936C4C(v12);
    v19 = v12;
LABEL_35:
    MEMORY[0x23189ADD0](v19, -1, -1);
    goto LABEL_36;
  }

  sub_22B936C4C((v1 + 16));
LABEL_38:
  v53 = *(v1 + 8);

  return v53();
}

uint64_t sub_22B9DAC98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22B9DACE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 sub_22B9DAD3C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_22B9DAD68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_22B9DADB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B9DAE18(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_22BA1030C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a1;
  a2 &= 1u;
  *(v12 + 56) = a2;

  sub_22B973C70(a1, a2);
  sub_22B989028(0, 0, v10, &unk_22BA19950, v12);
}

uint64_t sub_22B9DAF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 48) = a7;
  *(v7 + 24) = a5;
  *(v7 + 32) = a6;
  *(v7 + 16) = a4;
  return MEMORY[0x2822009F8](sub_22B9DAF78, 0, 0);
}

uint64_t sub_22B9DAF78()
{
  sub_22BA102EC();
  *(v0 + 40) = sub_22BA102DC();
  v2 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22B9DB00C, v2, v1);
}

uint64_t sub_22B9DB00C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  v3(v2, v1 & 1);
  v4 = *(v0 + 8);

  return v4();
}

void sub_22B9DB08C(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  if (a3)
  {
    v7 = sub_22BA0FB5C();
    LODWORD(a4) = [a4 wasMissingKeys_];

    if (!a4)
    {
      return;
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  swift_beginAccess();
  *(a5 + 16) = v8;
}

uint64_t sub_22B9DB114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22B9349C8(&qword_27D8D59A0, &unk_22BA19938);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  (*(v9 + 16))(&v19 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  *(v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  sub_22BA1060C();
  v15 = (a4 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase);
  v16 = *(a4 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase + 24);
  v17 = v15[4];
  sub_22B9358B4(v15, v16);
  return (*(v17 + 8))(a2, v16, v17);
}

uint64_t sub_22B9DB2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22B9349C8(&qword_27D8D59A0, &unk_22BA19938);
  return sub_22BA102BC();
}

uint64_t sub_22B9DB328(uint64_t a1, char a2)
{
  v5 = *(sub_22B9349C8(&qword_27D8D59A0, &unk_22BA19938) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_22B9DB2C0(a1, a2 & 1, v2 + v6, v7);
}

uint64_t sub_22B9DB3E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22B943E68;

  return sub_22B9DAF50(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22B9DB4B8(void *a1, char a2)
{
  if (a2)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v3 = sub_22BA0FEFC();
    sub_22B936CA8(v3, qword_28141AD40);
    v4 = a1;
    v5 = sub_22BA0FEDC();
    v6 = sub_22BA1044C();
    sub_22B9A7588(a1);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = a1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_22B92A000, v5, v6, "Query result for counts returned with error: %@", v7, 0xCu);
      sub_22B95DEF0(v8);
      MEMORY[0x23189ADD0](v8, -1, -1);
      MEMORY[0x23189ADD0](v7, -1, -1);
    }
  }

  sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
  return sub_22BA102BC();
}

void sub_22B9DB620()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86360], 0);
  if (!*MEMORY[0x277D86380])
  {
    __break(1u);
    goto LABEL_9;
  }

  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D863A0], 0);
  if (!*MEMORY[0x277D863A8])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D863A8], 0);
  if (!*MEMORY[0x277D863B0])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D863B0], 1);
  if (!*MEMORY[0x277D86398])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86398], 1);
  if (!*MEMORY[0x277D86390])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86390], 0);
  if (*MEMORY[0x277D86318])
  {
    xpc_dictionary_set_int64(v0, *MEMORY[0x277D86318], 750000000);
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_22B9DB77C(int64_t a1, uint64_t a2, int64_t a3, char a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_int64(v8, *MEMORY[0x277D86288], a1);
  if ((a4 & 1) == 0)
  {
    if (*MEMORY[0x277D86298] >= a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = *MEMORY[0x277D86298];
    }

    xpc_dictionary_set_int64(v8, *MEMORY[0x277D86250], v9);
  }

  if ((a2 * 3600) >> 64 != (3600 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_14;
  }

  xpc_dictionary_set_int64(v8, *MEMORY[0x277D86270], 3600 * a2);
  if (!*MEMORY[0x277D86380])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D86230], 0);
  xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D863A0], 0);
  if (!*MEMORY[0x277D863A8])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D863A8], 0);
  if (!*MEMORY[0x277D863B0])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D863B0], 1);
  if (!*MEMORY[0x277D86398])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D86398], 1);
  if (*MEMORY[0x277D86390])
  {
    xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D86390], 1);
    return;
  }

LABEL_18:
  __break(1u);
}

void sub_22B9DB944()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86360], 1);
  if (!*MEMORY[0x277D863B8])
  {
    __break(1u);
    goto LABEL_9;
  }

  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D863B8], 1);
  if (!*MEMORY[0x277D86380])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D863A0], 0);
  if (!*MEMORY[0x277D863A8])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D863A8], 0);
  if (!*MEMORY[0x277D863B0])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D863B0], 0);
  if (!*MEMORY[0x277D86398])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86398], 1);
  if (*MEMORY[0x277D86390])
  {
    xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86390], 0);
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_22B9DBAA8(char a1, char a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86360], 0);
  if (!*MEMORY[0x277D86380])
  {
    __break(1u);
    goto LABEL_8;
  }

  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86230], a1 & 1);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D863A0], 0);
  if (!*MEMORY[0x277D863A8])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D863A8], 0);
  if (!*MEMORY[0x277D863B0])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D863B0], a1 & 1);
  if (!*MEMORY[0x277D86398])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86398], 1);
  if (*MEMORY[0x277D86390])
  {
    xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86390], a2 & 1);
    return;
  }

LABEL_11:
  __break(1u);
}

void sub_22B9DBBF0()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86360], 0);
  if (!*MEMORY[0x277D86390])
  {
    __break(1u);
    goto LABEL_6;
  }

  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86390], 1);
  xpc_dictionary_set_int64(v0, *MEMORY[0x277D86250], *MEMORY[0x277D86298]);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86230], 0);
  if (!*MEMORY[0x277D863A8])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D863A8], 0);
  if (*MEMORY[0x277D86380])
  {
    xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86380], 1);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_22B9DBD04(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B943E68;

  return sub_22B9DBF64(a1, a2);
}

uint64_t sub_22B9DBDB8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B947814;

  return sub_22B9DC050(a1, a2, v6);
}

uint64_t sub_22B9DBE78(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_22B947A44;

  return sub_22B9E81AC(a1, a2, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/ImportStragglersStep.swift", 112, 2);
}

uint64_t sub_22B9DBF64(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_22B947CB8;

  return sub_22B9E81AC(a1, a2, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/ImportStragglersStep.swift", 112, 2);
}

uint64_t sub_22B9DC050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_22B9DC074, 0, 0);
}

uint64_t sub_22B9DC074()
{
  v22 = v0;
  v1 = v0[5];
  v2 = *(v1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_delegate);
  if (v2)
  {
    v21[0] = 0x2E636E7973;
    v21[1] = 0xE500000000000000;
    sub_22B9358B4((v1 + 16), *(v1 + 40));
    v3 = sub_22B9B580C();
    MEMORY[0x231899730](v3);

    MEMORY[0x231899730](46, 0xE100000000000000);
    sub_22BA0FDCC();
    sub_22B944034();
    v4 = sub_22BA10C1C();
    MEMORY[0x231899730](v4);

    v5 = sub_22BA0FFCC();

    v6 = sub_22BA0FDAC();
    [v2 syncCoordinatorWaitingForImportToFinishWithName:v5 identifier:{v6, 0x2E636E7973, 0xE500000000000000}];
  }

  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v7 = sub_22BA0FEFC();
  v0[8] = sub_22B936CA8(v7, qword_28141AD10);
  swift_unknownObjectRetain();
  v8 = sub_22BA0FEDC();
  v9 = sub_22BA1046C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[5];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21[0] = v12;
    *v11 = 136315138;
    sub_22B9358B4((v10 + 16), *(v10 + 40));
    v13 = sub_22B9B580C();
    v15 = sub_22B99153C(v13, v14, v21);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_22B92A000, v8, v9, "Import Stragglers Step start for job: %s", v11, 0xCu);
    sub_22B936C4C(v12);
    MEMORY[0x23189ADD0](v12, -1, -1);
    MEMORY[0x23189ADD0](v11, -1, -1);
  }

  if (qword_2814157A8 != -1)
  {
    swift_once();
  }

  v16 = qword_28141AD98;
  v0[9] = qword_28141AD98;
  swift_beginAccess();
  *(v16 + 16) = MEMORY[0x277D84F98];

  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  v17[1] = sub_22B9DC3A4;
  v18 = v0[6];
  v19 = v0[5];

  return sub_22B9CB9CC(v19, v18);
}