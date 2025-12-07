uint64_t sub_16E0(uint64_t a1, uint64_t a2)
{
  v2 = *sub_9790();
  v3 = sub_99CC();
  v4 = sub_99CC();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_99DC();
  return v6;
}

void sub_17A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {

    v7 = sub_99CC();
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    aBlock[4] = sub_1C98;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CA0;
    aBlock[3] = &unk_C6E0;
    v9 = _Block_copy(aBlock);

    v10.receiver = v4;
    v10.super_class = type metadata accessor for DemoDataSource();
    objc_msgSendSuper2(&v10, "getElementsInSection:withHandler:", v7, v9);
    _Block_release(v9);

    sub_1D64(a3, a4);
  }
}

uint64_t sub_18C8(unint64_t a1, uint64_t (*a2)(void *))
{
  v4 = sub_98BC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v30 - v9;
  if (!a1)
  {
    return a2(&_swiftEmptyArrayStorage);
  }

  if (!(a1 >> 62))
  {
    result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_4;
    }

    return a2(&_swiftEmptyArrayStorage);
  }

  result = sub_9B6C();
  if (!result)
  {
    return a2(&_swiftEmptyArrayStorage);
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = sub_9B4C();
    goto LABEL_7;
  }

  if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    v12 = *(a1 + 32);
LABEL_7:
    v13 = v12;
    v14 = sub_99CC();
    v15 = REDemoDateForIdentifier();

    if (v15)
    {
      sub_989C();

      (*(v5 + 32))(v10, v8, v4);
      isa = sub_988C().super.isa;
      v17 = REAbsoluteRelevanceProviderForDate();

      if (v17)
      {
        v18 = [v13 content];
        v31 = [v13 action];
        v34 = sub_1FE4(&unk_10AC0, &unk_A930);
        v19 = swift_allocObject();
        v32 = xmmword_A8F0;
        *(v19 + 16) = xmmword_A8F0;
        *(v19 + 32) = v17;
        v20 = objc_allocWithZone(REElement);
        v33 = v17;
        v21 = sub_99CC();
        sub_202C(0, &qword_10AE0, RERelevanceProvider_ptr);
        v22.super.isa = sub_9A4C().super.isa;
        v30 = v13;
        v23 = v22.super.isa;

        v24 = v18;
        v25 = v18;
        v26 = v31;
        v27 = [v20 initWithIdentifier:v21 content:v25 action:v31 relevanceProviders:v23];

        v28 = swift_allocObject();
        *(v28 + 16) = v32;
        *(v28 + 32) = v27;
        v29 = v27;
        a2(v28);

        return (*(v5 + 8))(v10, v4);
      }

      (*(v5 + 8))(v10, v4);
    }

    return a2(&_swiftEmptyArrayStorage);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C60()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1CA0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_202C(0, &qword_109A8, REElement_ptr);
    v2 = sub_9A5C();
  }

  v3(v2);
}

uint64_t sub_1D28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D64(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_1E40(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_202C(0, &qword_109A8, REElement_ptr);
    v3.super.isa = sub_9A4C().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  (*(a2 + 16))(a2);
}

id sub_1EC8()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1EFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DemoDataSource();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1F70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DemoDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1FA4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1FE4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_202C(uint64_t a1, unint64_t *a2, void *a3)
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

id sub_2074()
{
  v0 = objc_opt_self();
  v1 = sub_99CC();
  v2 = [v0 _symbolImageProviderWithSystemName:v1];

  sub_225C();
  isa = sub_9AFC(35.0).super.super.isa;
  [v2 setOverridePointSize:isa];

  v4 = objc_opt_self();
  v5 = v2;
  v6 = [v4 fiui_meditationTeal];
  [v5 setTintColor:v6];

  sub_16E0(0x5450495243534544, 0xEB000000004E4F49);
  v7 = sub_99CC();

  v8 = [objc_opt_self() textProviderWithText:v7];

  v9 = [objc_allocWithZone(REContent) init];
  [v9 setObject:REElementInteractionTap forKey:REContentInteractionKey];
  [v9 setBodyImageProvider:v5];

  [v9 setStyle:3];
  [v9 setDescription1TextProvider:v8];

  return v9;
}

unint64_t sub_225C()
{
  result = qword_109B0;
  if (!qword_109B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_109B0);
  }

  return result;
}

