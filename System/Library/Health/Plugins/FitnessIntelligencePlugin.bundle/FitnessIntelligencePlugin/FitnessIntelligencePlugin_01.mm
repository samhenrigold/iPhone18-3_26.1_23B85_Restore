uint64_t sub_1B3DC()
{
  v1 = sub_74CA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B470(void *a1, void *a2)
{
  v5 = *(sub_74CA8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_19C58(a1, a2, v2 + v6, v7);
}

uint64_t sub_1B51C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseChecksum(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B598(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1B5A4()
{
  v1 = sub_74CA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B638(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_74CA8() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_1A388(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_1B700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B748(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_38F8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B7C4(unint64_t a1, void *a2)
{
  v84 = a2;
  v80 = sub_754B8();
  v3 = *(v80 - 8);
  v4 = __chkstk_darwin(v80);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  isa = (&v67 - v7);
  v9 = sub_38F8(&unk_8FD00, &qword_7A260);
  v89 = *(v9 - 1);
  v10 = __chkstk_darwin(v9);
  v95 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v67 - v13;
  __chkstk_darwin(v12);
  v88 = &v67 - v15;
  v16 = sub_65518(a1);
  if (v16)
  {
    v17 = v16;
    if (v16 >> 62)
    {
      goto LABEL_61;
    }

    if (*(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
    {
      do
      {
        v96 = v9;
        v90 = v14;
        v67 = v17;
        v97[0] = v17;
        sub_38F8(&qword_8F420, &qword_7A268);
        sub_7718(&qword_8F428, &qword_8F420, &qword_7A268, &protocol conformance descriptor for [A]);
        isa = v97;
        v14 = 0;
        v18 = sub_75648();
        v20 = 0;
        v21 = *(v18 + 64);
        v68 = v18 + 64;
        v22 = 1 << *(v18 + 32);
        v17 = -1;
        if (v22 < 64)
        {
          v17 = ~(-1 << v22);
        }

        v23 = v17 & v21;
        v24 = (v22 + 63) >> 6;
        v94 = (v89 + 32);
        v77 = (v3 + 8);
        *&v19 = 136315394;
        v73 = v19;
        v83 = v6;
        v70 = v18;
        v69 = v24;
LABEL_8:
        while (v23)
        {
LABEL_13:
          v26 = (v20 << 9) | (8 * __clz(__rbit64(v23)));
          v17 = *(v18 + 56);
          v76 = *(*(v18 + 48) + v26);
          v27 = *(v17 + v26);
          v79 = v27 >> 62;
          if (v27 >> 62)
          {
            v58 = v18;
            isa = v20;
            v9 = v24;
            v3 = v23;
            v59 = sub_759D8();
            v23 = v3;
            v24 = v9;
            v20 = isa;
            v28 = v59;
            v18 = v58;
          }

          else
          {
            v28 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
          }

          v23 &= v23 - 1;
          if (v28)
          {
            v71 = v23;
            v72 = v20;
            v82 = v27 & 0xC000000000000001;
            v29 = v27 & 0xFFFFFFFFFFFFFF8;
            v75 = v27 + 32;
            v78 = v27 & 0xFFFFFFFFFFFFFF8;
            if (v27 < 0)
            {
              v29 = v27;
            }

            v74 = v29;
            v81 = v28;

            v30 = 0;
            v85 = v27;
            while (1)
            {
              if (v82)
              {
                v31 = sub_75928();
              }

              else
              {
                if (v30 >= *(v78 + 16))
                {
                  goto LABEL_60;
                }

                v31 = *(v75 + 8 * v30);
              }

              v87 = v31;
              v32 = __OFADD__(v30, 1);
              v33 = v30 + 1;
              if (v32)
              {
                goto LABEL_58;
              }

              v86 = v33;
              v3 = *&v87[OBJC_IVAR____TtC25FitnessIntelligencePlugin37FitnessPlusPropertyRecordJournalEntry_entities];
              if (v3 >> 62)
              {
                v34 = sub_759D8();
                if (v34)
                {
LABEL_28:
                  v6 = 0;
                  v91 = v3 & 0xFFFFFFFFFFFFFF8;
                  v92 = v3 & 0xC000000000000001;
                  v35 = _swiftEmptyArrayStorage;
                  while (1)
                  {
                    if (v92)
                    {
                      v36 = sub_75928();
                    }

                    else
                    {
                      if (v6 >= *(v91 + 16))
                      {
                        goto LABEL_57;
                      }

                      v36 = *(v3 + 8 * v6 + 32);
                    }

                    v37 = v36;
                    if (__OFADD__(v6, 1))
                    {
                      break;
                    }

                    sub_398C(*&v36[OBJC_IVAR___FitnessPlusEntityWrapper_serializedEntity], *&v36[OBJC_IVAR___FitnessPlusEntityWrapper_serializedEntity + 8]);
                    sub_7718(&qword_8F430, &unk_8FD00, &qword_7A260, &protocol conformance descriptor for DatabasePropertyRecord<A>);
                    v38 = v90;
                    v39 = v96;
                    sub_74F88();
                    if (v14)
                    {

                      goto LABEL_47;
                    }

                    v93 = 0;
                    v40 = (v6 + 1);
                    v41 = v3;

                    v9 = *v94;
                    v42 = v88;
                    (*v94)(v88, v38, v39);
                    (v9)(v95, v42, v39);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v35 = sub_67644(0, v35[2] + 1, 1, v35);
                    }

                    v44 = v35[2];
                    v43 = v35[3];
                    v45 = v35;
                    isa = (v44 + 1);
                    v3 = v41;
                    if (v44 >= v43 >> 1)
                    {
                      v45 = sub_67644((v43 > 1), v44 + 1, 1, v35);
                    }

                    v35 = v45;
                    v45[2] = isa;
                    (v9)(v45 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v44, v95, v96);
                    ++v6;
                    v46 = v40 == v34;
                    v14 = v93;
                    if (v46)
                    {
                      goto LABEL_45;
                    }
                  }

                  __break(1u);
LABEL_57:
                  __break(1u);
LABEL_58:
                  __break(1u);
                  goto LABEL_59;
                }
              }

              else
              {
                v34 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
                if (v34)
                {
                  goto LABEL_28;
                }
              }

              v35 = _swiftEmptyArrayStorage;
LABEL_45:
              sub_5D36C(v35, v76, v84, 0);
              if (v14)
              {

LABEL_47:
                v14 = 0;
                v6 = v83;
                sub_75378();
                swift_errorRetain();
                v47 = sub_754A8();
                v48 = sub_75718();

                if (os_log_type_enabled(v47, v48))
                {
                  v49 = swift_slowAlloc();
                  v50 = swift_slowAlloc();
                  v51 = swift_slowAlloc();
                  v97[0] = v51;
                  *v49 = v73;
                  v52 = sub_75B18();
                  v54 = sub_31B4(v52, v53, v97);

                  *(v49 + 4) = v54;
                  *(v49 + 12) = 2112;
                  swift_errorRetain();
                  v55 = _swift_stdlib_bridgeErrorToNSError();
                  *(v49 + 14) = v55;
                  *v50 = v55;
                  _os_log_impl(&dword_0, v47, v48, "Failed to apply %s: %@", v49, 0x16u);
                  sub_3D48(v50, &unk_8EB30, &unk_7A270);

                  sub_3940(v51);
                  v6 = v83;
                }

                (*v77)(v6, v80);
                v56 = [v84 database];
                if (v79)
                {
                  sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);

                  v3 = sub_759C8();
                }

                else
                {
                  v3 = v85;

                  sub_75A78();
                  sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);
                }

                sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);
                isa = sub_75678().super.isa;

                v97[0] = 0;
                v9 = [v56 addJournalEntries:isa error:v97];

                if (!v9)
                {
                  v66 = v97[0];
                  sub_74898();

                  swift_willThrow();
                  v97[0] = 0;
                  v97[1] = 0xE000000000000000;
                  sub_75908(38);
                  v98._object = 0x80000000000779F0;
                  v98._countAndFlagsBits = 0xD000000000000024;
                  sub_75608(v98);
                  swift_getErrorValue();
                  sub_75A48();
                  result = sub_759B8();
                  __break(1u);
                  return result;
                }

                v57 = v97[0];
              }

              else
              {
              }

              v30 = v86;

              if (v30 == v81)
              {

                v18 = v70;
                v20 = v72;
                v24 = v69;
                v23 = v71;
                goto LABEL_8;
              }
            }
          }
        }

        while (1)
        {
          v25 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v25 >= v24)
          {
          }

          v23 = *(v68 + 8 * v25);
          ++v20;
          if (v23)
          {
            v20 = v25;
            goto LABEL_13;
          }
        }

LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        v61 = v17;
        v62 = sub_759D8();
        v17 = v61;
      }

      while (v62);
    }
  }

  sub_75378();
  v63 = sub_754A8();
  v64 = sub_75718();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_0, v63, v64, "Applying journal entries, but none found. Skipping.", v65, 2u);
  }

  return (*(v3 + 8))(isa, v80);
}

void *sub_1C2D8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(*result + OBJC_IVAR____TtC25FitnessIntelligencePlugin37FitnessPlusPropertyRecordJournalEntry_provenance);
  *(a2 + 8) = 0;
  return result;
}

id sub_1C38C(id a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_754B8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_38F8(&qword_8EB58, &unk_79BB0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_79E90;
  *(v8 + 32) = sub_7688(0, &qword_8EEF8, NSArray_ptr);
  *(v8 + 40) = sub_7688(0, &qword_8EF00, NSData_ptr);
  sub_757F8();

  if (v35[3])
  {
    sub_38F8(&qword_8EF10, &qword_79EC0);
    if (swift_dynamicCast())
    {
      v9 = v34;
      v10 = *(v34 + 16);
      if (v10)
      {
        v31 = a1;
        v35[0] = _swiftEmptyArrayStorage;
        sub_75978();
        v11 = type metadata accessor for FitnessPlusPropertyRecordEntity.EntityWrapper();
        v12 = (v9 + 40);
        do
        {
          v13 = *(v12 - 1);
          v14 = *v12;
          v15 = objc_allocWithZone(v11);
          v16 = &v15[OBJC_IVAR___FitnessPlusEntityWrapper_serializedEntity];
          *v16 = v13;
          v16[1] = v14;
          sub_398C(v13, v14);
          v33.receiver = v15;
          v33.super_class = v11;
          objc_msgSendSuper2(&v33, "init");
          sub_75958();
          sub_75988();
          sub_75998();
          sub_75968();
          v12 += 2;
          --v10;
        }

        while (v10);

        v17 = v35[0];
        a1 = v31;
      }

      else
      {

        v17 = _swiftEmptyArrayStorage;
      }

      v27 = sub_75598();
      v28 = [a1 decodeInt64ForKey:v27];

      *&v2[OBJC_IVAR____TtC25FitnessIntelligencePlugin37FitnessPlusPropertyRecordJournalEntry_entities] = v17;
      *&v2[OBJC_IVAR____TtC25FitnessIntelligencePlugin37FitnessPlusPropertyRecordJournalEntry_provenance] = v28;
      v29 = type metadata accessor for FitnessPlusPropertyRecordJournalEntry();
      v32.receiver = v2;
      v32.super_class = v29;
      v30 = objc_msgSendSuper2(&v32, "init");

      return v30;
    }
  }

  else
  {
    sub_3D48(v35, &qword_8EF08, &unk_7A250);
  }

  sub_75378();
  v18 = sub_754A8();
  v19 = sub_75718();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v31 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v35[0] = v22;
    *v21 = 136315138;
    v23 = sub_75B18();
    v25 = sub_31B4(v23, v24, v35);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_0, v18, v19, "Failed to decode %s journal entry: missing entity data", v21, 0xCu);
    sub_3940(v22);
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
  type metadata accessor for FitnessPlusPropertyRecordJournalEntry();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1C7E8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC25FitnessIntelligencePlugin37FitnessPlusPropertyRecordJournalEntry_provenance);
  v4 = sub_75598();
  [a1 encodeInt64:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC25FitnessIntelligencePlugin37FitnessPlusPropertyRecordJournalEntry_entities);
  if (v5 >> 62)
  {
    v6 = sub_759D8();
  }

  else
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  }

  if (v6)
  {
    sub_67DDC(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        v8 = sub_75928();
        v9 = *(v8 + OBJC_IVAR___FitnessPlusEntityWrapper_serializedEntity);
        v10 = *(v8 + OBJC_IVAR___FitnessPlusEntityWrapper_serializedEntity + 8);
        sub_398C(v9, v10);
        swift_unknownObjectRelease();
        v12 = _swiftEmptyArrayStorage[2];
        v11 = _swiftEmptyArrayStorage[3];
        if (v12 >= v11 >> 1)
        {
          sub_67DDC((v11 > 1), v12 + 1, 1);
        }

        ++v7;
        _swiftEmptyArrayStorage[2] = v12 + 1;
        v13 = &_swiftEmptyArrayStorage[2 * v12];
        v13[4] = v9;
        v13[5] = v10;
      }

      while (v6 != v7);
    }

    else
    {
      v14 = (v5 + 32);
      do
      {
        v15 = (*v14 + OBJC_IVAR___FitnessPlusEntityWrapper_serializedEntity);
        v16 = *v15;
        v17 = v15[1];
        sub_398C(*v15, v17);
        v19 = _swiftEmptyArrayStorage[2];
        v18 = _swiftEmptyArrayStorage[3];
        if (v19 >= v18 >> 1)
        {
          sub_67DDC((v18 > 1), v19 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v19 + 1;
        v20 = &_swiftEmptyArrayStorage[2 * v19];
        v20[4] = v16;
        v20[5] = v17;
        ++v14;
        --v6;
      }

      while (v6);
    }
  }

  isa = sub_75678().super.isa;

  v22 = sub_75598();
  [a1 encodeObject:isa forKey:v22];
}

id sub_1CAF0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FitnessPlusPropertyRecordJournalEntry();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1CBB8()
{
  sub_38F8(&qword_8F180, &qword_79D40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_7A280;
  v1 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v2 = sub_75598();
  v3 = sub_75598();
  v4 = [v1 initWithName:v2 columnType:v3 keyPathType:3];

  *(v0 + 32) = v4;
  v5 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v6 = sub_75598();
  v7 = sub_75598();
  v8 = [v5 initWithName:v6 columnType:v7 keyPathType:5];

  *(v0 + 40) = v8;
  v9 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v10 = sub_75598();
  v11 = sub_75598();
  v12 = [v9 initWithName:v10 columnType:v11 keyPathType:4];

  *(v0 + 48) = v12;
  v13 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v14 = sub_75598();
  v15 = sub_75598();
  v16 = [v13 initWithName:v14 columnType:v15 keyPathType:1];

  *(v0 + 56) = v16;
  v17 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v18 = sub_75598();
  v19 = sub_75598();
  v20 = [v17 initWithName:v18 columnType:v19 keyPathType:0];

  *(v0 + 64) = v20;
  v21 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v22 = sub_75598();
  v23 = sub_75598();
  v24 = [v21 initWithName:v22 columnType:v23 keyPathType:3];

  *(v0 + 72) = v24;
  v25 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v26 = sub_75598();
  v27 = sub_75598();
  v28 = [v25 initWithName:v26 columnType:v27 keyPathType:3];

  *(v0 + 80) = v28;
  qword_90028 = v0;
}

id InferenceRecordContainerEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for InferenceRecordContainerEntity();
  return objc_msgSendSuper2(&v4, "initWithPersistentID:", a1);
}

id InferenceRecordContainerEntity.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for InferenceRecordContainerEntity();
  return objc_msgSendSuper2(&v3, "init");
}

id InferenceRecordContainerEntity.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for InferenceRecordContainerEntity();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *_s25FitnessIntelligencePlugin30InferenceRecordContainerEntityC14createTableSQL4withSSSgSo11_HKBehaviorC_tFZ_0()
{
  sub_75908(34);

  v22._countAndFlagsBits = 0xD00000000000002ALL;
  v22._object = 0x8000000000078960;
  sub_75608(v22);
  v23._countAndFlagsBits = 10272;
  v23._object = 0xE200000000000000;
  sub_75608(v23);
  if (qword_8E9F8 != -1)
  {
    swift_once();
  }

  v0 = qword_90028;
  if (qword_90028 >> 62)
  {
    v1 = sub_759D8();
  }

  else
  {
    v1 = *(&dword_10 + (qword_90028 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v1)
  {
    goto LABEL_14;
  }

  result = sub_67C58(0, v1 & ~(v1 >> 63), 0);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v4 = sub_75928();
      }

      else
      {
        v4 = *(v0 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = [v4 name];
      v7 = sub_755A8();
      v9 = v8;

      v20 = v7;
      v21 = v9;
      v24._countAndFlagsBits = 32;
      v24._object = 0xE100000000000000;
      sub_75608(v24);
      v10 = [v5 columnType];
      v11 = sub_755A8();
      v13 = v12;

      v25._countAndFlagsBits = v11;
      v25._object = v13;
      sub_75608(v25);

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_67C58((v14 > 1), v15 + 1, 1);
      }

      ++v3;
      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v15];
      v16[4] = v20;
      v16[5] = v21;
    }

    while (v1 != v3);
LABEL_14:
    sub_38F8(&qword_8F280, &unk_7ABA0);
    sub_1D80C();
    v17 = sub_75538();
    v19 = v18;

    v26._countAndFlagsBits = v17;
    v26._object = v19;
    sub_75608(v26);

    v27._countAndFlagsBits = 41;
    v27._object = 0xE100000000000000;
    sub_75608(v27);
    return 0xD00000000000001BLL;
  }

  __break(1u);
  return result;
}

void *sub_1D420()
{
  sub_67C58(0, 6, 0);
  v0 = 0;
  result = _swiftEmptyArrayStorage;
  do
  {
    v2 = *(&off_85B18 + v0 + 32);
    if (v2 == 5)
    {
      v3 = 0x766F7250636E7973;
    }

    else
    {
      v3 = 0x6E656449636E7973;
    }

    if (v2 == 5)
    {
      v4 = 0xEE0065636E616E65;
    }

    else
    {
      v4 = 0xEC00000079746974;
    }

    if (v2 == 3)
    {
      v5 = 0x4164657461657263;
    }

    else
    {
      v5 = 1635017060;
    }

    if (v2 == 3)
    {
      v6 = 0xE900000000000074;
    }

    else
    {
      v6 = 0xE400000000000000;
    }

    if (*(&off_85B18 + v0 + 32) <= 4u)
    {
      v3 = v5;
      v4 = v6;
    }

    if (v2 == 1)
    {
      v7 = 1684632949;
    }

    else
    {
      v7 = 0x72657470616461;
    }

    if (v2 == 1)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (!*(&off_85B18 + v0 + 32))
    {
      v7 = 0x4449574F52;
      v8 = 0xE500000000000000;
    }

    if (*(&off_85B18 + v0 + 32) <= 2u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (*(&off_85B18 + v0 + 32) <= 2u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }

    v14 = result;
    v12 = result[2];
    v11 = result[3];
    if (v12 >= v11 >> 1)
    {
      sub_67C58((v11 > 1), v12 + 1, 1);
      result = v14;
    }

    ++v0;
    result[2] = v12 + 1;
    v13 = &result[2 * v12];
    v13[4] = v9;
    v13[5] = v10;
  }

  while (v0 != 6);
  return result;
}

uint64_t sub_1D634(uint64_t *a1)
{
  if (qword_8E9F8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = qword_90028;
  v3 = qword_90028 >> 62;
  if (qword_90028 >> 62)
  {
    if (qword_90028 < 0)
    {
      v1 = qword_90028;
    }

    else
    {
      v1 = qword_90028 & 0xFFFFFFFFFFFFFF8;
    }

    *a1 = sub_759D8();
    v4 = sub_759D8();
  }

  else
  {
    v4 = *(&dword_10 + (qword_90028 & 0xFFFFFFFFFFFFFF8));
    *a1 = v4;
  }

  if ((v4 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v1 = swift_slowAlloc();
  if (v3)
  {
    sub_759D8();
    v5 = sub_759D8();

    if (!v5)
    {
      goto LABEL_9;
    }

LABEL_15:
    sub_3AD4(v2);

    goto LABEL_9;
  }

LABEL_9:
  sub_1D7C0();
  swift_arrayInitWithCopy();
  swift_unknownObjectRelease();
  return v1;
}

unint64_t sub_1D7C0()
{
  result = qword_8FB90;
  if (!qword_8FB90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8FB90);
  }

  return result;
}

unint64_t sub_1D80C()
{
  result = qword_8FBA0;
  if (!qword_8FBA0)
  {
    sub_76D0(&qword_8F280, &unk_7ABA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FBA0);
  }

  return result;
}

id sub_1D8E8(void *a1)
{
  v2 = v1;
  v4 = sub_38F8(&unk_8FA00, &qword_7A740);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_74D78();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_38F8(&qword_8EB58, &unk_79BB0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_79BF0;
  *(v11 + 32) = sub_7688(0, &qword_8EF00, NSData_ptr);
  sub_757F8();

  if (v24)
  {
    if (swift_dynamicCast())
    {
      v12 = v21;
      v13 = v22;
      sub_398C(v21, v22);
      sub_11CF4();
      sub_74F88();
      (*(v8 + 56))(v6, 0, 1, v7);
      (*(v8 + 32))(v10, v6, v7);
      (*(v8 + 16))(&v1[OBJC_IVAR____TtC25FitnessIntelligencePlugin36InferenceRecordContainerJournalEntry_record], v10, v7);
      v14 = sub_75598();
      v15 = [a1 decodeInt64ForKey:v14];

      *&v2[OBJC_IVAR____TtC25FitnessIntelligencePlugin36InferenceRecordContainerJournalEntry_provenance] = v15;
      v16 = type metadata accessor for InferenceRecordContainerJournalEntry(0);
      v20.receiver = v2;
      v20.super_class = v16;
      v17 = objc_msgSendSuper2(&v20, "init");

      sub_FB28(v12, v13);
      (*(v8 + 8))(v10, v7);
      return v17;
    }
  }

  else
  {

    sub_3D48(v23, &qword_8EF08, &unk_7A250);
  }

  type metadata accessor for InferenceRecordContainerJournalEntry(0);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1DCD4(void *a1)
{
  v2 = v1;
  sub_74D78();
  sub_11CF4();
  v4 = sub_74F98();
  v6 = v5;
  isa = sub_748A8().super.isa;
  v8 = sub_75598();
  [a1 encodeObject:isa forKey:v8];

  v9 = *(v2 + OBJC_IVAR____TtC25FitnessIntelligencePlugin36InferenceRecordContainerJournalEntry_provenance);
  v10 = sub_75598();
  [a1 encodeInt64:v9 forKey:v10];

  return sub_FB28(v4, v6);
}

id sub_1DECC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InferenceRecordContainerJournalEntry(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InferenceRecordContainerJournalEntry(uint64_t a1)
{
  result = qword_8F488;
  if (!qword_8F488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DFC4(uint64_t a1)
{
  result = sub_74D78();
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

uint64_t sub_1E060(unint64_t a1, void *a2)
{
  v45 = a2;
  v40 = sub_754B8();
  v3 = *(v40 - 8);
  v4 = __chkstk_darwin(v40);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v46 = &v37 - v8;
  __chkstk_darwin(v7);
  v10 = &v37 - v9;
  v11 = sub_65534(a1);
  if (v11)
  {
    v12 = v11;
    sub_75378();

    v13 = sub_754A8();
    v14 = sub_75708();
    v15 = v12 >> 62;
    if (os_log_type_enabled(v13, v14))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      if (v15)
      {
        v17 = sub_759D8();
      }

      else
      {
        v17 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
      }

      *(v16 + 4) = v17;

      _os_log_impl(&dword_0, v13, v14, "applying %ld journal entries", v16, 0xCu);
    }

    else
    {
    }

    v38 = *(v3 + 8);
    v39 = v3 + 8;
    v38(v10, v40);
    v26 = v12 & 0xFFFFFFFFFFFFFF8;
    if (v15)
    {
      goto LABEL_22;
    }

    for (i = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)); i; i = sub_759D8())
    {
      v28 = 0;
      v44 = v12 & 0xC000000000000001;
      *(&v29 + 1) = 2;
      v41 = xmmword_79BF0;
      *&v29 = 138412290;
      v37 = v29;
      v42 = i;
      v43 = v26;
      while (1)
      {
        if (v44)
        {
          v30 = sub_75928();
        }

        else
        {
          if (v28 >= *(v26 + 16))
          {
            goto LABEL_21;
          }

          v30 = *(v12 + 8 * v28 + 32);
        }

        v31 = v30;
        v32 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        type metadata accessor for InferenceRecordContainerEntity();
        sub_38F8(&qword_8F3C8, &unk_7A2E0);
        v33 = sub_74D78();
        v34 = *(v33 - 8);
        v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v36 = swift_allocObject();
        *(v36 + 16) = v41;
        (*(v34 + 16))(v36 + v35, &v31[OBJC_IVAR____TtC25FitnessIntelligencePlugin36InferenceRecordContainerJournalEntry_record], v33);
        sub_705B8(v36, *&v31[OBJC_IVAR____TtC25FitnessIntelligencePlugin36InferenceRecordContainerJournalEntry_provenance], v45);

        v26 = v43;
        ++v28;
        if (v32 == v42)
        {
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }
  }

  else
  {
    sub_75378();

    v18 = sub_754A8();
    v19 = sub_75718();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v47 = v21;
      *v20 = 136315138;
      sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);
      v22 = sub_75698();
      v24 = sub_31B4(v22, v23, &v47);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_0, v18, v19, "Unexpected journal entries: %s", v20, 0xCu);
      sub_3940(v21);
    }

    return (*(v3 + 8))(v6, v40);
  }
}

uint64_t sub_1E630()
{

  sub_38F8(&qword_8F598, &unk_7A350);
  sub_74CC8();

  [v2 invalidate];

  return swift_deallocClassInstance();
}

uint64_t sub_1E714(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1E764(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1E7B8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1E7D0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

id sub_1E800@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 48);
  *a2 = v2;
  return v2;
}

id sub_1E830@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return v2;
}

void sub_1E860(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v52 = a2;
  v54 = a3;
  v4 = sub_754B8();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v55 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v49 - v9;
  __chkstk_darwin(v8);
  v12 = &v49 - v11;
  v13 = a1[2];
  v14 = a1[3];
  sub_75378();

  v15 = sub_754A8();
  v16 = sub_75738();

  v17 = os_log_type_enabled(v15, v16);
  v51 = v13;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v53 = v4;
    v50 = v10;
    v19 = v18;
    v20 = v5;
    v21 = swift_slowAlloc();
    v57 = v21;
    *v19 = 136315138;
    *(v19 + 4) = sub_31B4(v13, v14, &v57);
    _os_log_impl(&dword_0, v15, v16, "Incrementing assertion %s", v19, 0xCu);
    sub_3940(v21);
    v5 = v20;

    v10 = v50;
    v4 = v53;
  }

  v22 = *(v5 + 1);
  v22(v12, v4);
  v23 = a1[6];
  v24 = v55;
  if (v23)
  {
    v25 = a1[7];
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
    }

    v27 = v4;
    a1[7] = v26;
    v28 = v23;
    sub_75378();
    v29 = sub_754A8();
    v30 = sub_75738();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      *(v31 + 4) = v26;
      _os_log_impl(&dword_0, v29, v30, "Count is now: %ld", v31, 0xCu);
    }

    v22(v24, v27);
  }

  else
  {
    sub_75378();

    v32 = sub_754A8();
    v33 = sub_75738();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v55 = v5;
      v35 = v34;
      v36 = swift_slowAlloc();
      v53 = v4;
      v37 = v10;
      v38 = v36;
      v57 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_31B4(v51, v14, &v57);
      _os_log_impl(&dword_0, v32, v33, "Taking assertion: %s", v35, 0xCu);
      sub_3940(v38);

      v22(v37, v53);
    }

    else
    {

      v22(v10, v4);
    }

    v39 = [v52 profile];
    v40 = [v39 database];

    v41 = sub_75598();
    v42 = a1[4];
    v57 = 0;
    v43 = [v40 takeAccessibilityAssertionWithOwnerIdentifier:v41 contextType:v42 error:&v57];

    v44 = v57;
    if (!v43)
    {
      v47 = v57;
      v48 = sub_74898();

      v56 = v48;
      swift_willThrow();
      return;
    }

    v45 = a1[6];
    a1[6] = v43;
    a1[7] = 1;
    v46 = v44;
    v28 = v43;
  }

  *v54 = v28;
}

