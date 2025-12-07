uint64_t sub_1002B9D8C(uint64_t a1)
{
  swift_unknownObjectRetain();
  sub_1001F1160(&qword_100ADA048, &unk_100817B50);
  return sub_1007A26B4();
}

uint64_t sub_1002B9DDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  v8 = a4;
  v7(a2, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t sub_1002B9E68(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v12 = *sub_10000E3E8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
    v13 = swift_allocError();
    *v14 = a3;
    v15 = a3;

    return _swift_continuation_throwingResumeWithError(v12, v13);
  }

  else
  {
    if (a2)
    {
      sub_100796974();
      v16 = sub_1007969B4();
      (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
    }

    else
    {
      v17 = sub_1007969B4();
      (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
    }

    sub_100008EF8(v8, v11);
    sub_100008EF8(v11, *(*(v12 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1002BA044(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *v2;
  *(v3 + 48) = *(v2 + 16);
  return _swift_task_switch(sub_1002BA074, 0, 0);
}

uint64_t sub_1002BA074()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = *(v0 + 32);
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_1002BA180;

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000014, 0x80000001008C8D80, sub_1002BAE9C, v4, &type metadata for () + 8);
}

uint64_t sub_1002BA180()
{

  return _swift_task_switch(sub_1002BA298, 0, 0);
}

uint64_t sub_1002BA2AC(uint64_t a1, uint64_t a2)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = *v2;
  *(v3 + 56) = *(v2 + 16);
  return _swift_task_switch(sub_1002BA2DC, 0, 0);
}

uint64_t sub_1002BA2DC()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = sub_1001F1160(&qword_100ADA040, &qword_100817B48);
  *v5 = v0;
  v5[1] = sub_1002BA3FC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000001ALL, 0x80000001008C8D00, sub_1002BAD50, v4, v6);
}

uint64_t sub_1002BA3FC()
{

  return _swift_task_switch(sub_1002BA514, 0, 0);
}

uint64_t sub_1002BA52C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002812C;

  return sub_1002B97AC(a1, v4, v5, v1 + 32, v1 + 80);
}

uint64_t sub_1002BA5E0()
{
  swift_unknownObjectRelease();
  sub_1000074E0((v0 + 32));
  sub_1000074E0((v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_1002BA628(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009A34;

  return sub_1002B9714(a1, v4, v5, v1 + 32, v1 + 80);
}

uint64_t sub_1002BA6F8(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_100799004();
  v39 = *(v5 - 8);
  isa = v5;
  __chkstk_darwin(v5);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E3E8(a1, a1[3]);
  sub_100797674();
  v8 = sub_1007A2214();

  v9 = [a3 libraryAssetOnMainQueueWithAssetID:v8];

  if (!v9)
  {
    return 0;
  }

  v43._countAndFlagsBits = sub_100797674();
  v10 = sub_1007983D4(v43);
  v12 = v11;

  if (v12)
  {
    v38[7] = v10;
    v44._countAndFlagsBits = sub_100797674();
    v13 = sub_1007983C4(v44);
    v15 = v14;

    v38[6] = v15;
    if (v15)
    {
      v38[5] = v13;
      sub_100797674();

      v16 = v9;
      [v16 contentType];
      sub_1007984D4();
      v38[4] = sub_1007984A4();

      v17 = [v16 isOwned];
      v18 = 0;
      if (v17)
      {
        v19 = [v16 storeID];
        if (v19 && (v20 = v19, v21 = sub_1007A2254(), v23 = v22, v20, v41 = v21, v42 = v23, sub_1002060B4(), LOBYTE(v20) = sub_1007A28A4(), , (v20 & 1) != 0))
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }
      }

      v38[3] = v18;
      sub_100798004();
      v25 = sub_100797FF4();
      sub_100797674();
      v38[2] = sub_100797FA4();

      v26 = [v16 isAudiobook];
      v27 = 0;
      if (v26)
      {
        v28 = [v16 hasRACSupport];
        if (v28 && (v29 = v28, v30 = [v28 BOOLValue], v29, (v30 & 1) != 0))
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }
      }

      v38[1] = v27;
      v32 = v39;
      v31 = isa;
      (*(v39 + 104))(v7, enum case for BooksFeatureFlag.unifiedProductPage(_:), isa);
      sub_1002BAD08(&unk_100AD9560, &type metadata accessor for BooksFeatureFlag, &protocol conformance descriptor for BooksFeatureFlag);
      sub_100260748();
      v33 = sub_1007A2554();
      (*(v32 + 8))(v7, v31);
      if (v33)
      {
        sub_10000E3E8(a1, a1[3]);
        sub_100797644();
        isa = sub_1007A2684().super.super.isa;
        sub_10000E3E8(a1, a1[3]);
        sub_100797574();
      }

      else
      {
        isa = 0;
      }

      sub_100797674();
      if ([v16 contentType] == 3)
      {
        [objc_allocWithZone(NSNumber) initWithLongLong:{objc_msgSend(v16, "pageCount")}];
      }

      v34 = [v16 supplementalContentAssets];
      if (v34)
      {
        sub_1002BACBC();
        sub_1002BAD08(&qword_100AD9FD0, sub_1002BACBC, &protocol conformance descriptor for NSObject);
        v35 = sub_1007A2834();

        if ((v35 & 0xC000000000000001) != 0)
        {
          v34 = sub_1007A3624();
        }

        else
        {
          v34 = *(v35 + 16);
        }
      }

      [objc_allocWithZone(NSNumber) initWithInteger:v34];
      v36 = objc_allocWithZone(sub_100798134());
      v37 = sub_100798114();

      return v37;
    }

    else
    {

      return 0;
    }
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1002BACBC()
{
  result = qword_100ADA990;
  if (!qword_100ADA990)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100ADA990);
  }

  return result;
}

uint64_t sub_1002BAD08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1002BAD68(uint64_t a1)
{
  v3 = *(sub_1001F1160(&qword_100ADA048, &unk_100817B50) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  sub_1002B9B58(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1002BADF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002BAE08(uint64_t a1)
{
  sub_1001F1160(&qword_100ADA048, &unk_100817B50);

  return sub_1002B9D8C(a1);
}

uint64_t sub_1002BAECC(uint64_t a1)
{
  v3 = *(sub_1001F1160(&unk_100ADA050, &qword_100833F70) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);

  return sub_1002B7C1C(a1, v1 + v4, v8, v9, v10, v11, v12);
}

uint64_t sub_1002BAFB0()
{
  v1 = *(v0 + 32);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = v1[2];
    v8 = v1[1];
    v9 = v3;
    v10 = v1[3];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = v8;
      v12 = v9;
      v13 = v10;
      sub_100017E74();
      v4 = swift_allocObject();
      swift_weakInit();
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      v6 = v9;
      *(v5 + 24) = v8;
      *(v5 + 40) = v6;
      *(v5 + 56) = v10;
      swift_unknownObjectRetain();
      sub_1002BB1A4(&v11, v7);
      sub_1002BB1A4(&v12, v7);
      sub_1002BB1A4(&v13, v7);

      sub_1007A2CD4();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1002BB12C()
{
  sub_10002B130(v0 + 16);
  swift_unknownObjectRelease();
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1002BB220()
{
  v1 = [*(v0[20] + 16) isPaidStorefront];
  v0[21] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1002BB35C;
  v2 = swift_continuation_init();
  v0[17] = sub_1001F1160(&qword_100AE6930, &qword_100817C68);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004B73D8;
  v0[13] = &unk_100A13490;
  v0[14] = v2;
  [v1 valueWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002BB35C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1002BB4F0;
  }

  else
  {
    v2 = sub_1002BB46C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002BB46C()
{
  v1 = *(v0 + 144);

  v2 = [v1 BOOLValue];
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1002BB4F0(uint64_t a1)
{
  v3 = v1[21];
  v2 = v1[22];
  swift_willThrow();

  v1[10] = v2;
  swift_errorRetain();
  sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
  sub_1002BB878();
  if (!swift_dynamicCast())
  {
    goto LABEL_11;
  }

  v4 = v1[18];
  v5 = [v4 domain];
  v6 = sub_1007A2254();
  v8 = v7;

  if (v6 == sub_1007A2254() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_1007A3AB4();

    if ((v11 & 1) == 0)
    {

      goto LABEL_11;
    }
  }

  v12 = [v4 code];

  if (v12 == 204)
  {

    v13 = v1[1];
    v14 = 1;
    goto LABEL_12;
  }

LABEL_11:

  v13 = v1[1];
  v14 = 0;
LABEL_12:

  return v13(v14);
}

uint64_t sub_1002BB6A0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1002BB6D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1002BB768;

  return sub_1002BB200();
}

uint64_t sub_1002BB768(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

unint64_t sub_1002BB878()
{
  result = qword_100ADA6D0;
  if (!qword_100ADA6D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100ADA6D0);
  }

  return result;
}

void *sub_1002BB8C4(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v4 = 0;
    v30 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = sub_1007A3784();
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = i;
      v9 = sub_100799574();
      v11 = *a2;
      if (*(*a2 + 16))
      {
        v12 = sub_1002EC958(v9, v10);
        v14 = v13;

        if (v14)
        {
          sub_1000077D8(*(v11 + 56) + 40 * v12, &v20, &unk_100AF1C40, &unk_100818DB0);
          v23[0] = v20;
          v23[1] = v21;
          v24 = v22;
          if (*(&v21 + 1))
          {
            sub_1001F1160(&qword_100ADA250, &unk_100823780);
            sub_1001F1160(&qword_100AEF3D0, &unk_100817F90);
            i = v8;
            if ((swift_dynamicCast() & 1) == 0)
            {
              v29 = 0;
              v28 = 0u;
              v27 = 0u;
            }

            goto LABEL_18;
          }

          sub_100007840(v23, &unk_100AF1C40, &unk_100818DB0);
        }
      }

      else
      {
      }

      i = v8;
      v27 = 0u;
      v28 = 0u;
      v29 = 0;
LABEL_18:
      sub_1007991D4();
      sub_100007840(&v27, &qword_100AE0AF0, &qword_100821420);

      if (v26)
      {
        sub_1000077C0(&v25, &v27);
        sub_1000077C0(&v27, &v25);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_10066ABE4(0, v30[2] + 1, 1, v30);
        }

        v16 = v30[2];
        v15 = v30[3];
        if (v16 >= v15 >> 1)
        {
          v30 = sub_10066ABE4((v15 > 1), v16 + 1, 1, v30);
        }

        v17 = v30;
        v30[2] = v16 + 1;
        sub_1000077C0(&v25, &v17[5 * v16 + 4]);
      }

      else
      {
        sub_100007840(&v25, &qword_100AEF240, &qword_100843810);
      }

      ++v4;
      if (v7 == i)
      {
        return v30;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1002BBBC8()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100ADA1B0);
  sub_100008B98(v0, qword_100ADA1B0);
  return sub_10079ACD4();
}

id sub_1002BBC44(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v5[OBJC_IVAR____TtC5Books16ContextAssetInfo_supportsReportConcernInJS] = 0;
  v11 = &v5[OBJC_IVAR____TtC5Books16ContextAssetInfo_shareableURLStringOverride];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC5Books16ContextAssetInfo_coverImageProvider;
  sub_100009864(a5, &v5[OBJC_IVAR____TtC5Books16ContextAssetInfo_coverImageProvider]);
  v13 = OBJC_IVAR____TtC5Books16ContextAssetInfo_libraryAssetProvider;
  sub_100009864(a4, &v5[OBJC_IVAR____TtC5Books16ContextAssetInfo_libraryAssetProvider]);
  if (a1)
  {
    sub_1000077D8(a2, &v31, &unk_100AF1C40, &unk_100818DB0);
    if (v32)
    {
      sub_1000077C0(&v31, v33);
      v14 = &v5[OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource];
      *v14 = a1;
      sub_1000077C0(v33, (v14 + 8));
      v14[48] = 2;
    }

    else
    {
      sub_100007840(&v31, &unk_100AF1C40, &unk_100818DB0);
      v17 = &v5[OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource];
      *v17 = a1;
      v17[48] = 1;
    }

    goto LABEL_7;
  }

  sub_1000077D8(a2, &v31, &unk_100AF1C40, &unk_100818DB0);
  if (v32)
  {
    sub_1000077C0(&v31, v33);
    v15 = &v5[OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource];
    sub_1000077C0(v33, &v5[OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource]);
    *(v15 + 5) = a3;
    v15[48] = 0;
    v16 = a3;
LABEL_7:
    v30.receiver = v5;
    v30.super_class = type metadata accessor for ContextAssetInfo();
    v18 = a1;
    v19 = objc_msgSendSuper2(&v30, "init");
    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 sharedInstance];
    *(swift_allocObject() + 16) = v21;
    v23 = v21;
    sub_1007A3304();

    sub_1000074E0(a5);
    sub_1000074E0(a4);
    sub_100007840(a2, &unk_100AF1C40, &unk_100818DB0);
    return v23;
  }

  v29 = v5;
  sub_100007840(&v31, &unk_100AF1C40, &unk_100818DB0);
  if (qword_100AD13B8 != -1)
  {
    swift_once();
  }

  v25 = sub_10079ACE4();
  sub_100008B98(v25, qword_100ADA1B0);
  v26 = sub_10079ACC4();
  v27 = sub_1007A29B4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Failed to instantiate because asset and libraryContent are nil", v28, 2u);
  }

  sub_1000074E0(a5);
  sub_1000074E0(a4);
  sub_100007840(a2, &unk_100AF1C40, &unk_100818DB0);
  sub_1000074E0(&v29[v12]);
  sub_1000074E0(&v29[v13]);

  type metadata accessor for ContextAssetInfo();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1002BBFE4(void *a1, uint64_t a2)
{
  v4 = sub_1007A2214();
  v5 = [a1 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [v5 toBool];

    *(a2 + OBJC_IVAR____TtC5Books16ContextAssetInfo_supportsReportConcernInJS) = v6;
  }

  else
  {
    __break(1u);
  }
}

id sub_1002BC0B4(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ContextAssetInfo();
  return objc_msgSendSuper2(&v3, "dealloc");
}

__n128 sub_1002BC188(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1002BC1A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002BC1E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002BC230(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1002BC268()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v5);
  if (v7)
  {
    v1 = *&v5[0];
    if (v7 != 1)
    {
      sub_1000074E0(v5 + 1);
    }

    v2 = sub_100799574();
  }

  else
  {

    sub_1000077C0(v5, v4);
    sub_10000E3E8(v4, v4[3]);
    v2 = sub_100799184();
    sub_1000074E0(v4);
  }

  return v2;
}

uint64_t sub_1002BC330()
{
  v45 = sub_100798F64();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v39 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1007992A4();
  v46 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100798E14();
  v47 = *(v50 - 8);
  __chkstk_darwin(v50);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100798E34();
  v49 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100ADA248, &unk_100817F80);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_100798E54();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100799224();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002C63A0(v52 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v55);
  if (v57)
  {
    v18 = *&v55[0];
    if (v57 != 1)
    {
      sub_1000074E0(v55 + 1);
    }

    sub_100799444();
    if (swift_dynamicCastClass())
    {
      v22 = sub_100799324();

      v23 = (v22 & 1) == 0;
      v24 = 2;
    }

    else
    {
      sub_1007994D4();
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      v25 = sub_100799474();

      v23 = (v25 & 1) == 0;
      v24 = 4;
    }

    if (v23)
    {
      return v24 + 1;
    }

    else
    {
      return v24;
    }
  }

  else
  {
    v42 = v15;
    v40 = v13;
    v52 = v11;
    v41 = v6;
    v19 = v50;
    v20 = v51;

    sub_1000077C0(v55, v54);
    sub_100009864(v54, v53);
    sub_1001F1160(&qword_100ADA250, &unk_100823780);
    if (swift_dynamicCast())
    {
      (*(v42 + 8))(v17, v14);
      sub_1000074E0(v54);
      return 3;
    }

    else
    {
      sub_100009864(v54, v53);
      v26 = v9;
      v27 = v10;
      v28 = swift_dynamicCast();
      v29 = v52;
      v30 = *(v52 + 56);
      if (v28)
      {
        v30(v26, 0, 1, v10);
        v31 = v40;
        (*(v29 + 32))(v40, v26, v27);
        v32 = v41;
        sub_100798E44();
        (*(v29 + 8))(v31, v27);
        sub_1000074E0(v54);
        v33 = v49;
        v34 = v4;
        v35 = (*(v49 + 88))(v32, v4);
        LODWORD(v31) = enum case for LibraryBookInfo.BookType.epub(_:);
        (*(v33 + 8))(v32, v34);
        if (v35 == v31)
        {
          return 2;
        }

        else
        {
          return 7;
        }
      }

      else
      {
        v30(v26, 1, 1, v10);
        sub_100007840(v26, &qword_100ADA248, &unk_100817F80);
        sub_100009864(v54, v53);
        if (swift_dynamicCast())
        {
          (*(v47 + 8))(v3, v19);
          sub_1000074E0(v54);
          return 4;
        }

        else
        {
          sub_100009864(v54, v53);
          v36 = v48;
          if (swift_dynamicCast())
          {
            (*(v46 + 8))(v36, v20);
            sub_1000074E0(v54);
            return 5;
          }

          else
          {
            sub_1000077C0(v54, v53);
            v37 = v44;
            v38 = v45;
            result = swift_dynamicCast();
            if (result)
            {
              (*(v43 + 8))(v37, v38);
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1002BCA68()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v10);
  if (v12)
  {
    v1 = *&v10[0];
    if (v12 != 1)
    {
      sub_1000074E0(v10 + 1);
    }

    sub_100799444();
    if (swift_dynamicCastClass())
    {
      v4 = sub_100799364();

      return v4;
    }
  }

  else
  {

    sub_1000077C0(v10, v9);
    sub_100009864(v9, v7);
    sub_1001F1160(&qword_100ADA250, &unk_100823780);
    sub_1001F1160(&qword_100AEF3D0, &unk_100817F90);
    if (swift_dynamicCast())
    {
      sub_1000077C0(v5, v8);
      sub_10000E3E8(v8, v8[3]);
      v2 = sub_100799094();
      sub_1000074E0(v9);
      sub_1000074E0(v8);
      return v2;
    }

    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_1000074E0(v9);
    sub_100007840(v5, &qword_100AE0AF0, &qword_100821420);
  }

  return 0;
}

uint64_t sub_1002BCBFC()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v14);
  if (v16)
  {
    v1 = *&v14[0];
    if (v16 != 1)
    {
      sub_1000074E0(v14 + 1);
    }

    sub_100799444();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      [v5 averageRating];
      v7 = v6;

      return v7;
    }

    goto LABEL_12;
  }

  sub_1000077C0(v14, v13);
  sub_100009864(v13, v11);
  sub_1001F1160(&qword_100ADA250, &unk_100823780);
  sub_1001F1160(&qword_100AEF3D0, &unk_100817F90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1000074E0(v13);
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_100007840(v9, &qword_100AE0AF0, &qword_100821420);
    goto LABEL_12;
  }

  sub_1000077C0(v9, v12);
  sub_10000E3E8(v12, v12[3]);
  v2 = sub_1007990A4();
  v4 = v3;
  sub_1000074E0(v13);
  if (v4)
  {
    sub_1000074E0(v12);
LABEL_12:
    *&result = 0.0;
    return result;
  }

  sub_1000074E0(v12);
  *&result = v2;
  return result;
}

uint64_t sub_1002BCDB0()
{
  v1[9] = v0;
  v2 = sub_100797214();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1002BCE70, 0, 0);
}

uint64_t sub_1002BCE70()
{
  v1 = (v0 + 16);
  sub_1002C63A0(*(v0 + 72) + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v0 + 16);
  if (!*(v0 + 64))
  {

LABEL_9:
    sub_1000074E0(v1);
    v17 = objc_opt_self();
    sub_1002BC268();
    v18 = sub_1007A2214();

    CGSizeScaleToScreen();
    v2 = [v17 fetchImageForAssetID:v18 size:0 includeSpine:0 coverEffectsEnvironment:?];

    v19 = [v2 CGImage];
    v3 = [objc_allocWithZone(UIImage) initWithCGImage:v19];

    goto LABEL_10;
  }

  if (*(v0 + 64) != 1)
  {

    v1 = (v0 + 24);
    goto LABEL_9;
  }

  v2 = *(v0 + 16);
  *(v0 + 104) = v2;
  sub_100799444();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v6 = *(v0 + 80);
    v7 = (*(v0 + 72) + OBJC_IVAR____TtC5Books16ContextAssetInfo_coverImageProvider);
    v8 = v7[3];
    v9 = v7[4];
    sub_10000E3E8(v7, v8);
    (*(v5 + 104))(v4, enum case for MenuCoverImageSource.network(_:), v6);
    v10 = kAEAssetActivityItemProviderDefaultCoverSize[0];
    v11 = kAEAssetActivityItemProviderDefaultCoverSize[1];
    v12 = v2;
    v13 = swift_task_alloc();
    *(v0 + 112) = v13;
    *v13 = v0;
    v13[1] = sub_1002BD104;
    v14 = *(v0 + 96);
    v15.n128_f64[0] = v10;
    v16.n128_f64[0] = v11;

    return dispatch thunk of MenuCoverImageProviding.image(for:from:size:includeSpine:)(v3, v14, 1, v8, v9, v15, v16);
  }

LABEL_10:

  v20 = *(v0 + 8);

  return v20(v3);
}

uint64_t sub_1002BD104(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 120) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1002BD264, 0, 0);
}

uint64_t sub_1002BD264()
{
  v1 = v0[13];

  v2 = v0[15];

  v3 = v0[1];

  return v3(v2);
}

id sub_1002BD2D8()
{
  v1 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = [objc_allocWithZone(BCMutableFutureValue) init];
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &aBlock);
  if (!v27)
  {

    p_aBlock = &aBlock;
LABEL_7:
    sub_1000074E0(p_aBlock);
    v13 = objc_opt_self();
    sub_1002BC268();
    v14 = sub_1007A2214();

    CGSizeScaleToScreen();
    v16 = v15;
    v18 = v17;
    v19 = swift_allocObject();
    v19[2] = v4;
    v25[3] = sub_1002C7200;
    v26 = v19;
    aBlock = _NSConcreteStackBlock;
    v25[0] = 1107296256;
    v25[1] = sub_100201C54;
    v25[2] = &unk_100A13680;
    v20 = _Block_copy(&aBlock);
    v21 = v4;

    [v13 fetchImageForAssetID:v14 size:0 includeSpine:0 includeShadow:0 coverEffectsEnvironment:v20 completion:{v16, v18}];
    _Block_release(v20);

    return v4;
  }

  if (v27 != 1)
  {

    p_aBlock = v25;
    goto LABEL_7;
  }

  v5 = aBlock;
  sub_100799444();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = sub_1007A2744();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v0;
    v9[5] = v7;
    v9[6] = v4;
    v10 = v4;
    v11 = v0;
    sub_1003457A0(0, 0, v3, &unk_100817FE0, v9);
  }

  else
  {

    return 0;
  }

  return v4;
}

uint64_t sub_1002BD598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_100797214();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_1002BD65C, 0, 0);
}

uint64_t sub_1002BD65C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = (v0[2] + OBJC_IVAR____TtC5Books16ContextAssetInfo_coverImageProvider);
  v5 = v4[3];
  v6 = v4[4];
  sub_10000E3E8(v4, v5);
  (*(v2 + 104))(v1, enum case for MenuCoverImageSource.coverCache(_:), v3);
  v7 = kAEAssetActivityItemProviderDefaultCoverSize[0];
  v8 = kAEAssetActivityItemProviderDefaultCoverSize[1];
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_1002BD780;
  v10 = v0[7];
  v11 = v0[3];
  v12.n128_f64[0] = v7;
  v13.n128_f64[0] = v8;

  return dispatch thunk of MenuCoverImageProviding.image(for:from:size:includeSpine:)(v11, v10, 1, v5, v6, v12, v13);
}

