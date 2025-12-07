uint64_t sub_1000E7C18()
{

  swift_errorRetain();
  v1 = sub_100100AC4();
  v2 = sub_1001015B4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 136);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412546;
    *(v4 + 4) = v3;
    *v5 = v3;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v6 = v3;
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    v5[1] = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "(finishEditingAndSave) Error saving editing context %@: %@", v4, 0x16u);
    sub_100007210(&unk_10014D660, &qword_10010C710);
    swift_arrayDestroy();
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

id sub_1000E7DD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ([v1 isDraft] && (objc_msgSend(v1, "isRemovedFromCloud") & 1) == 0)
  {
    [v1 setIsDraft:0];
  }

  return sub_1000EC4AC();
}

void *sub_1000E7E44()
{
  v1 = v0;
  v2 = sub_100100334();
  v23 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007210(&qword_10014F8B0, &qword_10010EF28);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_100007210(&qword_1001510E0, &qword_10010FF58);
  v22 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_1000FFB34();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, enum case for JournalFeatureFlags.enhancedSync(_:), v11);
  v15 = sub_1000FFB24();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v16 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    sub_100010014(v1 + v16, v7, &qword_10014F8B0, &qword_10010EF28);
    v17 = v23;
    if ((*(v23 + 48))(v7, 1, v2))
    {
      sub_10000FFB4(v7, &qword_10014F8B0, &qword_10010EF28);
      return 0;
    }

    else
    {
      (*(v17 + 16))(v4, v7, v2);
      sub_10000FFB4(v7, &qword_10014F8B0, &qword_10010EF28);
      sub_100100324();
      (*(v17 + 8))(v4, v2);
      v18 = sub_100100D04();
      (*(v22 + 8))(v10, v8);
    }
  }

  else
  {
    v18 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_attributedTitle);
    v19 = v18;
  }

  return v18;
}

void sub_1000E81B4(void *a1)
{
  v2 = sub_1000FFB34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for JournalFeatureFlags.enhancedSync(_:), v2);
  v6 = sub_1000FFB24();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_10014B8F0 != -1)
    {
      swift_once();
    }

    v7 = sub_100100AE4();
    sub_100003D38(v7, qword_100150AF0);
    v8 = sub_100100AC4();
    v9 = sub_1001015B4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Replacing mergeable title with a non-mergeable string. This may result in an incorrect merge.", v10, 2u);
    }

    if (a1)
    {
      v11 = a1;
    }

    else
    {
      v11 = [objc_allocWithZone(NSAttributedString) init];
    }

    v12 = a1;
    sub_1000E83B0(v11);
  }

  else
  {
    sub_1000E8724(a1);
  }
}

uint64_t sub_1000E83B0(uint64_t a1)
{
  v25 = a1;
  v2 = sub_100100334();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007210(&qword_10014F8B0, &qword_10010EF28);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_100007210(&qword_1001510E0, &qword_10010FF58);
  v24 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v23 - v14;
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  v18 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  sub_100010014(v1 + v18, v8, &qword_10014F8B0, &qword_10010EF28);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    return sub_10000FFB4(v8, &qword_10014F8B0, &qword_10010EF28);
  }

  (*(v3 + 16))(v5, v8, v2);
  sub_10000FFB4(v8, &qword_10014F8B0, &qword_10010EF28);
  sub_100100324();
  (*(v3 + 8))(v5, v2);
  v20 = v24;
  (*(v24 + 32))(v17, v15, v9);
  v21 = [objc_allocWithZone(UITraitCollection) init];
  sub_1000F01B8(&qword_1001510E8, &type metadata accessor for MergeableTitleAttributeScope, &protocol conformance descriptor for MergeableTitleAttributeScope);
  sub_100100D64();

  sub_1000EF23C(v12);
  v22 = *(v20 + 8);
  v22(v12, v9);
  return (v22)(v17, v9);
}

void sub_1000E8724(void *a1)
{
  v2 = v1;
  v4 = sub_1000FF1E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = [a1 string];
    v9 = sub_100100FD4();
    v11 = v10;

    aBlock = v9;
    v22 = v11;
    sub_1000FF1D4();
    sub_10005B20C();
    v12 = sub_100101AE4();
    v14 = v13;
    (*(v5 + 8))(v7, v4);

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v16 = a1;
    }

    else
    {
      a1 = 0;
    }
  }

  v17 = *(v2 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_attributedTitle);
  *(v2 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_attributedTitle) = a1;

  v18 = *(v2 + 24);
  v19 = swift_allocObject();
  swift_weakInit();
  v25 = sub_1000F06C4;
  v26 = v19;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_1000D2F3C;
  v24 = &unk_100138F10;
  v20 = _Block_copy(&aBlock);

  [v18 performBlock:v20];
  _Block_release(v20);
}

void *sub_1000E894C()
{
  v1 = v0;
  v2 = sub_100100334();
  v26 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007210(&qword_10014F8B0, &qword_10010EF28);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_100007210(&qword_10014F8C8, &qword_10010EF30);
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = sub_1000FFB34();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, enum case for JournalFeatureFlags.enhancedSync(_:), v11);
  v15 = sub_1000FFB24();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v16 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    sub_100010014(v1 + v16, v7, &qword_10014F8B0, &qword_10010EF28);
    v17 = v26;
    if ((*(v26 + 48))(v7, 1, v2))
    {
      sub_10000FFB4(v7, &qword_10014F8B0, &qword_10010EF28);
      return 0;
    }

    else
    {
      (*(v17 + 16))(v4, v7, v2);
      sub_10000FFB4(v7, &qword_10014F8B0, &qword_10010EF28);
      sub_1001002B4();
      (*(v17 + 8))(v4, v2);
      v21 = sub_100100D04();
      (*(v25 + 8))(v10, v8);
      v22 = [v21 string];

      v23 = sub_100100FD4();
      return v23;
    }
  }

  else
  {
    result = *(v1 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_attributedText);
    if (result)
    {
      v19 = [result string];
      v20 = sub_100100FD4();

      return v20;
    }
  }

  return result;
}

void sub_1000E8D2C(void *a1)
{
  v2 = v1;
  v4 = sub_1000FFB34();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, enum case for JournalFeatureFlags.enhancedSync(_:), v4);
  v8 = sub_1000FFB24();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    v14 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_attributedText;
    v15 = *(v2 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_attributedText);
    if (a1)
    {
      if (v15)
      {
        sub_100010F50(0, &qword_10014D0C0, NSAttributedString_ptr);
        v16 = a1;
        v17 = v15;
        v18 = sub_100101A34();

        if (v18)
        {
          goto LABEL_16;
        }
      }
    }

    else if (!v15)
    {
LABEL_16:
      v13 = *(v2 + v14);
      *(v2 + v14) = a1;
      v20 = a1;
      goto LABEL_17;
    }

    *(v2 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_textChanged) = 1;
    goto LABEL_16;
  }

  if (qword_10014B8F0 != -1)
  {
    swift_once();
  }

  v9 = sub_100100AE4();
  sub_100003D38(v9, qword_100150AF0);
  v10 = sub_100100AC4();
  v11 = sub_1001015B4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
  }

  if (a1)
  {
    v13 = a1;
  }

  else
  {
    v13 = [objc_allocWithZone(NSAttributedString) init];
  }

  v19 = a1;
  sub_1000E8F9C(v13);
LABEL_17:
}

uint64_t sub_1000E8F9C(uint64_t a1)
{
  v25 = a1;
  v2 = sub_100100334();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007210(&qword_10014F8B0, &qword_10010EF28);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_100007210(&qword_10014F8C8, &qword_10010EF30);
  v24 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v23 - v14;
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  v18 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  sub_100010014(v1 + v18, v8, &qword_10014F8B0, &qword_10010EF28);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    return sub_10000FFB4(v8, &qword_10014F8B0, &qword_10010EF28);
  }

  (*(v3 + 16))(v5, v8, v2);
  sub_10000FFB4(v8, &qword_10014F8B0, &qword_10010EF28);
  sub_1001002B4();
  (*(v3 + 8))(v5, v2);
  v20 = v24;
  (*(v24 + 32))(v17, v15, v9);
  v21 = [objc_allocWithZone(UITraitCollection) init];
  sub_1000F01B8(&qword_10014F8D0, &type metadata accessor for MergeableTextAttributeScope, &protocol conformance descriptor for MergeableTextAttributeScope);
  sub_100100D64();

  sub_1000EE738(v12);
  v22 = *(v20 + 8);
  v22(v12, v9);
  return (v22)(v17, v9);
}

uint64_t sub_1000E9310(uint64_t a1, uint64_t a2)
{
  v3[11] = v2;
  v5 = sub_100101824();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v6 = sub_100100334();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  sub_100007210(&qword_10014F8B0, &qword_10010EF28);
  v3[18] = swift_task_alloc();
  v7 = sub_100007210(&qword_10014F8C8, &qword_10010EF30);
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  v8 = sub_1000FFB34();
  v3[22] = v8;
  v3[23] = *(v8 - 8);
  v3[24] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = sub_100101284();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v3[25] = v9;
  v3[26] = v11;

  return _swift_task_switch(sub_1000E9564, v9);
}

uint64_t sub_1000E9564()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  (*(v2 + 104))(v1, enum case for JournalFeatureFlags.enhancedSync(_:), v3);
  v4 = sub_1000FFB24();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[18];
    v6 = v0[15];
    v7 = v0[16];
    v8 = v0[11];
    v9 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    sub_100010014(v8 + v9, v5, &qword_10014F8B0, &qword_10010EF28);
    if ((*(v7 + 48))(v5, 1, v6))
    {
      sub_10000FFB4(v0[18], &qword_10014F8B0, &qword_10010EF28);
LABEL_10:
      v27 = 0;
      goto LABEL_12;
    }

    v30 = v0[20];
    v29 = v0[21];
    v31 = v0[18];
    v32 = v0[19];
    v34 = v0[16];
    v33 = v0[17];
    v35 = v0[15];
    (*(v34 + 16))(v33, v31, v35);
    sub_10000FFB4(v31, &qword_10014F8B0, &qword_10010EF28);
    sub_1001002B4();
    (*(v34 + 8))(v33, v35);
    sub_1000E9C4C();
    v27 = v36;
    (*(v30 + 8))(v29, v32);
  }

  else
  {
    v10 = *(v0[11] + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_attributedText);
    if (!v10)
    {
      goto LABEL_10;
    }

    v11 = v10;
    v12 = [v11 string];
    if (!v12)
    {
      sub_100100FD4();
      v12 = sub_100100F94();
    }

    v13 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v12];

    v14 = [objc_opt_self() labelColor];
    v15 = [objc_opt_self() systemFontOfSize:0.0];
    v16 = [v11 length];
    if (v16 < 0)
    {
      __break(1u);
      return NSManagedObjectContext.perform<A>(schedule:_:)(v16, v17, v18, v19, v20);
    }

    v21 = v16;
    v22 = swift_allocObject();
    v22[2] = v15;
    v22[3] = v14;
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v13;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1000ACC00;
    *(v23 + 24) = v22;
    v0[6] = sub_1000F09B4;
    v0[7] = v23;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000E3338;
    v0[5] = &unk_100138DF8;
    v24 = _Block_copy(v0 + 2);
    v25 = v15;
    v26 = v14;
    v27 = v13;

    [v11 enumerateAttributesInRange:0 options:v21 usingBlock:{0, v24}];

    _Block_release(v24);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_10;
    }
  }

LABEL_12:
  v0[27] = v27;
  v38 = v0[13];
  v37 = v0[14];
  v40 = v0[11];
  v39 = v0[12];
  v41 = swift_allocObject();
  v0[28] = v41;
  *(v41 + 16) = v40;
  *(v41 + 24) = v27;
  (*(v38 + 104))(v37, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v39);

  v42 = v27;
  v16 = swift_task_alloc();
  v0[29] = v16;
  *v16 = v0;
  *(v16 + 8) = sub_1000E9A40;
  v17 = v0[14];
  v18 = sub_1000F0668;
  v20 = &type metadata for () + 8;
  v19 = v41;

  return NSManagedObjectContext.perform<A>(schedule:_:)(v16, v17, v18, v19, v20);
}

void sub_1000E9A40()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[13] + 8))(v2[14], v2[12]);

    v3 = v2[25];

    _swift_task_switch(sub_1000E9B94, v3);
  }
}

uint64_t sub_1000E9B94()
{
  v1 = *(v0 + 88);

  *(v1 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_textChanged) = 0;

  v2 = *(v0 + 8);

  return v2();
}

void sub_1000E9C4C()
{
  v0 = [objc_allocWithZone(UITraitCollection) init];
  v18 = type metadata accessor for CustomAttributeProviderConcrete(0);
  v19 = sub_1000F01B8(&qword_10014F778, type metadata accessor for CustomAttributeProviderConcrete, &unk_10010CFD8);
  v1 = sub_100007258(v17);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  sub_100100AD4();
  *v1 = v2;
  sub_100007210(&qword_10014F8C8, &qword_10010EF30);
  sub_1000F01B8(&qword_10014F8D0, &type metadata accessor for MergeableTextAttributeScope, &protocol conformance descriptor for MergeableTextAttributeScope);
  v3 = sub_100100D54();

  sub_10001100C(v17);
  v4 = v3;
  v5 = [v4 string];
  if (!v5)
  {
    sub_100100FD4();
    v5 = sub_100100F94();
  }

  v6 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v5];

  v7 = [objc_opt_self() labelColor];
  v8 = [objc_opt_self() systemFontOfSize:0.0];
  v9 = [v4 length];
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = v9;
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v7;
  v11[4] = 0;
  v11[5] = 0;
  v11[6] = v6;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1000ACC00;
  *(v12 + 24) = v11;
  v19 = sub_1000F09B4;
  v20 = v12;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1000E3338;
  v18 = &unk_100138E70;
  v13 = _Block_copy(v17);
  v14 = v8;
  v15 = v7;
  v6;

  [v4 enumerateAttributesInRange:0 options:v10 usingBlock:{0, v13}];

  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_7:
    __break(1u);
  }
}

void sub_1000E9FF8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (!a2)
  {
    [*(a1 + 32) setText:0];
    goto LABEL_14;
  }

  v4 = sub_100101744();
  if (v5 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v7 = v4;
    v8 = v5;
    isa = sub_1000FF554().super.isa;
    sub_1000064AC(v7, v8);
  }

  [v2 setText:isa];

  v9 = [a2 string];
  sub_100100FD4();

  v10 = sub_100101084();

  if (v10 < 0x8000)
  {
    if (v10 < -32768)
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v10)
    {
      goto LABEL_21;
    }

LABEL_14:
    v15 = sub_1000FFBC4();
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v16)
      {
LABEL_16:
        LOWORD(v10) = 0;
        goto LABEL_21;
      }

LABEL_19:
      v18 = [v2 title];
      if (v18)
      {
        v19 = v18;
        v10 = sub_1000FF564();
        v21 = v20;

        sub_1000064C0(v10, v21);
        LOWORD(v10) = 1;
        goto LABEL_21;
      }

      goto LABEL_16;
    }

LABEL_18:
    v17 = sub_100101DA4();

    if (v17)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (qword_10014B8F0 != -1)
  {
    swift_once();
  }

  v11 = sub_100100AE4();
  sub_100003D38(v11, qword_100150AF0);
  v12 = sub_100100AC4();
  v13 = sub_1001015B4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = v10;
    *(v14 + 12) = 2147418624;
    _os_log_impl(&_mh_execute_header, v12, v13, "EntryViewModel: reducing textLength stored property value of (%ld) to Int16.max (%hd)", v14, 0x10u);
  }

  LOWORD(v10) = 0x7FFF;
LABEL_21:
  [v2 setTextLength:v10];
  sub_1000EE220();
  sub_1000EC208();
}

void sub_1000EA288()
{
  v1 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_textChanged;
  if ((*(v0 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_textChanged) & 1) == 0)
  {
    v2 = v0;
    sub_100007210(&qword_10014C040, &qword_10010CDE0);
    sub_100101814();
    v4 = aBlock;
    v3 = v43;
    v5 = *(v0 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_attributedText);
    v40 = aBlock;
    v41 = v43;
    if (v5)
    {
      v38 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_attributedText;
      v39 = v1;
      v6 = v5;
      v7 = [v6 string];
      if (!v7)
      {
        sub_100100FD4();
        v7 = sub_100100F94();
      }

      v8 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v7];

      v9 = [objc_opt_self() labelColor];
      v10 = [objc_opt_self() systemFontOfSize:0.0];
      v11 = [v6 length];
      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v12 = v11;
        v13 = swift_allocObject();
        v13[2] = v10;
        v13[3] = v9;
        v13[4] = 0;
        v13[5] = 0;
        v13[6] = v8;
        v14 = swift_allocObject();
        *(v14 + 16) = sub_1000ACC00;
        *(v14 + 24) = v13;
        v46 = sub_1000F09B4;
        v47 = v14;
        aBlock = _NSConcreteStackBlock;
        v43 = 1107296256;
        v44 = sub_1000E3338;
        v45 = &unk_100138D58;
        v15 = _Block_copy(&aBlock);
        v16 = v10;
        v17 = v9;
        v18 = v8;

        [v6 enumerateAttributesInRange:0 options:v12 usingBlock:{0, v15}];

        _Block_release(v15);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          v4 = v40;
          v3 = v41;
          if (v41 >> 60 == 15)
          {
LABEL_21:

            v33 = 0;
LABEL_23:
            v37 = *(v2 + v38);
            *(v2 + v38) = v33;

            *(v2 + v39) = 0;
            return;
          }

LABEL_12:
          sub_100006514(v4, v3);
          v20 = sub_1000FF534();
          sub_1000064AC(v4, v3);
          if (!v20)
          {
            sub_1000064AC(v4, v3);
            if (!v18)
            {
              return;
            }

            goto LABEL_21;
          }

          v21 = v20;
          v22 = [v21 string];
          if (!v22)
          {
            sub_100100FD4();
            v22 = sub_100100F94();
          }

          v23 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v22];

          v24 = [objc_opt_self() labelColor];
          v25 = [objc_opt_self() systemFontOfSize:0.0];
          v26 = [v21 length];
          if ((v26 & 0x8000000000000000) == 0)
          {
            v27 = v26;
            v28 = swift_allocObject();
            v28[2] = v25;
            v28[3] = v24;
            v28[4] = 0;
            v28[5] = 0;
            v28[6] = v23;
            v29 = swift_allocObject();
            *(v29 + 16) = sub_1000AC6D8;
            *(v29 + 24) = v28;
            v46 = sub_1000F0624;
            v47 = v29;
            aBlock = _NSConcreteStackBlock;
            v43 = 1107296256;
            v44 = sub_1000E3338;
            v45 = &unk_100138CE0;
            v30 = _Block_copy(&aBlock);
            v31 = v25;
            v32 = v24;
            v33 = v23;

            [v21 enumerateAttributesInRange:0 options:v27 usingBlock:{0, v30}];

            _Block_release(v30);
            v34 = swift_isEscapingClosureAtFileLocation();

            if ((v34 & 1) == 0)
            {
              if (v18)
              {
                sub_100010F50(0, &qword_10014D0C0, NSAttributedString_ptr);
                v35 = v33;
                v36 = sub_100101A34();
                sub_1000064AC(v40, v41);

                if (v36)
                {

                  return;
                }
              }

              else
              {
                sub_1000064AC(v40, v41);
              }

              goto LABEL_23;
            }

LABEL_27:
            __break(1u);
            return;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      __break(1u);
      goto LABEL_26;
    }

    if (v43 >> 60 == 15)
    {
      return;
    }

    v38 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_attributedText;
    v39 = v1;
    v18 = 0;
    goto LABEL_12;
  }
}