void sub_1ED68(void *a1)
{
  v2 = sub_754B8();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v41 = &v39 - v7;
  __chkstk_darwin(v6);
  v9 = &v39 - v8;
  v10 = a1[2];
  v11 = a1[3];
  sub_75378();

  v12 = sub_754A8();
  v13 = sub_75738();

  v14 = os_log_type_enabled(v12, v13);
  v42 = v2;
  v40 = v10;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v39 = v3;
    v17 = v16;
    v44 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_31B4(v10, v11, &v44);
    _os_log_impl(&dword_0, v12, v13, "Decrementing assertion: %s", v15, 0xCu);
    sub_3940(v17);
    v18 = v39;

    v19 = *(v18 + 8);
  }

  else
  {

    v19 = *(v3 + 8);
  }

  v19(v9, v2);
  v21 = (a1 + 6);
  v20 = a1[6];
  v22 = v43;
  if (v20)
  {
    v23 = a1[7];
    if (v23 < 2)
    {
      v31 = v20;
      sub_75378();

      v32 = sub_754A8();
      v33 = sub_75738();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v44 = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_31B4(v40, v11, &v44);
        _os_log_impl(&dword_0, v32, v33, "Invalidating assertion: %s", v34, 0xCu);
        sub_3940(v35);

        v36 = v43;
      }

      else
      {

        v36 = v22;
      }

      v19(v36, v42);
      [v31 invalidate];

      v38 = *v21;
      *v21 = 0;
      a1[7] = 0;
    }

    else
    {
      v24 = v23 - 1;
      a1[7] = v23 - 1;
      v25 = v20;
      v26 = v41;
      sub_75378();
      v27 = sub_754A8();
      v28 = sub_75738();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134217984;
        *(v29 + 4) = v24;
        _os_log_impl(&dword_0, v27, v28, "Count is now: %ld", v29, 0xCu);

        v30 = v25;
      }

      else
      {
        v30 = v27;
        v27 = v25;
      }

      v37 = v42;

      v19(v26, v37);
    }
  }
}

uint64_t getEnumTagSinglePayload for DatabaseEntityError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DatabaseEntityError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1F2FC()
{
  result = qword_8F5A0;
  if (!qword_8F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F5A0);
  }

  return result;
}

id InferenceRecordTaskServer.init(uuid:configuration:client:delegate:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = sub_1F5F8(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v6;
}

NSXPCInterface __swiftcall InferenceRecordTaskServer.exportedInterface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP19FitnessIntelligence34InferenceRecordTaskServerInterface_];

  return v0;
}

id InferenceRecordTaskServer.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for InferenceRecordTaskServer();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1F5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v18 = a1;
  v4 = sub_75768();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75758();
  __chkstk_darwin(v8);
  v9 = sub_754F8();
  __chkstk_darwin(v9 - 8);
  sub_1720C();
  sub_754D8();
  v24 = _swiftEmptyArrayStorage;
  sub_17258();
  sub_38F8(&qword_8F3A0, &unk_7A440);
  sub_172B0();
  sub_75858();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v4);
  v10 = sub_75798();
  v11 = v18;
  v12 = v19;
  *&v19[OBJC_IVAR____TtC25FitnessIntelligencePlugin25InferenceRecordTaskServer_queue] = v10;
  isa = sub_74988().super.isa;
  v14 = type metadata accessor for InferenceRecordTaskServer();
  v23.receiver = v12;
  v23.super_class = v14;
  v15 = objc_msgSendSuper2(&v23, "initWithUUID:configuration:client:delegate:", isa, v20, v21, v22);

  v16 = sub_749B8();
  (*(*(v16 - 8) + 8))(v11, v16);
  return v15;
}

unint64_t sub_1F8B0()
{
  result = qword_8F5D8;
  if (!qword_8F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F5D8);
  }

  return result;
}

uint64_t sub_1F94C(uint64_t a1)
{
  result = sub_20100(&qword_8F638, type metadata accessor for RingsPropertyRecordEntity, &unk_7A47C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1F9A8(uint64_t a1, sqlite3_stmt *a2, uint64_t a3)
{
  v5 = sub_38F8(&qword_8F290, &qword_7A130);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_38F8(&qword_8F298, &qword_7A138);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  sub_75158();
  v11 = sub_74D08();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_3D48(v10, &qword_8F298, &qword_7A138);
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
  }

  else
  {
    *(&v33 + 1) = v11;
    v34 = sub_20100(&qword_8F670, &type metadata accessor for MonthOfYear, &protocol conformance descriptor for MonthOfYear);
    v13 = sub_5914(&v32);
    (*(v12 + 32))(v13, v10, v11);
  }

  sub_38F8(&qword_8F658, &unk_7AD30);
  inited = swift_initStackObject();
  v15 = inited;
  v31 = xmmword_79BF0;
  *(inited + 16) = xmmword_79BF0;
  if (*(&v33 + 1))
  {
    sub_5978(&v32, inited + 32);
  }

  else
  {
    v16 = v34;
    v17 = v33;
    *(inited + 32) = v32;
    *(inited + 48) = v17;
    *(inited + 64) = v16;
  }

  v18 = sub_6C4F0(a2, a3, v15);
  swift_setDeallocating();
  if (*(v15 + 56))
  {
    sub_3940((v15 + 32));
  }

  if (*(&v33 + 1))
  {
    sub_3940(&v32);
  }

  sub_75178();
  v19 = sub_753D8();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v7, 1, v19) == 1)
  {
    sub_3D48(v7, &qword_8F290, &qword_7A130);
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
  }

  else
  {
    *(&v33 + 1) = v19;
    v34 = sub_20100(&qword_8F668, &type metadata accessor for DayOfWeek, &protocol conformance descriptor for DayOfWeek);
    v21 = sub_5914(&v32);
    (*(v20 + 32))(v21, v7, v19);
  }

  v22 = swift_initStackObject();
  v23 = v22;
  *(v22 + 16) = v31;
  if (*(&v33 + 1))
  {
    sub_5978(&v32, v22 + 32);
  }

  else
  {
    v24 = v34;
    v25 = v33;
    *(v22 + 32) = v32;
    *(v22 + 48) = v25;
    *(v22 + 64) = v24;
  }

  v26 = sub_6C4F0(a2, v18, v23);
  swift_setDeallocating();
  if (*(v23 + 56))
  {
    sub_3940((v23 + 32));
  }

  if (*(&v33 + 1))
  {
    sub_3940(&v32);
  }

  v27 = sub_75168();
  sub_38F8(&qword_8F660, &qword_7A498);
  v28 = swift_initStackObject();
  *(v28 + 16) = v31;
  *(v28 + 32) = v27;
  v29 = sub_6C668(a2, v26, v28);
  swift_setDeallocating();
  return v29;
}

uint64_t sub_1FDE0(uint64_t a1, uint64_t a2)
{
  v5 = sub_38F8(&qword_8F0A0, &qword_79EC8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  sub_38F8(&qword_8F180, &qword_79D40);
  v9 = swift_allocObject();
  v10 = v9;
  *(v9 + 16) = xmmword_79FD0;
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v28 = a2;
    v29 = v9;
    v35 = _swiftEmptyArrayStorage;
    sub_75978();
    v13 = v6 + 16;
    v14 = *(v6 + 16);
    v15 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v31 = (v6 + 8);
    v32 = v14;
    v30 = *(v6 + 72);
    while (1)
    {
      v16 = v13;
      v32(v8, v15, v5);
      sub_2009C();
      v17 = sub_74F78();
      if (v2)
      {
        break;
      }

      v19 = v17;
      v20 = v18;
      v21 = type metadata accessor for RingsPropertyRecordEntity.EntityWrapper();
      v22 = objc_allocWithZone(v21);
      v23 = &v22[OBJC_IVAR___RingsEntityWrapper_serializedEntity];
      *v23 = v19;
      *(v23 + 1) = v20;
      v34.receiver = v22;
      v34.super_class = v21;
      objc_msgSendSuper2(&v34, "init");
      (*v31)(v8, v5);
      sub_75958();
      sub_75988();
      sub_75998();
      sub_75968();
      v15 += v30;
      --v11;
      v13 = v16;
      if (!v11)
      {
        v12 = v35;
        a2 = v28;
        v10 = v29;
        goto LABEL_6;
      }
    }

    (*v31)(v8, v5);

    v10 = v29;
    *(v29 + 16) = 0;
  }

  else
  {
LABEL_6:
    v24 = type metadata accessor for RingsPropertyRecordJournalEntry();
    v25 = objc_allocWithZone(v24);
    *&v25[OBJC_IVAR____TtC25FitnessIntelligencePlugin31RingsPropertyRecordJournalEntry_entities] = v12;
    *&v25[OBJC_IVAR____TtC25FitnessIntelligencePlugin31RingsPropertyRecordJournalEntry_provenance] = a2;
    v33.receiver = v25;
    v33.super_class = v24;
    *(v10 + 32) = objc_msgSendSuper2(&v33, "init");
  }

  return v10;
}

unint64_t sub_2009C()
{
  result = qword_8EF30;
  if (!qword_8EF30)
  {
    sub_76D0(&qword_8F0A0, &qword_79EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8EF30);
  }

  return result;
}

uint64_t sub_20100(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20148()
{
  sub_38F8(&qword_8F678, &qword_7A4A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_7A450;
  v1 = sub_752A8();
  v2 = sub_4844(v1);

  v3 = sub_39E1C(3, v2);
  v5 = v4;

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  v6 = sub_752C8();
  v7 = sub_485C(v6);

  v8 = sub_39E1C(4, v7);
  v10 = v9;

  *(v0 + 48) = v8;
  *(v0 + 56) = v10;
  v11 = sub_752B8();
  v12 = sub_48BC(v11);

  v13 = sub_39E1C(5, v12);
  v15 = v14;

  *(v0 + 64) = v13;
  *(v0 + 72) = v15;
  return v0;
}

void sub_20254(uint64_t a1, void *a2, void *a3)
{
  type metadata accessor for WorkoutPropertyRecordEntity();
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = [objc_opt_self() contextForWritingProtectedData];
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = a3;
  v9 = [a2 database];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  v11[2] = sub_30094;
  v11[3] = v10;
  aBlock[4] = sub_1008C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_87B70;
  v12 = _Block_copy(aBlock);
  v13 = v6;

  aBlock[0] = 0;
  v14 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v9 context:v13 error:aBlock block:v12];
  _Block_release(v12);

  v15 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if ((v14 & 1) == 0)
  {
    sub_74898();

    swift_willThrow();
  }
}

void sub_204A4(uint64_t a1, void *a2, void *a3)
{
  type metadata accessor for RingsPropertyRecordEntity();
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = [objc_opt_self() contextForWritingProtectedData];
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = a3;
  v9 = [a2 database];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  v11[2] = sub_3008C;
  v11[3] = v10;
  aBlock[4] = sub_1008C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_87A58;
  v12 = _Block_copy(aBlock);
  v13 = v6;

  aBlock[0] = 0;
  v14 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v9 context:v13 error:aBlock block:v12];
  _Block_release(v12);

  v15 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if ((v14 & 1) == 0)
  {
    sub_74898();

    swift_willThrow();
  }
}

void sub_206F4(uint64_t a1, void *a2, void *a3)
{
  type metadata accessor for FitnessPlusPropertyRecordEntity();
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = [objc_opt_self() contextForWritingProtectedData];
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = a3;
  v9 = [a2 database];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  v11[2] = sub_3007C;
  v11[3] = v10;
  aBlock[4] = sub_1008C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_87940;
  v12 = _Block_copy(aBlock);
  v13 = v6;

  aBlock[0] = 0;
  v14 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v9 context:v13 error:aBlock block:v12];
  _Block_release(v12);

  v15 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if ((v14 & 1) == 0)
  {
    sub_74898();

    swift_willThrow();
  }
}

uint64_t sub_20944(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_754B8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v38 - v11;
  v13 = [a1 protectedDatabase];
  if (v13)
  {
    v14 = v13;
    v39 = a2;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_75908(28);

    strcpy(&aBlock, "DELETE FROM ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    type metadata accessor for FitnessPlusPropertyRecordEntity();
    v15 = [swift_getObjCClassFromMetadata() databaseTable];
    v16 = sub_755A8();
    v18 = v17;

    v45._countAndFlagsBits = v16;
    v45._object = v18;
    sub_75608(v45);

    v46._countAndFlagsBits = 0x20455245485720;
    v46._object = 0xE700000000000000;
    sub_75608(v46);
    v47._countAndFlagsBits = 0x6568636143646E65;
    v47._object = 0xED00007865646E49;
    sub_75608(v47);
    v48._countAndFlagsBits = 0x3F203D3E20;
    v48._object = 0xE500000000000000;
    sub_75608(v48);
    v19 = sub_75598();

    v20 = swift_allocObject();
    v38 = a3;
    *(v20 + 16) = a3;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_30084;
    *(v21 + 24) = v20;
    v43 = sub_303D0;
    v44 = v21;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v41 = sub_644E0;
    v42 = &unk_879B8;
    v22 = _Block_copy(&aBlock);

    v43 = static PropertyRecordCheckpointEntity.supportedNanoSyncDirections(for:);
    v44 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v41 = sub_4F494;
    v42 = &unk_879E0;
    v23 = _Block_copy(&aBlock);

    *&aBlock = 0;
    v24 = [v14 executeSQL:v19 error:&aBlock bindingHandler:v22 enumerationHandler:v23];
    _Block_release(v23);
    _Block_release(v22);

    if (v24)
    {
      v25 = aBlock;

      return 1;
    }

    v31 = aBlock;
    sub_74898();

    swift_willThrow();
    sub_75378();
    swift_errorRetain();
    v32 = sub_754A8();
    v33 = sub_75718();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 134218242;
      *(v34 + 4) = v38;
      *(v34 + 12) = 2112;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v36;
      *v35 = v36;
      _os_log_impl(&dword_0, v32, v33, "Failed to invalidate snapshots after %lld: %@", v34, 0x16u);
      sub_3D48(v35, &unk_8EB30, &unk_7A270);
    }

    (*(v7 + 8))(v10, v6);
    v37 = v39;
    if (v39)
    {
      *v37 = sub_74888();
    }
  }

  else
  {
    sub_75378();
    v27 = sub_754A8();
    v28 = sub_75718();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = a3;
      _os_log_impl(&dword_0, v27, v28, "Failed to invalidate snapshots after cacheIndex: %lld: no protected database", v29, 0xCu);
    }

    (*(v7 + 8))(v12, v6);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v30 = 0;
      *a2 = sub_74888();
    }
  }

  return 0;
}

uint64_t sub_20F10(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_754B8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v38 - v11;
  v13 = [a1 protectedDatabase];
  if (v13)
  {
    v14 = v13;
    v39 = a2;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_75908(28);

    strcpy(&aBlock, "DELETE FROM ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    type metadata accessor for RingsPropertyRecordEntity();
    v15 = [swift_getObjCClassFromMetadata() databaseTable];
    v16 = sub_755A8();
    v18 = v17;

    v45._countAndFlagsBits = v16;
    v45._object = v18;
    sub_75608(v45);

    v46._countAndFlagsBits = 0x20455245485720;
    v46._object = 0xE700000000000000;
    sub_75608(v46);
    v47._countAndFlagsBits = 0x6568636143646E65;
    v47._object = 0xED00007865646E49;
    sub_75608(v47);
    v48._countAndFlagsBits = 0x3F203D3E20;
    v48._object = 0xE500000000000000;
    sub_75608(v48);
    v19 = sub_75598();

    v20 = swift_allocObject();
    v38 = a3;
    *(v20 + 16) = a3;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_303D8;
    *(v21 + 24) = v20;
    v43 = sub_303D0;
    v44 = v21;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v41 = sub_644E0;
    v42 = &unk_87AD0;
    v22 = _Block_copy(&aBlock);

    v43 = static PropertyRecordCheckpointEntity.supportedNanoSyncDirections(for:);
    v44 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v41 = sub_4F494;
    v42 = &unk_87AF8;
    v23 = _Block_copy(&aBlock);

    *&aBlock = 0;
    v24 = [v14 executeSQL:v19 error:&aBlock bindingHandler:v22 enumerationHandler:v23];
    _Block_release(v23);
    _Block_release(v22);

    if (v24)
    {
      v25 = aBlock;

      return 1;
    }

    v31 = aBlock;
    sub_74898();

    swift_willThrow();
    sub_75378();
    swift_errorRetain();
    v32 = sub_754A8();
    v33 = sub_75718();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 134218242;
      *(v34 + 4) = v38;
      *(v34 + 12) = 2112;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v36;
      *v35 = v36;
      _os_log_impl(&dword_0, v32, v33, "Failed to invalidate snapshots after %lld: %@", v34, 0x16u);
      sub_3D48(v35, &unk_8EB30, &unk_7A270);
    }

    (*(v7 + 8))(v10, v6);
    v37 = v39;
    if (v39)
    {
      *v37 = sub_74888();
    }
  }

  else
  {
    sub_75378();
    v27 = sub_754A8();
    v28 = sub_75718();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = a3;
      _os_log_impl(&dword_0, v27, v28, "Failed to invalidate snapshots after cacheIndex: %lld: no protected database", v29, 0xCu);
    }

    (*(v7 + 8))(v12, v6);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v30 = 0;
      *a2 = sub_74888();
    }
  }

  return 0;
}

uint64_t sub_214DC(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_754B8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v38 - v11;
  v13 = [a1 protectedDatabase];
  if (v13)
  {
    v14 = v13;
    v39 = a2;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_75908(28);

    strcpy(&aBlock, "DELETE FROM ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    type metadata accessor for WorkoutPropertyRecordEntity();
    v15 = [swift_getObjCClassFromMetadata() databaseTable];
    v16 = sub_755A8();
    v18 = v17;

    v45._countAndFlagsBits = v16;
    v45._object = v18;
    sub_75608(v45);

    v46._countAndFlagsBits = 0x20455245485720;
    v46._object = 0xE700000000000000;
    sub_75608(v46);
    v47._countAndFlagsBits = 0x6568636143646E65;
    v47._object = 0xED00007865646E49;
    sub_75608(v47);
    v48._countAndFlagsBits = 0x3F203D3E20;
    v48._object = 0xE500000000000000;
    sub_75608(v48);
    v19 = sub_75598();

    v20 = swift_allocObject();
    v38 = a3;
    *(v20 + 16) = a3;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_303D8;
    *(v21 + 24) = v20;
    v43 = sub_303D0;
    v44 = v21;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v41 = sub_644E0;
    v42 = &unk_87BE8;
    v22 = _Block_copy(&aBlock);

    v43 = static PropertyRecordCheckpointEntity.supportedNanoSyncDirections(for:);
    v44 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v41 = sub_4F494;
    v42 = &unk_87C10;
    v23 = _Block_copy(&aBlock);

    *&aBlock = 0;
    v24 = [v14 executeSQL:v19 error:&aBlock bindingHandler:v22 enumerationHandler:v23];
    _Block_release(v23);
    _Block_release(v22);

    if (v24)
    {
      v25 = aBlock;

      return 1;
    }

    v31 = aBlock;
    sub_74898();

    swift_willThrow();
    sub_75378();
    swift_errorRetain();
    v32 = sub_754A8();
    v33 = sub_75718();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 134218242;
      *(v34 + 4) = v38;
      *(v34 + 12) = 2112;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v36;
      *v35 = v36;
      _os_log_impl(&dword_0, v32, v33, "Failed to invalidate snapshots after %lld: %@", v34, 0x16u);
      sub_3D48(v35, &unk_8EB30, &unk_7A270);
    }

    (*(v7 + 8))(v10, v6);
    v37 = v39;
    if (v39)
    {
      *v37 = sub_74888();
    }
  }

  else
  {
    sub_75378();
    v27 = sub_754A8();
    v28 = sub_75718();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = a3;
      _os_log_impl(&dword_0, v27, v28, "Failed to invalidate snapshots after cacheIndex: %lld: no protected database", v29, 0xCu);
    }

    (*(v7 + 8))(v12, v6);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v30 = 0;
      *a2 = sub_74888();
    }
  }

  return 0;
}