uint64_t sub_1002BD780(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 72) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1002BD8E0, 0, 0);
}

uint64_t sub_1002BD8E0()
{
  v1 = *(v0 + 72);
  [*(v0 + 32) set:v1 error:0];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002BD964(void *a1, void *a2)
{
  v4 = sub_1007A1C54();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1007A1CA4();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v10 = sub_1007A2D74();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1002C7208;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A136D0;
  v12 = _Block_copy(aBlock);
  v13 = a2;
  v14 = a1;

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1002C7210(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v12);

  (*(v17 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v16);
}

void sub_1002BDC60(void *a1, id a2)
{
  v3 = [a2 CGImage];
  v4 = [objc_allocWithZone(UIImage) initWithCGImage:v3];

  [a1 set:v4 error:0];
}

uint64_t sub_1002BDCF8()
{
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v33 - v6;
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v34);
  if (v36)
  {
    v15 = v34;
    if (v36 != 1)
    {
      sub_1000074E0(v35);
    }

    sub_100799444();
    v21 = swift_dynamicCastClass();
    if (v21 && (v22 = [v21 editionKind]) != 0)
    {
      v23 = v22;
      v24 = sub_1007A2254();
    }

    else
    {

      sub_1002BC330();
      if (sub_1007972D4())
      {
        sub_1007A2154();
        sub_100796C94();
        (*(v9 + 16))(v11, v14, v8);
        type metadata accessor for BundleFinder();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v26 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
        (*(v2 + 16))(v4, v7, v1);
        v27 = sub_1007A22D4(v11, 0, 0, v26, v4, "Context Menu: audiobook edition kind", 36, 2);
      }

      else
      {
        sub_1007A2154();
        sub_100796C94();
        (*(v9 + 16))(v11, v14, v8);
        type metadata accessor for BundleFinder();
        v28 = swift_getObjCClassFromMetadata();
        v29 = [objc_opt_self() bundleForClass:v28];
        (*(v2 + 16))(v4, v7, v1);
        v27 = sub_1007A22D4(v11, 0, 0, v29, v4, "Context Menu: book edition kind", 31, 2);
      }

      v24 = v27;
      (*(v2 + 8))(v7, v1);
      (*(v9 + 8))(v14, v8);
    }
  }

  else
  {

    sub_1002BC330();
    v16 = (v9 + 16);
    v17 = (v2 + 16);
    if (sub_1007972D4())
    {
      sub_1007A2154();
      sub_100796C94();
      (*v16)(v11, v14, v8);
      type metadata accessor for BundleFinder();
      v18 = swift_getObjCClassFromMetadata();
      v19 = [objc_opt_self() bundleForClass:v18];
      (*v17)(v4, v7, v1);
      v20 = sub_1007A22D4(v11, 0, 0, v19, v4, "Context Menu: audiobook edition kind", 36, 2);
    }

    else
    {
      sub_1007A2154();
      sub_100796C94();
      (*v16)(v11, v14, v8);
      type metadata accessor for BundleFinder();
      v30 = swift_getObjCClassFromMetadata();
      v31 = [objc_opt_self() bundleForClass:v30];
      (*v17)(v4, v7, v1);
      v20 = sub_1007A22D4(v11, 0, 0, v31, v4, "Context Menu: book edition kind", 31, 2);
    }

    v24 = v20;
    (*(v2 + 8))(v7, v1);
    (*(v9 + 8))(v14, v8);
    sub_1000074E0(&v34);
  }

  return v24;
}

uint64_t sub_1002BE294(double a1)
{
  v2 = sub_100798E34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&qword_100ADA248, &unk_100817F80);
  __chkstk_darwin(v6 - 8);
  v8 = &v18[-1] - v7;
  v9 = sub_100798E54();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002C63A0(v1 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v17);
  if (v19)
  {
    if (v19 == 1)
    {
      sub_1002C63D8(&v17);
      return 0;
    }

    v13 = v18;
  }

  else
  {

    v13 = &v17;
  }

  sub_1000077C0(v13, v20);
  sub_1000077C0(v20, &v17);
  sub_1001F1160(&qword_100ADA250, &unk_100823780);
  v14 = swift_dynamicCast();
  v15 = *(v10 + 56);
  if (v14)
  {
    v15(v8, 0, 1, v9);
    (*(v10 + 32))(v12, v8, v9);
    sub_100798E44();
    (*(v10 + 8))(v12, v9);
    if ((*(v3 + 88))(v5, v2) == enum case for LibraryBookInfo.BookType.epub(_:))
    {
      (*(v3 + 96))(v5, v2);
      return *v5;
    }

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v15(v8, 1, 1, v9);
    sub_100007840(v8, &qword_100ADA248, &unk_100817F80);
  }

  return 0;
}

void sub_1002BE5B0()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &aBlock);
  if (v13)
  {
    v1 = aBlock;
    if (v13 != 1)
    {
      sub_1000074E0(v11);
    }

    sub_100799444();
    if (swift_dynamicCastClass() && (v2 = sub_1007993B4()) != 0)
    {
      v3 = v2;
      v9 = _swiftEmptyArrayStorage;
      v4 = [objc_opt_self() defaultManager];
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = &v9;
      v6 = swift_allocObject();
      v6[2] = sub_1002C70B0;
      v6[3] = v5;
      v11[3] = sub_1002C70B8;
      v12 = v6;
      aBlock = _NSConcreteStackBlock;
      v11[0] = 1107296256;
      v11[1] = sub_1004091A8;
      v11[2] = &unk_100A13608;
      v7 = _Block_copy(&aBlock);

      [v4 performBlockInUIContext:v7];

      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {

    sub_1000074E0(&aBlock);
  }
}

void sub_1002BE7C8(void *a1, unint64_t isUniquelyReferenced_nonNull_native, unint64_t a3)
{
  v66 = sub_1007974F4();
  v6 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_45;
  }

  v8 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v58 = a3;
  v59 = isUniquelyReferenced_nonNull_native;
  if (v8)
  {
    *&v68 = _swiftEmptyArrayStorage;
    sub_1003BD0CC(0, v8 & ~(v8 >> 63), 0);
    if (v8 < 0)
    {
      __break(1u);
LABEL_49:
      sub_1001F1160(&qword_100AD4F30, &unk_100816940);
      sub_1007A3B24();
      __break(1u);
      return;
    }

    v63 = a1;
    v64 = v6;
    v9 = v68;
    if ((isUniquelyReferenced_nonNull_native & 0xC000000000000001) != 0)
    {
      v10 = 0;
      do
      {
        sub_1007A3784();
        *&v71[0] = sub_100799574();
        *(&v71[0] + 1) = v11;
        v12 = sub_1007A24A4();
        v14 = v13;
        swift_unknownObjectRelease();
        *&v68 = v9;
        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        isUniquelyReferenced_nonNull_native = v16 + 1;
        if (v16 >= v15 >> 1)
        {
          sub_1003BD0CC((v15 > 1), v16 + 1, 1);
          v9 = v68;
        }

        ++v10;
        *(v9 + 16) = isUniquelyReferenced_nonNull_native;
        v17 = v9 + 16 * v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = v14;
      }

      while (v8 != v10);
    }

    else
    {
      v18 = (isUniquelyReferenced_nonNull_native + 32);
      do
      {
        v19 = *v18;
        *&v71[0] = sub_100799574();
        *(&v71[0] + 1) = v20;
        v21 = sub_1007A24A4();
        v23 = v22;

        *&v68 = v9;
        v25 = *(v9 + 16);
        v24 = *(v9 + 24);
        isUniquelyReferenced_nonNull_native = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          sub_1003BD0CC((v24 > 1), v25 + 1, 1);
          v9 = v68;
        }

        *(v9 + 16) = isUniquelyReferenced_nonNull_native;
        v26 = v9 + 16 * v25;
        *(v26 + 32) = v21;
        *(v26 + 40) = v23;
        ++v18;
        --v8;
      }

      while (v8);
    }

    a1 = v63;
    v6 = v64;
  }

  v27 = [objc_opt_self() defaultManager];
  isa = sub_1007A25D4().super.isa;

  a3 = [v27 libraryAssetsWithAssetIDs:isa inManagedObjectContext:a1];

  sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
  v29 = sub_1007A25E4();

  sub_100580C48(_swiftEmptyDictionarySingleton);
  v31 = v30;
  if (v29 >> 62)
  {
    v32 = sub_1007A38D4();
    if (v32)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v32 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
LABEL_19:
      v33 = 0;
      v63 = (v29 & 0xFFFFFFFFFFFFFF8);
      v64 = v29 & 0xC000000000000001;
      v61 = v29;
      v62 = (v6 + 8);
      v60 = v32;
      do
      {
        if (v64)
        {
          v34 = sub_1007A3784();
        }

        else
        {
          if (v33 >= v63[2])
          {
            goto LABEL_42;
          }

          v34 = *(v29 + 8 * v33 + 32);
        }

        a1 = v34;
        v6 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          v8 = sub_1007A38D4();
          goto LABEL_3;
        }

        v35 = [v34 assetID];
        if (v35)
        {
          v36 = v35;
          v37 = sub_1007A2254();
          v39 = v38;
        }

        else
        {
          v37 = 0;
          v39 = 0;
        }

        *&v71[0] = _swiftEmptyArrayStorage;
        sub_1002C7210(&qword_100ADA290, &type metadata accessor for ContentInfoBuildOptions, &protocol conformance descriptor for ContentInfoBuildOptions);
        sub_1001F1160(&unk_100AF1C30, &qword_10083CDB0);
        sub_100005920(&qword_100ADA298, &unk_100AF1C30, &qword_10083CDB0, &protocol conformance descriptor for [A]);
        v41 = v65;
        v40 = v66;
        sub_1007A3594();
        BKLibraryAsset.contentInfo(options:)(v41, v71);
        (*v62)(v41, v40);
        v68 = v71[0];
        v69 = v71[1];
        v70 = v72;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = v31;
        a3 = sub_1002EC958(v37, v39);
        v43 = v31[2];
        v44 = (v42 & 1) == 0;
        v45 = v43 + v44;
        if (__OFADD__(v43, v44))
        {
          goto LABEL_43;
        }

        v46 = v42;
        if (v31[3] >= v45)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v42)
            {
              goto LABEL_20;
            }
          }

          else
          {
            sub_1002F1044();
            if (v46)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
          sub_1003D4444(v45, isUniquelyReferenced_nonNull_native);
          v47 = sub_1002EC958(v37, v39);
          if ((v46 & 1) != (v48 & 1))
          {
            goto LABEL_49;
          }

          a3 = v47;
          if (v46)
          {
LABEL_20:

            v31 = v67;
            sub_1002C70C8(&v68, v67[7] + 40 * a3);

            goto LABEL_21;
          }
        }

        v31 = v67;
        v67[(a3 >> 6) + 8] |= 1 << a3;
        v49 = (v31[6] + 16 * a3);
        *v49 = v37;
        v49[1] = v39;
        v50 = v31[7] + 40 * a3;
        v51 = v70;
        v52 = v69;
        *v50 = v68;
        *(v50 + 16) = v52;
        *(v50 + 32) = v51;

        v53 = v31[2];
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          goto LABEL_44;
        }

        v31[2] = v55;
LABEL_21:
        ++v33;
        v29 = v61;
      }

      while (v6 != v60);
    }
  }

  *&v71[0] = v31;
  v56 = sub_1002BB8C4(v59, v71);
  *v58 = v56;
}

uint64_t sub_1002BEE3C()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v14);
  if (v16)
  {
    v1 = *&v14[0];
    if (v16 != 1)
    {
      sub_1000074E0(v14 + 1);
    }

    sub_100799444();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = [v4 genreName];
      if (v5)
      {
        v6 = v5;
        v7 = sub_1007A2254();

        return v7;
      }
    }

    return 0;
  }

  sub_1000077C0(v14, v13);
  sub_100009864(v13, v11);
  sub_1001F1160(&qword_100ADA250, &unk_100823780);
  sub_1001F1160(&qword_100AEF3D0, &unk_100817F90);
  if (!swift_dynamicCast())
  {
    sub_1000074E0(v13);
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_100007840(v9, &qword_100AE0AF0, &qword_100821420);
    return 0;
  }

  sub_1000077C0(v9, v12);
  sub_10000E3E8(v12, v12[3]);
  v2 = sub_100799164();
  if (!v2)
  {
    goto LABEL_16;
  }

  if (!*(v2 + 16))
  {

LABEL_16:
    v3 = 0;
    goto LABEL_17;
  }

  v3 = *(v2 + 32);

LABEL_17:
  sub_1000074E0(v13);
  sub_1000074E0(v12);
  return v3;
}

uint64_t sub_1002BF024()
{
  v1 = sub_1001F1160(&qword_100ADA258, &unk_100817FA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17[-1] - v2;
  v4 = sub_100799224();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v19);
  if (v21)
  {
    v8 = *&v19[0];
    if (v21 != 1)
    {
      sub_1000074E0(v19 + 1);
    }

    sub_100799444();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = [v14 hasSupplementalContent];

      return v15;
    }

    return 2;
  }

  sub_1000077C0(v19, v18);
  sub_100009864(v18, v17);
  sub_1001F1160(&qword_100ADA250, &unk_100823780);
  v9 = swift_dynamicCast();
  v10 = *(v5 + 56);
  if (v9)
  {
    v10(v3, 0, 1, v4);
    (*(v5 + 32))(v7, v3, v4);
    v11 = sub_100799204();
    if (v11)
    {
      v17[0] = v11;
      sub_1001F1160(&qword_100ADA280, &qword_100817FD0);
      sub_100005920(&qword_100ADA288, &qword_100ADA280, &qword_100817FD0, &protocol conformance descriptor for [A]);
      v12 = sub_1007A28A4();
      (*(v5 + 8))(v7, v4);
      sub_1000074E0(v18);

      return v12 & 1;
    }

    (*(v5 + 8))(v7, v4);
    sub_1000074E0(v18);
    return 2;
  }

  v10(v3, 1, 1, v4);
  sub_1000074E0(v18);
  sub_100007840(v3, &qword_100ADA258, &unk_100817FA0);
  return 0;
}

uint64_t sub_1002BF338()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v9);
  if (!v11)
  {

    v4 = &v9;
    goto LABEL_9;
  }

  if (v11 != 1)
  {

    v4 = v10;
LABEL_9:
    sub_1000077C0(v4, v12);
    sub_1000077C0(v12, v8);
    sub_1001F1160(&qword_100ADA250, &unk_100823780);
    sub_1001F1160(&qword_100AEF3D0, &unk_100817F90);
    if (swift_dynamicCast())
    {
      sub_1000077C0(v6, &v9);
      sub_10000E3E8(&v9, v10[2]);
      v3 = sub_100799014();
      sub_1000074E0(&v9);
    }

    else
    {
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_100007840(v6, &qword_100AE0AF0, &qword_100821420);
      v3 = 0;
    }

    return v3 & 1;
  }

  v1 = v9;
  sub_100799444();
  v2 = swift_dynamicCastClass();
  if (v2 || (sub_1007994D4(), (v2 = swift_dynamicCastClass()) != 0))
  {
    v3 = [v2 isExplicit];
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1002BF4BC()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v9);
  if (v11)
  {
    if (v11 == 1)
    {
      sub_1002C63D8(&v9);
      return 2;
    }

    v2 = v10;
  }

  else
  {

    v2 = &v9;
  }

  sub_1000077C0(v2, v12);
  sub_1002BC330();
  if (sub_1007972D4() & 1) != 0 || (sub_1002BC330(), (sub_1007972D4()))
  {
    v1 = 0;
  }

  else
  {
    sub_10000E3E8(v12, v12[3]);
    v4 = sub_100799174();
    if (v4)
    {
      v5 = v4;
      v9 = sub_1007A2254();
      v10[0] = v6;
      __chkstk_darwin(v9);
      v8[2] = &v9;
      v7 = sub_100580218(sub_1002C7058, v8, v5);

      v1 = v7 & 1;
    }

    else
    {
      v1 = 2;
    }
  }

  sub_1000074E0(v12);
  return v1;
}

uint64_t sub_1002BF628()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v7);
  if (v9)
  {
    if (v9 == 1)
    {
      sub_1002C63D8(&v7);
      return 0;
    }

    v2 = v8;
  }

  else
  {

    v2 = &v7;
  }

  sub_1000077C0(v2, v10);
  sub_1000077C0(v10, v6);
  sub_1001F1160(&qword_100ADA250, &unk_100823780);
  sub_1001F1160(&qword_100AEF3D0, &unk_100817F90);
  if (swift_dynamicCast())
  {
    sub_1000077C0(v4, &v7);
    sub_10000E3E8(&v7, v8[2]);
    v3 = sub_1007990B4() & 1;
    sub_1000074E0(&v7);
    return v3;
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    sub_100007840(v4, &qword_100AE0AF0, &qword_100821420);
    return 2;
  }
}

uint64_t sub_1002BF784(uint64_t (*a1)(uint64_t, uint64_t))
{
  sub_1002C63A0(v1 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v11);
  if (v16)
  {
    if (v16 == 1)
    {
      sub_1002C63D8(&v11);
      return 2;
    }

    v3 = &v12;
  }

  else
  {

    v3 = &v11;
  }

  sub_1000077C0(v3, v17);
  sub_1000077C0(v17, v10);
  sub_1001F1160(&qword_100ADA250, &unk_100823780);
  sub_1001F1160(&qword_100AEF3D0, &unk_100817F90);
  if (swift_dynamicCast())
  {
    sub_1000077C0(v8, &v11);
    v4 = v13;
    v5 = v14;
    sub_10000E3E8(&v11, v13);
    v6 = a1(v4, v5) & 1;
    sub_1000074E0(&v11);
    return v6;
  }

  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_100007840(v8, &qword_100AE0AF0, &qword_100821420);
  return 2;
}

uint64_t sub_1002BF8CC()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v8);
  if (v12)
  {
    if (v12 == 1)
    {
      sub_1002C63D8(&v8);
      return 2;
    }

    v1 = &v9;
  }

  else
  {

    v1 = &v8;
  }

  sub_1000077C0(v1, v13);
  sub_1000077C0(v13, v7);
  sub_1001F1160(&qword_100ADA250, &unk_100823780);
  sub_1001F1160(&qword_100AEF3D0, &unk_100817F90);
  if (!swift_dynamicCast())
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_100007840(v5, &qword_100AE0AF0, &qword_100821420);
    return 2;
  }

  sub_1000077C0(v5, &v8);
  sub_10000E3E8(&v8, v10);
  if (sub_100799034())
  {
    v2 = 1;
  }

  else
  {
    sub_10000E3E8(&v8, v10);
    v2 = sub_100799064();
  }

  v4 = v2 & 1;
  sub_1000074E0(&v8);
  return v4;
}

uint64_t sub_1002BFA38(uint64_t (*a1)(uint64_t, uint64_t))
{
  sub_1002C63A0(v1 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v11);
  if (v16)
  {
    if (v16 == 1)
    {
      sub_1002C63D8(&v11);
LABEL_9:
      v6 = 0;
      return v6 & 1;
    }

    v3 = &v12;
  }

  else
  {

    v3 = &v11;
  }

  sub_1000077C0(v3, v17);
  sub_1000077C0(v17, v10);
  sub_1001F1160(&qword_100ADA250, &unk_100823780);
  sub_1001F1160(&qword_100AEF3D0, &unk_100817F90);
  if (!swift_dynamicCast())
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_100007840(v8, &qword_100AE0AF0, &qword_100821420);
    goto LABEL_9;
  }

  sub_1000077C0(v8, &v11);
  v4 = v13;
  v5 = v14;
  sub_10000E3E8(&v11, v13);
  v6 = a1(v4, v5);
  sub_1000074E0(&v11);
  return v6 & 1;
}

BOOL sub_1002BFB80()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v6);
  if (v8)
  {
    v1 = *&v6[0];
    if (v8 != 1)
    {
      sub_1000074E0(v6 + 1);
    }

    sub_1007994D4();
    v2 = swift_dynamicCastClass() != 0;
  }

  else
  {

    sub_1000077C0(v6, v5);
    sub_1001F1160(&qword_100ADA250, &unk_100823780);
    sub_1001F1160(&qword_100ADA278, &unk_100817FC0);
    if (swift_dynamicCast())
    {
      sub_1000074E0(v4);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_1002BFC78()
{
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v17);
  if (v19)
  {
    if (v19 == 1)
    {
      v5 = v17;
      sub_100799444();
      if (swift_dynamicCastClass())
      {
        sub_100799404();
        if (v6)
        {
          sub_100796C94();
          v7.super.isa = sub_100796C64().super.isa;
          (*(v2 + 8))(v4, v1);
          v8 = sub_1007A2214();

          v9 = [(objc_class *)v7.super.isa displayNameForKey:NSLocaleLanguageCode value:v8];

          if (v9)
          {
            v10 = sub_1007A2254();

            return v10;
          }
        }
      }

      return 0;
    }

    v12 = v18;
  }

  else
  {

    v12 = &v17;
  }

  sub_1000077C0(v12, v20);
  sub_1000077C0(v20, v16);
  sub_1001F1160(&qword_100ADA250, &unk_100823780);
  sub_1001F1160(&qword_100AEF3D0, &unk_100817F90);
  if (swift_dynamicCast())
  {
    sub_1000077C0(v14, &v17);
    sub_10000E3E8(&v17, v18[2]);
    v13 = sub_1007990D4();
    sub_1000074E0(&v17);
    return v13;
  }

  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_100007840(v14, &qword_100AE0AF0, &qword_100821420);
  return 0;
}

uint64_t sub_1002BFF20()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v7);
  if (v9)
  {
    v1 = v7;
    if (v9 != 1)
    {
      sub_1000074E0(v8);
    }

    sub_100799444();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = [v2 offer];
      if (v3)
      {
        v4 = v3;
        v5 = sub_1007A2044();

        return v5;
      }
    }
  }

  else
  {

    sub_1000074E0(&v7);
  }

  return 0;
}

void sub_1002C000C(uint64_t a1@<X8>)
{
  sub_1002C63A0(v1 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v6);
  if (v8)
  {
    v3 = v6;
    if (v8 != 1)
    {
      sub_1000074E0(v7);
    }

    sub_100799444();
    if (swift_dynamicCastClass())
    {
      sub_100799434();
    }

    else
    {

      v5 = sub_100799424();
      (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
    }
  }

  else
  {

    v4 = sub_100799424();
    (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
    sub_1000074E0(&v6);
  }
}

uint64_t sub_1002C013C()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v7);
  if (v9)
  {
    if (v9 == 1)
    {
      sub_1002C63D8(&v7);
      return 0;
    }

    v1 = v8;
  }

  else
  {

    v1 = &v7;
  }

  sub_1000077C0(v1, v10);
  sub_1000077C0(v10, v6);
  sub_1001F1160(&qword_100ADA250, &unk_100823780);
  sub_1001F1160(&qword_100AEF3D0, &unk_100817F90);
  if (swift_dynamicCast())
  {
    sub_1000077C0(v4, &v7);
    sub_10000E3E8(&v7, v8[2]);
    v2 = sub_1007990C4();
    sub_1000074E0(&v7);
    return v2;
  }

  v5 = 0;
  memset(v4, 0, sizeof(v4));
  sub_100007840(v4, &qword_100AE0AF0, &qword_100821420);
  return 0;
}