void sub_1000EA86C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*(a1 + 32) text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1000FF564();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

double sub_1000EA8F8(uint64_t a1, void *a2, SEL *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 32);
    isa = *(Strong + *a2);
    if (isa)
    {
      v9 = v7;
      v10 = isa;
      v11 = sub_100101744();
      v13 = v12;

      if (v13 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = sub_1000FF554().super.isa;
        sub_1000064AC(v11, v13);
      }
    }

    else
    {
      v14 = v7;
    }

    [v7 *a3];

    sub_1000EC208();
  }

  return result;
}

void sub_1000EA9E8(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_bookmarked) != (a1 & 1))
  {
    v2 = *(v1 + 24);
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1000F08BC;
    *(v4 + 24) = v3;
    v6[4] = sub_1000F09EC;
    v6[5] = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_1000C4BD8;
    v6[3] = &unk_100139028;
    v5 = _Block_copy(v6);

    [v2 performBlockAndWait:v5];
    _Block_release(v5);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }

    else
    {
      v6[0] = sub_100032F1C(&off_100134AE0);
      sub_100100BE4();
    }
  }
}

double sub_1000EAB88(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    [*(Strong + 32) setFlagged:*(Strong + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_bookmarked)];
    sub_1000EC208();
  }

  return result;
}

void sub_1000EABFC()
{
  v1 = v0;
  v2 = sub_1000FFB94();
  v3 = v2;
  if (!(v2 >> 62))
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:

    v8 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_allAssets;
    swift_beginAccess();
    *(v1 + v8) = _swiftEmptyArrayStorage;

    sub_1000EAD60();
    return;
  }

  v4 = sub_100101DA4();
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  sub_100101D24();
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_100101CA4();
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      sub_100044DCC();

      sub_100101D04();
      sub_100101D34();
      sub_100101D44();
      sub_100101D14();
    }

    while (v4 != v5);
    goto LABEL_11;
  }

  __break(1u);
}

void sub_1000EAD60()
{
  v1 = v0;
  v2 = sub_100007210(&qword_10014FAB8, &unk_10010FF30);
  __chkstk_darwin(v2 - 8);
  v114 = &v93[-v3];
  v4 = sub_1000FFD44();
  v118 = *(v4 - 8);
  v119 = v4;
  v5 = __chkstk_darwin(v4);
  v113 = &v93[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v5);
  v117 = &v93[-v8];
  v9 = __chkstk_darwin(v7);
  v112 = &v93[-v10];
  __chkstk_darwin(v9);
  v120 = &v93[-v11];
  v12 = sub_100100334();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v93[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_100007210(&qword_10014F8B0, &qword_10010EF28);
  __chkstk_darwin(v16 - 8);
  v18 = &v93[-v17];
  v107 = sub_1001006F4();
  v106 = *(v107 - 1);
  v19 = __chkstk_darwin(v107);
  v21 = &v93[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v115 = &v93[-v22];
  v23 = sub_1000FFB34();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v93[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v126 = _swiftEmptyArrayStorage;
  v127 = _swiftEmptyArrayStorage;
  v124 = 0;
  v125 = _swiftEmptyArrayStorage;
  v123 = 0;
  (*(v24 + 104))(v26, enum case for JournalFeatureFlags.enhancedSync(_:), v23);
  v27 = sub_1000FFB24();
  v29 = *(v24 + 8);
  v28 = v24 + 8;
  v29(v26, v23);
  if (v27)
  {
    v30 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    sub_100010014(v1 + v30, v18, &qword_10014F8B0, &qword_10010EF28);
    if (!(*(v13 + 48))(v18, 1, v12))
    {
      (*(v13 + 16))(v15, v18, v12);
      sub_10000FFB4(v18, &qword_10014F8B0, &qword_10010EF28);
      sub_100100294();
      (*(v13 + 8))(v15, v12);
      (*(v106 + 32))(v115, v21, v107);
      v62 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_allAssets;
      swift_beginAccess();
      v108 = v1;
      v33 = *(v1 + v62);
      if (v33 >> 62)
      {
        v63 = sub_100101DA4();
      }

      else
      {
        v63 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v31 = v114;
      if (v63)
      {
        v64 = v33 & 0xC000000000000001;
        v117 = (v33 & 0xFFFFFFFFFFFFFF8);
        v103 = v118 + 48;
        v98 = (v118 + 32);
        LODWORD(v113) = enum case for AssetPlacement.grid(_:);
        v97 = v118 + 104;
        v102 = v118 + 16;
        v101 = v118 + 88;
        v96 = enum case for AssetPlacement.canvas(_:);
        v95 = enum case for AssetPlacement.hidden(_:);
        v94 = enum case for AssetPlacement.slim(_:);
        v99 = (v118 + 8);

        v65 = 0;
        v36 = 0;
        v118 = 0;
        v110 = 0;
        v37 = _swiftEmptyArrayStorage;
        v111 = _swiftEmptyArrayStorage;
        v109 = _swiftEmptyArrayStorage;
        v104 = v33;
        v100 = v63;
        do
        {
          if (v64)
          {
            v66 = sub_100101CA4();
          }

          else
          {
            if (v65 >= *(v117 + 2))
            {
              goto LABEL_91;
            }

            v66 = *(v33 + 8 * v65 + 32);
          }

          v67 = v66;
          v28 = v65 + 1;
          if (__OFADD__(v65, 1))
          {
            goto LABEL_90;
          }

          type metadata accessor for ReflectionAsset(0);
          if (swift_dynamicCastClass() || (v67[OBJC_IVAR____TtC21JournalShareExtension5Asset_isHidden] & 1) != 0)
          {
          }

          else
          {
            v105 = v37;
            v68 = v64;
            v69 = v31;
            sub_1001006C4();
            v70 = *v103;
            v71 = v119;
            if ((*v103)(v31, 1, v119) == 1)
            {
              v72 = sub_1000FFD24();
              v73 = v120;
              *v120 = v72;
              (*v97)(v73, v113, v71);
              if (v70(v69, 1, v71) != 1)
              {
                sub_10000FFB4(v69, &qword_10014FAB8, &unk_10010FF30);
              }
            }

            else
            {
              v73 = v120;
              (*v98)(v120, v69, v71);
            }

            v74 = v112;
            (*v102)(v112, v73, v71);
            v75 = (*v101)(v74, v71);
            v64 = v68;
            if (v75 == v113)
            {
              v76 = v67;
              sub_1001011B4();
              v63 = v100;
              if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v116 = v36;
                sub_100101204();
                v36 = v116;
              }

              sub_100101234();
              (*v99)(v120, v119);
              v37 = v127;
              v33 = v104;
            }

            else
            {
              v63 = v100;
              if (v75 == v96)
              {
                v116 = v36;
                v77 = v67;
                sub_1001011B4();
                v33 = v104;
                v37 = v105;
                if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_100101204();
                }

                sub_100101234();
                (*v99)(v120, v119);
                v111 = v126;
                v36 = v116;
              }

              else
              {
                v33 = v104;
                v37 = v105;
                if (v75 == v95)
                {
                  v78 = v67;
                  sub_1001011B4();
                  if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v116 = v36;
                    sub_100101204();
                    v36 = v116;
                  }

                  sub_100101234();
                  (*v99)(v120, v119);
                  v109 = v125;
                }

                else
                {
                  if (v75 != v94)
                  {
LABEL_99:
                    sub_100101E74();
                    __break(1u);
                    return;
                  }

                  (*v99)(v73, v119);

                  swift_getObjectType();
                  v79 = swift_conformsToProtocol2();
                  if (v79)
                  {
                    v80 = v67;
                    v81 = v67;
                  }

                  else
                  {
                    v81 = 0;
                  }

                  v118 = v81;
                  v123 = v81;
                  v124 = v79;
                  v110 = v79;
                }
              }
            }

            type metadata accessor for MultiPinMapAsset(0);
            v82 = swift_dynamicCastClass();
            if (v82)
            {
              v83 = v82;

              v36 = v83;
            }

            else
            {
            }

            v31 = v114;
          }

          ++v65;
        }

        while (v28 != v63);

        (*(v106 + 8))(v115, v107);
LABEL_47:
        v33 = v108;
        v58 = v118;
        v59 = v111;
        v60 = v110;
        v61 = v109;
      }

      else
      {
        (*(v106 + 8))(v115, v107);
        v36 = 0;
        v58 = 0;
        v60 = 0;
        v61 = _swiftEmptyArrayStorage;
        v59 = _swiftEmptyArrayStorage;
        v37 = _swiftEmptyArrayStorage;
        v33 = v108;
      }

      goto LABEL_94;
    }

    sub_10000FFB4(v18, &qword_10014F8B0, &qword_10010EF28);
  }

  sub_100007210(&qword_1001510D8, &unk_10010FF40);
  sub_100101814();
  v31 = v122;
  v32 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_allAssets;
  swift_beginAccess();
  v28 = *(v1 + v32);
  v33 = v1;
  if (v28 >> 62)
  {
    goto LABEL_92;
  }

  for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100101DA4())
  {
    v108 = v33;
    v115 = v118 + 16;
    v114 = v118 + 88;
    LODWORD(v112) = enum case for AssetPlacement.grid(_:);
    LODWORD(v106) = enum case for AssetPlacement.canvas(_:);
    LODWORD(v105) = enum case for AssetPlacement.hidden(_:);
    LODWORD(v104) = enum case for AssetPlacement.slim(_:);
    v107 = v118 + 8;

    v35 = 0;
    v36 = 0;
    v118 = 0;
    v110 = 0;
    v37 = _swiftEmptyArrayStorage;
    v111 = _swiftEmptyArrayStorage;
    v109 = _swiftEmptyArrayStorage;
    v120 = v31;
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v38 = sub_100101CA4();
      }

      else
      {
        if (v35 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_89;
        }

        v38 = *(v28 + 8 * v35 + 32);
      }

      v33 = v38;
      v39 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      type metadata accessor for ReflectionAsset(0);
      if (!swift_dynamicCastClass() && (*(v33 + OBJC_IVAR____TtC21JournalShareExtension5Asset_isHidden) & 1) == 0)
      {
        if (v31[2] && (v40 = sub_10004C6FC(v33 + OBJC_IVAR____TtC21JournalShareExtension5Asset_id), (v41 & 1) != 0))
        {
          v116 = v36;
          if (!v118 && ((*((swift_isaMask & *v33) + 0x200))(v40) & 1) != 0)
          {
            swift_getObjectType();
            v42 = swift_conformsToProtocol2();
            if (v42)
            {
              v43 = v33;
              v44 = v33;
            }

            else
            {
              v44 = 0;
            }

            v36 = v116;
            v118 = v44;
            v123 = v44;
            v124 = v42;
            v110 = v42;
            goto LABEL_42;
          }

          v46 = v117;
          sub_1000FFD54();
          v47 = v113;
          v48 = v46;
          v49 = v119;
          (*v115)(v113, v48, v119);
          v50 = (*v114)(v47, v49);
          if (v50 == v112)
          {
            v51 = v33;
            sub_1001011B4();
            v36 = v116;
            if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_100101204();
              v36 = v116;
            }

            sub_100101234();
            (*v107)(v117, v119);
            v37 = v127;
            goto LABEL_42;
          }

          if (v50 == v106)
          {
            v52 = v33;
            sub_1001011B4();
            if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v111 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_100101204();
            }

            sub_100101234();
            (*v107)(v117, v119);
            v53 = v126;
            v54 = &v129;
LABEL_37:
            *(v54 - 32) = v53;
            v36 = v116;
            goto LABEL_42;
          }

          if (v50 == v105)
          {
            v55 = v33;
            sub_1001011B4();
            if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v109 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_100101204();
            }

            sub_100101234();
            (*v107)(v117, v119);
            v53 = v125;
            v54 = &v128;
            goto LABEL_37;
          }

          v36 = v116;
          if (v50 != v104)
          {
            goto LABEL_99;
          }

          (*v107)(v117, v119);
LABEL_42:
          type metadata accessor for MultiPinMapAsset(0);
          v56 = swift_dynamicCastClass();
          if (v56)
          {
            v57 = v56;

            v36 = v57;
          }

          else
          {
          }
        }

        else
        {
          v45 = v33;
          sub_1001011B4();
          if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v33 = v36;
            sub_100101204();
          }

          sub_100101234();

          v37 = v127;
        }

        v31 = v120;
        goto LABEL_8;
      }

LABEL_8:
      ++v35;
      if (v39 == i)
      {

        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    ;
  }

  v36 = 0;
  v58 = 0;
  v60 = 0;
  v61 = _swiftEmptyArrayStorage;
  v59 = _swiftEmptyArrayStorage;
  v37 = _swiftEmptyArrayStorage;
LABEL_94:
  *(v33 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_gridAssets) = v37;

  *(v33 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_canvasAssets) = v59;

  *(v33 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_hiddenAssets) = v61;

  v84 = (v33 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_slimAsset);
  v85 = *(v33 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_slimAsset);
  *v84 = v58;
  v84[1] = v60;
  v86 = v58;

  v87 = *(v33 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_multiPinMapAsset);
  *(v33 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_multiPinMapAsset) = v36;
  v88 = v36;

  if (v58)
  {
    sub_100007210(&unk_10014D0F0, &qword_10010CC50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10010C650;
    *(inited + 32) = v86;
    v121 = v37;

    v90 = v86;
    sub_10006FCE4(inited);
    v91 = v121;
  }

  else
  {

    v91 = v37;
  }

  *(v33 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_gridAssetsAndSlimAsset) = v91;

  v92 = sub_1000EC014(&v126, &v123, &v127);

  *(v33 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_fullScreenAssets) = v92;
}

double *sub_1000EC014(unint64_t *a1, void **a2, double **a3)
{
  v5 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100101DA4())
  {

    if (!i)
    {
      break;
    }

    v15 = a3;
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_100101CA4();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      a3 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      type metadata accessor for DrawingAsset(0);
      if (swift_dynamicCastClass())
      {
      }

      else
      {
        sub_100101D04();
        sub_100101D34();
        sub_100101D44();
        sub_100101D14();
      }

      ++v7;
      if (a3 == i)
      {
        a3 = v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_15:

  v10 = *a2;
  if (*a2)
  {
    v11 = *a3;
    sub_100007210(&unk_10014D0F0, &qword_10010CC50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10010C650;
    *(inited + 32) = v10;
    v13 = v10;

    sub_10006FCE4(inited);
    sub_10006FCE4(_swiftEmptyArrayStorage);

    return v11;
  }

  else
  {
    v16 = *a3;

    sub_10006FCE4(_swiftEmptyArrayStorage);
    return v16;
  }
}

void sub_1000EC208()
{
  v1 = sub_1000FF804();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007210(&unk_10014D640, &unk_10010C480);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = *(v0 + 32);
  [v11 setIsUploadedToCloud:0];
  if ((*(v0 + 40) & 1) == 0)
  {
    v12 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_originalUpdatedDate;
    swift_beginAccess();
    v19 = v12;
    sub_100010014(v0 + v12, v10, &unk_10014D640, &unk_10010C480);
    LODWORD(v12) = (*(v2 + 48))(v10, 1, v1);
    sub_10000FFB4(v10, &unk_10014D640, &unk_10010C480);
    if (v12 == 1)
    {
      v13 = [v11 updatedDate];
      if (v13)
      {
        v14 = v13;
        sub_1000FF7B4();

        v15 = 0;
      }

      else
      {
        v15 = 1;
      }

      (*(v2 + 56))(v8, v15, 1, v1);
      v16 = v19;
      swift_beginAccess();
      sub_10001007C(v8, v0 + v16, &unk_10014D640, &unk_10010C480);
      swift_endAccess();
    }
  }

  sub_1000FF7C4();
  isa = sub_1000FF754().super.isa;
  (*(v2 + 8))(v4, v1);
  [v11 setUpdatedDate:isa];
}

id sub_1000EC4AC()
{
  v1 = sub_100007210(&qword_10014CD08, &unk_10010C860);
  __chkstk_darwin(v1 - 8);
  v3 = &v29 - v2;
  v4 = sub_100007210(&unk_10014D640, &unk_10010C480);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_1000FF804();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v31 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = sub_1000FF874();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v29 - v18;
  result = [*(v0 + 32) id];
  if (result)
  {
    v30 = v3;
    v21 = result;
    sub_1000FF854();

    (*(v14 + 32))(v19, v17, v13);
    v22 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_originalUpdatedDate;
    swift_beginAccess();
    sub_100010014(v0 + v22, v6, &unk_10014D640, &unk_10010C480);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      (*(v14 + 8))(v19, v13);
      return sub_10000FFB4(v6, &unk_10014D640, &unk_10010C480);
    }

    else
    {
      (*(v8 + 32))(v12, v6, v7);
      v23 = v30;
      (*(v14 + 16))(v30, v19, v13);
      (*(v14 + 56))(v23, 0, 1, v13);
      v24 = v31;
      (*(v8 + 16))(v31, v12, v7);
      v25 = objc_allocWithZone(type metadata accessor for StreakEventAsset(0));
      v26 = v23;
      v27 = v0;
      v28 = sub_1000FDE90(v26, v24);

      sub_1000E1658();
      (*(v8 + 8))(v12, v7);
      return (*(v14 + 8))(v19, v13);
    }
  }

  return result;
}

void sub_1000EC898(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100101A94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1000EC910()
{
  result = qword_1001510B0;
  if (!qword_1001510B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001510B0);
  }

  return result;
}

unint64_t sub_1000EC968()
{
  result = qword_1001510B8;
  if (!qword_1001510B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001510B8);
  }

  return result;
}

uint64_t sub_1000ECA00@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EntryViewModel(0);
  result = sub_100100BD4();
  *a2 = result;
  return result;
}

id sub_1000ECA40@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_id);
  *a1 = v2;
  return v2;
}