void sub_21AA8(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_74888();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t SnapshotContainerTaskServer.mostRecentCheckpoints(type:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v48 = a3;
  v49 = a4;
  v4 = sub_754B8();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_754C8();
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_754F8();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_38F8(&qword_8F680, &unk_7A4B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v39 - v12;
  v14 = sub_750F8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v18 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v39 - v19;

  sub_750D8();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v21 = v48;
    sub_3D48(v13, &qword_8F680, &unk_7A4B0);
    sub_75378();
    v22 = sub_754A8();
    v23 = sub_75718();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "Unknown Properties Type", v24, 2u);
    }

    v40[1](v6, v41);
    sub_22144();
    v25 = swift_allocError();
    *v26 = 1;
    v21(_swiftEmptyArrayStorage, v25);
  }

  else
  {
    v28 = *(v15 + 32);
    v28(v20, v13, v14);
    v40 = v10;
    v29 = v42;
    v41 = *&v42[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_queue];
    (*(v15 + 16))(v18, v20, v14);
    v30 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    v28((v31 + v30), v18, v14);
    v32 = (v31 + ((v16 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
    v33 = v49;
    *v32 = v48;
    v32[1] = v33;
    aBlock[4] = sub_2DCF4;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_17314;
    aBlock[3] = &unk_87068;
    v34 = _Block_copy(aBlock);
    v35 = v29;

    v36 = v40;
    sub_754D8();
    v50 = _swiftEmptyArrayStorage;
    sub_30174(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_38F8(&qword_8F3B0, &qword_7A1D8);
    sub_7718(&qword_8F3B8, &qword_8F3B0, &qword_7A1D8, &protocol conformance descriptor for [A]);
    v37 = v44;
    v38 = v47;
    sub_75858();
    sub_75788();
    _Block_release(v34);
    (*(v46 + 8))(v37, v38);
    (*(v43 + 8))(v36, v45);
    (*(v15 + 8))(v20, v14);
  }
}

unint64_t sub_22144()
{
  result = qword_8F688;
  if (!qword_8F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F688);
  }

  return result;
}

void sub_22198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_754B8();
  __chkstk_darwin(v8);
  v10 = a2;
  v11 = a1;
  v12 = a3;
  v13 = a4;
  sub_233A4(0, sub_301BC, v9);
}

void sub_223C0(void *a1, uint64_t a2, void *a3, void (*a4)(void *, void), uint64_t a5)
{
  v34 = a5;
  v35 = a4;
  v9 = sub_751D8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyRecordCheckpointEntity();
  v13 = [a3 client];
  v14 = [v13 profile];

  v15 = sub_47A7C(a2, v14, a1);
  if (!v5)
  {
    v16 = v35;
    v40 = v10;
    v41 = 0;
    v33 = v12;
    v39 = v9;
    v17 = v15[2];
    if (v17)
    {
      v42 = _swiftEmptyArrayStorage;
      sub_67DDC(0, v17, 0);
      v18 = 0;
      v19 = v42;
      v20 = v40;
      v37 = v15 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
      v36 = v40 + 16;
      v38 = (v40 + 8);
      v21 = v33;
      while (v18 < v15[2])
      {
        v22 = v17;
        v23 = v39;
        (*(v20 + 16))(v21, &v37[*(v20 + 72) * v18], v39);
        sub_30174(&qword_8EB20, &type metadata accessor for PropertyRecordCheckpoint, &protocol conformance descriptor for PropertyRecordCheckpoint);
        v24 = v41;
        v25 = sub_74F78();
        v41 = v24;
        if (v24)
        {
          (*v38)(v21, v23);

          goto LABEL_12;
        }

        v27 = v25;
        v28 = v26;
        (*v38)(v21, v23);
        v42 = v19;
        v30 = v19[2];
        v29 = v19[3];
        if (v30 >= v29 >> 1)
        {
          sub_67DDC((v29 > 1), v30 + 1, 1);
          v21 = v33;
          v19 = v42;
        }

        ++v18;
        v19[2] = v30 + 1;
        v31 = &v19[2 * v30];
        v31[4] = v27;
        v31[5] = v28;
        v17 = v22;
        v20 = v40;
        if (v22 == v18)
        {

          v35(v19, 0);
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {

      v16(_swiftEmptyArrayStorage, 0);
LABEL_12:
    }
  }
}

void sub_226EC(char a1, char *a2, void *a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  v29 = a4;
  v30 = a3;
  v8 = sub_75508();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_queue];
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  v14 = sub_75518();
  (*(v9 + 8))(v11, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v15 = [objc_allocWithZone(HDMutableDatabaseTransactionContext) init];
  [v15 setRequiresWrite:a1 & 1];
  __chkstk_darwin([v15 setRequiresProtectedData:1]);
  *&v27[-16] = a2;

  sub_74CC8();

  v16 = v31;
  p_base_meths = &PropertyRecordCheckpointEntity.base_meths;
  if (v31 == 1)
  {
    v28 = 1;
    v18 = *&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_workoutAssertion];
    v19 = [a2 client];
    v20 = __chkstk_darwin(v19);
    *&v27[-16] = v18;
    *&v27[-8] = v20;
    sub_2DE20();

    sub_74CC8();
    if (v5)
    {

      return;
    }

    v21 = v31;
    [v15 addAccessibilityAssertion:v31];
    v22 = v30;
    v16 = v28;
    p_base_meths = (&PropertyRecordCheckpointEntity + 32);
    goto LABEL_8;
  }

  sub_38F8(&qword_8F598, &unk_7A350);
  sub_74CC8();

  v21 = v31;
  if (v31)
  {
    [v15 addAccessibilityAssertion:v31];
    v22 = v30;
LABEL_8:

    goto LABEL_10;
  }

  v22 = v30;
LABEL_10:
  type metadata accessor for PropertyRecordCheckpointEntity();
  v23 = [v22 p_base_meths[177]];
  v24 = [v23 profile];

  v25 = sub_48188(v24, v15);
  if (v5)
  {
  }

  else
  {
    v26 = v25;

    v29(v26, 0);

    if (v16)
    {

      sub_74CC8();
    }

    else
    {
    }
  }
}

void sub_22B98(char a1, char *a2, uint64_t a3, void *a4)
{
  v9 = sub_75508();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_queue];
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = sub_75518();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v15 = [objc_allocWithZone(HDMutableDatabaseTransactionContext) init];
    [v15 setRequiresWrite:a1 & 1];
    __chkstk_darwin([v15 setRequiresProtectedData:1]);
    *(&v21 - 2) = a2;

    sub_74CC8();

    if (v23 == 1)
    {
      v22 = a3;
      v16 = *&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_workoutAssertion];
      v17 = [a2 client];
      v18 = __chkstk_darwin(v17);
      *(&v21 - 2) = v16;
      *(&v21 - 1) = v18;
      sub_2DE20();

      sub_74CC8();
      if (v4)
      {

        return;
      }

      v20 = v23;
      [v15 addAccessibilityAssertion:v23];

      sub_29F4C(v15, v22, a4);

      sub_74CC8();
    }

    else
    {

      sub_38F8(&qword_8F598, &unk_7A350);
      sub_74CC8();

      v19 = v23;
      if (v23)
      {
        [v15 addAccessibilityAssertion:v23];
      }

      sub_29F4C(v15, a3, a4);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_22FA8(char a1, char *a2, void *a3)
{
  v7 = sub_75508();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_queue];
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = sub_75518();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v13 = [objc_allocWithZone(HDMutableDatabaseTransactionContext) init];
    [v13 setRequiresWrite:a1 & 1];
    __chkstk_darwin([v13 setRequiresProtectedData:1]);
    *(&v19 - 2) = a2;

    sub_74CC8();

    if (v20 == 1)
    {
      v14 = *&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_workoutAssertion];
      v15 = [a2 client];
      v16 = __chkstk_darwin(v15);
      *(&v19 - 2) = v14;
      *(&v19 - 1) = v16;
      sub_2DE20();

      sub_74CC8();
      if (v3)
      {

        return;
      }

      v18 = v20;
      [v13 addAccessibilityAssertion:v20];

      sub_2A280(v13, a3);

      sub_74CC8();
    }

    else
    {

      sub_38F8(&qword_8F598, &unk_7A350);
      sub_74CC8();

      v17 = v20;
      if (v20)
      {
        [v13 addAccessibilityAssertion:v20];
      }

      sub_2A280(v13, a3);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_233A4(char a1, void (*a2)(id), uint64_t a3)
{
  v5 = v3;
  v9 = sub_75508();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&v5[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_queue];
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = sub_75518();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v15 = [objc_allocWithZone(HDMutableDatabaseTransactionContext) init];
    [v15 setRequiresWrite:a1 & 1];
    __chkstk_darwin([v15 setRequiresProtectedData:1]);
    *(&v21 - 2) = v5;

    sub_74CC8();

    if (v23 == 1)
    {
      v21 = a3;
      v22 = a2;
      v16 = *&v5[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_workoutAssertion];
      v17 = [v5 client];
      v18 = __chkstk_darwin(v17);
      *(&v21 - 2) = v16;
      *(&v21 - 1) = v18;
      sub_2DE20();

      sub_74CC8();

      if (!v4)
      {
        v20 = v23;
        [v15 addAccessibilityAssertion:v23];

        v22(v15);

        sub_74CC8();
      }
    }

    else
    {

      sub_38F8(&qword_8F598, &unk_7A350);
      sub_74CC8();

      v19 = v23;
      if (v23)
      {
        [v15 addAccessibilityAssertion:v23];
      }

      a2(v15);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t SnapshotContainerTaskServer.listIntermediateCheckpoints(step:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_754C8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_754F8();
  v13 = *(v21 - 8);
  __chkstk_darwin(v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v4[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_queue];
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a4;
  aBlock[4] = sub_2DD6C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_17314;
  aBlock[3] = &unk_870B8;
  v17 = _Block_copy(aBlock);
  v18 = v4;
  sub_398C(a1, a2);

  sub_754D8();
  v22 = _swiftEmptyArrayStorage;
  sub_30174(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_38F8(&qword_8F3B0, &qword_7A1D8);
  sub_7718(&qword_8F3B8, &qword_8F3B0, &qword_7A1D8, &protocol conformance descriptor for [A]);
  sub_75858();
  sub_75788();
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v21);
}

uint64_t sub_23B28(void *a1, uint64_t a2, unint64_t a3, void (*a4)(void *, void), uint64_t a5)
{
  v10 = sub_754B8();
  __chkstk_darwin(v10);
  sub_398C(a2, a3);
  v11 = a1;

  sub_2E590(0, v11, a2, a3, v11, a4, a5);
}

void sub_23D9C(void (**a1)(char *, uint64_t), uint64_t a2, unint64_t a3, char *a4, void (*a5)(void *, void), uint64_t a6)
{
  v44 = a4;
  v45 = a1;
  v11 = sub_751D8();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v39 - v16;
  sub_398C(a2, a3);
  v18 = sub_30174(&qword_8EB20, &type metadata accessor for PropertyRecordCheckpoint, &protocol conformance descriptor for PropertyRecordCheckpoint);
  sub_74F88();
  if (!v6)
  {
    v39[1] = a6;
    v40 = a5;
    v46 = v18;
    v47 = v15;
    type metadata accessor for PropertyRecordCheckpointEntity();
    v19 = [v44 client];
    v20 = [v19 profile];

    v21 = v17;
    v22 = sub_47DDC(v17, v20, v45);

    v23 = v22[2];
    if (v23)
    {
      v48 = _swiftEmptyArrayStorage;
      v41 = v23;
      sub_67DDC(0, v23, 0);
      v24 = 0;
      v25 = v48;
      v26 = v12;
      v44 = v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v42 = v12;
      v43 = v12 + 16;
      v45 = (v12 + 8);
      v27 = 0;
      while (v24 < v22[2])
      {
        v28 = v25;
        v29 = v47;
        (*(v26 + 16))(v47, &v44[*(v26 + 72) * v24], v11);
        v30 = sub_74F98();
        if (v27)
        {

          v37 = *v45;
          (*v45)(v29, v11);
          v37(v21, v11);

          return;
        }

        v32 = v30;
        v33 = v31;
        (*v45)(v29, v11);
        v25 = v28;
        v48 = v28;
        v34 = v28[2];
        v35 = v25[3];
        if (v34 >= v35 >> 1)
        {
          v39[0] = 0;
          sub_67DDC((v35 > 1), v34 + 1, 1);
          v27 = v39[0];
          v25 = v48;
        }

        ++v24;
        v25[2] = v34 + 1;
        v36 = &v25[2 * v34];
        v36[4] = v32;
        v36[5] = v33;
        v26 = v42;
        if (v41 == v24)
        {
          v38 = v25;

          v40(v38, 0);
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {

      v26 = v12;
      v40(_swiftEmptyArrayStorage, 0);
LABEL_12:

      (*(v26 + 8))(v21, v11);
    }
  }
}

void sub_24294(void *a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v5 = a1;

  sub_226EC(0, v5, v5, a2, a3);
}

void sub_24378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.super.isa = sub_75678().super.isa;
  if (a2)
  {
    v6 = sub_74888();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

uint64_t SnapshotContainerTaskServer.save(recordsData:type:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t), uint64_t a6)
{
  v37 = a2;
  v39 = a6;
  v40 = a5;
  v35 = a1;
  v38 = sub_754B8();
  v6 = *(v38 - 8);
  __chkstk_darwin(v38);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_38F8(&qword_8F680, &unk_7A4B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - v10;
  v12 = sub_750F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v35 - v17;

  sub_750D8();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v19 = v40;
    sub_3D48(v11, &qword_8F680, &unk_7A4B0);
    sub_75378();
    v20 = sub_754A8();
    v21 = sub_75718();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "Unknown Properties Type", v22, 2u);
    }

    (*(v6 + 8))(v8, v38);
    sub_22144();
    v23 = swift_allocError();
    *v24 = 1;
    v19(0, v23);
  }

  else
  {
    v26 = *(v13 + 32);
    v26(v18, v11, v12);
    v40(1, 0);
    (*(v13 + 16))(v16, v18, v12);
    v27 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v28 = (v14 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    v30 = v36;
    *(v29 + 16) = v36;
    v26((v29 + v27), v16, v12);
    v31 = (v29 + v28);
    v32 = v35;
    v33 = v37;
    *v31 = v35;
    v31[1] = v33;
    v34 = v30;
    sub_398C(v32, v33);
    sub_264E0(sub_2DD8C, v29, &OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_threadLimitQueue, &unk_87C48, sub_300C8, &unk_87C60);

    return (*(v13 + 8))(v18, v12);
  }
}

void sub_24818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_754B8();
  __chkstk_darwin(v8);
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_233A4(1, sub_30154, v9);
}

void sub_24A20(NSObject *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v226 = a5;
  v227 = a1;
  v212 = sub_751D8();
  v211 = *(v212 - 8);
  __chkstk_darwin(v212);
  v210 = &v187 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_38F8(&qword_8F700, &qword_7A5C0);
  v198 = *(v214 - 1);
  v9 = __chkstk_darwin(v214);
  v192 = &v187 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v191 = &v187 - v12;
  __chkstk_darwin(v11);
  v215 = &v187 - v13;
  v229 = sub_38F8(&qword_8F708, &qword_7A5C8);
  v218 = *(v229 - 1);
  v14 = __chkstk_darwin(v229);
  v202 = &v187 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v201 = &v187 - v17;
  __chkstk_darwin(v16);
  v230 = (&v187 - v18);
  v19 = sub_754B8();
  v221 = *(v19 - 8);
  v222 = v19;
  v20 = __chkstk_darwin(v19);
  v200 = &v187 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v187 - v23;
  v25 = __chkstk_darwin(v22);
  v193 = &v187 - v26;
  v27 = __chkstk_darwin(v25);
  v204 = &v187 - v28;
  __chkstk_darwin(v27);
  v199 = &v187 - v29;
  v217 = sub_38F8(&qword_8F000, &qword_7A5D0);
  __chkstk_darwin(v217);
  v205 = &v187 - v30;
  v223 = sub_38F8(&qword_8F710, &qword_7A5D8);
  v203 = *(v223 - 1);
  v31 = __chkstk_darwin(v223);
  v194 = &v187 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v35 = &v187 - v34;
  __chkstk_darwin(v33);
  v37 = &v187 - v36;
  v38 = sub_750F8();
  v39 = *(v38 - 8);
  v40 = __chkstk_darwin(v38);
  v196 = &v187 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v208 = &v187 - v43;
  __chkstk_darwin(v42);
  v45 = &v187 - v44;
  v228 = sub_74CA8();
  v219 = *(v228 - 8);
  v46 = __chkstk_darwin(v228);
  v197 = &v187 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v195 = &v187 - v49;
  v50 = __chkstk_darwin(v48);
  v207 = &v187 - v51;
  v52 = __chkstk_darwin(v50);
  v206 = &v187 - v53;
  v54 = __chkstk_darwin(v52);
  v224 = &v187 - v55;
  __chkstk_darwin(v54);
  v225 = &v187 - v56;
  v57 = *(v39 + 16);
  v213 = a2;
  v58 = a2;
  v59 = v57;
  v209 = v39 + 16;
  v57(v45, v58, v38);
  v216 = v39;
  v60 = *(v39 + 88);
  v220 = v38;
  v61 = v60(v45, v38);
  if (v61 == enum case for SnapshotPropertiesType.rings(_:))
  {
    sub_398C(a3, a4);
    sub_7718(&qword_8F728, &qword_8F708, &qword_7A5C8, &protocol conformance descriptor for DatabasePropertyBatch<A>);
    v63 = v229;
    v62 = v230;
    v64 = v231;
    sub_74F88();
    if (v64)
    {
      return;
    }

    v65 = sub_74FB8();
    v66 = [v226 client];
    v67 = [v66 profile];

    sub_5CD24(v65, 0, v67, v227);
    v231 = 0;
    v190 = v59;

    v80 = v205;
    sub_74FA8();
    v81 = *(v219 + 16);
    v188 = (v219 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v82 = v228;
    v81(v225, v80, v228);
    sub_3D48(v80, &qword_8F000, &qword_7A5D0);
    sub_74FA8();
    v83 = v80 + *(v217 + 36);
    v189 = v81;
    v81(v224, v83, v82);
    sub_3D48(v80, &qword_8F000, &qword_7A5D0);
    v84 = v204;
    sub_75378();
    v85 = v218;
    v86 = *(v218 + 16);
    v87 = v201;
    v86(v201, v62, v63);
    v88 = v202;
    v86(v202, v62, v63);
    v89 = sub_754A8();
    v90 = sub_75738();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = v85;
      v92 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      v234 = v223;
      *v92 = 134218242;
      LODWORD(v215) = v90;
      v93 = *(sub_74FB8() + 16);

      v214 = *(v91 + 8);
      (v214)(v87, v63);
      *(v92 + 4) = v93;
      *(v92 + 12) = 2080;
      sub_74FA8();
      v232 = 0;
      v233 = 0xE000000000000000;
      sub_759A8();
      v235._countAndFlagsBits = 3026478;
      v235._object = 0xE300000000000000;
      sub_75608(v235);
      v94 = v189;
      sub_759A8();
      v95 = v232;
      v96 = v233;
      sub_3D48(v80, &qword_8F000, &qword_7A5D0);
      v97 = v88;
      v98 = v214;
      (v214)(v97, v63);
      v99 = sub_31B4(v95, v96, &v234);
      v100 = v188;
      v101 = v228;

      *(v92 + 14) = v99;
      _os_log_impl(&dword_0, v89, v215, "Saved %ld records for %s rings properties", v92, 0x16u);
      sub_3940(v223);

      v218 = *(v221 + 8);
      (v218)(v204, v222);
      v98(v230, v63);
      v102 = v101;
LABEL_15:
      v103 = v210;
      v104 = v220;
      goto LABEL_25;
    }

    v126 = *(v85 + 8);
    v126(v87, v63);

    v126(v88, v63);
    v218 = *(v221 + 8);
    (v218)(v84, v222);
    v127 = v230;
    v128 = v63;
LABEL_19:
    v126(v127, v128);
    v103 = v210;
    v104 = v220;
    v102 = v228;
LABEL_24:
    v94 = v189;
    v100 = v188;
LABEL_25:
    v188 = v100;
    v189 = v94;
    type metadata accessor for PropertyRecordCheckpointEntity();
    v94(v206, v225, v102);
    v94(v207, v224, v102);
    v150 = v213;
    v151 = v190;
    v190(v208, v213, v104);
    sub_751A8();
    v152 = v104;
    v153 = [v226 client];
    v154 = [v153 profile];

    v155 = v231;
    sub_48464(v103, 0, v154, v227);
    v231 = v155;
    if (v155)
    {

      (*(v211 + 8))(v103, v212);
      v156 = *(v219 + 8);
      v157 = v228;
      v156(v224, v228);
      v156(v225, v157);
    }

    else
    {
      (*(v211 + 8))(v103, v212);

      v158 = v200;
      sub_75378();
      v159 = v196;
      v160 = v152;
      v151(v196, v150, v152);
      v161 = v195;
      v162 = v228;
      v163 = v189;
      v189(v195, v225, v228);
      v164 = v197;
      v165 = v224;
      v163();
      v166 = sub_754A8();
      v167 = sub_75738();
      if (os_log_type_enabled(v166, v167))
      {
        v168 = swift_slowAlloc();
        LODWORD(v229) = v167;
        v169 = v168;
        v230 = swift_slowAlloc();
        v232 = v230;
        *v169 = 136315650;
        v170 = sub_750E8();
        v172 = v171;
        (*(v216 + 8))(v159, v160);
        v173 = sub_31B4(v170, v172, &v232);

        *(v169 + 4) = v173;
        *(v169 + 12) = 2080;
        sub_30174(&qword_8F720, &type metadata accessor for CacheIndex, &protocol conformance descriptor for CacheIndex);
        v174 = sub_75A38();
        v175 = v164;
        v227 = v166;
        v176 = v162;
        v178 = v177;
        v179 = *(v219 + 8);
        v179(v161, v176);
        v180 = sub_31B4(v174, v178, &v232);

        *(v169 + 14) = v180;
        *(v169 + 22) = 2080;
        v181 = sub_75A38();
        v183 = v182;
        v179(v175, v176);
        v184 = sub_31B4(v181, v183, &v232);

        *(v169 + 24) = v184;
        v185 = v227;
        _os_log_impl(&dword_0, v227, v229, "Registered [%s] %s -> %s entry", v169, 0x20u);
        swift_arrayDestroy();

        (v218)(v200, v222);
        v179(v224, v176);
        v179(v225, v176);
      }

      else
      {

        v186 = *(v219 + 8);
        v186(v164, v162);
        v186(v161, v162);
        (*(v216 + 8))(v159, v160);
        (v218)(v158, v222);
        v186(v165, v162);
        v186(v225, v162);
      }
    }

    return;
  }

  v190 = v59;
  v68 = v231;
  if (v61 == enum case for SnapshotPropertiesType.workout(_:))
  {
    sub_398C(a3, a4);
    sub_7718(&unk_8F730, &qword_8F710, &qword_7A5D8, &protocol conformance descriptor for DatabasePropertyBatch<A>);
    sub_74F88();
    if (v68)
    {
      return;
    }

    v69 = sub_74FB8();
    v70 = [v226 client];
    v71 = [v70 profile];

    sub_5D9B4(v69, 0, v71, v227);
    v231 = 0;

    v105 = v205;
    sub_74FA8();
    v106 = v37;
    v107 = *(v219 + 16);
    v188 = (v219 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v108 = v228;
    v107(v225, v105, v228);
    sub_3D48(v105, &qword_8F000, &qword_7A5D0);
    sub_74FA8();
    v109 = v105 + *(v217 + 36);
    v189 = v107;
    v107(v224, v109, v108);
    v110 = v223;
    sub_3D48(v105, &qword_8F000, &qword_7A5D0);
    v111 = v199;
    sub_75378();
    v112 = v203;
    v113 = *(v203 + 16);
    v113(v35, v106, v110);
    v114 = v194;
    v230 = v106;
    v113(v194, v106, v110);
    v115 = sub_754A8();
    v116 = sub_75738();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v229 = swift_slowAlloc();
      v234 = v229;
      *v117 = 134218242;
      LODWORD(v218) = v116;
      v118 = *(sub_74FB8() + 16);

      v215 = *(v112 + 8);
      (v215)(v35, v110);
      *(v117 + 4) = v118;
      *(v117 + 12) = 2080;
      sub_74FA8();
      v232 = 0;
      v233 = 0xE000000000000000;
      v119 = v110;
      v120 = v228;
      sub_759A8();
      v236._countAndFlagsBits = 3026478;
      v236._object = 0xE300000000000000;
      sub_75608(v236);
      sub_759A8();
      v121 = v232;
      v122 = v233;
      sub_3D48(v105, &qword_8F000, &qword_7A5D0);
      v123 = v114;
      v124 = v215;
      (v215)(v123, v119);
      v125 = sub_31B4(v121, v122, &v234);

      *(v117 + 14) = v125;
      _os_log_impl(&dword_0, v115, v218, "Saved %ld records for %s workout properties", v117, 0x16u);
      sub_3940(v229);

      v218 = *(v221 + 8);
      (v218)(v199, v222);
      v124(v230, v119);
      v102 = v120;
    }

    else
    {
      v149 = *(v112 + 8);
      v149(v35, v110);

      v149(v114, v110);
      v218 = *(v221 + 8);
      (v218)(v111, v222);
      v149(v230, v110);
      v102 = v228;
    }

    v103 = v210;
    v104 = v220;
    goto LABEL_24;
  }

  if (v61 == enum case for SnapshotPropertiesType.fitnessPlus(_:))
  {
    sub_398C(a3, a4);
    sub_7718(&qword_8F718, &qword_8F700, &qword_7A5C0, &protocol conformance descriptor for DatabasePropertyBatch<A>);
    v72 = v214;
    v73 = v215;
    sub_74F88();
    if (v68)
    {
      return;
    }

    v74 = sub_74FB8();
    v75 = [v226 client];
    v76 = [v75 profile];

    sub_5D36C(v74, 0, v76, v227);
    v231 = 0;

    v129 = v205;
    sub_74FA8();
    v130 = v72;
    v131 = *(v219 + 16);
    v188 = (v219 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v132 = v228;
    v131(v225, v129, v228);
    sub_3D48(v129, &qword_8F000, &qword_7A5D0);
    sub_74FA8();
    v133 = v129 + *(v217 + 36);
    v189 = v131;
    v131(v224, v133, v132);
    sub_3D48(v129, &qword_8F000, &qword_7A5D0);
    v134 = v193;
    sub_75378();
    v135 = v198;
    v136 = *(v198 + 16);
    v137 = v191;
    v136(v191, v73, v130);
    v138 = v192;
    v136(v192, v73, v130);
    v139 = sub_754A8();
    v140 = sub_75738();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = v135;
      v142 = swift_slowAlloc();
      v230 = swift_slowAlloc();
      v234 = v230;
      *v142 = 134218242;
      LODWORD(v229) = v140;
      v143 = *(sub_74FB8() + 16);

      v223 = *(v141 + 8);
      (v223)(v137, v130);
      *(v142 + 4) = v143;
      *(v142 + 12) = 2080;
      sub_74FA8();
      v232 = 0;
      v233 = 0xE000000000000000;
      sub_759A8();
      v237._countAndFlagsBits = 3026478;
      v237._object = 0xE300000000000000;
      sub_75608(v237);
      v100 = v188;
      sub_759A8();
      v144 = v232;
      v145 = v233;
      sub_3D48(v129, &qword_8F000, &qword_7A5D0);
      v146 = v138;
      v147 = v223;
      (v223)(v146, v130);
      v148 = sub_31B4(v144, v145, &v234);
      v94 = v189;

      *(v142 + 14) = v148;
      _os_log_impl(&dword_0, v139, v229, "Saved %ld records for %s F+ properties", v142, 0x16u);
      sub_3940(v230);

      v218 = *(v221 + 8);
      (v218)(v193, v222);
      (v147)(v215, v130);
      v102 = v228;
      goto LABEL_15;
    }

    v126 = *(v135 + 8);
    v126(v137, v130);

    v126(v138, v130);
    v218 = *(v221 + 8);
    (v218)(v134, v222);
    v127 = v215;
    v128 = v130;
    goto LABEL_19;
  }

  sub_75378();
  v77 = sub_754A8();
  v78 = sub_75718();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_0, v77, v78, "Unknown type to save for, skipping.", v79, 2u);
  }

  (*(v221 + 8))(v24, v222);
  (*(v216 + 8))(v45, v220);
}

uint64_t sub_264E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a6;
  v11 = sub_754C8();
  v25 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_754F8();
  v14 = *(v24 - 8);
  __chkstk_darwin(v24);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *&v6[*a3];
  v17 = swift_allocObject();
  v17[2] = v6;
  v17[3] = a1;
  v17[4] = a2;
  aBlock[4] = a5;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_17314;
  aBlock[3] = v22;
  v18 = _Block_copy(aBlock);
  v19 = v6;

  sub_754D8();
  v26 = _swiftEmptyArrayStorage;
  sub_30174(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_38F8(&qword_8F3B0, &qword_7A1D8);
  sub_7718(&qword_8F3B8, &qword_8F3B0, &qword_7A1D8, &protocol conformance descriptor for [A]);
  sub_75858();
  sub_75788();
  _Block_release(v18);
  (*(v25 + 8))(v13, v11);
  (*(v14 + 8))(v16, v24);
}

uint64_t SnapshotContainerTaskServer.execute(queryPlanData:type:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, unint64_t, uint64_t), uint64_t a6)
{
  v84 = a5;
  v85 = a6;
  v80 = a3;
  v81 = a4;
  v69 = a2;
  v68 = a1;
  v67 = sub_754B8();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_754C8();
  v75 = *(v7 - 8);
  v76 = v7;
  __chkstk_darwin(v7);
  v73 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_754F8();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_38F8(&qword_8F680, &unk_7A4B0);
  __chkstk_darwin(v10 - 8);
  v79 = &v63 - v11;
  v12 = sub_750F8();
  v86 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v64 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v14;
  __chkstk_darwin(v13);
  v82 = &v63 - v15;
  v78 = sub_75428();
  v16 = *(v78 - 8);
  v17 = __chkstk_darwin(v78);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v63 - v20;
  v22 = sub_75448();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v63 - v27;
  sub_75368();
  sub_75368();
  sub_75438();
  sub_75408();
  v77 = *(v23 + 8);
  v77(v26, v22);
  v29 = sub_75438();
  v30 = sub_757B8();
  v31 = sub_75828();
  v83 = v12;
  if (v31)
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = sub_75418();
    _os_signpost_emit_with_name_impl(&dword_0, v29, v30, v33, "executeQuery", "", v32, 2u);
    v12 = v83;
  }

  v34 = v78;
  (*(v16 + 16))(v19, v21, v78);
  sub_75488();
  swift_allocObject();
  v35 = sub_75478();
  (*(v16 + 8))(v21, v34);
  v77(v28, v22);

  v36 = v79;
  sub_750D8();
  v37 = v86;
  if ((*(v86 + 48))(v36, 1, v12) == 1)
  {
    sub_3D48(v36, &qword_8F680, &unk_7A4B0);
    v38 = v65;
    sub_75378();
    v39 = sub_754A8();
    v40 = sub_75718();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_0, v39, v40, "Unknown Properties Type", v41, 2u);
    }

    (*(v66 + 8))(v38, v67);
    sub_22144();
    v42 = swift_allocError();
    *v43 = 1;
    v84(0, 0xF000000000000000, v42);
  }

  else
  {
    v44 = *(v37 + 32);
    v80 = v35;
    v45 = v82;
    v44(v82, v36, v12);
    v46 = v70;
    v81 = *&v70[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_queue];
    v47 = v64;
    (*(v37 + 16))(v64, v45, v12);
    v48 = (*(v37 + 80) + 24) & ~*(v37 + 80);
    v49 = (v63 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    *(v51 + 16) = v46;
    v44((v51 + v48), v47, v12);
    v52 = (v51 + v49);
    v53 = v68;
    v54 = v69;
    *v52 = v68;
    v52[1] = v54;
    v55 = (v51 + v50);
    v56 = v85;
    *v55 = v84;
    v55[1] = v56;
    *(v51 + ((v50 + 23) & 0xFFFFFFFFFFFFFFF8)) = v80;
    aBlock[4] = sub_2DDA8;
    aBlock[5] = v51;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_17314;
    aBlock[3] = &unk_87180;
    v57 = _Block_copy(aBlock);
    v58 = v46;
    sub_398C(v53, v54);

    v59 = v71;
    sub_754D8();
    v87 = _swiftEmptyArrayStorage;
    sub_30174(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_38F8(&qword_8F3B0, &qword_7A1D8);
    sub_7718(&qword_8F3B8, &qword_8F3B0, &qword_7A1D8, &protocol conformance descriptor for [A]);
    v60 = v73;
    v61 = v76;
    sub_75858();
    sub_75788();
    _Block_release(v57);

    (*(v75 + 8))(v60, v61);
    (*(v72 + 8))(v59, v74);
    (*(v86 + 8))(v82, v83);
  }
}

void sub_27140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_754B8();
  __chkstk_darwin(v14);
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a1;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  sub_233A4(0, sub_3009C, v15);
}

uint64_t sub_2737C(void *a1, void (*a2)(char *, uint64_t), void (*a3)(char *, uint64_t), void (*a4)(char *, uint64_t), void *a5, void (*a6)(uint64_t, unint64_t, void), uint64_t a7, uint64_t a8)
{
  v292 = a8;
  v279 = a7;
  v280 = a6;
  v289 = a5;
  v290 = a1;
  v296 = a3;
  v297 = a4;
  v299 = a2;
  v267 = sub_75458();
  v286 = *(v267 - 8);
  __chkstk_darwin(v267);
  v266 = &v235 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75428();
  v283 = *(v9 - 8);
  v284 = v9;
  __chkstk_darwin(v9);
  v291 = &v235 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_75448();
  v281 = *(v11 - 8);
  v282 = v11;
  __chkstk_darwin(v11);
  v293 = &v235 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = sub_74C38();
  v252 = *(v253 - 8);
  __chkstk_darwin(v253);
  v251 = &v235 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_38F8(&qword_8F6A0, &qword_7A590);
  v15 = __chkstk_darwin(v14 - 8);
  v239 = &v235 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v235 = &v235 - v18;
  v19 = __chkstk_darwin(v17);
  v238 = &v235 - v20;
  __chkstk_darwin(v19);
  v244 = &v235 - v21;
  v250 = sub_74B18();
  v249 = *(v250 - 8);
  v22 = __chkstk_darwin(v250);
  v248 = &v235 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v247 = &v235 - v25;
  v26 = __chkstk_darwin(v24);
  v246 = &v235 - v27;
  __chkstk_darwin(v26);
  v240 = &v235 - v28;
  v277 = sub_38F8(&qword_8F6A8, &qword_7A598);
  v265 = *(v277 - 8);
  v29 = __chkstk_darwin(v277);
  v245 = &v235 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v278 = &v235 - v31;
  v263 = sub_75358();
  v262 = *(v263 - 8);
  __chkstk_darwin(v263);
  v285 = &v235 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = sub_75138();
  v260 = *(v261 - 8);
  v33 = __chkstk_darwin(v261);
  v259 = &v235 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v258 = &v235 - v36;
  __chkstk_darwin(v35);
  v257 = &v235 - v37;
  v38 = sub_38F8(&qword_8F6B0, &qword_7A5A0);
  v39 = __chkstk_darwin(v38 - 8);
  v243 = &v235 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v237 = &v235 - v42;
  v43 = __chkstk_darwin(v41);
  v254 = &v235 - v44;
  __chkstk_darwin(v43);
  v256 = &v235 - v45;
  v287 = sub_38F8(&qword_8F6B8, &qword_7A5A8);
  v264 = *(v287 - 8);
  __chkstk_darwin(v287);
  v288 = &v235 - v46;
  v275 = sub_752D8();
  v274 = *(v275 - 8);
  __chkstk_darwin(v275);
  v48 = &v235 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = sub_74F68();
  v272 = *(v273 - 8);
  v49 = __chkstk_darwin(v273);
  v271 = &v235 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v53 = &v235 - v52;
  __chkstk_darwin(v51);
  v55 = &v235 - v54;
  v56 = sub_38F8(&qword_8F6C0, &qword_7A5B0);
  v57 = __chkstk_darwin(v56 - 8);
  v255 = &v235 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __chkstk_darwin(v57);
  v242 = &v235 - v60;
  v61 = __chkstk_darwin(v59);
  v268 = &v235 - v62;
  __chkstk_darwin(v61);
  v270 = &v235 - v63;
  v294 = sub_38F8(&qword_8F6C8, &qword_7A5B8);
  v276 = *(v294 - 8);
  __chkstk_darwin(v294);
  v295 = &v235 - v64;
  v298 = sub_754B8();
  v300 = *(v298 - 8);
  v65 = __chkstk_darwin(v298);
  v236 = &v235 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __chkstk_darwin(v65);
  v69 = &v235 - v68;
  v70 = __chkstk_darwin(v67);
  v241 = &v235 - v71;
  v72 = __chkstk_darwin(v70);
  v74 = &v235 - v73;
  v75 = __chkstk_darwin(v72);
  v269 = &v235 - v76;
  __chkstk_darwin(v75);
  v78 = &v235 - v77;
  v79 = sub_750F8();
  v80 = *(v79 - 8);
  __chkstk_darwin(v79);
  v82 = &v235 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v80 + 16))(v82, v299, v79);
  v83 = (*(v80 + 88))(v82, v79);
  if (v83 == enum case for SnapshotPropertiesType.rings(_:))
  {
    sub_75378();
    v84 = sub_754A8();
    v85 = sub_75738();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_0, v84, v85, "Executing Rings Properties Query", v86, 2u);
    }

    v87 = v300 + 8;
    v88 = *(v300 + 8);
    v88(v78, v298);
    sub_398C(v296, v297);
    sub_7718(&qword_8F6F0, &qword_8F6C8, &qword_7A5B8, &protocol conformance descriptor for SnapshotQueryPlan<A>);
    v89 = v294;
    v90 = v301;
    result = sub_74F88();
    if (!v90)
    {
      v297 = v88;
      v300 = v87;
      v301 = 0;
      v299 = sub_74DF8();
      sub_74DE8();
      sub_74F48();
      v92 = *(v272 + 8);
      v93 = v273;
      v92(v55, v273);
      sub_74DE8();
      v94 = sub_74F38();
      v92(v53, v93);
      v95 = v271;
      sub_74DE8();
      v96 = sub_74F58();
      v92(v95, v93);
      v97 = v299;
      v98 = [v289 client];
      v99 = [v98 profile];

      v100 = v301;
      v101 = sub_32FE4(v97, v48, v94, v96, 1, v99, v290);
      v301 = v100;
      if (v100)
      {

        (*(v274 + 8))(v48, v275);
        return (*(v276 + 8))(v295, v89);
      }

      v146 = v101;
      (*(v274 + 8))(v48, v275);

      if (*(v146 + 2))
      {
        v147 = sub_74D98();
        v148 = *(v147 - 8);
        v149 = v270;
        (*(v148 + 16))(v270, v146 + ((*(v148 + 80) + 32) & ~*(v148 + 80)), v147);

        (*(v148 + 56))(v149, 0, 1, v147);
      }

      else
      {

        v155 = sub_74D98();
        v149 = v270;
        (*(*(v155 - 8) + 56))(v270, 1, 1, v155);
      }

      v125 = v291;
      v145 = v286;
      v156 = v255;
      sub_75378();
      v157 = v268;
      sub_FCE0(v149, v268, &qword_8F6C0, &qword_7A5B0);
      v158 = sub_754A8();
      v159 = sub_75738();
      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        *v160 = 134217984;
        v161 = v242;
        sub_FCE0(v157, v242, &qword_8F6C0, &qword_7A5B0);
        v162 = sub_74D98();
        v163 = *(v162 - 8);
        if ((*(v163 + 48))(v161, 1, v162) == 1)
        {
          sub_3D48(v161, &qword_8F6C0, &qword_7A5B0);
          v164 = 0;
        }

        else
        {
          v178 = sub_74D88();
          (*(v163 + 8))(v161, v162);
          v164 = *(v178 + 16);
          v145 = v286;
        }

        sub_3D48(v268, &qword_8F6C0, &qword_7A5B0);
        *(v160 + 4) = v164;
        _os_log_impl(&dword_0, v158, v159, "Found %ld records", v160, 0xCu);
      }

      else
      {
        sub_3D48(v157, &qword_8F6C0, &qword_7A5B0);
      }

      v297(v269, v298);
      v179 = v270;
      sub_FCE0(v270, v156, &qword_8F6C0, &qword_7A5B0);
      v180 = sub_74D98();
      v181 = *(v180 - 8);
      if ((*(v181 + 48))(v156, 1, v180) == 1)
      {
        sub_3D48(v179, &qword_8F6C0, &qword_7A5B0);
        (*(v276 + 8))(v295, v294);
        sub_3D48(v156, &qword_8F6C0, &qword_7A5B0);
        v144 = 0;
        v142 = 0xF000000000000000;
      }

      else
      {
        sub_30174(&qword_8F6F8, &type metadata accessor for RingsProperties, &protocol conformance descriptor for RingsProperties);
        v182 = v301;
        v183 = sub_74F78();
        v301 = v182;
        if (v182)
        {
          sub_3D48(v270, &qword_8F6C0, &qword_7A5B0);
          (*(v276 + 8))(v295, v294);
          return (*(v181 + 8))(v156, v180);
        }

        v144 = v183;
        v142 = v184;
        sub_3D48(v270, &qword_8F6C0, &qword_7A5B0);
        (*(v276 + 8))(v295, v294);
        (*(v181 + 8))(v156, v180);
      }

      goto LABEL_60;
    }
  }

  else
  {
    if (v83 != enum case for SnapshotPropertiesType.workout(_:))
    {
      v125 = v291;
      if (v83 != enum case for SnapshotPropertiesType.fitnessPlus(_:))
      {
        sub_22144();
        v140 = swift_allocError();
        *v141 = 1;
        v142 = 0xF000000000000000;
        v143 = v280;
        v280(0, 0xF000000000000000, v140);

        (*(v80 + 8))(v82, v79);
        v144 = 0;
        v145 = v286;
LABEL_61:
        v143(v144, v142, 0);
        sub_75368();
        v223 = sub_75438();
        sub_75468();
        v224 = sub_757A8();
        if (sub_75828())
        {

          v225 = v266;
          sub_75498();
          v226 = v225;

          v227 = v225;
          v228 = v267;
          if ((*(v145 + 88))(v227, v267) == enum case for OSSignpostError.doubleEnd(_:))
          {
            v229 = "[Error] Interval already ended";
          }

          else
          {
            (*(v145 + 8))(v226, v228);
            v229 = "";
          }

          v230 = swift_slowAlloc();
          *v230 = 0;
          v231 = sub_75418();
          _os_signpost_emit_with_name_impl(&dword_0, v223, v224, v231, "executeQuery", v229, v230, 2u);
        }

        sub_11774(v144, v142);

        (*(v283 + 8))(v125, v284);
        return (*(v281 + 8))(v293, v282);
      }

      sub_398C(v296, v297);
      sub_7718(&qword_8F6D0, &qword_8F6A8, &qword_7A598, &protocol conformance descriptor for SnapshotQueryPlan<A>);
      v126 = v278;
      v127 = v277;
      v128 = v301;
      result = sub_74F88();
      if (v128)
      {
        return result;
      }

      v301 = 0;
      sub_75378();
      v129 = v265;
      v130 = v245;
      (*(v265 + 16))(v245, v126, v127);
      v131 = sub_754A8();
      v132 = sub_75738();
      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        v134 = v130;
        v297 = swift_slowAlloc();
        v302 = v297;
        *v133 = 136315138;
        sub_74DE8();
        v135 = v250;
        v136 = sub_755B8();
        v138 = v137;
        v299 = *(v129 + 8);
        v299(v134, v277);
        v139 = sub_31B4(v136, v138, &v302);
        v127 = v277;

        *(v133 + 4) = v139;
        _os_log_impl(&dword_0, v131, v132, "Executing FitnessPlus Properties Query: %s", v133, 0xCu);
        sub_3940(v297);

        v296 = *(v300 + 8);
        v296(v69, v298);
      }

      else
      {

        v299 = *(v129 + 8);
        v299(v130, v127);
        v296 = *(v300 + 8);
        v296(v69, v298);
        v135 = v250;
      }

      v297 = sub_74DF8();
      v165 = v246;
      sub_74DE8();
      v166 = v251;
      sub_74AF8();
      v167 = *(v249 + 8);
      v167(v165, v135);
      v168 = v247;
      sub_74DE8();
      v169 = sub_74AE8();
      v167(v168, v135);
      v170 = v248;
      sub_74DE8();
      v171 = sub_74B08();
      v172 = v170;
      v173 = v297;
      v167(v172, v135);
      v174 = [v289 client];
      v175 = [v174 profile];

      v176 = v301;
      v177 = sub_358B4(v173, v166, v169, v171, 1, v175, v290);
      v301 = v176;
      if (v176)
      {

        (*(v252 + 8))(v166, v253);
        return (v299)(v278, v127);
      }

      v185 = v177;
      (*(v252 + 8))(v166, v253);

      if (*(v185 + 2))
      {
        v186 = sub_74A88();
        v187 = *(v186 - 8);
        v188 = v244;
        (*(v187 + 16))(v244, v185 + ((*(v187 + 80) + 32) & ~*(v187 + 80)), v186);
        v189 = v188;

        (*(v187 + 56))(v188, 0, 1, v186);
      }

      else
      {

        v209 = sub_74A88();
        v189 = v244;
        (*(*(v209 - 8) + 56))(v244, 1, 1, v209);
      }

      v210 = v238;
      v211 = v236;
      sub_75378();
      sub_FCE0(v189, v210, &qword_8F6A0, &qword_7A590);
      v212 = sub_754A8();
      v213 = sub_75738();
      if (os_log_type_enabled(v212, v213))
      {
        v214 = swift_slowAlloc();
        *v214 = 134217984;
        v215 = v235;
        sub_FCE0(v210, v235, &qword_8F6A0, &qword_7A590);
        v216 = sub_74A88();
        v217 = *(v216 - 8);
        if ((*(v217 + 48))(v215, 1, v216) == 1)
        {
          sub_3D48(v215, &qword_8F6A0, &qword_7A590);
          v218 = 0;
        }

        else
        {
          v219 = sub_74A78();
          (*(v217 + 8))(v215, v216);
          v218 = *(v219 + 16);
        }

        v145 = v286;
        sub_3D48(v210, &qword_8F6A0, &qword_7A590);
        *(v214 + 4) = v218;
        _os_log_impl(&dword_0, v212, v213, "Found %ld records", v214, 0xCu);

        v189 = v244;
      }

      else
      {
        sub_3D48(v210, &qword_8F6A0, &qword_7A590);
        v145 = v286;
      }

      v296(v211, v298);
      v220 = v239;
      sub_FCE0(v189, v239, &qword_8F6A0, &qword_7A590);
      v221 = sub_74A88();
      v222 = *(v221 - 8);
      if ((*(v222 + 48))(v220, 1, v221) == 1)
      {
        sub_3D48(v189, &qword_8F6A0, &qword_7A590);
        v299(v278, v277);
        sub_3D48(v220, &qword_8F6A0, &qword_7A590);
        v144 = 0;
        v142 = 0xF000000000000000;
        v125 = v291;
      }

      else
      {
        sub_30174(&qword_8F6D8, &type metadata accessor for FitnessPlusProperties, &protocol conformance descriptor for FitnessPlusProperties);
        v232 = v301;
        v233 = sub_74F78();
        if (v232)
        {
          sub_3D48(v244, &qword_8F6A0, &qword_7A590);
          v299(v278, v277);
          return (*(v222 + 8))(v220, v221);
        }

        v144 = v233;
        v142 = v234;
        sub_3D48(v244, &qword_8F6A0, &qword_7A590);
        v299(v278, v277);
        (*(v222 + 8))(v220, v221);
        v301 = 0;
        v125 = v291;
      }

LABEL_60:
      v143 = v280;
      goto LABEL_61;
    }

    sub_75378();
    v102 = sub_754A8();
    v103 = sub_75738();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_0, v102, v103, "Executing Workout Properties Query", v104, 2u);
    }

    v105 = v300 + 8;
    v106 = *(v300 + 8);
    v106(v74, v298);
    sub_398C(v296, v297);
    sub_7718(&qword_8F6E0, &qword_8F6B8, &qword_7A5A8, &protocol conformance descriptor for SnapshotQueryPlan<A>);
    v107 = v287;
    v108 = v288;
    v109 = v301;
    result = sub_74F88();
    v110 = v285;
    if (!v109)
    {
      v297 = v106;
      v300 = v105;
      v301 = 0;
      v299 = sub_74DF8();
      v111 = v257;
      sub_74DE8();
      sub_75118();
      v112 = *(v260 + 8);
      v113 = v261;
      v112(v111, v261);
      v114 = v258;
      sub_74DE8();
      v115 = sub_75108();
      v112(v114, v113);
      v116 = v259;
      sub_74DE8();
      v117 = sub_75128();
      v118 = v116;
      v119 = v299;
      v112(v118, v113);
      v120 = [v289 client];
      v121 = v107;
      v122 = [v120 profile];

      v123 = v301;
      v124 = sub_3444C(v119, v110, v115, v117, 1, v122, v290);
      v301 = v123;
      if (v123)
      {

        (*(v262 + 8))(v110, v263);
        return (*(v264 + 8))(v108, v121);
      }

      v150 = v124;
      (*(v262 + 8))(v110, v263);

      if (*(v150 + 2))
      {
        v151 = sub_74E18();
        v152 = *(v151 - 8);
        v153 = v256;
        (*(v152 + 16))(v256, v150 + ((*(v152 + 80) + 32) & ~*(v152 + 80)), v151);
        v154 = v153;

        (*(v152 + 56))(v153, 0, 1, v151);
      }

      else
      {

        v190 = sub_74E18();
        v154 = v256;
        (*(*(v190 - 8) + 56))(v256, 1, 1, v190);
      }

      v191 = v288;
      v125 = v291;
      v192 = v254;
      v193 = v241;
      sub_75378();
      sub_FCE0(v154, v192, &qword_8F6B0, &qword_7A5A0);
      v194 = sub_754A8();
      v195 = sub_75738();
      if (os_log_type_enabled(v194, v195))
      {
        v196 = swift_slowAlloc();
        *v196 = 134217984;
        v197 = v237;
        sub_FCE0(v192, v237, &qword_8F6B0, &qword_7A5A0);
        v198 = sub_74E18();
        v199 = *(v198 - 8);
        if ((*(v199 + 48))(v197, 1, v198) == 1)
        {
          sub_3D48(v197, &qword_8F6B0, &qword_7A5A0);
          v200 = 0;
        }

        else
        {
          v201 = sub_74E08();
          (*(v199 + 8))(v197, v198);
          v200 = *(v201 + 16);
          v191 = v288;
        }

        v145 = v286;
        sub_3D48(v254, &qword_8F6B0, &qword_7A5A0);
        *(v196 + 4) = v200;
        _os_log_impl(&dword_0, v194, v195, "Found %ld records", v196, 0xCu);

        v154 = v256;
      }

      else
      {
        sub_3D48(v192, &qword_8F6B0, &qword_7A5A0);
        v145 = v286;
      }

      v297(v193, v298);
      v202 = v243;
      sub_FCE0(v154, v243, &qword_8F6B0, &qword_7A5A0);
      v203 = sub_74E18();
      v204 = *(v203 - 8);
      if ((*(v204 + 48))(v202, 1, v203) == 1)
      {
        sub_3D48(v154, &qword_8F6B0, &qword_7A5A0);
        (*(v264 + 8))(v191, v287);
        sub_3D48(v202, &qword_8F6B0, &qword_7A5A0);
        v144 = 0;
        v142 = 0xF000000000000000;
      }

      else
      {
        sub_30174(&qword_8F6E8, &type metadata accessor for WorkoutProperties, &protocol conformance descriptor for WorkoutProperties);
        v205 = v202;
        v206 = v301;
        v207 = sub_74F78();
        v301 = v206;
        if (v206)
        {
          sub_3D48(v256, &qword_8F6B0, &qword_7A5A0);
          (*(v264 + 8))(v191, v287);
          return (*(v204 + 8))(v202, v203);
        }

        v144 = v207;
        v142 = v208;
        sub_3D48(v256, &qword_8F6B0, &qword_7A5A0);
        (*(v264 + 8))(v191, v287);
        (*(v204 + 8))(v205, v203);
      }

      goto LABEL_60;
    }
  }

  return result;
}