uint64_t sub_1002C0288@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v37 = sub_100796D84();
  v2 = *(v37 - 8);
  __chkstk_darwin(v37);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100796DA4();
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = sub_100796BB4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  sub_1002C63A0(v1 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v46);
  if (v48)
  {
    v20 = *&v46[0];
    if (v48 != 1)
    {
      sub_1000074E0(v46 + 1);
    }

    sub_100799444();
    v21 = swift_dynamicCastClass();
    if (v21)
    {
      v22 = [v21 releaseDate];
      if (v22)
      {
        v23 = v22;
        sub_100796B64();

        (*(v11 + 32))(v16, v13, v10);
        v24 = v6;
        sub_100796D64();
        v25 = v37;
        (*(v2 + 104))(v4, enum case for Calendar.Component.year(_:), v37);
        v26 = sub_100796D94();
        (*(v2 + 8))(v4, v25);
        (*(v38 + 8))(v24, v39);
        *&v46[0] = v26;
        sub_1007A3A74();
        (*(v11 + 8))(v16, v10);
      }

      sub_100799374();
      v29 = v40;
      sub_1007977C4();

      v30 = sub_1007977D4();
      return (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
    }

    else
    {

      v27 = sub_1007977D4();
      return (*(*(v27 - 8) + 56))(v40, 1, 1, v27);
    }
  }

  else
  {

    sub_1000077C0(v46, v45);
    sub_100009864(v45, v43);
    sub_1001F1160(&qword_100ADA250, &unk_100823780);
    sub_1001F1160(&qword_100AEF3D0, &unk_100817F90);
    if (swift_dynamicCast())
    {
      sub_1000077C0(v41, v44);
      sub_10000E3E8(v44, v44[3]);
      sub_100799044();
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {
        sub_100007840(v9, &unk_100ADB5C0, &unk_100816880);
      }

      else
      {
        (*(v11 + 32))(v19, v9, v10);
        sub_100796D64();
        v31 = v2;
        v32 = *(v2 + 104);
        v33 = v37;
        v32(v4, enum case for Calendar.Component.year(_:), v37);
        v34 = sub_100796D94();
        (*(v31 + 8))(v4, v33);
        (*(v38 + 8))(v6, v39);
        v43[0] = v34;
        sub_1007A3A74();
        (*(v11 + 8))(v19, v10);
      }

      sub_1000074E0(v44);
    }

    else
    {
      v42 = 0;
      memset(v41, 0, sizeof(v41));
      sub_100007840(v41, &qword_100AE0AF0, &qword_100821420);
    }

    v35 = v40;
    sub_1007977C4();
    sub_1000074E0(v45);
    v36 = sub_1007977D4();
    return (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  }
}

uint64_t sub_1002C0964@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  __chkstk_darwin(v3 - 8);
  v5 = &v43[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v6);
  v8 = &v43[-v7 - 8];
  __chkstk_darwin(v9);
  v11 = &v43[-v10 - 8];
  __chkstk_darwin(v12);
  v14 = &v43[-v13 - 8];
  v15 = sub_100799224();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v43[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1002BC330();
  v19 = sub_1007972D4();
  sub_1002C63A0(v1 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v45);
  if (!v47)
  {
    v21 = v46;
    sub_1000077C0(v45, v44);
    sub_100009864(v44, v43);
    sub_1001F1160(&qword_100ADA250, &unk_100823780);
    if (swift_dynamicCast())
    {
      (*(v16 + 8))(v18, v15);
      if (v21)
      {
        v22 = [v21 audiobookSampleURL];
        if (v22)
        {
          v23 = v22;
          sub_100796974();

          v24 = 0;
          v21 = v23;
        }

        else
        {
          v24 = 1;
        }

        sub_1000074E0(v44);
        v40 = sub_1007969B4();
        (*(*(v40 - 8) + 56))(v14, v24, 1, v40);
        v38 = v14;
        return sub_100008EF8(v38, a1);
      }
    }

    else if (v21)
    {
      v32 = [v21 bookSampleDownloadURL];
      if (v32)
      {
        v33 = v32;
        sub_100796974();

        v34 = 0;
        v21 = v33;
      }

      else
      {
        v34 = 1;
      }

      sub_1000074E0(v44);
      v41 = sub_1007969B4();
      (*(*(v41 - 8) + 56))(v11, v34, 1, v41);
      v38 = v11;
      return sub_100008EF8(v38, a1);
    }

    sub_1000074E0(v44);
LABEL_20:
    v35 = sub_1007969B4();
    return (*(*(v35 - 8) + 56))(a1, 1, 1, v35);
  }

  v20 = *&v45[0];
  if (v47 != 1)
  {
    sub_1000074E0(v45 + 1);
  }

  sub_100799444();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {

    goto LABEL_20;
  }

  if (v19)
  {
    v26 = [v25 previewURL];
    if (v26)
    {
      v27 = v26;
      sub_100796974();

      v28 = 0;
      v20 = v27;
    }

    else
    {
      v28 = 1;
    }

    v37 = sub_1007969B4();
    (*(*(v37 - 8) + 56))(v8, v28, 1, v37);
    v38 = v8;
  }

  else
  {
    v29 = [v25 bookSampleDownloadURL];
    if (v29)
    {
      v30 = v29;
      sub_100796974();

      v31 = 0;
      v20 = v30;
    }

    else
    {
      v31 = 1;
    }

    v39 = sub_1007969B4();
    (*(*(v39 - 8) + 56))(v5, v31, 1, v39);
    v38 = v5;
  }

  return sub_100008EF8(v38, a1);
}

uint64_t sub_1002C0E28()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v9);
  if (v11)
  {
    v1 = v9;
    if (v11 != 1)
    {
      sub_1000074E0(v10);
    }

    sub_100799444();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = [v5 seriesName];
      if (v6)
      {
        v7 = v6;
        v4 = sub_1007A2254();

LABEL_11:
        return v4;
      }
    }

    else
    {
      sub_1007994D4();
      if (swift_dynamicCastClass())
      {
        v4 = sub_1007994A4();
        goto LABEL_11;
      }
    }

    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_libraryAssetProvider + 32);
  sub_10000E3E8((v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_libraryAssetProvider), *(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_libraryAssetProvider + 24));
  v3 = sub_1002BC268();
  v4 = (*(v2 + 40))(v3);

  sub_1000074E0(&v9);
  return v4;
}

uint64_t sub_1002C0F88()
{
  v1 = sub_1007969B4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  __chkstk_darwin(v5 - 8);
  v7 = v11 - v6;
  if (*(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_shareableURLStringOverride + 8))
  {
    v8 = *(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_shareableURLStringOverride);
  }

  else
  {
    sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v12);
    if (v14)
    {
      v9 = *&v12[0];
      if (v14 != 1)
      {
        sub_1000074E0(v12 + 1);
      }

      sub_100799444();
      if (swift_dynamicCastClass())
      {
        sub_1007993C4();
      }

      else
      {
        sub_1007994D4();
        if (!swift_dynamicCastClass())
        {

          v8 = 0;
          goto LABEL_17;
        }

        sub_100799494();
      }

      v8 = sub_100796914();

      (*(v2 + 8))(v4, v1);
    }

    else
    {

      sub_1000077C0(v12, v11);
      sub_10000E3E8(v11, v11[3]);
      sub_100799194();
      if ((*(v2 + 48))(v7, 1, v1) == 1)
      {
        sub_100007840(v7, &unk_100AD5AC0, &unk_100811090);
        v8 = 0;
      }

      else
      {
        v8 = sub_100796914();
        (*(v2 + 8))(v7, v1);
      }

      sub_1000074E0(v11);
    }
  }

LABEL_17:

  return v8;
}

uint64_t sub_1002C1230()
{
  v1 = sub_1007969B4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007992A4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100799224();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1002C0F88();
  if (!v14)
  {
    sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v41);
    if (v43)
    {
      v15 = *&v41[0];
      if (v43 != 1)
      {
        sub_1000074E0(v41 + 1);
      }

      sub_100799444();
      if (swift_dynamicCastClass())
      {
        sub_1007993C4();
LABEL_18:
        v31 = sub_100796914();

        (*(v2 + 8))(v4, v1);
        return v31;
      }

      sub_1007994D4();
      if (swift_dynamicCastClass())
      {
        sub_100799494();
        goto LABEL_18;
      }

      return 0;
    }

    v36 = v10;

    sub_1000077C0(v41, v40);
    if (qword_100AD13B8 != -1)
    {
      swift_once();
    }

    v16 = sub_10079ACE4();
    sub_100008B98(v16, qword_100ADA1B0);
    v17 = v0;
    v18 = sub_10079ACC4();
    v19 = sub_1007A29B4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35 = v6;
      v22 = v21;
      v38 = v21;
      *v20 = 136315138;
      v23 = sub_1002BC268();
      v25 = sub_1000070F4(v23, v24, &v38);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Unable to locate cached share URL for %s. Attempting fallback url.", v20, 0xCu);
      sub_1000074E0(v22);
      v6 = v35;
    }

    sub_10000E3E8(v40, v40[3]);
    v27 = sub_1007991B4();
    v28 = v36;
    if (!v26)
    {
      sub_1000074E0(v40);
      return v27;
    }

    v29 = v26;
    sub_100009864(v40, &v38);
    sub_1001F1160(&qword_100ADA250, &unk_100823780);
    sub_1001F1160(&qword_100AEF3D0, &unk_100817F90);
    if (swift_dynamicCast())
    {
      sub_1000074E0(v37);
      sub_100009864(v40, &v38);
      if (swift_dynamicCast())
      {
        (*(v28 + 8))(v12, v9);
        v38 = 0;
        v39 = 0xE000000000000000;
        sub_1007A3744(38);

        v30 = 0x80000001008C9000;
        v38 = 0xD000000000000024;
LABEL_29:
        v39 = v30;
        v44._countAndFlagsBits = v27;
        v44._object = v29;
        sub_1007A23D4(v44);

        v33 = v38;
        sub_1000074E0(v40);
        return v33;
      }

      v38 = 0;
      v39 = 0xE000000000000000;
      sub_1007A3744(33);

      v30 = 0x80000001008C8FE0;
      v32 = 0xD00000000000001FLL;
    }

    else
    {
      sub_100009864(v40, &v38);
      sub_1001F1160(&qword_100ADA278, &unk_100817FC0);
      if (!swift_dynamicCast())
      {

        sub_1000074E0(v40);
        return 0;
      }

      sub_1000074E0(v37);
      sub_100009864(v40, &v38);
      if (!swift_dynamicCast())
      {
        v38 = 0;
        v39 = 0xE000000000000000;
        sub_1007A3744(38);

        v30 = 0x80000001008C8F80;
        v38 = 0xD000000000000024;
        goto LABEL_29;
      }

      (*(v6 + 8))(v8, v5);
      v38 = 0;
      v39 = 0xE000000000000000;
      sub_1007A3744(43);

      v30 = 0x80000001008C8FB0;
      v32 = 0xD000000000000029;
    }

    v38 = v32;
    goto LABEL_29;
  }

  return result;
}

uint64_t sub_1002C1880()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v5);
  if (v7)
  {
    v1 = v5;
    if (v7 != 1)
    {
      sub_1000074E0(v6);
    }

    sub_100799444();
    if (swift_dynamicCastClass())
    {
      v2 = v1;
      v3 = sub_100799564();

      return v3;
    }
  }

  else
  {

    sub_1000074E0(&v5);
  }

  return 0;
}

uint64_t sub_1002C194C()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v10);
  if (v12)
  {
    v1 = *&v10[0];
    if (v12 != 1)
    {
      sub_1000074E0(v10 + 1);
    }

    sub_100799444();
    if (swift_dynamicCastClass())
    {
      v4 = sub_100799354();

      return v4;
    }
  }

  else
  {

    sub_1000077C0(v10, v9);
    sub_100009864(v9, v7);
    sub_1001F1160(&qword_100ADA250, &unk_100823780);
    sub_1001F1160(&qword_100AEF3D0, &unk_100817F90);
    if (swift_dynamicCast())
    {
      sub_1000077C0(v5, v8);
      sub_10000E3E8(v8, v8[3]);
      v2 = sub_100799024();
      sub_1000074E0(v9);
      sub_1000074E0(v8);
      return v2;
    }

    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_1000074E0(v9);
    sub_100007840(v5, &qword_100AE0AF0, &qword_100821420);
  }

  return 0;
}

uint64_t sub_1002C1AE0()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v8);
  if (v10)
  {
    v1 = *&v8[0];
    if (v10 != 1)
    {
      sub_1000074E0(v8 + 1);
    }

    v2 = sub_100799574();
    v4 = v5;
  }

  else
  {

    sub_1000077C0(v8, v7);
    sub_10000E3E8(v7, v7[3]);
    v2 = sub_1007991B4();
    v4 = v3;
    sub_1000074E0(v7);
    if (!v4)
    {
      return 0;
    }
  }

  *&v8[0] = v2;
  *(&v8[0] + 1) = v4;
  sub_1002060B4();
  if ((sub_1007A28A4() & 1) == 0)
  {

    return 0;
  }

  return v2;
}

uint64_t sub_1002C1BE0()
{
  v1 = sub_1001F1160(&qword_100ADA258, &unk_100817FA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17[-1] - v2;
  v4 = sub_100799224();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v16);
  if (v18)
  {
    if (v18 == 1)
    {
      v8 = v16;
      sub_100799444();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        [v9 hasSupplementalContent];
      }

      return 0;
    }

    v11 = v17;
  }

  else
  {

    v11 = &v16;
  }

  sub_1000077C0(v11, v19);
  sub_1000077C0(v19, &v16);
  sub_1001F1160(&qword_100ADA250, &unk_100823780);
  v12 = swift_dynamicCast();
  v13 = *(v5 + 56);
  if (v12)
  {
    v13(v3, 0, 1, v4);
    (*(v5 + 32))(v7, v3, v4);
    v14 = sub_100799204();
    if (v14)
    {
      v15 = *(v14 + 16);
    }

    else
    {
      v15 = 0;
    }

    (*(v5 + 8))(v7, v4);
    return v15;
  }

  else
  {
    v13(v3, 1, 1, v4);
    sub_100007840(v3, &qword_100ADA258, &unk_100817FA0);
    return 0;
  }
}

uint64_t sub_1002C1E70()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v6);
  if (v8)
  {
    v1 = *&v6[0];
    if (v8 != 1)
    {
      sub_1000074E0(v6 + 1);
    }

    sub_100799444();
    if (swift_dynamicCastClass())
    {
      v3 = sub_1007993D4();
    }

    else
    {
      sub_1007994D4();
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      v3 = sub_1007994A4();
    }

    v2 = v3;
  }

  else
  {

    sub_1000077C0(v6, v5);
    sub_10000E3E8(v5, v5[3]);
    v2 = sub_1007991A4();
    sub_1000074E0(v5);
  }

  return v2;
}