uint64_t sub_1000ECA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v100 = a8;
  v111 = a7;
  v108 = a4;
  v109 = a5;
  v113 = a3;
  v12 = sub_100007210(&qword_10014FAA8, &qword_10010FF50);
  __chkstk_darwin(v12 - 8);
  v106 = &v93 - v13;
  v14 = sub_100100334();
  v112 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v101 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v107 = &v93 - v17;
  v18 = sub_100007210(&qword_10014F8B0, &qword_10010EF28);
  v19 = __chkstk_darwin(v18 - 8);
  v105 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v93 - v22;
  __chkstk_darwin(v21);
  v25 = &v93 - v24;
  v26 = sub_100100284();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v99 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v102 = &v93 - v31;
  v98 = v32;
  __chkstk_darwin(v30);
  v34 = &v93 - v33;
  v35 = *(v27 + 16);
  v115 = v36;
  v97 = v27 + 16;
  v96 = v35;
  (v35)(&v93 - v33, a2);
  v37 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  v104 = v37;
  v114 = v25;
  sub_100010014(v37 + a1, v25, &qword_10014F8B0, &qword_10010EF28);
  v38 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_undoManager;
  v39 = *(a1 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_undoManager);
  v110 = a6;
  if (v39)
  {
    v40 = qword_10014B8F8;
    v103 = v39;
    if (v40 != -1)
    {
      swift_once();
    }

    v41 = sub_100100AE4();
    sub_100003D38(v41, qword_100150B08);
    v42 = v109;

    v43 = sub_100100AC4();
    v44 = sub_1001015A4();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v94 = a1;
      v47 = v46;
      v116 = v46;
      *v45 = 136315138;
      v48 = v42 == 0;
      v95 = v27;
      v49 = v23;
      if (v42)
      {
        v50 = v108;
      }

      else
      {
        v50 = 45;
      }

      v51 = v42;
      v52 = v34;
      v53 = v14;
      if (v48)
      {
        v54 = 0xE100000000000000;
      }

      else
      {
        v54 = v51;
      }

      v55 = sub_10007A774(v50, v54, &v116);
      v14 = v53;
      v34 = v52;

      *(v45 + 4) = v55;
      v23 = v49;
      v27 = v95;
      _os_log_impl(&_mh_execute_header, v43, v44, "undoable (%s)", v45, 0xCu);
      sub_10001100C(v47);
      a1 = v94;
    }

    a6 = v110;
    v56 = v103;
    if (![v103 groupingLevel])
    {
      [v56 beginUndoGrouping];
    }
  }

  sub_1000ED3E8(a1, v34, v113);
  if (a6)
  {
    a6();
  }

  v57 = *(a1 + v38);
  if (!v57)
  {
    v62 = &qword_10014F8B0;
    v63 = &qword_10010EF28;
    v61 = v114;
    goto LABEL_26;
  }

  v58 = v114;
  sub_100010014(v114, v23, &qword_10014F8B0, &qword_10010EF28);
  v59 = v112;
  v60 = *(v112 + 48);
  if (v60(v23, 1, v14) == 1)
  {
    sub_10000FFB4(v58, &qword_10014F8B0, &qword_10010EF28);
    v61 = v23;
    v62 = &qword_10014F8B0;
    v63 = &qword_10010EF28;
LABEL_26:
    sub_10000FFB4(v61, v62, v63);
    return (*(v27 + 8))(v34, v115);
  }

  v64 = *(v59 + 32);
  v65 = v59;
  v66 = v107;
  v64(v107, v23, v14);
  v67 = v105;
  sub_100010014(v104 + a1, v105, &qword_10014F8B0, &qword_10010EF28);
  if (v60(v67, 1, v14))
  {
    (*(v65 + 8))(v66, v14);
    sub_10000FFB4(v114, &qword_10014F8B0, &qword_10010EF28);
    sub_10000FFB4(v67, &qword_10014F8B0, &qword_10010EF28);
    v68 = v106;
    (*(v27 + 56))(v106, 1, 1, v115);
LABEL_25:
    v62 = &qword_10014FAA8;
    v63 = &qword_10010FF50;
    v61 = v68;
    goto LABEL_26;
  }

  v69 = v101;
  (*(v65 + 16))(v101, v67, v14);
  v104 = v57;
  sub_10000FFB4(v67, &qword_10014F8B0, &qword_10010EF28);
  v68 = v106;
  sub_1001002A4();
  v72 = *(v65 + 8);
  v71 = v65 + 8;
  v70 = v72;
  (v72)(v69, v14);
  if ((*(v27 + 48))(v68, 1, v115) == 1)
  {

    (v70)(v66, v14);
    sub_10000FFB4(v114, &qword_10014F8B0, &qword_10010EF28);
    goto LABEL_25;
  }

  v101 = v70;
  v94 = a1;
  v103 = v34;
  v112 = v71;
  v105 = v14;
  v93 = a9;
  v106 = *(v27 + 32);
  (v106)(v102, v68, v115);
  v74 = v109;
  if (v109)
  {
    v75 = sub_100100F94();
    [v104 setActionName:v75];
  }

  v76 = v99;
  v77 = v115;
  v96(v99, v102, v115);
  v78 = *(v27 + 80);
  v95 = v27;
  v79 = (v78 + 16) & ~v78;
  v80 = (v98 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
  v82 = (v81 + 23) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  v84 = v83 + v79;
  v27 = v95;
  (v106)(v84, v76, v77);
  *(v83 + v80) = v113;
  v85 = (v83 + v81);
  *v85 = v108;
  v85[1] = v74;
  v86 = (v83 + v82);
  v87 = v100;
  v88 = v93;
  *v86 = v100;
  v86[1] = v88;
  v89 = (v83 + ((v82 + 23) & 0xFFFFFFFFFFFFFFF8));
  v91 = v110;
  v90 = v111;
  *v89 = v110;
  v89[1] = v90;

  sub_100030340(v87, v88);
  sub_100030340(v91, v90);
  type metadata accessor for EntryViewModel(0);
  v92 = v104;
  sub_100101534();

  (*(v27 + 8))(v102, v77);
  (v101)(v107, v105);
  sub_10000FFB4(v114, &qword_10014F8B0, &qword_10010EF28);
  v34 = v103;
  return (*(v27 + 8))(v34, v115);
}

void sub_1000ED3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100007210(&qword_10014FAA8, &qword_10010FF50);
  __chkstk_darwin(v5 - 8);
  v7 = &v19[-v6];
  v8 = sub_1000E4814(v19);
  v10 = v9;
  v11 = sub_100100334();
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = sub_100100284();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v7, a2, v12);
    (*(v13 + 56))(v7, 0, 1, v12);
    sub_1001002C4();
    sub_10000FFB4(v7, &qword_10014FAA8, &qword_10010FF50);
  }

  (v8)(v19, 0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(a1 + 56);
    ObjectType = swift_getObjectType();
    (*(v14 + 16))(a2, a1, ObjectType, v14);
    swift_unknownObjectRelease();
  }

  v16 = *(a1 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_undoManager);
  if (v16)
  {
    swift_beginAccess();
    v17 = v16;

    sub_1000E46E0(v18);
    swift_endAccess();
  }
}

uint64_t sub_1000ED634(uint64_t a1, uint64_t a2)
{
  v3 = sub_100100334();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = sub_100007210(&qword_1001510F0, &qword_10010FF68);
  __chkstk_darwin(v7 - 8);
  v9 = v16 - v8 + 16;
  v10 = sub_1000E4814(v16);
  if ((*(v4 + 48))(v11, 1, v3))
  {
    (v10)(v16, 0);
    v12 = 1;
  }

  else
  {
    swift_beginAccess();
    (*(v4 + 16))(v6, a2, v3);
    sub_100100304();
    (*(v4 + 8))(v6, v3);
    (v10)(v16, 0);
    v12 = 0;
  }

  v13 = sub_100100CD4();
  (*(*(v13 - 8) + 56))(v9, v12, 1, v13);
  return sub_10000FFB4(v9, &qword_1001510F0, &qword_10010FF68);
}

uint64_t sub_1000ED858@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = sub_100100CF4();
  __chkstk_darwin(v3 - 8);
  v81 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007210(&qword_100151140, &unk_10010FFA0);
  __chkstk_darwin(v5 - 8);
  v78 = &v70 - v6;
  v7 = sub_1001006F4();
  v79 = *(v7 - 8);
  v80 = v7;
  v8 = __chkstk_darwin(v7);
  v75 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = &v70 - v10;
  v86 = sub_100007210(&qword_1001510E0, &qword_10010FF58);
  v76 = *(v86 - 8);
  v11 = __chkstk_darwin(v86);
  v73 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v85 = &v70 - v13;
  v84 = sub_100007210(&qword_10014F8C8, &qword_10010EF30);
  v74 = *(v84 - 8);
  v14 = __chkstk_darwin(v84);
  v72 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v87 = &v70 - v16;
  v83 = sub_1000FF874();
  v17 = *(v83 - 8);
  __chkstk_darwin(v83);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100007210(&qword_10014CD08, &unk_10010C860);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v70 - v24;
  if (qword_10014B8B8 != -1)
  {
    swift_once();
  }

  v26 = sub_100100AE4();
  sub_100003D38(v26, qword_1001588B8);
  v27 = a1;
  v28 = sub_100100AC4();
  v29 = sub_100101594();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v88[0] = v31;
    *v30 = 136315138;
    v32 = [v27 id];
    if (v32)
    {
      v33 = v32;
      sub_1000FF854();

      v34 = *(v17 + 56);
      v35 = v23;
      v36 = 0;
    }

    else
    {
      v34 = *(v17 + 56);
      v35 = v23;
      v36 = 1;
    }

    v37 = v83;
    v34(v35, v36, 1, v83);
    sub_100045508(v23, v25);
    if ((*(v17 + 48))(v25, 1, v37))
    {
      sub_10000FFB4(v25, &qword_10014CD08, &unk_10010C860);
      v38 = 0xE500000000000000;
      v39 = 0x3E6C696E3CLL;
    }

    else
    {
      (*(v17 + 16))(v19, v25, v37);
      sub_10000FFB4(v25, &qword_10014CD08, &unk_10010C860);
      v40 = v37;
      v41 = sub_1000FF814();
      v38 = v42;
      (*(v17 + 8))(v19, v40);
      v39 = v41;
    }

    v43 = sub_10007A774(v39, v38, v88);

    *(v30 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v28, v29, "Creating mergeable attributes for existing entry: %s", v30, 0xCu);
    sub_10001100C(v31);
  }

  v44 = [v27 text];
  if (v44)
  {
    v45 = v44;
    v46 = sub_1000FF564();
    v48 = v47;

    v49 = sub_1000FF534();
    sub_1000064C0(v46, v48);
  }

  else
  {
    v49 = 0;
  }

  v50 = objc_opt_self();
  v71 = v49;
  v51 = [v50 currentTraitCollection];
  v52 = type metadata accessor for CustomAttributeProviderConcrete(0);
  v53 = sub_1000F01B8(&qword_10014F778, type metadata accessor for CustomAttributeProviderConcrete, &unk_10010CFD8);
  v88[3] = v52;
  v88[4] = v53;
  v54 = sub_100007258(v88);
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  sub_100100AD4();
  *v54 = v55;
  sub_1001005A4();
  sub_1000F01B8(&qword_10014F8D0, &type metadata accessor for MergeableTextAttributeScope, &protocol conformance descriptor for MergeableTextAttributeScope);
  sub_100100D44();
  v56 = [v27 title];
  if (!v56 || (v57 = v56, v58 = sub_1000FF564(), v60 = v59, v57, v61 = sub_1000FF534(), sub_1000064C0(v58, v60), !v61))
  {
    v61 = [objc_allocWithZone(NSAttributedString) init];
  }

  sub_100100644();
  sub_1000F01B8(&qword_10014F780, &type metadata accessor for MergeableTitleAttributeScope, &protocol conformance descriptor for MergeableTitleAttributeScope);
  v70 = v61;
  v62 = v85;
  sub_100100D74();
  v63 = v27;
  v64 = v77;
  sub_1001006E4();
  v65 = v76;
  (*(v76 + 16))(v73, v62, v86);
  v66 = v74;
  (*(v74 + 16))(v72, v87, v84);
  v68 = v79;
  v67 = v80;
  (*(v79 + 16))(v75, v64, v80);
  sub_1000F01B8(&qword_10014D1F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_100100DB4();
  sub_100100CE4();
  sub_100100314();

  (*(v68 + 8))(v64, v67);
  (*(v65 + 8))(v85, v86);
  return (*(v66 + 8))(v87, v84);
}

uint64_t sub_1000EE220()
{
  v1 = v0;
  v39 = sub_100007210(&qword_10014CD08, &unk_10010C860);
  __chkstk_darwin(v39);
  v38 = &v35[-v2];
  v3 = sub_100007210(&qword_10014F8B0, &qword_10010EF28);
  __chkstk_darwin(v3 - 8);
  v5 = &v35[-v4];
  v6 = sub_100100334();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v35[-v11];
  v13 = sub_1000FFB34();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 104))(v16, enum case for JournalFeatureFlags.enhancedSync(_:), v13);
  v17 = sub_1000FFB24();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v19 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    sub_100010014(v1 + v19, v5, &qword_10014F8B0, &qword_10010EF28);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      return sub_10000FFB4(v5, &qword_10014F8B0, &qword_10010EF28);
    }

    else
    {
      (*(v7 + 32))(v12, v5, v6);
      v20 = *(v1 + 32);
      v21 = [v20 mergeableAttributes];
      if (v21)
      {
      }

      else
      {
        if (qword_10014B8F0 != -1)
        {
          swift_once();
        }

        v22 = sub_100100AE4();
        sub_100003D38(v22, qword_100150AF0);

        v23 = sub_100100AC4();
        v24 = sub_1001015D4();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v41 = v37;
          *v25 = 136446466;
          v40 = *(v1 + 16);
          v26 = sub_100101024();
          v28 = sub_10007A774(v26, v27, &v41);
          v36 = v24;
          v29 = v28;

          *(v25 + 4) = v29;
          *(v25 + 12) = 2082;
          sub_100010014(v1 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_uuid, v38, &qword_10014CD08, &unk_10010C860);
          v30 = sub_100101024();
          v32 = sub_10007A774(v30, v31, &v41);

          *(v25 + 14) = v32;
          _os_log_impl(&_mh_execute_header, v23, v36, "Migrating legacy fields to mergeable attributes (mode: %{public}s) for entry ID %{public}s", v25, 0x16u);
          swift_arrayDestroy();
        }
      }

      (*(v7 + 16))(v10, v12, v6);
      v33 = objc_allocWithZone(sub_100100714());
      v34 = sub_100100724();
      [v20 setMergeableAttributes:v34];

      return (*(v7 + 8))(v12, v6);
    }
  }

  return result;
}

uint64_t sub_1000EE738(uint64_t a1)
{
  v3 = sub_100007210(&qword_10014FAA8, &qword_10010FF50);
  __chkstk_darwin(v3 - 8);
  v90 = &v83 - v4;
  v5 = sub_100100284();
  v91 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v85 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v7;
  __chkstk_darwin(v6);
  v87 = &v83 - v8;
  v9 = sub_100100334();
  v10 = *(v9 - 8);
  v98 = v9;
  v99 = v10;
  v11 = __chkstk_darwin(v9);
  v86 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v92 = &v83 - v13;
  v14 = sub_100007210(&qword_10014F8B0, &qword_10010EF28);
  v15 = __chkstk_darwin(v14 - 8);
  v96 = (&v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v15);
  v94 = &v83 - v18;
  __chkstk_darwin(v17);
  v20 = &v83 - v19;
  v21 = sub_100007210(&qword_10014F8C8, &qword_10010EF30);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v101 = &v83 - v23;
  v102 = v1;
  v24 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_undoManager;
  v25 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_undoManager);
  v100 = v20;
  if (v25)
  {
    v26 = v21;
    v27 = OBJC_IVAR____TtC21JournalShareExtension16EntryUndoManager_lastUndoableActivity;
    v28 = *&v25[OBJC_IVAR____TtC21JournalShareExtension16EntryUndoManager_lastUndoableActivity];
    v29 = *(v28 + 24);
    v30 = v25;
    if (v29)
    {
      sub_1000D1EA4();
      v28 = *&v25[v27];
      v31 = *(v28 + 24);
      *(v28 + 24) = 0;
      if (v31)
      {
        *(v28 + 16) = 0;
      }
    }

    v21 = v26;
    v20 = v100;

    v32 = *(v28 + 16);
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      __break(1u);
      goto LABEL_31;
    }

    *(v28 + 16) = v34;
  }

  v89 = v5;
  v95 = sub_100032F1C(&off_100134510);
  if (qword_10014B6A8 != -1)
  {
    swift_once();
  }

  v35 = unk_100158610;
  v93 = qword_100158608;
  (*(v22 + 16))(v101, a1, v21);
  v36 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_mergeableAttributes;
  v37 = v102;
  swift_beginAccess();
  v88 = v36;
  sub_100010014(v37 + v36, v20, &qword_10014F8B0, &qword_10010EF28);
  v38 = *(v37 + v24);
  v5 = v98;
  v97 = v35;
  if (v38)
  {
    v39 = qword_10014B8F8;
    v20 = v38;
    if (v39 == -1)
    {
LABEL_11:
      v40 = sub_100100AE4();
      sub_100003D38(v40, qword_100150B08);

      v41 = sub_100100AC4();
      v42 = sub_1001015A4();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v103[0] = v44;
        *v43 = 136315138;

        v45 = v22;
        v46 = v21;
        v47 = sub_10007A774(v93, v97, v103);

        *(v43 + 4) = v47;
        v21 = v46;
        v22 = v45;
        v5 = v98;
        _os_log_impl(&_mh_execute_header, v41, v42, "undoable (%s)", v43, 0xCu);
        sub_10001100C(v44);
      }

      if (![v20 groupingLevel])
      {
        [v20 beginUndoGrouping];
      }

      goto LABEL_16;
    }

LABEL_31:
    swift_once();
    goto LABEL_11;
  }