uint64_t sub_22D0()
{
  v1 = OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_notifyToken;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2314(int a1)
{
  v3 = OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_notifyToken;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_23D0()
{
  v1 = OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_query;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_241C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_query;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_24D4()
{
  v1 = OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_queryRetries;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2518(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_queryRetries;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_25C8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_98BC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_2634@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_mostRecentSessionEndDate;
  swift_beginAccess();
  return sub_268C(v1 + v3, a1);
}

uint64_t sub_268C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1FE4(&qword_109E8, &unk_A990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_mostRecentSessionEndDate;
  swift_beginAccess();
  sub_275C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_275C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1FE4(&qword_109E8, &unk_A990);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_288C(uint64_t a1, uint64_t a2)
{
  v2 = *sub_903C();

  return v2;
}

uint64_t sub_2950()
{
  sub_1FE4(&qword_109F0, qword_AB20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_A940;
  *(v0 + 32) = sub_99DC();
  *(v0 + 40) = v1;
  return v0;
}

NSObject *sub_29C4()
{
  v1 = sub_992C();
  v46 = *(v1 - 8);
  v47 = v1;
  v2 = __chkstk_darwin(v1);
  v42 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v41 = &v40 - v4;
  v5 = sub_9ABC();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_9A9C();
  __chkstk_darwin(v7);
  v8 = sub_996C();
  __chkstk_darwin(v8 - 8);
  *&v0[OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_notifyToken] = -1;
  *&v0[OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_query] = 0;
  *&v0[OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_queryRetries] = 0;
  v9 = OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_mostRecentSessionEndDate;
  v10 = sub_98BC();
  (*(*(v10 - 8) + 56))(&v0[v9], 1, 1, v10);
  result = [objc_opt_self() fiui_sharedHealthStoreForCarousel];
  if (result)
  {
    *&v0[OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_healthStore] = result;
    sub_202C(0, &qword_109F8, OS_dispatch_queue_ptr);
    sub_995C();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_8410(&qword_10A00, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1FE4(&qword_10A08, &qword_A9A0);
    sub_7D90(&qword_10A10, &qword_10A08, &qword_A9A0);
    sub_9B2C();
    (*(v44 + 104))(v43, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v45);
    *&v0[OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_queue] = sub_9AEC();
    v12 = type metadata accessor for DataSource(0);
    v49.receiver = v0;
    v49.super_class = v12;
    v13 = objc_msgSendSuper2(&v49, "init");
    v14 = kNLMindPreferencesChangedNotification;
    v15 = v13;
    v16 = sub_9ACC();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_3444;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_3490;
    aBlock[3] = &unk_C780;
    v18 = _Block_copy(aBlock);

    v19 = OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_notifyToken;
    swift_beginAccess();
    v20 = notify_register_dispatch(v14, (v15 + v19), v16, v18);
    swift_endAccess();
    _Block_release(v18);

    if (v20 || *(&v15->isa + v19) == -1)
    {
      v21 = Log.datasource.unsafeMutableAddressor();
      v23 = v46;
      v22 = v47;
      v24 = v42;
      (*(v46 + 16))(v42, v21, v47);
      v25 = sub_990C();
      v26 = sub_9A7C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 67109120;
        *(v27 + 4) = v20;
        _os_log_impl(&dword_0, v25, v26, "Error registering for data protection notifications, result: %u", v27, 8u);

        v28 = v15;
      }

      else
      {
        v28 = v25;
        v25 = v15;
      }

      (*(v23 + 8))(v24, v22);
      return v15;
    }

    v29 = Log.datasource.unsafeMutableAddressor();
    v31 = v46;
    v30 = v47;
    v32 = v41;
    (*(v46 + 16))(v41, v29, v47);
    v33 = sub_990C();
    v34 = sub_9A8C();
    if (!os_log_type_enabled(v33, v34))
    {

      (*(v31 + 8))(v32, v30);
      return v15;
    }

    v35 = swift_slowAlloc();
    result = swift_slowAlloc();
    aBlock[0] = result;
    *v35 = 136315138;
    if (v14)
    {
      v36 = result;
      v37 = sub_9A0C();
      v39 = sub_7740(v37, v38, aBlock);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_0, v33, v34, "Registered for data protection notifications for name: %s", v35, 0xCu);
      sub_7CE8(v36);

      (*(v31 + 8))(v41, v30);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_3098(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for DataSource(uint64_t a1)
{
  result = qword_10C18;
  if (!qword_10C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_312C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_3164(uint64_t a1)
{
  v2 = sub_994C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_996C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *&result[OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_queue];
    v16 = v6;
    v12 = result;
    v15 = v11;

    aBlock[4] = sub_85E8;
    aBlock[5] = a1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_344C;
    aBlock[3] = &unk_CA28;
    v13 = _Block_copy(aBlock);

    sub_995C();
    v17 = &_swiftEmptyArrayStorage;
    sub_8410(&qword_10A18, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1FE4(&qword_10A20, qword_A9A8);
    sub_7D90(&qword_10A28, &qword_10A20, qword_A9A8);
    sub_9B2C();
    v14 = v15;
    sub_9ADC();
    _Block_release(v13);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v16);
  }

  return result;
}

uint64_t sub_344C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_3490(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_34E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_35F8(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v28 = a3;
  v26 = a1;
  v6 = v4;
  v7 = sub_994C();
  v31 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_996C();
  v29 = *(v10 - 8);
  v30 = v10;
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_992C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = Log.datasource.unsafeMutableAddressor();
  (*(v14 + 16))(v16, v17, v13);
  v18 = sub_990C();
  v19 = sub_9A6C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v25 = v12;
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, v26, v20, 2u);
    v12 = v25;
  }

  (*(v14 + 8))(v16, v13);
  v21 = swift_allocObject();
  *(v21 + 16) = v6;
  aBlock[4] = v28;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_344C;
  aBlock[3] = a4;
  v22 = _Block_copy(aBlock);
  v23 = v6;
  sub_995C();
  v32 = &_swiftEmptyArrayStorage;
  sub_8410(&qword_10A18, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1FE4(&qword_10A20, qword_A9A8);
  sub_7D90(&qword_10A28, &qword_10A20, qword_A9A8);
  sub_9B2C();
  sub_9ADC();
  _Block_release(v22);
  (*(v31 + 8))(v9, v7);
  (*(v29 + 8))(v12, v30);
}

uint64_t sub_3A64(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a1;
  v7 = sub_994C();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_996C();
  v36 = *(v10 - 8);
  v37 = v10;
  __chkstk_darwin(v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_992C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = Log.datasource.unsafeMutableAddressor();
  (*(v14 + 16))(v16, v17, v13);

  v18 = sub_990C();
  v19 = sub_9A6C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v33 = a4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v32 = v9;
    v23 = a3;
    v24 = v22;
    aBlock[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_7740(v34, a2, aBlock);
    _os_log_impl(&dword_0, v18, v19, "Elements requested (section = %s).", v21, 0xCu);
    sub_7CE8(v24);
    a3 = v23;
    v9 = v32;

    a4 = v33;
  }

  (*(v14 + 8))(v16, v13);
  v25 = v35;
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = a3;
  v26[4] = a4;
  aBlock[4] = sub_7E50;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_344C;
  aBlock[3] = &unk_C870;
  v27 = _Block_copy(aBlock);
  v28 = v25;
  sub_7E5C(a3, a4);
  sub_995C();
  v40 = &_swiftEmptyArrayStorage;
  sub_8410(&qword_10A18, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1FE4(&qword_10A20, qword_A9A8);
  sub_7D90(&qword_10A28, &qword_10A20, qword_A9A8);
  v29 = v39;
  sub_9B2C();
  sub_9ADC();
  _Block_release(v27);
  (*(v38 + 8))(v9, v29);
  (*(v36 + 8))(v12, v37);
}

uint64_t sub_3ED0(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = sub_992C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v35 - v10;
  v12 = sub_98BC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_98AC();
  v16 = sub_6EF8(v15);
  result = (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v35[1] = a3;
    v18 = Log.datasource.unsafeMutableAddressor();
    v19 = *(v6 + 16);
    v19(v11, v18, v5);
    v20 = sub_990C();
    v21 = sub_9A6C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v35[0] = a2;
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "A mindfulness session is appropriate for this interval.", v22, 2u);
      a2 = v35[0];
    }

    v23 = *(v6 + 8);
    v23(v11, v5);
    v24 = sub_8080();
    v19(v9, v18, v5);
    v25 = v24;
    v26 = sub_990C();
    v27 = sub_9A6C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = v23;
      v29 = swift_slowAlloc();
      v30 = a2;
      v31 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v25;
      *v31 = v25;
      v32 = v25;
      _os_log_impl(&dword_0, v26, v27, "Returning element %@", v29, 0xCu);
      sub_8528(v31, &qword_10B08, qword_AA10);
      a2 = v30;

      v23 = v28;
    }

    result = (v23)(v9, v5);
    if (a2)
    {
      sub_1FE4(&unk_10AC0, &unk_A930);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_A8F0;
      *(v33 + 32) = v25;
      v34 = v25;
      a2(v33);
    }

    __break(1u);
    goto LABEL_12;
  }

  if (!a2)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  return (a2)(&_swiftEmptyArrayStorage);
}

id sub_4374()
{
  v0 = sub_98FC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_98BC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v23 - v9;
  sub_202C(0, &qword_10AF0, HKSampleType_ptr);
  result = [swift_getObjCClassFromMetadata() categoryTypeForIdentifier:HKCategoryTypeIdentifierMindfulSession];
  if (result)
  {
    v12 = result;
    sub_98EC();
    sub_98AC();
    sub_98CC();
    v13 = *(v5 + 8);
    v23[1] = v5 + 8;
    v25 = v13;
    v13(v8, v4);
    (*(v1 + 8))(v3, v0);
    v14 = objc_opt_self();
    isa = sub_988C().super.isa;
    v16 = [v14 predicateForSamplesWithStartDate:isa endDate:0 options:0];

    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = objc_allocWithZone(HKAnchoredObjectQuery);
    v30 = sub_8480;
    v31 = v17;
    v24 = v4;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_4788;
    v29 = &unk_C9B0;
    v19 = _Block_copy(&aBlock);

    v20 = [v18 initWithType:v12 predicate:v16 anchor:0 limit:0 resultsHandler:v19];
    _Block_release(v19);

    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = sub_867C;
    v31 = v21;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_4788;
    v29 = &unk_C9D8;
    v22 = _Block_copy(&aBlock);

    sub_7E5C(sub_867C, v21);

    [v20 setUpdateHandler:v22];
    _Block_release(v22);

    v25(v10, v24);

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_4788(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a3;
  v11 = *(a1 + 32);
  if (a3)
  {
    sub_202C(0, &qword_10B00, HKSample_ptr);
    v9 = sub_9A5C();
  }

  if (a4)
  {
    sub_202C(0, &qword_10AF8, HKDeletedObject_ptr);
    a4 = sub_9A5C();
  }

  v12 = a2;
  v13 = a5;
  v14 = a6;
  v11(v12, v9, a4, a5, a6);
}

void sub_48A0()
{
  v1 = v0;
  v2 = sub_992C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_999C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_queue);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = sub_99BC();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v12 = Log.datasource.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v12, v2);
    v13 = sub_990C();
    v14 = sub_9A6C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "Starting mindful session query", v15, 2u);
    }

    v16 = (*(v3 + 8))(v5, v2);
    v17 = (*(&stru_68.offset + (swift_isaMask & *v1)))(v16);
    if (v17)
    {
      v18 = v17;
      [*(v1 + OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_healthStore) stopQuery:v17];
    }

    v19 = sub_4374();
    [*(v1 + OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_healthStore) executeQuery:v19];
    v20 = *(&stru_68.reloff + (swift_isaMask & *v1));
    v21 = v19;
    v20(v19);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_4BA0()
{
  v1 = v0;
  v2 = sub_992C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_999C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_queue);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = sub_99BC();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v13 = Log.datasource.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v13, v2);
    v14 = sub_990C();
    v15 = sub_9A6C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "Stopping mindful session query", v16, 2u);
    }

    v17 = (*(v3 + 8))(v5, v2);
    v18 = (*(&stru_68.offset + (swift_isaMask & *v1)))(v17);
    if (v18)
    {
      v19 = v18;
      [*(v1 + OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_healthStore) stopQuery:v18];
    }

    return (*&stru_B8.sectname[swift_isaMask & *v1])(0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_4E70()
{
  v1 = v0;
  v2 = sub_994C();
  v68 = *(v2 - 8);
  __chkstk_darwin(v2);
  v66 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_996C();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_993C();
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v7 = (&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_998C();
  v62 = *(v8 - 8);
  v63 = v8;
  v9 = __chkstk_darwin(v8);
  v57 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v61 = &v56 - v11;
  v69 = sub_992C();
  v12 = *(v69 - 1);
  v13 = __chkstk_darwin(v69);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v56 - v16;
  v18 = sub_999C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v1 + OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_queue);
  *v21 = v22;
  (*(v19 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v18);
  v58 = v22;
  LOBYTE(v22) = sub_99BC();
  result = (*(v19 + 8))(v21, v18);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v56 = v2;
  v24 = *(&stru_68.reserved2 + (swift_isaMask & *v1));
  v25 = (v24)(result);
  v26 = sub_9094();
  if (v25 < *v26)
  {
    result = (*&stru_B8.segname[(swift_isaMask & *v1) - 8])(aBlock);
    if (!__OFADD__(*v27, 1))
    {
      ++*v27;
      v28 = (result)(aBlock, 0);
      v29 = (v24)(v28);
      result = sub_90A8();
      v30 = v29 * *result;
      if ((v29 * *result) >> 64 == v30 >> 63)
      {
        v31 = sub_90B4();
        if (*v31 <= v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = *v31;
        }

        v33 = Log.datasource.unsafeMutableAddressor();
        v34 = v69;
        (*(v12 + 16))(v17, v33, v69);
        v35 = sub_990C();
        v36 = sub_9A8C();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 134217984;
          *(v37 + 4) = v32;
          _os_log_impl(&dword_0, v35, v36, "Will try to restart query after %ld seconds", v37, 0xCu);
        }

        (*(v12 + 8))(v17, v34);
        v38 = v57;
        sub_997C();
        *v7 = v32;
        v40 = v59;
        v39 = v60;
        (*(v59 + 104))(v7, enum case for DispatchTimeInterval.seconds(_:), v60);
        v41 = v61;
        sub_99AC();
        (*(v40 + 8))(v7, v39);
        v42 = v63;
        v69 = *(v62 + 8);
        (v69)(v38, v63);
        v43 = swift_allocObject();
        *(v43 + 16) = v1;
        aBlock[4] = sub_8458;
        aBlock[5] = v43;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_344C;
        aBlock[3] = &unk_C988;
        v44 = _Block_copy(aBlock);
        v45 = v1;
        v46 = v64;
        sub_995C();
        v70 = &_swiftEmptyArrayStorage;
        sub_8410(&qword_10A18, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1FE4(&qword_10A20, qword_A9A8);
        sub_7D90(&qword_10A28, &qword_10A20, qword_A9A8);
        v47 = v66;
        v48 = v56;
        sub_9B2C();
        sub_9AAC();
        _Block_release(v44);
        (*(v68 + 8))(v47, v48);
        (*(v65 + 8))(v46, v67);
        (v69)(v41, v42);
      }

LABEL_18:
      __break(1u);
      return result;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v49 = v26;
  v50 = Log.datasource.unsafeMutableAddressor();
  v51 = v69;
  (*(v12 + 16))(v15, v50, v69);
  v52 = v1;
  v53 = sub_990C();
  v54 = sub_9A7C();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 134218240;
    *(v55 + 4) = v24();

    *(v55 + 12) = 2048;
    *(v55 + 14) = *v49;
    _os_log_impl(&dword_0, v53, v54, "Not restarting mindful session query, maximum retries allowed exhausted; Retry attempt: %ld (max: %ld)", v55, 0x16u);
    v51 = v69;
  }

  else
  {

    v53 = v52;
  }

  return (*(v12 + 8))(v15, v51);
}

uint64_t sub_5718(uint64_t a1, uint64_t a2)
{
  v5 = sub_994C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_996C();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v2[OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_queue];
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = v2;
  v12[4] = a1;
  aBlock[4] = sub_83D8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_344C;
  aBlock[3] = &unk_C938;
  v13 = _Block_copy(aBlock);
  swift_errorRetain();

  v14 = v2;
  sub_995C();
  v18 = &_swiftEmptyArrayStorage;
  sub_8410(&qword_10A18, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1FE4(&qword_10A20, qword_A9A8);
  sub_7D90(&qword_10A28, &qword_10A20, qword_A9A8);
  sub_9B2C();
  sub_9ADC();
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_59F0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_992C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_98FC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    v14 = Log.datasource.unsafeMutableAddressor();
    (*(v7 + 16))(v9, v14, v6);
    swift_errorRetain();
    v15 = sub_990C();
    v16 = sub_9A7C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25[1] = a2;
      v19 = v18;
      v26 = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v20 = Error.logOutput.getter();
      v22 = sub_7740(v20, v21, &v26);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_0, v15, v16, "Error returned from mindful session query: %s", v17, 0xCu);
      sub_7CE8(v19);
    }

    (*(v7 + 8))(v9, v6);
    sub_4E70();
  }

  else
  {
    v24 = sub_98EC();
    if (a3)
    {
      __chkstk_darwin(v24);
      v25[-2] = v13;
      v25[-1] = a2;
      sub_64C8(sub_83E4, &v25[-4], a3);
    }

    return (*(v11 + 8))(v13, v10);
  }
}

void sub_5CF0(id *a1, uint64_t a2, void *a3)
{
  v76 = a3;
  v4 = sub_1FE4(&qword_109E8, &unk_A990);
  v5 = __chkstk_darwin(v4 - 8);
  v73 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v81 = &v68 - v7;
  v8 = sub_992C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v80 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v68 - v12;
  v14 = sub_98BC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = [*a1 endDate];
  sub_989C();

  v77 = sub_98DC();
  v75 = v15;
  v21 = *(v15 + 8);
  v20 = (v15 + 8);
  v82 = v14;
  v79 = v21;
  v21(v17, v14);
  v22 = Log.datasource.unsafeMutableAddressor();
  v78 = v9;
  v23 = *(v9 + 16);
  v70 = v22;
  v71 = v9 + 16;
  v69 = v23;
  (v23)(v13);
  v24 = v18;
  v25 = sub_990C();
  v26 = sub_9A6C();

  v27 = os_log_type_enabled(v25, v26);
  v74 = v24;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v72 = v8;
    v29 = v28;
    v30 = swift_slowAlloc();
    v83 = v30;
    *v29 = 136315394;
    v31 = [v24 endDate];
    sub_989C();

    sub_8410(&qword_10AE8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v32 = v82;
    v33 = sub_9B7C();
    v35 = v34;
    v36 = v32;
    v37 = v79;
    v79(v17, v36);
    v38 = sub_7740(v33, v35, &v83);

    *(v29 + 4) = v38;
    *(v29 + 12) = 1024;
    LOBYTE(v38) = v77;
    *(v29 + 14) = v77 & 1;
    _os_log_impl(&dword_0, v25, v26, "Received mindful session sample with end date %s (isInToday=%{BOOL}d", v29, 0x12u);
    sub_7CE8(v30);

    v8 = v72;

    v39 = *(v78 + 8);
    v40 = v39(v13, v8);
    v41 = v80;
    if ((v38 & 1) == 0)
    {
      return;
    }
  }

  else
  {

    v39 = *(v78 + 8);
    v40 = v39(v13, v8);
    v37 = v79;
    v41 = v80;
    if ((v77 & 1) == 0)
    {
      return;
    }
  }

  (*&stru_B8.segname[swift_isaMask & *v76])(v40);
  v42 = v81;
  v43 = v75;
  if ((*(v75 + 48))(v81, 1, v82))
  {
    sub_8528(v42, &qword_109E8, &unk_A990);
    v44 = 0.0;
  }

  else
  {
    v45 = *(v43 + 16);
    v46 = v82;
    v45(v17, v42, v82);
    sub_8528(v42, &qword_109E8, &unk_A990);
    sub_986C();
    v44 = v47;
    v37(v17, v46);
  }

  v48 = [v74 endDate];
  sub_989C();

  sub_986C();
  v50 = v49;
  v37(v17, v82);
  if (v44 < v50)
  {
    v81 = v20;
    v69(v41, v70, v8);
    v51 = v74;
    v52 = sub_990C();
    v53 = v8;
    v54 = sub_9A6C();

    if (os_log_type_enabled(v52, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = v82;
      v58 = v56;
      v83 = v56;
      *v55 = 136315138;
      v59 = [v51 endDate];
      v72 = v53;
      v60 = v59;
      sub_989C();

      sub_8410(&qword_10AE8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v61 = sub_9B7C();
      v63 = v62;
      v79(v17, v57);
      v64 = sub_7740(v61, v63, &v83);

      *(v55 + 4) = v64;
      v65 = &DemoDataSource;
      _os_log_impl(&dword_0, v52, v54, "This sample is the new latest session (end date = %s)", v55, 0xCu);
      sub_7CE8(v58);

      v39(v80, v72);
    }

    else
    {

      v39(v41, v53);
      v65 = &DemoDataSource;
    }

    v66 = [v51 *&v65[16].flags];
    v67 = v73;
    sub_989C();

    (*(v75 + 56))(v67, 0, 1, v82);
    (*&stru_B8.segname[(swift_isaMask & *v76) + 8])(v67);
    sub_65C8();
  }
}

void sub_64C8(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_9B6C())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_9B4C();
      }

      else
      {
        if (v6 >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_65C8()
{
  v67 = sub_992C();
  v1 = *(v67 - 8);
  v2 = __chkstk_darwin(v67);
  v4 = v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v66 = v63 - v6;
  v7 = __chkstk_darwin(v5);
  v65 = v63 - v8;
  __chkstk_darwin(v7);
  v64 = v63 - v9;
  v10 = sub_98BC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_999C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *&v0[OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_queue];
  *v17 = v18;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  LOBYTE(v18) = sub_99BC();
  (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v20 = [v0 delegate];
  if (!v20)
  {
LABEL_11:
    v39 = Log.datasource.unsafeMutableAddressor();
    v40 = v67;
    (*(v1 + 16))(v4, v39, v67);
    v41 = sub_990C();
    v42 = sub_9A7C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v41, v42, "Delegate or its elementOperationQueue is NULL!", v43, 2u);
    }

    (*(v1 + 8))(v4, v40);
    return;
  }

  v21 = v20;
  v22 = [v20 elementOperationQueue];
  if (!v22)
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v23 = v22;
  v70 = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = &v70;
  *(v24 + 24) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_7FCC;
  *(v25 + 24) = v24;
  v63[1] = v24;
  aBlock[4] = sub_8058;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_6ED0;
  aBlock[3] = &unk_C8E8;
  v26 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  dispatch_sync(v23, v26);
  _Block_release(v26);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
LABEL_31:
    __break(1u);
    return;
  }

  sub_98AC();
  v27 = sub_6EF8(v13);
  (*(v11 + 8))(v13, v10);
  if (v27)
  {
    v28 = v67;
    if ((v70 & 1) == 0)
    {
      v29 = Log.datasource.unsafeMutableAddressor();
      v30 = v65;
      (*(v1 + 16))(v65, v29, v28);
      v31 = sub_990C();
      v32 = sub_9A6C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_0, v31, v32, "Mindfulness element is not present and appropriate, trying to add.", v33, 2u);
      }

      (*(v1 + 8))(v30, v28);
      v34 = sub_8080();
      sub_1FE4(&unk_10AC0, &unk_A930);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_A8F0;
      *(v35 + 32) = v34;
      sub_202C(0, &qword_109A8, REElement_ptr);
      v36 = v34;
      isa = sub_9A4C().super.isa;

      sub_906C();

      v38 = sub_99CC();

      [v21 addElements:isa toSectionWithIdentifier:v38];

      swift_unknownObjectRelease();
LABEL_18:

      return;
    }
  }

  else
  {
    v28 = v67;
    if (v70)
    {
      v44 = Log.datasource.unsafeMutableAddressor();
      v45 = v64;
      (*(v1 + 16))(v64, v44, v28);
      v46 = sub_990C();
      v47 = sub_9A6C();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_0, v46, v47, "Mindfulness element is present and not appropriate, removing it.", v48, 2u);
      }

      (*(v1 + 8))(v45, v28);
      sub_1FE4(&qword_109F0, qword_AB20);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_A940;
      v50 = sub_906C();
      v52 = *v50;
      v51 = v50[1];
      *(v49 + 32) = v52;
      *(v49 + 40) = v51;

      v38 = sub_9A4C().super.isa;

      [v21 removeElementsWithIds:v38];

      swift_unknownObjectRelease();
      goto LABEL_18;
    }
  }

  v53 = v23;
  v54 = Log.datasource.unsafeMutableAddressor();
  v55 = v66;
  (*(v1 + 16))(v66, v54, v28);
  v56 = sub_990C();
  v57 = sub_9A6C();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v68 = v59;
    *v58 = 136315138;
    swift_beginAccess();
    if (v70)
    {
      v60 = 29545;
    }

    else
    {
      v60 = 0x746F6E207369;
    }

    if (v70)
    {
      v61 = 0xE200000000000000;
    }

    else
    {
      v61 = 0xE600000000000000;
    }

    v62 = sub_7740(v60, v61, &v68);

    *(v58 + 4) = v62;
    _os_log_impl(&dword_0, v56, v57, "Mindfulness element %s present, not modifying.", v58, 0xCu);
    sub_7CE8(v59);

    swift_unknownObjectRelease();

    (*(v1 + 8))(v66, v28);
  }

  else
  {

    swift_unknownObjectRelease();
    (*(v1 + 8))(v55, v28);
  }
}

uint64_t sub_6EF8(uint64_t a1)
{
  v72 = a1;
  v2 = sub_98FC();
  v65 = *(v2 - 8);
  __chkstk_darwin(v2);
  v64 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_98BC();
  v71 = *(v73 - 8);
  v4 = __chkstk_darwin(v73);
  v63 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v66 = &v58 - v6;
  v7 = sub_1FE4(&qword_109E8, &unk_A990);
  v8 = __chkstk_darwin(v7 - 8);
  v69 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v58 - v10;
  v12 = sub_992C();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v70 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v58 - v16;
  v18 = sub_999C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *&v1[OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_queue];
  *v21 = v22;
  (*(v19 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v18);
  v23 = v22;
  LOBYTE(v22) = sub_99BC();
  result = (*(v19 + 8))(v21, v18);
  if (v22)
  {
    v25 = Log.datasource.unsafeMutableAddressor();
    v67 = *(v13 + 16);
    v68 = v25;
    v67(v17);
    v26 = v1;
    v27 = v12;
    v28 = sub_990C();
    v29 = sub_9A6C();

    if (os_log_type_enabled(v28, v29))
    {
      v60 = v13;
      v61 = v27;
      v62 = v2;
      v30 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v74 = v59;
      *v30 = 136315138;
      (*&stru_B8.segname[swift_isaMask & *v26])();
      v31 = v71;
      v32 = v73;
      if ((*(v71 + 48))(v11, 1, v73))
      {
        sub_8528(v11, &qword_109E8, &unk_A990);
        v33 = 0xE300000000000000;
        v34 = 7104878;
      }

      else
      {
        v37 = v66;
        (*(v31 + 16))();
        sub_8528(v11, &qword_109E8, &unk_A990);
        v38 = v37;
        v58 = sub_987C();
        v33 = v39;
        (*(v31 + 8))(v38, v32);
        v34 = v58;
      }

      v40 = sub_7740(v34, v33, &v74);

      *(v30 + 4) = v40;
      _os_log_impl(&dword_0, v28, v29, "Determining whether a session is appropriate: lastSessionDate = %s.", v30, 0xCu);
      sub_7CE8(v59);

      v36 = v61;
      v35 = *(v60 + 8);
      v35(v17, v61);
      v2 = v62;
    }

    else
    {

      v35 = *(v13 + 8);
      v35(v17, v27);
      v36 = v27;
    }

    v41 = sub_90C0();
    v42 = sub_9120();
    if (v41 || v42)
    {
      v47 = v69;
      (*&stru_B8.segname[swift_isaMask & *v26])(v42);
      v48 = v71;
      v49 = v73;
      if ((*(v71 + 48))(v47, 1, v73) == 1)
      {
        sub_8528(v47, &qword_109E8, &unk_A990);
        return 1;
      }

      else
      {
        v50 = v63;
        (*(v48 + 32))(v63, v47, v49);
        v51 = v64;
        sub_98EC();
        v52 = v66;
        sub_98CC();
        (*(v65 + 8))(v51, v2);
        sub_986C();
        v54 = v53;
        sub_986C();
        v56 = v55;
        v57 = *(v48 + 8);
        v57(v52, v49);
        v57(v50, v49);
        return v56 < v54;
      }
    }

    else
    {
      v43 = v70;
      (v67)(v70, v68, v36);
      v44 = sub_990C();
      v45 = sub_9A6C();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_0, v44, v45, "Mindfullness reminders not enabled.", v46, 2u);
      }

      v35(v43, v36);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_7698()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataSource(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_7740(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_780C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_8588(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_7CE8(v11);
  return v7;
}

unint64_t sub_780C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_7918(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_9B5C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_7918(uint64_t a1, unint64_t a2)
{
  v3 = sub_7964(a1, a2);
  sub_7A94(&off_C730);
  return v3;
}

char *sub_7964(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_7B80(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_9B5C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_9A1C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_7B80(v10, 0);
        result = sub_9B3C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_7A94(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_7BF4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_7B80(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1FE4(&unk_10B10, &unk_AAB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_7BF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1FE4(&unk_10B10, &unk_AAB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_7CE8(void *a1)
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

uint64_t sub_7D34()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7D90(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_3098(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_7E08()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_7E5C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_7E74(uint64_t a1)
{
  sub_7F3C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_7F3C(uint64_t a1)
{
  if (!qword_10A58)
  {
    sub_98BC();
    v1 = sub_9B0C();
    if (!v2)
    {
      atomic_store(v1, &qword_10A58);
    }
  }
}

uint64_t sub_7F94()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

void sub_7FCC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  sub_906C();

  v4 = sub_99CC();

  LOBYTE(v2) = [v2 hasElementWithId:v4 inSectionWithIdentifier:REDefaultSectionIdentifier];

  *v3 = v2;
}

id sub_8080()
{
  v0 = sub_1FE4(&qword_10AD0, &qword_AA08);
  __chkstk_darwin(v0 - 8);
  v2 = &v26 - v1;
  sub_984C();
  sub_903C();
  v3 = sub_985C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);

  v7 = 0;
  if (v5 != 1)
  {
    sub_983C(v6);
    v7 = v8;
    (*(v4 + 8))(v2, v3);
  }

  v9 = objc_allocWithZone(REElementOpenAction);
  v10 = sub_99CC();

  v11 = [v9 initWithURL:v7 applicationID:v10];

  v12 = [objc_allocWithZone(REDailyRoutineRelevanceProvider) initWithDailyRoutineType:2];
  v13 = objc_allocWithZone(REBulletinDistributorRelevanceProvider);

  v14 = sub_99CC();

  v15 = [v13 initWithBulletinSectionIdentifier:v14];

  sub_202C(0, &qword_10AD8, REContent_ptr);
  v16 = sub_2074();
  sub_906C();
  sub_1FE4(&unk_10AC0, &unk_A930);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_A950;
  *(v17 + 32) = v12;
  *(v17 + 40) = v15;
  v18 = objc_allocWithZone(REElement);

  v19 = v11;
  v20 = v12;
  v21 = v15;
  v22 = sub_99CC();

  sub_202C(0, &qword_10AE0, RERelevanceProvider_ptr);
  isa = sub_9A4C().super.isa;

  v24 = [v18 initWithIdentifier:v22 content:v16 action:v19 relevanceProviders:isa];

  return v24;
}

uint64_t sub_8390()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_8410(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_8484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_5718(a2, a5);
  }
}

uint64_t sub_84F0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_8528(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1FE4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_8588(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_85E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_65C8();
  }
}

uint64_t sub_86A8(uint64_t a1, uint64_t a2)
{
  if (sub_99DC() == a1 && v3 == a2)
  {
  }

  else
  {
    v5 = sub_9B9C();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  return type metadata accessor for SampleDataSource();
}

id sub_87EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleConfiguration();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_8884()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleConfiguration();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_88FC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_897C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_992C();
  sub_8FD4(v5, a2);
  sub_88FC(v5, a2);
  return sub_991C();
}

uint64_t sub_8A18(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_992C();

  return sub_88FC(v3, a2);
}

uint64_t sub_8A90@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_992C();
  v6 = sub_88FC(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

Swift::Void __swiftcall Logger.trace(file:function:)(Swift::String file, Swift::String function)
{
  object = function._object;
  countAndFlagsBits = function._countAndFlagsBits;
  v4 = file._object;
  v5 = file._countAndFlagsBits;
  v20 = file;
  sub_8E38();
  v6 = (sub_9B1C() + 16);
  if (*v6)
  {
    v7 = &v6[2 * *v6];
    v5 = *v7;
    v4 = v7[1];
  }

  else
  {
  }

  sub_8E8C(46, 0xE100000000000000, v5, v4);
  sub_9A3C();

  v8 = sub_99EC();
  v10 = v9;

  sub_8E8C(40, 0xE100000000000000, countAndFlagsBits, object);
  sub_9A3C();
  v11 = sub_99EC();
  v13 = v12;

  v14 = sub_990C();
  v15 = sub_9A8C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v20._countAndFlagsBits = swift_slowAlloc();
    *v16 = 67109634;
    v17 = pthread_self();
    *(v16 + 4) = pthread_mach_thread_np(v17);
    *(v16 + 8) = 2080;
    v18 = sub_7740(v8, v10, &v20._countAndFlagsBits);

    *(v16 + 10) = v18;
    *(v16 + 18) = 2080;
    v19 = sub_7740(v11, v13, &v20._countAndFlagsBits);

    *(v16 + 20) = v19;
    _os_log_impl(&dword_0, v14, v15, "[%u] %s::%s", v16, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
  }
}

unint64_t sub_8E38()
{
  result = qword_10BA8;
  if (!qword_10BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10BA8);
  }

  return result;
}

unint64_t sub_8E8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_9A2C() != a1 || v9 != a2)
  {
    v10 = sub_9B9C();

    if (v10)
    {
      return v8;
    }

    v8 = sub_99FC();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t *sub_8FD4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

BOOL sub_90C0()
{

  return sub_9180(&kNLMindfulnessStartOfDayEnabledKey);
}

BOOL sub_9120()
{

  return sub_9180(&kNLMindfulnessEndOfDayEnabledKey);
}

BOOL sub_9180(id *a1)
{
  keyExistsAndHasValidFormat = 0;
  v1 = *a1;
  v2 = sub_99CC();
  AppIntegerValue = CFPreferencesGetAppIntegerValue(v1, v2, &keyExistsAndHasValidFormat);

  return !keyExistsAndHasValidFormat || AppIntegerValue == 1;
}

id sub_93F0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SampleDataSource();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_9464(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SampleDataSource();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_9498(void (*a1)(uint64_t), uint64_t a2)
{
  v4 = REUISampleRelevanceProviderForSamplePositionWithPercentage();
  if (v4)
  {
    v5 = v4;
    sub_202C(0, &qword_10AD8, REContent_ptr);
    v6 = sub_2074();
    sub_906C();
    sub_1FE4(&unk_10AC0, &unk_A930);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_A8F0;
    *(v7 + 32) = v5;
    v8 = objc_allocWithZone(REElement);

    v9 = v6;
    v10 = v5;
    v11 = sub_99CC();

    sub_202C(0, &qword_10AE0, RERelevanceProvider_ptr);
    isa = sub_9A4C().super.isa;

    v13 = [v8 initWithIdentifier:v11 content:v9 action:0 relevanceProviders:isa];

    if (a1)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_A8F0;
      *(v14 + 32) = v13;
      v15 = v13;
      a1(v14);
    }

    else
    {
      __break(1u);
    }
  }

  else if (a1)
  {

    a1(0);

    sub_1D64(a1, a2);
  }
}

uint64_t sub_9700()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_9738()
{
  type metadata accessor for DataSource(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10C10 = result;
  return result;
}

uint64_t *sub_9790()
{
  if (qword_10C38 != -1)
  {
    swift_once();
  }

  return &qword_10C10;
}

id sub_97E0()
{
  if (qword_10C38 != -1)
  {
    swift_once();
  }

  v0 = qword_10C10;

  return v0;
}