uint64_t sub_1002C1F84()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v13);
  if (v15)
  {
    v1 = *&v13[0];
    if (v15 != 1)
    {
      sub_1000074E0(v13 + 1);
    }

    sub_100799444();
    if (swift_dynamicCastClass() && (v4 = sub_1007993A4()) != 0)
    {
      if (*(v4 + 16))
      {
        v5 = *(v4 + 32);

        strcpy(v11, "versionString");
        HIWORD(v11[1]) = -4864;
        sub_1007A36B4();
        if (*(v5 + 16) && (v6 = sub_10000E2A4(v13), (v7 & 1) != 0))
        {
          sub_100007484(*(v5 + 56) + 32 * v6, v12);

          sub_10002899C(v13);

          if (swift_dynamicCast())
          {
            return v11[0];
          }
        }

        else
        {

          sub_10002899C(v13);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {

    sub_1000077C0(v13, v12);
    sub_100009864(v12, v10);
    sub_1001F1160(&qword_100ADA250, &unk_100823780);
    sub_1001F1160(&qword_100AEF3D0, &unk_100817F90);
    if (swift_dynamicCast())
    {
      sub_1000077C0(v8, v11);
      sub_10000E3E8(v11, v11[3]);
      if ((sub_100799074() & 0x100000000) == 0)
      {
        v2 = sub_1007A2804();
        sub_1000074E0(v12);
        sub_1000074E0(v11);
        return v2;
      }

      sub_1000074E0(v12);
      sub_1000074E0(v11);
    }

    else
    {
      sub_1000074E0(v12);
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      sub_100007840(v8, &qword_100AE0AF0, &qword_100821420);
    }
  }

  return 0;
}

uint64_t sub_1002C2210(double a1, double a2)
{
  *(v3 + 88) = v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  v4 = sub_100797214();
  *(v3 + 96) = v4;
  *(v3 + 104) = *(v4 - 8);
  *(v3 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_1002C22D4, 0, 0);
}

uint64_t sub_1002C22D4()
{
  v1 = (v0 + 16);
  sub_1002C63A0(*(v0 + 88) + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v0 + 16);
  if (!*(v0 + 64))
  {

LABEL_9:
    sub_1000074E0(v1);
    v15 = objc_opt_self();
    sub_1002BC268();
    v16 = sub_1007A2214();

    CGSizeScaleToScreen();
    v2 = [v15 fetchImageForAssetID:v16 size:0 includeSpine:0 coverEffectsEnvironment:?];

    v17 = [v2 CGImage];
    v3 = [objc_allocWithZone(UIImage) initWithCGImage:v17];

    goto LABEL_10;
  }

  if (*(v0 + 64) != 1)
  {

    v1 = (v0 + 24);
    goto LABEL_9;
  }

  v2 = *(v0 + 16);
  *(v0 + 120) = v2;
  sub_100799444();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v6 = *(v0 + 96);
    v7 = (*(v0 + 88) + OBJC_IVAR____TtC5Books16ContextAssetInfo_coverImageProvider);
    v8 = v7[3];
    v9 = v7[4];
    sub_10000E3E8(v7, v8);
    (*(v5 + 104))(v4, enum case for MenuCoverImageSource.network(_:), v6);
    v10 = v2;
    v11 = swift_task_alloc();
    *(v0 + 128) = v11;
    *v11 = v0;
    v11[1] = sub_1002C2558;
    v12 = *(v0 + 112);
    v13.n128_u64[0] = *(v0 + 72);
    v14.n128_u64[0] = *(v0 + 80);

    return dispatch thunk of MenuCoverImageProviding.image(for:from:size:includeSpine:)(v3, v12, 0, v8, v9, v13, v14);
  }

LABEL_10:

  v18 = *(v0 + 8);

  return v18(v3);
}

uint64_t sub_1002C2558(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  *(*v1 + 136) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1002C26B8, 0, 0);
}

uint64_t sub_1002C26B8()
{
  v1 = v0[15];

  v2 = v0[17];

  v3 = v0[1];

  return v3(v2);
}

id sub_1002C272C()
{
  v1 = v0;
  v2 = sub_1007969B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100798F44();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  __chkstk_darwin(v10 - 8);
  v12 = &v95 - v11;
  v13 = sub_1002C1AE0();
  if (!v14)
  {
    return 0;
  }

  v98 = v6;
  *&v99 = v13;
  *(&v99 + 1) = v14;
  v100 = &type metadata for String;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v103 = _swiftEmptyDictionarySingleton;
  sub_1002F4E24(&v99, 0x444965726F7473, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v104 = v103;
  sub_1002C0964(v12);
  v16 = (*(v3 + 48))(v12, 1, v2);
  v96 = v5;
  v97 = v3;
  if (v16 == 1)
  {
    sub_100007840(v12, &unk_100AD5AC0, &unk_100811090);
    sub_1002EEC98(0xD000000000000011, 0x80000001008C8F40, &v99);
    sub_100007840(&v99, &unk_100AE6F50, &unk_100817F30);
  }

  else
  {
    v18 = sub_100796914();
    v20 = v19;
    (*(v3 + 8))(v12, v2);
    *&v99 = v18;
    *(&v99 + 1) = v20;
    v100 = &type metadata for String;
    v21 = v104;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v21;
    sub_1002F4E24(&v99, 0xD000000000000011, 0x80000001008C8F40, v22);
    v104 = v103;
  }

  v23 = sub_1002C1E70();
  v25 = v98;
  if (v24)
  {
    *&v99 = v23;
    *(&v99 + 1) = v24;
    v100 = &type metadata for String;
    v26 = v104;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v26;
    sub_1002F4E24(&v99, 0x656C746974, 0xE500000000000000, v27);
    v104 = v103;
  }

  else
  {
    sub_1002EEC98(0x656C746974, 0xE500000000000000, &v99);
    sub_100007840(&v99, &unk_100AE6F50, &unk_100817F30);
  }

  v28 = sub_1002BCA68();
  if (v29)
  {
    *&v99 = v28;
    *(&v99 + 1) = v29;
    v100 = &type metadata for String;
    v30 = v104;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v30;
    sub_1002F4E24(&v99, 0x726F68747561, 0xE600000000000000, v31);
    v104 = v103;
  }

  else
  {
    sub_1002EEC98(0x726F68747561, 0xE600000000000000, &v99);
    sub_100007840(&v99, &unk_100AE6F50, &unk_100817F30);
  }

  v32 = sub_1002BCBFC();
  if (v33)
  {
    sub_1002EEC98(0x5265676172657661, 0xED0000676E697461, &v99);
    sub_100007840(&v99, &unk_100AE6F50, &unk_100817F30);
  }

  else
  {
    *&v99 = v32;
    v100 = &type metadata for Double;
    v34 = v104;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v34;
    sub_1002F4E24(&v99, 0x5265676172657661, 0xED0000676E697461, v35);
    v104 = v103;
  }

  sub_1002BC330();
  v36 = sub_1007972D4();
  v37 = &enum case for MResourceType.audiobooks(_:);
  if ((v36 & 1) == 0)
  {
    v37 = &enum case for MResourceType.books(_:);
  }

  (*(v7 + 104))(v9, *v37, v25);
  v38 = sub_100798F34();
  v40 = v39;
  (*(v7 + 8))(v9, v25);
  *&v99 = v38;
  *(&v99 + 1) = v40;
  v100 = &type metadata for String;
  v41 = v104;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v103 = v41;
  sub_1002F4E24(&v99, 1684957547, 0xE400000000000000, v42);
  v43 = v103;
  sub_1002BC330();
  LOBYTE(v99) = sub_1007972D4() & 1;
  v100 = &type metadata for Bool;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v103 = v43;
  sub_1002F4E24(&v99, 0x626F696475417369, 0xEB000000006B6F6FLL, v44);
  v45 = v103;
  v104 = v103;
  sub_1002C63A0(v1 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v99);
  if (v102)
  {
    v46 = v99;
    if (v102 != 1)
    {
      sub_1000074E0(&v99 + 1);
    }

    sub_100799444();
    v47 = swift_dynamicCastClass();
    if (!v47)
    {

      return 0;
    }

    v48 = v47;
    *&v99 = [v47 ratingCount];
    v100 = &type metadata for UInt;
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v45;
    sub_1002F4E24(&v99, 0x6F43676E69746172, 0xEB00000000746E75, v49);
    v50 = v103;
    v104 = v103;
    v51 = sub_100799334();
    if (v52)
    {
      *&v99 = v51;
      *(&v99 + 1) = v52;
      v100 = &type metadata for String;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v103 = v50;
      sub_1002F4E24(&v99, 0x74536E6F69746361, 0xEC000000676E6972, v53);
      v104 = v103;
    }

    else
    {
      sub_1002EEC98(0x74536E6F69746361, 0xEC000000676E6972, &v99);
      sub_100007840(&v99, &unk_100AE6F50, &unk_100817F30);
    }

    v54 = [v48 priceFormatted];
    if (v54)
    {
      v55 = v54;
      v56 = sub_1007A2254();
      v58 = v57;

      *&v99 = v56;
      *(&v99 + 1) = v58;
      v100 = &type metadata for String;
      v59 = v104;
      v60 = swift_isUniquelyReferenced_nonNull_native();
      v103 = v59;
      sub_1002F4E24(&v99, 0x7274536563697270, 0xEB00000000676E69, v60);
      v104 = v103;
    }

    else
    {
      sub_1002EEC98(0x7274536563697270, 0xEB00000000676E69, &v99);
      sub_100007840(&v99, &unk_100AE6F50, &unk_100817F30);
    }

    v61 = v96;
    sub_1007993C4();
    v62 = sub_100796914();
    v64 = v63;
    (*(v97 + 8))(v61, v2);
    *&v99 = v62;
    *(&v99 + 1) = v64;
    v100 = &type metadata for String;
    v65 = v104;
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v65;
    sub_1002F4E24(&v99, 0x55746375646F7270, 0xEA00000000004C52, v66);
    v67 = v103;
    v104 = v103;
    v68 = [v48 artworkURL];
    if (v68)
    {
      v69 = v68;
      v70 = sub_1007A2254();
      v72 = v71;

      *&v99 = v70;
      *(&v99 + 1) = v72;
      v100 = &type metadata for String;
      v73 = swift_isUniquelyReferenced_nonNull_native();
      v103 = v67;
      sub_1002F4E24(&v99, 0xD000000000000012, 0x80000001008C8F60, v73);
      v104 = v103;
    }

    else
    {
      sub_1002EEC98(0xD000000000000012, 0x80000001008C8F60, &v99);
      sub_100007840(&v99, &unk_100AE6F50, &unk_100817F30);
    }

    v74 = [v48 buyParams];
    if (v74)
    {
      v75 = v74;
      v76 = sub_1007A2254();
      v78 = v77;

      *&v99 = v76;
      *(&v99 + 1) = v78;
      v100 = &type metadata for String;
      v79 = v104;
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v103 = v79;
      sub_1002F4E24(&v99, 0x6D61726150797562, 0xED00007372657465, v80);
      v104 = v103;
    }

    else
    {
      sub_1002EEC98(0x6D61726150797562, 0xED00007372657465, &v99);
      sub_100007840(&v99, &unk_100AE6F50, &unk_100817F30);
    }

    v81 = COERCE_DOUBLE(sub_1007993E4());
    if (v82)
    {
      v83 = 0.0;
    }

    else
    {
      v83 = v81;
    }

    v84 = sub_1007993F4();
    if (v83 <= 0.0)
    {
      v87 = &type metadata for Double;
      v88 = 1.5;
    }

    else
    {
      v86 = *&v84;
      if (v85)
      {
        v86 = 0.0;
      }

      v87 = &type metadata for CGFloat;
      v88 = v86 / v83;
    }

    *&v99 = v88;
    v100 = v87;
    v89 = v104;
    v90 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v89;
    sub_1002F4E24(&v99, 0x416B726F77747261, 0xED00007463657073, v90);

    v45 = v103;
  }

  else
  {

    sub_1000074E0(&v99);
  }

  v91 = sub_1002C3200(v45);

  sub_10058096C(v91);

  v92 = objc_allocWithZone(BSUIItemDescription);
  isa = sub_1007A2024().super.isa;

  v94 = [v92 initWithDictionary:isa];

  return v94;
}

uint64_t sub_1002C3200(uint64_t a1)
{
  v1 = _swiftEmptyDictionarySingleton;
  v38 = _swiftEmptyDictionarySingleton;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_7:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v9 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
  }

  while (!v5);
  v39 = v1;
  v8 = v9;
  while (1)
  {
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1000077D8(*(a1 + 56) + 32 * v11, v37, &unk_100AD5B40, &unk_100811300);
    *&v36 = v14;
    *(&v36 + 1) = v13;
    v33 = v36;
    v34 = v37[0];
    v35 = v37[1];
    sub_1000077D8(&v34, v27, &unk_100AD5B40, &unk_100811300);
    if (!v28)
    {

      sub_100007840(&v33, &qword_100ADA270, &qword_100817FB0);
      result = sub_100007840(v27, &unk_100AD5B40, &unk_100811300);
      v1 = v39;
      if (!v5)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    sub_1000076D4(v27, v32);
    v30 = v33;
    v31[0] = v34;
    v31[1] = v35;
    sub_1000076D4(v32, v29);
    v1 = v39;
    v15 = v39[2];
    if (v39[3] <= v15)
    {

      sub_1003D4168(v15 + 1, 1);
      v1 = v38;
    }

    else
    {
    }

    v16 = v30;
    sub_1007A3C04();
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
    result = sub_1007A3C44();
    v17 = v1 + 8;
    v18 = -1 << *(v1 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~v1[(v19 >> 6) + 8]) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~v1[(v19 >> 6) + 8])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v1[6] + 16 * v21) = v16;
    sub_1000076D4(v29, v1[7] + 32 * v21);
    ++v1[2];
    result = sub_100007840(v31, &unk_100AD5B40, &unk_100811300);
    if (!v5)
    {
      goto LABEL_7;
    }

LABEL_11:
    v39 = v1;
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = v17[v20];
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_26;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1002C3524()
{
  sub_1002BC080();
  if (v6[2])
  {
    sub_1001F1160(&qword_100ADA250, &unk_100823780);
    sub_1001F1160(&qword_100AEF3D0, &unk_100817F90);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }
  }

  else
  {
    sub_100007840(&v5, &unk_100AF1C40, &unk_100818DB0);
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
  }

  sub_1002C63A0(v1 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v5);
  if (v7)
  {
    v2 = v5;
    if (v7 != 1)
    {
      sub_1000074E0(v6);
    }

    sub_100799444();
    v3 = swift_dynamicCastClass();
    if (!v3)
    {
    }
  }

  else
  {

    sub_1000074E0(&v5);
    v3 = 0;
  }

  sub_1007991D4();

  return sub_100007840(&v8, &qword_100AE0AF0, &qword_100821420);
}

uint64_t sub_1002C3680()
{
  v0 = sub_100799254();
  __chkstk_darwin(v0 - 8);
  v2 = &v142 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1007969B4();
  v151 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v142 - v7;
  v9 = sub_100798F44();
  v152 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  __chkstk_darwin(v12 - 8);
  v14 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v142 - v16;
  __chkstk_darwin(v18);
  v20 = (&v142 - v19);
  __chkstk_darwin(v21);
  v23 = &v142 - v22;
  sub_1002C63A0(&v153[OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource], &v161);
  if (!v164)
  {
    v147 = v20;
    *&v148 = v23;
    v153 = v11;
    v149 = v9;
    v146 = v14;
    v25 = v163;
    if (!v163)
    {
      sub_1000074E0(&v161);
      return 0;
    }

    v142 = v5;
    v144 = v17;
    v143 = v8;
    v150 = v3;
    v145 = v2;
    sub_1001F1160(&qword_100ADA218, &unk_100817F08);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100817C70;
    strcpy(v156, "artistName");
    BYTE3(v156[1]) = 0;
    HIDWORD(v156[1]) = -369098752;
    sub_1007A36B4();
    v27 = [v25 author];
    if (v27)
    {
      v28 = v27;
      v29 = sub_1007A2254();
      v31 = v30;

      v32 = &type metadata for String;
    }

    else
    {
      v29 = 0;
      v31 = 0;
      v32 = 0;
      *(v26 + 88) = 0;
    }

    v34 = v148;
    *(v26 + 72) = v29;
    *(v26 + 80) = v31;
    *(v26 + 96) = v32;
    strcpy(v156, "artwork");
    v156[1] = 0xE700000000000000;
    sub_1007A36B4();
    v35 = sub_1007A2214();
    v36 = [v25 objectForKey:v35];

    if (v36)
    {
      sub_1007A3504();
      swift_unknownObjectRelease();
    }

    else
    {
      v159 = 0u;
      v160 = 0u;
    }

    v37 = v160;
    *(v26 + 144) = v159;
    *(v26 + 160) = v37;
    strcpy(v156, "description");
    HIDWORD(v156[1]) = -352321536;
    sub_1007A36B4();
    v38 = [v25 standardDescription];
    if (v38)
    {
      v39 = v38;
      v40 = sub_1007A2254();
      v42 = v41;

      v43 = &type metadata for String;
    }

    else
    {
      v40 = 0;
      v42 = 0;
      v43 = 0;
      *(v26 + 232) = 0;
    }

    *(v26 + 216) = v40;
    *(v26 + 224) = v42;
    *(v26 + 240) = v43;
    strcpy(v156, "isIBook");
    v156[1] = 0xE700000000000000;
    sub_1007A36B4();
    v44 = [v25 ebookInfo];
    if (v44)
    {
      v45 = v44;
      v46 = sub_1007A2044();

      v154 = 0x6B6F6F42697369;
      v155 = 0xE700000000000000;
      sub_1007A36B4();
      if (*(v46 + 16))
      {
        v47 = sub_10000E2A4(v156);
        if (v48)
        {
          sub_100007484(*(v46 + 56) + 32 * v47, &v157);
          sub_10002899C(v156);

          if (*(&v158 + 1))
          {
            if (swift_dynamicCast())
            {
              v49 = v156[0];
              *(v26 + 312) = &type metadata for Bool;
              *(v26 + 288) = v49;
              goto LABEL_29;
            }

LABEL_28:
            *(v26 + 288) = 0u;
            *(v26 + 304) = 0u;
LABEL_29:
            v156[0] = 1701667182;
            v156[1] = 0xE400000000000000;
            sub_1007A36B4();
            v50 = [v25 title];
            if (v50)
            {
              v51 = v50;
              v52 = sub_1007A2254();
              v54 = v53;

              v55 = &type metadata for String;
            }

            else
            {
              v52 = 0;
              v54 = 0;
              v55 = 0;
              *(v26 + 376) = 0;
            }

            *(v26 + 360) = v52;
            *(v26 + 368) = v54;
            *(v26 + 384) = v55;
            v156[0] = 0x73726566666FLL;
            v156[1] = 0xE600000000000000;
            sub_1007A36B4();
            sub_1001F1160(&qword_100ADA220, &qword_100817F18);
            v56 = swift_allocObject();
            v148 = xmmword_10080B690;
            *(v56 + 16) = xmmword_10080B690;
            v57 = [v25 offer];
            if (v57)
            {
              v58 = v57;
              v59 = sub_1007A2044();
            }

            else
            {
              v59 = 0;
            }

            *(v56 + 32) = v59;
            *(v26 + 456) = sub_1001F1160(&qword_100ADA228, &unk_100817F20);
            *(v26 + 432) = v56;
            strcpy(v156, "pageCount");
            WORD1(v156[1]) = 0;
            HIDWORD(v156[1]) = -385875968;
            sub_1007A36B4();
            v60 = [v25 ebookInfo];
            if (v60)
            {
              v61 = v60;
              v62 = sub_1007A2044();

              v154 = 0x6E756F4365676170;
              v155 = 0xE900000000000074;
              sub_1007A36B4();
              if (*(v62 + 16))
              {
                v63 = sub_10000E2A4(v156);
                if (v64)
                {
                  sub_100007484(*(v62 + 56) + 32 * v63, &v157);
                  sub_10002899C(v156);

                  v65 = v153;
                  if (*(&v158 + 1))
                  {
                    if (swift_dynamicCast())
                    {
                      v66 = v156[0];
                      *(v26 + 528) = &type metadata for Int;
                      *(v26 + 504) = v66;
                      goto LABEL_45;
                    }

LABEL_44:
                    *(v26 + 504) = 0u;
                    *(v26 + 520) = 0u;
LABEL_45:
                    strcpy(v156, "primaryLocale");
                    HIWORD(v156[1]) = -4864;
                    sub_1007A36B4();
                    v67 = [v25 ebookInfo];
                    if (v67)
                    {
                      v68 = v67;
                      v69 = sub_1007A2044();

                      v154 = 0xD000000000000015;
                      v155 = 0x80000001008C8F20;
                      sub_1007A36B4();
                      if (*(v69 + 16))
                      {
                        v70 = sub_10000E2A4(v156);
                        if (v71)
                        {
                          sub_100007484(*(v69 + 56) + 32 * v70, &v157);
                          sub_10002899C(v156);

                          if (*(&v158 + 1))
                          {
                            if (swift_dynamicCast())
                            {
                              v72 = v156[0];
                              v73 = v156[1];
                              *(v26 + 600) = &type metadata for String;
                              *(v26 + 576) = v72;
                              *(v26 + 584) = v73;
                              goto LABEL_55;
                            }

LABEL_54:
                            *(v26 + 576) = 0u;
                            *(v26 + 592) = 0u;
LABEL_55:
                            strcpy(v156, "releaseDate");
                            HIDWORD(v156[1]) = -352321536;
                            sub_1007A36B4();
                            v74 = sub_1007A2214();
                            v75 = [v25 objectForKey:v74];

                            if (v75)
                            {
                              sub_1007A3504();
                              swift_unknownObjectRelease();
                            }

                            else
                            {
                              v157 = 0u;
                              v158 = 0u;
                            }

                            v76 = v158;
                            *(v26 + 648) = v157;
                            *(v26 + 664) = v76;
                            strcpy(v156, "seriesInfo");
                            BYTE3(v156[1]) = 0;
                            HIDWORD(v156[1]) = -369098752;
                            sub_1007A36B4();
                            v77 = [v25 ebookInfo];
                            if (v77)
                            {
                              v78 = v77;
                              v79 = sub_1007A2044();

                              v154 = 0x6E49736569726573;
                              v155 = 0xEA00000000006F66;
                              sub_1007A36B4();
                              if (*(v79 + 16) && (v80 = sub_10000E2A4(v156), (v81 & 1) != 0))
                              {
                                sub_100007484(*(v79 + 56) + 32 * v80, v26 + 720);
                              }

                              else
                              {
                                *(v26 + 720) = 0u;
                                *(v26 + 736) = 0u;
                              }

                              v82 = v151;

                              sub_10002899C(v156);
                            }

                            else
                            {
                              *(v26 + 720) = 0u;
                              *(v26 + 736) = 0u;
                              v82 = v151;
                            }

                            v156[0] = 7107189;
                            v156[1] = 0xE300000000000000;
                            sub_1007A36B4();
                            v83 = [v25 productShortURL];
                            v151 = v25;
                            if (v83)
                            {
                              v84 = v147;
                              v85 = v83;
                              sub_100796974();

                              v86 = 0;
                            }

                            else
                            {
                              v86 = 1;
                              v84 = v147;
                            }

                            v87 = v150;
                            v147 = v82[7];
                            v147(v84, v86, 1, v150);
                            sub_100008EF8(v84, v34);
                            v88 = v82[6];
                            if (v88(v34, 1, v87) == 1)
                            {
                              sub_100007840(v34, &unk_100AD5AC0, &unk_100811090);
                              v89 = (v26 + 792);
                              *(v26 + 816) = &type metadata for String;
                              v90 = v82;
                              v91 = v149;
                            }

                            else
                            {
                              v92 = sub_100796914();
                              v94 = v93;
                              (v82[1])(v34, v87);
                              v89 = (v26 + 792);
                              *(v26 + 816) = &type metadata for String;
                              if (v94)
                              {
                                *v89 = v92;
                                v90 = v82;
                                v91 = v149;
                                v65 = v153;
                                goto LABEL_74;
                              }

                              v90 = v82;
                              v91 = v149;
                              v65 = v153;
                            }

                            *v89 = 0;
                            v94 = 0xE000000000000000;
LABEL_74:
                            *(v26 + 800) = v94;
                            v95 = sub_1001ED854(v26);
                            swift_setDeallocating();
                            sub_1001F1160(&qword_100AD35B0, &qword_10080CB28);
                            swift_arrayDestroy();
                            swift_deallocClassInstance();
                            *&v157 = v95;
                            v96 = v151;
                            v97 = [v151 isAudiobook];
                            v98 = *(v152 + 104);
                            v99 = (v152 + 8);
                            if (v97)
                            {
                              v98(v65, enum case for MResourceType.audiobooks(_:), v91);
                              v100 = sub_100798F34();
                              v101 = v91;
                              v103 = v102;
                              (*v99)(v65, v101);
                              v104 = [v96 audiobookSampleURL];
                              v105 = v96;
                              if (v104)
                              {
                                v106 = v142;
                                v107 = v104;
                                sub_100796974();

                                v108 = v143;
                                v109 = v106;
                                v110 = v150;
                                (v90[4])(v143, v109, v150);
                                *&v159 = 0x7377656976657270;
                                *(&v159 + 1) = 0xE800000000000000;
                                sub_1007A36B4();
                                sub_1001F1160(&qword_100ADA238, &unk_100817F50);
                                v111 = swift_allocObject();
                                *(v111 + 16) = v148;
                                sub_1001F1160(qword_100AEA1F0, &unk_100828E80);
                                v112 = swift_allocObject();
                                *(v112 + 16) = v148;
                                *(v112 + 32) = 7107189;
                                *(v112 + 40) = 0xE300000000000000;
                                *(v112 + 48) = sub_100796914();
                                *(v112 + 56) = v113;
                                v114 = sub_1001ED994(v112);
                                swift_setDeallocating();
                                sub_100007840(v112 + 32, &unk_100AE0920, &unk_100817F60);
                                swift_deallocClassInstance();
                                *(v111 + 32) = v114;
                                v115 = sub_1001F1160(&qword_100AEF320, &unk_100838110);
                                *&v159 = v111;
                                *(&v160 + 1) = v115;
                                v116 = v157;
                                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                                v154 = v116;
                                sub_1002F4F68(&v159, v156, isUniquelyReferenced_nonNull_native);
                                sub_10002899C(v156);
                                (v90[1])(v108, v110);
                                *&v157 = v154;
                              }
                            }

                            else
                            {
                              v98(v65, enum case for MResourceType.books(_:), v91);
                              v100 = sub_100798F34();
                              v118 = v91;
                              v103 = v119;
                              (*v99)(v65, v118);
                              *&v159 = 0xD000000000000015;
                              *(&v159 + 1) = 0x80000001008C8F00;
                              sub_1007A36B4();
                              v120 = [v96 bookSampleDownloadURL];
                              if (v120)
                              {
                                v121 = v146;
                                v122 = v120;
                                sub_100796974();

                                v123 = 0;
                              }

                              else
                              {
                                v123 = 1;
                                v121 = v146;
                              }

                              v124 = v150;
                              v147(v121, v123, 1, v150);
                              v125 = v121;
                              v126 = v144;
                              sub_100008EF8(v125, v144);
                              if (v88(v126, 1, v124) == 1)
                              {
                                sub_100007840(v126, &unk_100AD5AC0, &unk_100811090);
                                sub_1002EED40(v156, &v159);
                                sub_100007840(&v159, &unk_100AE6F50, &unk_100817F30);
                                sub_10002899C(v156);
                              }

                              else
                              {
                                v127 = sub_100796914();
                                v129 = v128;
                                (v90[1])(v126, v124);
                                *&v159 = v127;
                                *(&v159 + 1) = v129;
                                *(&v160 + 1) = &type metadata for String;
                                v130 = v157;
                                v131 = swift_isUniquelyReferenced_nonNull_native();
                                v154 = v130;
                                sub_1002F4F68(&v159, v156, v131);
                                sub_10002899C(v156);
                                *&v157 = v154;
                              }

                              v105 = v151;
                            }

                            sub_1001F1160(&unk_100AE0AC0, &unk_100812C90);
                            v132 = swift_allocObject();
                            *(v132 + 16) = xmmword_100815060;
                            strcpy(v156, "attributes");
                            BYTE3(v156[1]) = 0;
                            HIDWORD(v156[1]) = -369098752;
                            sub_1007A36B4();
                            v133 = sub_1002C6408(v157);

                            *(v132 + 96) = sub_1001F1160(&qword_100ADA230, &unk_100817F40);
                            *(v132 + 72) = v133;
                            v156[0] = 1717924456;
                            v156[1] = 0xE400000000000000;
                            sub_1007A36B4();
                            *(v132 + 168) = &type metadata for String;
                            *(v132 + 144) = 0;
                            *(v132 + 152) = 0xE000000000000000;
                            v156[0] = 25705;
                            v156[1] = 0xE200000000000000;
                            sub_1007A36B4();
                            v134 = [v105 adamId];
                            if (v134)
                            {
                              v135 = v134;
                              v136 = sub_1007A2254();
                              v138 = v137;

                              v139 = (v132 + 216);
                              *(v132 + 240) = &type metadata for String;
                              if (v138)
                              {
                                *v139 = v136;
LABEL_90:
                                *(v132 + 224) = v138;
                                v156[0] = 1701869940;
                                v156[1] = 0xE400000000000000;
                                sub_1007A36B4();
                                *(v132 + 312) = &type metadata for String;
                                *(v132 + 288) = v100;
                                *(v132 + 296) = v103;
                                sub_100013740(v132);
                                swift_setDeallocating();
                                sub_1001F1160(&unk_100AD1E50, &unk_10080B810);
                                swift_arrayDestroy();
                                swift_deallocClassInstance();
                                sub_100799244();
                                v140 = objc_allocWithZone(sub_100798E84());
                                v141 = sub_100798E74();

                                sub_1000074E0(&v161);
                                return v141;
                              }
                            }

                            else
                            {
                              v139 = (v132 + 216);
                              *(v132 + 240) = &type metadata for String;
                            }

                            *v139 = 0;
                            v138 = 0xE000000000000000;
                            goto LABEL_90;
                          }

LABEL_53:
                          sub_100007840(&v157, &unk_100AD5B40, &unk_100811300);
                          goto LABEL_54;
                        }
                      }

                      sub_10002899C(v156);
                    }

                    v157 = 0u;
                    v158 = 0u;
                    goto LABEL_53;
                  }

LABEL_43:
                  sub_100007840(&v157, &unk_100AD5B40, &unk_100811300);
                  goto LABEL_44;
                }
              }

              sub_10002899C(v156);
            }

            v157 = 0u;
            v158 = 0u;
            v65 = v153;
            goto LABEL_43;
          }

LABEL_27:
          sub_100007840(&v157, &unk_100AD5B40, &unk_100811300);
          goto LABEL_28;
        }
      }

      sub_10002899C(v156);
    }

    v157 = 0u;
    v158 = 0u;
    goto LABEL_27;
  }

  v24 = v161;
  if (v164 != 1)
  {
    sub_1000074E0(&v162);
  }

  sub_100799444();
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

unint64_t sub_1002C4B0C()
{
  v0 = sub_1002BC330();
  result = 0;
  if (v0 > 2u)
  {
    if (v0 - 4 < 3)
    {
      return result;
    }

    v2 = 0x6F6F626F69647561;
    v3 = 0xD000000000000012;
    v4 = v0 == 3;
  }

  else
  {
    if (!v0)
    {
      return result;
    }

    v2 = 0x746163696C707061;
    v3 = 0xD000000000000010;
    v4 = v0 == 1;
  }

  if (v4)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002C4C00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1002C4C90;

  return sub_1002BCDB0();
}

uint64_t sub_1002C4C90(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1002C4E64()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v7);
  if (v9)
  {
    if (v9 == 1)
    {
      sub_1002C63D8(&v7);
      return 2;
    }

    v2 = v8;
  }

  else
  {

    v2 = &v7;
  }

  sub_1000077C0(v2, v10);
  sub_1000077C0(v10, v6);
  sub_1001F1160(&qword_100ADA250, &unk_100823780);
  sub_1001F1160(&qword_100AEF3D0, &unk_100817F90);
  if (swift_dynamicCast())
  {
    sub_1000077C0(v4, &v7);
    sub_10000E3E8(&v7, v8[2]);
    v3 = sub_100799084() & 1;
    sub_1000074E0(&v7);
    return v3;
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    sub_100007840(v4, &qword_100AE0AF0, &qword_100821420);
    return 0;
  }
}

double sub_1002C52CC(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC5Books16ContextAssetInfo_shareableURLStringOverride);
  *v3 = a1;
  v3[1] = a2;

  return result;
}