LABEL_16:
  v48 = sub_1000E4814(v103);
  v49 = *(v99 + 48);
  if (!v49(v50, 1, v5))
  {
    sub_1001002E4();
  }

  (v48)(v103, 0);
  v51 = *(v102 + v24);
  v52 = v100;
  v53 = v96;
  if (v51)
  {
    v54 = v94;
    sub_100010014(v100, v94, &qword_10014F8B0, &qword_10010EF28);
    if (v49(v54, 1, v5) == 1)
    {

      sub_10000FFB4(v52, &qword_10014F8B0, &qword_10010EF28);
      (*(v22 + 8))(v101, v21);
      v55 = v54;
      v56 = &qword_10014F8B0;
      v57 = &qword_10010EF28;
    }

    else
    {
      v83 = v22;
      v59 = v54;
      v60 = v99;
      v61 = v92;
      (*(v99 + 32))(v92, v59, v5);
      sub_100010014(v88 + v102, v53, &qword_10014F8B0, &qword_10010EF28);
      if (v49(v53, 1, v5))
      {

        (*(v60 + 8))(v61, v5);
        sub_10000FFB4(v52, &qword_10014F8B0, &qword_10010EF28);
        (*(v83 + 8))(v101, v21);
        sub_10000FFB4(v53, &qword_10014F8B0, &qword_10010EF28);
        v62 = v90;
        (*(v91 + 56))(v90, 1, 1, v89);
      }

      else
      {
        v63 = v53;
        v64 = v86;
        (*(v60 + 16))(v86, v63, v5);
        v94 = v51;
        sub_10000FFB4(v63, &qword_10014F8B0, &qword_10010EF28);
        v62 = v90;
        sub_1001002A4();
        v67 = *(v60 + 8);
        v66 = v60 + 8;
        v65 = v67;
        (v67)(v64, v5);
        v68 = v91;
        v69 = v89;
        if ((*(v91 + 48))(v62, 1, v89) != 1)
        {
          v88 = *(v68 + 32);
          v88(v87, v62, v69);
          v70 = sub_100100F94();
          v96 = v65;
          v71 = v70;
          [v94 setActionName:v70];

          v72 = v85;
          (*(v68 + 16))(v85, v87, v69);
          v73 = (*(v68 + 80) + 16) & ~*(v68 + 80);
          v74 = (v84 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
          v90 = v21;
          v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
          v76 = (v75 + 23) & 0xFFFFFFFFFFFFFFF8;
          v99 = v66;
          v77 = swift_allocObject();
          v88((v77 + v73), v72, v69);
          *(v77 + v74) = v95;
          v78 = (v77 + v75);
          v79 = v97;
          *v78 = v93;
          v78[1] = v79;
          v80 = (v77 + v76);
          v81 = (v77 + ((v76 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v80 = 0;
          v80[1] = 0;
          *v81 = 0;
          v81[1] = 0;
          type metadata accessor for EntryViewModel(0);

          v82 = v94;
          sub_100101534();

          (*(v68 + 8))(v87, v69);
          v96(v92, v98);
          sub_10000FFB4(v100, &qword_10014F8B0, &qword_10010EF28);
          result = (*(v83 + 8))(v101, v90);
          goto LABEL_28;
        }

        (v65)(v61, v5);
        sub_10000FFB4(v52, &qword_10014F8B0, &qword_10010EF28);
        (*(v83 + 8))(v101, v21);
      }

      v56 = &qword_10014FAA8;
      v57 = &qword_10010FF50;
      v55 = v62;
    }

    result = sub_10000FFB4(v55, v56, v57);
  }

  else
  {

    sub_10000FFB4(v52, &qword_10014F8B0, &qword_10010EF28);
    result = (*(v22 + 8))(v101, v21);
  }

LABEL_28:
  *(v102 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_textChanged) = 1;
  return result;
}

void sub_1000EF23C(id a1)
{
  v2 = v1;
  v4 = sub_100007210(&qword_10014FAA8, &qword_10010FF50);
  __chkstk_darwin(v4 - 8);
  v86 = v79 - v5;
  v87 = sub_100100284();
  v88 = *(v87 - 8);
  v6 = __chkstk_darwin(v87);
  v84 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v7;
  __chkstk_darwin(v6);
  v85 = v79 - v8;
  v9 = sub_100100334();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v93 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v92 = v79 - v13;
  v14 = sub_100007210(&qword_10014F8B0, &qword_10010EF28);
  v15 = __chkstk_darwin(v14 - 8);
  v95 = v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v96 = (v79 - v18);
  v19 = __chkstk_darwin(v17);
  v21 = v79 - v20;
  __chkstk_darwin(v19);
  v99 = v79 - v22;
  v23 = sub_100007210(&qword_1001510E0, &qword_10010FF58);
  v101 = *(v23 - 8);
  v102 = v23;
  v24 = __chkstk_darwin(v23);
  v89 = v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v100 = v79 - v26;
  v27 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_undoManager;
  v28 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_undoManager);
  v98 = v10;
  if (v28)
  {
    v29 = OBJC_IVAR____TtC21JournalShareExtension16EntryUndoManager_lastUndoableActivity;
    v30 = *&v28[OBJC_IVAR____TtC21JournalShareExtension16EntryUndoManager_lastUndoableActivity];
    v31 = *(v30 + 24);
    v10 = v28;
    if (v31 != 1)
    {
      sub_1000D1EA4();
      v30 = *&v28[v29];
      v32 = *(v30 + 24);
      *(v30 + 24) = 1;
      if (v32 != 1)
      {
        *(v30 + 16) = 0;
      }
    }

    v33 = *(v30 + 16);
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      __break(1u);
      goto LABEL_34;
    }

    *(v30 + 16) = v35;

    v10 = v98;
  }

  v94 = sub_100032F1C(&off_100134A90);
  if (qword_10014B6A8 != -1)
  {
    swift_once();
  }

  v28 = unk_100158610;
  v90 = qword_100158608;
  (*(v101 + 16))(v100, a1, v102);
  v36 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  v97 = v36;
  sub_100010014(v2 + v36, v99, &qword_10014F8B0, &qword_10010EF28);
  v37 = *(v2 + v27);
  v91 = v28;
  if (v37)
  {
    v38 = qword_10014B8F8;
    a1 = v37;
    if (v38 == -1)
    {
LABEL_11:
      v39 = sub_100100AE4();
      sub_100003D38(v39, qword_100150B08);

      v40 = sub_100100AC4();
      v41 = sub_1001015A4();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = v9;
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v103[0] = v44;
        *v43 = 136315138;

        v45 = sub_10007A774(v90, v28, v103);

        *(v43 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v40, v41, "undoable (%s)", v43, 0xCu);
        sub_10001100C(v44);

        v9 = v42;
        v10 = v98;
      }

      if (![a1 groupingLevel])
      {
        [a1 beginUndoGrouping];
      }

      goto LABEL_16;
    }

LABEL_34:
    swift_once();
    goto LABEL_11;
  }

LABEL_16:
  v46 = sub_1000E4814(v103);
  v47 = *(v10 + 6);
  if (!v47(v48, 1, v9))
  {
    sub_1001002F4();
  }

  (v46)(v103, 0);
  v49 = *(v2 + v27);
  v50 = v99;
  v51 = v96;
  if (!v49)
  {

    sub_10000FFB4(v50, &qword_10014F8B0, &qword_10010EF28);
    v52 = *(v101 + 8);
    v52(v100, v102);
    goto LABEL_22;
  }

  sub_100010014(v99, v21, &qword_10014F8B0, &qword_10010EF28);
  if (v47(v21, 1, v9) == 1)
  {

    sub_10000FFB4(v50, &qword_10014F8B0, &qword_10010EF28);
    v52 = *(v101 + 8);
    v52(v100, v102);
    v10 = v98;
    sub_10000FFB4(v21, &qword_10014F8B0, &qword_10010EF28);
LABEL_22:
    v53 = v95;
    v54 = v97;
    goto LABEL_28;
  }

  v55 = v92;
  (*(v10 + 4))(v92, v21, v9);
  v54 = v97;
  sub_100010014(v2 + v97, v51, &qword_10014F8B0, &qword_10010EF28);
  if (v47(v51, 1, v9))
  {

    (*(v10 + 1))(v55, v9);
    sub_10000FFB4(v50, &qword_10014F8B0, &qword_10010EF28);
    v52 = *(v101 + 8);
    v52(v100, v102);
    v10 = v98;
    sub_10000FFB4(v51, &qword_10014F8B0, &qword_10010EF28);
    v56 = v86;
    (*(v88 + 56))(v86, 1, 1, v87);
LABEL_27:
    v53 = v95;
    sub_10000FFB4(v56, &qword_10014FAA8, &qword_10010FF50);
    goto LABEL_28;
  }

  v57 = v93;
  (*(v10 + 2))(v93, v51, v9);
  v82 = v49;
  sub_10000FFB4(v51, &qword_10014F8B0, &qword_10010EF28);
  v56 = v86;
  sub_1001002A4();
  v96 = *(v10 + 1);
  v96(v57, v9);
  v58 = v88;
  v59 = v87;
  if ((*(v88 + 48))(v56, 1, v87) == 1)
  {

    v96(v92, v9);
    sub_10000FFB4(v99, &qword_10014F8B0, &qword_10010EF28);
    v52 = *(v101 + 8);
    v52(v100, v102);
    goto LABEL_27;
  }

  v66 = *(v58 + 32);
  v79[1] = v58 + 32;
  v80 = v66;
  v66(v85, v56, v59);
  v67 = sub_100100F94();
  v81 = v10 + 8;
  v68 = v67;
  [v82 setActionName:v67];

  (*(v58 + 16))(v84, v85, v59);
  v69 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v70 = (v83 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v71 + 23) & 0xFFFFFFFFFFFFFFF8;
  v86 = v9;
  v73 = swift_allocObject();
  v80(v73 + v69, v84, v59);
  *(v73 + v70) = v94;
  v74 = (v73 + v71);
  v75 = v91;
  *v74 = v90;
  v74[1] = v75;
  v76 = (v73 + v72);
  v77 = (v73 + ((v72 + 23) & 0xFFFFFFFFFFFFFFF8));
  v9 = v86;
  v54 = v97;
  v10 = v98;
  *v76 = 0;
  v76[1] = 0;
  *v77 = 0;
  v77[1] = 0;
  type metadata accessor for EntryViewModel(0);

  v78 = v82;
  sub_100101534();

  (*(v88 + 8))(v85, v59);
  v96(v92, v9);
  sub_10000FFB4(v99, &qword_10014F8B0, &qword_10010EF28);
  v52 = *(v101 + 8);
  v52(v100, v102);
  v53 = v95;
LABEL_28:
  sub_100010014(v2 + v54, v53, &qword_10014F8B0, &qword_10010EF28);
  if (v47(v53, 1, v9))
  {
    sub_10000FFB4(v53, &qword_10014F8B0, &qword_10010EF28);
    v60 = 0;
  }

  else
  {
    v61 = v93;
    (*(v10 + 2))(v93, v53, v9);
    sub_10000FFB4(v53, &qword_10014F8B0, &qword_10010EF28);
    v62 = v89;
    sub_100100324();
    (*(v10 + 1))(v61, v9);
    v63 = [objc_allocWithZone(UITraitCollection) init];
    v64 = sub_1000A4FBC();
    v103[3] = &_s22TitleAttributeProviderVN;
    v103[4] = v64;
    sub_100007258(v103);
    sub_1000F01B8(&qword_1001510E8, &type metadata accessor for MergeableTitleAttributeScope, &protocol conformance descriptor for MergeableTitleAttributeScope);
    v65 = v102;
    v60 = sub_100100D54();

    sub_10001100C(v103);
    v52(v62, v65);
  }

  sub_1000E8724(v60);

  *(v2 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_textChanged) = 1;
}

void sub_1000EFF44(void *a1)
{
  v2 = v1;
  v4 = sub_1000FF874();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 id];
  if (v8)
  {
    v9 = v8;
    sub_1000FF854();

    v10 = sub_1000E4814(v20);
    v12 = v11;
    v13 = sub_100100334();
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      sub_100100274();
    }

    (v10)(v20, 0);
    [*(v2 + 32) addJournalsObject:a1];
    sub_1000EE220();
    sub_1000EC208();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    if (qword_10014B8F0 != -1)
    {
      swift_once();
    }

    v14 = sub_100100AE4();
    sub_100003D38(v14, qword_100150AF0);
    v19 = sub_100100AC4();
    v15 = sub_1001015B4();
    if (os_log_type_enabled(v19, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v19, v15, "Journal is missing an ID", v16, 2u);
    }

    v17 = v19;
  }
}

uint64_t sub_1000F01B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F0200(unsigned __int8 a1)
{
  v3 = *v1;
  sub_100101F84();
  sub_100101F94(a1);
  v4 = sub_100101FE4();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 13;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 13;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000494A0();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  sub_1000F0308(v6);
  result = v11;
  *v1 = v12;
  return result;
}

void sub_1000F0308(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_100101B84();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_100101F84();
        sub_100101F94(v10);
        v11 = sub_100101FE4() & v7;
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
          v13 = (v12 + v2);
          v14 = (v12 + v6);
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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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
}

void (*sub_1000F04B0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100101CA4();
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
    return sub_1000F09F0;
  }

  __break(1u);
  return result;
}