void sub_29A5C(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(uint64_t, unint64_t, uint64_t, uint64_t, id, void *))
{
  v10 = _Block_copy(aBlock);
  v11 = a3;
  v12 = a4;
  v19 = a1;
  v13 = sub_748C8();
  v15 = v14;

  v16 = sub_755A8();
  v18 = v17;

  _Block_copy(v10);
  a6(v13, v15, v16, v18, v19, v10);
  _Block_release(v10);
  _Block_release(v10);

  sub_FB28(v13, v15);
}

void sub_29B54(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_74888();
      goto LABEL_6;
    }
  }

  else
  {
    isa = sub_748A8().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

uint64_t SnapshotContainerTaskServer.invalidate(after:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_754C8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_754F8();
  v11 = *(v19 - 8);
  __chkstk_darwin(v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v3[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_queue];
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  aBlock[4] = sub_2DDEC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_17314;
  aBlock[3] = &unk_871D0;
  v15 = _Block_copy(aBlock);
  v16 = v3;

  sub_754D8();
  v20 = _swiftEmptyArrayStorage;
  sub_30174(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_38F8(&qword_8F3B0, &qword_7A1D8);
  sub_7718(&qword_8F3B8, &qword_8F3B0, &qword_7A1D8, &protocol conformance descriptor for [A]);
  sub_75858();
  sub_75788();
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v19);
}

uint64_t sub_29ED8(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = a1;
  sub_22B98(1, v5, a2, v5);
  a3(0);
}

void sub_29F4C(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for PropertyRecordCheckpointEntity();
  v7 = [a3 client];
  v8 = [v7 profile];

  sub_489A0(a2, v8, a1);
  if (!v3)
  {
    v9 = [a3 client];
    v10 = [v9 profile];

    sub_20254(a2, v10, a1);
    v11 = [a3 client];
    v12 = [v11 profile];

    sub_204A4(a2, v12, a1);
    v13 = [a3 client];
    v14 = [v13 profile];

    sub_206F4(a2, v14, a1);
  }
}

void sub_2A180(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_74888();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_2A214(void *a1, void (*a2)(void))
{
  v3 = a1;
  sub_22FA8(1, v3, v3);
  a2(0);
}

void sub_2A280(void *a1, id a2)
{
  v5 = [a2 client];
  v6 = [v5 profile];

  sub_2A3F8(v6, a1);
  if (!v2)
  {
    v7 = [a2 client];
    v8 = [v7 profile];

    sub_2A894(v8, a1);
    v9 = [a2 client];
    v10 = [v9 profile];

    sub_2AD30(v10, a1);
    v11 = [a2 client];
    v12 = [v11 profile];

    sub_2B1CC(v12, a1);
  }
}

void sub_2A3F8(void *a1, void *a2)
{
  v36 = a2;
  v35 = a1;
  v2 = sub_74968();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_74CA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = __chkstk_darwin(v9);
  v12 = v32 - v11;
  __chkstk_darwin(v10);
  v14 = v32 - v13;
  v34 = type metadata accessor for PropertyRecordCheckpointEntity();
  sub_74958();
  sub_74908();
  (*(v3 + 8))(v5, v2);
  v15 = ObjCClassFromMetadata;
  sub_74C88();
  if (v15)
  {
    (*(v7 + 8))(v12, v6);
  }

  else
  {
    v16 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = v35;
    v32[0] = *(v7 + 8);
    v32[1] = v7 + 8;
    (v32[0])(v12, v6);
    v18 = v36;
    if (v36)
    {
      v33 = v36;
    }

    else
    {
      v33 = [objc_opt_self() contextForWritingProtectedData];
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = v18;
    v20 = [v17 database];
    v21 = *(v7 + 16);
    v36 = v14;
    v21(v16, v14, v6);
    v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v23 = swift_allocObject();
    v24 = v23 + v22;
    v25 = v6;
    (*(v7 + 32))(v24, v16, v6);
    v26 = swift_allocObject();
    v26[2] = sub_2FF5C;
    v26[3] = v23;
    aBlock[4] = sub_1008C;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2BB8;
    aBlock[3] = &unk_87828;
    v27 = _Block_copy(aBlock);
    v28 = v33;

    aBlock[0] = 0;
    v29 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v20 context:v28 error:aBlock block:v27];
    _Block_release(v27);

    v30 = aBlock[0];
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    if (v29)
    {
      (v32[0])(v36, v25);
    }

    else
    {
      sub_74898();

      swift_willThrow();
      (v32[0])(v36, v25);
    }
  }
}

void sub_2A894(void *a1, void *a2)
{
  v36 = a2;
  v35 = a1;
  v2 = sub_74968();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_74CA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = __chkstk_darwin(v9);
  v12 = v32 - v11;
  __chkstk_darwin(v10);
  v14 = v32 - v13;
  v34 = type metadata accessor for WorkoutPropertyRecordEntity();
  sub_74958();
  sub_74908();
  (*(v3 + 8))(v5, v2);
  v15 = ObjCClassFromMetadata;
  sub_74C88();
  if (v15)
  {
    (*(v7 + 8))(v12, v6);
  }

  else
  {
    v16 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = v35;
    v32[0] = *(v7 + 8);
    v32[1] = v7 + 8;
    (v32[0])(v12, v6);
    v18 = v36;
    if (v36)
    {
      v33 = v36;
    }

    else
    {
      v33 = [objc_opt_self() contextForWritingProtectedData];
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = v18;
    v20 = [v17 database];
    v21 = *(v7 + 16);
    v36 = v14;
    v21(v16, v14, v6);
    v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v23 = swift_allocObject();
    v24 = v23 + v22;
    v25 = v6;
    (*(v7 + 32))(v24, v16, v6);
    v26 = swift_allocObject();
    v26[2] = sub_2FF44;
    v26[3] = v23;
    aBlock[4] = sub_1008C;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2BB8;
    aBlock[3] = &unk_87710;
    v27 = _Block_copy(aBlock);
    v28 = v33;

    aBlock[0] = 0;
    v29 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v20 context:v28 error:aBlock block:v27];
    _Block_release(v27);

    v30 = aBlock[0];
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    if (v29)
    {
      (v32[0])(v36, v25);
    }

    else
    {
      sub_74898();

      swift_willThrow();
      (v32[0])(v36, v25);
    }
  }
}

void sub_2AD30(void *a1, void *a2)
{
  v36 = a2;
  v35 = a1;
  v2 = sub_74968();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_74CA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = __chkstk_darwin(v9);
  v12 = v32 - v11;
  __chkstk_darwin(v10);
  v14 = v32 - v13;
  v34 = type metadata accessor for RingsPropertyRecordEntity();
  sub_74958();
  sub_74908();
  (*(v3 + 8))(v5, v2);
  v15 = ObjCClassFromMetadata;
  sub_74C88();
  if (v15)
  {
    (*(v7 + 8))(v12, v6);
  }

  else
  {
    v16 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = v35;
    v32[0] = *(v7 + 8);
    v32[1] = v7 + 8;
    (v32[0])(v12, v6);
    v18 = v36;
    if (v36)
    {
      v33 = v36;
    }

    else
    {
      v33 = [objc_opt_self() contextForWritingProtectedData];
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = v18;
    v20 = [v17 database];
    v21 = *(v7 + 16);
    v36 = v14;
    v21(v16, v14, v6);
    v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v23 = swift_allocObject();
    v24 = v23 + v22;
    v25 = v6;
    (*(v7 + 32))(v24, v16, v6);
    v26 = swift_allocObject();
    v26[2] = sub_2FE88;
    v26[3] = v23;
    aBlock[4] = sub_1008C;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2BB8;
    aBlock[3] = &unk_875F8;
    v27 = _Block_copy(aBlock);
    v28 = v33;

    aBlock[0] = 0;
    v29 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v20 context:v28 error:aBlock block:v27];
    _Block_release(v27);

    v30 = aBlock[0];
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    if (v29)
    {
      (v32[0])(v36, v25);
    }

    else
    {
      sub_74898();

      swift_willThrow();
      (v32[0])(v36, v25);
    }
  }
}

void sub_2B1CC(void *a1, void *a2)
{
  v36 = a2;
  v35 = a1;
  v2 = sub_74968();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_74CA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = __chkstk_darwin(v9);
  v12 = v32 - v11;
  __chkstk_darwin(v10);
  v14 = v32 - v13;
  v34 = type metadata accessor for FitnessPlusPropertyRecordEntity();
  sub_74958();
  sub_74908();
  (*(v3 + 8))(v5, v2);
  v15 = ObjCClassFromMetadata;
  sub_74C88();
  if (v15)
  {
    (*(v7 + 8))(v12, v6);
  }

  else
  {
    v16 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = v35;
    v32[0] = *(v7 + 8);
    v32[1] = v7 + 8;
    (v32[0])(v12, v6);
    v18 = v36;
    if (v36)
    {
      v33 = v36;
    }

    else
    {
      v33 = [objc_opt_self() contextForWritingProtectedData];
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = v18;
    v20 = [v17 database];
    v21 = *(v7 + 16);
    v36 = v14;
    v21(v16, v14, v6);
    v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v23 = swift_allocObject();
    v24 = v23 + v22;
    v25 = v6;
    (*(v7 + 32))(v24, v16, v6);
    v26 = swift_allocObject();
    v26[2] = sub_2FE60;
    v26[3] = v23;
    aBlock[4] = sub_FC94;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2BB8;
    aBlock[3] = &unk_874E0;
    v27 = _Block_copy(aBlock);
    v28 = v33;

    aBlock[0] = 0;
    v29 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v20 context:v28 error:aBlock block:v27];
    _Block_release(v27);

    v30 = aBlock[0];
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    if (v29)
    {
      (v32[0])(v36, v25);
    }

    else
    {
      sub_74898();

      swift_willThrow();
      (v32[0])(v36, v25);
    }
  }
}

uint64_t sub_2B69C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t SnapshotContainerTaskServer.requestDatabaseAssertion(completion:)(uint64_t (*a1)(uint64_t))
{
  v3 = sub_754B8();
  __chkstk_darwin(v3);
  v6 = [v1 client];
  sub_2DE20();

  sub_74CC8();

  return a1(v4);
}

uint64_t SnapshotContainerTaskServer.invalidateDatabaseAssertion(completion:)(uint64_t (*a1)(uint64_t))
{

  sub_74CC8();

  return a1(v2);
}

uint64_t sub_2BB00(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_754C8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_754F8();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757C8();
  v17[1] = *&a1[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_queue];
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_30114;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_17314;
  aBlock[3] = &unk_87CB0;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  sub_754D8();
  v19 = _swiftEmptyArrayStorage;
  sub_30174(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_38F8(&qword_8F3B0, &qword_7A1D8);
  sub_7718(&qword_8F3B8, &qword_8F3B0, &qword_7A1D8, &protocol conformance descriptor for [A]);
  sub_75858();
  sub_75788();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

uint64_t sub_2BE00(void *a1, void *a2, uint64_t a3)
{
  v49 = a3;
  v5 = sub_754B8();
  v50 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v46 - v9;
  v11 = sub_74CA8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 protectedDatabase];
  if (v15)
  {
    v16 = v15;
    v47 = a2;
    v48 = v8;
    v46 = v5;
    aBlock = 0;
    v52 = 0xE000000000000000;
    sub_75908(86);
    v58._countAndFlagsBits = 0x46204554454C4544;
    v58._object = 0xEC000000204D4F52;
    sub_75608(v58);
    type metadata accessor for FitnessPlusPropertyRecordEntity();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [ObjCClassFromMetadata databaseTable];
    v19 = sub_755A8();
    v21 = v20;

    v59._countAndFlagsBits = v19;
    v59._object = v21;
    sub_75608(v59);

    v60._countAndFlagsBits = 0x2820455245485720;
    v60._object = 0xE900000000000028;
    sub_75608(v60);
    v61._countAndFlagsBits = 0x6568636143646E65;
    v61._object = 0xED00007865646E49;
    sub_75608(v61);
    v62._countAndFlagsBits = 2108704;
    v62._object = 0xE300000000000000;
    sub_75608(v62);
    v63._countAndFlagsBits = 0x6361437472617473;
    v63._object = 0xEF7865646E496568;
    sub_75608(v63);
    v64._countAndFlagsBits = 540811305;
    v64._object = 0xE400000000000000;
    sub_75608(v64);
    v57 = 691200;
    v65._countAndFlagsBits = sub_75A38();
    sub_75608(v65);

    v66._countAndFlagsBits = 0x20444E4120;
    v66._object = 0xE500000000000000;
    sub_75608(v66);
    v67._countAndFlagsBits = 0x6568636143646E65;
    v67._object = 0xED00007865646E49;
    sub_75608(v67);
    v68._countAndFlagsBits = 0x524F20293F203C20;
    v68._object = 0xE900000000000020;
    sub_75608(v68);
    v69._countAndFlagsBits = 0x6E6F6973726576;
    v69._object = 0xE700000000000000;
    sub_75608(v69);
    v70._object = 0x8000000000078BD0;
    v70._countAndFlagsBits = 0xD00000000000001DLL;
    sub_75608(v70);
    v22 = [ObjCClassFromMetadata databaseTable];
    v23 = sub_755A8();
    v25 = v24;

    v71._countAndFlagsBits = v23;
    v71._object = v25;
    sub_75608(v71);

    v72._countAndFlagsBits = 41;
    v72._object = 0xE100000000000000;
    sub_75608(v72);
    v26 = sub_75598();

    (*(v12 + 16))(&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v49, v11);
    v27 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v28 = swift_allocObject();
    (*(v12 + 32))(v28 + v27, v14, v11);
    v29 = swift_allocObject();
    *(v29 + 16) = sub_2FE78;
    *(v29 + 24) = v28;
    v55 = sub_2FE7C;
    v56 = v29;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_644E0;
    v54 = &unk_87558;
    v30 = _Block_copy(&aBlock);

    v55 = static PropertyRecordCheckpointEntity.supportedNanoSyncDirections(for:);
    v56 = 0;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_4F494;
    v54 = &unk_87580;
    v31 = _Block_copy(&aBlock);

    aBlock = 0;
    LOBYTE(v25) = [v16 executeSQL:v26 error:&aBlock bindingHandler:v30 enumerationHandler:v31];
    _Block_release(v31);
    _Block_release(v30);

    if (v25)
    {
      v32 = aBlock;

      return 1;
    }

    v38 = aBlock;
    sub_74898();

    swift_willThrow();
    v39 = v48;
    sub_75378();
    swift_errorRetain();
    v40 = sub_754A8();
    v41 = sub_75718();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      swift_errorRetain();
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v44;
      *v43 = v44;
      _os_log_impl(&dword_0, v40, v41, "Failed to clean up: %@", v42, 0xCu);
      sub_3D48(v43, &unk_8EB30, &unk_7A270);

      v39 = v48;
    }

    (*(v50 + 8))(v39, v46);
    v45 = v47;
    if (v47)
    {
      *v45 = sub_74888();
    }
  }

  else
  {
    sub_75378();
    v34 = sub_754A8();
    v35 = sub_75718();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "Failed to clean up: no protected database", v36, 2u);
    }

    (*(v50 + 8))(v10, v5);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v37 = 0;
      *a2 = sub_74888();
    }
  }

  return 0;
}