double (*sub_1002C52EC(uint64_t *a1))(uint64_t a1)
{
  a1[2] = *v1;
  *a1 = sub_1002C0F88();
  a1[1] = v3;
  return sub_1002C5338;
}

double sub_1002C5338(uint64_t a1)
{
  *(*(a1 + 16) + OBJC_IVAR____TtC5Books16ContextAssetInfo_shareableURLStringOverride) = *a1;

  return result;
}

id sub_1002C5414()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v5);
  if (v7)
  {
    v1 = v5;
    if (v7 != 1)
    {
      sub_1000074E0(v6);
    }

    sub_100799444();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = [v2 supportsUnifiedProductPage];

      return v3;
    }
  }

  else
  {

    sub_1000074E0(&v5);
  }

  return 0;
}

uint64_t sub_1002C5534(double a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1002C7268;

  return sub_1002C2210(a1, a2);
}

uint64_t sub_1002C5624()
{
  if ([objc_opt_self() isOffline])
  {
    return 0;
  }

  v1 = [objc_opt_self() delegate];
  v2 = [v1 storeController];

  LODWORD(v1) = [v2 isReportConcernEnabled];
  if (!v1)
  {
    return 0;
  }

  v3 = sub_1002BC268();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    return *(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_supportsReportConcernInJS);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002C56FC()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v4);
  if (v6)
  {
    if (v6 == 1)
    {
      sub_1002C63D8(&v4);
      return 2;
    }

    v2 = v5;
  }

  else
  {

    v2 = &v4;
  }

  sub_1000074E0(v2);
  sub_1002BC330();
  if (sub_1007972D4())
  {
    v3 = 1;
  }

  else
  {
    sub_1002BC330();
    v3 = sub_1007972D4();
  }

  return v3 & 1;
}

uint64_t sub_1002C5798()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v9);
  if (v11)
  {
    if (v11 == 1)
    {
      sub_1002C63D8(&v9);
LABEL_8:
      v7 = 0;
      return v7 & 1;
    }

    v1 = v10;
  }

  else
  {

    v1 = &v9;
  }

  sub_1000074E0(v1);
  v2 = [objc_opt_self() defaultManager];
  sub_1002BC268();
  v3 = sub_1007A2214();

  v4 = [v2 libraryAssetOnMainQueueWithAssetID:v3];

  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = *(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_libraryAssetProvider + 24);
  v6 = *(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_libraryAssetProvider + 32);
  sub_10000E3E8((v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_libraryAssetProvider), v5);
  v7 = (*(v6 + 8))(v4, v5, v6);

  return v7 & 1;
}

uint64_t sub_1002C58E8()
{
  v1 = sub_1001F1160(&qword_100ADA258, &unk_100817FA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v15[-v2 - 8];
  v4 = sub_100799224();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v17);
  if (v19)
  {
    v8 = *&v17[0];
    if (v19 != 1)
    {
      sub_1000074E0(v17 + 1);
    }

    sub_100799444();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v11 = [v12 isSG];

      return v11 & 1;
    }

LABEL_11:
    v11 = 0;
    return v11 & 1;
  }

  sub_1000077C0(v17, v16);
  sub_100009864(v16, v15);
  sub_1001F1160(&qword_100ADA250, &unk_100823780);
  v9 = swift_dynamicCast();
  v10 = *(v5 + 56);
  if (!v9)
  {
    v10(v3, 1, 1, v4);
    sub_1000074E0(v16);
    sub_100007840(v3, &qword_100ADA258, &unk_100817FA0);
    goto LABEL_11;
  }

  v10(v3, 0, 1, v4);
  (*(v5 + 32))(v7, v3, v4);
  v11 = sub_100799214();
  (*(v5 + 8))(v7, v4);
  sub_1000074E0(v16);
  return v11 & 1;
}

uint64_t sub_1002C5B5C@<X0>(uint64_t a1@<X8>)
{
  sub_1002C63A0(v1 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v5);
  if (v7)
  {
    if (v7 == 1)
    {
      result = sub_1002C63D8(&v5);
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      return result;
    }

    v4 = v6;
  }

  else
  {

    v4 = &v5;
  }

  sub_1000077C0(v4, v8);
  return sub_1000077C0(v8, a1);
}

uint64_t sub_1002C5BF4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100798F64();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v55 - v8;
  v10 = sub_1001F1160(&qword_100ADA258, &unk_100817FA0);
  __chkstk_darwin(v10 - 8);
  v64 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v55 - v13;
  __chkstk_darwin(v15);
  v17 = &v55 - v16;
  __chkstk_darwin(v18);
  v20 = &v55 - v19;
  __chkstk_darwin(v21);
  v23 = &v55 - v22;
  sub_1002C63A0(v1 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v66);
  if (v68)
  {
    if (v68 == 1)
    {
      result = sub_1002C63D8(&v66);
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 1;
      v31 = 2;
LABEL_32:
      *a1 = v25;
      *(a1 + 8) = v30;
      *(a1 + 16) = v28;
      *(a1 + 24) = v29;
      *(a1 + 32) = v26;
      *(a1 + 40) = v27;
      *(a1 + 48) = v31;
      return result;
    }

    v61 = v9;
    v62 = v14;

    v32 = v67;
  }

  else
  {
    v61 = v9;
    v62 = v14;

    v32 = &v66;
  }

  sub_1000077C0(v32, v69);
  sub_1000077C0(v69, &v66);
  sub_1001F1160(&qword_100ADA250, &unk_100823780);
  v33 = sub_100799224();
  v34 = swift_dynamicCast();
  v35 = *(v33 - 8);
  (*(v35 + 56))(v23, v34 ^ 1u, 1, v33);
  sub_1000077D8(v23, v20, &qword_100ADA258, &unk_100817FA0);
  v65 = *(v35 + 48);
  v36 = v65(v20, 1, v33);
  v63 = v35;
  if (v36 == 1)
  {
    sub_100007840(v20, &qword_100ADA258, &unk_100817FA0);
    v25 = 0;
    v59 = 1;
  }

  else
  {
    v56 = a1;
    v37 = v35;
    v38 = sub_100799204();
    (*(v37 + 8))(v20, v33);
    if (v38)
    {
      v25 = *(v38 + 16);

      v59 = 0;
    }

    else
    {
      v25 = 0;
      v59 = 1;
    }

    a1 = v56;
  }

  sub_1000077D8(v23, v17, &qword_100ADA258, &unk_100817FA0);
  if (v65(v17, 1, v33) == 1)
  {
    sub_100007840(v17, &qword_100ADA258, &unk_100817FA0);
  }

  else
  {
    v39 = sub_100799204();
    (*(v63 + 8))(v17, v33);
    if (v39)
    {
      v40 = v64;
      if (*(v39 + 16))
      {
        v41 = *(v4 + 16);
        v42 = v39 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
        v55 = v25;
        v43 = v61;
        v41(v61, v42, v3);

        sub_1002C7210(&qword_100ADA260, &type metadata accessor for LibraryPDFInfo, &protocol conformance descriptor for LibraryPDFInfo);
        v44 = sub_1007992E4();
        v57 = v45;
        v58 = v44;
        v46 = v43;
        v25 = v55;
        (*(v4 + 8))(v46, v3);
      }

      else
      {

        v57 = 0;
        v58 = 0;
      }

      goto LABEL_18;
    }
  }

  v57 = 0;
  v58 = 0;
  v40 = v64;