void (*sub_1000F0530(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100101CA4();
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
    return sub_1000F05B0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F05B8@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1000FFBD4();
  *a2 = result;
  return result;
}

uint64_t sub_1000F064C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F068C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F0728()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F0784(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100010F50(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F07CC()
{
  v1 = sub_100100284();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  if (*(v0 + v6))
  {
  }

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

void sub_1000F08C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_100045C9C(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }
}

NSObject *sub_1000F0A10(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v12 = a1;
  v13 = sub_100007210(&qword_10014C400, &unk_10010FA10);
  __chkstk_darwin(v13 - 8);
  v15 = &v19 - v14;
  v16 = objc_allocWithZone(type metadata accessor for GenericMapThumbnailCacheOperation(0));
  sub_10000C72C(v15);
  sub_1000F138C(v15, v16 + qword_100158918);
  v17 = v6;

  return sub_1000F1AEC(v17, v12, a2, a3 & 1, a4, a5, a6);
}

uint64_t sub_1000F0B1C(int a1, unsigned __int8 a2, id a3)
{
  [a3 userInterfaceStyle];
  sub_1000FF874();
  sub_1000F1344(&qword_10014C018, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v15._countAndFlagsBits = sub_100101E44();
  sub_1001010B4(v15);

  v16._countAndFlagsBits = 45;
  v16._object = 0xE100000000000000;
  sub_1001010B4(v16);
  v17._countAndFlagsBits = sub_100101E44();
  sub_1001010B4(v17);

  v18._countAndFlagsBits = 45;
  v18._object = 0xE100000000000000;
  sub_1001010B4(v18);
  v4 = 0x656772614C78;
  v5 = 0xE500000000000000;
  v6 = 0x6C6C616D73;
  if (a2 != 6)
  {
    v6 = 0x657263536C6C7566;
    v5 = 0xEA00000000006E65;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (a2 != 4)
  {
    v8 = 0x61546D756964656DLL;
    v7 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006564;
  v10 = 0x69576D756964656DLL;
  if (a2 != 2)
  {
    v10 = 0x656772616CLL;
    v9 = 0xE500000000000000;
  }

  if (a2)
  {
    v11 = 0xE600000000000000;
  }

  else
  {
    v4 = 0x6154656772614C78;
    v11 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 1u)
  {
    v9 = v11;
  }

  else
  {
    v4 = v10;
  }

  if (a2 <= 3u)
  {
    v12._countAndFlagsBits = v4;
  }

  else
  {
    v12._countAndFlagsBits = v6;
  }

  if (a2 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  v12._object = v13;
  sub_1001010B4(v12);

  v19._countAndFlagsBits = sub_100101E44();
  sub_1001010B4(v19);

  v20._countAndFlagsBits = 45;
  v20._object = 0xE100000000000000;
  sub_1001010B4(v20);

  return 0x2D626D756874;
}

id sub_1000F0DC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenericMapAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GenericMapAsset(uint64_t a1)
{
  result = qword_100151178;
  if (!qword_100151178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1000F0EB0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC21JournalShareExtension15GenericMapAsset_metadata) = a1;

  return result;
}

void *sub_1000F0EC8()
{
  v1 = sub_100007210(&qword_10014C520, &qword_10010C0F8);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = sub_100100004();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007210(&qword_10014C400, &unk_10010FA10);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_100100214();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC21JournalShareExtension15GenericMapAsset_metadata))
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_6;
  }

  sub_100008C14(v10);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_6:
    v15 = &qword_10014C400;
    v16 = &unk_10010FA10;
    v17 = v10;
    goto LABEL_7;
  }

  (*(v12 + 32))(v14, v10, v11);
  sub_100100204();
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_100007210(&qword_100150748, &qword_10010FA30);
    v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10010BC80;
    (*(v5 + 16))(v20 + v19, v7, v4);
    v21 = sub_1000DFF98(v20);
    swift_setDeallocating();
    v22 = *(v5 + 8);
    v22(v20 + v19, v4);
    swift_deallocClassInstance();
    v22(v7, v4);
    (*(v12 + 8))(v14, v11);
    return v21;
  }

  (*(v12 + 8))(v14, v11);
  v15 = &qword_10014C520;
  v16 = &qword_10010C0F8;
  v17 = v3;
LABEL_7:
  sub_10000FFB4(v17, v15, v16);
  return 0;
}

uint64_t sub_1000F1344(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F138C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007210(&qword_10014C400, &unk_10010FA10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_1000F1444()
{
  ObjectType = swift_getObjectType();
  v2 = qword_1001511D0;
  sub_100007210(&qword_1001512E8, &unk_1001100A0);
  sub_1000F15B4();
  *&v0[v2] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5.receiver = v0;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, "init");
  [*&v3[qword_1001511D0] setCountLimit:500];
  return v3;
}

uint64_t sub_1000F151C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = a1;
  sub_100101B14();

  swift_unknownObjectRelease();
  return sub_10001100C(v8);
}

unint64_t sub_1000F15B4()
{
  result = qword_1001512F0;
  if (!qword_1001512F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001512F0);
  }

  return result;
}

void sub_1000F1600(uint64_t a1)
{
  if (qword_10014B910 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  if (qword_100158A38)
  {
    if (a1)
    {
      v2 = qword_100158A38;
      sub_100007210(&unk_10014D670, &unk_10010C9A0);
      sub_100007210(&qword_10014EF10, &qword_10010E230);
      if (swift_dynamicCast())
      {
        [v1 setValue:v4 forCustomKey:v2];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
  }
}

void sub_1000F1720()
{
  v0 = objc_allocWithZone(CSCustomAttributeKey);
  v1 = sub_100100F94();
  v2 = [v0 initWithKeyName:v1 searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  qword_100158A28 = v2;
}

void sub_1000F17A0()
{
  v0 = objc_allocWithZone(CSCustomAttributeKey);
  v1 = sub_100100F94();
  v2 = [v0 initWithKeyName:v1 searchable:0 searchableByDefault:0 unique:1 multiValued:1];

  qword_100158A30 = v2;
}

void sub_1000F1820()
{
  v0 = objc_allocWithZone(CSCustomAttributeKey);
  v1 = sub_100100F94();
  v2 = [v0 initWithKeyName:v1 searchable:1 searchableByDefault:1 unique:1 multiValued:1];

  qword_100158A38 = v2;
}

void sub_1000F18A0()
{
  v0 = objc_allocWithZone(CSCustomAttributeKey);
  v1 = sub_100100F94();
  v2 = [v0 initWithKeyName:v1 searchable:1 searchableByDefault:1 unique:1 multiValued:1];

  qword_100158A40 = v2;
}

void sub_1000F1920()
{
  v0 = objc_allocWithZone(CSCustomAttributeKey);
  v1 = sub_100100F94();
  v2 = [v0 initWithKeyName:v1 searchable:1 searchableByDefault:1 unique:1 multiValued:1];

  qword_100158A48 = v2;
}

void sub_1000F19A0()
{
  v0 = objc_allocWithZone(CSCustomAttributeKey);
  v1 = sub_100100F94();
  v2 = [v0 initWithKeyName:v1 searchable:1 searchableByDefault:1 unique:1 multiValued:0];

  qword_100158A50 = v2;
}

uint64_t sub_1000F1A20@<X0>(_BYTE *a3@<X8>)
{
  sub_10000F19C(&qword_10014EBE0, &unk_10010C1A0);
  sub_100102004();
  swift_getFunctionTypeMetadata1();
  sub_100101264();
  swift_getWitnessTable();
  result = sub_100101484();
  *a3 = result & 1;
  return result;
}

NSObject *sub_1000F1AEC(NSObject *a1, int a2, uint64_t a3, int a4, uint64_t a5, void *a6, NSObject *a7)
{
  v8 = v7;
  v48 = a7;
  v49 = a5;
  v47 = a4;
  v46 = a3;
  v45 = a2;
  v11 = sub_100100A64();
  v50 = *(v11 - 8);
  v51 = v11;
  __chkstk_darwin(v11);
  v13 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_100100AE4();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v52 = &v44[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v19 = &v44[-v18];
  v20 = OBJC_IVAR____TtC21JournalShareExtension5Asset_type;
  v21 = qword_100158A58;
  v22 = sub_1001007D4();
  (*(*(v22 - 8) + 16))(&v8[v21], a1 + v20, v22);
  *&v8[qword_100158A60] = *(a1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_attachments);
  v23 = OBJC_IVAR____TtC21JournalShareExtension5Asset_sourceAttachments;
  swift_beginAccess();
  *&v8[qword_100158A68] = *(a1 + v23);
  v24 = *(&a1->isa + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);

  if (v24)
  {
    v25 = [v24 objectID];
  }

  else
  {
    v25 = 0;
  }

  *&v8[qword_100158A70] = v25;
  v26 = *(&a1->isa + OBJC_IVAR____TtC21JournalShareExtension5Asset_context);
  *&v8[qword_100158A78] = v26;
  v8[qword_100158A80] = v45;
  v27 = &v8[qword_100158A88];
  *v27 = v46;
  v27[8] = v47 & 1;
  v28 = &v8[qword_100151300];
  v29 = v48;
  v30 = v49;
  *v28 = v49;
  v28[1] = a6;
  *&v8[qword_100158A90] = v29;
  v54 = 0;
  v55 = 0xE000000000000000;
  v31 = v26;

  v48 = v29;
  sub_100101C64(26);

  v54 = 0xD000000000000018;
  v55 = 0x8000000100109DA0;
  v56._countAndFlagsBits = v30;
  v56._object = a6;
  sub_1001010B4(v56);

  sub_100100AD4();
  v32 = qword_100151308;
  (*(v15 + 32))(&v8[qword_100151308], v19, v14);
  v33 = *(v15 + 16);
  v33(v19, &v8[v32], v14);
  sub_100100A44();
  (*(v50 + 32))(&v8[qword_100151310], v13, v51);
  v34 = type metadata accessor for ThumbnailCacheOperation(0);
  v53.receiver = v8;
  v53.super_class = v34;
  v35 = [&v53 init];
  v36 = v52;
  v33(v52, v35 + qword_100151308, v14);
  v37 = v35;
  v38 = sub_100100AC4();
  v39 = sub_1001015A4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Initialized", v40, 2u);

    v41 = v48;
    v42 = a1;
    a1 = v37;
  }

  else
  {
    v41 = v37;
    v42 = v38;
    v38 = v48;
  }

  (*(v15 + 8))(v36, v14);
  return v37;
}

uint64_t sub_1000F1FC0(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v5 = sub_100100A74();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = sub_100101824();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v7 = sub_1001007D4();
  v3[17] = v7;
  v3[18] = *(v7 - 8);
  v3[19] = swift_task_alloc();
  v8 = sub_100100A34();
  v3[20] = v8;
  v3[21] = *(v8 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = sub_100101284();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v3[25] = v9;
  v3[26] = v11;

  return _swift_task_switch(sub_1000F21EC, v9);
}

uint64_t sub_1000F21EC(uint64_t a1)
{
  v1[27] = qword_100151310;
  sub_100100A24();
  v2 = sub_100100A54();
  v3 = sub_100101764();
  if (sub_100101A74())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_100100A14();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v5, "Image attachment loading", "", v4, 2u);
  }

  v6 = v1[23];
  v7 = v1[24];
  v8 = v1[20];
  v9 = v1[21];

  (*(v9 + 16))(v6, v7, v8);
  sub_100100AA4();
  swift_allocObject();
  v10 = sub_100100A94();
  v1[28] = v10;
  v11 = *(v9 + 8);
  v1[29] = v11;
  v1[30] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v7, v8);
  if (qword_10014B840 != -1)
  {
    swift_once();
  }

  v12 = v1[10];
  v1[31] = qword_100158788;
  v13 = (v12 + qword_100151300);
  v14 = *v13;
  v1[32] = *v13;
  v15 = v13[1];
  v1[33] = v15;
  v16 = sub_1000F5A74(v14, v15);
  if (v16 && (v17 = v16, v18 = [v16 imageByPreparingForDisplay], v17, v18))
  {
    v19 = sub_100100AC4();
    v20 = sub_1001015D4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Cache hit.", v21, 2u);
    }

    v22 = v1[10];

    sub_1000F3F40(v22, "Image attachment loading", 24, 2, v10);

    v23 = v1[1];

    return v23(v18);
  }

  else
  {
    v25 = swift_task_alloc();
    v1[34] = v25;
    *v25 = v1;
    v25[1] = sub_1000F2550;
    v26 = v1[9];
    v27 = v1[8];

    return sub_1000F41E8(v27, v26);
  }
}

uint64_t sub_1000F2550(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 280) = a1;

  v3 = *(v2 + 200);

  return _swift_task_switch(sub_1000F2678, v3);
}

uint64_t sub_1000F2678()
{
  v1 = v0[35];
  if (v1)
  {
    v2 = v0[10];
    sub_1000C1884();
    v3 = sub_10007A254(v1);
    if (sub_1000797E0(*(v2 + qword_100158A80)))
    {
      sub_1000F3B9C(v3, v0[32], v0[33]);
    }

    v4 = sub_100100AC4();
    v5 = sub_1001015D4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Image file attachment found.", v6, 2u);
    }

    v7 = v0[28];
    v8 = v0[10];

    sub_1000F3F40(v8, "Image attachment loading", 24, 2, v7);
    goto LABEL_34;
  }

  (*(v0[18] + 104))(v0[19], enum case for AssetType.photo(_:), v0[17]);
  sub_1000F62CC(&qword_10014CA80, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
  sub_100101174();
  sub_100101174();
  v10 = v0[18];
  v9 = v0[19];
  v11 = v0[17];
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    (*(v10 + 8))(v0[19], v0[17]);
  }

  else
  {
    v12 = sub_100101E84();
    (*(v10 + 8))(v9, v11);

    if ((v12 & 1) == 0)
    {
      v28 = v0[10];
      v29 = sub_100100AC4();
      v30 = sub_1001015B4();
      v31 = os_log_type_enabled(v29, v30);
      v32 = v0[10];
      if (v31)
      {
        v33 = swift_slowAlloc();
        *v33 = 134217984;
        v34 = *&v32[qword_100158A60];
        if (v34 >> 62)
        {
          v51 = v33;
          v35 = sub_100101DA4();
          v33 = v51;
        }

        else
        {
          v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v36 = v0[10];
        *(v33 + 4) = v35;
        v37 = v33;

        _os_log_impl(&_mh_execute_header, v29, v30, "did not find image file attachment, attachments.count=%ld", v37, 0xCu);
      }

      else
      {
      }

      v25 = v0[28];
      v27 = v0[10];
LABEL_33:
      sub_1000F3F40(v27, "Image attachment loading", 24, 2, v25);
      v3 = 0;
LABEL_34:

      v50 = v0[1];

      return v50(v3);
    }
  }

  v0[36] = qword_100151308;
  v13 = sub_100100AC4();
  v14 = sub_1001015D4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Will try to get image from Core Data (legacy support)", v15, 2u);
  }

  v16 = v0[10];

  v17 = *(v16 + qword_100158A78);
  v0[37] = v17;
  if (!v17)
  {
    v22 = sub_100100AC4();
    v23 = sub_1001015B4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "context is nil", v24, 2u);
    }

    v25 = v0[28];
    v26 = v0[10];

    v27 = v26;
    goto LABEL_33;
  }

  v18 = *(v0[10] + qword_100158A70);
  v0[38] = v18;
  if (!v18)
  {
    v38 = v17;
    v39 = sub_100100AC4();
    v40 = sub_1001015B4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "assetID is nil", v41, 2u);
    }

    v25 = v0[28];
    v42 = v0[10];

    v27 = v42;
    goto LABEL_33;
  }

  v19 = v17;
  v20 = v18;
  if ([v19 concurrencyType] == 1)
  {
    v21 = v19;
  }

  else
  {
    v21 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
    [v21 setParentContext:v19];
  }

  v0[39] = v21;
  v43 = v0[10];
  (*(v0[15] + 104))(v0[16], enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v0[14]);
  v44 = swift_allocObject();
  v0[40] = v44;
  v44[2] = v21;
  v44[3] = v20;
  v44[4] = v43;
  v45 = v20;
  v21;
  v46 = v43;
  v47 = swift_task_alloc();
  v0[41] = v47;
  v48 = sub_100007210(&qword_10014C040, &qword_10010CDE0);
  *v47 = v0;
  v47[1] = sub_1000F2D90;
  v49 = v0[16];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 6, v49, sub_1000F5DBC, v44, v48);
}

void sub_1000F2D90()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = v2[39];
    (*(v2[15] + 8))(v2[16], v2[14]);

    v4 = v2[25];

    _swift_task_switch(sub_1000F2EE4, v4);
  }
}

uint64_t sub_1000F2EE4()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  if (v1 >> 60 != 15)
  {
    v8 = objc_allocWithZone(UIImage);
    sub_100006514(v2, v1);
    isa = sub_1000FF554().super.isa;
    v10 = [v8 initWithData:isa];

    sub_1000064AC(v2, v1);
    if (v10)
    {
      v11 = *(v0 + 80);
      sub_1000C1884();
      v12 = sub_10007A254(v10);
      if (sub_1000797E0(*(v11 + qword_100158A80)))
      {
        sub_1000F3B9C(v12, *(v0 + 256), *(v0 + 264));
      }

      v13 = sub_100100A54();
      sub_100100A84();
      v14 = sub_100101754();
      if (sub_100101A74())
      {
        v41 = v14;
        v15 = *(v0 + 96);
        v16 = *(v0 + 104);
        v17 = *(v0 + 88);

        sub_100100AB4();

        if ((*(v15 + 88))(v16, v17) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v18 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
          v18 = "";
        }

        v26 = *(v0 + 312);
        v39 = *(v0 + 296);
        v40 = *(v0 + 304);
        v27 = swift_slowAlloc();
        *v27 = 0;
        v28 = sub_100100A14();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v41, v28, "Image attachment loading", v18, v27, 2u);

        sub_1000064AC(v2, v1);
        v13 = v39;
        v10 = v40;
      }

      else
      {
        v24 = *(v0 + 312);
        v25 = *(v0 + 296);

        sub_1000064AC(v2, v1);
      }

      v29 = *(v0 + 224);
      v30 = *(v0 + 80);
      (*(v0 + 232))(*(v0 + 176), *(v0 + 160));
      sub_1000F3F40(v30, "Image attachment loading", 24, 2, v29);
      goto LABEL_28;
    }

    sub_100006514(v2, v1);
    v19 = sub_100100AC4();
    v20 = sub_1001015B4();
    if (!os_log_type_enabled(v19, v20))
    {
      sub_1000064AC(v2, v1);
LABEL_26:
      v35 = *(v0 + 304);
      v36 = *(v0 + 296);
      v5 = *(v0 + 224);
      v37 = *(v0 + 80);

      sub_1000064AC(v2, v1);
      v7 = v37;
      goto LABEL_27;
    }

    result = swift_slowAlloc();
    *result = 134217984;
    v22 = v1 >> 62;
    if ((v1 >> 62) > 1)
    {
      if (v22 != 2)
      {
        v23 = 0;
        goto LABEL_25;
      }

      v32 = *(v2 + 16);
      v31 = *(v2 + 24);
      v33 = __OFSUB__(v31, v32);
      v23 = v31 - v32;
      if (!v33)
      {
        goto LABEL_25;
      }

      __break(1u);
    }

    else if (!v22)
    {
      v23 = BYTE6(v1);
LABEL_25:
      *(result + 4) = v23;
      v34 = result;
      sub_1000064AC(v2, v1);
      _os_log_impl(&_mh_execute_header, v19, v20, "can't create image from data (size: %{bytes}ld)", v34, 0xCu);

      goto LABEL_26;
    }

    LODWORD(v23) = HIDWORD(v2) - v2;
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      __break(1u);
      return result;
    }

    v23 = v23;
    goto LABEL_25;
  }

  v3 = *(v0 + 304);
  v4 = *(v0 + 296);
  v5 = *(v0 + 224);
  v6 = *(v0 + 80);

  v7 = v6;
LABEL_27:
  sub_1000F3F40(v7, "Image attachment loading", 24, 2, v5);
  v12 = 0;
LABEL_28:

  v38 = *(v0 + 8);

  return v38(v12);
}

uint64_t sub_1000F3360(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v8 = (*((swift_isaMask & *v2) + 0xF0) + **((swift_isaMask & *v2) + 0xF0));
  v6 = swift_task_alloc();
  v3[22] = v6;
  *v6 = v3;
  v6[1] = sub_1000F34A0;

  return v8(a1, a2);
}

uint64_t sub_1000F34A0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  *(*v1 + 184) = a1;

  if (v3)
  {
    swift_getObjectType();
    v4 = sub_100101284();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *(v2 + 192) = v4;
  *(v2 + 200) = v6;

  return _swift_task_switch(sub_1000F35F0, v4);
}

uint64_t sub_1000F35F0()
{
  v11 = v0;
  sub_100101364();
  v1 = *(v0[21] + qword_10014D680);
  v2 = swift_task_alloc();
  *v2 = sub_1000C1884();
  KeyPath = swift_getKeyPath();

  v4 = swift_task_alloc();
  *(v4 + 16) = sub_100054644;
  *(v4 + 24) = KeyPath;

  os_unfair_lock_lock((v1 + 40));
  sub_1000F63CC((v1 + 16), &v10);
  os_unfair_lock_unlock((v1 + 40));

  LOBYTE(KeyPath) = v10;

  v5 = v0[23];
  if ((KeyPath & 1) != 0 || !v5)
  {
    v7 = v0[1];
    v8 = v0[23];

    return v7(v8);
  }

  else
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1000F3864;
    v6 = swift_continuation_init();
    v0[17] = sub_100007210(&qword_10014E978, &qword_10010DF38);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10007A710;
    v0[13] = &unk_1001391E0;
    v0[14] = v6;
    [v5 prepareForDisplayWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_1000F3864()
{
  v1 = *(*v0 + 192);

  return _swift_task_switch(sub_1000F396C, v1);
}

uint64_t sub_1000F396C()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 184);
  if (v1)
  {

    v2 = v1;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000F39E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1000F3A8C;

  return sub_1000F3360(a2, a3);
}

uint64_t sub_1000F3A8C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

double sub_1000F3B9C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100100C44();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100100CB4();
  v10 = *(v19 - 8);
  __chkstk_darwin(v19);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10014B848 != -1)
  {
    swift_once();
  }

  v18[1] = qword_100158790;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  aBlock[4] = sub_1000F5E5C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D2F3C;
  aBlock[3] = &unk_1001391B8;
  v15 = _Block_copy(aBlock);

  v16 = a1;

  sub_100100C64();
  v20 = _swiftEmptyArrayStorage;
  sub_1000F62CC(&qword_10014D090, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007210(&qword_10014E310, &unk_10010C8E0);
  sub_10002FCF8();
  sub_100101B64();
  sub_100101714();
  _Block_release(v15);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v19);

  return result;
}

void sub_1000F3EC0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v7 = a2;
    sub_1000F6044(v7, a3, a4);
  }
}