uint64_t sub_2C5BC(void *a1, void *a2, uint64_t a3)
{
  v49 = a3;
  v5 = sub_754B8();
  v50 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v46 - v9;
  v11 = sub_74CA8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 protectedDatabase];
  if (v15)
  {
    v16 = v15;
    v47 = a2;
    v48 = v8;
    v46 = v5;
    aBlock = 0;
    v52 = 0xE000000000000000;
    sub_75908(86);
    v58._countAndFlagsBits = 0x46204554454C4544;
    v58._object = 0xEC000000204D4F52;
    sub_75608(v58);
    type metadata accessor for RingsPropertyRecordEntity();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [ObjCClassFromMetadata databaseTable];
    v19 = sub_755A8();
    v21 = v20;

    v59._countAndFlagsBits = v19;
    v59._object = v21;
    sub_75608(v59);

    v60._countAndFlagsBits = 0x2820455245485720;
    v60._object = 0xE900000000000028;
    sub_75608(v60);
    v61._countAndFlagsBits = 0x6568636143646E65;
    v61._object = 0xED00007865646E49;
    sub_75608(v61);
    v62._countAndFlagsBits = 2108704;
    v62._object = 0xE300000000000000;
    sub_75608(v62);
    v63._countAndFlagsBits = 0x6361437472617473;
    v63._object = 0xEF7865646E496568;
    sub_75608(v63);
    v64._countAndFlagsBits = 540811305;
    v64._object = 0xE400000000000000;
    sub_75608(v64);
    v57 = 691200;
    v65._countAndFlagsBits = sub_75A38();
    sub_75608(v65);

    v66._countAndFlagsBits = 0x20444E4120;
    v66._object = 0xE500000000000000;
    sub_75608(v66);
    v67._countAndFlagsBits = 0x6568636143646E65;
    v67._object = 0xED00007865646E49;
    sub_75608(v67);
    v68._countAndFlagsBits = 0x524F20293F203C20;
    v68._object = 0xE900000000000020;
    sub_75608(v68);
    v69._countAndFlagsBits = 0x6E6F6973726576;
    v69._object = 0xE700000000000000;
    sub_75608(v69);
    v70._object = 0x8000000000078BD0;
    v70._countAndFlagsBits = 0xD00000000000001DLL;
    sub_75608(v70);
    v22 = [ObjCClassFromMetadata databaseTable];
    v23 = sub_755A8();
    v25 = v24;

    v71._countAndFlagsBits = v23;
    v71._object = v25;
    sub_75608(v71);

    v72._countAndFlagsBits = 41;
    v72._object = 0xE100000000000000;
    sub_75608(v72);
    v26 = sub_75598();

    (*(v12 + 16))(&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v49, v11);
    v27 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v28 = swift_allocObject();
    (*(v12 + 32))(v28 + v27, v14, v11);
    v29 = swift_allocObject();
    *(v29 + 16) = sub_3039C;
    *(v29 + 24) = v28;
    v55 = sub_303D0;
    v56 = v29;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_644E0;
    v54 = &unk_87670;
    v30 = _Block_copy(&aBlock);

    v55 = static PropertyRecordCheckpointEntity.supportedNanoSyncDirections(for:);
    v56 = 0;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_4F494;
    v54 = &unk_87698;
    v31 = _Block_copy(&aBlock);

    aBlock = 0;
    LOBYTE(v25) = [v16 executeSQL:v26 error:&aBlock bindingHandler:v30 enumerationHandler:v31];
    _Block_release(v31);
    _Block_release(v30);

    if (v25)
    {
      v32 = aBlock;

      return 1;
    }

    v38 = aBlock;
    sub_74898();

    swift_willThrow();
    v39 = v48;
    sub_75378();
    swift_errorRetain();
    v40 = sub_754A8();
    v41 = sub_75718();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      swift_errorRetain();
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v44;
      *v43 = v44;
      _os_log_impl(&dword_0, v40, v41, "Failed to clean up: %@", v42, 0xCu);
      sub_3D48(v43, &unk_8EB30, &unk_7A270);

      v39 = v48;
    }

    (*(v50 + 8))(v39, v46);
    v45 = v47;
    if (v47)
    {
      *v45 = sub_74888();
    }
  }

  else
  {
    sub_75378();
    v34 = sub_754A8();
    v35 = sub_75718();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "Failed to clean up: no protected database", v36, 2u);
    }

    (*(v50 + 8))(v10, v5);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v37 = 0;
      *a2 = sub_74888();
    }
  }

  return 0;
}

uint64_t sub_2CD78(void *a1, void *a2, uint64_t a3)
{
  v49 = a3;
  v5 = sub_754B8();
  v50 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v46 - v9;
  v11 = sub_74CA8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 protectedDatabase];
  if (v15)
  {
    v16 = v15;
    v47 = a2;
    v48 = v8;
    v46 = v5;
    aBlock = 0;
    v52 = 0xE000000000000000;
    sub_75908(86);
    v58._countAndFlagsBits = 0x46204554454C4544;
    v58._object = 0xEC000000204D4F52;
    sub_75608(v58);
    type metadata accessor for WorkoutPropertyRecordEntity();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [ObjCClassFromMetadata databaseTable];
    v19 = sub_755A8();
    v21 = v20;

    v59._countAndFlagsBits = v19;
    v59._object = v21;
    sub_75608(v59);

    v60._countAndFlagsBits = 0x2820455245485720;
    v60._object = 0xE900000000000028;
    sub_75608(v60);
    v61._countAndFlagsBits = 0x6568636143646E65;
    v61._object = 0xED00007865646E49;
    sub_75608(v61);
    v62._countAndFlagsBits = 2108704;
    v62._object = 0xE300000000000000;
    sub_75608(v62);
    v63._countAndFlagsBits = 0x6361437472617473;
    v63._object = 0xEF7865646E496568;
    sub_75608(v63);
    v64._countAndFlagsBits = 540811305;
    v64._object = 0xE400000000000000;
    sub_75608(v64);
    v57 = 691200;
    v65._countAndFlagsBits = sub_75A38();
    sub_75608(v65);

    v66._countAndFlagsBits = 0x20444E4120;
    v66._object = 0xE500000000000000;
    sub_75608(v66);
    v67._countAndFlagsBits = 0x6568636143646E65;
    v67._object = 0xED00007865646E49;
    sub_75608(v67);
    v68._countAndFlagsBits = 0x524F20293F203C20;
    v68._object = 0xE900000000000020;
    sub_75608(v68);
    v69._countAndFlagsBits = 0x6E6F6973726576;
    v69._object = 0xE700000000000000;
    sub_75608(v69);
    v70._object = 0x8000000000078BD0;
    v70._countAndFlagsBits = 0xD00000000000001DLL;
    sub_75608(v70);
    v22 = [ObjCClassFromMetadata databaseTable];
    v23 = sub_755A8();
    v25 = v24;

    v71._countAndFlagsBits = v23;
    v71._object = v25;
    sub_75608(v71);

    v72._countAndFlagsBits = 41;
    v72._object = 0xE100000000000000;
    sub_75608(v72);
    v26 = sub_75598();

    (*(v12 + 16))(&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v49, v11);
    v27 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v28 = swift_allocObject();
    (*(v12 + 32))(v28 + v27, v14, v11);
    v29 = swift_allocObject();
    *(v29 + 16) = sub_3039C;
    *(v29 + 24) = v28;
    v55 = sub_303D0;
    v56 = v29;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_644E0;
    v54 = &unk_87788;
    v30 = _Block_copy(&aBlock);

    v55 = static PropertyRecordCheckpointEntity.supportedNanoSyncDirections(for:);
    v56 = 0;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_4F494;
    v54 = &unk_877B0;
    v31 = _Block_copy(&aBlock);

    aBlock = 0;
    LOBYTE(v25) = [v16 executeSQL:v26 error:&aBlock bindingHandler:v30 enumerationHandler:v31];
    _Block_release(v31);
    _Block_release(v30);

    if (v25)
    {
      v32 = aBlock;

      return 1;
    }

    v38 = aBlock;
    sub_74898();

    swift_willThrow();
    v39 = v48;
    sub_75378();
    swift_errorRetain();
    v40 = sub_754A8();
    v41 = sub_75718();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      swift_errorRetain();
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v44;
      *v43 = v44;
      _os_log_impl(&dword_0, v40, v41, "Failed to clean up: %@", v42, 0xCu);
      sub_3D48(v43, &unk_8EB30, &unk_7A270);

      v39 = v48;
    }

    (*(v50 + 8))(v39, v46);
    v45 = v47;
    if (v47)
    {
      *v45 = sub_74888();
    }
  }

  else
  {
    sub_75378();
    v34 = sub_754A8();
    v35 = sub_75718();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "Failed to clean up: no protected database", v36, 2u);
    }

    (*(v50 + 8))(v10, v5);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v37 = 0;
      *a2 = sub_74888();
    }
  }

  return 0;
}

uint64_t sub_2D534(void *a1, void *a2, uint64_t a3)
{
  v49 = a3;
  v5 = sub_754B8();
  v50 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v46 - v9;
  v11 = sub_74CA8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 protectedDatabase];
  if (v15)
  {
    v16 = v15;
    v47 = a2;
    v48 = v8;
    v46 = v5;
    aBlock = 0;
    v52 = 0xE000000000000000;
    sub_75908(86);
    v58._countAndFlagsBits = 0x46204554454C4544;
    v58._object = 0xEC000000204D4F52;
    sub_75608(v58);
    type metadata accessor for PropertyRecordCheckpointEntity();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [ObjCClassFromMetadata databaseTable];
    v19 = sub_755A8();
    v21 = v20;

    v59._countAndFlagsBits = v19;
    v59._object = v21;
    sub_75608(v59);

    v60._countAndFlagsBits = 0x2820455245485720;
    v60._object = 0xE900000000000028;
    sub_75608(v60);
    v61._countAndFlagsBits = 0x6568636143646E65;
    v61._object = 0xED00007865646E49;
    sub_75608(v61);
    v62._countAndFlagsBits = 2108704;
    v62._object = 0xE300000000000000;
    sub_75608(v62);
    v63._countAndFlagsBits = 0x6361437472617473;
    v63._object = 0xEF7865646E496568;
    sub_75608(v63);
    v64._countAndFlagsBits = 540811305;
    v64._object = 0xE400000000000000;
    sub_75608(v64);
    v57 = 691200;
    v65._countAndFlagsBits = sub_75A38();
    sub_75608(v65);

    v66._countAndFlagsBits = 0x20444E4120;
    v66._object = 0xE500000000000000;
    sub_75608(v66);
    v67._countAndFlagsBits = 0x6568636143646E65;
    v67._object = 0xED00007865646E49;
    sub_75608(v67);
    v68._countAndFlagsBits = 0x524F20293F203C20;
    v68._object = 0xE900000000000020;
    sub_75608(v68);
    v69._countAndFlagsBits = 0x6E6F6973726576;
    v69._object = 0xE700000000000000;
    sub_75608(v69);
    v70._object = 0x8000000000078BD0;
    v70._countAndFlagsBits = 0xD00000000000001DLL;
    sub_75608(v70);
    v22 = [ObjCClassFromMetadata databaseTable];
    v23 = sub_755A8();
    v25 = v24;

    v71._countAndFlagsBits = v23;
    v71._object = v25;
    sub_75608(v71);

    v72._countAndFlagsBits = 41;
    v72._object = 0xE100000000000000;
    sub_75608(v72);
    v26 = sub_75598();

    (*(v12 + 16))(&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v49, v11);
    v27 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v28 = swift_allocObject();
    (*(v12 + 32))(v28 + v27, v14, v11);
    v29 = swift_allocObject();
    *(v29 + 16) = sub_3039C;
    *(v29 + 24) = v28;
    v55 = sub_303D0;
    v56 = v29;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_644E0;
    v54 = &unk_878A0;
    v30 = _Block_copy(&aBlock);

    v55 = static PropertyRecordCheckpointEntity.supportedNanoSyncDirections(for:);
    v56 = 0;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_4F494;
    v54 = &unk_878C8;
    v31 = _Block_copy(&aBlock);

    aBlock = 0;
    LOBYTE(v25) = [v16 executeSQL:v26 error:&aBlock bindingHandler:v30 enumerationHandler:v31];
    _Block_release(v31);
    _Block_release(v30);

    if (v25)
    {
      v32 = aBlock;

      return 1;
    }

    v38 = aBlock;
    sub_74898();

    swift_willThrow();
    v39 = v48;
    sub_75378();
    swift_errorRetain();
    v40 = sub_754A8();
    v41 = sub_75718();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      swift_errorRetain();
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v44;
      *v43 = v44;
      _os_log_impl(&dword_0, v40, v41, "Failed to clean up: %@", v42, 0xCu);
      sub_3D48(v43, &unk_8EB30, &unk_7A270);

      v39 = v48;
    }

    (*(v50 + 8))(v39, v46);
    v45 = v47;
    if (v47)
    {
      *v45 = sub_74888();
    }
  }

  else
  {
    sub_75378();
    v34 = sub_754A8();
    v35 = sub_75718();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "Failed to clean up: no protected database", v36, 2u);
    }

    (*(v50 + 8))(v10, v5);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v37 = 0;
      *a2 = sub_74888();
    }
  }

  return 0;
}

uint64_t sub_2DD0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2DD24()
{
  sub_FB28(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_2DDAC()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_2DE20()
{
  result = qword_8F690;
  if (!qword_8F690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8F690);
  }

  return result;
}

unint64_t sub_2DE9C()
{
  result = qword_8F698;
  if (!qword_8F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F698);
  }

  return result;
}