LABEL_18:
  v47 = v62;
  sub_1000077D8(v23, v62, &qword_100ADA258, &unk_100817FA0);
  if (v65(v47, 1, v33) == 1)
  {
    sub_100007840(v47, &qword_100ADA258, &unk_100817FA0);
    v64 = 0;
    v61 = 0;
  }

  else
  {
    sub_1002C7210(&qword_100ADA268, &type metadata accessor for LibraryAudiobookInfo, &protocol conformance descriptor for LibraryAudiobookInfo);
    v64 = sub_1007992D4();
    v61 = v48;
    (*(v63 + 8))(v47, v33);
  }

  sub_1000077D8(v23, v40, &qword_100ADA258, &unk_100817FA0);
  v49 = v65(v40, 1, v33);
  v60 = v23;
  if (v49 == 1)
  {
    sub_100007840(v40, &qword_100ADA258, &unk_100817FA0);
    v31 = 2;
LABEL_31:
    v28 = v58;
    result = sub_100007840(v60, &qword_100ADA258, &unk_100817FA0);
    v30 = v59;
    v29 = v57;
    v26 = v64;
    v27 = v61;
    goto LABEL_32;
  }

  v55 = v25;
  v50 = sub_100799204();
  result = (*(v63 + 8))(v40, v33);
  if (!v50)
  {
    v31 = 2;
LABEL_30:
    v25 = v55;
    goto LABEL_31;
  }

  v56 = a1;
  v51 = 0;
  v52 = *(v50 + 16);
  while (1)
  {
    v53 = v51;
    if (v52 == v51)
    {
LABEL_28:
      v31 = v52 == v53;

      a1 = v56;
      goto LABEL_30;
    }

    if (v51 >= *(v50 + 16))
    {
      break;
    }

    (*(v4 + 16))(v6, v50 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v51++, v3);
    sub_1002C7210(&qword_100ADA260, &type metadata accessor for LibraryPDFInfo, &protocol conformance descriptor for LibraryPDFInfo);
    v54 = sub_1007992F4();
    result = (*(v4 + 8))(v6, v3);
    if ((v54 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1002C6408(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1002C6568(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1002C6724(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1002C6568(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v17 = result;
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    sub_100028940(*(a3 + 48) + 40 * v13, v21);
    sub_1000077D8(*(a3 + 56) + 32 * v13, v20, &unk_100AD5B40, &unk_100811300);
    sub_100028940(v21, v18);
    sub_1000077D8(v20, v19, &unk_100AD5B40, &unk_100811300);
    v14 = v19[3];
    sub_100007840(v18, &qword_100ADA240, &unk_100817F70);
    sub_100007840(v20, &unk_100AD5B40, &unk_100811300);
    result = sub_10002899C(v21);
    if (v14)
    {
      *(v17 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_1002C679C(v17, a2, v22, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1002C679C(v17, a2, v22, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1002C6724(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1002C6568(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1002C679C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1001F1160(&unk_100ADACF0, &qword_10080CB20);
  result = sub_1007A3924();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    sub_100028940(*(v4 + 48) + 40 * v16, v34);
    sub_1000077D8(*(v4 + 56) + 32 * v16, v33, &unk_100AD5B40, &unk_100811300);
    v30 = v34[0];
    v31 = v34[1];
    v32 = v35;
    v28 = v33[0];
    v29 = v33[1];
    result = sub_1007A3694(*(v9 + 40));
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = *(v9 + 48) + 40 * v20;
    *v25 = v30;
    *(v25 + 16) = v31;
    *(v25 + 32) = v32;
    v26 = (*(v9 + 56) + 32 * v20);
    *v26 = v28;
    v26[1] = v29;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1002C6A2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v6 = a4;
  v7 = a3;
  if (*(a4 + 16) == a3)
  {

    return v6;
  }

  sub_1001F1160(a5, a6);
  result = sub_1007A3924();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 64;
  v35 = v6;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v18 = 16 * (v15 | (v13 << 6));
    v19 = *(v6 + 56);
    v20 = (*(v6 + 48) + v18);
    v21 = *v20;
    v22 = v20[1];
    v36 = *(v19 + v18);
    sub_1007A3C04();

    v23 = v36;

    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
    result = sub_1007A3C44();
    v24 = -1 << *(v11 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v14 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = 16 * v27;
    v33 = (*(v11 + 48) + v32);
    *v33 = v21;
    v33[1] = v22;
    *(*(v11 + 56) + v32) = v36;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    v6 = v35;
    if (!v7)
    {
      return v11;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      return v11;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1002C6C80(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = a1;
  v7 = sub_100796BB4();
  v54 = *(v7 - 8);
  __chkstk_darwin(v7);
  v55 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v50 = &v44 - v11;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v49 = v10;
  sub_1001F1160(&qword_100ADA2A0, &qword_100817FF8);
  result = sub_1007A3924();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v48;
  }

  v15 = 0;
  v46 = result;
  v47 = v54 + 16;
  v16 = v54 + 32;
  v17 = result + 64;
  v18 = v49;
  v45 = a4;
  while (v14)
  {
    v19 = v18;
    v20 = v16;
    v21 = __clz(__rbit64(v14));
    v51 = (v14 - 1) & v14;
LABEL_16:
    v24 = v21 | (v15 << 6);
    v25 = a4[7];
    v26 = (a4[6] + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = v54;
    v53 = *(v54 + 72);
    v30 = v50;
    (*(v54 + 16))(v50, v25 + v53 * v24, v19);
    v31 = *(v29 + 32);
    v32 = v30;
    v16 = v20;
    v31(v55, v32, v19);
    v13 = v46;
    sub_1007A3C04();

    v52 = v27;
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
    result = sub_1007A3C44();
    v33 = -1 << *(v13 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      v18 = v49;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v17 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    v18 = v49;
LABEL_26:
    *(v17 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v41 = (*(v13 + 48) + 16 * v36);
    v42 = v53;
    *v41 = v52;
    v41[1] = v28;
    result = (v31)(*(v13 + 56) + v36 * v42, v55, v18);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v45;
    v14 = v51;
    if (!a3)
    {
      return v13;
    }
  }

  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v23 = v48[v15];
    ++v22;
    if (v23)
    {
      v19 = v18;
      v20 = v16;
      v21 = __clz(__rbit64(v23));
      v51 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1002C7000(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1007A3AB4() & 1;
  }
}

uint64_t sub_1002C7058(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1007A3AB4() & 1;
  }
}

uint64_t sub_1002C70C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100AF1C40, &unk_100818DB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C7138(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002812C;

  return sub_1002BD598(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002C7210(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for TextFormatSizeLabel(uint64_t a1)
{
  result = qword_100ADA310;
  if (!qword_100ADA310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002C72EC(uint64_t a1)
{
  sub_1002C7370(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1002C7370(uint64_t a1)
{
  if (!qword_100ADA320)
  {
    sub_10079D474();
    v1 = sub_10079BCD4();
    if (!v2)
    {
      atomic_store(v1, &qword_100ADA320);
    }
  }
}

uint64_t sub_1002C73E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10079C824();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&unk_100ADBC10, &qword_100818090);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_1002C859C(v2, &v15 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079D474();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1007A29C4();
    v14 = sub_10079D244();
    sub_10079AB44(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10079C814();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_1002C75CC(uint64_t *a1@<X8>)
{
  v118 = a1;
  v2 = sub_100796CF4();
  __chkstk_darwin(v2 - 8);
  v137 = (&v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v121 = sub_1007A2204();
  v138 = *(v121 - 8);
  __chkstk_darwin(v121);
  v135 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v112 - v6;
  v136 = sub_1007A21D4();
  v8 = *(v136 - 8);
  __chkstk_darwin(v136);
  v117 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v116 = &v112 - v11;
  __chkstk_darwin(v12);
  v119 = &v112 - v13;
  __chkstk_darwin(v14);
  v16 = &v112 - v15;
  __chkstk_darwin(v17);
  v19 = &v112 - v18;
  v20 = sub_10079D474();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TextFormatSizeLabel(0);
  sub_1002C73E4(v23);
  v25 = sub_10079D344();
  (*(v21 + 8))(v23, v20);
  v134 = v25;
  Size = CTFontGetSize(v25);
  sub_1007A2154();
  v27 = (v1 + *(v24 + 24));
  v29 = *v27;
  v28 = v27[1];
  v30 = objc_opt_self();

  v133 = [v30 mainBundle];
  isa = [v133 localizations];
  if (!isa)
  {
    sub_1007A25E4();
    isa = sub_1007A25D4().super.isa;
  }

  v129 = sub_1001F1160(&unk_100AE0B30, &qword_10081B480);
  v32 = swift_allocObject();
  v128 = xmmword_10080B690;
  *(v32 + 16) = xmmword_10080B690;
  v130 = v29;
  *(v32 + 32) = v29;
  *(v32 + 40) = v28;
  v131 = v28;

  v33 = sub_1007A25D4().super.isa;

  v34 = [v30 preferredLocalizationsFromArray:isa forPreferences:v33];

  v35 = sub_1007A25E4();
  if (*(v35 + 16))
  {
  }

  v36 = v121;

  sub_1007A21F4();
  sub_1007A21E4();
  v37 = *(v8 + 16);
  v38 = v136;
  v127 = v8 + 16;
  v126 = v37;
  v37(v16, v19, v136);
  v39 = v138;
  v40 = *(v138 + 16);
  v125 = v138 + 16;
  v124 = v40;
  v40(v135, v7, v36);
  sub_100796C94();
  v132 = v16;
  v115 = sub_1007A22C4();
  v120 = v41;

  v42 = *(v39 + 8);
  v138 = v39 + 8;
  v123 = v42;
  v42(v7, v36);
  v43 = *(v8 + 8);
  v133 = (v8 + 8);
  v122 = v43;
  v43(v19, v38);
  sub_1007A2154();
  v44 = [v30 mainBundle];
  v45 = [v44 localizations];
  if (!v45)
  {
    sub_1007A25E4();
    v45 = sub_1007A25D4().super.isa;
  }

  v46 = swift_allocObject();
  *(v46 + 16) = v128;
  *(v46 + 32) = v130;
  *(v46 + 40) = v131;

  v47 = sub_1007A25D4().super.isa;

  v48 = [v30 preferredLocalizationsFromArray:v45 forPreferences:v47];

  v49 = sub_1007A25E4();
  v50 = v116;
  if (*(v49 + 16))
  {
  }

  v51 = v132;

  sub_1007A21F4();
  sub_1007A21E4();
  v52 = v119;
  v53 = v136;
  v126(v51, v119, v136);
  v124(v135, v7, v36);
  sub_100796C94();
  v54 = sub_1007A22C4();
  v56 = v55;

  v123(v7, v36);
  v122(v52, v53);
  v140 = 0.0;
  LOBYTE(v54) = sub_10028FB54(v54, v56, &v140);

  if (v54)
  {
    v57 = v140;
  }

  else
  {
    v57 = 1.0;
  }

  v58 = CTFontCopyFontDescriptor(v134);
  v59 = CTFontCreateWithFontDescriptor(v58, Size * v57, 0);

  v114 = v59;
  v119 = sub_10079D4F4();
  sub_1007A2154();
  v60 = [v30 mainBundle];
  v61 = [v60 localizations];
  v62 = v130;
  if (!v61)
  {
    sub_1007A25E4();
    v61 = sub_1007A25D4().super.isa;
  }

  v63 = swift_allocObject();
  *(v63 + 16) = v128;
  *(v63 + 32) = v62;
  *(v63 + 40) = v131;

  v64 = sub_1007A25D4().super.isa;

  v65 = [v30 preferredLocalizationsFromArray:v61 forPreferences:v64];

  v66 = sub_1007A25E4();
  if (*(v66 + 16))
  {
  }

  v67 = v121;

  sub_1007A21F4();
  sub_1007A21E4();
  v68 = v136;
  v126(v132, v50, v136);
  v124(v135, v7, v67);
  sub_100796C94();
  v113 = sub_1007A22C4();
  v121 = v69;

  v123(v7, v67);
  v122(v50, v68);
  v70 = v117;
  sub_1007A2154();
  v71 = [v30 mainBundle];
  v72 = [v71 localizations];
  if (!v72)
  {
    sub_1007A25E4();
    v72 = sub_1007A25D4().super.isa;
  }

  v73 = swift_allocObject();
  *(v73 + 16) = v128;
  v74 = v131;
  *(v73 + 32) = v130;
  *(v73 + 40) = v74;
  v75 = sub_1007A25D4().super.isa;

  v76 = [v30 preferredLocalizationsFromArray:v72 forPreferences:v75];

  v77 = sub_1007A25E4();
  if (*(v77 + 16))
  {
  }

  v78 = v132;

  sub_1007A21F4();
  sub_1007A21E4();
  v79 = v136;
  v126(v78, v70, v136);
  v124(v135, v7, v67);
  sub_100796C94();
  v80 = sub_1007A22C4();
  v82 = v81;

  v123(v7, v67);
  v122(v70, v79);
  v144 = 0.0;
  LOBYTE(v80) = sub_10028FB54(v80, v82, &v144);

  if (v80)
  {
    v83 = v144;
  }

  else
  {
    v83 = 1.0;
  }

  v84 = CTFontCopyFontDescriptor(v134);
  v85 = CTFontCreateWithFontDescriptor(v84, Size * v83, 0);

  v137 = v85;
  v136 = sub_10079D4F4();
  v138 = sub_10079C8C4();
  v142 = 0;
  v140 = *&v115;
  v141 = v120;
  sub_100206ECC();

  v86 = sub_10079D5D4();
  v88 = v87;
  v90 = v89;
  v135 = sub_10079D5A4();
  v133 = v91;
  LODWORD(v132) = v92;
  v94 = v93;
  sub_10020B430(v86, v88, v90 & 1);

  v140 = *&v113;
  v141 = v121;

  v95 = sub_10079D5D4();
  v97 = v96;
  v99 = v98;
  v100 = sub_10079D5A4();
  v102 = v101;
  v104 = v103;
  v106 = v105;
  sub_10020B430(v95, v97, v99 & 1);

  v107 = v132 & 1;
  v139 = v132 & 1;
  v108 = v135;
  v109 = v133;
  sub_1001F1894(v135, v133, v132 & 1);

  sub_1001F1894(v100, v102, v104 & 1);

  sub_10020B430(v100, v102, v104 & 1);

  sub_10020B430(v108, v109, v139);

  LOBYTE(v140) = v107;
  v143 = v104 & 1;

  v110 = v142;
  v111 = v118;
  *v118 = v138;
  v111[1] = 0;
  *(v111 + 16) = v110;
  v111[3] = v108;
  v111[4] = v109;
  *(v111 + 40) = v107;
  v111[6] = v94;
  v111[7] = v100;
  v111[8] = v102;
  *(v111 + 72) = v104 & 1;
  v111[10] = v106;
}

uint64_t sub_1002C859C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100ADBC10, &qword_100818090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002C860C()
{
  result = qword_100ADA358;
  if (!qword_100ADA358)
  {
    sub_1001F1234(&qword_100ADA360, &qword_100818098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA358);
  }

  return result;
}

uint64_t InfoBar.MessageQueue.__allocating_init()()
{
  v0 = sub_1001F1160(&qword_100AD9B00, &qword_100816FC0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - v2;
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  v5 = OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue__currentMessage;
  v7[1] = 0;
  sub_1001F1160(&qword_100ADA370, &qword_10082E460);
  sub_10079B964();
  (*(v1 + 32))(v4 + v5, v3, v0);
  *(v4 + OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_resolveTask) = 0;
  *(v4 + OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_timedMessages) = _swiftEmptyArrayStorage;
  *(v4 + OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_persistentMessage) = 0;
  return v4;
}

void sub_1002C8808(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v3);

  *a2 = v3;
}

uint64_t sub_1002C8888(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

uint64_t InfoBar.MessageQueue.currentMessage.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v1);

  return v1;
}

uint64_t sub_1002C8978(void *a1)
{
  swift_beginAccess();
  sub_1001F1160(&qword_100AD9B00, &qword_100816FC0);
  sub_10079B974();
  return swift_endAccess();
}

uint64_t sub_1002C89F0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1001F1160(&qword_100AD9AF0, &qword_100816F68);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  sub_1001F1160(&qword_100AD9B00, &qword_100816FC0);
  sub_10079B984();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t InfoBar.MessageQueue.$currentMessage.getter()
{
  swift_beginAccess();
  sub_1001F1160(&qword_100AD9B00, &qword_100816FC0);
  sub_10079B974();
  return swift_endAccess();
}

uint64_t InfoBar.MessageQueue.init()()
{
  v1 = sub_1001F1160(&qword_100AD9B00, &qword_100816FC0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v7 - v3;
  swift_defaultActor_initialize();
  v5 = OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue__currentMessage;
  v7[1] = 0;
  sub_1001F1160(&qword_100ADA370, &qword_10082E460);
  sub_10079B964();
  (*(v2 + 32))(v0 + v5, v4, v1);
  *(v0 + OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_resolveTask) = 0;
  *(v0 + OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_timedMessages) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_persistentMessage) = 0;
  return v0;
}

void InfoBar.MessageQueue.addTimedMessage(_:duration:)(uint64_t a1, double a2)
{
  v3 = v2;
  if (qword_100AD1690 != -1)
  {
    swift_once();
  }

  v6 = sub_10079ACE4();
  sub_100008B98(v6, qword_100B233B0);
  v7 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v7;
  v25 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  sub_1002CAF0C(v24, v23);
  sub_1000260E8(v8, v9);
  v10 = sub_10079ACC4();
  v11 = sub_1007A29A4();
  sub_1002CAF68(v24);
  sub_100007020(v8, v9);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23[0] = v13;
    *v12 = 136315394;
    v14 = sub_100470FE8(v24, *(a1 + 33) & 1);
    v16 = sub_1000070F4(v14, v15, v23);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2048;
    *(v12 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v10, v11, "Timed message added (%s), for %f seconds", v12, 0x16u);
    sub_1000074E0(v13);
  }

  type metadata accessor for InfoBar.TimedMessage(0);
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtCO5Books7InfoBar12TimedMessage_duration) = a2;
  _s5Books7InfoBarO7MessageC2id10Foundation4UUIDVvpfi_0();
  v18 = OBJC_IVAR____TtCO5Books7InfoBar7Message_currentVisibleStartTime;
  v19 = sub_100796BB4();
  v20 = *(*(v19 - 8) + 56);
  v20(v17 + v18, 1, 1, v19);
  v20(v17 + OBJC_IVAR____TtCO5Books7InfoBar7Message_lastVisibleEndTime, 1, 1, v19);
  v21 = *(a1 + 16);
  *(v17 + 16) = *a1;
  *(v17 + 32) = v21;
  *(v17 + 48) = *(a1 + 32);
  *(v17 + 64) = *(a1 + 48);
  v22 = OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_timedMessages;
  swift_beginAccess();
  sub_1002CAF0C(v24, v23);
  sub_1000260E8(v8, v9);
  sub_1007A25C4();
  if (*((*(v3 + v22) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v22) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1007A2614();
  }

  sub_1007A2644();
  swift_endAccess();
  sub_1002C9578();
}

double InfoBar.MessageQueue.setPersistentMessage(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_100AD1690 != -1)
  {
    swift_once();
  }

  v4 = sub_10079ACE4();
  sub_100008B98(v4, qword_100B233B0);
  v5 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v5;
  v23 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  sub_1002CAF0C(v22, v21);
  sub_1000260E8(v6, v7);
  v8 = sub_10079ACC4();
  v9 = sub_1007A29A4();
  sub_1002CAF68(v22);
  sub_100007020(v6, v7);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21[0] = v11;
    *v10 = 136315138;
    v12 = sub_100470FE8(v22, *(a1 + 33) & 1);
    v14 = sub_1000070F4(v12, v13, v21);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Persistent message added (%s)", v10, 0xCu);
    sub_1000074E0(v11);
  }

  type metadata accessor for InfoBar.Message(0);
  v15 = swift_allocObject();
  _s5Books7InfoBarO7MessageC2id10Foundation4UUIDVvpfi_0();
  v16 = OBJC_IVAR____TtCO5Books7InfoBar7Message_currentVisibleStartTime;
  v17 = sub_100796BB4();
  v18 = *(*(v17 - 8) + 56);
  v18(v15 + v16, 1, 1, v17);
  v18(v15 + OBJC_IVAR____TtCO5Books7InfoBar7Message_lastVisibleEndTime, 1, 1, v17);
  v19 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v19;
  *(v15 + 48) = *(a1 + 32);
  *(v15 + 64) = *(a1 + 48);
  *(v2 + OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_persistentMessage) = v15;
  sub_1002CAF0C(v22, v21);
  sub_1000260E8(v6, v7);

  return sub_1002C9578();
}

Swift::Void __swiftcall InfoBar.MessageQueue.removePersistentMessage()()
{
  v1 = v0;
  v2 = sub_100796BB4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_persistentMessage;
  v7 = *(v0 + OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_persistentMessage);
  if (v7)
  {
    v8 = qword_100AD1690;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_10079ACE4();
    sub_100008B98(v9, qword_100B233B0);

    v10 = sub_10079ACC4();
    v11 = sub_1007A29A4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v25 = v3;
      v13 = v12;
      v24 = swift_slowAlloc();
      v28 = v24;
      *v13 = 136315138;
      v14 = *(v7 + 16);
      v15 = *(v7 + 32);
      v30 = *(v7 + 48);
      v29[0] = v14;
      v29[1] = v15;
      v16 = *(v7 + 49);
      v26 = v2;
      v18 = *(v7 + 56);
      v17 = *(v7 + 64);
      sub_1002CAF0C(v29, v27);
      sub_1000260E8(v18, v17);
      v19 = sub_100470FE8(v29, v16);
      HIDWORD(v23) = v11;
      v21 = v20;
      sub_1002CAF68(v29);
      sub_100007020(v18, v17);
      v22 = sub_1000070F4(v19, v21, &v28);

      *(v13 + 4) = v22;
      v2 = v26;
      _os_log_impl(&_mh_execute_header, v10, BYTE4(v23), "Persistent message removed (%s)", v13, 0xCu);
      sub_1000074E0(v24);

      v3 = v25;
    }

    sub_100796BA4();
    InfoBar.Message.didHide(at:)(v5);
    (*(v3 + 8))(v5, v2);
    *(v1 + v6) = 0;

    sub_1002C9578();
  }
}

double sub_1002C9578()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_resolveTask;
  if (*(v0 + OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_resolveTask))
  {

    sub_10079B874();
  }

  *(v0 + v5) = 0;

  v6 = sub_1007A2744();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_10002281C(&qword_100ADA520, type metadata accessor for InfoBar.MessageQueue, &protocol conformance descriptor for InfoBar.MessageQueue);
  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = v7;
  v8[4] = v1;
  swift_retain_n();
  sub_1003457A0(0, 0, v4, &unk_100818170, v8);
  sub_10079B884();
  swift_allocObject();
  *(v1 + v5) = sub_10079B894();

  return result;
}

uint64_t sub_1002C9748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1002C97DC;

  return sub_1002C9A2C();
}

uint64_t sub_1002C97DC()
{
  v2 = *v1;
  v2[4] = v0;

  if (v0)
  {
    v3 = v2[2];

    return _swift_task_switch(sub_1002C9910, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1002C9910()
{
  if (qword_100AD1690 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100B233B0);
  v2 = sub_10079ACC4();
  v3 = sub_1007A29A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cancelled message resolution", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1002C9A2C()
{
  *(v1 + 40) = v0;
  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  *v2 = v1;
  v2[1] = sub_1002C9ABC;

  return sub_1002CA834();
}

uint64_t sub_1002C9ABC()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 40);

    return _swift_task_switch(sub_1002C9C04, v6, 0);
  }
}

uint64_t sub_1002C9C04()
{
  v1 = v0[7];
  sub_1007A2774();
  if (v1)
  {
    v2 = v0[1];
LABEL_3:

    return v2();
  }

  v4 = v0[5];
  v5 = OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_timedMessages;
  swift_beginAccess();
  v6 = *(v4 + v5);
  if (v6 >> 62)
  {
    v7 = sub_1007A38D4();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (qword_100AD1690 != -1)
  {
    swift_once();
  }

  v8 = sub_10079ACE4();
  sub_100008B98(v8, qword_100B233B0);
  v9 = sub_10079ACC4();
  v10 = sub_1007A29A4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v9, v10, "Resolving timed messages. (%ld in queue)", v11, 0xCu);
  }

  v12 = sub_1002CAB44();
  v0[8] = v12;
  if (!v12)
  {
    v13 = sub_10079ACC4();
    v14 = sub_1007A29A4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Clear messages", v15, 2u);
    }

    sub_1002CA0D0(0);
    goto LABEL_17;
  }

  sub_1002CA0D0(v12);
  sub_1007A2774();
  if (v7 < 1)
  {

LABEL_17:
    v2 = v0[1];
    goto LABEL_3;
  }

  v16 = swift_task_alloc();
  v0[9] = v16;
  *v16 = v0;
  v16[1] = sub_1002C9EDC;

  return sub_1002C9A2C();
}

uint64_t sub_1002C9EDC()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_1002CA06C;
  }

  else
  {
    v4 = sub_1002CA008;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002CA008()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CA06C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1002CA0D0(uint64_t a1)
{
  v3 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v3 - 8);
  v5 = &v54 - v4;
  v6 = sub_100796BB4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v58 = v1;
  sub_10079B9A4(v64);

  if (a1)
  {
    if (*&v64[0])
    {
      v10 = sub_100796BD4();

      if (v10)
      {
        return;
      }
    }
  }

  else
  {
    if (!*&v64[0])
    {
      return;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v64);

  v11 = *&v64[0];
  if (*&v64[0])
  {
    if (qword_100AD1690 != -1)
    {
      swift_once();
    }

    v12 = sub_10079ACE4();
    sub_100008B98(v12, qword_100B233B0);

    v13 = sub_10079ACC4();
    v14 = sub_1007A2994();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v55 = v9;
      v16 = v15;
      v54 = swift_slowAlloc();
      *&v60[0] = v54;
      *v16 = 136315138;
      v17 = *(v11 + 16);
      v18 = *(v11 + 32);
      v65 = *(v11 + 48);
      v64[0] = v17;
      v64[1] = v18;
      v19 = *(v11 + 49);
      v57 = v5;
      v56 = v6;
      v20 = *(v11 + 56);
      v21 = *(v11 + 64);
      sub_1002CAF0C(v64, v62);
      sub_1000260E8(v20, v21);
      v22 = sub_100470FE8(v64, v19);
      v24 = v23;
      sub_1002CAF68(v64);
      v25 = v20;
      v5 = v57;
      v26 = v21;
      v6 = v56;
      sub_100007020(v25, v26);
      v27 = sub_1000070F4(v22, v24, v60);

      *(v16 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v13, v14, "Hide message: %s", v16, 0xCu);
      sub_1000074E0(v54);

      v9 = v55;
    }

    sub_100796BA4();
    InfoBar.Message.didHide(at:)(v9);

    (*(v7 + 8))(v9, v6);
  }

  if (a1)
  {
    v28 = qword_100AD1690;

    if (v28 != -1)
    {
      swift_once();
    }

    v29 = sub_10079ACE4();
    sub_100008B98(v29, qword_100B233B0);

    v30 = sub_10079ACC4();
    v31 = sub_1007A2994();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v55 = v9;
      v34 = v33;
      v59[0] = v33;
      *v32 = 136315138;
      v35 = *(a1 + 16);
      v36 = *(a1 + 32);
      v63 = *(a1 + 48);
      v62[0] = v35;
      v62[1] = v36;
      v37 = *(a1 + 49);
      v57 = v5;
      v56 = v6;
      v38 = *(a1 + 56);
      v39 = *(a1 + 64);
      sub_1002CAF0C(v62, v60);
      sub_1000260E8(v38, v39);
      v40 = sub_100470FE8(v62, v37);
      v42 = v41;
      sub_1002CAF68(v62);
      v43 = v38;
      v5 = v57;
      v44 = v39;
      v6 = v56;
      sub_100007020(v43, v44);
      v45 = sub_1000070F4(v40, v42, v59);

      *(v32 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v30, v31, "Show message: %s", v32, 0xCu);
      sub_1000074E0(v34);
      v9 = v55;
    }

    sub_100796BA4();
    (*(v7 + 32))(v5, v9, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    v46 = OBJC_IVAR____TtCO5Books7InfoBar7Message_currentVisibleStartTime;
    swift_beginAccess();
    sub_100217AB4(v5, a1 + v46);
    swift_endAccess();
    v47 = *(a1 + 32);
    v60[0] = *(a1 + 16);
    v60[1] = v47;
    v61 = *(a1 + 48);
    LOBYTE(v46) = *(a1 + 49);
    v48 = *(a1 + 56);
    v49 = *(a1 + 64);
    sub_1002CAF0C(v60, v59);
    sub_1000260E8(v48, v49);
    sub_1002CB128(v60, v46);
    sub_1002CAF68(v60);
    sub_100007020(v48, v49);
  }

  else
  {
    if (qword_100AD1690 != -1)
    {
      swift_once();
    }

    v50 = sub_10079ACE4();
    sub_100008B98(v50, qword_100B233B0);
    v51 = sub_10079ACC4();
    v52 = sub_1007A2994();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "Clear messages", v53, 2u);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v59[0] = a1;

  sub_10079B9B4();
}

uint64_t sub_1002CA854()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v0 + 5);

  v2 = 0.0;
  if (v0[5])
  {
    type metadata accessor for InfoBar.TimedMessage(0);
    if (swift_dynamicCastClass())
    {
      v3 = v0[6];
      v4 = OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_timedMessages;
      swift_beginAccess();
      v5 = *(v3 + v4);
      if (v5 >> 62)
      {
        if (sub_1007A38D4())
        {
LABEL_5:

          InfoBar.Message.totalDisplayedTime.getter();
          v7 = v6;

          if (1.0 - v7 < 0.0)
          {
            v2 = 0.0;
          }

          else
          {
            v2 = 1.0 - v7;
          }

          goto LABEL_11;
        }
      }

      else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_5;
      }

      InfoBar.TimedMessage.timeRemaining.getter();
      v2 = v8;
    }
  }

LABEL_11:
  v9 = v2 * 1000.0 * 1000.0 * 1000.0;
  if (COERCE__INT64(fabs(v9)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v9 <= -1.0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v9 >= 1.84467441e19)
  {
LABEL_19:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(v1);
  }

  v10 = v9;
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_1002CAA50;
  v1 = v10;

  return static Task<>.sleep(nanoseconds:)(v1);
}

uint64_t sub_1002CAA50()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002CAB44()
{
  v2 = OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_timedMessages;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_12:
    v5 = *(v0 + OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_persistentMessage);

    return v5;
  }

  if (!sub_1007A38D4())
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {

    sub_1007A3784();
    swift_unknownObjectRelease();
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = swift_beginAccess();
  v3 = *(v0 + v2);
  v1 = v3 >> 62;
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = sub_1007A38D4();
  if (result)
  {
    result = sub_1007A38D4();
    if (result)
    {
LABEL_7:
      if ((v3 & 0xC000000000000001) == 0)
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v5 = *(v3 + 32);

        if (!v1)
        {
          goto LABEL_10;
        }

        goto LABEL_20;
      }

LABEL_19:
      v5 = sub_1007A3784();
      if (!v1)
      {
LABEL_10:
        result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_21;
      }

LABEL_20:
      result = sub_1007A38D4();
LABEL_21:
      if (result)
      {
        sub_1002F92B0(0, 1);
        swift_endAccess();
        return v5;
      }

      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_1002CACE8()
{
  v0 = UIAccessibilityAnnouncementNotification;
  sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
  sub_100005920(&qword_100AEB190, &unk_100AD61F0, &qword_10080FEF0, &protocol conformance descriptor for [A]);
  sub_1007A20B4();
  v1 = sub_1007A2214();

  UIAccessibilityPostNotification(v0, v1);
}

uint64_t InfoBar.MessageQueue.deinit()
{
  v1 = OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue__currentMessage;
  v2 = sub_1001F1160(&qword_100AD9B00, &qword_100816FC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t InfoBar.MessageQueue.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue__currentMessage;
  v2 = sub_1001F1160(&qword_100AD9B00, &qword_100816FC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for InfoBar.MessageQueue(uint64_t a1)
{
  result = qword_100ADA3A8;
  if (!qword_100ADA3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002CB010(uint64_t a1)
{
  sub_1002CB0C4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002CB0C4(uint64_t a1)
{
  if (!qword_100ADA3B8)
  {
    sub_1001F1234(&qword_100ADA370, &qword_10082E460);
    v1 = sub_10079B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_100ADA3B8);
    }
  }
}

double sub_1002CB128(uint64_t *a1, char a2)
{
  v4 = sub_1007A1C54();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007A1CA4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007A1CC4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v16);
  if (a2)
  {
    v37 = &v34 - v18;
    v38 = v7;
    v40 = v8;
    v41 = v5;
    v21 = *a1;
    v20 = a1[1];
    v22 = *(a1 + 32);
    v42 = v4;
    v39 = v9;
    if (v22 > 1)
    {
      v26 = a1[2];
      v25 = a1[3];
      v23 = v17;
      if (v22 == 2 || v25)
      {
        sub_1001F1160(&unk_100AE0B30, &qword_10081B480);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_10080EFF0;
        *(v24 + 32) = v21;
        *(v24 + 40) = v20;
        *(v24 + 48) = v26;
        *(v24 + 56) = v25;
        goto LABEL_8;
      }
    }

    else
    {
      v23 = v17;
    }

    sub_1001F1160(&unk_100AE0B30, &qword_10081B480);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_10080B690;
    *(v24 + 32) = v21;
    *(v24 + 40) = v20;
LABEL_8:
    sub_100017E74();
    sub_1002CAF0C(a1, aBlock);
    v27 = sub_1007A2D74();
    sub_1007A1CB4();
    v28 = v37;
    sub_1007A1D24();
    v29 = *(v13 + 8);
    v35 = v23;
    v36 = v29;
    v29(v15, v23);
    v30 = swift_allocObject();
    *(v30 + 16) = v24;
    aBlock[4] = sub_1002CB5AC;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A13768;
    v31 = _Block_copy(aBlock);
    sub_1007A1C74();
    v43 = _swiftEmptyArrayStorage;
    sub_10002281C(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
    sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
    v32 = v38;
    v33 = v42;
    sub_1007A3594();
    sub_1007A2D04();
    _Block_release(v31);

    (*(v41 + 8))(v32, v33);
    (*(v39 + 8))(v11, v40);
    v36(v28, v35);
  }

  return result;
}

uint64_t sub_1002CB5BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002812C;

  return sub_1002C9748(a1, v4, v5, v6);
}

NSString sub_1002CB694()
{
  result = sub_1007A2214();
  qword_100ADA528 = result;
  return result;
}

NSString sub_1002CB6CC()
{
  result = sub_1007A2214();
  qword_100ADA530 = result;
  return result;
}

void *sub_1002CB704(uint64_t a1)
{
  v2 = sub_100796CF4();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v25 - v6;
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v25 - v13;
  v28 = a1;
  sub_1001F1160(&unk_100AEC9E0, &unk_100833BE0);
  sub_1002CD1B4(&unk_100ADA540, &unk_100AEC9E0, &unk_100833BE0);
  if (sub_1007A28A4())
  {
    v15 = *(a1 + 16);
    v16 = _swiftEmptyArrayStorage;
    if (v15)
    {
      v31 = _swiftEmptyArrayStorage;
      sub_1007A37F4();
      sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
      v17 = a1 + 56;
      do
      {
        v19 = *(v17 - 24);
        v18 = *(v17 - 16);
        v30 = &type metadata for String;
        v28 = v19;
        v29 = v18;

        sub_1007A3414();
        sub_1007A37D4();
        sub_1007A3804();
        sub_1007A3814();
        sub_1007A37E4();
        v17 += 32;
        --v15;
      }

      while (v15);
      return v31;
    }
  }

  else
  {
    sub_1001F1160(&unk_100AD8160, &unk_100813160);
    v16 = swift_allocObject();
    *(v16 + 1) = xmmword_100811390;
    v25[1] = sub_10000A7C4(0, &qword_100AD8390, UIAction_ptr);
    sub_1007A2154();
    sub_100796C94();
    (*(v9 + 16))(v11, v14, v8);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v22 = v26;
    v23 = v27;
    (*(v26 + 16))(v4, v7, v27);
    sub_1007A22D4(v11, 0, 0, v21, v4, "File -> Open Recent -> None", 27, 2);
    (*(v22 + 8))(v7, v23);
    (*(v9 + 8))(v14, v8);
    v16[4] = sub_1007A31D4();
  }

  return v16;
}

Class sub_1002CBB4C(uint64_t a1)
{
  v57 = a1;
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v41 - v6;
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  v43 = sub_10000A7C4(0, &qword_100ADA970, UIKeyCommand_ptr);
  sub_1007A2154();
  sub_100796C94();
  v50 = *(v9 + 16);
  v51 = v9 + 16;
  v50(v11, v14, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v48 = objc_opt_self();
  v49 = ObjCClassFromMetadata;
  v16 = [v48 bundleForClass:ObjCClassFromMetadata];
  v47 = *(v2 + 16);
  v47(v4, v7, v1);
  v52 = v11;
  v54 = v4;
  sub_1007A22D4(v11, 0, 0, v16, v4, "File -> Open Book", 17, 2);
  v17 = *(v2 + 8);
  v55 = v2 + 8;
  v56 = v1;
  v46 = v17;
  v17(v7, v1);
  v18 = *(v9 + 8);
  v53 = v9 + 8;
  v45 = v18;
  v18(v14, v8);
  v19 = sub_1007A2214();
  v44 = objc_opt_self();
  v20 = [v44 systemImageNamed:v19];

  v58 = 0u;
  v59 = 0u;
  v21 = sub_1007A2964();
  sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  if (qword_100AD13C0 != -1)
  {
    swift_once();
  }

  v22 = qword_100ADA528;
  v42 = qword_100ADA528;
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100811360;
  *(v23 + 32) = v21;
  v24 = v22;
  v43 = v21;
  sub_1007A2154();
  sub_100796C94();
  v25 = v52;
  v50(v52, v14, v8);
  v26 = [v48 bundleForClass:v49];
  v27 = v54;
  v28 = v56;
  v47(v54, v7, v56);
  v29 = sub_1007A22D4(v25, 0, 0, v26, v27, "File -> Open Recent", 19, 2);
  v31 = v30;
  v46(v7, v28);
  v45(v14, v8);
  v32 = sub_1007A2214();
  v33 = [v44 systemImageNamed:v32];

  v38 = sub_1002CB704(v57);
  v62._countAndFlagsBits = v29;
  v62._object = v31;
  v64.value._countAndFlagsBits = 0;
  v64.value._object = 0;
  v60.value.super.isa = v33;
  v60.is_nil = 0;
  v34.value = 0;
  *(v23 + 40) = sub_1007A30C4(v62, v64, v60, v34, 0xFFFFFFFFFFFFFFFFLL, v38, v39);
  v63._countAndFlagsBits = 0;
  v63._object = 0xE000000000000000;
  v65.value._countAndFlagsBits = 0;
  v65.value._object = 0;
  v61.value.super.isa = 0;
  v61.is_nil = v42;
  v35.value = 1;
  isa = sub_1007A30C4(v63, v65, v61, v35, 0xFFFFFFFFFFFFFFFFLL, v23, v40).super.super.isa;

  return isa;
}

void *sub_1002CC0E0(uint64_t a1)
{
  v2 = sub_100796CF4();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v25 - v6;
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v25 - v13;
  v28 = a1;
  sub_1001F1160(&unk_100AECA70, &qword_100818178);
  sub_1002CD1B4(&qword_100ADA538, &unk_100AECA70, &qword_100818178);
  if (sub_1007A28A4())
  {
    v15 = *(a1 + 16);
    v16 = _swiftEmptyArrayStorage;
    if (v15)
    {
      v31 = _swiftEmptyArrayStorage;
      sub_1007A37F4();
      sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
      v17 = a1 + 56;
      do
      {
        v19 = *(v17 - 24);
        v18 = *(v17 - 16);
        v30 = &type metadata for String;
        v28 = v19;
        v29 = v18;

        sub_1007A3414();
        sub_1007A37D4();
        sub_1007A3804();
        sub_1007A3814();
        sub_1007A37E4();
        v17 += 32;
        --v15;
      }

      while (v15);
      return v31;
    }
  }

  else
  {
    sub_1001F1160(&unk_100AD8160, &unk_100813160);
    v16 = swift_allocObject();
    *(v16 + 1) = xmmword_100811390;
    v25[1] = sub_10000A7C4(0, &qword_100AD8390, UIAction_ptr);
    sub_1007A2154();
    sub_100796C94();
    (*(v9 + 16))(v11, v14, v8);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v22 = v26;
    v23 = v27;
    (*(v26 + 16))(v4, v7, v27);
    sub_1007A22D4(v11, 0, 0, v21, v4, "File -> Add to Collection -> No Collection", 42, 2);
    (*(v22 + 8))(v7, v23);
    (*(v9 + 8))(v14, v8);
    v16[4] = sub_1007A31D4();
  }

  return v16;
}

Class sub_1002CC53C(uint64_t a1)
{
  v64 = a1;
  v74 = sub_100796CF4();
  v1 = *(v74 - 8);
  __chkstk_darwin(v74);
  v3 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v57 - v5;
  v7 = sub_1007A21D4();
  v75 = *(v7 - 8);
  v8 = v75;
  __chkstk_darwin(v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v57 - v12;
  v63 = sub_10000A7C4(0, &qword_100ADA970, UIKeyCommand_ptr);
  sub_1007A2154();
  sub_100796C94();
  v70 = *(v8 + 16);
  v71 = v10;
  v70(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v69 = ObjCClassFromMetadata;
  v68 = objc_opt_self();
  v15 = [v68 bundleForClass:ObjCClassFromMetadata];
  v16 = v1 + 16;
  v67 = *(v1 + 16);
  v72 = v3;
  v58 = v6;
  v17 = v74;
  v67(v3, v6, v74);
  v18 = sub_1007A22D4(v10, 0, 0, v15, v3, "File -> New Collection", 22, 2);
  v61 = v19;
  v62 = v18;
  v20 = *(v1 + 8);
  v73 = v1 + 8;
  v66 = v20;
  v21 = v6;
  v22 = v13;
  v20(v21, v17);
  v23 = *(v75 + 8);
  v75 += 8;
  v65 = v23;
  v24 = v7;
  v23(v13, v7);
  v25 = sub_1007A2214();
  v26 = objc_opt_self();
  v27 = [v26 systemImageNamed:v25];

  v76 = 0u;
  v77 = 0u;
  v60 = sub_1007A2964();
  v59 = sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
  sub_1007A2154();
  v28 = v58;
  sub_100796C94();
  v29 = v71;
  v63 = v8 + 16;
  v70(v71, v22, v24);
  v30 = [v68 bundleForClass:v69];
  v31 = v72;
  v62 = v16;
  v67(v72, v28, v17);
  sub_1007A22D4(v29, 0, 0, v30, v31, "File -> New Collection From Selection", 37, 2);
  v66(v28, v17);
  v32 = v22;
  v33 = v24;
  v65(v22, v24);
  v34 = sub_1007A2214();
  v61 = v26;
  v35 = [v26 systemImageNamed:v34];

  v76 = 0u;
  v77 = 0u;
  v59 = sub_1007A3414();
  sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  if (qword_100AD13C8 != -1)
  {
    swift_once();
  }

  v36 = qword_100ADA530;
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100811370;
  v38 = v36;
  sub_1007A2154();
  sub_100796C94();
  v39 = v28;
  v40 = v71;
  v70(v71, v32, v24);
  v41 = [v68 bundleForClass:v69];
  v42 = v72;
  v43 = v74;
  v67(v72, v39, v74);
  v44 = sub_1007A22D4(v40, 0, 0, v41, v42, "File -> Add to Collection", 25, 2);
  v46 = v45;
  v66(v39, v43);
  v65(v32, v33);
  v47 = sub_1007A2214();
  v48 = [v61 systemImageNamed:v47];

  v54 = sub_1002CC0E0(v64);
  v80._countAndFlagsBits = v44;
  v80._object = v46;
  v82.value._countAndFlagsBits = 0;
  v82.value._object = 0;
  v78.value.super.isa = v48;
  v78.is_nil = 0;
  v49.value = 0;
  v50.super.super.isa = sub_1007A30C4(v80, v82, v78, v49, 0xFFFFFFFFFFFFFFFFLL, v54, v55).super.super.isa;
  v51 = v60;
  *(v37 + 32) = v50;
  *(v37 + 40) = v51;
  *(v37 + 48) = v59;
  v81._countAndFlagsBits = 0;
  v81._object = 0xE000000000000000;
  v83.value._countAndFlagsBits = 0;
  v83.value._object = 0;
  v79.value.super.isa = 0;
  v79.is_nil = v36;
  v52.value = 1;
  return sub_1007A30C4(v81, v83, v79, v52, 0xFFFFFFFFFFFFFFFFLL, v37, v56).super.super.isa;
}

void sub_1002CCCB4(void *a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v33 = sub_100796CF4();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v32 - v17;
  [a1 removeMenuForIdentifier:{UIMenuOpenRecent, v16}];
  [a1 removeMenuForIdentifier:UIMenuNewItem];
  [a1 removeMenuForIdentifier:UIMenuDocument];
  [a1 removeMenuForIdentifier:UIMenuOpen];
  v19 = sub_1002CBB4C(a2);
  [a1 insertChildMenu:v19 atStartOfMenuForIdentifier:UIMenuFile];

  v20 = sub_1002CC53C(v32);
  if (qword_100AD13C0 != -1)
  {
    swift_once();
  }

  [a1 insertSiblingMenu:v20 afterMenuForIdentifier:{qword_100ADA528, v32}];

  v32 = sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v18, v11);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v23 = v33;
  (*(v5 + 16))(v7, v10, v33);
  sub_1007A22D4(v14, 0, 0, v22, v7, "File -> Import…", 17, 0);
  (*(v5 + 8))(v10, v23);
  (*(v12 + 8))(v18, v11);
  v24 = sub_1007A2214();
  v25 = [objc_opt_self() systemImageNamed:v24];

  v34 = 0u;
  v35 = 0u;
  v26 = sub_1007A3414();
  sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100811390;
  *(v27 + 32) = v26;
  v30 = v27;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  v38.value._countAndFlagsBits = 0;
  v38.value._object = 0;
  v36.value.super.isa = 0;
  v36.is_nil = 0;
  v28.value = 1;
  v29.super.super.isa = sub_1007A30C4(v37, v38, v36, v28, 0xFFFFFFFFFFFFFFFFLL, v30, v31).super.super.isa;
  if (qword_100AD13C8 != -1)
  {
    swift_once();
  }

  [a1 insertSiblingMenu:v29.super.super.isa afterMenuForIdentifier:qword_100ADA530];
}

uint64_t sub_1002CD1B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1002CD208(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10079ACE4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_downloadState;
  if (*&v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_downloadState] != a1)
  {
    (*(v5 + 16))(v8, &v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger], v4, v6);
    v10 = v2;
    v11 = sub_10079ACC4();
    v12 = sub_1007A29D4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134218240;
      *(v13 + 4) = a1;
      *(v13 + 12) = 2048;
      *(v13 + 14) = *&v2[v9];

      _os_log_impl(&_mh_execute_header, v11, v12, "downloadState did change from %ld to %ld", v13, 0x16u);
    }

    else
    {

      v11 = v10;
    }

    (*(v5 + 8))(v8, v4);
  }
}

char *sub_1002CD404()
{
  v1 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor____lazy_storage___playbackRates;
  if (*(v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor____lazy_storage___playbackRates))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor____lazy_storage___playbackRates);
  }

  else
  {
    v2 = sub_1002CD46C(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

char *sub_1002CD46C(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  sub_10000E3E8(v1, v1[3]);
  v2 = sub_100462804();
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = (v2 + 32);
    v5 = _swiftEmptyArrayStorage;
    do
    {
      v6 = *v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_10066A764(0, *(v5 + 2) + 1, 1, v5);
      }

      v8 = *(v5 + 2);
      v7 = *(v5 + 3);
      if (v8 >= v7 >> 1)
      {
        v5 = sub_10066A764((v7 > 1), v8 + 1, 1, v5);
      }

      *(v5 + 2) = v8 + 1;
      *&v5[4 * v8 + 32] = v6;
      ++v4;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  return v5;
}

void sub_1002CD584(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = Strong[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_multipleRoutesDetected];

  v4 = swift_unknownObjectUnownedLoadStrong();
  v5 = swift_unknownObjectUnownedLoadStrong();
  v6 = *&v5[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_routeDetector];

  LOBYTE(v5) = [v6 multipleRoutesDetected];
  v4[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_multipleRoutesDetected] = v5;

  v7 = swift_unknownObjectUnownedLoadStrong();
  LODWORD(v4) = v7[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_multipleRoutesDetected];

  if (v3 != v4)
  {
    v8 = swift_unknownObjectUnownedLoadStrong();
    v9 = swift_unknownObjectWeakLoadStrong();

    if (v9)
    {
      v10 = swift_unknownObjectUnownedLoadStrong();
      v11 = v10[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_multipleRoutesDetected];

      v12 = type metadata accessor for AudiobookNowPlayingPresenter(0);
      sub_10055BB14(v11, v12, &off_100A22E18);

      swift_unknownObjectRelease();
    }
  }
}

void sub_1002CD6D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_10079ACE4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*&Strong[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_cachedArtwork])
    {
    }

    else
    {
      v7 = Strong;
      (*(v3 + 16))(v5, &Strong[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger], v2);
      v8 = sub_10079ACC4();
      v9 = sub_1007A29D4();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Cached artwork is nil after becoming active again.  Will generate a generic cover.", v10, 2u);
      }

      (*(v3 + 8))(v5, v2);
      v11 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager;
      swift_beginAccess();
      sub_100009864(v7 + v11, v16);
      sub_10000E3E8(v16, v16[3]);
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = sub_1002D7C64;
      *(v14 + 32) = v12;
      *(v14 + 40) = vdupq_n_s64(0x4098000000000000uLL);
      swift_retain_n();

      sub_1007A2CD4();

      sub_1000074E0(v16);
    }
  }
}

uint64_t type metadata accessor for AudiobookNowPlayingInteractor(uint64_t a1)
{
  result = qword_100ADA650;
  if (!qword_100ADA650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002CDBAC(uint64_t a1)
{
  sub_1002CDD3C(319);
  if (v1 <= 0x3F)
  {
    sub_10079ACE4();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002CDD3C(uint64_t a1)
{
  if (!qword_100AD91B0)
  {
    sub_100796BB4();
    v1 = sub_1007A3454();
    if (!v2)
    {
      atomic_store(v1, &qword_100AD91B0);
    }
  }
}

void sub_1002CDD94()
{
  v1 = sub_10079ACE4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = &v0[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager];
  swift_beginAccess();
  v9 = (*sub_10000E3E8(v8, *(v8 + 3)) + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_storeID);
  v10 = v9[1];
  if (v10 && (v11 = *&v0[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_storeManager]) != 0)
  {
    v12 = *v9;

    v13 = [v11 clientApplicationController];
    (*(v2 + 16))(v7, &v0[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger], v1);

    v14 = sub_10079ACC4();
    v15 = sub_1007A29D4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1000070F4(v12, v10, &v28);
      _os_log_impl(&_mh_execute_header, v14, v15, "cancelDownload storeID: %s", v16, 0xCu);
      sub_1000074E0(v17);
    }

    (*(v2 + 8))(v7, v1);
    v18 = sub_1007A2214();

    [v13 cancelDownloadingAssetWithStoreId:v18];
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v2 + 16))(v4, &v0[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger], v1);
    v19 = v0;
    v20 = sub_10079ACC4();
    v21 = sub_1007A2994();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136315138;
      v24 = (*sub_10000E3E8(v8, *(v8 + 3)) + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_storeID);
      if (v24[1])
      {
        v25 = *v24;
        v26 = v24[1];
      }

      else
      {
        v26 = 0xE300000000000000;
        v25 = 7104878;
      }

      v27 = sub_1000070F4(v25, v26, &v28);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "No storeID (%s) or no storeController.  Cannot cancel download.", v22, 0xCu);
      sub_1000074E0(v23);
    }

    (*(v2 + 8))(v4, v1);
  }
}

void sub_1002CE180(unint64_t a1)
{
  v3 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = [objc_opt_self() now];
  sub_100796B64();

  v7 = sub_100796BB4();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  v8 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_lastUserProgressChangeTimestamp;
  swift_beginAccess();
  sub_1002391EC(v5, v1 + v8, &unk_100ADB5C0, &unk_100816880);
  swift_endAccess();
  v9 = (v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  sub_10000E3E8(v9, v9[3]);
  sub_100462C80(a1);
}

void sub_1002CE2EC(char a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v5 - 8);
  v7 = &v13[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [objc_opt_self() now];
    sub_100796B64();

    v11 = sub_100796BB4();
    (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    v12 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_lastUserProgressChangeTimestamp;
    swift_beginAccess();
    sub_1002391EC(v7, v9 + v12, &unk_100ADB5C0, &unk_100816880);
    swift_endAccess();
  }

  if (a3)
  {
    a3(a1 & 1);
  }
}

uint64_t sub_1002CE464(uint64_t a1, unsigned __int16 a2, float a3)
{
  v4 = v3;
  v7 = a2;
  v8 = sub_10079ACE4();
  __chkstk_darwin(v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = __chkstk_darwin(v11);
  v15 = &v44 - v12;
  v44 = v13;
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        v46 = a3;
        v45 = 3;
        goto LABEL_17;
      }

      goto LABEL_8;
    }

    v46 = 0.0;
    v20 = (v7 & 0xFFFE) == 2;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v45 = 0;
        v46 = a3;
        goto LABEL_17;
      }

LABEL_8:
      (*(v13 + 16))(&v44 - v12, v4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v8, v14);
      v16 = sub_10079ACC4();
      v17 = sub_1007A29B4();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 134217984;
        *(v18 + 4) = a1;
        _os_log_impl(&_mh_execute_header, v16, v17, "Unhandled download enum value %ld in interactor", v18, 0xCu);
      }

      (*(v44 + 8))(v15, v8);
      v46 = 0.0;
      v19 = 3;
      goto LABEL_16;
    }

    v46 = 0.0;
    v20 = v7 == 3;
  }

  if (v20)
  {
    v19 = 1;
  }

  else
  {
    v19 = 3;
  }

LABEL_16:
  v45 = v19 | 0x100000000;
LABEL_17:
  v21 = (v4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  if ((*(*sub_10000E3E8(v21, v21[3]) + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_streaming) & 1) == 0)
  {
    v23 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_transitionState;
    goto LABEL_25;
  }

  v22 = [*(*sub_10000E3E8(v21 v21[3]) + OBJC:"state" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  v23 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_transitionState;
  v24 = *(v4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_transitionState);
  if (v24 == 2)
  {
    if (a1 != 3)
    {
      goto LABEL_27;
    }

    if (v22 != 3)
    {
      if (v22 == 2)
      {
        if (v7 != 1)
        {
          goto LABEL_50;
        }

        goto LABEL_48;
      }

      goto LABEL_25;
    }

    if (v7 != 1)
    {
LABEL_50:
      *(v4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_transitionState) = 0;
      goto LABEL_27;
    }
  }

  else
  {
    if ((v24 & 1) != 0 || v7 != 1)
    {
      goto LABEL_27;
    }

    if (v22 != 3)
    {
      if (v22 == 2)
      {
LABEL_48:
        v25 = 1;
        goto LABEL_26;
      }

LABEL_25:
      v25 = 2;
LABEL_26:
      *(v4 + v23) = v25;
      goto LABEL_27;
    }
  }

  *(v4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_transitionState) = 2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v40 = Strong;
    v41 = swift_unknownObjectWeakLoadStrong();
    if (v41)
    {
      v42 = v41;
      v43 = v40;
      [v42 audiobookNowPlayingViewController:v43 shouldStream:0];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_27:
  v26 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_assetState;
  v27 = *(v4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_assetState);
  v28 = *(v4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_downloadState);
  *(v4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_downloadState) = a1;
  sub_1002CD208(v28);
  *(v4 + v26) = v7;
  if (v7 == 2)
  {
    v29 = sub_10000E3E8(v21, v21[3]);
    sub_10000E3E8((*v29 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider), *(*v29 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider + 24));
    sub_10049F9E4(a3);
  }

  v30 = [*(*sub_10000E3E8(v21 v21[3]) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  if (v30)
  {
    v31 = [v30 isAudiobookPreview];
    swift_unknownObjectRelease();
    if (v7 == 2 && v31 && v27 == 0)
    {
      v33 = v44;
      (*(v44 + 16))(v10, v4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v8);
      v34 = sub_10079ACC4();
      v35 = sub_1007A29D4();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Stopping playback of audiobook preview because user purchased the audiobook", v36, 2u);
      }

      (*(v33 + 8))(v10, v8);
      [*(*sub_10000E3E8(v21 v21[3]) + OBJC:"stop" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for AudiobookNowPlayingPresenter(0);
    sub_10055B8D4(v45);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v38 = type metadata accessor for AudiobookNowPlayingPresenter(0);
    sub_10055B8C0(*&v46, HIDWORD(v45), v38, &off_100A22E18);
    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1002CEA34()
{
  v1 = v0;
  v2 = sub_10079ACE4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  v9 = (v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  v10 = (*sub_10000E3E8(v9, v9[3]) + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_storeID);
  v12 = v10[1];
  if (v12)
  {
    v13 = *v10;
    v14 = *(v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_networkMonitor);

    v15 = [v14 isConnected];
    v16 = *(v3 + 16);
    v17 = v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger;
    if (v15)
    {
      v16(v8, v17, v2);

      v18 = sub_10079ACC4();
      v19 = sub_1007A29D4();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v30 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_1000070F4(v13, v12, &v30);
        _os_log_impl(&_mh_execute_header, v18, v19, "startDownload storeID: %s", v20, 0xCu);
        sub_1000074E0(v21);
      }

      (*(v3 + 8))(v8, v2);
      if (swift_unknownObjectWeakLoadStrong())
      {
        type metadata accessor for AudiobookNowPlayingPresenter(0);
        sub_10055B8D4(2);
        swift_unknownObjectRelease();
      }

      v22 = *(v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_storeManager);
      if (v22)
      {
        v23 = [v22 clientApplicationController];
        swift_unknownObjectRetain();
        v24 = sub_1007A2214();

        [v23 startOrResumeDownloadingAssetWithStoreId:v24];

        swift_unknownObjectRelease_n();
      }

      else
      {
      }
    }

    else
    {
      v16(v5, v17, v2);

      v25 = sub_10079ACC4();
      v26 = sub_1007A29B4();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v30 = v28;
        *v27 = 136315138;
        v29 = sub_1000070F4(v13, v12, &v30);

        *(v27 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v25, v26, "Not connected to internet. Cannot start download of storeID: %s", v27, 0xCu);
        sub_1000074E0(v28);
      }

      else
      {
      }

      (*(v3 + 8))(v5, v2);
      return sub_1002CEE6C();
    }
  }

  return result;
}

double sub_1002CEE6C()
{
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v51 - v6;
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v51 - v13;
  sub_1007A2154();
  sub_100796C94();
  v53 = *(v9 + 16);
  v54 = v9 + 16;
  v53(v11, v14, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v52 = objc_opt_self();
  v55 = ObjCClassFromMetadata;
  v16 = [v52 bundleForClass:ObjCClassFromMetadata];
  v56 = *(v2 + 16);
  v57 = v2 + 16;
  v56(v4, v7, v1);
  v58 = v11;
  v61 = v4;
  v51 = sub_1007A22D4(v11, 0, 0, v16, v4, "Audiobook Unavailable", 21, 2);
  v62 = v17;
  v63 = v7;
  v18 = *(v2 + 8);
  v64 = v2 + 8;
  v65 = v1;
  v60 = v18;
  v18(v7, v1);
  v59 = *(v9 + 8);
  v59(v14, v8);
  v19 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_networkMonitor;
  v20 = [*(v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_networkMonitor) isAirplaneModeEnabled];
  v21 = *(v0 + v19);
  if (v20)
  {
    if ([v21 hasWAPICapability])
    {
      sub_1007A2154();
      v22 = v63;
      sub_100796C94();
      v23 = v58;
      v53(v58, v14, v8);
      v24 = [v52 bundleForClass:v55];
      v25 = v61;
      v26 = v65;
      v56(v61, v22, v65);
      v27 = sub_1007A22D4(v23, 0, 0, v24, v25, "To play this audiobook, turn off Airplane Mode or turn on WLAN in Settings.", 75, 2);
    }

    else
    {
      sub_1007A2154();
      v22 = v63;
      sub_100796C94();
      v34 = v58;
      v53(v58, v14, v8);
      v35 = [v52 bundleForClass:v55];
      v36 = v61;
      v26 = v65;
      v56(v61, v22, v65);
      v27 = sub_1007A22D4(v34, 0, 0, v35, v36, "To play this audiobook, turn off Airplane Mode or turn on Wi-Fi in Settings.", 76, 2);
    }

    v37 = v27;
    v38 = v28;
  }

  else
  {
    if ([v21 hasCellularCapability] && (objc_msgSend(*(v0 + v19), "hasCellularConnection") & 1) == 0)
    {
      if ([*(v0 + v19) hasWAPICapability])
      {
        sub_1007A2154();
        v22 = v63;
        sub_100796C94();
        v42 = v58;
        v53(v58, v14, v8);
        v43 = [v52 bundleForClass:v55];
        v44 = v61;
        v26 = v65;
        v56(v61, v22, v65);
        v32 = sub_1007A22D4(v42, 0, 0, v43, v44, "To play this audiobook, turn on Cellular Data or WLAN in Settings.", 66, 2);
      }

      else
      {
        sub_1007A2154();
        v22 = v63;
        sub_100796C94();
        v45 = v58;
        v53(v58, v14, v8);
        v46 = [v52 bundleForClass:v55];
        v47 = v61;
        v26 = v65;
        v56(v61, v22, v65);
        v32 = sub_1007A22D4(v45, 0, 0, v46, v47, "To play this audiobook, turn on Cellular Data or Wi-Fi in Settings.", 67, 2);
      }
    }

    else if ([*(v0 + v19) hasWAPICapability])
    {
      sub_1007A2154();
      v22 = v63;
      sub_100796C94();
      v29 = v58;
      v53(v58, v14, v8);
      v30 = [v52 bundleForClass:v55];
      v31 = v61;
      v26 = v65;
      v56(v61, v22, v65);
      v32 = sub_1007A22D4(v29, 0, 0, v30, v31, "To play this audiobook, turn on WLAN in Settings.", 49, 2);
    }

    else
    {
      sub_1007A2154();
      v22 = v63;
      sub_100796C94();
      v39 = v58;
      v53(v58, v14, v8);
      v40 = [v52 bundleForClass:v55];
      v41 = v61;
      v26 = v65;
      v56(v61, v22, v65);
      v32 = sub_1007A22D4(v39, 0, 0, v40, v41, "To play this audiobook, turn on Wi-Fi in Settings.", 50, 2);
    }

    v37 = v32;
    v38 = v33;
  }

  v60(v22, v26);
  v59(v14, v8);
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v49 = Strong;
      sub_100660BB4(v51, v62, v37, v38, v49);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

  return result;
}

double sub_1002CF6CC()
{
  v1 = (v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  if ([*(*sub_10000E3E8(v1 v1[3]) + OBJC:"state" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)] != 2)
  {
    return sub_1002CF778(1);
  }

  [*(*sub_10000E3E8(v1 v1[3]) + OBJC:"pause" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  return result;
}

double sub_1002CF778(char a1)
{
  v3 = sub_100796BB4();
  v63 = *(v3 - 8);
  __chkstk_darwin(v3);
  v64 = &v56[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10079ACE4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v56[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v56[-v10];
  __chkstk_darwin(v12);
  v14 = &v56[-v13];
  v15 = (v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  if ([*(*sub_10000E3E8(v15 v15[3]) + OBJC:"state" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)] == 2)
  {
    (*(v6 + 16))(v14, v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v5);
    v16 = sub_10079ACC4();
    v17 = sub_1007A29D4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "play - already playing", v18, 2u);
    }

    (*(v6 + 8))(v14, v5);
  }

  else if (a1)
  {
    v61 = v8;
    v62 = v3;
    v20 = *(v6 + 16);
    v60 = (v6 + 16);
    v59 = v20;
    (v20)(v11, v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v5);
    v21 = sub_10079ACC4();
    v22 = sub_1007A29D4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "play - update bookmark if needed", v23, 2u);
    }

    v24 = *(v6 + 8);
    v24(v11, v5);
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100009864(v15, v67);
    v26 = sub_10000E3E8(v67, v67[3]);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = sub_1002D7380;
    v28[4] = v25;
    v29 = *v26;
    v30 = *(*v26 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player);
    swift_retain_n();
    swift_retain_n();
    v31 = [v30 currentAudiobook];
    if (v31)
    {
      v32 = v31;
      v33 = *(v29 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_persistenceController);
      aBlock[4] = sub_1002D7388;
      aBlock[5] = v28;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1002D6FD4;
      aBlock[3] = &unk_100A13BC0;
      v34 = _Block_copy(aBlock);

      [v33 bookmarkTimeForAudiobook:v32 completion:v34];
      _Block_release(v34);

      swift_unknownObjectRelease();
    }

    else
    {
      v58 = v24;
      v35 = [objc_opt_self() now];
      v36 = v64;
      sub_100796B64();

      v37 = objc_allocWithZone(NSError);
      v38 = sub_1007A2214();
      v39 = [v37 initWithDomain:v38 code:0 userInfo:0];

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v41 = Strong;
        v42 = v61;
        (v59)(v61, Strong + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v5);
        v60 = v39;
        v43 = v39;

        v44 = v43;
        v45 = sub_10079ACC4();
        v46 = sub_1007A29B4();

        v47 = os_log_type_enabled(v45, v46);
        v48 = v62;
        if (v47)
        {
          v49 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v66 = v59;
          *v49 = 136315138;
          swift_getErrorValue();
          v57 = v46;
          v50 = sub_1007A3B84();
          v52 = sub_1000070F4(v50, v51, &v66);

          v53 = v49;
          v48 = v62;
          *(v53 + 1) = v52;
          _os_log_impl(&_mh_execute_header, v45, v57, "_updatePlayheadPosition(completion): error=%s", v53, 0xCu);
          sub_1000074E0(v59);
        }

        v58(v42, v5);
        v54 = v60;
        v36 = v64;
      }

      else
      {
        v55 = v39;
        v48 = v62;
        v54 = v39;
      }

      sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);

      sub_1007A2CD4();

      (*(v63 + 8))(v36, v48);
    }

    sub_1000074E0(v67);
  }

  else
  {
    [*(*sub_10000E3E8(v15 v15[3]) + OBJC:"play" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  }

  return result;
}

double sub_1002CFF9C(uint64_t a1)
{
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);

  sub_1007A2CD4();

  return result;
}

void *sub_1002D0010(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager;
    v3 = result;
    swift_beginAccess();
    sub_100009864(v3 + v2, v4);

    [*(*sub_10000E3E8(v4 v4[3]) + OBJC:"play" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
    return sub_1000074E0(v4);
  }

  return result;
}

id sub_1002D00B8()
{
  v1 = sub_10079ACE4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100796BB4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  result = [*(*sub_10000E3E8(v9 v9[3]) + OBJC:"pausedDuration" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  if (v11 > 3600.0)
  {
    v44 = v2;
    sub_100009864(v9, v47);
    v12 = sub_10000E3E8(v47, v47[3]);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = BKAppDelegate.enableMetricsInspectorOnDebugMode();
    v14[4] = 0;
    v15 = *v12;
    v16 = *(v15 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player);
    swift_retain_n();
    v17 = [v16 currentAudiobook];
    if (v17)
    {
      v18 = v17;
      v19 = *(v15 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_persistenceController);
      aBlock[4] = sub_1002D7C44;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1002D6FD4;
      aBlock[3] = &unk_100A13D00;
      v20 = _Block_copy(aBlock);

      [v19 bookmarkTimeForAudiobook:v18 completion:v20];
      _Block_release(v20);

      swift_unknownObjectRelease();
      return sub_1000074E0(v47);
    }

    v21 = [objc_opt_self() now];
    sub_100796B64();

    v22 = objc_allocWithZone(NSError);
    v23 = sub_1007A2214();
    v24 = [v22 initWithDomain:v23 code:0 userInfo:0];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      (*(v44 + 16))(v4, Strong + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v1);
      v27 = v24;

      v28 = v27;
      v29 = sub_10079ACC4();
      v30 = sub_1007A29B4();

      v43 = v30;
      if (!os_log_type_enabled(v29, v30))
      {

        (*(v44 + 8))(v4, v1);
        goto LABEL_9;
      }

      v31 = swift_slowAlloc();
      v42 = v31;
      v41 = swift_slowAlloc();
      v46 = v41;
      *v31 = 136315138;
      swift_getErrorValue();
      v39 = v29;
      v32 = sub_1007A3B84();
      v34 = sub_1000070F4(v32, v33, &v46);
      v40 = v28;
      v35 = v44;
      v36 = v34;

      v37 = v42;
      *(v42 + 1) = v36;
      v38 = v39;
      _os_log_impl(&_mh_execute_header, v39, v43, "_updatePlayheadPosition(completion): error=%s", v37, 0xCu);
      sub_1000074E0(v41);

      (*(v35 + 8))(v4, v1);
      v24 = v40;
    }

LABEL_9:
    (*(v6 + 8))(v8, v5);

    return sub_1000074E0(v47);
  }

  return result;
}

void sub_1002D0650(uint64_t a1, float a2)
{
  v5 = sub_10079ACE4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 != 0.0)
  {
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = v10 - 1;
      if (v11)
      {
        v12 = (a1 + 36);
        v13 = *(a1 + 32);
        do
        {
          v14 = *v12++;
          v15 = v14;
          if (vabds_f32(v14, a2) < vabds_f32(v13, a2))
          {
            v13 = v15;
          }

          --v11;
        }

        while (v11);
      }
    }

    else
    {
      v16 = v7;
      (*(v6 + 16))(v9, v2 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, 1.0);

      v17 = sub_10079ACC4();
      v18 = sub_1007A29B4();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v25 = v20;
        *v19 = 134218242;
        *(v19 + 4) = a2;
        *(v19 + 12) = 2080;
        v21 = sub_1007A25F4();
        v23 = sub_1000070F4(v21, v22, &v25);

        *(v19 + 14) = v23;
        _os_log_impl(&_mh_execute_header, v17, v18, "Failed to find a closest playback rate for raw rate: %f, playbackRates: %s", v19, 0x16u);
        sub_1000074E0(v20);
      }

      (*(v6 + 8))(v9, v16);
    }
  }
}

uint64_t sub_1002D08A0(void *a1)
{
  v1 = sub_1002CD404();
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = v1;
    if (qword_100AD1240 != -1)
    {
LABEL_17:
      swift_once();
    }

    v31 = qword_100AD4DA0;
    sub_1001F1160(&unk_100AD36E0, &unk_100822000);
    v4 = 0;
    v5 = -1.0;
    v6 = 32;
    v7 = v3;
    v30 = v3;
    do
    {
      v8 = *(v7 + v6);
      isa = sub_1007A27E4().super.super.isa;
      v10 = [v31 stringForObjectValue:isa];

      if (v10)
      {
        v11 = sub_1007A2254();
        v13 = v12;
      }

      else
      {
        sub_1001F1160(&unk_100AD5090, &unk_100815670);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_10080B690;
        *(v14 + 56) = &type metadata for Float;
        *(v14 + 64) = &protocol witness table for Float;
        *(v14 + 32) = v8;
        v11 = sub_1007A2284();
        v13 = v15;
      }

      v33 = v11;
      v34[0] = v13;
      v36._countAndFlagsBits = 38851;
      v36._object = 0xA200000000000000;
      sub_1007A23D4(v36);
      v16 = v33;
      v17 = sub_1007A2214();
      v35[0] = NSFontAttributeName;
      v35[4] = sub_10000A7C4(0, &unk_100AEB3C0, UIFont_ptr);
      v35[1] = a1;
      v3 = sub_1007A3924();
      v18 = NSFontAttributeName;
      v19 = a1;
      sub_1000077D8(v35, &v33, &unk_100ADA6C0, &unk_10080CBF0);
      v20 = v33;
      v21 = sub_1002F9CF4();
      if (v22)
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v3[(v21 >> 6) + 8] |= 1 << v21;
      *(v3[6] + 8 * v21) = v20;
      sub_1000076D4(v34, v3[7] + 32 * v21);
      v23 = v3[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_16;
      }

      v3[2] = v25;
      sub_100007840(v35, &unk_100ADA6C0, &unk_10080CBF0);
      type metadata accessor for Key(0);
      sub_100022864(&qword_100AEDDB0, type metadata accessor for Key, &unk_10080E428);
      v26 = sub_1007A2024().super.isa;

      [v17 sizeWithAttributes:v26];
      v28 = v27;

      if (v5 < v28)
      {
        v5 = v28;
        v4 = v16;
      }

      v6 += 4;
      --v2;
      v7 = v30;
    }

    while (v2);
  }

  else
  {

    return 0;
  }

  return v4;
}

uint64_t sub_1002D0C04()
{
  v1 = sub_100799004();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  v6 = *(*sub_10000E3E8(v5, v5[3]) + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_currentMAsset);
  if (!v6)
  {
    return 0;
  }

  (*(v2 + 104))(v4, enum case for BooksFeatureFlag.unifiedProductPage(_:), v1);
  sub_100022864(&unk_100AD9560, &type metadata accessor for BooksFeatureFlag, &protocol conformance descriptor for BooksFeatureFlag);
  sub_100005920(&qword_100AD7778, &unk_100AD9570, &unk_100814750, &protocol conformance descriptor for StaticFeatureFlagsKey<A>);
  v7 = v6;
  v8 = sub_1007A2554();
  (*(v2 + 8))(v4, v1);
  if (v8)
  {
    [v7 supportsUnifiedProductPage];
    v9 = [v7 editionKind];
    if (v9)
    {
      v10 = v9;
      sub_1007A2254();
    }

    v12 = objc_allocWithZone(sub_100797CD4());
    v13 = sub_100797CB4();

    return v13;
  }

  else
  {

    return 0;
  }
}

void *sub_1002D0E58()
{
  v1 = (v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  v2 = [*(*sub_10000E3E8(v1 v1[3]) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v4 = [v2 chapters];
  swift_unknownObjectRelease();
  sub_1001F1160(&qword_100AED9C0, &unk_100829060);
  v5 = sub_1007A25E4();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v6 = sub_1007A38D4();
  if (!v6)
  {
LABEL_15:

    return v3;
  }

LABEL_4:
  v18 = _swiftEmptyArrayStorage;
  result = sub_1007A37F4();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v16 = sub_1007A3784();
      }

      else
      {
        v16 = *(v5 + 8 * v8 + 32);
        swift_unknownObjectRetain();
      }

      v17 = [v16 title];
      if (v17)
      {
        v9 = v17;
        v10 = sub_1007A2254();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0xE000000000000000;
      }

      ++v8;
      [v16 duration];
      v14 = v13;
      swift_unknownObjectRelease();
      type metadata accessor for AudiobookNowPlayingViewModel.Chapter();
      v15 = swift_allocObject();
      v15[2] = v10;
      v15[3] = v12;
      v15[4] = v14;
      sub_1007A37D4();
      sub_1007A3804();
      sub_1007A3814();
      sub_1007A37E4();
    }

    while (v6 != v8);

    return v18;
  }

  __break(1u);
  return result;
}

char *sub_1002D1098()
{
  v1 = (v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  v2 = [*(*sub_10000E3E8(v1 v1[3]) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = [v2 supplementalContents];
  swift_unknownObjectRelease();
  sub_10000A7C4(0, &qword_100AE5C30, BKAudiobookSupplementalContent_ptr);
  v4 = sub_1007A25E4();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_14:

    return _swiftEmptyArrayStorage;
  }

  v5 = sub_1007A38D4();
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_4:
  result = sub_1003BD1B0(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v4;
    v20 = v4 & 0xC000000000000001;
    v9 = v4;
    do
    {
      if (v20)
      {
        v10 = sub_1007A3784();
      }

      else
      {
        v10 = *(v8 + 8 * v7 + 32);
      }

      v11 = v10;
      v12 = [v10 title];
      v13 = sub_1007A2254();
      v15 = v14;

      v16 = [v11 assetIdentifier];
      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        sub_1003BD1B0((v17 > 1), v18 + 1, 1);
      }

      ++v7;
      _swiftEmptyArrayStorage[2] = v18 + 1;
      v19 = &_swiftEmptyArrayStorage[3 * v18];
      v19[4] = v13;
      v19[5] = v15;
      v19[6] = v16;
      v8 = v9;
    }

    while (v5 != v7);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002D12CC(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1002D131C(char a1)
{
  v2 = *v1;
  *(v2 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor__activeMode) = a1;
  return [*(v2 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_routeDetector) setRouteDetectionEnabled:a1 & 1];
}

uint64_t sub_1002D1358(uint64_t a1)
{
  v3 = *v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  sub_10022569C(v3, v4);
  (*(v5 + 96))(a1, v4, v5);
  return swift_endAccess();
}

uint64_t sub_1002D13E8(uint64_t a1)
{
  v3 = *v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  sub_10022569C(v3, v4);
  (*(v5 + 192))(a1, v4, v5);
  return swift_endAccess();
}

uint64_t sub_1002D1478(float a1)
{
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  v2 = fminf(a1, 1.0);
  v3 = *v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  sub_10022569C(v3, v4);
  (*(v5 + 248))(v4, v5, v2);
  return swift_endAccess();
}

void sub_1002D1520(void *a1)
{
  v2 = v1;
  v104 = sub_10079ACE4();
  v4 = *(v104 - 8);
  __chkstk_darwin(v104);
  v103 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v1[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  v105 = v4;
  if (Strong)
  {
    v8 = Strong;
    v9 = &v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager];
    swift_beginAccess();
    v10 = [*(*sub_10000E3E8(v9 *(v9 + 3)) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
    if (v10)
    {
      v11 = [v10 title];
      swift_unknownObjectRelease();
      v12 = sub_1007A2254();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xE000000000000000;
    }

    v15 = *(v8 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = v12;
    v107 = v14;
    v16 = v15;
    sub_10079B9B4();
    swift_unknownObjectRelease();
    v4 = v105;
  }

  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    v19 = &v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager];
    swift_beginAccess();
    v20 = [*(*sub_10000E3E8(v19 *(v19 + 3)) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
    if (v20)
    {
      v21 = [v20 author];
      swift_unknownObjectRelease();
      v22 = sub_1007A2254();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0xE000000000000000;
    }

    v25 = *(v18 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = v22;
    v107 = v24;
    v26 = v25;
    sub_10079B9B4();
    swift_unknownObjectRelease();
    v4 = v105;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v27 = &v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager];
    swift_beginAccess();
    v28 = [*(*sub_10000E3E8(v27 *(v27 + 3)) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
    if (v28)
    {
      v29 = [v28 isAudiobookPreview];
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = 0;
    }

    v30 = type metadata accessor for AudiobookNowPlayingPresenter(0);
    sub_10055BBA0(v29, v30, &off_100A22E18);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v31 = &v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager];
    swift_beginAccess();
    v32 = [*(*sub_10000E3E8(v31 *(v31 + 3)) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
    if (v32)
    {
      v33 = [v32 assetID];
      swift_unknownObjectRelease();
      v34 = sub_1007A2254();
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    type metadata accessor for AudiobookNowPlayingPresenter(0);
    sub_10055B77C(v34, v36);
    swift_unknownObjectRelease();

    v4 = v105;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v37 = sub_1002D0E58();
    v38 = type metadata accessor for AudiobookNowPlayingPresenter(0);
    sub_10055B898(v37, v38, &off_100A22E18);
    v4 = v105;

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v39 = sub_1002D1098();
    v40 = type metadata accessor for AudiobookNowPlayingPresenter(0);
    sub_10055BD74(v39, v40, &off_100A22E18);
    v4 = v105;

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v41 = &v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager];
    swift_beginAccess();
    v42 = [*(*sub_10000E3E8(v41 *(v41 + 3)) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
    if (v42)
    {
      v43 = [v42 isSG];
      swift_unknownObjectRelease();
    }

    else
    {
      v43 = 0;
    }

    v44 = type metadata accessor for AudiobookNowPlayingPresenter(0);
    sub_10055BE00(v43, v44, &off_100A22E18);
    swift_unknownObjectRelease();
  }

  v45 = *&v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_cachedArtwork];
  *&v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_cachedArtwork] = 0;

  if (a1)
  {
    v46 = swift_unknownObjectWeakLoadStrong();
    if (v46)
    {
      v47 = v46;
      v48 = *(v6 + 1);
      v49 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v50 = swift_allocObject();
      v50[2] = v49;
      v50[3] = v47;
      v50[4] = v48;
      v110 = sub_1002D7858;
      v111 = v50;
      aBlock = _NSConcreteStackBlock;
      v107 = 1107296256;
      v108 = sub_1002166B8;
      v109 = &unk_100A13D78;
      v51 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      [a1 artworkWithCompletion:v51];
      _Block_release(v51);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v52 = v104;
      goto LABEL_36;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10055B390(0);
    swift_unknownObjectRelease();
  }

  v52 = v104;
  if (a1)
  {
LABEL_36:
    v53 = [a1 assetID];
    if (!v53)
    {
      sub_1007A2254();
      v53 = sub_1007A2214();
      v52 = v104;
    }

    v54 = *&v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_storeManager];
    if (v54)
    {
      v55 = [v54 clientApplicationController];
      v56 = [swift_unknownObjectRetain() assetDownloadProgressWithStoreId:v53];
      swift_unknownObjectRelease();

      if (v56)
      {
        v101 = v55;
        v57 = v103;
        (*(v4 + 16))(v103, &v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger], v52);
        v58 = v2;
        v99 = v56;
        v59 = v56;
        v60 = sub_10079ACC4();
        v61 = sub_1007A2994();
        v102 = v59;

        v62 = v58;
        v100 = v61;
        if (os_log_type_enabled(v60, v61))
        {
          v98 = v60;
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          *v63 = 136315650;
          v65 = &v58[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager];
          swift_beginAccess();
          v66 = [*(*sub_10000E3E8(v65 *(v65 + 3)) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
          if (v66)
          {
            v67 = [v66 title];
            swift_unknownObjectRelease();
            v68 = sub_1007A2254();
            v70 = v69;
          }

          else
          {
            v68 = 0;
            v70 = 0xE000000000000000;
          }

          v75 = sub_1000070F4(v68, v70, &v112);

          *(v63 + 4) = v75;
          *(v63 + 12) = 2080;
          v76 = [*(*sub_10000E3E8(v65 *(v65 + 3)) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
          if (v76)
          {
            v77 = [v76 assetID];
            swift_unknownObjectRelease();
            v78 = sub_1007A2254();
            v80 = v79;
          }

          else
          {
            v78 = 0;
            v80 = 0;
          }

          v81 = v105;
          v82 = v103;
          aBlock = v78;
          v107 = v80;
          sub_1001F1160(&qword_100AD4F30, &unk_100816940);
          v83 = sub_1007A22E4();
          v85 = sub_1000070F4(v83, v84, &v112);

          *(v63 + 14) = v85;
          *(v63 + 22) = 2112;
          v86 = v102;
          *(v63 + 24) = v102;
          *v64 = v99;
          v87 = v86;
          v88 = v98;
          _os_log_impl(&_mh_execute_header, v98, v100, "audiobookDidChange to %s, assetID: %s, with download progress: %@", v63, 0x20u);
          sub_100007840(v64, &unk_100AD9480, &qword_1008113B0);

          swift_arrayDestroy();

          (*(v81 + 8))(v82, v104);
          v62 = v58;
        }

        else
        {

          (*(v4 + 8))(v57, v52);
        }

        v89 = *&v62[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_downloadState];
        *&v62[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_downloadState] = 1;
        sub_1002CD208(v89);
        if (swift_unknownObjectWeakLoadStrong())
        {
          type metadata accessor for AudiobookNowPlayingPresenter(0);
          sub_10055B8D4(0);
          swift_unknownObjectRelease();
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v90 = v102;
          [v102 doubleValue];
          v92 = v91;
          v93 = type metadata accessor for AudiobookNowPlayingPresenter(0);
          sub_10055B8C0(v92, 0, v93, &off_100A22E18);
          swift_unknownObjectRelease();
        }

        else
        {
        }

LABEL_62:
        swift_unknownObjectRelease();
        goto LABEL_63;
      }
    }

    else
    {
    }

    v71 = &v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager];
    swift_beginAccess();
    v72 = *(*sub_10000E3E8(v71, *(v71 + 3)) + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_streaming);
    if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for AudiobookNowPlayingPresenter(0);
      if (v72)
      {
        v73 = 1;
      }

      else
      {
        v73 = 3;
      }

      sub_10055B8D4(v73);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v74 = type metadata accessor for AudiobookNowPlayingPresenter(0);
      sub_10055B8C0(0, 0, v74, &off_100A22E18);
      swift_unknownObjectRelease();
    }

    goto LABEL_62;
  }

LABEL_63:
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v94 = sub_1007A2D74();
  v95 = &_dispatch_main_q;
  if (v94 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  v96 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_wantsPlayAfterOpen;
  if (v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_wantsPlayAfterOpen] == 1 && (v97 = &v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager], swift_beginAccess(), [*(*sub_10000E3E8(v97 *(v97 + 3)) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)]))
  {
    swift_unknownObjectRelease();
    v2[v96] = 0;
    sub_1002CF778(1);
    AriadneTrace_AudiobookBeginPlayback();
  }

  else
  {
    sub_1002D5C74();
  }
}

void sub_1002D2370(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      v5 = objc_allocWithZone(UIImage);
      v6 = a1;
      v7 = [v5 initWithCGImage:v6];
      v8 = *&v4[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_cachedArtwork];
      *&v4[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_cachedArtwork] = v7;
      v9 = v7;

      sub_10055B390(v7);
    }

    else
    {
      sub_10055B390(0);
      v10 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager;
      swift_beginAccess();
      sub_100009864(&v4[v10], v14);
      sub_10000E3E8(v14, v14[3]);
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = sub_1002D7864;
      *(v13 + 32) = v11;
      *(v13 + 40) = vdupq_n_s64(0x4098000000000000uLL);
      swift_retain_n();

      sub_1007A2CD4();

      sub_1000074E0(v14);
    }
  }
}