uint64_t sub_1000F3F40(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = sub_100100A74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100100A34();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_100100A54();
  sub_100100A84();
  v21 = sub_100101754();
  result = sub_100101A74();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      sub_100100AB4();

      if ((*(v7 + 88))(v9, v6) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_100100A14();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v21, v19, v16, v17, v18, 2u);

      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1000F41E8(uint64_t a1, uint64_t a2)
{
  v3[10] = v2;
  v5 = sub_100100B74();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = sub_100100B44();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  sub_100007210(&qword_10014EEF0, &qword_10010E210);
  v3[18] = swift_task_alloc();
  v7 = sub_100100A04();
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v8 = sub_1001001E4();
  v3[23] = v8;
  v3[24] = *(v8 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  sub_100007210(&qword_10014EBD0, &qword_10010BE50);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v9 = sub_1000FF514();
  v3[31] = v9;
  v3[32] = *(v9 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = type metadata accessor for AssetAttachment.AssetType(0);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v10 = sub_100101284();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v3[39] = v10;
  v3[40] = v12;

  return _swift_task_switch(sub_1000F4578, v10);
}

uint64_t sub_1000F4578()
{
  v1 = v0[10];
  v2 = *(v1 + qword_100158A60);
  if (v2 >> 62)
  {
LABEL_53:
    v3 = sub_100101DA4();
    v1 = v0[10];
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_43:

    v46 = v0[1];

    return v46(0);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_43;
  }

LABEL_3:
  v4 = 0;
  v5 = (v1 + qword_100158A88);
  v6 = v0[32];
  v7 = v2 & 0xC000000000000001;
  v76 = v2 & 0xFFFFFFFFFFFFFF8;
  v70 = (v6 + 56);
  v8 = v0[20];
  v68 = v2;
  v69 = (v6 + 32);
  v71 = (v6 + 48);
  v72 = v2 & 0xC000000000000001;
  v66 = (v8 + 48);
  v67 = v3;
  v63 = (v8 + 32);
  v62 = (v8 + 8);
  v64 = (v0[24] + 8);
  v65 = (v6 + 8);
  v73 = v5;
  while (1)
  {
    if (v7)
    {
      v11 = sub_100101CA4();
    }

    else
    {
      if (v4 >= *(v76 + 16))
      {
        goto LABEL_52;
      }

      v11 = *(v2 + 8 * v4 + 32);
    }

    v0[41] = v11;
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v78 = *v5;
    v79 = *(v5 + 8);
    v77 = OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType;
    sub_1000329A0(v11 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType, v0[38], type metadata accessor for AssetAttachment.AssetType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v14 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v14 = type metadata accessor for AssetAttachment.AssetType;
      }

      sub_1000328DC(v0[38], v14);
      if (v79)
      {
        goto LABEL_41;
      }

      v19 = *(v11 + 16);
      goto LABEL_21;
    }

    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      v9 = v0[38];

      v10 = v9;
LABEL_5:
      sub_1000328DC(v10, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      goto LABEL_6;
    }

    v15 = v0[37];

    sub_1000329A0(v11 + v77, v15, type metadata accessor for AssetAttachment.AssetType);
    v16 = swift_getEnumCaseMultiPayload();
    v17 = v0[37];
    if (v16 <= 1)
    {
      if (v16)
      {
        sub_1000328DC(v17, type metadata accessor for AssetAttachment.AssetType);
        v29 = 1;
        goto LABEL_28;
      }
    }

    else if ((v16 - 2) >= 2)
    {
      v18 = v0[37];

      v17 = v18 + *(sub_100007210(&qword_10014CE88, &qword_10010C9F0) + 48);
    }

    v20 = v0[27];
    v21 = v0[28];
    sub_10003293C(v17, v21);
    sub_1000329A0(v21, v20, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = v0[30];
      v23 = v0[31];
      v24 = v0[27];
      sub_1000328DC(v0[28], type metadata accessor for AssetAttachment.AssetType.FilePathType);
      (*v69)(v22, v24, v23);
    }

    else
    {
      v25 = v0[28];
      v26 = v0[25];
      v27 = v0[23];
      sub_1001001D4();
      v3 = v67;
      sub_100100184();

      v28 = v27;
      v2 = v68;
      (*v64)(v26, v28);
      sub_1000328DC(v25, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    }

    v29 = 0;
    v7 = v72;
    v5 = v73;
LABEL_28:
    v75 = v0[38];
    v30 = v0[30];
    v31 = v0[31];
    (*v70)(v30, v29, 1, v31);
    v74 = *(sub_100007210(&qword_10014CE88, &qword_10010C9F0) + 48);
    if ((*v71)(v30, 1, v31) == 1)
    {
      v32 = v0[30];

      sub_10000FFB4(v32, &qword_10014EBD0, &qword_10010BE50);
LABEL_38:
      v10 = v75 + v74;
      goto LABEL_5;
    }

    v34 = v0[18];
    v33 = v0[19];
    (*v69)(v0[35], v0[30], v0[31]);
    sub_1000FF424();
    sub_100100964();
    sub_100100924();
    v35 = (*v66)(v34, 1, v33);
    v36 = v0[35];
    v37 = v0[31];
    if (v35 == 1)
    {
      v38 = v0[18];

      (*v65)(v36, v37);
      sub_10000FFB4(v38, &qword_10014EEF0, &qword_10010E210);
LABEL_37:
      v3 = v67;
      v2 = v68;
      v7 = v72;
      v5 = v73;
      goto LABEL_38;
    }

    v40 = v0[21];
    v39 = v0[22];
    v41 = v0[19];
    (*v63)(v39, v0[18], v41);
    sub_1001009A4();
    v61 = sub_1001009E4();
    v42 = *v62;
    (*v62)(v40, v41);
    v42(v39, v41);
    (*v65)(v36, v37);
    if ((v61 & 1) == 0)
    {

      goto LABEL_37;
    }

    v2 = v68;
    v7 = v72;
    v5 = v73;
    if (v79)
    {
      break;
    }

    v19 = *(v11 + 16);
    sub_1000328DC(v75 + v74, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    v3 = v67;
LABEL_21:
    if (v19 == v78)
    {
      goto LABEL_41;
    }

LABEL_6:
    ++v4;
    if (v12 == v3)
    {
      goto LABEL_43;
    }
  }

  sub_1000328DC(v75 + v74, type metadata accessor for AssetAttachment.AssetType.FilePathType);
LABEL_41:
  v43 = v0[31];
  v44 = v0[29];
  sub_1000C1180(v44);
  if ((*v71)(v44, 1, v43) == 1)
  {
    v45 = v0[29];

    sub_10000FFB4(v45, &qword_10014EBD0, &qword_10010BE50);
    goto LABEL_43;
  }

  v48 = v0[10];
  (*v69)(v0[34], v0[29], v0[31]);
  sub_100100B34();
  sub_100100B24();
  if (sub_100079B10(*(v48 + qword_100158A80)))
  {
    v49 = v0[10];
    sub_10006D19C();
    sub_100100B14();
    v50 = *(v49 + qword_100158A90);
    [v50 displayScale];
    v52 = v51;
    v53 = sub_100100B04();
    *v54 = v52 * *v54;
    v53(v0 + 2, 0);
    [v50 displayScale];
    v56 = v55;
    v57 = sub_100100B04();
    *(v58 + 8) = v56 * *(v58 + 8);
    v57(v0 + 6, 0);
  }

  (*(v0[15] + 16))(v0[16], v0[17], v0[14]);
  sub_100100B54();
  v59 = swift_task_alloc();
  v0[42] = v59;
  *v59 = v0;
  v59[1] = sub_1000F4F00;
  v60 = v0[34];

  return UIImageReader.image(contentsOf:)(v60);
}

uint64_t sub_1000F4F00(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 344) = a1;

  v3 = *(v2 + 312);

  return _swift_task_switch(sub_1000F5028, v3);
}

uint64_t sub_1000F5028()
{
  v39 = v0;
  v1 = v0[31];
  v2 = v0[32];
  if (v0[43])
  {
    v3 = v0[34];
    v4 = v0[17];
    v5 = v0[14];
    v6 = v0[15];
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[11];

    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v4, v5);
    (*(v2 + 8))(v3, v1);
    v36 = v0[43];
  }

  else
  {
    (*(v2 + 16))(v0[33], v0[34], v0[31]);
    v10 = sub_100100AC4();
    v33 = sub_1001015B4();
    v11 = os_log_type_enabled(v10, v33);
    v12 = v0[33];
    v13 = v0[34];
    v14 = v0[31];
    v15 = v0[32];
    v16 = v0[17];
    v17 = v0[15];
    v18 = v0[12];
    v35 = v0[13];
    v37 = v0[14];
    v34 = v0[11];
    if (v11)
    {
      v19 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v30;
      *v19 = 136315138;
      sub_1000F62CC(&qword_10014EEC0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v20 = sub_100101E44();
      v21 = v14;
      v31 = v14;
      v32 = v16;
      v22 = v20;
      v24 = v23;
      v25 = *(v15 + 8);
      v25(v12, v21);
      v26 = sub_10007A774(v22, v24, &v38);

      *(v19 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v10, v33, "getImageStoredInFile can't create image from %s", v19, 0xCu);
      sub_10001100C(v30);

      (*(v18 + 8))(v35, v34);
      (*(v17 + 8))(v32, v37);
      v25(v13, v31);
    }

    else
    {

      v27 = *(v15 + 8);
      v27(v12, v14);
      (*(v18 + 8))(v35, v34);
      (*(v17 + 8))(v16, v37);
      v27(v13, v14);
    }

    v36 = 0;
  }

  v28 = v0[1];

  return v28(v36);
}

void sub_1000F5408(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = [a1 objectWithID:a2];
  sub_1000FFB14();
  if (!swift_dynamicCastClass())
  {

    v14 = sub_100100AC4();
    v15 = sub_1001015B4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to retrieve assetMO based on NSManagedObjectID", v16, 2u);
    }

    goto LABEL_11;
  }

  v5 = sub_100045350(0);
  if (!v5 || (v6 = v5, v7 = [v5 data], v6, !v7))
  {
    v11 = sub_100100AC4();
    v12 = sub_1001015D4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "data attachment [0] is nil", v13, 2u);
    }

LABEL_11:
    v8 = 0;
    v10 = 0xF000000000000000;
    goto LABEL_12;
  }

  v8 = sub_1000FF564();
  v10 = v9;

LABEL_12:
  *a3 = v8;
  a3[1] = v10;
}

uint64_t sub_1000F5600()
{

  v1 = qword_100158A58;
  v2 = sub_1001007D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = qword_100151308;
  v4 = sub_100100AE4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = qword_100151310;
  v6 = sub_100100A64();
  v7 = *(*(v6 - 8) + 8);

  return v7(v0 + v5, v6);
}

id sub_1000F574C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThumbnailCacheOperation(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000F5784(uint64_t a1)
{

  v2 = qword_100158A58;
  v3 = sub_1001007D4();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = qword_100151308;
  v5 = sub_100100AE4();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = qword_100151310;
  v7 = sub_100100A64();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

uint64_t type metadata accessor for ThumbnailCacheOperation(uint64_t a1)
{
  result = qword_100151340;
  if (!qword_100151340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F5920(uint64_t a1)
{
  result = sub_1001007D4();
  if (v2 <= 0x3F)
  {
    result = sub_100100AE4();
    if (v3 <= 0x3F)
    {
      result = sub_100100A64();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

id sub_1000F5A74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FF3F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000FF514();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v24 - v13;
  if (qword_10014B710 != -1)
  {
    swift_once();
  }

  v15 = sub_1001001E4();
  sub_100003D38(v15, qword_100158698);
  sub_1001001A4();
  v24[0] = a1;
  v24[1] = a2;
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_10005B20C();
  sub_1000FF4F4();
  (*(v5 + 8))(v7, v4);
  v16 = *(v9 + 8);
  v16(v12, v8);
  v17 = [objc_opt_self() defaultManager];
  sub_1000FF4D4();
  v18 = sub_100100F94();

  v19 = [v17 fileExistsAtPath:v18];

  v20 = 0;
  if (v19)
  {
    sub_1000FF3E4();
    v21 = objc_allocWithZone(UIImage);
    v22 = sub_100100F94();

    v20 = [v21 initWithContentsOfFile:v22];
  }

  v16(v14, v8);
  return v20;
}

uint64_t sub_1000F5D74()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000F5DDC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F5E14()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000F5E68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F6044(UIImage *a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v5 = sub_1000FF3F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000FF514();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  if (qword_10014B710 != -1)
  {
    swift_once();
  }

  v16 = sub_1001001E4();
  sub_100003D38(v16, qword_100158698);
  sub_1001001A4();
  v26 = a2;
  v27 = a3;
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v5);
  sub_10005B20C();
  sub_1000FF4F4();
  (*(v6 + 8))(v8, v5);
  v17 = *(v10 + 8);
  v17(v13, v9);
  v18 = UIImageHEICRepresentation(v25);
  if (v18)
  {
    v19 = v18;
    v20 = sub_1000FF564();
    v22 = v21;

    sub_1000F5E80(v20, v22, v15);
    sub_1000064C0(v20, v22);
  }

  return (v17)(v15, v9);
}

uint64_t sub_1000F62CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F6314(uint64_t *a1)
{
  sub_10000F19C(&qword_10014EBE0, &unk_10010C1A0);
  sub_100102004();
  swift_getFunctionTypeMetadata1();
  sub_100101264();

  return swift_getWitnessTable();
}

uint64_t sub_1000F63CC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 1), *(a1 + 2));
  *a2 = result & 1;
  return result;
}

id sub_1000F6440()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DrawingAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DrawingAsset(uint64_t a1)
{
  result = qword_1001514A0;
  if (!qword_1001514A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1000F6530(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC21JournalShareExtension12DrawingAsset_metadata) = a1;

  return result;
}

id sub_1000F6548()
{
  v1 = v0;
  v2 = sub_100007210(&qword_10014C420, &qword_10010C010);
  __chkstk_darwin(v2 - 8);
  v4 = &v37[-v3];
  v5 = sub_1000FF8B4();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100100F84();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100007210(&unk_10014D640, &unk_10010C480);
  __chkstk_darwin(v7 - 8);
  v9 = &v37[-v8];
  v10 = sub_100100A04();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100100974();
  v14 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_100100944().super.isa;
  v16 = [v14 initWithContentType:isa];

  v17 = (*(v11 + 8))(v13, v10);
  sub_1000800A4(0x676E6977617264, 0xE700000000000000, 0, 0, v17);
  v18 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
  if (v18 && (v19 = [v18 entry]) != 0)
  {
    v20 = v19;
    sub_1000FFBA4();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = sub_1000FF804();
  (*(*(v22 - 8) + 56))(v9, v21, 1, v22);
  sub_100100F14();
  sub_1000FF8A4();
  v23 = sub_100101004();
  v25 = v24;
  sub_100007210(&qword_10014C220, &qword_10010BE70);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10010BC80;
  v27 = sub_100081080(v23, v25, v9);
  v29 = v28;

  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  v30 = sub_1001011C4().super.isa;

  [v16 setAlternateNames:v30];

  sub_10000FFB4(v9, &unk_10014D640, &unk_10010C480);
  sub_10000D92C(v4);
  v31 = sub_1001000D4();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v4, 1, v31) == 1)
  {
    sub_10000FFB4(v4, &qword_10014C420, &qword_10010C010);
LABEL_9:
    v35 = 0;
    goto LABEL_10;
  }

  sub_1001000C4();
  v34 = v33;
  (*(v32 + 8))(v4, v31);
  if (!v34)
  {
    goto LABEL_9;
  }

  v35 = sub_100100F94();

LABEL_10:
  [v16 setTextContent:v35];

  return v16;
}

uint64_t sub_1000F6A8C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001000D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F6AD0(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = sub_100007210(&qword_100151508, &unk_100110238);
  v5 = __chkstk_darwin(v4);
  v26 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  v9 = sub_1000FFCE4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  v16 = *(v10 + 16);
  v25 = v2;
  v16(v13, v2, v9);
  v23 = sub_1000F7E2C(&qword_10014F840, &protocol conformance descriptor for MergeableFont.Traits);
  sub_100101B34();
  sub_1000F7E2C(&qword_100151510, &protocol conformance descriptor for MergeableFont.Traits);
  v24 = a2;
  v17 = sub_100100F04();
  v27 = v4;
  v18 = *(v4 + 48);
  *v8 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v10 + 32))(&v8[v18], v15, v9);
  }

  else
  {
    (*(v10 + 8))(v15, v9);
    v19 = v24;
    v16(&v8[v18], v24, v9);
    v16(v13, v19, v9);
    sub_100101B44();
  }

  v20 = v26;
  sub_10001012C(v8, v26, &qword_100151508, &unk_100110238);
  v21 = *v20;
  (*(v10 + 32))(v28, &v20[*(v27 + 48)], v9);
  return v21;
}

double *sub_1000F6DB8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = sub_1000FFE84();
  v4 = *(v29 - 8);
  v5 = __chkstk_darwin(v29);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v26 - v8;
  v10 = sub_100100D94();
  __chkstk_darwin(v10 - 8);
  if (!(a1 >> 62))
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_16:

    sub_100100D84();
    return sub_1000FFEE4();
  }

  v11 = sub_100101DA4();
  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_3:
  v12 = a1;
  v30 = _swiftEmptyArrayStorage;
  result = sub_100016EBC(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v26[1] = a2;
    v14 = v30;
    v15 = v12;
    v28 = v12;
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = 0;
      v27 = v4 + 32;
      do
      {
        v17 = sub_100101CA4();
        v18 = [swift_unknownObjectRetain() markerFormat];
        sub_100100FD4();

        [v17 startingItemNumber];
        sub_100100D84();
        sub_1000FFE64();
        swift_unknownObjectRelease_n();
        v30 = v14;
        v20 = *(v14 + 2);
        v19 = *(v14 + 3);
        if (v20 >= v19 >> 1)
        {
          sub_100016EBC((v19 > 1), v20 + 1, 1);
          v14 = v30;
        }

        ++v16;
        *(v14 + 2) = v20 + 1;
        (*(v4 + 32))(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v9, v29);
      }

      while (v11 != v16);
    }

    else
    {
      v27 = v4 + 32;
      v21 = 32;
      do
      {
        v22 = *(v15 + v21);
        v23 = [v22 markerFormat];
        sub_100100FD4();

        [v22 startingItemNumber];
        sub_100100D84();
        sub_1000FFE64();

        v30 = v14;
        v25 = *(v14 + 2);
        v24 = *(v14 + 3);
        if (v25 >= v24 >> 1)
        {
          sub_100016EBC((v24 > 1), v25 + 1, 1);
          v14 = v30;
        }

        *(v14 + 2) = v25 + 1;
        (*(v4 + 32))(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v25, v7, v29);
        v21 += 8;
        --v11;
        v15 = v28;
      }

      while (v11);
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F7194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100007210(&qword_10014F850, &qword_10010EEE8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v20 - v9;
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  switch(a1)
  {
    case 1:
      v13 = &enum case for MergeableWritingDirection.rightToLeft(_:);
      goto LABEL_7;
    case 0:
      v13 = &enum case for MergeableWritingDirection.leftToRight(_:);
      goto LABEL_7;
    case -1:
      v13 = &enum case for MergeableWritingDirection.natural(_:);
LABEL_7:
      v14 = *v13;
      v15 = sub_100100474();
      v16 = *(v15 - 8);
      (*(v16 + 104))(v10, v14, v15);
      (*(v16 + 56))(v10, 0, 1, v15);
      goto LABEL_9;
  }

  v15 = sub_100100474();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
LABEL_9:
  sub_10001012C(v10, v12, &qword_10014F850, &qword_10010EEE8);
  sub_10001012C(v12, v7, &qword_10014F850, &qword_10010EEE8);
  sub_100100474();
  v17 = *(v15 - 8);
  if ((*(v17 + 48))(v7, 1, v15) == 1)
  {
    sub_10000FFB4(v7, &qword_10014F850, &qword_10010EEE8);
    v18 = 1;
  }

  else
  {
    (*(v17 + 32))(a2, v7, v15);
    v18 = 0;
  }

  return (*(v17 + 56))(a2, v18, 1, v15);
}

uint64_t sub_1000F7464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100007210(&qword_10014F848, &qword_10010EEE0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v20 - v9;
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  if (a1 <= 1)
  {
    if (!a1)
    {
      v13 = &enum case for MergeableTextAlignment.left(_:);
      goto LABEL_12;
    }

    if (a1 == 1)
    {
      v13 = &enum case for MergeableTextAlignment.center(_:);
      goto LABEL_12;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v13 = &enum case for MergeableTextAlignment.right(_:);
        goto LABEL_12;
      case 3:
        v13 = &enum case for MergeableTextAlignment.justified(_:);
        goto LABEL_12;
      case 4:
        v13 = &enum case for MergeableTextAlignment.natural(_:);
LABEL_12:
        v14 = *v13;
        v15 = sub_1001001F4();
        v16 = *(v15 - 8);
        (*(v16 + 104))(v10, v14, v15);
        (*(v16 + 56))(v10, 0, 1, v15);
        goto LABEL_13;
    }
  }

  v15 = sub_1001001F4();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
LABEL_13:
  sub_10001012C(v10, v12, &qword_10014F848, &qword_10010EEE0);
  sub_10001012C(v12, v7, &qword_10014F848, &qword_10010EEE0);
  sub_1001001F4();
  v17 = *(v15 - 8);
  if ((*(v17 + 48))(v7, 1, v15) == 1)
  {
    sub_10000FFB4(v7, &qword_10014F848, &qword_10010EEE0);
    v18 = 1;
  }

  else
  {
    (*(v17 + 32))(a2, v7, v15);
    v18 = 0;
  }

  return (*(v17 + 56))(a2, v18, 1, v15);
}

id sub_1000F7764()
{
  v1 = v0;
  v2 = sub_1000FFDB4();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007210(&qword_1001514F0, &qword_100110228);
  v5 = __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_100100824();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000FFD74();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, v1, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for MergeableColor.sRGB(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v11 + 32))(v13, v17, v10);
    v19 = sub_100100814();
    (*(v11 + 8))(v13, v10);
    return v19;
  }

  if (v18 == enum case for MergeableColor.catalogColor(_:))
  {
    (*(v15 + 96))(v17, v14);
    sub_10001012C(v17, v9, &qword_1001514F0, &qword_100110228);
    sub_1000F7C10(v9, v7);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10000FFB4(v9, &qword_1001514F0, &qword_100110228);
      sub_10000FFB4(v7, &qword_1001514F0, &qword_100110228);
      return 0;
    }

    else
    {
      v22 = v28;
      v23 = v29;
      v24 = v30;
      (*(v29 + 32))(v28, v7, v30);
      sub_1000FFDA4();
      v25 = sub_100100F94();

      v19 = [objc_opt_self() colorNamed:v25];

      (*(v23 + 8))(v22, v24);
      sub_10000FFB4(v9, &qword_1001514F0, &qword_100110228);
    }

    return v19;
  }

  if (v18 == enum case for MergeableColor.unknown(_:))
  {
    (*(v15 + 96))(v17, v14);
    v20 = *(sub_100007210(&qword_1001514F8, &qword_100110230) + 48);
    v21 = sub_100100CC4();
    (*(*(v21 - 8) + 8))(&v17[v20], v21);
    return 0;
  }

  result = sub_100101E74();
  __break(1u);
  return result;
}