uint64_t sub_2DEF0(uint64_t a1, uint64_t a2, char *a3, void (**a4)(void, void, void))
{
  v41 = a3;
  v50 = a1;
  v5 = sub_754B8();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_754C8();
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v46 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_754F8();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_38F8(&qword_8F680, &unk_7A4B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v40 - v12;
  v14 = sub_750F8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v18 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v40 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  _Block_copy(a4);

  sub_750D8();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_3D48(v13, &qword_8F680, &unk_7A4B0);
    sub_75378();
    v22 = sub_754A8();
    v23 = sub_75718();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "Unknown Properties Type", v24, 2u);
    }

    (*(v42 + 8))(v7, v43);
    sub_22144();
    swift_allocError();
    *v25 = 1;
    isa = sub_75678().super.isa;
    v27 = sub_74888();
    (a4)[2](a4, isa, v27);
  }

  else
  {
    v28 = *(v15 + 32);
    v29 = v20;
    v40 = v20;
    v28(v20, v13, v14);
    v30 = v41;
    v50 = *&v41[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_queue];
    (*(v15 + 16))(v18, v29, v14);
    v31 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    v28((v32 + v31), v18, v14);
    v33 = (v32 + ((v16 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = sub_30308;
    v33[1] = v21;
    aBlock[4] = sub_30298;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_17314;
    aBlock[3] = &unk_87468;
    v34 = _Block_copy(aBlock);
    v35 = v30;

    v36 = v44;
    sub_754D8();
    v51 = _swiftEmptyArrayStorage;
    sub_30174(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_38F8(&qword_8F3B0, &qword_7A1D8);
    sub_7718(&qword_8F3B8, &qword_8F3B0, &qword_7A1D8, &protocol conformance descriptor for [A]);
    v37 = v46;
    v38 = v49;
    sub_75858();
    sub_75788();
    _Block_release(v34);
    (*(v48 + 8))(v37, v38);
    (*(v45 + 8))(v36, v47);
    (*(v15 + 8))(v40, v14);
  }
}

void sub_2E590(char a1, char *a2, uint64_t a3, unint64_t a4, char *a5, void (*a6)(void *, void), uint64_t a7)
{
  v27 = a6;
  v28 = a7;
  v29 = a3;
  v12 = sub_75508();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_queue];
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  LOBYTE(v16) = sub_75518();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v18 = [objc_allocWithZone(HDMutableDatabaseTransactionContext) init];
    [v18 setRequiresWrite:a1 & 1];
    __chkstk_darwin([v18 setRequiresProtectedData:1]);
    *(&v26 - 2) = a2;

    sub_74CC8();

    if (v30 == 1)
    {
      v26 = a4;
      v19 = a5;
      v20 = *&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_workoutAssertion];
      v21 = [a2 client];
      v22 = __chkstk_darwin(v21);
      *(&v26 - 2) = v20;
      *(&v26 - 1) = v22;
      sub_2DE20();

      sub_74CC8();

      if (v7)
      {

        sub_FB28(v29, v26);
        return;
      }

      v25 = v30;
      [v18 addAccessibilityAssertion:v30];

      v24 = v29;
      a5 = v19;
      sub_23D9C(v18, v29, v26, v19, v27, v28);

      sub_74CC8();

      a4 = v26;
    }

    else
    {

      sub_38F8(&qword_8F598, &unk_7A350);
      sub_74CC8();

      v23 = v30;
      if (v30)
      {
        [v18 addAccessibilityAssertion:v30];
      }

      v24 = v29;
      sub_23D9C(v18, v29, a4, a5, v27, v28);
    }

    sub_FB28(v24, a4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2E9D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v34 = a5;
  v35 = a1;
  v37 = a2;
  v38 = sub_754B8();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_38F8(&qword_8F680, &unk_7A4B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_750F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v33 - v17;

  sub_750D8();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_3D48(v11, &qword_8F680, &unk_7A4B0);
    sub_75378();
    v19 = sub_754A8();
    v20 = sub_75718();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "Unknown Properties Type", v21, 2u);
    }

    (*(v36 + 8))(v8, v38);
    sub_22144();
    swift_allocError();
    *v22 = 1;
    v23 = sub_74888();
    (*(a6 + 16))(a6, 0, v23);
  }

  else
  {
    v25 = *(v13 + 32);
    v25(v18, v11, v12);
    (*(a6 + 16))(a6, 1, 0);
    (*(v13 + 16))(v16, v18, v12);
    v26 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v27 = swift_allocObject();
    v28 = v34;
    *(v27 + 16) = v34;
    v25((v27 + v26), v16, v12);
    v29 = (v27 + ((v14 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
    v30 = v35;
    v31 = v37;
    *v29 = v35;
    v29[1] = v31;
    v32 = v28;
    sub_398C(v30, v31);
    sub_264E0(sub_30290, v27, &OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_threadLimitQueue, &unk_87C48, sub_300C8, &unk_87C60);

    return (*(v13 + 8))(v18, v12);
  }
}

uint64_t sub_2EDFC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char *a5, void (**a6)(const void *, void, void *))
{
  v74 = a5;
  v86 = a3;
  v75 = a2;
  v73 = a1;
  v72 = sub_754B8();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_754C8();
  v81 = *(v9 - 8);
  v82 = v9;
  __chkstk_darwin(v9);
  v79 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_754F8();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_38F8(&qword_8F680, &unk_7A4B0);
  __chkstk_darwin(v12 - 8);
  v85 = &v67 - v13;
  v90 = sub_750F8();
  v88 = *(v90 - 8);
  v14 = __chkstk_darwin(v90);
  v69 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v15;
  __chkstk_darwin(v14);
  v87 = &v67 - v16;
  v84 = sub_75428();
  v17 = *(v84 - 8);
  v18 = __chkstk_darwin(v84);
  v83 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v67 - v20;
  v22 = sub_75448();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v67 - v27;
  v89 = swift_allocObject();
  *(v89 + 16) = a6;
  v76 = a6;
  _Block_copy(a6);
  sub_75368();
  sub_75368();
  sub_75438();
  sub_75408();
  v29 = *(v23 + 8);
  v29(v26, v22);
  v30 = sub_75438();
  v31 = sub_757B8();
  if (sub_75828())
  {
    v32 = swift_slowAlloc();
    v67 = a4;
    v33 = v32;
    *v32 = 0;
    v34 = sub_75418();
    _os_signpost_emit_with_name_impl(&dword_0, v30, v31, v34, "executeQuery", "", v33, 2u);
  }

  v35 = v84;
  (*(v17 + 16))(v83, v21, v84);
  sub_75488();
  swift_allocObject();
  v36 = sub_75478();
  (*(v17 + 8))(v21, v35);
  v29(v28, v22);

  v37 = v85;
  sub_750D8();
  v38 = v88;
  v39 = v90;
  if ((*(v88 + 48))(v37, 1, v90) == 1)
  {
    sub_3D48(v37, &qword_8F680, &unk_7A4B0);
    v40 = v70;
    sub_75378();
    v41 = sub_754A8();
    v42 = sub_75718();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v41, v42, "Unknown Properties Type", v43, 2u);
    }

    (*(v71 + 8))(v40, v72);
    sub_22144();
    swift_allocError();
    *v44 = 1;
    v45 = sub_74888();
    v76[2](v76, 0, v45);
  }

  else
  {
    v46 = *(v38 + 32);
    v47 = v87;
    v46(v87, v37, v39);
    v85 = v36;
    v48 = v74;
    v86 = *&v74[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_queue];
    v49 = v69;
    (*(v38 + 16))(v69, v47, v39);
    v50 = (*(v38 + 80) + 24) & ~*(v38 + 80);
    v51 = (v68 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    v54 = v39;
    v55 = v53;
    *(v53 + 16) = v48;
    v46((v53 + v50), v49, v54);
    v56 = (v55 + v51);
    v57 = v73;
    v58 = v75;
    *v56 = v73;
    v56[1] = v58;
    v59 = (v55 + v52);
    v60 = v89;
    *v59 = sub_2FA00;
    v59[1] = v60;
    *(v55 + ((v52 + 23) & 0xFFFFFFFFFFFFFFF8)) = v85;
    aBlock[4] = sub_30288;
    aBlock[5] = v55;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_17314;
    aBlock[3] = &unk_87378;
    v61 = _Block_copy(aBlock);
    v62 = v48;
    sub_398C(v57, v58);

    v63 = v77;
    sub_754D8();
    v91 = _swiftEmptyArrayStorage;
    sub_30174(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_38F8(&qword_8F3B0, &qword_7A1D8);
    sub_7718(&qword_8F3B8, &qword_8F3B0, &qword_7A1D8, &protocol conformance descriptor for [A]);
    v64 = v79;
    v65 = v82;
    sub_75858();
    sub_75788();
    _Block_release(v61);

    (*(v81 + 8))(v64, v65);
    (*(v78 + 8))(v63, v80);
    (*(v38 + 8))(v87, v90);
  }
}

uint64_t sub_2F7C4(char *a1, uint64_t a2)
{
  v4 = sub_754B8();
  __chkstk_darwin(v4);
  v6 = [a1 client];
  sub_2DE20();

  sub_74CC8();

  return (*(a2 + 16))(a2);
}

uint64_t sub_2F9C0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2FA08()
{
  v1 = sub_750F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  sub_FB28(*(v0 + v5), *(v0 + v5 + 8));

  return _swift_deallocObject(v0, ((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_2FB10()
{
  v1 = *(sub_750F8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);
  v11 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_27140(v5, v0 + v2, v7, v8, v9, v10, v11);
}

uint64_t sub_2FBC0()
{
  v1 = sub_750F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  sub_FB28(*(v0 + v5), *(v0 + v5 + 8));

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_2FCA4()
{
  v1 = sub_750F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_2FD80(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_750F8() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return a1(v4, v1 + v3, v6, v7);
}

uint64_t sub_2FEA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_74CA8() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_2FF74()
{
  v1 = sub_74CA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_2FFFC(sqlite3_stmt *a1)
{
  sub_74CA8();

  return sub_58428(a1);
}

uint64_t sub_300D4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_30174(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_303DC@<X0>(uint64_t a2@<X8>)
{
  sub_75288();
  sub_30EBC(&unk_8F7B0, &type metadata accessor for RingsPropertyDimensionsField, &protocol conformance descriptor for RingsPropertyDimensionsField);
  v3 = sub_756B8();

  return sub_1411C(v3, a2);
}

id sub_30470()
{
  sub_38F8(&qword_8F0A0, &qword_79EC8);
  sub_2009C();
  result = sub_74F78();
  v3 = result;
  if (!v0)
  {
    v4 = v2;
    v5 = type metadata accessor for RingsPropertyRecordEntity.EntityWrapper();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR___RingsEntityWrapper_serializedEntity];
    *v7 = v3;
    *(v7 + 1) = v4;
    v8.receiver = v6;
    v8.super_class = v5;
    return objc_msgSendSuper2(&v8, "init");
  }

  return result;
}

id static RingsPropertyRecordEntity.syncEntityIdentifier.getter()
{
  v0 = objc_allocWithZone(HDSyncEntityIdentifier);
  v1 = sub_75598();
  v2 = [v0 initWithEntityIdentifier:5 schemaIdentifier:v1];

  return v2;
}

uint64_t static RingsPropertyRecordEntity.generateSyncObjects(for:syncAnchorRange:profile:messageHandler:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = v5;
  v31 = a1;
  v12 = sub_754B8();
  v29 = *(v12 - 8);
  v30 = v12;
  __chkstk_darwin(v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75378();
  v15 = sub_754A8();
  v16 = sub_75738();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = v6;
    v18 = v17;
    v25 = v17;
    v26 = swift_slowAlloc();
    v27 = v7;
    v33 = v26;
    *v18 = 136315138;
    v32 = sub_38F8(&qword_8F740, &qword_7A5E0);
    sub_38F8(&qword_8F748, &qword_7A5E8);
    v19 = sub_755B8();
    v21 = a4;
    v22 = sub_31B4(v19, v20, &v33);

    v23 = v25;
    *(v25 + 4) = v22;
    a4 = v21;
    _os_log_impl(&dword_0, v15, v16, "Generate sync objects for %s", v23, 0xCu);
    sub_3940(v26);
  }

  (*(v29 + 8))(v14, v30);
  return sub_832C(v31, a2, a3, a4, a5);
}

id static RingsPropertyRecordEntity.decodeSyncObject(with:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for RingsPropertyRecordEntity.EntityWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___RingsEntityWrapper_serializedEntity];
  *v6 = a1;
  *(v6 + 1) = a2;
  sub_398C(a1, a2);
  v8.receiver = v5;
  v8.super_class = v4;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t _s25FitnessIntelligencePlugin25RingsPropertyRecordEntityC18receiveSyncObjects_7version9syncStore7profile5errorSo013HDSyncReceiveJ6ResultVSaySo0P7Codable_pG_So0P12VersionRangeaSo0pM0_pSo9HDProfileCSAySo7NSErrorCSgGSgtFZ_0(unint64_t a1)
{
  v2 = sub_754B8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75378();
  swift_bridgeObjectRetain_n();
  v6 = sub_754A8();
  v7 = sub_75738();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315394;
    v15 = sub_38F8(&qword_8F740, &qword_7A5E0);
    sub_38F8(&qword_8F748, &qword_7A5E8);
    v10 = sub_755B8();
    v12 = sub_31B4(v10, v11, &v16);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    if (a1 >> 62)
    {
      v13 = sub_759D8();
    }

    else
    {
      v13 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    }

    *(v8 + 14) = v13;

    _os_log_impl(&dword_0, v6, v7, "Received synced %s entities, count: %ld", v8, 0x16u);
    sub_3940(v9);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_30E64(uint64_t a1)
{
  result = sub_30EBC(&unk_8F7A0, type metadata accessor for RingsPropertyRecordEntity, &unk_7A460);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_30EBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_30F04(char a1)
{
  v2 = v1;
  v4 = sub_75768();
  v18 = *(v4 - 8);
  v19 = v4;
  __chkstk_darwin(v4);
  v17 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75758();
  __chkstk_darwin(v6);
  v7 = sub_754F8();
  __chkstk_darwin(v7 - 8);
  v8 = sub_749B8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = a1 & 1;
  *(v2 + 32) = _swiftEmptyArrayStorage;
  v16 = sub_1720C();
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_75908(59);
  v22._object = 0x8000000000078E20;
  v22._countAndFlagsBits = 0xD000000000000039;
  sub_75608(v22);
  sub_749A8();
  v12 = sub_74978();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  v23._countAndFlagsBits = v12;
  v23._object = v14;
  sub_75608(v23);

  sub_754E8();
  v20 = _swiftEmptyArrayStorage;
  sub_43B30(&qword_8F940, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_38F8(&qword_8F3A0, &unk_7A440);
  sub_7718(&qword_8F950, &qword_8F3A0, &unk_7A440, &protocol conformance descriptor for [A]);
  sub_75858();
  (*(v18 + 104))(v17, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  *(v2 + 16) = sub_75798();
  return v2;
}

uint64_t sub_31278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a6;
  v36 = a7;
  v33 = a5;
  v31 = a1;
  v39 = sub_754C8();
  v41 = *(v39 - 8);
  __chkstk_darwin(v39);
  v37 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_754F8();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v32 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_74CA8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v31 - v17;
  v34 = *(v7 + 16);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = *(v13 + 16);
  v20(v18, v31, v12);
  v20(v16, a2, v12);
  v21 = *(v13 + 80);
  v22 = (v21 + 32) & ~v21;
  v23 = (v14 + v21 + v22) & ~v21;
  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  *(v24 + 24) = a3;
  v25 = *(v13 + 32);
  v25(v24 + v22, v18, v12);
  v25(v24 + v23, v16, v12);
  aBlock[4] = v35;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_17314;
  aBlock[3] = v36;
  v26 = _Block_copy(aBlock);

  v27 = v32;
  sub_754D8();
  v42 = _swiftEmptyArrayStorage;
  sub_43B30(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_38F8(&qword_8F3B0, &qword_7A1D8);
  sub_7718(&qword_8F3B8, &qword_8F3B0, &qword_7A1D8, &protocol conformance descriptor for [A]);
  v28 = v37;
  v29 = v39;
  sub_75858();
  sub_75788();
  _Block_release(v26);
  (*(v41 + 8))(v28, v29);
  (*(v38 + 8))(v27, v40);
}

uint64_t sub_316B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_754B8();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v53 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_38F8(&qword_8F6A0, &qword_7A590);
  v7 = *(v51 - 8);
  v8 = __chkstk_darwin(v51);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v46 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v46 - v15;
  __chkstk_darwin(v14);
  v18 = &v46 - v17;
  v19 = sub_74A88();
  v52 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v50 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v56 = &v46 - v22;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(a2 + 16))
    {
      v24 = result;
      v25 = sub_43B30(&qword_8F8E0, &type metadata accessor for FitnessPlusProperties, &protocol conformance descriptor for FitnessPlusProperties);
      sub_74EC8();
      if (*(v24 + 24))
      {
        v46 = v25;
        sub_38F8(&qword_8F8F0, &qword_7A6E0);
        v49 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v48 = swift_allocObject();
        swift_beginAccess();
        v47 = v24;
        v26 = *(v24 + 32);
        v27 = v52;
        if (*(v26 + 16))
        {
          v28 = *(v52 + 16);
          v28(v18, v26 + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v19);
          v29 = *(v27 + 56);
          v29(v18, 0, 1, v19);
          v28(v16, v56, v19);
        }

        else
        {
          v29 = *(v52 + 56);
          v34 = v52;
          v29(v18, 1, 1, v19);
          (*(v34 + 16))(v16, v56, v19);
        }

        v29(v16, 0, 1, v19);
        v35 = v48;
        v36 = v49;
        sub_74EB8();
        sub_3D48(v16, &qword_8F6A0, &qword_7A590);
        sub_3D48(v18, &qword_8F6A0, &qword_7A590);
        sub_FCE0(v35 + v36, v13, &qword_8F6A0, &qword_7A590);
        sub_1B748(v13, v10, &qword_8F6A0, &qword_7A590);
        v37 = v52;
        v38 = (*(v52 + 48))(v10, 1, v19);
        v39 = v47;
        if (v38 == 1)
        {
          sub_3D48(v10, &qword_8F6A0, &qword_7A590);
          v40 = _swiftEmptyArrayStorage;
          v41 = v56;
        }

        else
        {
          v42 = *(v37 + 32);
          v43 = v50;
          v42(v50, v10, v19);
          v40 = _swiftEmptyArrayStorage;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = sub_67754(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
          }

          v45 = *(v40 + 2);
          v44 = *(v40 + 3);
          if (v45 >= v44 >> 1)
          {
            v40 = sub_67754((v44 > 1), v45 + 1, 1, v40);
          }

          *(v40 + 2) = v45 + 1;
          v42(&v40[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v45], v43, v19);
          v41 = v56;
          v35 = v48;
        }

        swift_setDeallocating();
        sub_3D48(v35 + v49, &qword_8F6A0, &qword_7A590);
        swift_deallocClassInstance();
        (*(v37 + 8))(v41, v19);
        *(v39 + 32) = v40;
      }

      else
      {
        sub_38F8(&qword_8F8E8, &unk_7AD80);
        v30 = v52;
        v31 = (*(v52 + 80) + 32) & ~*(v52 + 80);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_79BF0;
        v33 = v56;
        (*(v30 + 16))(v32 + v31, v56, v19);
        swift_beginAccess();
        sub_66E44(v32);
        swift_endAccess();

        return (*(v30 + 8))(v33, v19);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_31F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_754B8();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v53 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_38F8(&qword_8F6B0, &qword_7A5A0);
  v7 = *(v51 - 8);
  v8 = __chkstk_darwin(v51);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v46 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v46 - v15;
  __chkstk_darwin(v14);
  v18 = &v46 - v17;
  v19 = sub_74E18();
  v52 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v50 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v56 = &v46 - v22;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(a2 + 16))
    {
      v24 = result;
      v25 = sub_43B30(&qword_8F878, &type metadata accessor for WorkoutProperties, &protocol conformance descriptor for WorkoutProperties);
      sub_74EC8();
      if (*(v24 + 24))
      {
        v46 = v25;
        sub_38F8(&qword_8F8B0, &qword_7A6B8);
        v49 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v48 = swift_allocObject();
        swift_beginAccess();
        v47 = v24;
        v26 = *(v24 + 32);
        v27 = v52;
        if (*(v26 + 16))
        {
          v28 = *(v52 + 16);
          v28(v18, v26 + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v19);
          v29 = *(v27 + 56);
          v29(v18, 0, 1, v19);
          v28(v16, v56, v19);
        }

        else
        {
          v29 = *(v52 + 56);
          v34 = v52;
          v29(v18, 1, 1, v19);
          (*(v34 + 16))(v16, v56, v19);
        }

        v29(v16, 0, 1, v19);
        v35 = v48;
        v36 = v49;
        sub_74EB8();
        sub_3D48(v16, &qword_8F6B0, &qword_7A5A0);
        sub_3D48(v18, &qword_8F6B0, &qword_7A5A0);
        sub_FCE0(v35 + v36, v13, &qword_8F6B0, &qword_7A5A0);
        sub_1B748(v13, v10, &qword_8F6B0, &qword_7A5A0);
        v37 = v52;
        v38 = (*(v52 + 48))(v10, 1, v19);
        v39 = v47;
        if (v38 == 1)
        {
          sub_3D48(v10, &qword_8F6B0, &qword_7A5A0);
          v40 = _swiftEmptyArrayStorage;
          v41 = v56;
        }

        else
        {
          v42 = *(v37 + 32);
          v43 = v50;
          v42(v50, v10, v19);
          v40 = _swiftEmptyArrayStorage;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = sub_677A4(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
          }

          v45 = *(v40 + 2);
          v44 = *(v40 + 3);
          if (v45 >= v44 >> 1)
          {
            v40 = sub_677A4((v44 > 1), v45 + 1, 1, v40);
          }

          *(v40 + 2) = v45 + 1;
          v42(&v40[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v45], v43, v19);
          v41 = v56;
          v35 = v48;
        }

        swift_setDeallocating();
        sub_3D48(v35 + v49, &qword_8F6B0, &qword_7A5A0);
        swift_deallocClassInstance();
        (*(v37 + 8))(v41, v19);
        *(v39 + 32) = v40;
      }

      else
      {
        sub_38F8(&qword_8F8A8, &unk_7AD60);
        v30 = v52;
        v31 = (*(v52 + 80) + 32) & ~*(v52 + 80);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_79BF0;
        v33 = v56;
        (*(v30 + 16))(v32 + v31, v56, v19);
        swift_beginAccess();
        sub_66E80(v32);
        swift_endAccess();

        return (*(v30 + 8))(v33, v19);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_32780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_754B8();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v53 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_38F8(&qword_8F6C0, &qword_7A5B0);
  v7 = *(v51 - 8);
  v8 = __chkstk_darwin(v51);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v46 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v46 - v15;
  __chkstk_darwin(v14);
  v18 = &v46 - v17;
  v19 = sub_74D98();
  v52 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v50 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v56 = &v46 - v22;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(a2 + 16))
    {
      v24 = result;
      v25 = sub_43B30(&qword_8F5E0, &type metadata accessor for RingsProperties, &protocol conformance descriptor for RingsProperties);
      sub_74EC8();
      if (*(v24 + 24))
      {
        v46 = v25;
        sub_38F8(&qword_8F858, &qword_7A678);
        v49 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v48 = swift_allocObject();
        swift_beginAccess();
        v47 = v24;
        v26 = *(v24 + 32);
        v27 = v52;
        if (*(v26 + 16))
        {
          v28 = *(v52 + 16);
          v28(v18, v26 + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v19);
          v29 = *(v27 + 56);
          v29(v18, 0, 1, v19);
          v28(v16, v56, v19);
        }

        else
        {
          v29 = *(v52 + 56);
          v34 = v52;
          v29(v18, 1, 1, v19);
          (*(v34 + 16))(v16, v56, v19);
        }

        v29(v16, 0, 1, v19);
        v35 = v48;
        v36 = v49;
        sub_74EB8();
        sub_3D48(v16, &qword_8F6C0, &qword_7A5B0);
        sub_3D48(v18, &qword_8F6C0, &qword_7A5B0);
        sub_FCE0(v35 + v36, v13, &qword_8F6C0, &qword_7A5B0);
        sub_1B748(v13, v10, &qword_8F6C0, &qword_7A5B0);
        v37 = v52;
        v38 = (*(v52 + 48))(v10, 1, v19);
        v39 = v47;
        if (v38 == 1)
        {
          sub_3D48(v10, &qword_8F6C0, &qword_7A5B0);
          v40 = _swiftEmptyArrayStorage;
          v41 = v56;
        }

        else
        {
          v42 = *(v37 + 32);
          v43 = v50;
          v42(v50, v10, v19);
          v40 = _swiftEmptyArrayStorage;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = sub_677F4(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
          }

          v45 = *(v40 + 2);
          v44 = *(v40 + 3);
          if (v45 >= v44 >> 1)
          {
            v40 = sub_677F4((v44 > 1), v45 + 1, 1, v40);
          }

          *(v40 + 2) = v45 + 1;
          v42(&v40[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v45], v43, v19);
          v41 = v56;
          v35 = v48;
        }

        swift_setDeallocating();
        sub_3D48(v35 + v49, &qword_8F6C0, &qword_7A5B0);
        swift_deallocClassInstance();
        (*(v37 + 8))(v41, v19);
        *(v39 + 32) = v40;
      }

      else
      {
        sub_38F8(&qword_8F850, &unk_7AD20);
        v30 = v52;
        v31 = (*(v52 + 80) + 32) & ~*(v52 + 80);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_79BF0;
        v33 = v56;
        (*(v30 + 16))(v32 + v31, v56, v19);
        swift_beginAccess();
        sub_67018(v32);
        swift_endAccess();

        return (*(v30 + 8))(v33, v19);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t (*sub_32FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, void *a7))()
{
  v151 = a6;
  v154 = a4;
  v156 = a3;
  v153 = a2;
  v169 = a1;
  v9 = sub_74D98();
  v144 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v143 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v139 - v12;
  v152 = sub_752D8();
  v150 = *(v152 - 8);
  __chkstk_darwin(v152);
  v148 = v14;
  v149 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_38F8(&qword_8F830, &qword_7A660);
  v16 = __chkstk_darwin(v15 - 8);
  v158 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v162 = &v139 - v18;
  v19 = sub_74CA8();
  v176 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v175 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v157 = &v139 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v139 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v139 - v28;
  v30 = __chkstk_darwin(v27);
  v174 = &v139 - v31;
  __chkstk_darwin(v30);
  v173 = &v139 - v32;
  v165 = sub_754B8();
  v164 = *(v165 - 8);
  __chkstk_darwin(v165);
  v163 = &v139 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_751D8();
  v168 = *(v185 - 8);
  v34 = __chkstk_darwin(v185);
  v146 = &v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v180 = &v139 - v37;
  v38 = __chkstk_darwin(v36);
  v40 = &v139 - v39;
  v41 = __chkstk_darwin(v38);
  v177 = &v139 - v42;
  v43 = __chkstk_darwin(v41);
  v161 = &v139 - v44;
  __chkstk_darwin(v43);
  v167 = &v139 - v45;
  sub_38F8(&qword_8F838, &qword_7A668);
  swift_allocObject();
  v147 = a5;
  v46 = sub_30F04(a5 & 1);
  v187 = _swiftEmptyArrayStorage;
  if (a7)
  {
    v166 = a7;
  }

  else
  {
    v166 = [objc_opt_self() contextForReadingProtectedData];
  }

  v47 = *(v169 + 16);
  if (!v47)
  {
    v72 = a7;
    goto LABEL_25;
  }

  v140 = v13;
  v142 = v26;
  v159 = v46;
  v155 = v29;
  v141 = v9;
  v48 = *(v168 + 16);
  v49 = (*(v168 + 80) + 32) & ~*(v168 + 80);
  v160 = v169 + v49;
  v183 = v48;
  v184 = v168 + 16;
  (v48)(v177);
  v50 = a7;
  v178 = v19;
  v179 = v47;
  v51 = v175;
  v52 = v47;
  if (v47 != 1)
  {
    v73 = *(v168 + 72);
    v171 = (v176 + 8);
    v74 = (v168 + 8);
    v170 = (v168 + 32);
    v172 = v73;
    v75 = v73 + v169 + v49;
    v76 = 1;
    while (1)
    {
      v183(v40, v75, v185);
      if (__OFADD__(v76, 1))
      {
        break;
      }

      v182 = (v76 + 1);
      v77 = v173;
      sub_751B8();
      v78 = v174;
      sub_751B8();
      LODWORD(v181) = sub_74C78();
      v79 = *v171;
      (*v171)(v78, v19);
      v79(v77, v19);
      v80 = *v74;
      if (v181)
      {
        v81 = v177;
        v82 = v185;
        v80(v177, v185);
        (*v170)(v81, v40, v82);
      }

      else
      {
        v80(v40, v185);
      }

      v51 = v175;
      v19 = v178;
      v52 = v179;
      ++v76;
      v75 += v172;
      if (v182 == v179)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

LABEL_6:
  v54 = v168 + 32;
  v53 = *(v168 + 32);
  v55 = v161;
  v56 = v185;
  v53(v161, v177, v185);
  v53(v167, v55, v56);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_67CB8(0, v52, 0);
  v57 = aBlock[0];
  v177 = *(v54 + 40);
  v181 = (v176 + 32);
  v182 = (v54 - 24);
  v58 = v160;
  do
  {
    v59 = v180;
    v60 = v185;
    v183(v180, v58, v185);
    sub_751B8();
    v61 = *v182;
    (*v182)(v59, v60);
    aBlock[0] = v57;
    v63 = v57[2];
    v62 = v57[3];
    if (v63 >= v62 >> 1)
    {
      sub_67CB8((v62 > 1), v63 + 1, 1);
      v57 = aBlock[0];
    }

    v57[2] = v63 + 1;
    v64 = (*(v176 + 80) + 32) & ~*(v176 + 80);
    v65 = *(v176 + 72);
    v66 = v57 + v64 + v65 * v63;
    v67 = *(v176 + 32);
    v68 = v178;
    v67(v66, v51, v178);
    v58 += v177;
    --v52;
  }

  while (v52);
  v69 = v162;
  sub_36D1C(v57, v162);

  v70 = (v176 + 48);
  v71 = *(v176 + 48);
  if (v71(v69, 1, v68) == 1)
  {
    sub_3D48(v69, &qword_8F830, &qword_7A660);
    v61(v167, v185);
LABEL_25:
    v92 = v163;
    sub_75378();
    v93 = sub_754A8();
    v94 = sub_75718();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_0, v93, v94, "Empty step path", v95, 2u);
    }

    (*(v164 + 8))(v92, v165);
    sub_431DC();
    swift_allocError();
    *v96 = 1;
    swift_willThrow();

    v97 = 0;
    v98 = 0;
    goto LABEL_28;
  }

  v170 = v71;
  v171 = v70;
  v175 = v61;
  v172 = v67;
  v67(v155, v69, v68);
  aBlock[0] = _swiftEmptyArrayStorage;
  v83 = v179;
  sub_67CB8(0, v179, 0);
  v84 = aBlock[0];
  v85 = v157;
  v86 = v160;
  do
  {
    v179 = v83;
    v87 = v180;
    v88 = v185;
    v183(v180, v86, v185);
    sub_75198();
    (v175)(v87, v88);
    aBlock[0] = v84;
    v90 = v84[2];
    v89 = v84[3];
    if (v90 >= v89 >> 1)
    {
      sub_67CB8((v89 > 1), v90 + 1, 1);
      v84 = aBlock[0];
    }

    v84[2] = v90 + 1;
    v172(v84 + v64 + v90 * v65, v85, v68);
    v86 += v177;
    v83 = v179 - 1;
  }

  while (v179 != (&dword_0 + 1));
  v91 = v158;
  sub_5DFFC(v84, v158);

  if ((v170)(v91, 1, v68) == 1)
  {
    (*(v176 + 8))(v155, v68);
    sub_3D48(v91, &qword_8F830, &qword_7A660);
    (v175)(v167, v185);
    goto LABEL_25;
  }

  v172(v142, v91, v68);
  v181 = [v151 database];
  v100 = v150;
  v101 = v149;
  v102 = v152;
  (*(v150 + 16))(v149, v153, v152);
  v103 = (*(v100 + 80) + 32) & ~*(v100 + 80);
  v104 = (v148 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
  v105 = (v104 + 15) & 0xFFFFFFFFFFFFFFF8;
  v106 = (v105 + 15) & 0xFFFFFFFFFFFFFFF8;
  v98 = swift_allocObject();
  v107 = v156;
  *(v98 + 16) = v169;
  *(v98 + 24) = v107;
  (*(v100 + 32))(v98 + v103, v101, v102);
  *(v98 + v104) = v154;
  *(v98 + v105) = v167;
  *(v98 + v106) = v159;
  *(v98 + ((v106 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v187;
  v108 = swift_allocObject();
  v108[2] = sub_43258;
  v108[3] = v98;
  aBlock[4] = sub_FC94;
  aBlock[5] = v108;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_87DA0;
  v109 = _Block_copy(aBlock);
  v110 = v166;

  aBlock[0] = 0;
  v111 = v181;
  v112 = [v181 performTransactionWithContext:v110 error:aBlock block:v109 inaccessibilityHandler:0];
  _Block_release(v109);

  v113 = aBlock[0];
  LOBYTE(v100) = swift_isEscapingClosureAtFileLocation();

  if (v100)
  {
LABEL_44:
    __break(1u);
  }

  if (v112)
  {
    v181 = v110;
    v114 = v180;
    v115 = v167;
    v116 = v185;
    v117 = v183;
    v183(v180, v167, v185);
    v118 = v173;
    sub_751B8();
    v119 = v175;
    (v175)(v114, v116);
    v120 = v146;
    v117(v146, v115, v116);
    v121 = v174;
    sub_75198();
    v119(v120, v116);
    v122 = v187;

    sub_31278(v118, v121, v122, &unk_87DD8, &unk_87E00, sub_432C0, &unk_87E18);

    v124 = v176 + 8;
    v123 = *(v176 + 8);
    v125 = v178;
    v123(v121, v178);
    v123(v118, v125);
    if (v147)
    {
      v176 = v124;
      sub_38F8(&qword_8F848, &qword_7A670);
      v126 = v145;
      sub_75778();
      if (*(aBlock[0] + 2))
      {
        v127 = v144;
        v128 = v143;
        v129 = v141;
        (*(v144 + 16))(v143, aBlock[0] + ((*(v127 + 80) + 32) & ~*(v127 + 80)), v141);

        sub_43B30(&qword_8F5E0, &type metadata accessor for RingsProperties, &protocol conformance descriptor for RingsProperties);
        sub_74E98();
        (*(v127 + 8))(v128, v129);
      }

      else
      {

        v129 = v141;
      }

      sub_43B30(&qword_8F5E0, &type metadata accessor for RingsProperties, &protocol conformance descriptor for RingsProperties);
      v132 = v140;
      v133 = v155;
      v134 = v142;
      sub_74EC8();
      if (v126)
      {

        v135 = v178;
        v123(v134, v178);
        v123(v133, v135);
        goto LABEL_40;
      }

      sub_38F8(&qword_8F850, &unk_7AD20);
      v136 = v144;
      v184 = (*(v144 + 80) + 32) & ~*(v144 + 80);
      v97 = swift_allocObject();
      *(v97 + 1) = xmmword_79BF0;
      (*(v136 + 32))(&v97[v184], v132, v129);

      v137 = v134;
      v138 = v178;
      v123(v137, v178);
      v123(v133, v138);
    }

    else
    {
      sub_38F8(&qword_8F848, &qword_7A670);
      sub_75778();

      v123(v142, v125);
      v123(v155, v125);

      v97 = aBlock[0];
    }

    (v175)(v167, v185);

    return v97;
  }

  sub_74898();

  swift_willThrow();

  v130 = *(v176 + 8);
  v131 = v178;
  v130(v142, v178);
  v130(v155, v131);
LABEL_40:
  (v175)(v167, v185);
  v97 = sub_43258;
LABEL_28:

  sub_43230(v97, v98);
  return v97;
}

uint64_t (*sub_3444C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, void *a7))()
{
  v151 = a6;
  v154 = a4;
  v156 = a3;
  v153 = a2;
  v169 = a1;
  v9 = sub_74E18();
  v144 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v143 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v139 - v12;
  v152 = sub_75358();
  v150 = *(v152 - 8);
  __chkstk_darwin(v152);
  v148 = v14;
  v149 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_38F8(&qword_8F830, &qword_7A660);
  v16 = __chkstk_darwin(v15 - 8);
  v158 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v162 = &v139 - v18;
  v19 = sub_74CA8();
  v176 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v175 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v157 = &v139 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v139 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v139 - v28;
  v30 = __chkstk_darwin(v27);
  v174 = &v139 - v31;
  __chkstk_darwin(v30);
  v173 = &v139 - v32;
  v165 = sub_754B8();
  v164 = *(v165 - 8);
  __chkstk_darwin(v165);
  v163 = &v139 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_751D8();
  v168 = *(v185 - 8);
  v34 = __chkstk_darwin(v185);
  v146 = &v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v180 = &v139 - v37;
  v38 = __chkstk_darwin(v36);
  v40 = &v139 - v39;
  v41 = __chkstk_darwin(v38);
  v177 = &v139 - v42;
  v43 = __chkstk_darwin(v41);
  v161 = &v139 - v44;
  __chkstk_darwin(v43);
  v167 = &v139 - v45;
  sub_38F8(&qword_8F898, &qword_7A6A8);
  swift_allocObject();
  v147 = a5;
  v46 = sub_30F04(a5 & 1);
  v187 = _swiftEmptyArrayStorage;
  if (a7)
  {
    v166 = a7;
  }

  else
  {
    v166 = [objc_opt_self() contextForReadingProtectedData];
  }

  v47 = *(v169 + 16);
  if (!v47)
  {
    v72 = a7;
    goto LABEL_25;
  }

  v140 = v13;
  v142 = v26;
  v159 = v46;
  v155 = v29;
  v141 = v9;
  v48 = *(v168 + 16);
  v49 = (*(v168 + 80) + 32) & ~*(v168 + 80);
  v160 = v169 + v49;
  v183 = v48;
  v184 = v168 + 16;
  (v48)(v177);
  v50 = a7;
  v178 = v19;
  v179 = v47;
  v51 = v175;
  v52 = v47;
  if (v47 != 1)
  {
    v73 = *(v168 + 72);
    v171 = (v176 + 8);
    v74 = (v168 + 8);
    v170 = (v168 + 32);
    v172 = v73;
    v75 = v73 + v169 + v49;
    v76 = 1;
    while (1)
    {
      v183(v40, v75, v185);
      if (__OFADD__(v76, 1))
      {
        break;
      }

      v182 = (v76 + 1);
      v77 = v173;
      sub_751B8();
      v78 = v174;
      sub_751B8();
      LODWORD(v181) = sub_74C78();
      v79 = *v171;
      (*v171)(v78, v19);
      v79(v77, v19);
      v80 = *v74;
      if (v181)
      {
        v81 = v177;
        v82 = v185;
        v80(v177, v185);
        (*v170)(v81, v40, v82);
      }

      else
      {
        v80(v40, v185);
      }

      v51 = v175;
      v19 = v178;
      v52 = v179;
      ++v76;
      v75 += v172;
      if (v182 == v179)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

LABEL_6:
  v54 = v168 + 32;
  v53 = *(v168 + 32);
  v55 = v161;
  v56 = v185;
  v53(v161, v177, v185);
  v53(v167, v55, v56);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_67CB8(0, v52, 0);
  v57 = aBlock[0];
  v177 = *(v54 + 40);
  v181 = (v176 + 32);
  v182 = (v54 - 24);
  v58 = v160;
  do
  {
    v59 = v180;
    v60 = v185;
    v183(v180, v58, v185);
    sub_751B8();
    v61 = *v182;
    (*v182)(v59, v60);
    aBlock[0] = v57;
    v63 = v57[2];
    v62 = v57[3];
    if (v63 >= v62 >> 1)
    {
      sub_67CB8((v62 > 1), v63 + 1, 1);
      v57 = aBlock[0];
    }

    v57[2] = v63 + 1;
    v64 = (*(v176 + 80) + 32) & ~*(v176 + 80);
    v65 = *(v176 + 72);
    v66 = v57 + v64 + v65 * v63;
    v67 = *(v176 + 32);
    v68 = v178;
    v67(v66, v51, v178);
    v58 += v177;
    --v52;
  }

  while (v52);
  v69 = v162;
  sub_36D1C(v57, v162);

  v70 = (v176 + 48);
  v71 = *(v176 + 48);
  if (v71(v69, 1, v68) == 1)
  {
    sub_3D48(v69, &qword_8F830, &qword_7A660);
    v61(v167, v185);
LABEL_25:
    v92 = v163;
    sub_75378();
    v93 = sub_754A8();
    v94 = sub_75718();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_0, v93, v94, "Empty step path", v95, 2u);
    }

    (*(v164 + 8))(v92, v165);
    sub_431DC();
    swift_allocError();
    *v96 = 1;
    swift_willThrow();

    v97 = 0;
    v98 = 0;
    goto LABEL_28;
  }

  v170 = v71;
  v171 = v70;
  v175 = v61;
  v172 = v67;
  v67(v155, v69, v68);
  aBlock[0] = _swiftEmptyArrayStorage;
  v83 = v179;
  sub_67CB8(0, v179, 0);
  v84 = aBlock[0];
  v85 = v157;
  v86 = v160;
  do
  {
    v179 = v83;
    v87 = v180;
    v88 = v185;
    v183(v180, v86, v185);
    sub_75198();
    (v175)(v87, v88);
    aBlock[0] = v84;
    v90 = v84[2];
    v89 = v84[3];
    if (v90 >= v89 >> 1)
    {
      sub_67CB8((v89 > 1), v90 + 1, 1);
      v84 = aBlock[0];
    }

    v84[2] = v90 + 1;
    v172(v84 + v64 + v90 * v65, v85, v68);
    v86 += v177;
    v83 = v179 - 1;
  }

  while (v179 != (&dword_0 + 1));
  v91 = v158;
  sub_5DFFC(v84, v158);

  if ((v170)(v91, 1, v68) == 1)
  {
    (*(v176 + 8))(v155, v68);
    sub_3D48(v91, &qword_8F830, &qword_7A660);
    (v175)(v167, v185);
    goto LABEL_25;
  }

  v172(v142, v91, v68);
  v181 = [v151 database];
  v100 = v150;
  v101 = v149;
  v102 = v152;
  (*(v150 + 16))(v149, v153, v152);
  v103 = (*(v100 + 80) + 32) & ~*(v100 + 80);
  v104 = (v148 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
  v105 = (v104 + 15) & 0xFFFFFFFFFFFFFFF8;
  v106 = (v105 + 15) & 0xFFFFFFFFFFFFFFF8;
  v98 = swift_allocObject();
  v107 = v156;
  *(v98 + 16) = v169;
  *(v98 + 24) = v107;
  (*(v100 + 32))(v98 + v103, v101, v102);
  *(v98 + v104) = v154;
  *(v98 + v105) = v167;
  *(v98 + v106) = v159;
  *(v98 + ((v106 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v187;
  v108 = swift_allocObject();
  v108[2] = sub_433C0;
  v108[3] = v98;
  aBlock[4] = sub_1008C;
  aBlock[5] = v108;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_87F80;
  v109 = _Block_copy(aBlock);
  v110 = v166;

  aBlock[0] = 0;
  v111 = v181;
  v112 = [v181 performTransactionWithContext:v110 error:aBlock block:v109 inaccessibilityHandler:0];
  _Block_release(v109);

  v113 = aBlock[0];
  LOBYTE(v100) = swift_isEscapingClosureAtFileLocation();

  if (v100)
  {
LABEL_44:
    __break(1u);
  }

  if (v112)
  {
    v181 = v110;
    v114 = v180;
    v115 = v167;
    v116 = v185;
    v117 = v183;
    v183(v180, v167, v185);
    v118 = v173;
    sub_751B8();
    v119 = v175;
    (v175)(v114, v116);
    v120 = v146;
    v117(v146, v115, v116);
    v121 = v174;
    sub_75198();
    v119(v120, v116);
    v122 = v187;

    sub_31278(v118, v121, v122, &unk_87FB8, &unk_87FE0, sub_434D0, &unk_87FF8);

    v124 = v176 + 8;
    v123 = *(v176 + 8);
    v125 = v178;
    v123(v121, v178);
    v123(v118, v125);
    if (v147)
    {
      v176 = v124;
      sub_38F8(&qword_8F8A0, &qword_7A6B0);
      v126 = v145;
      sub_75778();
      if (*(aBlock[0] + 2))
      {
        v127 = v144;
        v128 = v143;
        v129 = v141;
        (*(v144 + 16))(v143, aBlock[0] + ((*(v127 + 80) + 32) & ~*(v127 + 80)), v141);

        sub_43B30(&qword_8F878, &type metadata accessor for WorkoutProperties, &protocol conformance descriptor for WorkoutProperties);
        sub_74E98();
        (*(v127 + 8))(v128, v129);
      }

      else
      {

        v129 = v141;
      }

      sub_43B30(&qword_8F878, &type metadata accessor for WorkoutProperties, &protocol conformance descriptor for WorkoutProperties);
      v132 = v140;
      v133 = v155;
      v134 = v142;
      sub_74EC8();
      if (v126)
      {

        v135 = v178;
        v123(v134, v178);
        v123(v133, v135);
        goto LABEL_40;
      }

      sub_38F8(&qword_8F8A8, &unk_7AD60);
      v136 = v144;
      v184 = (*(v144 + 80) + 32) & ~*(v144 + 80);
      v97 = swift_allocObject();
      *(v97 + 1) = xmmword_79BF0;
      (*(v136 + 32))(&v97[v184], v132, v129);

      v137 = v134;
      v138 = v178;
      v123(v137, v178);
      v123(v133, v138);
    }

    else
    {
      sub_38F8(&qword_8F8A0, &qword_7A6B0);
      sub_75778();

      v123(v142, v125);
      v123(v155, v125);

      v97 = aBlock[0];
    }

    (v175)(v167, v185);

    return v97;
  }

  sub_74898();

  swift_willThrow();

  v130 = *(v176 + 8);
  v131 = v178;
  v130(v142, v178);
  v130(v155, v131);
LABEL_40:
  (v175)(v167, v185);
  v97 = sub_433C0;
LABEL_28:

  sub_43230(v97, v98);
  return v97;
}

uint64_t (*sub_358B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, void *a7))()
{
  v151 = a6;
  v154 = a4;
  v156 = a3;
  v153 = a2;
  v169 = a1;
  v9 = sub_74A88();
  v144 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v143 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v139 - v12;
  v152 = sub_74C38();
  v150 = *(v152 - 8);
  __chkstk_darwin(v152);
  v148 = v14;
  v149 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_38F8(&qword_8F830, &qword_7A660);
  v16 = __chkstk_darwin(v15 - 8);
  v158 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v162 = &v139 - v18;
  v19 = sub_74CA8();
  v176 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v175 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v157 = &v139 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v139 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v139 - v28;
  v30 = __chkstk_darwin(v27);
  v174 = &v139 - v31;
  __chkstk_darwin(v30);
  v173 = &v139 - v32;
  v165 = sub_754B8();
  v164 = *(v165 - 8);
  __chkstk_darwin(v165);
  v163 = &v139 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_751D8();
  v168 = *(v185 - 8);
  v34 = __chkstk_darwin(v185);
  v146 = &v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v180 = &v139 - v37;
  v38 = __chkstk_darwin(v36);
  v40 = &v139 - v39;
  v41 = __chkstk_darwin(v38);
  v177 = &v139 - v42;
  v43 = __chkstk_darwin(v41);
  v161 = &v139 - v44;
  __chkstk_darwin(v43);
  v167 = &v139 - v45;
  sub_38F8(&qword_8F8D0, &qword_7A6D0);
  swift_allocObject();
  v147 = a5;
  v46 = sub_30F04(a5 & 1);
  v187 = _swiftEmptyArrayStorage;
  if (a7)
  {
    v166 = a7;
  }

  else
  {
    v166 = [objc_opt_self() contextForReadingProtectedData];
  }

  v47 = *(v169 + 16);
  if (!v47)
  {
    v72 = a7;
    goto LABEL_25;
  }

  v140 = v13;
  v142 = v26;
  v159 = v46;
  v155 = v29;
  v141 = v9;
  v48 = *(v168 + 16);
  v49 = (*(v168 + 80) + 32) & ~*(v168 + 80);
  v160 = v169 + v49;
  v183 = v48;
  v184 = v168 + 16;
  (v48)(v177);
  v50 = a7;
  v178 = v19;
  v179 = v47;
  v51 = v175;
  v52 = v47;
  if (v47 != 1)
  {
    v73 = *(v168 + 72);
    v171 = (v176 + 8);
    v74 = (v168 + 8);
    v170 = (v168 + 32);
    v172 = v73;
    v75 = v73 + v169 + v49;
    v76 = 1;
    while (1)
    {
      v183(v40, v75, v185);
      if (__OFADD__(v76, 1))
      {
        break;
      }

      v182 = (v76 + 1);
      v77 = v173;
      sub_751B8();
      v78 = v174;
      sub_751B8();
      LODWORD(v181) = sub_74C78();
      v79 = *v171;
      (*v171)(v78, v19);
      v79(v77, v19);
      v80 = *v74;
      if (v181)
      {
        v81 = v177;
        v82 = v185;
        v80(v177, v185);
        (*v170)(v81, v40, v82);
      }

      else
      {
        v80(v40, v185);
      }

      v51 = v175;
      v19 = v178;
      v52 = v179;
      ++v76;
      v75 += v172;
      if (v182 == v179)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

LABEL_6:
  v54 = v168 + 32;
  v53 = *(v168 + 32);
  v55 = v161;
  v56 = v185;
  v53(v161, v177, v185);
  v53(v167, v55, v56);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_67CB8(0, v52, 0);
  v57 = aBlock[0];
  v177 = *(v54 + 40);
  v181 = (v176 + 32);
  v182 = (v54 - 24);
  v58 = v160;
  do
  {
    v59 = v180;
    v60 = v185;
    v183(v180, v58, v185);
    sub_751B8();
    v61 = *v182;
    (*v182)(v59, v60);
    aBlock[0] = v57;
    v63 = v57[2];
    v62 = v57[3];
    if (v63 >= v62 >> 1)
    {
      sub_67CB8((v62 > 1), v63 + 1, 1);
      v57 = aBlock[0];
    }

    v57[2] = v63 + 1;
    v64 = (*(v176 + 80) + 32) & ~*(v176 + 80);
    v65 = *(v176 + 72);
    v66 = v57 + v64 + v65 * v63;
    v67 = *(v176 + 32);
    v68 = v178;
    v67(v66, v51, v178);
    v58 += v177;
    --v52;
  }

  while (v52);
  v69 = v162;
  sub_36D1C(v57, v162);

  v70 = (v176 + 48);
  v71 = *(v176 + 48);
  if (v71(v69, 1, v68) == 1)
  {
    sub_3D48(v69, &qword_8F830, &qword_7A660);
    v61(v167, v185);
LABEL_25:
    v92 = v163;
    sub_75378();
    v93 = sub_754A8();
    v94 = sub_75718();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_0, v93, v94, "Empty step path", v95, 2u);
    }

    (*(v164 + 8))(v92, v165);
    sub_431DC();
    swift_allocError();
    *v96 = 1;
    swift_willThrow();

    v97 = 0;
    v98 = 0;
    goto LABEL_28;
  }

  v170 = v71;
  v171 = v70;
  v175 = v61;
  v172 = v67;
  v67(v155, v69, v68);
  aBlock[0] = _swiftEmptyArrayStorage;
  v83 = v179;
  sub_67CB8(0, v179, 0);
  v84 = aBlock[0];
  v85 = v157;
  v86 = v160;
  do
  {
    v179 = v83;
    v87 = v180;
    v88 = v185;
    v183(v180, v86, v185);
    sub_75198();
    (v175)(v87, v88);
    aBlock[0] = v84;
    v90 = v84[2];
    v89 = v84[3];
    if (v90 >= v89 >> 1)
    {
      sub_67CB8((v89 > 1), v90 + 1, 1);
      v84 = aBlock[0];
    }

    v84[2] = v90 + 1;
    v172(v84 + v64 + v90 * v65, v85, v68);
    v86 += v177;
    v83 = v179 - 1;
  }

  while (v179 != (&dword_0 + 1));
  v91 = v158;
  sub_5DFFC(v84, v158);

  if ((v170)(v91, 1, v68) == 1)
  {
    (*(v176 + 8))(v155, v68);
    sub_3D48(v91, &qword_8F830, &qword_7A660);
    (v175)(v167, v185);
    goto LABEL_25;
  }

  v172(v142, v91, v68);
  v181 = [v151 database];
  v100 = v150;
  v101 = v149;
  v102 = v152;
  (*(v150 + 16))(v149, v153, v152);
  v103 = (*(v100 + 80) + 32) & ~*(v100 + 80);
  v104 = (v148 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
  v105 = (v104 + 15) & 0xFFFFFFFFFFFFFFF8;
  v106 = (v105 + 15) & 0xFFFFFFFFFFFFFFF8;
  v98 = swift_allocObject();
  v107 = v156;
  *(v98 + 16) = v169;
  *(v98 + 24) = v107;
  (*(v100 + 32))(v98 + v103, v101, v102);
  *(v98 + v104) = v154;
  *(v98 + v105) = v167;
  *(v98 + v106) = v159;
  *(v98 + ((v106 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v187;
  v108 = swift_allocObject();
  v108[2] = sub_43724;
  v108[3] = v98;
  aBlock[4] = sub_1008C;
  aBlock[5] = v108;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_88160;
  v109 = _Block_copy(aBlock);
  v110 = v166;

  aBlock[0] = 0;
  v111 = v181;
  v112 = [v181 performTransactionWithContext:v110 error:aBlock block:v109 inaccessibilityHandler:0];
  _Block_release(v109);

  v113 = aBlock[0];
  LOBYTE(v100) = swift_isEscapingClosureAtFileLocation();

  if (v100)
  {
LABEL_44:
    __break(1u);
  }

  if (v112)
  {
    v181 = v110;
    v114 = v180;
    v115 = v167;
    v116 = v185;
    v117 = v183;
    v183(v180, v167, v185);
    v118 = v173;
    sub_751B8();
    v119 = v175;
    (v175)(v114, v116);
    v120 = v146;
    v117(v146, v115, v116);
    v121 = v174;
    sub_75198();
    v119(v120, v116);
    v122 = v187;

    sub_31278(v118, v121, v122, &unk_88198, &unk_881C0, sub_438AC, &unk_881D8);

    v124 = v176 + 8;
    v123 = *(v176 + 8);
    v125 = v178;
    v123(v121, v178);
    v123(v118, v125);
    if (v147)
    {
      v176 = v124;
      sub_38F8(&qword_8F8D8, &qword_7A6D8);
      v126 = v145;
      sub_75778();
      if (*(aBlock[0] + 2))
      {
        v127 = v144;
        v128 = v143;
        v129 = v141;
        (*(v144 + 16))(v143, aBlock[0] + ((*(v127 + 80) + 32) & ~*(v127 + 80)), v141);

        sub_43B30(&qword_8F8E0, &type metadata accessor for FitnessPlusProperties, &protocol conformance descriptor for FitnessPlusProperties);
        sub_74E98();
        (*(v127 + 8))(v128, v129);
      }

      else
      {

        v129 = v141;
      }

      sub_43B30(&qword_8F8E0, &type metadata accessor for FitnessPlusProperties, &protocol conformance descriptor for FitnessPlusProperties);
      v132 = v140;
      v133 = v155;
      v134 = v142;
      sub_74EC8();
      if (v126)
      {

        v135 = v178;
        v123(v134, v178);
        v123(v133, v135);
        goto LABEL_40;
      }

      sub_38F8(&qword_8F8E8, &unk_7AD80);
      v136 = v144;
      v184 = (*(v144 + 80) + 32) & ~*(v144 + 80);
      v97 = swift_allocObject();
      *(v97 + 1) = xmmword_79BF0;
      (*(v136 + 32))(&v97[v184], v132, v129);

      v137 = v134;
      v138 = v178;
      v123(v137, v178);
      v123(v133, v138);
    }

    else
    {
      sub_38F8(&qword_8F8D8, &qword_7A6D8);
      sub_75778();

      v123(v142, v125);
      v123(v155, v125);

      v97 = aBlock[0];
    }

    (v175)(v167, v185);

    return v97;
  }

  sub_74898();

  swift_willThrow();

  v130 = *(v176 + 8);
  v131 = v178;
  v130(v142, v178);
  v130(v155, v131);
LABEL_40:
  (v175)(v167, v185);
  v97 = sub_43724;
LABEL_28:

  sub_43230(v97, v98);
  return v97;
}

uint64_t sub_36D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_74CA8();
  v5 = __chkstk_darwin(*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_43B30(&qword_8F2A0, &type metadata accessor for CacheIndex, &protocol conformance descriptor for CacheIndex);
        v20 = sub_75558();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_36FCC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v136 = a8;
  v134 = a7;
  v135 = a6;
  v139 = a5;
  v140 = a4;
  v133 = sub_74C38();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = v12;
  v131 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_74968();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v120 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v117 - v18;
  __chkstk_darwin(v17);
  v21 = &v117 - v20;
  v22 = sub_754B8();
  v138 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v25 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v127 = &v117 - v27;
  __chkstk_darwin(v26);
  v29 = &v117 - v28;
  v129 = type metadata accessor for FitnessPlusPropertyRecordEntity();
  v137 = [a1 protectedDatabase];
  if (!v137)
  {
    sub_75378();
    v58 = sub_754A8();
    v59 = sub_75718();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_0, v58, v59, "Failed to insert: no protected database", v60, 2u);
    }

    (*(v138 + 8))(v29, v22);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v61 = 0;
      *a2 = sub_74888();
    }

    return 0;
  }

  v117 = v19;
  v118 = v25;
  v128 = v21;
  v124 = v14;
  v125 = v13;
  v119 = a2;
  v126 = v22;
  v30 = *(a3 + 16);
  v31 = _swiftEmptyArrayStorage;
  if (v30)
  {
    aBlock = _swiftEmptyArrayStorage;
    sub_67C58(0, v30, 0);
    v31 = aBlock;
    v32 = *(aBlock + 16);
    v33 = 16 * v32;
    do
    {
      aBlock = v31;
      v34 = *(v31 + 3);
      v35 = v32 + 1;
      if (v32 >= v34 >> 1)
      {
        sub_67C58((v34 > 1), v32 + 1, 1);
        v31 = aBlock;
      }

      *(v31 + 2) = v35;
      v36 = &v31[v33];
      *(v36 + 4) = 0xD00000000000002BLL;
      *(v36 + 5) = 0x8000000000078DD0;
      v33 += 16;
      v32 = v35;
      --v30;
    }

    while (v30);
  }

  v37 = sub_4D28(v140);
  v38 = sub_39E34(8, v37, sub_6E0D4);
  v40 = v39;

  v41 = sub_5AD68();
  sub_38F8(&qword_8F678, &qword_7A4A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_79BF0;
  *(inited + 32) = v38;
  *(inited + 40) = v40;
  aBlock = v41;
  sub_66C3C(inited);
  v43 = aBlock;
  v44 = *(aBlock + 16);
  v123 = a3;
  if (v44)
  {
    v45 = 0;
    aBlock = 541347393;
    v143 = 0xE400000000000000;
    v46 = _swiftEmptyArrayStorage;
LABEL_9:
    v47 = 16 * v45 + 40;
    while (v44 != v45)
    {
      if (v45 >= *(v43 + 16))
      {
        __break(1u);
      }

      ++v45;
      v48 = v47 + 16;
      v49 = *(v43 + v47);
      v47 += 16;
      if (v49)
      {
        v50 = *(v43 + v48 - 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_67180(0, *(v46 + 2) + 1, 1, v46);
        }

        v52 = *(v46 + 2);
        v51 = *(v46 + 3);
        if (v52 >= v51 >> 1)
        {
          v46 = sub_67180((v51 > 1), v52 + 1, 1, v46);
        }

        *(v46 + 2) = v52 + 1;
        v53 = &v46[16 * v52];
        *(v53 + 4) = v50;
        *(v53 + 5) = v49;
        goto LABEL_9;
      }
    }

    v141 = v46;
    sub_38F8(&qword_8F280, &unk_7ABA0);
    sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0, &protocol conformance descriptor for [A]);
    v54 = sub_75538();
    v56 = v55;

    v148._countAndFlagsBits = v54;
    v148._object = v56;
    sub_75608(v148);

    v57 = v143;
    v121 = aBlock;
  }

  else
  {

    v121 = 0;
    v57 = 0;
  }

  v122 = a9;
  aBlock = sub_6F270();
  sub_38F8(&qword_8F280, &unk_7ABA0);
  sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0, &protocol conformance descriptor for [A]);
  v62 = sub_75538();
  v64 = v63;

  aBlock = 0;
  v143 = 0xE000000000000000;
  sub_75908(88);
  v149._countAndFlagsBits = 0x205443454C4553;
  v149._object = 0xE700000000000000;
  sub_75608(v149);
  v150._countAndFlagsBits = v62;
  v150._object = v64;
  sub_75608(v150);

  v151._countAndFlagsBits = 0x204D4F524620;
  v151._object = 0xE600000000000000;
  sub_75608(v151);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v66 = [ObjCClassFromMetadata databaseTable];
  v67 = sub_755A8();
  v69 = v68;

  v152._countAndFlagsBits = v67;
  v152._object = v69;
  sub_75608(v152);

  v153._countAndFlagsBits = 0x2820455245485720;
  v153._object = 0xE800000000000000;
  sub_75608(v153);
  v141 = v31;
  v70 = sub_75538();
  v72 = v71;

  v154._countAndFlagsBits = v70;
  v154._object = v72;
  sub_75608(v154);

  v155._countAndFlagsBits = 0x20444E412029;
  v155._object = 0xE600000000000000;
  sub_75608(v155);
  v156._countAndFlagsBits = 0x6E6F6973726576;
  v156._object = 0xE700000000000000;
  sub_75608(v156);
  v157._object = 0x8000000000078E00;
  v157._countAndFlagsBits = 0xD00000000000001ELL;
  sub_75608(v157);
  v73 = [ObjCClassFromMetadata databaseTable];
  v74 = sub_755A8();
  v76 = v75;

  v158._countAndFlagsBits = v74;
  v158._object = v76;
  sub_75608(v158);

  v159._countAndFlagsBits = 8233;
  v159._object = 0xE200000000000000;
  sub_75608(v159);
  if (v57)
  {
    v77._countAndFlagsBits = v121;
  }

  else
  {
    v77._countAndFlagsBits = 0;
  }

  if (v57)
  {
    v78 = v57;
  }

  else
  {
    v78 = 0xE000000000000000;
  }

  v77._object = v78;
  sub_75608(v77);

  v160._countAndFlagsBits = 0x4220524544524F20;
  v160._object = 0xEA00000000002059;
  sub_75608(v160);
  v161._countAndFlagsBits = 0x6361437472617473;
  v161._object = 0xEF7865646E496568;
  sub_75608(v161);
  v162._countAndFlagsBits = 0x3B43534120;
  v162._object = 0xE500000000000000;
  sub_75608(v162);
  v79 = v128;
  sub_74958();
  v141 = 0;
  v80 = sub_75598();

  v81 = v132;
  v82 = v131;
  v83 = v133;
  (*(v132 + 16))(v131, v139, v133);
  v84 = (*(v81 + 80) + 24) & ~*(v81 + 80);
  v85 = (v130 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  *(v86 + 16) = v123;
  (*(v81 + 32))(v86 + v84, v82, v83);
  *(v86 + v85) = v140;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_439BC;
  *(v87 + 24) = v86;
  v146 = sub_303D0;
  v147 = v87;
  aBlock = _NSConcreteStackBlock;
  v143 = 1107296256;
  v144 = sub_644E0;
  v145 = &unk_88250;
  v88 = _Block_copy(&aBlock);

  v89 = swift_allocObject();
  v89[2] = v135;
  v89[3] = &v141;
  v90 = v136;
  v89[4] = v134;
  v89[5] = v90;
  v89[6] = v122;
  v91 = swift_allocObject();
  *(v91 + 16) = sub_43B00;
  *(v91 + 24) = v89;
  v146 = sub_43BA8;
  v147 = v91;
  aBlock = _NSConcreteStackBlock;
  v143 = 1107296256;
  v144 = sub_4F494;
  v145 = &unk_882C8;
  v92 = _Block_copy(&aBlock);

  aBlock = 0;
  v93 = v137;
  LODWORD(v81) = [v137 executeSQL:v80 error:&aBlock bindingHandler:v88 enumerationHandler:v92];
  _Block_release(v92);
  _Block_release(v88);

  if (!v81)
  {
    v107 = aBlock;
    sub_74898();

    swift_willThrow();
    (*(v124 + 8))(v79, v125);
    v108 = v118;
    sub_75378();
    swift_errorRetain();
    v109 = sub_754A8();
    v110 = sub_75718();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      *v111 = 138412290;
      swift_errorRetain();
      v113 = _swift_stdlib_bridgeErrorToNSError();
      *(v111 + 4) = v113;
      *v112 = v113;
      _os_log_impl(&dword_0, v109, v110, "Failed to query: %@", v111, 0xCu);
      sub_3D48(v112, &unk_8EB30, &unk_7A270);
    }

    (*(v138 + 8))(v108, v126);
    v114 = v119;
    if (v119)
    {
      *v114 = sub_74888();
    }

    return 0;
  }

  v140 = v86;
  v94 = aBlock;
  v95 = v127;
  sub_75378();
  v96 = v79;
  v97 = v124;
  v98 = v117;
  v99 = v125;
  (*(v124 + 16))(v117, v96, v125);
  v100 = sub_754A8();
  v101 = sub_75738();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    *v102 = 134218240;
    swift_beginAccess();
    *(v102 + 4) = v141;
    *(v102 + 12) = 2048;
    v103 = v120;
    sub_74958();
    sub_748F8();
    v105 = v104;
    v106 = *(v97 + 8);
    v106(v103, v99);
    v106(v98, v99);
    *(v102 + 14) = v105;
    _os_log_impl(&dword_0, v100, v101, "Queried %ld records in %fs", v102, 0x16u);

    (*(v138 + 8))(v95, v126);
    v106(v128, v99);
  }

  else
  {

    v116 = *(v97 + 8);
    v116(v98, v99);
    (*(v138 + 8))(v95, v126);
    v116(v128, v99);
  }

  return 1;
}

uint64_t sub_37F34(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v136 = a8;
  v134 = a7;
  v135 = a6;
  v139 = a5;
  v140 = a4;
  v133 = sub_75358();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = v12;
  v131 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_74968();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v120 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v117 - v18;
  __chkstk_darwin(v17);
  v21 = &v117 - v20;
  v22 = sub_754B8();
  v138 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v25 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v127 = &v117 - v27;
  __chkstk_darwin(v26);
  v29 = &v117 - v28;
  v129 = type metadata accessor for WorkoutPropertyRecordEntity();
  v137 = [a1 protectedDatabase];
  if (!v137)
  {
    sub_75378();
    v58 = sub_754A8();
    v59 = sub_75718();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_0, v58, v59, "Failed to insert: no protected database", v60, 2u);
    }

    (*(v138 + 8))(v29, v22);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v61 = 0;
      *a2 = sub_74888();
    }

    return 0;
  }

  v117 = v19;
  v118 = v25;
  v128 = v21;
  v124 = v14;
  v125 = v13;
  v119 = a2;
  v126 = v22;
  v30 = *(a3 + 16);
  v31 = _swiftEmptyArrayStorage;
  if (v30)
  {
    aBlock = _swiftEmptyArrayStorage;
    sub_67C58(0, v30, 0);
    v31 = aBlock;
    v32 = *(aBlock + 16);
    v33 = 16 * v32;
    do
    {
      aBlock = v31;
      v34 = *(v31 + 3);
      v35 = v32 + 1;
      if (v32 >= v34 >> 1)
      {
        sub_67C58((v34 > 1), v32 + 1, 1);
        v31 = aBlock;
      }

      *(v31 + 2) = v35;
      v36 = &v31[v33];
      *(v36 + 4) = 0xD00000000000002BLL;
      *(v36 + 5) = 0x8000000000078DD0;
      v33 += 16;
      v32 = v35;
      --v30;
    }

    while (v30);
  }

  v37 = sub_4D7C(v140);
  v38 = sub_39E34(9, v37, sub_5B270);
  v40 = v39;

  v41 = sub_5918C();
  sub_38F8(&qword_8F678, &qword_7A4A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_79BF0;
  *(inited + 32) = v38;
  *(inited + 40) = v40;
  aBlock = v41;
  sub_66C3C(inited);
  v43 = aBlock;
  v44 = *(aBlock + 16);
  v123 = a3;
  if (v44)
  {
    v45 = 0;
    aBlock = 541347393;
    v143 = 0xE400000000000000;
    v46 = _swiftEmptyArrayStorage;
LABEL_9:
    v47 = 16 * v45 + 40;
    while (v44 != v45)
    {
      if (v45 >= *(v43 + 16))
      {
        __break(1u);
      }

      ++v45;
      v48 = v47 + 16;
      v49 = *(v43 + v47);
      v47 += 16;
      if (v49)
      {
        v50 = *(v43 + v48 - 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_67180(0, *(v46 + 2) + 1, 1, v46);
        }

        v52 = *(v46 + 2);
        v51 = *(v46 + 3);
        if (v52 >= v51 >> 1)
        {
          v46 = sub_67180((v51 > 1), v52 + 1, 1, v46);
        }

        *(v46 + 2) = v52 + 1;
        v53 = &v46[16 * v52];
        *(v53 + 4) = v50;
        *(v53 + 5) = v49;
        goto LABEL_9;
      }
    }

    v141 = v46;
    sub_38F8(&qword_8F280, &unk_7ABA0);
    sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0, &protocol conformance descriptor for [A]);
    v54 = sub_75538();
    v56 = v55;

    v148._countAndFlagsBits = v54;
    v148._object = v56;
    sub_75608(v148);

    v57 = v143;
    v121 = aBlock;
  }

  else
  {

    v121 = 0;
    v57 = 0;
  }

  v122 = a9;
  aBlock = sub_5C16C();
  sub_38F8(&qword_8F280, &unk_7ABA0);
  sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0, &protocol conformance descriptor for [A]);
  v62 = sub_75538();
  v64 = v63;

  aBlock = 0;
  v143 = 0xE000000000000000;
  sub_75908(88);
  v149._countAndFlagsBits = 0x205443454C4553;
  v149._object = 0xE700000000000000;
  sub_75608(v149);
  v150._countAndFlagsBits = v62;
  v150._object = v64;
  sub_75608(v150);

  v151._countAndFlagsBits = 0x204D4F524620;
  v151._object = 0xE600000000000000;
  sub_75608(v151);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v66 = [ObjCClassFromMetadata databaseTable];
  v67 = sub_755A8();
  v69 = v68;

  v152._countAndFlagsBits = v67;
  v152._object = v69;
  sub_75608(v152);

  v153._countAndFlagsBits = 0x2820455245485720;
  v153._object = 0xE800000000000000;
  sub_75608(v153);
  v141 = v31;
  v70 = sub_75538();
  v72 = v71;

  v154._countAndFlagsBits = v70;
  v154._object = v72;
  sub_75608(v154);

  v155._countAndFlagsBits = 0x20444E412029;
  v155._object = 0xE600000000000000;
  sub_75608(v155);
  v156._countAndFlagsBits = 0x6E6F6973726576;
  v156._object = 0xE700000000000000;
  sub_75608(v156);
  v157._object = 0x8000000000078E00;
  v157._countAndFlagsBits = 0xD00000000000001ELL;
  sub_75608(v157);
  v73 = [ObjCClassFromMetadata databaseTable];
  v74 = sub_755A8();
  v76 = v75;

  v158._countAndFlagsBits = v74;
  v158._object = v76;
  sub_75608(v158);

  v159._countAndFlagsBits = 8233;
  v159._object = 0xE200000000000000;
  sub_75608(v159);
  if (v57)
  {
    v77._countAndFlagsBits = v121;
  }

  else
  {
    v77._countAndFlagsBits = 0;
  }

  if (v57)
  {
    v78 = v57;
  }

  else
  {
    v78 = 0xE000000000000000;
  }

  v77._object = v78;
  sub_75608(v77);

  v160._countAndFlagsBits = 0x4220524544524F20;
  v160._object = 0xEA00000000002059;
  sub_75608(v160);
  v161._countAndFlagsBits = 0x6361437472617473;
  v161._object = 0xEF7865646E496568;
  sub_75608(v161);
  v162._countAndFlagsBits = 0x3B43534120;
  v162._object = 0xE500000000000000;
  sub_75608(v162);
  v79 = v128;
  sub_74958();
  v141 = 0;
  v80 = sub_75598();

  v81 = v132;
  v82 = v131;
  v83 = v133;
  (*(v132 + 16))(v131, v139, v133);
  v84 = (*(v81 + 80) + 24) & ~*(v81 + 80);
  v85 = (v130 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  *(v86 + 16) = v123;
  (*(v81 + 32))(v86 + v84, v82, v83);
  *(v86 + v85) = v140;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_435A4;
  *(v87 + 24) = v86;
  v146 = sub_303D0;
  v147 = v87;
  aBlock = _NSConcreteStackBlock;
  v143 = 1107296256;
  v144 = sub_644E0;
  v145 = &unk_88070;
  v88 = _Block_copy(&aBlock);

  v89 = swift_allocObject();
  v89[2] = v135;
  v89[3] = &v141;
  v90 = v136;
  v89[4] = v134;
  v89[5] = v90;
  v89[6] = v122;
  v91 = swift_allocObject();
  *(v91 + 16) = sub_435E4;
  *(v91 + 24) = v89;
  v146 = sub_43BA8;
  v147 = v91;
  aBlock = _NSConcreteStackBlock;
  v143 = 1107296256;
  v144 = sub_4F494;
  v145 = &unk_880E8;
  v92 = _Block_copy(&aBlock);

  aBlock = 0;
  v93 = v137;
  LODWORD(v81) = [v137 executeSQL:v80 error:&aBlock bindingHandler:v88 enumerationHandler:v92];
  _Block_release(v92);
  _Block_release(v88);

  if (!v81)
  {
    v107 = aBlock;
    sub_74898();

    swift_willThrow();
    (*(v124 + 8))(v79, v125);
    v108 = v118;
    sub_75378();
    swift_errorRetain();
    v109 = sub_754A8();
    v110 = sub_75718();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      *v111 = 138412290;
      swift_errorRetain();
      v113 = _swift_stdlib_bridgeErrorToNSError();
      *(v111 + 4) = v113;
      *v112 = v113;
      _os_log_impl(&dword_0, v109, v110, "Failed to query: %@", v111, 0xCu);
      sub_3D48(v112, &unk_8EB30, &unk_7A270);
    }

    (*(v138 + 8))(v108, v126);
    v114 = v119;
    if (v119)
    {
      *v114 = sub_74888();
    }

    return 0;
  }

  v140 = v86;
  v94 = aBlock;
  v95 = v127;
  sub_75378();
  v96 = v79;
  v97 = v124;
  v98 = v117;
  v99 = v125;
  (*(v124 + 16))(v117, v96, v125);
  v100 = sub_754A8();
  v101 = sub_75738();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    *v102 = 134218240;
    swift_beginAccess();
    *(v102 + 4) = v141;
    *(v102 + 12) = 2048;
    v103 = v120;
    sub_74958();
    sub_748F8();
    v105 = v104;
    v106 = *(v97 + 8);
    v106(v103, v99);
    v106(v98, v99);
    *(v102 + 14) = v105;
    _os_log_impl(&dword_0, v100, v101, "Queried %ld records in %fs", v102, 0x16u);

    (*(v138 + 8))(v95, v126);
    v106(v128, v99);
  }

  else
  {

    v116 = *(v97 + 8);
    v116(v98, v99);
    (*(v138 + 8))(v95, v126);
    v116(v128, v99);
  }

  return 1;
}

uint64_t sub_38E9C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v136 = a8;
  v134 = a7;
  v135 = a6;
  v139 = a5;
  v140 = a4;
  v133 = sub_752D8();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = v12;
  v131 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_74968();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v120 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v117 - v18;
  __chkstk_darwin(v17);
  v21 = &v117 - v20;
  v22 = sub_754B8();
  v138 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v25 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v127 = &v117 - v27;
  __chkstk_darwin(v26);
  v29 = &v117 - v28;
  v129 = type metadata accessor for RingsPropertyRecordEntity();
  v137 = [a1 protectedDatabase];
  if (!v137)
  {
    sub_75378();
    v58 = sub_754A8();
    v59 = sub_75718();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_0, v58, v59, "Failed to insert: no protected database", v60, 2u);
    }

    (*(v138 + 8))(v29, v22);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v61 = 0;
      *a2 = sub_74888();
    }

    return 0;
  }

  v117 = v19;
  v118 = v25;
  v128 = v21;
  v124 = v14;
  v125 = v13;
  v119 = a2;
  v126 = v22;
  v30 = *(a3 + 16);
  v31 = _swiftEmptyArrayStorage;
  if (v30)
  {
    aBlock = _swiftEmptyArrayStorage;
    sub_67C58(0, v30, 0);
    v31 = aBlock;
    v32 = *(aBlock + 16);
    v33 = 16 * v32;
    do
    {
      aBlock = v31;
      v34 = *(v31 + 3);
      v35 = v32 + 1;
      if (v32 >= v34 >> 1)
      {
        sub_67C58((v34 > 1), v32 + 1, 1);
        v31 = aBlock;
      }

      *(v31 + 2) = v35;
      v36 = &v31[v33];
      *(v36 + 4) = 0xD00000000000002BLL;
      *(v36 + 5) = 0x8000000000078DD0;
      v33 += 16;
      v32 = v35;
      --v30;
    }

    while (v30);
  }

  v37 = sub_4DD0(v140);
  v38 = sub_39E34(6, v37, sub_11EB8);
  v40 = v39;

  v41 = sub_20148();
  sub_38F8(&qword_8F678, &qword_7A4A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_79BF0;
  *(inited + 32) = v38;
  *(inited + 40) = v40;
  aBlock = v41;
  sub_66C3C(inited);
  v43 = aBlock;
  v44 = *(aBlock + 16);
  v123 = a3;
  if (v44)
  {
    v45 = 0;
    aBlock = 541347393;
    v143 = 0xE400000000000000;
    v46 = _swiftEmptyArrayStorage;
LABEL_9:
    v47 = 16 * v45 + 40;
    while (v44 != v45)
    {
      if (v45 >= *(v43 + 16))
      {
        __break(1u);
      }

      ++v45;
      v48 = v47 + 16;
      v49 = *(v43 + v47);
      v47 += 16;
      if (v49)
      {
        v50 = *(v43 + v48 - 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_67180(0, *(v46 + 2) + 1, 1, v46);
        }

        v52 = *(v46 + 2);
        v51 = *(v46 + 3);
        if (v52 >= v51 >> 1)
        {
          v46 = sub_67180((v51 > 1), v52 + 1, 1, v46);
        }

        *(v46 + 2) = v52 + 1;
        v53 = &v46[16 * v52];
        *(v53 + 4) = v50;
        *(v53 + 5) = v49;
        goto LABEL_9;
      }
    }

    v141 = v46;
    sub_38F8(&qword_8F280, &unk_7ABA0);
    sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0, &protocol conformance descriptor for [A]);
    v54 = sub_75538();
    v56 = v55;

    v148._countAndFlagsBits = v54;
    v148._object = v56;
    sub_75608(v148);

    v57 = v143;
    v121 = aBlock;
  }

  else
  {

    v121 = 0;
    v57 = 0;
  }

  v122 = a9;
  aBlock = sub_12FE0();
  sub_38F8(&qword_8F280, &unk_7ABA0);
  sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0, &protocol conformance descriptor for [A]);
  v62 = sub_75538();
  v64 = v63;

  aBlock = 0;
  v143 = 0xE000000000000000;
  sub_75908(88);
  v149._countAndFlagsBits = 0x205443454C4553;
  v149._object = 0xE700000000000000;
  sub_75608(v149);
  v150._countAndFlagsBits = v62;
  v150._object = v64;
  sub_75608(v150);

  v151._countAndFlagsBits = 0x204D4F524620;
  v151._object = 0xE600000000000000;
  sub_75608(v151);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v66 = [ObjCClassFromMetadata databaseTable];
  v67 = sub_755A8();
  v69 = v68;

  v152._countAndFlagsBits = v67;
  v152._object = v69;
  sub_75608(v152);

  v153._countAndFlagsBits = 0x2820455245485720;
  v153._object = 0xE800000000000000;
  sub_75608(v153);
  v141 = v31;
  v70 = sub_75538();
  v72 = v71;

  v154._countAndFlagsBits = v70;
  v154._object = v72;
  sub_75608(v154);

  v155._countAndFlagsBits = 0x20444E412029;
  v155._object = 0xE600000000000000;
  sub_75608(v155);
  v156._countAndFlagsBits = 0x6E6F6973726576;
  v156._object = 0xE700000000000000;
  sub_75608(v156);
  v157._object = 0x8000000000078E00;
  v157._countAndFlagsBits = 0xD00000000000001ELL;
  sub_75608(v157);
  v73 = [ObjCClassFromMetadata databaseTable];
  v74 = sub_755A8();
  v76 = v75;

  v158._countAndFlagsBits = v74;
  v158._object = v76;
  sub_75608(v158);

  v159._countAndFlagsBits = 8233;
  v159._object = 0xE200000000000000;
  sub_75608(v159);
  if (v57)
  {
    v77._countAndFlagsBits = v121;
  }

  else
  {
    v77._countAndFlagsBits = 0;
  }

  if (v57)
  {
    v78 = v57;
  }

  else
  {
    v78 = 0xE000000000000000;
  }

  v77._object = v78;
  sub_75608(v77);

  v160._countAndFlagsBits = 0x4220524544524F20;
  v160._object = 0xEA00000000002059;
  sub_75608(v160);
  v161._countAndFlagsBits = 0x6361437472617473;
  v161._object = 0xEF7865646E496568;
  sub_75608(v161);
  v162._countAndFlagsBits = 0x3B43534120;
  v162._object = 0xE500000000000000;
  sub_75608(v162);
  v79 = v128;
  sub_74958();
  v141 = 0;
  v80 = sub_75598();

  v81 = v132;
  v82 = v131;
  v83 = v133;
  (*(v132 + 16))(v131, v139, v133);
  v84 = (*(v81 + 80) + 24) & ~*(v81 + 80);
  v85 = (v130 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  *(v86 + 16) = v123;
  (*(v81 + 32))(v86 + v84, v82, v83);
  *(v86 + v85) = v140;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_432F0;
  *(v87 + 24) = v86;
  v146 = sub_2FE7C;
  v147 = v87;
  aBlock = _NSConcreteStackBlock;
  v143 = 1107296256;
  v144 = sub_644E0;
  v145 = &unk_87E90;
  v88 = _Block_copy(&aBlock);

  v89 = swift_allocObject();
  v89[2] = v135;
  v89[3] = &v141;
  v90 = v136;
  v89[4] = v134;
  v89[5] = v90;
  v89[6] = v122;
  v91 = swift_allocObject();
  *(v91 + 16) = sub_43390;
  *(v91 + 24) = v89;
  v146 = sub_1B6F8;
  v147 = v91;
  aBlock = _NSConcreteStackBlock;
  v143 = 1107296256;
  v144 = sub_4F494;
  v145 = &unk_87F08;
  v92 = _Block_copy(&aBlock);

  aBlock = 0;
  v93 = v137;
  LODWORD(v81) = [v137 executeSQL:v80 error:&aBlock bindingHandler:v88 enumerationHandler:v92];
  _Block_release(v92);
  _Block_release(v88);

  if (!v81)
  {
    v107 = aBlock;
    sub_74898();

    swift_willThrow();
    (*(v124 + 8))(v79, v125);
    v108 = v118;
    sub_75378();
    swift_errorRetain();
    v109 = sub_754A8();
    v110 = sub_75718();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      *v111 = 138412290;
      swift_errorRetain();
      v113 = _swift_stdlib_bridgeErrorToNSError();
      *(v111 + 4) = v113;
      *v112 = v113;
      _os_log_impl(&dword_0, v109, v110, "Failed to query: %@", v111, 0xCu);
      sub_3D48(v112, &unk_8EB30, &unk_7A270);
    }

    (*(v138 + 8))(v108, v126);
    v114 = v119;
    if (v119)
    {
      *v114 = sub_74888();
    }

    return 0;
  }

  v140 = v86;
  v94 = aBlock;
  v95 = v127;
  sub_75378();
  v96 = v79;
  v97 = v124;
  v98 = v117;
  v99 = v125;
  (*(v124 + 16))(v117, v96, v125);
  v100 = sub_754A8();
  v101 = sub_75738();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    *v102 = 134218240;
    swift_beginAccess();
    *(v102 + 4) = v141;
    *(v102 + 12) = 2048;
    v103 = v120;
    sub_74958();
    sub_748F8();
    v105 = v104;
    v106 = *(v97 + 8);
    v106(v103, v99);
    v106(v98, v99);
    *(v102 + 14) = v105;
    _os_log_impl(&dword_0, v100, v101, "Queried %ld records in %fs", v102, 0x16u);

    (*(v138 + 8))(v95, v126);
    v106(v128, v99);
  }

  else
  {

    v116 = *(v97 + 8);
    v116(v98, v99);
    (*(v138 + 8))(v95, v126);
    v116(v128, v99);
  }

  return 1;
}