uint64_t sub_1000F7C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007210(&qword_1001514F0, &qword_100110228);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F7C80(char a1)
{
  v2 = sub_1000FFCE4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v12 - v7;
  v12[1] = 0;
  sub_1000F7E2C(&qword_100151500, &protocol conformance descriptor for MergeableFont.Traits);
  result = sub_1001020D4();
  if (a1)
  {
    sub_1000FFCD4();
    sub_1000F6AD0(v8, v6);
    v10 = *(v3 + 8);
    v10(v6, v2);
    result = (v10)(v8, v2);
  }

  if ((a1 & 2) != 0)
  {
    sub_1000FFCC4();
    sub_1000F6AD0(v8, v6);
    v11 = *(v3 + 8);
    v11(v6, v2);
    return (v11)(v8, v2);
  }

  return result;
}

uint64_t sub_1000F7E2C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000FFCE4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1000F7E70(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_100010F50(0, &qword_100151518, NSManagedObjectModel_ptr);
  v4 = sub_100101774();
  v5 = objc_allocWithZone(NSPersistentContainer);
  v6 = sub_100100F94();
  v7 = [v5 initWithName:v6 managedObjectModel:v4];

  v8 = sub_1000F8388(a1, v2);
  sub_100007210(&unk_10014D0F0, &qword_10010CC50);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10010C650;
  *(v9 + 32) = v8;
  sub_100010F50(0, &qword_100151520, NSPersistentStoreDescription_ptr);
  v10 = v8;
  isa = sub_1001011C4().super.isa;

  [v7 setPersistentStoreDescriptions:isa];

  if (qword_10014B878 != -1)
  {
    swift_once();
  }

  v12 = sub_100100AE4();
  sub_100003D38(v12, qword_1001587F8);
  v13 = v7;
  v14 = sub_100100AC4();
  v15 = sub_1001015D4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v16 = 136315394;
    v17 = [v13 name];
    v18 = sub_100100FD4();
    v20 = v19;

    v21 = sub_10007A774(v18, v20, &v28);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = [v13 persistentStoreDescriptions];
    sub_1001011D4();

    v23 = sub_1001011E4();
    v25 = v24;

    v26 = sub_10007A774(v23, v25, &v28);

    *(v16 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "CoreDataStack init for container %s\nSQLite PATH: %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  return v13;
}

uint64_t sub_1000F8194(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = sub_1000FF514();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 == 2)
  {

    return URL.init(fileURLWithPath:)(0x6C756E2F7665642FLL, 0xE90000000000006CLL);
  }

  else
  {
    if (a2)
    {
      v8 = 0x2D73746E656D6F6DLL;
    }

    else
    {
      v8 = 0x73746E656D6F6DLL;
    }

    if (a2)
    {
      v9 = 0xEF676E6967617473;
    }

    else
    {
      v9 = 0xE700000000000000;
    }

    if (qword_10014B710 != -1)
    {
      swift_once();
    }

    v10 = sub_1001001E4();
    sub_100003D38(v10, qword_100158698);
    sub_1001001B4();
    v12[0] = v8;
    v12[1] = v9;
    v14._countAndFlagsBits = 0x6574696C71732ELL;
    v14._object = 0xE700000000000000;
    sub_1001010B4(v14);
    sub_1000FF494();

    return (*(v5 + 8))(v7, v4);
  }
}

id sub_1000F8388(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_1000FF514();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F8194(v6, a2);
  v9 = objc_allocWithZone(NSPersistentStoreDescription);
  sub_1000FF474(v10);
  v12 = v11;
  v13 = [v9 initWithURL:v11];

  [v13 setShouldInferMappingModelAutomatically:1];
  [v13 setShouldMigrateStoreAutomatically:1];
  [v13 setOption:a1 forKey:NSPersistentStoreFileProtectionKey];
  sub_100010F50(0, &qword_10014D230, NSNumber_ptr);
  isa = sub_100101A14(1).super.super.isa;
  [v13 setOption:isa forKey:NSPersistentHistoryTrackingKey];

  v15 = sub_100101A14(1).super.super.isa;
  [v13 setOption:v15 forKey:NSPersistentStoreRemoteChangeNotificationPostOptionKey];

  (*(v5 + 8))(v8, v4);
  return v13;
}

uint64_t sub_1000F855C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1000F8570(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1000F85B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000F861C()
{
  result = qword_100151528;
  if (!qword_100151528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100151528);
  }

  return result;
}

void sub_1000F8670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_1000FBBE4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v14;
  }

  else
  {
    v9 = sub_10004C88C(a2, a3);
    v11 = v10;

    if (v11)
    {
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v15 = *v4;
      if (!v12)
      {
        sub_1000FC840();
        v13 = v15;
      }

      sub_1000FB110(v9, v13);
      *v4 = v13;
    }
  }
}

double sub_1000F8768(char a1, char a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100007210(&qword_10014CBD8, &qword_10010E240);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_100101324();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100101304();

  v10 = sub_1001012F4();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  *(v11 + 32) = v9;
  *(v11 + 40) = a2;
  *(v11 + 41) = a1;
  *(v11 + 48) = ObjectType;

  sub_1000D73F8(0, 0, v7, &unk_1001103B0, v11);

  return result;
}

id sub_1000F88E8()
{
  result = [objc_opt_self() configurationWithPointSize:4 weight:3 scale:46.0];
  qword_100158AA0 = result;
  return result;
}

void sub_1000F8934()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleLargeTitle;
  v2 = [v0 preferredFontForTextStyle:v1];

  v3 = [objc_opt_self() configurationWithFont:v2 scale:-1];
  qword_100158AA8 = v3;
}

id sub_1000F89D0()
{
  if (qword_10014B600 != -1)
  {
    swift_once();
  }

  v1 = qword_1001584F0;
  qword_100158AB0 = qword_1001584F0;

  return v1;
}

unint64_t sub_1000F8A34(char a1)
{
  result = 0x6F746F6870;
  switch(a1)
  {
    case 1:
      result = 0x6F65646976;
      break;
    case 2:
      result = 0x636973756DLL;
      break;
    case 3:
      result = 0x7374736163646F70;
      break;
    case 4:
      result = 1802465122;
      break;
    case 5:
      result = 0x6D726F6665766177;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x722E657275676966;
      break;
    case 8:
      result = 0x772E657275676966;
      break;
    case 9:
      result = 0x6574756F72;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x6F6E2E636973756DLL;
      break;
    case 13:
      result = 0x6F702E7974726170;
      break;
    default:
      return result;
  }

  return result;
}

char *sub_1000F8BEC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC21JournalShareExtension23CanvasFallbackAssetView_symbolImageView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) init];
  v27.receiver = v4;
  v27.super_class = type metadata accessor for CanvasFallbackAssetView();
  v10 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  [v10 setContentMode:2];
  if (qword_10014B940 != -1)
  {
    swift_once();
  }

  v11 = qword_100158AB0;
  [v10 setBackgroundColor:qword_100158AB0];
  v12 = OBJC_IVAR____TtC21JournalShareExtension23CanvasFallbackAssetView_symbolImageView;
  [*&v10[OBJC_IVAR____TtC21JournalShareExtension23CanvasFallbackAssetView_symbolImageView] setContentMode:2];
  [*&v10[v12] setTintColor:v11];
  [v10 addSubview:*&v10[v12]];
  v13 = *&v10[v12];
  v14 = [v13 superview];
  v15 = &selRef_cancel;
  if (v14)
  {
    v16 = v14;
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [v13 centerYAnchor];
    v18 = [v16 centerYAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    [v19 setConstant:0.0];
    if (v19)
    {
      [v19 setActive:1];
    }

    v15 = &selRef_cancel;
  }

  else
  {
    v19 = 0;
    v16 = v13;
  }

  v20 = *&v10[v12];
  v21 = [v20 superview];
  if (v21)
  {
    v22 = v21;
    [v20 v15[97]];
    v23 = [v22 centerXAnchor];
    v24 = [v20 centerXAnchor];
    v25 = [v24 constraintEqualToAnchor:v23];

    [v25 setConstant:0.0];
    if (v25)
    {
      [v25 setActive:1];
    }
  }

  else
  {
    v25 = 0;
    v22 = v20;
  }

  return v10;
}

uint64_t sub_1000F8FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 121) = a6;
  *(v6 + 120) = a5;
  *(v6 + 40) = a4;
  sub_100101304();
  *(v6 + 48) = sub_1001012F4();
  v7 = sub_100101284();
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;

  return _swift_task_switch(sub_1000F9048, v7);
}

uint64_t sub_1000F9048()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    if (((1 << *(v0 + 120)) & 0x74) != 0)
    {
      v2 = qword_10014B950;
      v3 = &qword_100151538;
    }

    else
    {
      v2 = qword_10014B948;
      v3 = &qword_100151530;
    }

    if (v2 != -1)
    {
      v8 = Strong;
      swift_once();
      Strong = v8;
    }

    v6 = *v3;
    *(v0 + 80) = v6;
    *(v0 + 88) = *(Strong + OBJC_IVAR____TtC21JournalShareExtension23CanvasFallbackAssetView_symbolImageView);
    *(v0 + 96) = sub_1000F8A34(*(v0 + 121));
    *(v0 + 104) = v7;
    swift_retain_n();

    return _swift_task_switch(sub_1000F91B8, v6);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1000F91B8()
{
  sub_1000F92D0(v0[12], v0[13]);
  v0[14] = v1;

  v2 = v0[7];

  return _swift_task_switch(sub_1000F9238, v2);
}

uint64_t sub_1000F9238()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[9];

  [v2 setImage:v1];

  v4 = v0[1];

  return v4();
}

void sub_1000F92D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 120);
  if (*(v6 + 16))
  {

    v7 = sub_10004C88C(a1, a2);
    if (v8)
    {
      *(*(v6 + 56) + 8 * v7);

      return;
    }
  }

  v9 = *(v3 + 112);
  v10 = sub_100100F94();
  v11 = [objc_opt_self() _systemImageNamed:v10 withConfiguration:v9];

  if (v11)
  {
    swift_beginAccess();
    v11;

    sub_1000F8670(v11, a1, a2);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000F940C()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000F94A4(uint64_t a1, void *a2, void **a3, uint64_t *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v10 = a3;
    swift_once();
    a3 = v10;
  }

  v6 = *a3;
  type metadata accessor for CanvasFallbackAssetView.SymbolImageCache();
  v7 = swift_allocObject();
  v8 = v6;
  result = swift_defaultActor_initialize();
  *(v7 + 112) = v8;
  *(v7 + 120) = &_swiftEmptyDictionarySingleton;
  *a4 = v7;
  return result;
}

id sub_1000F952C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CanvasFallbackAssetView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000F95B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007210(&qword_100151658, &unk_100110398);
  v6 = sub_100101DD4();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v33 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v21 = v20;
      }

      sub_100101F84();
      v22 = *&v33;
      if (*&v33 == 0.0)
      {
        v22 = 0.0;
      }

      sub_100101FC4(*&v22);
      v23 = *(&v33 + 1);
      if (*(&v33 + 1) == 0.0)
      {
        v23 = 0.0;
      }

      sub_100101FC4(*&v23);
      v24 = sub_100101FE4();
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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

LABEL_39:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v33;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_39;
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
      v32 = 1 << *(v5 + 32);
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

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1000F9870(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007210(&qword_100151650, &qword_100110390);
  v31 = v4;
  v6 = sub_100101DD4();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      if ((v31 & 1) == 0)
      {
      }

      sub_100101F84();
      sub_100101074();

      v15 = sub_100101FE4();
      v16 = -1 << *(v7 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v16) >> 6;
        while (++v18 != v27 || (v26 & 1) == 0)
        {
          v28 = v18 == v27;
          if (v18 == v27)
          {
            v18 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v18);
          if (v29 != -1)
          {
            v19 = __clz(__rbit64(~v29)) + (v18 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v7 + 48) + v19) = v24;
      *(*(v7 + 56) + 8 * v19) = v25;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_34:
  *v3 = v7;
}

void sub_1000F9BF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007210(&qword_10014D568, &qword_10010D150);
  v32 = v4;
  v6 = sub_100101DD4();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v32 & 1) == 0)
      {
        v22 = v21;
      }

      sub_100101F84();
      sub_100101F94(v20);
      v23 = sub_100101FE4();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
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

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1000F9E94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100007210(a3, a4);
  v37 = v6;
  v8 = sub_100101DD4();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v4;
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(v7 + 56);
      v23 = *(*(v7 + 48) + 8 * v21);
      v24 = (v22 + 32 * v21);
      if (v37)
      {
        sub_10002FC28(v24, v38);
      }

      else
      {
        sub_100010FA8(v24, v38);
        v25 = v23;
      }

      sub_100100FD4();
      sub_100101F84();
      sub_100101074();
      v26 = sub_100101FE4();

      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v23;
      sub_10002FC28(v38, (*(v9 + 56) + 32 * v17));
      ++*(v9 + 16);
      v7 = v36;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v5 = v9;
}

void sub_1000FA15C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007210(&qword_10014D588, &qword_10010D170);
  v6 = sub_100101DD4();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v32 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        v21 = v20;
      }

      v22 = sub_100101A24(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v32;
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
}

void sub_1000FA3C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1000FF874();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100007210(&qword_100151648, &unk_100110380);
  v40 = v4;
  v10 = sub_100101DD4();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v6 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
      }

      else
      {
        (*v37)(v44, v25, v5);
      }

      v42 = *(*(v9 + 56) + 8 * v23);
      sub_1000FC9AC();
      v26 = sub_100100E84();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1000FA75C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007210(&qword_100151640, &unk_100110370);
  v36 = v4;
  v6 = sub_100101DD4();
  v7 = v6;
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
    v14 = v6 + 64;
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
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_100101F84();
      sub_100101074();
      v26 = sub_100101FE4();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
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
}

Swift::Int sub_1000FAA00(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100101B84() + 1) & ~v5;
    do
    {
      sub_100101F84();
      sub_100101074();

      result = sub_100101FE4();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1000FAC90(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100101B84() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_100100FD4();
      sub_100101F84();
      v11 = v10;
      sub_100101074();
      v12 = sub_100101FE4();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_1000FAE58(int64_t a1, uint64_t a2)
{
  v4 = sub_1000FF874();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_100101B84();
    v14 = v12;
    v37 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = *(v15 + 56);
    v35 = (v15 - 8);
    v36 = v16;
    do
    {
      v17 = v9;
      v18 = v38 * v11;
      v19 = v14;
      v20 = v15;
      v36(v8, *(a2 + 48) + v38 * v11, v4);
      sub_1000FC9AC();
      v21 = sub_100100E84();
      result = (*v35)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v37)
      {
        if (v22 >= v37 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v38 * a1;
          v26 = v25 + v18 + v38;
          v27 = v38 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v38 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v37 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1000FB110(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100101B84() + 1) & ~v5;
    do
    {
      sub_100101F84();

      sub_100101074();
      v9 = sub_100101FE4();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

unint64_t sub_1000FB2C0(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10004C544(a3, a4);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a2 & 1) != 0)
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      *(v21[7] + 8 * result) = a1;

      return _objc_release_x1();
    }

    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a3;
    v22[1] = a4;
    *(v21[7] + 8 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  if (v18 >= v16 && (a2 & 1) == 0)
  {
    v19 = result;
    sub_1000FBEC0();
    result = v19;
    goto LABEL_8;
  }

  sub_1000F95B8(v16, a2 & 1);
  result = sub_10004C544(a3, a4);
  if ((v17 & 1) == (v20 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  type metadata accessor for CGSize(0);
  sub_100101ED4();
  __break(1u);
  return _objc_release_x1();
}

void sub_1000FB41C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10004C5B8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1000F9870(v14, a3 & 1);
      v9 = sub_10004C5B8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_100101ED4();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1000FC020();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

unint64_t sub_1000FB568(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  result = sub_10004C5FC(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return _objc_release_x1();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = v8;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1000FC17C();
    result = v17;
    goto LABEL_8;
  }

  sub_1000F9BF4(v14, a3 & 1);
  result = sub_10004C5FC(v8);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_100101ED4();
  __break(1u);
  return _objc_release_x1();
}

_OWORD *sub_1000FB728(_OWORD *a1, void *a2, char a3, uint64_t (*a4)(void *), uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v12 = v7;
  v15 = *v7;
  v16 = a4(a2);
  v18 = v15[2];
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = v17;
  v23 = v15[3];
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v24 = v16;
      sub_1000FC300(a5, a6);
      v16 = v24;
      goto LABEL_8;
    }

    sub_1000F9E94(v21, a3 & 1, a5, a6);
    v16 = a4(a2);
    if ((v22 & 1) != (v25 & 1))
    {
LABEL_16:
      a7(0);
      result = sub_100101ED4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v12;
  if (v22)
  {
    v27 = (v26[7] + 32 * v16);
    sub_10001100C(v27);

    return sub_10002FC28(a1, v27);
  }

  else
  {
    sub_1000FBDA0(v16, a2, a1, v26);

    return a2;
  }
}

unint64_t sub_1000FB8E8(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  result = sub_10004C848(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_1000FA15C(v15, a4 & 1);
      result = sub_10004C848(a3);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_16:
        sub_10004DBDC();
        result = sub_100101ED4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = result;
      sub_1000FC470();
      result = v18;
    }
  }

  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * result);
    *v21 = a1;
    v21[1] = a2;
    return result;
  }

  v20[(result >> 6) + 8] |= 1 << result;
  *(v20[6] + 8 * result) = a3;
  v22 = (v20[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  v23 = v20[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20[2] = v24;

  return a3;
}

void sub_1000FBA48(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000FF874();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10004C6FC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return;
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1000FC5D0();
    goto LABEL_7;
  }

  sub_1000FA3C4(v17, a3 & 1);
  v21 = sub_10004C6FC(a2);
  if ((v18 & 1) != (v22 & 1))
  {
LABEL_14:
    sub_100101ED4();
    __break(1u);
    return;
  }

  v14 = v21;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  sub_1000FBE08(v14, v11, a1, v20);
}

void sub_1000FBBE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10004C88C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000FA75C(v16, a4 & 1);
      v11 = sub_10004C88C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_100101ED4();
        __break(1u);
_objc_release_x1:
        _objc_release_x1();
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1000FC840();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_1000FBD5C(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
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

_OWORD *sub_1000FBDA0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_10002FC28(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1000FBE08(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000FF874();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void sub_1000FBEC0()
{
  v1 = v0;
  sub_100007210(&qword_100151658, &unk_100110398);
  v2 = *v0;
  v3 = sub_100101DC4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        v19 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1000FC020()
{
  v1 = v0;
  sub_100007210(&qword_100151650, &qword_100110390);
  v2 = *v0;
  v3 = sub_100101DC4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1000FC17C()
{
  v1 = v0;
  sub_100007210(&qword_10014D568, &qword_10010D150);
  v2 = *v0;
  v3 = sub_100101DC4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        v19 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1000FC300(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100007210(a1, a2);
  v4 = *v2;
  v5 = sub_100101DC4();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        sub_100010FA8(*(v4 + 56) + 32 * v19, v22);
        *(*(v6 + 48) + 8 * v19) = v20;
        sub_10002FC28(v22, (*(v6 + 56) + 32 * v19));
        v21 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1000FC470()
{
  v1 = v0;
  sub_100007210(&qword_10014D588, &qword_10010D170);
  v2 = *v0;
  v3 = sub_100101DC4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
        v20 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1000FC5D0()
{
  v1 = v0;
  v31 = sub_1000FF874();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007210(&qword_100151648, &unk_100110380);
  v3 = *v0;
  v4 = sub_100101DC4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1000FC840()
{
  v1 = v0;
  sub_100007210(&qword_100151640, &unk_100110370);
  v2 = *v0;
  v3 = sub_100101DC4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        v22 = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_1000FC9AC()
{
  result = qword_10014D1F0;
  if (!qword_10014D1F0)
  {
    sub_1000FF874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014D1F0);
  }

  return result;
}

uint64_t sub_1000FCA04()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000FCA3C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000FCA7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 41);
  v8 = *(v1 + 40);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008030;

  return sub_1000F8FA8(a1, v4, v5, v6, v8, v7);
}

id sub_1000FCB6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfettiAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ConfettiAsset(uint64_t a1)
{
  result = qword_100151688;
  if (!qword_100151688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1000FCC5C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC21JournalShareExtension13ConfettiAsset_metadata) = a1;

  return result;
}

id sub_1000FCC74()
{
  v1 = sub_1000FF8B4();
  __chkstk_darwin(v1 - 8);
  v103 = &v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100100F84();
  __chkstk_darwin(v3 - 8);
  v102 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007210(&unk_10014D640, &unk_10010C480);
  v6 = __chkstk_darwin(v5 - 8);
  v104 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  *&v95 = &v87 - v9;
  __chkstk_darwin(v8);
  v99 = &v87 - v10;
  v100 = sub_1000FF804();
  v105 = *(v100 - 8);
  v11 = __chkstk_darwin(v100);
  v96 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v97 = &v87 - v13;
  v14 = sub_100007210(&qword_1001516D8, &qword_100110460);
  __chkstk_darwin(v14 - 8);
  v94 = &v87 - v15;
  v93 = sub_1000FF2B4();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100007210(&qword_1001516E0, &unk_100110468);
  __chkstk_darwin(v17 - 8);
  v19 = &v87 - v18;
  v20 = sub_1000FF2D4();
  v98 = *(v20 - 8);
  __chkstk_darwin(v20);
  v90 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100100A04();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100007210(&qword_10014C458, &qword_10010C040);
  __chkstk_darwin(v26 - 8);
  v28 = &v87 - v27;
  v29 = sub_100100164();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v0;
  sub_10000DDAC(v28);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_10000FFB4(v28, &qword_10014C458, &qword_10010C040);
    return 0;
  }

  else
  {
    v34 = *(v30 + 32);
    v89 = v29;
    v34(v32, v28, v29);
    sub_100100974();
    v35 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = sub_100100944().super.isa;
    v37 = [v35 initWithContentType:isa];

    (*(v23 + 8))(v25, v22);
    sub_100100124();
    v38 = v98;
    if ((*(v98 + 48))(v19, 1, v20) == 1)
    {
      sub_10000FFB4(v19, &qword_1001516E0, &unk_100110468);
    }

    else
    {
      v39 = v90;
      (*(v38 + 32))(v90, v19, v20);
      v40 = v91;
      sub_1000FF2A4();
      sub_1000FD8CC(v94);
      (*(v92 + 8))(v40, v93);
      sub_100101014();
      v41 = sub_100100F94();

      [v37 setDisplayName:v41];

      (*(v38 + 8))(v39, v20);
    }

    v98 = v30;
    v42 = v99;
    sub_100100154();
    v43 = v105;
    v44 = *(v105 + 48);
    v45 = v100;
    v46 = v44(v42, 1, v100);
    v88 = v37;
    if (v46 == 1)
    {
      sub_10000FFB4(v42, &unk_10014D640, &unk_10010C480);
      v47 = 0;
      v48 = 0;
    }

    else
    {
      v49 = *(v43 + 32);
      v50 = v97;
      v49(v97, v42, v45);
      v51 = v32;
      v52 = v95;
      v99 = v51;
      sub_100100134();
      if (v44(v52, 1, v45) == 1)
      {
        (*(v43 + 8))(v50, v45);
        sub_10000FFB4(v52, &unk_10014D640, &unk_10010C480);
        v47 = 0;
        v48 = 0;
        v32 = v99;
      }

      else
      {
        v49(v96, v52, v45);
        sub_100007210(&qword_10014C440, &qword_10010C490);
        v53 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v54 = swift_allocObject();
        v95 = xmmword_10010BC80;
        *(v54 + 16) = xmmword_10010BC80;
        v55 = *(v43 + 16);
        v55(v54 + v53, v50, v45);
        v56 = swift_allocObject();
        *(v56 + 16) = v95;
        v57 = v96;
        v55(v56 + v53, v96, v45);
        v32 = v99;
        v58 = sub_10006E62C(v54, v56, 0);
        v48 = v59;

        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v60 = *(v43 + 8);
        v60(v57, v45);
        v60(v97, v45);
        if (v48)
        {
          v47 = v58;
        }

        else
        {
          v47 = 0;
        }
      }
    }

    v61 = 0;
    v107 = sub_100100144();
    v108[0] = v62;
    v108[1] = v47;
    v108[2] = v48;
    v63 = _swiftEmptyArrayStorage;
LABEL_14:
    v64 = &v108[2 * v61];
    while (++v61 != 3)
    {
      v65 = v64 + 2;
      v66 = *v64;
      v64 += 2;
      if (v66)
      {
        v67 = v32;
        v68 = *(v65 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_10000F02C(0, *(v63 + 2) + 1, 1, v63);
        }

        v70 = *(v63 + 2);
        v69 = *(v63 + 3);
        if (v70 >= v69 >> 1)
        {
          v63 = sub_10000F02C((v69 > 1), v70 + 1, 1, v63);
        }

        *(v63 + 2) = v70 + 1;
        v71 = &v63[2 * v70];
        *(v71 + 4) = v68;
        *(v71 + 5) = v66;
        v43 = v105;
        v32 = v67;
        goto LABEL_14;
      }
    }

    sub_100007210(&qword_10014C210, &unk_10010BE60);
    swift_arrayDestroy();
    v106 = v63;
    sub_100007210(&unk_10014D670, &unk_10010C9A0);
    sub_10000F138();
    sub_100100EA4();

    v72 = sub_100100F94();

    v33 = v88;
    [v88 setContentDescription:v72];

    v73 = *(v101 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
    if (v73)
    {
      v74 = [v73 entry];
      v75 = v104;
      if (v74)
      {
        v76 = v74;
        sub_1000FFBA4();

        v77 = 0;
      }

      else
      {
        v77 = 1;
      }
    }

    else
    {
      v77 = 1;
      v75 = v104;
    }

    (*(v43 + 56))(v75, v77, 1, v45);
    sub_100100F14();
    sub_1000FF8A4();
    v78 = sub_100101004();
    v80 = v79;
    sub_100007210(&qword_10014C220, &qword_10010BE70);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_10010BC80;
    v82 = sub_100081080(v78, v80, v75);
    v84 = v83;

    *(v81 + 32) = v82;
    *(v81 + 40) = v84;
    v85 = sub_1001011C4().super.isa;

    [v33 setAlternateNames:v85];

    sub_10000FFB4(v75, &unk_10014D640, &unk_10010C480);
    (*(v98 + 8))(v32, v89);
  }

  return v33;
}

uint64_t sub_1000FD8CC@<X0>(uint64_t a1@<X8>)
{
  v24[2] = a1;
  v26 = sub_100007210(&qword_1001516E8, &qword_100110478);
  v2 = __chkstk_darwin(v26);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v24 - v5;
  v7 = sub_1000FF2C4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100007210(&qword_1001516F0, &qword_100110480);
  __chkstk_darwin(v25);
  v12 = v24 - v11;
  v13 = sub_100007210(&qword_1001516F8, &qword_100110488);
  __chkstk_darwin(v13 - 8);
  v15 = v24 - v14;
  v16 = sub_1000FF2B4();
  v17 = sub_1000FDD68(&qword_100151700, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
  v27 = v16;
  v18 = v17;
  sub_100101464();
  sub_1000FDD68(&qword_100151708, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
  result = sub_100100F04();
  if (result)
  {
    sub_100101474();
    sub_1000FDD68(&qword_100151710, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
    result = sub_100100EC4();
    if (result)
    {
      v24[1] = v1;
      v20 = *(v8 + 32);
      v20(v6, v15, v7);
      v24[0] = v18;
      v21 = v26;
      v20(&v6[*(v26 + 48)], v10, v7);
      sub_1000FDDB0(v6, v4);
      v22 = *(v21 + 48);
      v20(v12, v4, v7);
      v23 = *(v8 + 8);
      v23(&v4[v22], v7);
      sub_1000FDE20(v6, v4);
      v20(&v12[*(v25 + 36)], &v4[*(v21 + 48)], v7);
      v23(v4, v7);
      sub_100101494();
      return sub_10000FFB4(v12, &qword_1001516F0, &qword_100110480);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FDD68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000FDDB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007210(&qword_1001516E8, &qword_100110478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FDE20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007210(&qword_1001516E8, &qword_100110478);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_1000FDE90(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v32 = a1;
  v33 = sub_1000FF804();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007210(&qword_10014CD08, &unk_10010C860);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v31 = sub_100007210(&qword_1001510C8, &qword_10010FF28);
  __chkstk_darwin(v31);
  v10 = &v31 - v9;
  v11 = sub_1000FF874();
  __chkstk_darwin(v11 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000FFC54();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1001007D4();
  __chkstk_darwin(v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC21JournalShareExtension16StreakEventAsset_metadata) = 0;
  (*(v21 + 104))(v20, enum case for AssetType.streakEvent(_:));
  (*(v15 + 104))(v17, enum case for AssetSource.unknown(_:), v14);
  sub_1000FF864();
  v22 = sub_1000429EC(v13, v20, v17);
  v23 = v32;
  sub_1000FE4B8(v32, v8);
  v25 = v33;
  v24 = v34;
  (*(v3 + 16))(v5, v34, v33);
  v26 = v22;
  sub_1000FFC94();
  (*(v3 + 8))(v24, v25);
  sub_1000C635C(v23);
  swift_storeEnumTagMultiPayload();
  sub_100007210(&qword_100151790, &qword_1001104E0);
  v27 = swift_allocObject();
  v28 = *(*v27 + 104);
  v29 = sub_100007210(&qword_100151798, &qword_1001104E8);
  (*(*(v29 - 8) + 56))(v27 + v28, 1, 1, v29);
  *(v27 + *(*v27 + 112)) = xmmword_10010BC70;
  sub_1000FE528(v10, v27 + *(*v27 + 120));
  *&v26[OBJC_IVAR____TtC21JournalShareExtension16StreakEventAsset_metadata] = v27;

  return v26;
}

id sub_1000FE304()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StreakEventAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StreakEventAsset(uint64_t a1)
{
  result = qword_100151740;
  if (!qword_100151740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FE44C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000FFCA4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1000FE4A0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC21JournalShareExtension16StreakEventAsset_metadata) = a1;

  return result;
}

uint64_t sub_1000FE4B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007210(&qword_10014CD08, &unk_10010C860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FE528(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007210(&qword_1001510C8, &qword_10010FF28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1000FE5A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThirdPartyMediaAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ThirdPartyMediaAsset(uint64_t a1)
{
  result = qword_1001517C8;
  if (!qword_1001517C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1000FE698(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC21JournalShareExtension20ThirdPartyMediaAsset_metadata) = a1;

  return result;
}

id sub_1000FE6B0()
{
  v1 = sub_100007210(&unk_10014D640, &unk_10010C480);
  v2 = __chkstk_darwin(v1 - 8);
  v73 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v65 - v4;
  v6 = sub_1000FFCB4();
  v71 = *(v6 - 8);
  v72 = v6;
  __chkstk_darwin(v6);
  v70 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007210(&qword_10014EBD0, &qword_10010BE50);
  __chkstk_darwin(v8 - 8);
  v10 = &v65 - v9;
  v11 = sub_100100A04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007210(&qword_10014C480, &qword_10010C060);
  __chkstk_darwin(v15 - 8);
  v17 = &v65 - v16;
  v18 = sub_1001006B4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v0;
  sub_10000E22C(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_10000FFB4(v17, &qword_10014C480, &qword_10010C060);
    return 0;
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    sub_100100994();
    v23 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = sub_100100944().super.isa;
    v22 = [v23 initWithContentType:isa];

    (*(v12 + 8))(v14, v11);
    sub_100100664();
    v67 = v18;
    v68 = v5;
    if (v25 || (sub_100100684(), v26))
    {
      v27 = sub_100100F94();
    }

    else
    {
      v27 = 0;
    }

    [v22 setDisplayName:v27];

    v75 = sub_100100684();
    v76[0] = v28;
    v29 = 0;
    v76[1] = sub_100100654();
    v76[2] = v30;
    v31 = _swiftEmptyArrayStorage;
    v66 = v19;
LABEL_7:
    v32 = &v76[2 * v29];
    while (++v29 != 3)
    {
      v33 = v32 + 2;
      v34 = *v32;
      v32 += 2;
      if (v34)
      {
        v35 = *(v33 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_10000F02C(0, *(v31 + 2) + 1, 1, v31);
        }

        v37 = *(v31 + 2);
        v36 = *(v31 + 3);
        if (v37 >= v36 >> 1)
        {
          v31 = sub_10000F02C((v36 > 1), v37 + 1, 1, v31);
        }

        *(v31 + 2) = v37 + 1;
        v38 = &v31[2 * v37];
        *(v38 + 4) = v35;
        *(v38 + 5) = v34;
        goto LABEL_7;
      }
    }

    sub_100007210(&qword_10014C210, &unk_10010BE60);
    swift_arrayDestroy();
    v74 = v31;
    sub_100007210(&unk_10014D670, &unk_10010C9A0);
    sub_10000F138();
    sub_100100EA4();

    v39 = sub_100100F94();

    [v22 setContentDescription:v39];

    sub_100100674();
    v40 = sub_1000FF514();
    v41 = *(v40 - 8);
    v43 = 0;
    if ((*(v41 + 48))(v10, 1, v40) != 1)
    {
      sub_1000FF474(v42);
      v43 = v44;
      (*(v41 + 8))(v10, v40);
    }

    [v22 setThumbnailURL:v43];

    v45 = v70;
    sub_100100694();
    v46 = sub_100093E64();
    v48 = v47;
    (*(v71 + 8))(v45, v72);
    v49 = v73;
    sub_1001006A4();
    v50 = v49;
    v51 = sub_1000FF804();
    v52 = *(v51 - 8);
    v53 = *(v52 + 48);
    if (v53(v49, 1, v51) == 1)
    {
      v54 = *(v69 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
      if (v54)
      {
        v55 = [v54 entry];
        if (v55)
        {
          v56 = v55;
          v57 = v68;
          sub_1000FFBA4();

          v58 = 0;
        }

        else
        {
          v58 = 1;
          v57 = v68;
        }

        v50 = v73;
      }

      else
      {
        v58 = 1;
        v57 = v68;
      }

      (*(v52 + 56))(v57, v58, 1, v51);
      if (v53(v50, 1, v51) != 1)
      {
        sub_10000FFB4(v50, &unk_10014D640, &unk_10010C480);
      }
    }

    else
    {
      v57 = v68;
      (*(v52 + 32))(v68, v50, v51);
      (*(v52 + 56))(v57, 0, 1, v51);
    }

    sub_100007210(&qword_10014C220, &qword_10010BE70);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_10010BC80;
    v60 = sub_100081080(v46, v48, v57);
    v62 = v61;

    *(v59 + 32) = v60;
    *(v59 + 40) = v62;
    v63 = sub_1001011C4().super.isa;

    [v22 setAlternateNames:v63];

    sub_10000FFB4(v57, &unk_10014D640, &unk_10010C480);
    (*(v66 + 8))(v21, v67);
  }

  return v22;
}

uint64_t sub_1000FEF84(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001006B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1000FEFEC()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100151818 = result;
  return result;
}

uint64_t sub_1000FF090(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1001008F4();
  sub_100003CD4(v5, a2);
  sub_100003D38(v5, a2);
  if (qword_10014B958 != -1)
  {
    swift_once();
  }

  v6 = qword_100151818;
  return sub_1001008E4();
}

CGSize CGSizeApplyAffineTransform(CGSize size, CGAffineTransform *t)
{
  v4 = _CGSizeApplyAffineTransform(size, t);
  height = v4.height;
  width = v4.width;
  result.height = height;
  result.width = width;
  return result;
}

CLLocationCoordinate2D MKCoordinateForMapPoint(MKMapPoint mapPoint)
{
  v3 = _MKCoordinateForMapPoint(mapPoint);
  longitude = v3.longitude;
  latitude = v3.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  v3 = _MKMapPointForCoordinate(coordinate);
  y = v3.y;
  x = v3.x;
  result.y = y;
  result.x = x;
  return result;
}