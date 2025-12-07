uint64_t sub_100001A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, void *a4@<X2>)
{
  v8 = sub_100026834();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000274C(&qword_100039188, &qword_100027DE8);
  __chkstk_darwin(v12 - 8);
  v14 = v22 - v13;
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_1000273B4(43);

  v23 = 0xD000000000000022;
  v24 = 0x8000000100029650;
  v22[1] = a1;
  v25._countAndFlagsBits = sub_100027464();
  sub_1000271E4(v25);

  v26._countAndFlagsBits = 0x5F4B534123;
  v26._object = 0xE500000000000000;
  sub_1000271E4(v26);
  v27._countAndFlagsBits = a2;
  v27._object = a4;
  sub_1000271E4(v27);
  sub_100026724();

  v15 = sub_100026734();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100002814(v14);
    sub_100026894();
    v17 = sub_100026824();
    v18 = sub_100027314();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Unable to build punch out url", v19, 2u);
    }

    (*(v9 + 8))(v11, v8);
    v20 = 1;
  }

  else
  {
    (*(v16 + 32))(a3, v14, v15);
    v20 = 0;
  }

  return (*(v16 + 56))(a3, v20, 1, v15);
}

uint64_t variable initialization expression of ImageCache.directoryURL@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100026734();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id variable initialization expression of ImageCache.ramCache()
{
  v0 = objc_allocWithZone(NSCache);

  return [v0 init];
}

__n128 sub_100001E44(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001E54(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001E74(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_100001EB8(uint64_t a1, id *a2)
{
  result = sub_100027134();
  *a2 = 0;
  return result;
}

uint64_t sub_100001F30(uint64_t a1, id *a2)
{
  v3 = sub_100027144();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100001FB0@<X0>(uint64_t *a1@<X8>)
{
  sub_100027154();
  v2 = sub_100027124();

  *a1 = v2;
  return result;
}

uint64_t sub_100001FF4()
{
  sub_100027154();
  v0 = sub_100027204();

  return v0;
}

uint64_t sub_100002030(uint64_t a1)
{
  sub_100027154();
  sub_100027194();
}

Swift::Int sub_100002084(uint64_t a1)
{
  sub_100027154();
  sub_1000274D4();
  sub_100027194();
  v1 = sub_1000274F4();

  return v1;
}

uint64_t sub_1000020F8(void *a1, uint64_t *a2)
{
  v2 = sub_100027154();
  v4 = v3;
  if (v2 == sub_100027154() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_100027474();
  }

  return v7 & 1;
}

uint64_t sub_100002180@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_100027124();

  *a2 = v3;
  return result;
}

uint64_t sub_1000021C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100027154();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000021F4(uint64_t a1)
{
  v2 = sub_100002958(&qword_1000391B8, &unk_100027F30);
  v3 = sub_100002958(&qword_1000391C0, &unk_100027ED0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_10000228C(uint64_t a1, uint64_t a2)
{
  sub_1000274D4();
  sub_100027194();
  v4 = sub_1000274F4();

  return sub_100002304(a1, a2, v4);
}

unint64_t sub_100002304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100027474())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000023BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000274C(&qword_100039178, &qword_100027DD8);
    v3 = sub_100027444();
    v4 = a1 + 32;

    while (1)
    {
      sub_100002794(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_10000228C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100002804(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000024CC()
{
  v0 = sub_100026834();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = [objc_opt_self() defaultWorkspace];
  if (v7)
  {
    v9 = v7;
    sub_1000266F4(v8);
    v11 = v10;
    sub_1000023BC(&_swiftEmptyArrayStorage);
    isa = sub_1000270E4().super.isa;

    v13 = [v9 openSensitiveURL:v11 withOptions:isa];

    sub_100026894();
    v14 = sub_100026824();
    v15 = sub_100027304();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v14, v15, "pushToSettings %{BOOL}d", v16, 8u);
    }
  }

  else
  {
    sub_100026894();
    v9 = sub_100026824();
    v17 = sub_100027314();
    if (os_log_type_enabled(v9, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v9, v17, "Failed to get workspace in bubble action", v18, 2u);
    }

    v6 = v4;
  }

  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_10000274C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002794(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000274C(&qword_100039180, &qword_100027DE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100002804(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100002814(uint64_t a1)
{
  v2 = sub_10000274C(&qword_100039188, &qword_100027DE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000028A4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100002958(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000029D0()
{
  v0 = sub_10000274C(&qword_100039328, &qword_1000280A8);
  sub_100006C00(v0, qword_10003A6F0);
  sub_100006B80(v0, qword_10003A6F0);
  v1 = [objc_opt_self() hours];
  sub_100006C64();
  return sub_100026624();
}

void sub_100002A6C()
{
  type metadata accessor for ImageCache(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_directoryURL;
  v2 = sub_100026734();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_hasRunCleanup) = 0;
  v3 = OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_ramCache;
  *(v0 + v3) = [objc_allocWithZone(NSCache) init];
  sub_1000044E8();
  sub_100004CB8();
  v4 = *(v0 + OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_ramCache);
  [v4 setCountLimit:30];

  static ImageCache.sharedInstance = v0;
}

uint64_t *ImageCache.sharedInstance.unsafeMutableAddressor()
{
  if (qword_100039068 != -1)
  {
    swift_once();
  }

  return &static ImageCache.sharedInstance;
}

uint64_t static ImageCache.sharedInstance.getter()
{
  if (qword_100039068 != -1)
  {
    swift_once();
  }
}

uint64_t ImageCache.addToCache(_:image:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = sub_100026834();
  v7 = *(v35 - 8);
  __chkstk_darwin(v35);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000274C(&qword_1000391C8, &qword_100028010);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v32 = v4;
  v13 = *(v4 + OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_ramCache);
  v14 = objc_allocWithZone(NSString);
  v15 = sub_100027124();
  v16 = [v14 initWithString:v15];

  v17 = [v13 objectForKey:v16];
  if (v17)
  {

    sub_100026894();

    v18 = sub_100026824();
    v19 = sub_100027304();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_100005F78(a1, a2, &v36);
      _os_log_impl(&_mh_execute_header, v18, v19, "%s already in ram cache", v20, 0xCu);
      sub_100006044(v21);
    }

    return (*(v7 + 8))(v9, v35);
  }

  else
  {
    v24 = v33;
    v23 = v34;
    isa = sub_100026754().super.isa;
    v26 = objc_allocWithZone(NSString);
    v27 = sub_100027124();
    v28 = [v26 initWithString:v27];

    [v13 setObject:isa forKey:v28];
    v29 = sub_1000272A4();
    (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v32;
    v30[5] = a1;
    v30[6] = a2;
    v30[7] = v24;
    v30[8] = v23;

    sub_100003B24(v24, v23);
    sub_100003824(0, 0, v12, &unk_100028020, v30);
  }
}

uint64_t sub_100002F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  v9 = sub_100026834();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  sub_10000274C(&qword_100039188, &qword_100027DE8);
  v8[15] = swift_task_alloc();
  v10 = sub_100026734();
  v8[16] = v10;
  v8[17] = *(v10 - 8);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();

  return _swift_task_switch(sub_10000312C, 0, 0);
}

uint64_t sub_10000312C()
{
  v42 = v0;
  v2 = v0 + 16;
  v1 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[5];
  v6 = OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_directoryURL;
  swift_beginAccess();
  sub_1000061E4(v5 + v6, v4, &qword_100039188, &qword_100027DE8);
  if ((*(v3 + 48))(v4, 1, v1))
  {
    v7 = v0 + 14;
    sub_100006B20(v0[15], &qword_100039188, &qword_100027DE8);
    sub_100026894();
    v8 = sub_100026824();
    v9 = sub_100027314();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[11];
    if (v10)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unable to create save url", v12, 2u);
    }

    v13 = *(v11 + 8);
    v2 = v0 + 10;
  }

  else
  {
    v7 = v0 + 21;
    v14 = v0[19];
    v15 = v0[20];
    v16 = v0[17];
    v37 = v0[21];
    v39 = v0[18];
    v18 = v0[15];
    v17 = v0[16];
    v34 = *(v16 + 16);
    v34(v14, v18, v17);
    sub_100006B20(v18, &qword_100039188, &qword_100027DE8);
    sub_100026704();
    v19 = *(v16 + 8);
    v19(v14, v17);
    (*(v16 + 32))(v37, v15, v17);
    sub_100026894();
    v34(v39, v37, v17);
    v20 = sub_100026824();
    v38 = sub_100027304();
    v21 = os_log_type_enabled(v20, v38);
    v22 = v0[18];
    v23 = v0[16];
    v24 = v0[13];
    v25 = v0[11];
    v40 = v0[10];
    if (v21)
    {
      v36 = v0[13];
      v26 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41 = v35;
      *v26 = 136315138;
      v32 = sub_1000266D4();
      log = v20;
      v28 = v27;
      v19(v22, v23);
      v29 = sub_100005F78(v32, v28, &v41);

      *(v26 + 4) = v29;
      _os_log_impl(&_mh_execute_header, log, v38, "Attempting to cache image to file at url %s", v26, 0xCu);
      sub_100006044(v35);

      (*(v25 + 8))(v36, v40);
    }

    else
    {

      v19(v22, v23);
      (*(v25 + 8))(v24, v40);
    }

    sub_100026774();
    v13 = v19;
  }

  v13(*v7, *v2);

  v30 = v0[1];

  return v30();
}

uint64_t sub_1000035B0()
{
  swift_unknownObjectRelease();

  sub_100003600(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100003600(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100003654(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100003730;

  return sub_100002F94(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100003730()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100003824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000274C(&qword_1000391C8, &qword_100028010);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000061E4(a3, v25 - v10, &qword_1000391C8, &qword_100028010);
  v12 = sub_1000272A4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100006B20(v11, &qword_1000391C8, &qword_100028010);
  }

  else
  {
    sub_100027294();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100027244();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100027184() + 32;
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

      sub_100006B20(a3, &qword_1000391C8, &qword_100028010);

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

  sub_100006B20(a3, &qword_1000391C8, &qword_100028010);
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

uint64_t sub_100003B24(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100003B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000274C(&qword_1000391C8, &qword_100028010);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000061E4(a3, v25 - v10, &qword_1000391C8, &qword_100028010);
  v12 = sub_1000272A4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100006B20(v11, &qword_1000391C8, &qword_100028010);
  }

  else
  {
    sub_100027294();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100027244();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100027184() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_10000274C(&qword_100039308, &qword_100028080);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100006B20(a3, &qword_1000391C8, &qword_100028010);

      return v22;
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

  sub_100006B20(a3, &qword_1000391C8, &qword_100028010);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10000274C(&qword_100039308, &qword_100028080);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t ImageCache.getFromCache(_:)(uint64_t a1, unint64_t a2)
{
  v5 = sub_10000274C(&qword_100039188, &qword_100027DE8);
  __chkstk_darwin(v5 - 8);
  v59 = (v51 - v6);
  v55 = sub_100026734();
  v57 = *(v55 - 8);
  v7 = __chkstk_darwin(v55);
  v54 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v53 = v51 - v10;
  __chkstk_darwin(v9);
  v12 = v51 - v11;
  v13 = sub_100026834();
  v60 = *(v13 - 8);
  v61 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = v51 - v18;
  __chkstk_darwin(v17);
  v21 = v51 - v20;
  v56 = v2;
  v22 = *(v2 + OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_ramCache);
  v23 = objc_allocWithZone(NSString);
  v58 = a1;
  v24 = sub_100027124();
  v25 = [v23 initWithString:v24];

  v26 = v22;
  v27 = [v22 objectForKey:v25];

  if (v27)
  {
    v28 = sub_100026764();

    sub_100026894();

    v29 = sub_100026824();
    v30 = sub_100027304();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v62[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_100005F78(v58, a2, v62);
      _os_log_impl(&_mh_execute_header, v29, v30, "%s found in ram cache", v31, 0xCu);
      sub_100006044(v32);
    }

    (*(v60 + 8))(v21, v61);
  }

  else
  {
    v33 = v19;
    v34 = v53;
    v35 = v54;
    v51[0] = v26;
    v51[1] = v16;
    v52 = v12;
    v36 = OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_directoryURL;
    v37 = v56;
    swift_beginAccess();
    v38 = v37 + v36;
    v39 = v59;
    sub_1000061E4(v38, v59, &qword_100039188, &qword_100027DE8);
    v40 = v57;
    v41 = v55;
    if ((*(v57 + 48))(v39, 1, v55))
    {
      sub_100006B20(v59, &qword_100039188, &qword_100027DE8);
      sub_100026894();
      v42 = sub_100026824();
      v43 = sub_100027314();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "Unable to create get url", v44, 2u);
      }

      (*(v60 + 8))(v33, v61);
      return 0;
    }

    else
    {
      v45 = v59;
      (*(v40 + 16))(v35, v59, v41);
      sub_100006B20(v45, &qword_100039188, &qword_100027DE8);
      sub_100026704();
      v59 = *(v40 + 8);
      (v59)(v35, v41);
      (*(v40 + 32))(v52, v34, v41);
      v28 = sub_100026744();
      isa = sub_100026754().super.isa;
      v47 = objc_allocWithZone(NSString);
      v48 = sub_100027124();
      v49 = [v47 initWithString:v48];

      [v51[0] setObject:isa forKey:v49];
      (v59)(v52, v41);
    }
  }

  return v28;
}

uint64_t sub_1000044E8()
{
  v66 = sub_100026834();
  v63 = *(v66 - 8);
  v1 = __chkstk_darwin(v66);
  v58 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v65 = &v57 - v3;
  v4 = sub_100026734();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v57 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = &v57 - v8;
  v9 = sub_10000274C(&qword_100039188, &qword_100027DE8);
  v10 = __chkstk_darwin(v9 - 8);
  v59 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v57 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v57 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v57 - v19;
  __chkstk_darwin(v18);
  v22 = &v57 - v21;
  v23 = OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_directoryURL;
  swift_beginAccess();
  v61 = v0;
  v64 = v23;
  sub_1000061E4(v0 + v23, v22, &qword_100039188, &qword_100027DE8);
  v62 = v5;
  v24 = *(v5 + 48);
  LODWORD(v23) = v24(v22, 1, v4);
  result = sub_100006B20(v22, &qword_100039188, &qword_100027DE8);
  if (v23 == 1)
  {
    sub_100026844();
    v26 = v24;
    if (v24(v17, 1, v4) == 1)
    {
      sub_100006B20(v17, &qword_100039188, &qword_100027DE8);
      v27 = 1;
      v28 = v66;
      v29 = v62;
    }

    else
    {
      sub_100026704();
      v29 = v62;
      (*(v62 + 8))(v17, v4);
      v27 = 0;
      v28 = v66;
    }

    v30 = v60;
    (*(v29 + 56))(v20, v27, 1, v4);
    v31 = v61;
    v32 = v64;
    swift_beginAccess();
    sub_100006CB0(v20, v31 + v32);
    swift_endAccess();
    sub_1000061E4(v31 + v32, v14, &qword_100039188, &qword_100027DE8);
    if (v26(v14, 1, v4) == 1)
    {
      sub_100006B20(v14, &qword_100039188, &qword_100027DE8);
    }

    else
    {
      (*(v29 + 32))(v30, v14, v4);
      v33 = [objc_opt_self() defaultManager];
      sub_1000266F4(v34);
      v36 = v35;
      v67 = 0;
      v37 = [v33 createDirectoryAtURL:v35 withIntermediateDirectories:1 attributes:0 error:&v67];

      if (v37)
      {
        v38 = *(v29 + 8);
        v39 = v67;
        v38(v30, v4);
      }

      else
      {
        v40 = v67;
        sub_1000266B4();

        swift_willThrow();
        v41 = v58;
        sub_100026894();
        v67 = 0;
        v68 = 0xE000000000000000;
        swift_errorRetain();
        sub_1000273B4(34);

        v67 = 0xD00000000000001CLL;
        v68 = 0x8000000100029700;
        v69._countAndFlagsBits = sub_1000266D4();
        sub_1000271E4(v69);

        v70._countAndFlagsBits = 1076174906;
        v70._object = 0xE400000000000000;
        sub_1000271E4(v70);
        sub_100026814();

        v42 = v41;
        v28 = v66;
        (*(v63 + 8))(v42, v66);
        (*(v29 + 8))(v30, v4);
      }
    }

    v43 = v65;
    sub_100026894();

    v44 = sub_100026824();
    v45 = sub_100027304();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v67 = v47;
      *v46 = 136315138;
      v48 = v59;
      sub_1000061E4(v31 + v64, v59, &qword_100039188, &qword_100027DE8);
      if (v26(v48, 1, v4))
      {
        sub_100006B20(v48, &qword_100039188, &qword_100027DE8);
        v49 = 0xE300000000000000;
        v50 = 7104878;
      }

      else
      {
        v51 = v57;
        (*(v29 + 16))(v57, v48, v4);
        sub_100006B20(v48, &qword_100039188, &qword_100027DE8);
        v52 = sub_1000266D4();
        v53 = v4;
        v54 = v52;
        v49 = v55;
        (*(v29 + 8))(v51, v53);
        v50 = v54;
      }

      v56 = sub_100005F78(v50, v49, &v67);

      *(v46 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v44, v45, "Root folder %s", v46, 0xCu);
      sub_100006044(v47);

      return (*(v63 + 8))(v65, v66);
    }

    else
    {

      return (*(v63 + 8))(v43, v28);
    }
  }

  return result;
}

uint64_t sub_100004CB8()
{
  v90 = sub_100026834();
  v89 = *(v90 - 8);
  v1 = __chkstk_darwin(v90);
  v88 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v103 = &v79 - v4;
  __chkstk_darwin(v3);
  v6 = &v79 - v5;
  v7 = sub_10000274C(&qword_100039310, &qword_100028090);
  __chkstk_darwin(v7 - 8);
  v9 = &v79 - v8;
  v10 = sub_1000267B4();
  v87 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v98 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v108 = &v79 - v14;
  __chkstk_darwin(v13);
  v107 = &v79 - v15;
  v16 = sub_10000274C(&qword_100039318, &qword_100028098);
  __chkstk_darwin(v16 - 8);
  v109 = &v79 - v17;
  v101 = sub_1000266A4();
  v86 = *(v101 - 8);
  __chkstk_darwin(v101);
  v110 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000274C(&qword_100039188, &qword_100027DE8);
  __chkstk_darwin(v19 - 8);
  v21 = &v79 - v20;
  v22 = sub_100026734();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = &v79 - v28;
  result = __chkstk_darwin(v27);
  v32 = &v79 - v31;
  if ((*(v0 + OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_hasRunCleanup) & 1) == 0)
  {
    v82 = OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_hasRunCleanup;
    v106 = v9;
    v33 = OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_directoryURL;
    swift_beginAccess();
    v83 = v0;
    sub_1000061E4(v0 + v33, v21, &qword_100039188, &qword_100027DE8);
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {
      return sub_100006B20(v21, &qword_100039188, &qword_100027DE8);
    }

    v79 = v6;
    (*(v23 + 32))(v32, v21, v22);
    v34 = [objc_opt_self() defaultManager];
    v100 = sub_10000274C(&qword_100039320, &qword_1000280A0);
    v35 = swift_allocObject();
    v99 = xmmword_100028000;
    *(v35 + 16) = xmmword_100028000;
    *(v35 + 32) = NSURLContentModificationDateKey;
    v36 = NSURLContentModificationDateKey;
    v81 = v32;
    sub_1000266C4();
    sub_1000266F4(v37);
    v39 = v38;
    v102 = v23;
    v40 = *(v23 + 8);
    v104 = v23 + 8;
    v105 = v40;
    v40(v29, v22);
    type metadata accessor for URLResourceKey(0);
    v41 = v22;
    isa = sub_100027224().super.isa;

    v111[0] = 0;
    v85 = v34;
    v43 = [v34 contentsOfDirectoryAtURL:v39 includingPropertiesForKeys:isa options:4 error:v111];

    v44 = v111[0];
    if (v43)
    {
      v45 = sub_100027234();
      v46 = v44;

      v103 = v45;
      v47 = v41;
      v48 = v101;
      v49 = v102;
      v97 = *(v45 + 16);
      if (v97)
      {
        v50 = 0;
        v95 = &v103[(*(v102 + 80) + 32) & ~*(v102 + 80)];
        v94 = NSURLCreationDateKey;
        v93 = v102 + 16;
        v96 = (v86 + 56);
        v92 = (v86 + 32);
        v91 = (v87 + 48);
        v84 = (v87 + 32);
        v80 = v89 + 1;
        v89 = (v87 + 8);
        v51 = (v86 + 8);
        do
        {
          if (v50 >= *(v103 + 2))
          {
            __break(1u);
          }

          v52 = v47;
          (*(v49 + 16))(v26, &v95[*(v49 + 72) * v50], v47);
          inited = swift_initStackObject();
          *(inited + 16) = v99;
          v54 = v94;
          *(inited + 32) = v94;
          v55 = v54;
          sub_1000068D0(inited);
          swift_setDeallocating();
          sub_100006AC4(inited + 32);
          v56 = v109;
          sub_1000266E4();

          (*v96)(v56, 0, 1, v48);
          v57 = v110;
          (*v92)();
          v58 = v106;
          sub_100026694();
          if ((*v91)(v58, 1, v10) == 1)
          {
            (*v51)(v57, v48);
            v47 = v52;
            v105(v26, v52);
            sub_100006B20(v58, &qword_100039310, &qword_100028090);
          }

          else
          {
            v59 = v107;
            (*v84)(v107, v58, v10);
            v47 = v52;
            if (qword_100039060 != -1)
            {
              swift_once();
            }

            v60 = sub_10000274C(&qword_100039328, &qword_1000280A8);
            sub_100006B80(v60, qword_10003A6F0);
            v61 = v108;
            sub_100026794();
            v62 = v98;
            sub_1000267A4();
            sub_100006BB8(&qword_100039330, &type metadata accessor for Date, &protocol conformance descriptor for Date);
            if (sub_100027104())
            {
              v64 = *v89;
              (*v89)(v62, v10);
              v64(v61, v10);
              v64(v59, v10);
              v48 = v101;
              (*v51)(v110, v101);
              v65 = v26;
            }

            else
            {
              sub_1000266F4(v63);
              v67 = v66;
              v111[0] = 0;
              v68 = [v85 removeItemAtURL:v66 error:v111];

              if (!v68)
              {
                v71 = v111[0];
                sub_1000266B4();

                swift_willThrow();
                v72 = v88;
                sub_100026894();
                v111[0] = 0;
                v111[1] = 0xE000000000000000;
                swift_errorRetain();
                sub_1000273B4(20);

                strcpy(v111, "Failed delete ");
                HIBYTE(v111[1]) = -18;
                sub_100006BB8(&qword_100039338, &type metadata accessor for URL, &protocol conformance descriptor for URL);
                v112._countAndFlagsBits = sub_100027464();
                sub_1000271E4(v112);

                v113._countAndFlagsBits = 1076174906;
                v113._object = 0xE400000000000000;
                sub_1000271E4(v113);
                sub_100026814();

                (*v80)(v72, v90);
                v73 = *v89;
                (*v89)(v62, v10);
                v73(v108, v10);
                v73(v107, v10);
                v48 = v101;
                (*v51)(v110, v101);
                v105(v26, v47);
                goto LABEL_8;
              }

              v69 = *v89;
              v70 = v111[0];
              v69(v62, v10);
              v69(v108, v10);
              v69(v107, v10);
              v48 = v101;
              (*v51)(v110, v101);
              v65 = v26;
            }

            v105(v65, v47);
          }

LABEL_8:
          ++v50;
          v49 = v102;
        }

        while (v97 != v50);
      }

      result = (v105)(v81, v47);
      *(v83 + v82) = 1;
    }

    else
    {
      v74 = v111[0];
      sub_1000266B4();

      swift_willThrow();

      v75 = v103;
      sub_100026894();
      v76 = sub_100026824();
      v77 = sub_100027304();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&_mh_execute_header, v76, v77, "Unable to read folder", v78, 2u);
      }

      v89[1](v75, v90);
      return (v105)(v81, v41);
    }
  }

  return result;
}

uint64_t ImageCache.deinit()
{
  sub_100006B20(v0 + OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_directoryURL, &qword_100039188, &qword_100027DE8);

  return v0;
}

uint64_t ImageCache.__deallocating_deinit()
{
  sub_100006B20(v0 + OBJC_IVAR____TtC24PeopleMessagesScreenTime10ImageCache_directoryURL, &qword_100039188, &qword_100027DE8);

  return swift_deallocClassInstance();
}

uint64_t sub_100005C90(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100006E44;

  return v6(a1);
}

uint64_t sub_100005D88(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005E80;

  return v6(a1);
}

uint64_t sub_100005E80()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100005F78(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000063F4(v11, 0, 0, 1, a1, a2);
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
    sub_100006D20(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006044(v11);
  return v7;
}

uint64_t sub_100006044(void *a1)
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

uint64_t type metadata accessor for ImageCache(uint64_t a1)
{
  result = qword_100039210;
  if (!qword_100039210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000060E4(uint64_t a1)
{
  sub_10000618C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000618C(uint64_t a1)
{
  if (!qword_100039220)
  {
    sub_100026734();
    v1 = sub_100027374();
    if (!v2)
    {
      atomic_store(v1, &qword_100039220);
    }
  }
}

uint64_t sub_1000061E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000274C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000624C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006284(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006E48;

  return sub_100005D88(a1, v4);
}

uint64_t sub_10000633C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003730;

  return sub_100005D88(a1, v4);
}

unint64_t sub_1000063F4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100006500(a5, a6);
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
    result = sub_1000273D4();
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

char *sub_100006500(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000654C(a1, a2);
  sub_10000667C(&off_100035298);
  return v3;
}

char *sub_10000654C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100006768(v5, 0);
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

  result = sub_1000273D4();
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
        v10 = sub_1000271F4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100006768(v10, 0);
        result = sub_1000273A4();
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

uint64_t sub_10000667C(uint64_t result)
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

  result = sub_1000067DC(result, v11, 1, v3);
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

void *sub_100006768(uint64_t a1, uint64_t a2)
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

  sub_10000274C(&unk_100039350, &qword_1000280B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000067DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000274C(&unk_100039350, &qword_1000280B8);
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

void *sub_1000068D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000274C(&qword_100039348, &qword_1000280B0);
    v3 = sub_100027394();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_100027154();
      sub_1000274D4();
      v27 = v7;
      sub_100027194();
      v8 = sub_1000274F4();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_100027154();
        v18 = v17;
        if (v16 == sub_100027154() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_100027474();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100006AC4(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006B20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000274C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006B80(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100006BB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_100006C00(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100006C64()
{
  result = qword_100039340;
  if (!qword_100039340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100039340);
  }

  return result;
}

uint64_t sub_100006CB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000274C(&qword_100039188, &qword_100027DE8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006D20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006D80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006E48;

  return sub_100005C90(a1, v4);
}

uint64_t sub_100006E50(uint64_t a1)
{
  result = sub_100026904();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100006EF4()
{
  v1 = v0;
  v2 = sub_100026834();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026894();

  v6 = sub_100026824();
  v7 = sub_100027304();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = sub_1000268F4();
    v12 = sub_100005F78(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "BubbleEventRegistration bye bye for %s", v8, 0xCu);
    sub_100006044(v9);
  }

  (*(v3 + 8))(v5, v2);
  v13 = qword_100039360;
  v14 = sub_100026904();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);

  sub_100007590(v1 + qword_100039370);
  return v1;
}

uint64_t sub_100007118()
{
  sub_100006EF4();

  return swift_deallocClassInstance();
}

uint64_t sub_100007184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000071A4, 0, 0);
}

uint64_t sub_1000071A4()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  (*(v1 + 8))(ObjectType, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100007220(uint64_t (*a1)(uint64_t *))
{
  v2 = 0;
  v3 = 0;
  return a1(&v2);
}

uint64_t sub_100007260()
{
  v1 = v0;
  v2 = sub_100026834();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026894();

  v6 = sub_100026824();
  v7 = sub_100027304();

  v8 = &off_100039000;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = sub_1000268F4();
    v12 = sub_100005F78(v10, v11, &v19);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = *(v1 + qword_100039370);
    v14 = *(v1 + qword_100039370 + 8);

    v15 = sub_100005F78(v13, v14, &v19);

    *(v9 + 14) = v15;
    v8 = &off_100039000;
    _os_log_impl(&_mh_execute_header, v6, v7, "Shutdown %s for %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  (*(v3 + 8))(v5, v2);
  *(v8[110] + v1 + 40) = 0;
  swift_unknownObjectWeakAssign();
  v16 = qword_100039368;
  if (*(v1 + qword_100039368))
  {

    sub_100026B94();
  }

  *(v1 + v16) = 0;
}

uint64_t sub_1000074C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100007510(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000075F0()
{
  v0 = sub_100026994();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppStateStore();
  v4 = swift_allocObject();
  (*(v1 + 104))(v3, enum case for MessageDetails.EventSource.screenTime(_:), v0);
  v5 = [objc_opt_self() defaultManager];
  v7[4] = sub_1000077B8();
  v7[5] = &protocol witness table for NSFileManager;
  v7[1] = v5;
  sub_100026BB4();
  swift_allocObject();
  *(v4 + 16) = sub_100026BA4();
  sub_100026BD4();
  result = sub_100026BC4();
  *(v4 + 24) = result;
  qword_10003A710 = v4;
  return result;
}

uint64_t sub_100007754()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1000077B8()
{
  result = qword_100039568;
  if (!qword_100039568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100039568);
  }

  return result;
}

uint64_t sub_100007818()
{
  v1 = OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer____lazy_storage___isMac;
  v2 = *(v0 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer____lazy_storage___isMac);
  if (v2 == 2)
  {
    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 userInterfaceIdiom];

    LOBYTE(v2) = v4 == 5;
    *(v0 + v1) = v4 == 5;
  }

  return v2 & 1;
}

uint64_t sub_100007898(uint64_t a1, uint64_t a2)
{
  v3 = sub_100026994();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10000A92C(&qword_100039728, &type metadata accessor for MessageDetails.EventSource, &protocol conformance descriptor for MessageDetails.EventSource), v7 = sub_1000270F4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10000A92C(&qword_100039730, &type metadata accessor for MessageDetails.EventSource, &protocol conformance descriptor for MessageDetails.EventSource);
      v15 = sub_100027114();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_100007AB0()
{
  v0 = sub_1000269B4();
  v70 = *(v0 - 8);
  v71 = v0;
  v1 = __chkstk_darwin(v0);
  v65 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v67 = &v61 - v4;
  __chkstk_darwin(v3);
  v69 = &v61 - v5;
  v6 = sub_10000274C(&qword_100039708, &unk_100028280);
  v7 = __chkstk_darwin(v6 - 8);
  v75 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v68 = &v61 - v10;
  __chkstk_darwin(v9);
  v12 = &v61 - v11;
  v13 = sub_100026B44();
  v76 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v74 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v66 = &v61 - v17;
  __chkstk_darwin(v16);
  v19 = &v61 - v18;
  v20 = sub_100026834();
  v72 = *(v20 - 8);
  v73 = v20;
  __chkstk_darwin(v20);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000274C(&qword_100039710, &unk_1000287B0);
  __chkstk_darwin(v23 - 8);
  v25 = &v61 - v24;
  v26 = sub_100026994();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_details;
  sub_1000269D4();
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_100006B20(v25, &qword_100039710, &unk_1000287B0);
  }

  else
  {
    (*(v27 + 32))(v29, v25, v26);
    if (qword_100039078 != -1)
    {
      swift_once();
    }

    v30 = sub_100007898(v29, qword_100039570);
    (*(v27 + 8))(v29, v26);
    if (v30)
    {
      goto LABEL_30;
    }
  }

  sub_100026884();
  swift_retain_n();
  v31 = sub_100026824();
  v32 = sub_100027304();
  if (!os_log_type_enabled(v31, v32))
  {

    (*(v72 + 8))(v22, v73);
    v37 = v76;
    goto LABEL_21;
  }

  v63 = v32;
  v64 = v31;
  v33 = swift_slowAlloc();
  v62 = swift_slowAlloc();
  v80[0] = v62;
  *v33 = 67109634;
  sub_100026A74();
  v34 = v76;
  v35 = *(v76 + 48);
  if (v35(v12, 1, v13) == 1)
  {
    sub_100006B20(v12, &qword_100039708, &unk_100028280);
    v36 = 1;
    v37 = v34;
  }

  else
  {
    (*(v34 + 32))(v19, v12, v13);
    v38 = sub_100026B34();
    if (v38 >> 62)
    {
      v39 = sub_100027434();
    }

    else
    {
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v37 = v76;
    (*(v76 + 8))(v19, v13);
    v36 = v39 == 0;
  }

  *(v33 + 4) = v36;

  *(v33 + 8) = 1024;
  v40 = v68;
  sub_100026A74();
  if (v35(v40, 1, v13) == 1)
  {
    sub_100006B20(v40, &qword_100039708, &unk_100028280);
    goto LABEL_19;
  }

  v41 = v66;
  (*(v37 + 32))(v66, v40, v13);
  v42 = sub_100026B24();
  if (!v42)
  {
    (*(v37 + 8))(v41, v13);
    goto LABEL_19;
  }

  v43 = v42;
  v44 = [v42 isParent];

  (*(v37 + 8))(v41, v13);
  if ((v44 & 1) == 0)
  {
LABEL_19:
    v45 = 0;
    goto LABEL_20;
  }

  v45 = 1;
LABEL_20:
  *(v33 + 10) = v45;

  *(v33 + 14) = 2080;
  v46 = v69;
  sub_100026A94();
  v47 = sub_1000269A4();
  v49 = v48;
  (*(v70 + 8))(v46, v71);
  v50 = sub_100005F78(v47, v49, v80);

  *(v33 + 16) = v50;
  v51 = v64;
  _os_log_impl(&_mh_execute_header, v64, v63, "[canPresentApprovalActions] familyIsEmpty: %{BOOL}d, amIaParent: %{BOOL}d, details.status: %s", v33, 0x18u);
  sub_100006044(v62);

  (*(v72 + 8))(v22, v73);
LABEL_21:
  v52 = v75;
  sub_100026A74();
  if ((*(v37 + 48))(v52, 1, v13) == 1)
  {
    sub_100006B20(v52, &qword_100039708, &unk_100028280);
LABEL_30:
    v56 = 0;
    return v56 & 1;
  }

  (*(v37 + 32))(v74, v52, v13);
  v53 = sub_100026B34();
  if (v53 >> 62)
  {
    v54 = sub_100027434();
  }

  else
  {
    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  (*(v37 + 8))(v74, v13);
  if (!v54 || (sub_10000847C() & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_100026A94();
  v55 = v65;
  (*(v70 + 104))(v65, enum case for MessageDetails.EventStatus.pending(_:), v71);
  sub_10000A92C(&qword_100039748, &type metadata accessor for MessageDetails.EventStatus, &protocol conformance descriptor for MessageDetails.EventStatus);
  sub_100027214();
  sub_100027214();
  if (v80[0] == v78 && v80[1] == v79)
  {
    v56 = 1;
  }

  else
  {
    v56 = sub_100027474();
  }

  v58 = *(v70 + 8);
  v59 = v55;
  v60 = v71;
  v58(v59, v71);
  v58(v67, v60);

  return v56 & 1;
}

id sub_10000847C()
{
  v0 = sub_10000274C(&qword_100039708, &unk_100028280);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_100026B44();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026A74();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_100006B20(v2, &qword_100039708, &unk_100028280);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v7 = sub_100026B24();
    if (v7)
    {
      v8 = v7;
      v9 = [v7 isParent];

      (*(v4 + 8))(v6, v3);
      return v9;
    }

    (*(v4 + 8))(v6, v3);
  }

  return 0;
}

uint64_t sub_100008648(char *a1)
{
  v2 = v1;
  v4 = sub_100026B04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer____lazy_storage___isIpad) = 2;
  *(v2 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer____lazy_storage___isMac) = 2;
  *(v2 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_contentViewController) = 0;
  v8 = v2 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_resolvedSize;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_details;
  v10 = *(v5 + 16);
  v10(v2 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_details, a1, v4);
  v10(v7, (v2 + v9), v4);
  v11 = sub_100026A04();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v7, v4);
  if (v13 >> 60 == 15)
  {
    v11 = 0;
    v13 = 0xC000000000000000;
  }

  v15 = objc_allocWithZone(UIImage);
  isa = sub_100026754().super.isa;
  v17 = [v15 initWithData:isa];

  sub_100003600(v11, v13);
  if (!v17)
  {
    v17 = [objc_allocWithZone(UIImage) init];
  }

  v14(a1, v4);
  *(v2 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_image) = v17;
  return v2;
}

uint64_t sub_100008848()
{
  v1 = sub_100026834();
  v126 = *(v1 - 8);
  v127 = v1;
  v2 = __chkstk_darwin(v1);
  v124 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v123 = &v116 - v4;
  v5 = sub_10000274C(&qword_100039710, &unk_1000287B0);
  v6 = __chkstk_darwin(v5 - 8);
  v117 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v118 = &v116 - v8;
  v9 = sub_10000274C(&qword_100039708, &unk_100028280);
  __chkstk_darwin(v9 - 8);
  v128 = &v116 - v10;
  v11 = sub_100026B44();
  v12 = *(v11 - 8);
  v129 = v11;
  v130 = v12;
  __chkstk_darwin(v11);
  v125 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000269B4();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v120 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v119 = &v116 - v19;
  v20 = __chkstk_darwin(v18);
  v121 = &v116 - v21;
  v22 = __chkstk_darwin(v20);
  v122 = &v116 - v23;
  v24 = __chkstk_darwin(v22);
  v132 = &v116 - v25;
  v26 = __chkstk_darwin(v24);
  v131 = &v116 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v116 - v29;
  v31 = __chkstk_darwin(v28);
  v138 = &v116 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v116 - v34;
  __chkstk_darwin(v33);
  v37 = &v116 - v36;
  v134 = OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_details;
  v135 = v0;
  sub_100026A94();
  v136 = *(v15 + 104);
  v137 = v15 + 104;
  v136(v35, enum case for MessageDetails.EventStatus.pending(_:), v14);
  sub_10000A92C(&qword_100039748, &type metadata accessor for MessageDetails.EventStatus, &protocol conformance descriptor for MessageDetails.EventStatus);
  sub_100027214();
  v38 = v14;
  sub_100027214();
  if (v141 == v139 && v142 == v140)
  {
    v39 = 1;
  }

  else
  {
    v39 = sub_100027474();
  }

  v40 = *(v15 + 8);
  v40(v35, v38);
  v41 = v37;
  v133 = v40;
  v42 = (v15 + 8);
  v40(v41, v38);

  if (v39)
  {
    return sub_1000271B4();
  }

  sub_100026A94();
  v136(v30, enum case for MessageDetails.EventStatus.expired(_:), v38);
  sub_100027214();
  sub_100027214();
  v44 = v38;
  if (v141 == v139 && v142 == v140)
  {
    v45 = v30;
    v46 = v133;
    v133(v45, v38);
    v46(v138, v38);
LABEL_10:

    return 2099744;
  }

  v47 = sub_100027474();
  v48 = v30;
  v49 = v133;
  v133(v48, v38);
  v49(v138, v38);

  if (v47)
  {
    return 2099744;
  }

  v50 = v131;
  sub_100026A94();
  v136(v132, enum case for MessageDetails.EventStatus.unknown(_:), v38);
  sub_100027214();
  sub_100027214();
  if (v141 == v139 && v142 == v140)
  {
    v49(v132, v38);
    v49(v50, v38);
    goto LABEL_10;
  }

  v51 = sub_100027474();
  v49(v132, v38);
  v49(v50, v38);

  if (v51)
  {
    return 2099744;
  }

  v52 = v128;
  sub_100026A74();
  v54 = v129;
  v53 = v130;
  if ((*(v130 + 48))(v52, 1, v129) == 1)
  {
    sub_100006B20(v52, &qword_100039708, &unk_100028280);
    v55 = v124;
    sub_100026894();
    v56 = sub_100026824();
    v57 = sub_100027314();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "No family!", v58, 2u);
    }

    (*(v126 + 8))(v55, v127);
    return 2099744;
  }

  v131 = v42;
  v59 = v125;
  (*(v53 + 32))(v125, v52, v54);
  v132 = sub_100026A34();
  if (v60)
  {
LABEL_61:
    v112 = v123;
    sub_100026894();
    v113 = sub_100026824();
    v114 = sub_100027314();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      *v115 = 0;
      _os_log_impl(&_mh_execute_header, v113, v114, "No approver found", v115, 2u);
    }

    (*(v126 + 8))(v112, v127);
    (*(v53 + 8))(v59, v54);
    return 2099744;
  }

  v61 = sub_100026B34();
  v62 = v61;
  if (v61 >> 62)
  {
    v63 = sub_100027434();
    if (v63)
    {
      goto LABEL_24;
    }

    goto LABEL_60;
  }

  v63 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v63)
  {
LABEL_60:

    v54 = v129;
    v53 = v130;
    v59 = v125;
    goto LABEL_61;
  }

LABEL_24:
  v64 = 0;
  while (1)
  {
    if ((v62 & 0xC000000000000001) != 0)
    {
      v65 = sub_1000273C4();
    }

    else
    {
      if (v64 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_54;
      }

      v65 = *(v62 + 8 * v64 + 32);
    }

    v66 = v65;
    v67 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      (*(v62 + 8))(v117, v63);
      v73 = v130;
      v74 = v125;
      v87 = v118;
LABEL_43:
      v83 = sub_1000271B4();

LABEL_47:
      (*(v73 + 8))(v74, v129);
      v95 = v87;
      goto LABEL_48;
    }

    v68 = [v65 dsid];
    if (v68)
    {
      v69 = v68;
      v70 = [v68 integerValue];
      v138 = v66;
      v71 = v70;

      v72 = v71 == v132;
      v66 = v138;
      if (v72)
      {
        break;
      }
    }

    ++v64;
    if (v67 == v63)
    {
      goto LABEL_60;
    }
  }

  sub_100026A94();
  v136(v121, enum case for MessageDetails.EventStatus.denied(_:), v44);
  sub_100027214();
  sub_100027214();
  v73 = v130;
  v74 = v125;
  if (v141 == v139 && v142 == v140)
  {
    v75 = v133;
    v133(v121, v44);
    v75(v122, v44);

    goto LABEL_39;
  }

  v76 = sub_100027474();
  v77 = v133;
  v133(v121, v44);
  v77(v122, v44);

  if (v76)
  {
LABEL_39:
    v78 = v138;
    [v138 isMe];
    sub_1000271B4();

    sub_10000274C(&qword_100039750, &qword_1000282A8);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_100028000;
    v80 = sub_100027344();
    v82 = v81;
    *(v79 + 56) = &type metadata for String;
    *(v79 + 64) = sub_10000A9E4();
    *(v79 + 32) = v80;
    *(v79 + 40) = v82;
    v83 = sub_100027164();

    (*(v73 + 8))(v74, v129);
    return v83;
  }

  v84 = v119;
  sub_100026A94();
  v85 = v120;
  v136(v120, enum case for MessageDetails.EventStatus.approved(_:), v44);
  sub_10000A92C(&qword_100039740, &type metadata accessor for MessageDetails.EventStatus, &protocol conformance descriptor for MessageDetails.EventStatus);
  v86 = sub_100027114();
  v77(v85, v44);
  v77(v84, v44);
  if ((v86 & 1) == 0)
  {
    (*(v73 + 8))(v74, v129);

    return 2099744;
  }

  v87 = v118;
  sub_1000269D4();
  v63 = sub_100026994();
  v62 = *(v63 - 8);
  if ((*(v62 + 48))(v87, 1, v63) == 1)
  {
    goto LABEL_43;
  }

  v88 = v117;
  sub_10000A974(v87, v117);
  v89 = (*(v62 + 88))(v88, v63);
  if (v89 == enum case for MessageDetails.EventSource.askToBuy(_:))
  {
    v90 = v138;
    [v138 isMe];
    sub_1000271B4();

    sub_10000274C(&qword_100039750, &qword_1000282A8);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_100028000;
    v92 = sub_100027344();
    v94 = v93;
    *(v91 + 56) = &type metadata for String;
    *(v91 + 64) = sub_10000A9E4();
    *(v91 + 32) = v92;
    *(v91 + 40) = v94;
    v83 = sub_100027164();

    goto LABEL_47;
  }

  if (v89 != enum case for MessageDetails.EventSource.screenTime(_:))
  {
    goto LABEL_55;
  }

  sub_1000269E4();
  v96 = sub_1000271D4();
  v98 = v97;

  if (!v98)
  {
    v100 = v138;
    [v138 isMe];
    sub_1000271B4();

    sub_10000274C(&qword_100039750, &qword_1000282A8);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_100028000;
    v102 = sub_100027344();
    v104 = v103;
    *(v101 + 56) = &type metadata for String;
    *(v101 + 64) = sub_10000A9E4();
    *(v101 + 32) = v102;
    *(v101 + 40) = v104;
    v83 = sub_100027164();

LABEL_57:
    (*(v130 + 8))(v125, v129);
    v95 = v118;
LABEL_48:
    sub_100006B20(v95, &qword_100039710, &unk_1000287B0);
    return v83;
  }

  if ([v138 isMe])
  {
    sub_1000271B4();
    sub_10000274C(&qword_100039750, &qword_1000282A8);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_100028000;
    *(v99 + 56) = &type metadata for String;
    *(v99 + 64) = sub_10000A9E4();
    *(v99 + 32) = v96;
    *(v99 + 40) = v98;
    v83 = sub_100027164();

    goto LABEL_57;
  }

  sub_1000271B4();
  sub_10000274C(&qword_100039750, &qword_1000282A8);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_100028210;
  v106 = v138;
  v107 = sub_100027344();
  v109 = v108;
  *(v105 + 56) = &type metadata for String;
  v110 = sub_10000A9E4();
  *(v105 + 32) = v107;
  *(v105 + 40) = v109;
  *(v105 + 96) = &type metadata for String;
  *(v105 + 104) = v110;
  *(v105 + 64) = v110;
  *(v105 + 72) = v96;
  *(v105 + 80) = v98;
  v111 = sub_100027164();

  (*(v130 + 8))(v125, v129);
  sub_100006B20(v118, &qword_100039710, &unk_1000287B0);
  return v111;
}

id sub_100009A68()
{
  v0 = sub_1000269B4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026A94();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for MessageDetails.EventStatus.approved(_:))
  {
    return [objc_opt_self() systemGreenColor];
  }

  if (v4 == enum case for MessageDetails.EventStatus.denied(_:))
  {
    return [objc_opt_self() systemRedColor];
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

void *sub_100009C00@<X0>(uint64_t *a1@<X8>)
{
  v67 = a1;
  v1 = sub_10000274C(&qword_100039708, &unk_100028280);
  __chkstk_darwin(v1 - 8);
  v65 = &v57 - v2;
  v3 = sub_100026B44();
  v4 = *(v3 - 8);
  v68 = v3;
  v69 = v4;
  __chkstk_darwin(v3);
  v66 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000274C(&qword_100039710, &unk_1000287B0);
  v7 = __chkstk_darwin(v6 - 8);
  v61 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v57 - v9;
  v11 = sub_100026994();
  v70 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v58 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v64 = &v57 - v14;
  v15 = sub_1000269B4();
  v16 = *(v15 - 8);
  v17 = v16;
  __chkstk_darwin(v15);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000274C(&qword_100039718, &unk_100028290);
  v20 = *(v16 + 72);
  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = swift_allocObject();
  v63 = xmmword_100028210;
  *(v22 + 16) = xmmword_100028210;
  v23 = v22 + v21;
  v24 = *(v17 + 104);
  v24(v23, enum case for MessageDetails.EventStatus.approved(_:), v15);
  v24(v23 + v20, enum case for MessageDetails.EventStatus.denied(_:), v15);
  v71 = OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_details;
  sub_100026A94();
  LOBYTE(v20) = sub_10000A47C(v19, v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v17 + 8))(v19, v15);
  v25 = v11;
  if ((v20 & 1) == 0)
  {
    sub_1000269D4();
    v26 = v70;
    if ((*(v70 + 48))(v10, 1, v11) == 1)
    {
      sub_100006B20(v10, &qword_100039710, &unk_1000287B0);
    }

    else
    {
      v27 = v64;
      (*(v26 + 32))(v64, v10, v25);
      if (qword_100039078 != -1)
      {
        swift_once();
      }

      v28 = sub_100007898(v27, qword_100039570);
      (*(v26 + 8))(v27, v25);
      if (v28)
      {
        sub_10000274C(&qword_100039720, &qword_1000287F0);
        v29 = swift_allocObject();
        *(v29 + 16) = v63;
        *(v29 + 32) = 0;
        *(v29 + 40) = 0;
        *(v29 + 48) = sub_1000271B4();
        *(v29 + 56) = v30;
        goto LABEL_9;
      }
    }
  }

  sub_100008848();
  v31 = sub_1000271C4();

  v29 = sub_10000A588(v31);

LABEL_9:

  v32 = sub_100009A68();
  v34 = v33;
  v36 = v35;
  if (v32)
  {

    v37 = v32;
    v38 = sub_100026F64();
    v60 = v34;
    v39 = v36;
  }

  else
  {
    v38 = 0;
    v60 = 0;
    v39 = 0;
  }

  v40 = *(v29 + 16);

  v41 = *(v29 + 16);
  v64 = v38;
  v62 = v34;
  *&v63 = v36;
  if (v40 == 2)
  {
    v42 = v68;
    if (v41)
    {
      if (v41 != 1)
      {
        v36 = *(v29 + 32);
        v15 = *(v29 + 40);
        v34 = *(v29 + 56);
        v59 = *(v29 + 48);

        goto LABEL_18;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v42 = v68;
  if (!v41)
  {
    goto LABEL_33;
  }

  v59 = 0;
  v34 = 0;
  v36 = *(v29 + 32);
  v15 = *(v29 + 40);
LABEL_18:

  v43 = v65;
  sub_100026A74();
  v44 = v69;
  if ((*(v69 + 48))(v43, 1, v42) != 1)
  {
    (*(v44 + 32))(v66, v43, v42);
    v46 = sub_100026B34();
    v45 = v70;
    if (!(v46 >> 62))
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_22;
    }

LABEL_35:
    v47 = sub_100027434();
    v45 = v70;
LABEL_22:

    (*(v69 + 8))(v66, v42);
    if (v47)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  sub_100006B20(v43, &qword_100039708, &unk_100028280);
  v45 = v70;
LABEL_23:
  v48 = v61;
  sub_1000269D4();
  if ((*(v45 + 48))(v48, 1, v25) == 1)
  {

    sub_100006B20(v48, &qword_100039710, &unk_1000287B0);
LABEL_30:
    sub_1000271A4();
    v53 = sub_1000271B4();
    v34 = v54;

    v36 = sub_1000271B4();
    v15 = v55;
    result = sub_10000A8EC(v32, v62, v63);
    v52 = 0;
    v39 = 0;
    goto LABEL_31;
  }

  v49 = v58;
  (*(v45 + 32))(v58, v48, v25);
  if (qword_100039078 != -1)
  {
    swift_once();
  }

  v50 = sub_100007898(v49, qword_100039570);
  (*(v45 + 8))(v49, v25);
  if ((v50 & 1) == 0)
  {

    goto LABEL_30;
  }

LABEL_28:
  result = sub_10000A8EC(v32, v62, v63);
  v53 = v59;
  v52 = v60;
LABEL_31:
  v56 = v67;
  *v67 = v36;
  v56[1] = v15;
  v56[2] = v53;
  v56[3] = v34;
  v56[4] = v52;
  v56[5] = v39;
  v56[6] = v64;
  return result;
}

BOOL sub_10000A47C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_1000269B4();
    ++v2;
    sub_10000A92C(&qword_100039740, &type metadata accessor for MessageDetails.EventStatus, &protocol conformance descriptor for MessageDetails.EventStatus);
  }

  while ((sub_100027114() & 1) == 0);
  return v3 != v4;
}

unint64_t *sub_10000A588(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100017410(0, v1, 0);
    v3 = a1 + 40;
    do
    {

      sub_10000274C(&qword_100039738, &qword_1000282A0);
      swift_dynamicCast();
      v4 = v8;
      v6 = *(&_swiftEmptyArrayStorage + 2);
      v5 = *(&_swiftEmptyArrayStorage + 3);
      if (v6 >= v5 >> 1)
      {
        sub_100017410((v5 > 1), v6 + 1, 1);
        v4 = v8;
      }

      *(&_swiftEmptyArrayStorage + 2) = v6 + 1;
      *(&_swiftEmptyArrayStorage + v6 + 2) = v4;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t BubbleContentContainer.deinit()
{
  v1 = OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_details;
  v2 = sub_100026B04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t BubbleContentContainer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_details;
  v2 = sub_100026B04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BubbleContentContainer(uint64_t a1)
{
  result = qword_1000395B0;
  if (!qword_1000395B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000A830(uint64_t a1)
{
  result = sub_100026B04();
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

void *sub_10000A8EC(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000A92C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000A974(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000274C(&qword_100039710, &unk_1000287B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000A9E4()
{
  result = qword_100039758;
  if (!qword_100039758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039758);
  }

  return result;
}

uint64_t sub_10000AA38@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = sub_100026654();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v20 = v7;
    v21 = a3;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v22 = v12;
    v13 = (v11 - 8);
    v14 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    while (1)
    {
      v22(v9, v14, v6);
      v16 = v23(v9);
      if (v3)
      {
        return (*v13)(v9, v6);
      }

      if (v16)
      {
        break;
      }

      (*v13)(v9, v6);
      v14 += v15;
      if (!--v10)
      {
        v17 = 1;
        v7 = v20;
        a3 = v21;
        return (*(v7 + 56))(a3, v17, 1, v6);
      }
    }

    v7 = v20;
    a3 = v21;
    (*(v20 + 32))(v21, v9, v6);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a3, v17, 1, v6);
}

Swift::Int sub_10000AC20()
{
  v1 = *v0;
  sub_1000274D4();
  sub_1000274E4(v1);
  return sub_1000274F4();
}

Swift::Int sub_10000AC94(uint64_t a1)
{
  v2 = *v1;
  sub_1000274D4();
  sub_1000274E4(v2);
  return sub_1000274F4();
}

uint64_t sub_10000ACE8(char *a1)
{
  v49 = a1;
  v2 = sub_100026834();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v51 = &v48 - v7;
  v8 = sub_10000274C(&qword_100039820, &qword_100028348);
  __chkstk_darwin(v8 - 8);
  v10 = &v48 - v9;
  v11 = sub_10000274C(&qword_100039828, &qword_100028350);
  __chkstk_darwin(v11 - 8);
  v13 = &v48 - v12;
  v14 = sub_100026684();
  v53 = *(v14 - 8);
  v54 = v14;
  __chkstk_darwin(v14);
  v50 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000274C(&qword_100039188, &qword_100027DE8);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v48 - v20;
  v22 = sub_100026734();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v52 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [v1 selectedMessage];
  if (!v25)
  {
    (*(v23 + 56))(v21, 1, 1, v22);
LABEL_7:
    sub_100006B20(v21, &qword_100039188, &qword_100027DE8);
    sub_100026894();
    v30 = sub_100026824();
    v31 = sub_100027314();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "No message url in conversation", v32, 2u);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  v48 = v10;
  v26 = v3;
  v27 = v2;
  v28 = v25;
  v29 = [v25 URL];

  if (v29)
  {
    sub_100026714();

    (*(v23 + 56))(v19, 0, 1, v22);
  }

  else
  {
    (*(v23 + 56))(v19, 1, 1, v22);
  }

  sub_100010C0C(v19, v21, &qword_100039188, &qword_100027DE8);
  v2 = v27;
  v3 = v26;
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    goto LABEL_7;
  }

  v33 = v52;
  (*(v23 + 32))(v52, v21, v22);
  sub_100026674();
  v35 = v53;
  v34 = v54;
  if ((*(v53 + 48))(v13, 1, v54) == 1)
  {
    sub_100006B20(v13, &qword_100039828, &qword_100028350);
    v36 = v51;
    sub_100026894();
    v37 = sub_100026824();
    v38 = sub_100027314();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Can't parse bubble view url components", v39, 2u);
    }

    (*(v3 + 8))(v36, v2);
    goto LABEL_18;
  }

  v40 = v50;
  (*(v35 + 32))(v50, v13, v34);
  v41 = sub_100026664();
  if (!v41)
  {
    (*(v35 + 8))(v40, v34);
LABEL_18:
    (*(v23 + 8))(v33, v22);
    return 0;
  }

  v42 = v41;
  __chkstk_darwin(v41);
  v43 = v48;
  *(&v48 - 2) = v49;
  sub_10000AA38(sub_100010BA8, v42, v43);

  v44 = sub_100026654();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v43, 1, v44) == 1)
  {
    (*(v53 + 8))(v40, v54);
    (*(v23 + 8))(v33, v22);
    sub_100006B20(v43, &qword_100039820, &qword_100028348);
    return 0;
  }

  v47 = sub_100026644();
  (*(v53 + 8))(v40, v54);
  (*(v23 + 8))(v33, v22);
  (*(v45 + 8))(v43, v44);
  return v47;
}

uint64_t sub_10000B45C()
{
  v0 = sub_100026634();
  v2 = v1;
  if (v0 == sub_100026854() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_100027474();
  }

  return v4 & 1;
}

uint64_t sub_10000B4F8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v120 = a3;
  v114 = a4;
  v6 = sub_100026834();
  v118 = *(v6 - 8);
  v119 = v6;
  v7 = __chkstk_darwin(v6);
  v111 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v10 = __chkstk_darwin(v9);
  v107 = &v96 - v11;
  v12 = __chkstk_darwin(v10);
  v106 = &v96 - v13;
  __chkstk_darwin(v12);
  v104 = &v96 - v14;
  v102 = sub_100026B44();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v98 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000274C(&qword_100039708, &unk_100028280);
  v17 = __chkstk_darwin(v16 - 8);
  v100 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v99 = &v96 - v20;
  __chkstk_darwin(v19);
  v103 = &v96 - v21;
  v22 = sub_100026B04();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v105 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v108 = &v96 - v27;
  v28 = __chkstk_darwin(v26);
  v117 = &v96 - v29;
  __chkstk_darwin(v28);
  v116 = &v96 - v30;
  v31 = sub_10000274C(&qword_100039830, &qword_100028358);
  v32 = __chkstk_darwin(v31 - 8);
  v112 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v36 = &v96 - v35;
  v37 = __chkstk_darwin(v34);
  v39 = &v96 - v38;
  __chkstk_darwin(v37);
  v41 = &v96 - v40;
  v121 = v23;
  v44 = *(v23 + 56);
  v43 = v23 + 56;
  v42 = v44;
  v44(&v96 - v40, 1, 1, v22);
  v115 = v4;
  sub_10000C330(1, v39);
  v113 = a2;
  sub_100006B20(v41, &qword_100039830, &qword_100028358);
  v44(v39, 0, 1, v22);
  sub_100010C0C(v39, v41, &qword_100039830, &qword_100028358);
  sub_1000061E4(v41, v36, &qword_100039830, &qword_100028358);
  v45 = v121;
  v46 = *(v121 + 48);
  v47 = v46(v36, 1, v22);
  v48 = v115;
  if (v47 == 1)
  {
    sub_100006B20(v41, &qword_100039830, &qword_100028358);
    sub_100006B20(v36, &qword_100039830, &qword_100028358);
    v49 = 1;
    v50 = v114;
  }

  else
  {
    v96 = v43;
    v97 = v41;
    v51 = v116;
    v109 = *(v45 + 32);
    v110 = v45 + 32;
    v109(v116, v36, v22);
    (*(v45 + 16))(v117, v51, v22);
    sub_100010BC8(v48 + 6, v48[9]);
    v52 = v112;
    v53 = v120;
    sub_100026BE4();
    if (v46(v52, 1, v22) == 1)
    {
      sub_100006B20(v52, &qword_100039830, &qword_100028358);
      v54 = v107;
      sub_100026894();
      v55 = v53;

      v56 = sub_100026824();
      v57 = sub_1000272F4();

      v58 = os_log_type_enabled(v56, v57);
      v60 = v118;
      v59 = v119;
      v61 = v97;
      if (v58)
      {
        v62 = swift_slowAlloc();
        v63 = v42;
        v64 = swift_slowAlloc();
        v122 = v64;
        *v62 = 136315138;
        *(v62 + 4) = sub_100005F78(v113, v55, &v122);
        _os_log_impl(&_mh_execute_header, v56, v57, "%s - cached message details is nil", v62, 0xCu);
        sub_100006044(v64);
        v42 = v63;

        (*(v60 + 8))(v107, v59);
      }

      else
      {

        (*(v60 + 8))(v54, v59);
      }

      (*(v121 + 8))(v116, v22);
      v75 = v61;
    }

    else
    {
      v109(v108, v52, v22);
      sub_100026AC4();
      v65 = v118;
      if (v66)
      {
        v67 = v104;
        sub_100026894();

        v68 = sub_100026824();
        v69 = sub_100027314();

        v70 = os_log_type_enabled(v68, v69);
        v71 = v113;
        if (v70)
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v115 = v42;
          v74 = v73;
          v122 = v73;
          *v72 = 136315138;
          *(v72 + 4) = sub_100005F78(v71, v53, &v122);
          _os_log_impl(&_mh_execute_header, v68, v69, "%s - userDSID is nil", v72, 0xCu);
          sub_100006044(v74);
          v42 = v115;

          (*(v65 + 8))(v104, v119);
        }

        else
        {

          (*(v65 + 8))(v67, v119);
        }
      }

      else
      {
        sub_100010BC8(v115 + 11, v115[14]);
        v76 = v103;
        sub_100026C04();
        sub_1000061E4(v76, v99, &qword_100039708, &unk_100028280);
        sub_100026A84();
        v77 = v100;
        sub_1000061E4(v76, v100, &qword_100039708, &unk_100028280);
        v78 = v101;
        v79 = v102;
        if ((*(v101 + 48))(v77, 1, v102) == 1)
        {
          sub_100006B20(v76, &qword_100039708, &unk_100028280);
          v80 = v77;
        }

        else
        {
          v81 = v98;
          (*(v78 + 32))(v98, v77, v79);
          v82 = sub_100026B14();
          sub_100027344();

          sub_100026AD4();
          (*(v78 + 8))(v81, v79);
          v80 = v103;
        }

        sub_100006B20(v80, &qword_100039708, &unk_100028280);
        v65 = v118;
      }

      v83 = v105;
      sub_100026984();
      v84 = *(v121 + 8);
      v85 = v117;
      v84(v117, v22);
      v109(v85, v83, v22);
      v86 = v106;
      sub_100026894();
      v87 = v120;

      v88 = sub_100026824();
      v89 = sub_1000272F4();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v92 = v87;
        v93 = v42;
        v94 = v91;
        v122 = v91;
        *v90 = 136315138;
        *(v90 + 4) = sub_100005F78(v113, v92, &v122);
        _os_log_impl(&_mh_execute_header, v88, v89, "%s - loaded cached message details from cache", v90, 0xCu);
        sub_100006044(v94);
        v42 = v93;
      }

      (*(v65 + 8))(v86, v119);
      v84(v108, v22);
      v84(v116, v22);
      v75 = v97;
    }

    sub_100006B20(v75, &qword_100039830, &qword_100028358);
    v50 = v114;
    v109(v114, v117, v22);
    v49 = 0;
  }

  return v42(v50, v49, 1, v22);
}

uint64_t sub_10000C330@<X0>(int a2@<W3>, uint64_t a3@<X8>)
{
  v55 = a2;
  v58 = a3;
  v4 = sub_100026834();
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v50 - v8;
  v10 = sub_100026B04();
  v56 = *(v10 - 8);
  v57 = v10;
  __chkstk_darwin(v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000274C(&qword_100039828, &qword_100028350);
  __chkstk_darwin(v13 - 8);
  v15 = &v50 - v14;
  v16 = sub_100026684();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026674();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100006B20(v15, &qword_100039828, &qword_100028350);
    sub_100026894();
    v20 = sub_100026824();
    v21 = sub_100027314();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Can't parse bubble view url components", v22, 2u);
    }

    (*(v59 + 8))(v7, v60);
    sub_100010C74();
    swift_allocError();
    *v23 = 2;
    return swift_willThrow();
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    sub_1000269C4();
    if (v3)
    {
      return (*(v17 + 8))(v19, v16);
    }

    else
    {
      v25 = sub_100026AB4();
      if (!v26)
      {
        v25 = sub_100026AF4();
      }

      v27 = v25;
      v28 = v26;
      v29 = sub_100026A04();
      if (v30 >> 60 == 15)
      {
        if (qword_100039068 != -1)
        {
          swift_once();
        }

        ImageCache.getFromCache(_:)(v27, v28);
        v32 = v31;

        if (v32 >> 60 != 15)
        {
          sub_100026A14();
        }
      }

      else
      {
        v33 = v29;
        v34 = v30;

        sub_100010CDC(v33, v34);
      }

      if (v55)
      {
        v35 = v9;
        v36 = sub_100026A04();
        if (v37 >> 60 == 15)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            swift_unknownObjectRelease();
            if (qword_100039080 != -1)
            {
              swift_once();
            }

            v38 = qword_10003A748;
            if (qword_10003A748 >> 60 != 15)
            {
              v39 = qword_10003A740;
              sub_100010CC8(qword_10003A740, qword_10003A748);
              sub_100003B24(v39, v38);
              sub_100026A14();
              sub_100026894();
              v40 = sub_100026824();
              v55 = sub_1000272F4();
              if (os_log_type_enabled(v40, v55))
              {
                v41 = swift_slowAlloc();
                v52 = v39;
                v42 = v41;
                v53 = swift_slowAlloc();
                v61 = v53;
                *v42 = 136315138;
                swift_beginAccess();
                v51 = v40;
                v43 = sub_100026AF4();
                v54 = v35;
                v45 = v44;
                swift_endAccess();
                v46 = sub_100005F78(v43, v45, &v61);

                *(v42 + 4) = v46;
                v47 = v51;
                _os_log_impl(&_mh_execute_header, v51, v55, "%s - using fallback icon", v42, 0xCu);
                sub_100006044(v53);

                sub_100010CDC(v52, v38);
                (*(v59 + 8))(v54, v60);
              }

              else
              {

                sub_100010CDC(v39, v38);
                (*(v59 + 8))(v35, v60);
              }
            }
          }
        }

        else
        {
          sub_100010CDC(v36, v37);
        }
      }

      (*(v17 + 8))(v19, v16);
      swift_beginAccess();
      v49 = v56;
      v48 = v57;
      (*(v56 + 16))(v58, v12, v57);
      return (*(v49 + 8))(v12, v48);
    }
  }
}

uint64_t sub_10000C9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a2;
  v7 = sub_100026734();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000274C(&qword_1000391C8, &qword_100028010);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  if (*(v4 + 128))
  {
    sub_100026B04();

    sub_10000274C(&qword_100039848, &qword_100028370);
    sub_1000272C4();
  }

  *(v4 + 128) = 0;

  sub_100027284();
  v14 = sub_1000272A4();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  (*(v8 + 16))(&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  sub_100027274();

  v15 = sub_100027264();
  v16 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = v15;
  *(v18 + 3) = &protocol witness table for MainActor;
  *(v18 + 4) = v4;
  (*(v8 + 32))(&v18[v16], v10, v7);
  v19 = &v18[v17];
  *v19 = v23;
  v19[1] = a3;
  v20 = sub_10000FC7C(0, 0, v13, &unk_100028380, v18);
  *(v4 + 128) = v20;

  return v20;
}

uint64_t sub_10000CCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  sub_10000274C(&qword_100039708, &unk_100028280);
  v7[7] = swift_task_alloc();
  v8 = sub_100026B44();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v9 = sub_100026B04();
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  sub_100027274();
  v7[14] = sub_100027264();
  v11 = sub_100027244();
  v7[15] = v11;
  v7[16] = v10;

  return _swift_task_switch(sub_10000CE38, v11, v10);
}

uint64_t sub_10000CE38()
{
  sub_10000C330(0, v0[13]);
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_10000CF54;
  v2 = v0[13];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[2];

  return sub_10000D354(v5, v3, v4, v2);
}

uint64_t sub_10000CF54()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_10000D2AC;
  }

  else
  {
    v5 = sub_10000D090;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10000D090()
{
  v1 = v0[18];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];

  sub_10000F724(v4, v2, v3);
  if (v1)
  {
    v5 = v0[13];
    v6 = v0[11];
    v7 = *(v0[12] + 8);
    v7(v0[2], v6);
    v7(v5, v6);

    v8 = v0[1];
  }

  else
  {
    v9 = v0[8];
    v10 = v0[9];
    v11 = v0[7];
    sub_100026A74();
    v12 = (*(v10 + 48))(v11, 1, v9);
    v14 = v0[12];
    v13 = v0[13];
    v15 = v0[11];
    if (v12 == 1)
    {
      v16 = v0[7];
      (*(v14 + 8))(v0[13], v0[11]);
      sub_100006B20(v16, &qword_100039708, &unk_100028280);
    }

    else
    {
      v18 = v0[9];
      v17 = v0[10];
      v19 = v0[8];
      v20 = v0[3];
      (*(v18 + 32))(v17, v0[7], v19);
      sub_100010BC8((v20 + 88), *(v20 + 112));
      sub_100026C14();
      (*(v18 + 8))(v17, v19);
      (*(v14 + 8))(v13, v15);
    }

    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_10000D2AC()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000D354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = sub_100027254();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = sub_100026834();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v8 = sub_100026B04();
  v5[24] = v8;
  v5[25] = *(v8 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = sub_100027274();
  v5[30] = sub_100027264();
  v10 = sub_100027244();
  v5[31] = v10;
  v5[32] = v9;

  return _swift_task_switch(sub_10000D56C, v10, v9);
}

uint64_t sub_10000D56C()
{
  v88 = v0;
  (*(*(v0 + 200) + 16))(*(v0 + 224), *(v0 + 80), *(v0 + 192));
  sub_1000272E4();
  *(v0 + 264) = 0;
  v1 = &xmmword_100028000;
  v2 = sub_100026A04();
  if (v3 >> 60 == 15)
  {
    sub_100026894();

    v4 = sub_100026824();
    v5 = sub_100027304();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 176);
    v8 = *(v0 + 120);
    v9 = *(v0 + 128);
    if (v6)
    {
      v11 = *(v0 + 64);
      v10 = *(v0 + 72);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v87[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_100005F78(v11, v10, v87);
      _os_log_impl(&_mh_execute_header, v4, v5, "%s stable details had no thumbnail data. Fetching it.", v12, 0xCu);
      sub_100006044(v13);
    }

    v14 = *(v9 + 8);
    v14(v7, v8);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 272) = Strong;
    if (Strong)
    {
      v16 = swift_task_alloc();
      *(v0 + 280) = v16;
      *v16 = v0;
      v16[1] = sub_10000E018;
      v17 = *(v0 + 216);
      v18 = *(v0 + 224);

      return sub_10001A974(v17, v18);
    }

    sub_100026894();

    v20 = sub_100026824();
    v21 = sub_100027304();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 168);
    v24 = *(v0 + 120);
    if (v22)
    {
      v83 = *(v0 + 168);
      v25 = *(v0 + 64);
      v26 = *(v0 + 72);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v87[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_100005F78(v25, v26, v87);
      _os_log_impl(&_mh_execute_header, v20, v21, "%s thumbnail is nil", v27, 0xCu);
      sub_100006044(v28);

      v29 = v83;
    }

    else
    {

      v29 = v23;
    }

    v14(v29, v24);
    v1 = &xmmword_100028000;
  }

  else
  {
    sub_100010CDC(v2, v3);
  }

  *(v0 + 288) = v1[43];
  v30 = *(v0 + 264);
  sub_1000272E4();
  if (v30)
  {
    v31 = v30;
    sub_100026894();

    v32 = sub_100026824();
    v33 = sub_100027304();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 128);
      v82 = *(v0 + 120);
      v84 = *(v0 + 160);
      v35 = v1;
      v37 = *(v0 + 64);
      v36 = *(v0 + 72);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v87[0] = v39;
      *v38 = 136315138;
      v40 = v36;
      v1 = v35;
      *(v38 + 4) = sub_100005F78(v37, v40, v87);
      _os_log_impl(&_mh_execute_header, v32, v33, "%s has been deactivated prior to loading message status!", v38, 0xCu);
      sub_100006044(v39);

      (*(v34 + 8))(v84, v82);
    }

    else
    {
      v44 = *(v0 + 160);
      v45 = *(v0 + 120);
      v46 = *(v0 + 128);

      (*(v46 + 8))(v44, v45);
    }

    v47 = *(v0 + 224);
    v48 = *(v0 + 192);
    v49 = *(v0 + 200);
    goto LABEL_22;
  }

  v41 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 304) = v41;
  if (!v41)
  {
    sub_100026894();

    v69 = sub_100026824();
    v70 = sub_100027304();

    v71 = os_log_type_enabled(v69, v70);
    v72 = *(v0 + 144);
    v73 = *(v0 + 120);
    v74 = *(v0 + 128);
    if (v71)
    {
      v86 = *(v0 + 144);
      v75 = v1;
      v77 = *(v0 + 64);
      v76 = *(v0 + 72);
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v87[0] = v79;
      *v78 = 136315138;
      v80 = v77;
      v1 = v75;
      *(v78 + 4) = sub_100005F78(v80, v76, v87);
      _os_log_impl(&_mh_execute_header, v69, v70, "%s messageStatusProvider == nil", v78, 0xCu);
      sub_100006044(v79);

      (*(v74 + 8))(v86, v73);
    }

    else
    {

      (*(v74 + 8))(v72, v73);
    }

    v47 = *(v0 + 224);
    v48 = *(v0 + 192);
    v49 = *(v0 + 200);
    sub_100010C74();
    v31 = swift_allocError();
    *v81 = 3;
LABEL_22:
    swift_willThrow();
    (*(v49 + 8))(v47, v48);
    *(v0 + 368) = v1[43];
    *(v0 + 360) = v31;
    *(v0 + 40) = v31;
    swift_errorRetain();
    sub_10000274C(&qword_100039848, &qword_100028370);
    if (swift_dynamicCast())
    {
      v51 = *(v0 + 104);
      v50 = *(v0 + 112);
      v52 = *(v0 + 96);

      (*(v51 + 8))(v50, v52);
      swift_willThrow();
      sub_100010CDC(0, 0xF000000000000000);

      v53 = *(v0 + 8);

      return v53();
    }

    else
    {
      sub_100026894();

      swift_errorRetain();
      v54 = sub_100026824();
      v55 = sub_100027304();

      v56 = os_log_type_enabled(v54, v55);
      v58 = *(v0 + 128);
      v57 = *(v0 + 136);
      v59 = *(v0 + 120);
      if (v56)
      {
        v85 = *(v0 + 136);
        v61 = *(v0 + 64);
        v60 = *(v0 + 72);
        v62 = swift_slowAlloc();
        v87[0] = swift_slowAlloc();
        *v62 = 136315394;
        *(v62 + 4) = sub_100005F78(v61, v60, v87);
        *(v62 + 12) = 2080;
        swift_getErrorValue();
        v63 = sub_100027484();
        v65 = sub_100005F78(v63, v64, v87);

        *(v62 + 14) = v65;
        _os_log_impl(&_mh_execute_header, v54, v55, "%s failed load details %s, using fallback", v62, 0x16u);
        swift_arrayDestroy();

        (*(v58 + 8))(v85, v59);
      }

      else
      {

        (*(v58 + 8))(v57, v59);
      }

      v66 = swift_task_alloc();
      *(v0 + 384) = v66;
      *v66 = v0;
      v66[1] = sub_10000F4F0;
      v67 = *(v0 + 80);
      v68 = *(v0 + 56);

      return sub_10000FF34(v68, v67, 0, 0xF000000000000000);
    }
  }

  *(v0 + 312) = sub_100027264();
  v43 = sub_100027244();
  *(v0 + 320) = v43;
  *(v0 + 328) = v42;

  return _swift_task_switch(sub_10000E84C, v43, v42);
}

uint64_t sub_10000E018()
{
  v1 = *v0;

  v2 = *(v1 + 256);
  v3 = *(v1 + 248);

  return _swift_task_switch(sub_10000E138, v3, v2);
}

uint64_t sub_10000E138(uint64_t a1)
{
  v67 = v1;
  v2 = v1[27];
  v4 = v1[24];
  v3 = v1[25];
  v5 = sub_100026A04();
  v7 = v6;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v2, v4);
  if (v7 >> 60 != 15)
  {
    sub_100003B24(v5, v7);
    sub_100026A14();
  }

  v1[36] = v5;
  v1[37] = v7;
  v8 = v1[33];
  sub_1000272E4();
  if (v8)
  {
    v9 = v8;
    sub_100026894();

    v10 = sub_100026824();
    v11 = sub_100027304();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v1[16];
      v60 = v1[15];
      v63 = v1[20];
      v58 = v1[9];
      v13 = v5;
      v14 = v1[8];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v66[0] = v16;
      *v15 = 136315138;
      v17 = v14;
      v5 = v13;
      *(v15 + 4) = sub_100005F78(v17, v58, v66);
      _os_log_impl(&_mh_execute_header, v10, v11, "%s has been deactivated prior to loading message status!", v15, 0xCu);
      sub_100006044(v16);

      (*(v12 + 8))(v63, v60);
    }

    else
    {
      v21 = v1[20];
      v23 = v1[15];
      v22 = v1[16];

      (*(v22 + 8))(v21, v23);
    }

    v24 = v1[28];
    v26 = v1[24];
    v25 = v1[25];
    goto LABEL_12;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v1[38] = Strong;
  if (!Strong)
  {
    sub_100026894();

    v46 = sub_100026824();
    v47 = sub_100027304();

    v48 = os_log_type_enabled(v46, v47);
    v49 = v1[18];
    v51 = v1[15];
    v50 = v1[16];
    if (v48)
    {
      v53 = v1[8];
      v52 = v1[9];
      v62 = v5;
      v54 = swift_slowAlloc();
      v65 = v49;
      v66[0] = swift_slowAlloc();
      v55 = v66[0];
      *v54 = 136315138;
      *(v54 + 4) = sub_100005F78(v53, v52, v66);
      _os_log_impl(&_mh_execute_header, v46, v47, "%s messageStatusProvider == nil", v54, 0xCu);
      sub_100006044(v55);

      v5 = v62;

      (*(v50 + 8))(v65, v51);
    }

    else
    {

      (*(v50 + 8))(v49, v51);
    }

    v24 = v1[28];
    v26 = v1[24];
    v25 = v1[25];
    sub_100010C74();
    v9 = swift_allocError();
    *v56 = 3;
LABEL_12:
    swift_willThrow();
    (*(v25 + 8))(v24, v26);
    v1[46] = v5;
    v1[47] = v7;
    v1[45] = v9;
    v1[5] = v9;
    swift_errorRetain();
    sub_10000274C(&qword_100039848, &qword_100028370);
    if (swift_dynamicCast())
    {
      v28 = v1[13];
      v27 = v1[14];
      v29 = v1[12];

      (*(v28 + 8))(v27, v29);
      swift_willThrow();
      sub_100010CDC(v5, v7);

      v30 = v1[1];

      return v30();
    }

    else
    {
      v64 = v7;
      sub_100026894();

      swift_errorRetain();
      v31 = sub_100026824();
      v32 = sub_100027304();

      v33 = os_log_type_enabled(v31, v32);
      v35 = v1[16];
      v34 = v1[17];
      v36 = v1[15];
      if (v33)
      {
        v59 = v1[17];
        v37 = v1[8];
        v38 = v1[9];
        v61 = v5;
        v39 = swift_slowAlloc();
        v66[0] = swift_slowAlloc();
        *v39 = 136315394;
        *(v39 + 4) = sub_100005F78(v37, v38, v66);
        *(v39 + 12) = 2080;
        swift_getErrorValue();
        v40 = sub_100027484();
        v42 = sub_100005F78(v40, v41, v66);

        *(v39 + 14) = v42;
        _os_log_impl(&_mh_execute_header, v31, v32, "%s failed load details %s, using fallback", v39, 0x16u);
        swift_arrayDestroy();

        v5 = v61;

        (*(v35 + 8))(v59, v36);
      }

      else
      {

        (*(v35 + 8))(v34, v36);
      }

      v43 = swift_task_alloc();
      v1[48] = v43;
      *v43 = v1;
      v43[1] = sub_10000F4F0;
      v44 = v1[10];
      v45 = v1[7];

      return sub_10000FF34(v45, v44, v5, v64);
    }
  }

  v1[39] = sub_100027264();
  v20 = sub_100027244();
  v1[40] = v20;
  v1[41] = v19;

  return _swift_task_switch(sub_10000E84C, v20, v19);
}

uint64_t sub_10000E84C()
{
  v1 = (v0[38] + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID);
  v3 = *v1;
  v2 = v1[1];
  v0[42] = v2;

  v4 = swift_task_alloc();
  v0[43] = v4;
  *v4 = v0;
  v4[1] = sub_10000E920;
  v5 = v0[28];
  v6 = v0[26];

  return static ScreenTimeSupport.getCurrentStatusDetails(withDetails:forId:)(v6, v5, v3, v2);
}

uint64_t sub_10000E920()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = sub_10000F0B8;
  }

  else
  {

    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = sub_10000EA3C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10000EA3C()
{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return _swift_task_switch(sub_10000EAA0, v1, v2);
}

uint64_t sub_10000EAA0(uint64_t a1)
{
  v56 = v1;
  v2 = v1[44];
  sub_1000272E4();
  if (!v2)
  {
    v14 = v1[37];
    v15 = v1[36];
    v17 = v1[27];
    v16 = v1[28];
    v19 = v1[25];
    v18 = v1[26];
    v20 = v1[24];
    v21 = v1[7];

    sub_100026984();
    swift_unknownObjectRelease();
    sub_100010CDC(v15, v14);
    v22 = *(v19 + 8);
    v22(v18, v20);
    v22(v16, v20);
    v23 = *(v19 + 32);
    v23(v16, v17, v20);
    v23(v21, v16, v20);

    v24 = v1[1];
LABEL_8:

    return v24();
  }

  v3 = v2;
  sub_100026894();

  v4 = sub_100026824();
  v5 = sub_100027304();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[19];
  v9 = v1[15];
  v8 = v1[16];
  if (v6)
  {
    v53 = v1[19];
    v11 = v1[8];
    v10 = v1[9];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v55[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100005F78(v11, v10, v55);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s has been deactivated prior to updating details!", v12, 0xCu);
    sub_100006044(v13);

    (*(v8 + 8))(v53, v9);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v25 = v1[28];
  v27 = v1[25];
  v26 = v1[26];
  v28 = v1[24];
  swift_willThrow();
  swift_unknownObjectRelease();
  v29 = *(v27 + 8);
  v29(v26, v28);
  v29(v25, v28);
  v30 = v1[36];
  v31 = v1[37];
  v1[46] = v30;
  v1[47] = v31;
  v1[45] = v3;
  v1[5] = v3;
  swift_errorRetain();
  sub_10000274C(&qword_100039848, &qword_100028370);
  if (swift_dynamicCast())
  {
    v33 = v1[13];
    v32 = v1[14];
    v34 = v1[12];

    (*(v33 + 8))(v32, v34);
    swift_willThrow();
    sub_100010CDC(v30, v31);

    v24 = v1[1];
    goto LABEL_8;
  }

  v54 = v30;
  sub_100026894();

  swift_errorRetain();
  v36 = sub_100026824();
  v37 = sub_100027304();

  v38 = os_log_type_enabled(v36, v37);
  v40 = v1[16];
  v39 = v1[17];
  v41 = v1[15];
  if (v38)
  {
    v51 = v1[17];
    v43 = v1[8];
    v42 = v1[9];
    v52 = v31;
    v44 = swift_slowAlloc();
    v55[0] = swift_slowAlloc();
    *v44 = 136315394;
    *(v44 + 4) = sub_100005F78(v43, v42, v55);
    *(v44 + 12) = 2080;
    swift_getErrorValue();
    v45 = sub_100027484();
    v47 = sub_100005F78(v45, v46, v55);

    *(v44 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v36, v37, "%s failed load details %s, using fallback", v44, 0x16u);
    swift_arrayDestroy();

    v31 = v52;

    (*(v40 + 8))(v51, v41);
  }

  else
  {

    (*(v40 + 8))(v39, v41);
  }

  v48 = swift_task_alloc();
  v1[48] = v48;
  *v48 = v1;
  v48[1] = sub_10000F4F0;
  v49 = v1[10];
  v50 = v1[7];

  return sub_10000FF34(v50, v49, v54, v31);
}

uint64_t sub_10000F0B8()
{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return _swift_task_switch(sub_10000F128, v1, v2);
}

uint64_t sub_10000F128()
{
  v32 = v0;
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[25];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);
  v4 = v0[44];
  v0[5] = v4;
  v6 = v0[36];
  v5 = v0[37];
  v0[46] = v6;
  v0[47] = v5;
  v0[45] = v4;
  swift_errorRetain();
  sub_10000274C(&qword_100039848, &qword_100028370);
  if (swift_dynamicCast())
  {
    v7 = v6;
    v9 = v0[13];
    v8 = v0[14];
    v10 = v0[12];

    (*(v9 + 8))(v8, v10);
    swift_willThrow();
    sub_100010CDC(v7, v5);

    v11 = v0[1];

    return v11();
  }

  else
  {
    sub_100026894();

    swift_errorRetain();
    v13 = sub_100026824();
    v14 = sub_100027304();

    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[16];
    v16 = v0[17];
    v18 = v0[15];
    if (v15)
    {
      v28 = v0[17];
      v29 = v0[15];
      v20 = v0[8];
      v19 = v0[9];
      v30 = v5;
      v21 = swift_slowAlloc();
      v31[0] = swift_slowAlloc();
      *v21 = 136315394;
      *(v21 + 4) = sub_100005F78(v20, v19, v31);
      *(v21 + 12) = 2080;
      swift_getErrorValue();
      v22 = sub_100027484();
      v24 = sub_100005F78(v22, v23, v31);

      *(v21 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s failed load details %s, using fallback", v21, 0x16u);
      swift_arrayDestroy();

      v5 = v30;

      (*(v17 + 8))(v28, v29);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
    }

    v25 = swift_task_alloc();
    v0[48] = v25;
    *v25 = v0;
    v25[1] = sub_10000F4F0;
    v26 = v0[10];
    v27 = v0[7];

    return sub_10000FF34(v27, v26, v6, v5);
  }
}

uint64_t sub_10000F4F0()
{
  v1 = *v0;

  v2 = *(v1 + 256);
  v3 = *(v1 + 248);

  return _swift_task_switch(sub_10000F610, v3, v2);
}

uint64_t sub_10000F610()
{
  v1 = v0[46];
  v2 = v0[47];

  sub_100010CDC(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10000F724(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v45 = a1;
  v5 = sub_100026834();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v43 - v11;
  __chkstk_darwin(v10);
  v14 = &v43 - v13;
  sub_100026894();

  v15 = sub_100026824();
  v16 = sub_1000272F4();

  v17 = os_log_type_enabled(v15, v16);
  v48 = v9;
  v49 = v6;
  v47 = a2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = v5;
    v20 = swift_slowAlloc();
    v51 = v20;
    *v18 = 136315138;
    *(v18 + 4) = sub_100005F78(a2, a3, &v51);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s - Finished background loading details ignoring cache!", v18, 0xCu);
    sub_100006044(v20);
    v5 = v19;

    v21 = v49;

    v22 = *(v21 + 8);
    v23 = v14;
    v24 = v19;
  }

  else
  {

    v22 = *(v6 + 8);
    v23 = v14;
    v24 = v5;
  }

  v50 = v22;
  v22(v23, v24);
  sub_100026894();

  v25 = sub_100026824();
  v26 = sub_100027304();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v27 = 136315394;
    v28 = v47;
    *(v27 + 4) = sub_100005F78(v47, a3, &v51);
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_100005F78(0xD000000000000019, 0x8000000100029AC0, &v51);
    _os_log_impl(&_mh_execute_header, v25, v26, "%s %s - Caching message details...", v27, 0x16u);
    swift_arrayDestroy();

    v50(v12, v5);
  }

  else
  {

    v50(v12, v5);
    v28 = v47;
  }

  v29 = v48;
  sub_100010BC8((v44 + 48), *(v44 + 72));
  v30 = v46;
  result = sub_100026BF4();
  if (v30)
  {
    sub_100026894();

    swift_errorRetain();
    v32 = sub_100026824();
    v33 = sub_100027314();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = v28;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v46 = 0;
      v37 = v36;
      v38 = swift_slowAlloc();
      v45 = v5;
      v39 = v38;
      v51 = v38;
      *v35 = 136315394;
      *(v35 + 4) = sub_100005F78(v34, a3, &v51);
      *(v35 + 12) = 2112;
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v40;
      *v37 = v40;
      _os_log_impl(&_mh_execute_header, v32, v33, "%s - Error saving message details to cache! %@", v35, 0x16u);
      sub_100006B20(v37, &qword_100039838, &unk_100028360);

      sub_100006044(v39);

      v41 = v29;
      v42 = v45;
    }

    else
    {

      v41 = v29;
      v42 = v5;
    }

    return (v50)(v41, v42);
  }

  return result;
}

uint64_t sub_10000FC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000274C(&qword_1000391C8, &qword_100028010);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000061E4(a3, v22 - v9, &qword_1000391C8, &qword_100028010);
  v11 = sub_1000272A4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100006B20(v10, &qword_1000391C8, &qword_100028010);
  }

  else
  {
    sub_100027294();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_100027244();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_100027184() + 32;
      sub_100026B04();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100006B20(a3, &qword_1000391C8, &qword_100028010);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100006B20(a3, &qword_1000391C8, &qword_100028010);
  sub_100026B04();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10000FF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[28] = a4;
  v5[29] = v4;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  v6 = sub_100026B44();
  v5[30] = v6;
  v5[31] = *(v6 - 8);
  v5[32] = swift_task_alloc();
  sub_10000274C(&qword_100039708, &unk_100028280);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v7 = sub_1000269B4();
  v5[36] = v7;
  v5[37] = *(v7 - 8);
  v5[38] = swift_task_alloc();
  v8 = sub_100026834();
  v5[39] = v8;
  v5[40] = *(v8 - 8);
  v5[41] = swift_task_alloc();
  v9 = sub_100026B04();
  v5[42] = v9;
  v5[43] = *(v9 - 8);
  v5[44] = swift_task_alloc();
  sub_100027274();
  v5[45] = sub_100027264();
  v11 = sub_100027244();
  v5[46] = v11;
  v5[47] = v10;

  return _swift_task_switch(sub_100010194, v11, v10);
}

uint64_t sub_100010194()
{
  v42 = v0;
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = v0[28];
  v5 = v0[26];
  v6 = *(v2 + 16);
  v0[48] = v6;
  v0[49] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  if (v4 >> 60 == 15)
  {
    v7 = sub_100026A04();
    if (v8 >> 60 == 15)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (qword_100039080 != -1)
        {
          swift_once();
        }

        v9 = qword_10003A748;
        if (qword_10003A748 >> 60 != 15)
        {
          v10 = qword_10003A740;
          sub_100010CC8(qword_10003A740, qword_10003A748);
          sub_100003B24(v10, v9);
          sub_100026A14();
          sub_100026894();
          v11 = sub_100026824();
          v12 = sub_1000272F4();
          if (os_log_type_enabled(v11, v12))
          {
            v13 = v0[40];
            v39 = v0[39];
            v40 = v0[41];
            v14 = swift_slowAlloc();
            v15 = swift_slowAlloc();
            v41 = v15;
            *v14 = 136315138;
            swift_beginAccess();
            v16 = sub_100026AF4();
            v18 = v17;
            swift_endAccess();
            v19 = sub_100005F78(v16, v18, &v41);

            *(v14 + 4) = v19;
            _os_log_impl(&_mh_execute_header, v11, v12, "%s - using fallback icon (2)", v14, 0xCu);
            sub_100006044(v15);

            sub_100010CDC(v10, v9);
            (*(v13 + 8))(v40, v39);
          }

          else
          {
            v21 = v0[40];
            v20 = v0[41];
            v22 = v0[39];
            sub_100010CDC(v10, v9);

            (*(v21 + 8))(v20, v22);
          }
        }
      }
    }

    else
    {
      sub_100010CDC(v7, v8);
    }
  }

  else
  {
    sub_100003B24(v0[27], v0[28]);
    sub_100026A14();
  }

  v23 = v0[35];
  v24 = v0[30];
  v25 = v0[31];
  (*(v0[37] + 104))(v0[38], enum case for MessageDetails.EventStatus.purged(_:), v0[36]);
  swift_beginAccess();
  sub_100026AA4();
  swift_endAccess();
  swift_beginAccess();
  sub_100026A74();
  swift_endAccess();
  if ((*(v25 + 48))(v23, 1, v24) != 1)
  {
    v28 = v0[35];

    sub_100006B20(v28, &qword_100039708, &unk_100028280);
    goto LABEL_16;
  }

  sub_100006B20(v0[35], &qword_100039708, &unk_100028280);
  swift_beginAccess();
  v26 = sub_100026AC4();
  if (v27)
  {
    swift_endAccess();

LABEL_16:
    v30 = v0[43];
    v29 = v0[44];
    v31 = v0[42];
    (v0[48])(v0[25], v29, v31);
    (*(v30 + 8))(v29, v31);

    v32 = v0[1];

    return v32();
  }

  v34 = v26;
  swift_endAccess();
  sub_100010F10();
  v35 = sub_100026964();
  v36 = sub_100026954();
  v0[5] = v35;
  v0[6] = &protocol witness table for ContactFetcher;
  v0[2] = v36;
  v37 = swift_task_alloc();
  v0[50] = v37;
  *v37 = v0;
  v37[1] = sub_1000106B4;
  v38 = v0[34];

  return static FAFamilyCircle.resolveFamily(userDSID:actionUserDSID:withContactFetcher:useCache:)(v38, v34, 0, 1, v0 + 2, 1);
}

uint64_t sub_1000106B4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = v2[46];
    v4 = v2[47];
    v5 = sub_1000109EC;
  }

  else
  {
    sub_100006044(v2 + 2);
    v3 = v2[46];
    v4 = v2[47];
    v5 = sub_1000107E0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000107E0()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v5 = *(v0 + 240);

  v6 = *(v4 + 56);
  v6(v1, 0, 1, v5);
  (*(v4 + 32))(v3, v1, v5);
  (*(v4 + 16))(v2, v3, v5);
  v6(v2, 0, 1, v5);
  swift_beginAccess();
  sub_100026A84();
  swift_endAccess();
  v7 = sub_100026B14();
  sub_100027344();

  swift_beginAccess();
  sub_100026AD4();
  swift_endAccess();
  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 344);
  v8 = *(v0 + 352);
  v10 = *(v0 + 336);
  (*(v0 + 384))(*(v0 + 200), v8, v10);
  (*(v9 + 8))(v8, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000109EC()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);

  sub_100006044((v0 + 16));
  (*(v3 + 56))(v1, 1, 1, v2);
  sub_100006B20(v1, &qword_100039708, &unk_100028280);
  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v6 = *(v0 + 336);
  (*(v0 + 384))(*(v0 + 200), v4, v6);
  (*(v5 + 8))(v4, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100010B2C()
{
  sub_100010F5C(v0 + 16);
  sub_100010F5C(v0 + 32);
  sub_100006044((v0 + 48));
  sub_100006044((v0 + 88));

  return swift_deallocClassInstance();
}

void *sub_100010BC8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100010C0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000274C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_100010C74()
{
  result = qword_100039840;
  if (!qword_100039840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039840);
  }

  return result;
}

uint64_t sub_100010CC8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100003B24(result, a2);
  }

  return result;
}

uint64_t sub_100010CDC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100003600(result, a2);
  }

  return result;
}

uint64_t sub_100010CF0()
{
  v1 = sub_100026734();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100010DD4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100026734() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100003730;

  return sub_10000CCA8(a1, v7, v8, v9, v1 + v6, v11, v12);
}

unint64_t sub_100010F10()
{
  result = qword_100039850;
  if (!qword_100039850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100039850);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessageDetailsLoaderError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MessageDetailsLoaderError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000110F8()
{
  result = qword_100039858;
  if (!qword_100039858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039858);
  }

  return result;
}

uint64_t sub_10001114C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v31 = a2;
  v3 = sub_10000274C(&qword_100039A50, &qword_1000284D8);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_100026B04();
  v29 = *(v6 - 8);
  v7 = v29;
  v8 = *(v29 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = *(v7 + 16);
  v13(&v29 - v11, v2 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_details, v6);
  sub_10000274C(&qword_100039B60, &qword_100028640);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100028470;
  *(v14 + 32) = sub_1000271B4();
  *(v14 + 40) = v15;
  *(v14 + 48) = 0;
  *(v14 + 56) = sub_1000271B4();
  *(v14 + 64) = v16;
  *(v14 + 72) = 0;
  *(v14 + 80) = sub_1000271B4();
  *(v14 + 88) = v17;
  *(v14 + 96) = 0;
  *(v14 + 104) = sub_1000271B4();
  *(v14 + 112) = v18;
  *(v14 + 120) = 2;
  *(v14 + 128) = sub_1000271B4();
  *(v14 + 136) = v19;
  *(v14 + 144) = 1;
  *v5 = sub_100026D24();
  *(v5 + 1) = 0x4024000000000000;
  v5[16] = 0;
  sub_10000274C(&qword_100039B68, &qword_100028648);
  sub_10001505C(v30, v32);
  v30 = v12;
  v13(v10, v12, v6);
  v20 = v29;
  v21 = (*(v29 + 80) + 64) & ~*(v29 + 80);
  v22 = swift_allocObject();
  sub_10001518C(v32, v22 + 16);
  *(v22 + 56) = v14;
  (*(v20 + 32))(v22 + v21, v10, v6);

  sub_10000274C(&qword_100039A78, &qword_1000284F8);
  sub_100014640();
  sub_100027024();

  if (qword_100039098 != -1)
  {
    swift_once();
  }

  sub_100027074();
  sub_100026C64();
  v23 = v31;
  sub_100010C0C(v5, v31, &qword_100039A50, &qword_1000284D8);
  v24 = (v23 + *(sub_10000274C(&qword_100039A10, &qword_1000284B8) + 36));
  v25 = v32[5];
  v24[4] = v32[4];
  v24[5] = v25;
  v24[6] = v32[6];
  v26 = v32[1];
  *v24 = v32[0];
  v24[1] = v26;
  v27 = v32[3];
  v24[2] = v32[2];
  v24[3] = v27;
  return (*(v20 + 8))(v30, v6);
}

uint64_t sub_100011604(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_100026B04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010BC8(a1, a1[3]);
  (*(v7 + 16))(v9, a3, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  sub_100017034(a2, sub_100015294, v11);
}

uint64_t sub_10001175C(uint64_t result, uint64_t a2)
{
  if (result <= 3)
  {
    return sub_100025F70(a2, qword_100028660[result]);
  }

  return result;
}

uint64_t sub_100011780@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v54 = sub_10000274C(&qword_100039A98, &qword_100028508);
  __chkstk_darwin(v54);
  v2 = &v52 - v1;
  v3 = sub_1000271B4();
  v5 = v4;
  v6 = objc_opt_self();
  v7 = [v6 labelColor];
  v8 = sub_100026F64();
  v9 = [v6 tertiarySystemFillColor];
  v55 = sub_100026F64();
  v10 = sub_100027084();
  v12 = v11;
  v13 = [v6 tertiaryLabelColor];
  v14 = sub_100026F64();
  v53 = sub_100026D24();
  v60 = 0;
  sub_100021304(v3, v5, v8, v10, v12, 0x2E6E6F7276656863, 0xEC0000006E776F64, v14, v58);
  memcpy(v63, v58, sizeof(v63));
  memcpy(v64, v58, 0x270uLL);
  sub_1000061E4(v63, v57, &qword_100039B70, &unk_100028650);
  sub_100006B20(v64, &qword_100039B70, &unk_100028650);

  memcpy(&v59[7], v63, 0x270uLL);
  v15 = v60;
  v16 = sub_100026E14();
  if (qword_100039088 != -1)
  {
    swift_once();
  }

  sub_100026C24();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v61 = 0;
  v25 = sub_100026E24();
  sub_100026C24();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v57[0] = 0;
  sub_100027074();
  sub_100026C34();
  *&v62[7] = v58[0];
  *&v62[23] = v58[1];
  *&v62[39] = v58[2];
  v34 = sub_100026E04();

  v35 = &v2[*(v54 + 36)];
  v36 = *(sub_100026C54() + 20);
  v37 = enum case for RoundedCornerStyle.continuous(_:);
  v38 = sub_100026D34();
  (*(*(v38 - 8) + 104))(&v35[v36], v37, v38);
  __asm { FMOV            V0.2D, #10.0 }

  *v35 = _Q0;
  *&v35[*(sub_10000274C(&qword_100039B08, &unk_100028540) + 36)] = 256;
  *v2 = v53;
  *(v2 + 1) = 0;
  v2[16] = v15;
  memcpy(v2 + 17, v59, 0x277uLL);
  v2[648] = v16;
  *(v2 + 82) = v18;
  *(v2 + 83) = v20;
  *(v2 + 84) = v22;
  *(v2 + 85) = v24;
  v2[688] = 0;
  v2[696] = v25;
  *(v2 + 88) = v27;
  *(v2 + 89) = v29;
  *(v2 + 90) = v31;
  *(v2 + 91) = v33;
  v2[736] = 0;
  v44 = *&v62[16];
  *(v2 + 737) = *v62;
  *(v2 + 753) = v44;
  *(v2 + 769) = *&v62[32];
  *(v2 + 98) = *&v62[47];
  *(v2 + 99) = v55;
  v2[800] = v34;
  v45 = sub_10000274C(&qword_100039A78, &qword_1000284F8);
  v46 = v56;
  v47 = (v56 + *(v45 + 36));
  v48 = *(sub_10000274C(&qword_100039B18, &qword_100028CD0) + 28);
  v49 = enum case for Image.Scale.small(_:);
  v50 = sub_100027004();
  (*(*(v50 - 8) + 104))(v47 + v48, v49, v50);
  *v47 = swift_getKeyPath();
  return sub_100010C0C(v2, v46, &qword_100039A98, &qword_100028508);
}

uint64_t sub_100011C38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  v23 = sub_10000274C(&qword_100039A68, &qword_1000284E8);
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v21 - v4;
  v22 = sub_10000274C(&qword_100039A70, &qword_1000284F0);
  v6 = __chkstk_darwin(v22);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v21 - v10;
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  v25 = a1;
  sub_10000274C(&qword_100039A78, &qword_1000284F8);
  sub_10000274C(&qword_100039A80, &qword_100028500);
  sub_100014640();
  sub_100014A38(&qword_100039B20, &qword_100039A80, &qword_100028500, &protocol conformance descriptor for TupleView<A>);
  sub_100026EC4();
  if (qword_100039098 != -1)
  {
    swift_once();
  }

  sub_100027054();
  sub_100026C64();
  (*(v3 + 32))(v11, v5, v23);
  v14 = &v11[*(v22 + 36)];
  v15 = v31;
  *(v14 + 4) = v30;
  *(v14 + 5) = v15;
  *(v14 + 6) = v32;
  v16 = v27;
  *v14 = v26;
  *(v14 + 1) = v16;
  v17 = v29;
  *(v14 + 2) = v28;
  *(v14 + 3) = v17;
  sub_100010C0C(v11, v13, &qword_100039A70, &qword_1000284F0);
  sub_1000061E4(v13, v8, &qword_100039A70, &qword_1000284F0);
  v18 = v24;
  *v24 = 0;
  *(v18 + 8) = 1;
  v19 = sub_10000274C(&qword_100039B28, &qword_100028550);
  sub_1000061E4(v8, v18 + *(v19 + 48), &qword_100039A70, &qword_1000284F0);
  sub_100006B20(v13, &qword_100039A70, &qword_1000284F0);
  return sub_100006B20(v8, &qword_100039A70, &qword_1000284F0);
}

uint64_t sub_100012024@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v57 = a2;
  v58 = a1;
  v3 = sub_100026B04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v5;
  v7 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000274C(&qword_100039B48, &qword_100028628);
  v64 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v56 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v55 = &v48 - v12;
  v13 = __chkstk_darwin(v11);
  v54 = &v48 - v14;
  v15 = __chkstk_darwin(v13);
  v53 = &v48 - v16;
  v17 = __chkstk_darwin(v15);
  v62 = &v48 - v18;
  v19 = __chkstk_darwin(v17);
  v61 = &v48 - v20;
  v21 = __chkstk_darwin(v19);
  v65 = &v48 - v22;
  __chkstk_darwin(v21);
  v63 = &v48 - v23;
  v24 = *(v4 + 16);
  v59 = v4 + 16;
  v60 = v24;
  v49 = v3;
  v24(v7, a1, v3);
  v52 = *(v4 + 80);
  v25 = (v52 + 16) & ~v52;
  v50 = v6;
  v26 = swift_allocObject();
  v27 = *(v4 + 32);
  v27(v26 + v25, v7, v3);
  v51 = v27;
  sub_100027024();
  v28 = v7;
  v29 = v58;
  v30 = v49;
  v60(v7, v58, v49);
  v31 = swift_allocObject();
  v27(v31 + v25, v7, v30);
  sub_100027024();
  v32 = v29;
  v33 = v60;
  v60(v7, v32, v30);
  v34 = swift_allocObject();
  v35 = v51;
  v51(v34 + v25, v28, v30);
  sub_100027024();
  v33(v28, v58, v30);
  v36 = swift_allocObject();
  v35(v36 + v25, v28, v30);
  v37 = v62;
  sub_100027024();
  v38 = *(v64 + 16);
  v39 = v53;
  v38(v53, v63, v8);
  v40 = v54;
  v38(v54, v65, v8);
  v41 = v55;
  v42 = v61;
  (v38)(v55);
  v43 = v56;
  v38(v56, v37, v8);
  v44 = v57;
  v38(v57, v39, v8);
  v45 = sub_10000274C(&qword_100039B50, &qword_100028630);
  v38(&v44[v45[12]], v40, v8);
  v38(&v44[v45[16]], v41, v8);
  v38(&v44[v45[20]], v43, v8);
  v46 = *(v64 + 8);
  v46(v62, v8);
  v46(v42, v8);
  v46(v65, v8);
  v46(v63, v8);
  v46(v43, v8);
  v46(v41, v8);
  v46(v40, v8);
  return (v46)(v39, v8);
}

uint64_t sub_1000126AC@<X0>(uint64_t a1@<X8>)
{
  sub_1000271B4();
  sub_100014A80();
  result = sub_100026EF4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10001271C@<X0>(uint64_t a1@<X8>)
{
  sub_1000271B4();
  sub_100014A80();
  result = sub_100026EF4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10001278C@<X0>(uint64_t a1@<X8>)
{
  sub_1000271B4();
  sub_100014A80();
  result = sub_100026EF4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000127FC@<X0>(uint64_t a1@<X8>)
{
  sub_1000271B4();
  sub_100014A80();
  result = sub_100026EF4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10001286C@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v77 = sub_10000274C(&qword_100039A98, &qword_100028508);
  __chkstk_darwin(v77);
  v2 = &v69 - v1;
  v3 = sub_1000271B4();
  v5 = v4;
  v85 = sub_100026FA4();
  v6 = [objc_opt_self() linkColor];
  v79 = sub_100026F64();
  v69 = sub_100027094();
  v78 = sub_100026D24();
  v156 = 0;
  sub_100027074();
  sub_100026C64();
  v155 = 1;
  *&v154[55] = *(&v159[6] + 8);
  *&v154[71] = *(&v159[7] + 8);
  *&v154[87] = *(&v159[8] + 8);
  *&v154[103] = *(&v159[9] + 8);
  *&v154[7] = *(&v159[3] + 8);
  *&v154[23] = *(&v159[4] + 8);
  *&v154[39] = *(&v159[5] + 8);
  v121 = v3;
  v122 = v5;
  sub_100014A80();
  v76 = v5;

  v7 = sub_100026EF4();
  v72 = v8;
  v73 = v7;
  v10 = v9;
  v74 = v11;
  KeyPath = swift_getKeyPath();
  if (qword_100039090 != -1)
  {
    swift_once();
  }

  v81 = qword_10003A750;
  v83 = swift_getKeyPath();
  v82 = v10 & 1;
  LOBYTE(v121) = v10 & 1;
  LOBYTE(v86) = 0;
  v84 = swift_getKeyPath();

  v12 = v85;

  v13 = sub_100026F94();
  v71 = v13;
  v14 = sub_100026E04();
  v15 = v14;
  v70 = v14;
  sub_100026C64();
  *&v153[55] = *(&v159[13] + 8);
  *&v153[71] = *(&v159[14] + 8);
  *&v153[87] = *(&v159[15] + 8);
  *&v153[103] = *(&v159[16] + 8);
  *&v153[7] = *(&v159[10] + 8);
  *&v153[23] = *(&v159[11] + 8);
  *&v153[39] = *(&v159[12] + 8);
  sub_100014E34(&v143);
  sub_100027074();
  sub_100026C64();
  *&v141[55] = *(&v159[20] + 8);
  *&v141[71] = *(&v159[21] + 8);
  *&v141[87] = *(&v159[22] + 8);
  *&v141[103] = *(&v159[23] + 8);
  *&v141[7] = *(&v159[17] + 8);
  *&v141[23] = *(&v159[18] + 8);
  *&v141[39] = *(&v159[19] + 8);
  v119[0] = v143;
  v119[1] = v144;
  v119[4] = v147;
  v119[5] = v148;
  v119[2] = v145;
  v119[3] = v146;
  v119[8] = v151;
  v119[6] = v149;
  v119[7] = v150;
  *&v86 = v73;
  *(&v86 + 1) = v72;
  LOBYTE(v87) = v82;
  v16 = v74;
  v17 = KeyPath;
  *(&v87 + 1) = v74;
  *&v88 = KeyPath;
  *(&v88 + 1) = 1;
  LOBYTE(v89) = 0;
  *(&v89 + 1) = v83;
  *&v90 = v81;
  *(&v90 + 1) = v84;
  *&v91 = v12;
  *(&v91 + 1) = v13;
  v92[0] = v15;
  *&v92[65] = *&v153[64];
  *&v92[81] = *&v153[80];
  *&v92[97] = *&v153[96];
  *&v92[1] = *v153;
  *&v92[17] = *&v153[16];
  *&v92[33] = *&v153[32];
  *&v92[49] = *&v153[48];
  v109 = v90;
  v110 = v91;
  v105 = v86;
  v106 = v87;
  v116 = *&v92[80];
  v117 = *&v92[96];
  v107 = v88;
  v108 = v89;
  v114 = *&v92[48];
  v115 = *&v92[64];
  v112 = *&v92[16];
  v113 = *&v92[32];
  v111 = *v92;
  v93[6] = v149;
  v93[7] = v150;
  v93[8] = v151;
  v93[2] = v145;
  v93[3] = v146;
  v93[4] = v147;
  v93[5] = v148;
  v93[0] = v143;
  v93[1] = v144;
  v101 = v149;
  v102 = v150;
  v103 = v151;
  v97 = v145;
  v98 = v146;
  v142 = 1;
  v120 = v152;
  *&v92[112] = *&v153[111];
  v118 = *&v153[111];
  v94 = v152;
  v104 = v152;
  v99 = v147;
  v100 = v148;
  v95 = v143;
  v96 = v144;
  v18 = v73;
  v19 = v72;
  sub_1000061E4(&v86, &v121, &qword_100039B38, &unk_1000289B0);
  sub_1000061E4(v93, &v121, &qword_100039B40, &qword_1000285F0);
  sub_100006B20(v119, &qword_100039B40, &qword_1000285F0);
  v138 = *&v153[64];
  v139 = *&v153[80];
  *v140 = *&v153[96];
  v134 = *v153;
  v135 = *&v153[16];
  v136 = *&v153[32];
  v121 = v18;
  v122 = v19;
  v123 = v82;
  v124 = v16;
  v125 = v17;
  v126 = 1;
  v127 = 0;
  v128 = v83;
  v129 = v81;
  v130 = v84;
  v131 = v85;
  v132 = v71;
  v133 = v70;
  *&v140[15] = *&v153[111];
  v137 = *&v153[48];
  sub_100006B20(&v121, &qword_100039B38, &unk_1000289B0);

  v20 = v156;
  LODWORD(v84) = sub_100026E14();
  if (qword_100039088 != -1)
  {
    swift_once();
  }

  sub_100026C24();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v157 = 0;
  LODWORD(v83) = sub_100026E24();
  sub_100026C24();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v158 = 0;
  sub_100027074();
  sub_100026C34();
  *(v159 + 7) = *(&v159[24] + 8);
  *(&v159[1] + 7) = *(&v159[25] + 8);
  *(&v159[2] + 7) = *(&v159[26] + 8);
  v82 = sub_100026E04();

  v37 = &v2[*(v77 + 36)];
  v38 = *(sub_100026C54() + 20);
  v39 = enum case for RoundedCornerStyle.continuous(_:);
  v40 = sub_100026D34();
  (*(*(v40 - 8) + 104))(&v37[v38], v39, v40);
  __asm { FMOV            V0.2D, #10.0 }

  *v37 = _Q0;
  *&v37[*(sub_10000274C(&qword_100039B08, &unk_100028540) + 36)] = 256;
  *(v2 + 97) = *&v154[64];
  *(v2 + 113) = *&v154[80];
  *(v2 + 129) = *&v154[96];
  *(v2 + 33) = *v154;
  *(v2 + 49) = *&v154[16];
  *(v2 + 65) = *&v154[32];
  *(v2 + 81) = *&v154[48];
  v46 = v115;
  v47 = v117;
  *(v2 + 328) = v116;
  *(v2 + 344) = v47;
  v48 = v112;
  *(v2 + 248) = v111;
  v49 = v113;
  v50 = v114;
  *(v2 + 264) = v48;
  *(v2 + 280) = v49;
  *v2 = v78;
  *(v2 + 1) = 0;
  v2[16] = v20;
  *(v2 + 3) = 0;
  v2[32] = 1;
  *(v2 + 18) = *&v154[111];
  *(v2 + 45) = v118;
  *(v2 + 296) = v50;
  *(v2 + 312) = v46;
  v51 = v108;
  *(v2 + 184) = v107;
  *(v2 + 200) = v51;
  v52 = v110;
  *(v2 + 216) = v109;
  *(v2 + 232) = v52;
  v53 = v106;
  *(v2 + 152) = v105;
  *(v2 + 168) = v53;
  v54 = v102;
  *(v2 + 29) = v101;
  *(v2 + 30) = v54;
  *(v2 + 31) = v103;
  *(v2 + 64) = v104;
  v55 = v98;
  *(v2 + 25) = v97;
  *(v2 + 26) = v55;
  v56 = v100;
  *(v2 + 27) = v99;
  *(v2 + 28) = v56;
  v57 = v96;
  *(v2 + 23) = v95;
  *(v2 + 24) = v57;
  *(v2 + 65) = 0;
  v2[528] = 1;
  v58 = *&v141[80];
  *(v2 + 593) = *&v141[64];
  *(v2 + 609) = v58;
  *(v2 + 625) = *&v141[96];
  *(v2 + 80) = *&v141[111];
  v59 = *&v141[16];
  *(v2 + 529) = *v141;
  *(v2 + 545) = v59;
  v60 = *&v141[48];
  *(v2 + 561) = *&v141[32];
  *(v2 + 577) = v60;
  v2[648] = v84;
  *(v2 + 82) = v22;
  *(v2 + 83) = v24;
  *(v2 + 84) = v26;
  *(v2 + 85) = v28;
  v2[688] = 0;
  v2[696] = v83;
  *(v2 + 88) = v30;
  *(v2 + 89) = v32;
  *(v2 + 90) = v34;
  *(v2 + 91) = v36;
  v2[736] = 0;
  v61 = v159[1];
  *(v2 + 737) = v159[0];
  *(v2 + 753) = v61;
  *(v2 + 769) = v159[2];
  *(v2 + 98) = *(&v159[2] + 15);
  *(v2 + 99) = v79;
  v2[800] = v82;
  v62 = sub_10000274C(&qword_100039A78, &qword_1000284F8);
  v63 = v80;
  v64 = (v80 + *(v62 + 36));
  v65 = *(sub_10000274C(&qword_100039B18, &qword_100028CD0) + 28);
  v66 = enum case for Image.Scale.small(_:);
  v67 = sub_100027004();
  (*(*(v67 - 8) + 104))(v64 + v65, v66, v67);
  *v64 = swift_getKeyPath();
  return sub_100010C0C(v2, v63, &qword_100039A98, &qword_100028508);
}

uint64_t sub_100013288@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_1000390B8 != -1)
  {
    swift_once();
  }

  v6 = qword_10003A780;
  v55 = qword_10003A778;

  v54 = v6;

  v52 = a2;

  v53 = sub_100026FA4();
  [a1 size];
  v8 = v7;
  [a1 size];
  v10 = v9;
  if (qword_100039088 != -1)
  {
    swift_once();
  }

  if (byte_100039D78)
  {
    v11 = 48.0;
  }

  else
  {
    v11 = 60.0;
  }

  v12 = 90.0;
  if (byte_100039D78)
  {
    v12 = 72.0;
  }

  if (v8 == v10)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = objc_opt_self();
  v15 = [v14 mainScreen];
  [v15 scale];
  v17 = v16;

  v18 = v11 * v17;
  v19 = [v14 mainScreen];
  [v19 scale];
  v21 = v20;

  [a1 size];
  v93.origin.x = 0.0;
  v93.origin.y = 0.0;
  v93.size.width = v18;
  v93.size.height = v13 * v21;
  v92 = AVMakeRectWithAspectRatioInsideRect(v91, v93);
  width = v92.size.width;
  height = v92.size.height;
  v24 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v24 setScale:1.0];
  v25 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v24 format:{width, height}];
  v26 = swift_allocObject();
  *(v26 + 2) = a1;
  v26[3] = width;
  v26[4] = height;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_100014F50;
  *(v27 + 24) = v26;
  *&v71 = sub_100014F6C;
  *(&v71 + 1) = v27;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v70 = sub_100014AD4;
  *(&v70 + 1) = &unk_1000357B0;
  v28 = _Block_copy(&aBlock);
  v29 = a1;

  v30 = [v25 imageWithActions:v28];

  _Block_release(v28);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
  }

  else
  {
    sub_100027074();
    sub_100026C34();
    v50 = v87;
    v51 = v85;
    v48 = v90;
    v49 = v89;
    v58 = v86;
    v57 = v88;
    v47 = sub_1000271B4();
    v33 = v32;
    v34 = sub_1000269F4();
    v36 = v35;
    v37 = sub_100026D54();
    v38 = sub_100026F94();
    v39 = sub_100026E04();
    *&v59 = v30;
    *(&v59 + 1) = 0x73616C6772756F68;
    *&v60 = 0xE900000000000073;
    *(&v60 + 1) = v53;
    *&v61 = v55;
    *(&v61 + 1) = v54;
    *&v62 = sub_100014F10;
    *(&v62 + 1) = v52;
    v63 = v8 == v10;
    aBlock = v59;
    LOBYTE(v73) = v8 == v10;
    v72 = v62;
    v71 = v61;
    v70 = v60;
    v64 = v37;
    LOBYTE(v65) = 0;
    DWORD1(v65) = *&v56[3];
    *(&v65 + 1) = *v56;
    *(&v65 + 1) = v47;
    *&v66 = v33;
    *(&v66 + 1) = v34;
    *&v67 = v36;
    *(&v67 + 1) = v38;
    v68 = v39;
    v40 = v59;
    v41 = v60;
    v42 = v62;
    v43 = v73;
    *(a3 + 32) = v61;
    *(a3 + 48) = v42;
    *a3 = v40;
    *(a3 + 16) = v41;
    *(a3 + 64) = v43;
    *(a3 + 72) = 0;
    *(a3 + 80) = 1;
    *(a3 + 88) = v51;
    *(a3 + 96) = v58;
    *(a3 + 104) = v50;
    *(a3 + 112) = v57;
    *(a3 + 120) = v49;
    *(a3 + 128) = v48;
    v44 = v65;
    *(a3 + 136) = v64;
    v45 = v66;
    v46 = v67;
    *(a3 + 200) = v68;
    *(a3 + 184) = v46;
    *(a3 + 168) = v45;
    *(a3 + 152) = v44;
    v74[0] = v37;
    v74[1] = 0;
    v75 = 0;
    *&v76[3] = *&v56[3];
    *v76 = *v56;
    v77 = v47;
    v78 = v33;
    v79 = v34;
    v80 = v36;
    v81 = v38;
    v82 = v39;
    sub_100014FAC(&v59, v83);
    sub_1000061E4(&v64, v83, &qword_100039B58, &qword_100028638);
    sub_100006B20(v74, &qword_100039B58, &qword_100028638);
    v83[0] = v30;
    v83[1] = 0x73616C6772756F68;
    v83[2] = 0xE900000000000073;
    v83[3] = v53;
    v83[4] = v55;
    v83[5] = v54;
    v83[6] = sub_100014F10;
    v83[7] = v52;
    v84 = v8 == v10;
    return sub_100015008(v83);
  }

  return result;
}

uint64_t sub_100013870(uint64_t a1)
{
  v2 = sub_1000268B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100007818();
  if ((result & 1) == 0)
  {
    sub_1000268E4();
    sub_1000268D4();
    (*(v3 + 104))(v5, enum case for PeopleAnalytics.MessageRequestBubbleSource.screenTime(_:), v2);
    sub_1000268C4();

    (*(v3 + 8))(v5, v2);
    return sub_1000257E4(a1 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_details);
  }

  return result;
}

uint64_t sub_1000139A8@<X0>(char a1@<W0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a3;
  v32 = a4;
  v6 = sub_10000274C(&qword_100039A08, &qword_1000284B0);
  __chkstk_darwin(v6);
  v8 = v28 - v7;
  v31 = sub_10000274C(&qword_100039A10, &qword_1000284B8);
  __chkstk_darwin(v31);
  v10 = v28 - v9;
  v11 = sub_10000274C(&qword_100039A18, &qword_1000284C0);
  __chkstk_darwin(v11);
  v13 = v28 - v12;
  v30 = sub_10000274C(&qword_100039A20, &qword_1000284C8);
  __chkstk_darwin(v30);
  v15 = v28 - v14;
  v16 = sub_10000274C(&qword_100039A28, &qword_1000284D0);
  __chkstk_darwin(v16);
  v18 = v28 - v17;
  if (a1)
  {
    v28[1] = v6;
    if (sub_100007818())
    {
      v19 = OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_details;
      *v15 = sub_100026D24();
      *(v15 + 1) = 0;
      v15[16] = 0;
      v20 = sub_10000274C(&qword_100039A60, &qword_1000284E0);
      sub_100011C38(a2 + v19, &v15[*(v20 + 44)]);
      v21 = &qword_100039A20;
      v22 = &qword_1000284C8;
      sub_1000061E4(v15, v13, &qword_100039A20, &qword_1000284C8);
      swift_storeEnumTagMultiPayload();
      sub_100014A38(&qword_100039A38, &qword_100039A20, &qword_1000284C8, &protocol conformance descriptor for HStack<A>);
      sub_10001452C();
      sub_100026D94();
      v23 = v15;
    }

    else
    {
      sub_10001114C(v29, v10);
      v21 = &qword_100039A10;
      v22 = &qword_1000284B8;
      sub_1000061E4(v10, v13, &qword_100039A10, &qword_1000284B8);
      swift_storeEnumTagMultiPayload();
      sub_100014A38(&qword_100039A38, &qword_100039A20, &qword_1000284C8, &protocol conformance descriptor for HStack<A>);
      sub_10001452C();
      sub_100026D94();
      v23 = v10;
    }

    sub_100006B20(v23, v21, v22);
    sub_1000061E4(v18, v8, &qword_100039A28, &qword_1000284D0);
    swift_storeEnumTagMultiPayload();
    sub_10001442C();
    sub_1000145E4();
    sub_100026D94();
    return sub_100006B20(v18, &qword_100039A28, &qword_1000284D0);
  }

  else
  {
    sub_100009C00(v33);
    v24 = v34;
    v25 = v33[1];
    v26 = v33[2];
    *v8 = v33[0];
    *(v8 + 1) = v25;
    *(v8 + 2) = v26;
    *(v8 + 6) = v24;
    swift_storeEnumTagMultiPayload();
    sub_10001442C();
    sub_1000145E4();
    return sub_100026D94();
  }
}

uint64_t sub_100013DE0(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = sub_1000268B4();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000269B4();
  v33 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  v12 = sub_10000274C(&qword_100039708, &unk_100028280);
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_100026B44();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_details;
  v34 = a1;
  sub_100026A74();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_100006B20(v14, &qword_100039708, &unk_100028280);
  }

  (*(v16 + 32))(v18, v14, v15);
  v21 = sub_100026B24();
  if (!v21)
  {
    return (*(v16 + 8))(v18, v15);
  }

  v22 = v21;
  v23 = [v21 isParent];

  result = (*(v16 + 8))(v18, v15);
  if (v23)
  {
    result = sub_100026AE4();
    if ((result & 1) == 0)
    {
      sub_100026A94();
      v24 = v33;
      (*(v33 + 104))(v9, enum case for MessageDetails.EventStatus.purged(_:), v6);
      sub_1000143D4();
      sub_100027214();
      sub_100027214();
      if (v38 == v36 && v39 == v37)
      {
        v25 = *(v24 + 8);
        v25(v9, v6);
        v25(v11, v6);
      }

      else
      {
        v26 = sub_100027474();
        v27 = *(v24 + 8);
        v27(v9, v6);
        v27(v11, v6);

        if ((v26 & 1) == 0)
        {
          return result;
        }
      }

      result = sub_100007818();
      if ((result & 1) == 0)
      {
        sub_1000268E4();
        sub_1000268D4();
        v29 = v31;
        v28 = v32;
        (*(v31 + 104))(v5, enum case for PeopleAnalytics.MessageRequestBubbleSource.screenTime(_:), v32);
        sub_1000268C4();

        (*(v29 + 8))(v5, v28);
        return sub_1000257E4(v34 + v19);
      }
    }
  }

  return result;
}

uint64_t sub_100014280()
{
  v1 = OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_details;
  v2 = sub_100026B04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScreenTimeBubble(uint64_t a1)
{
  result = qword_100039888;
  if (!qword_100039888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000143D4()
{
  result = qword_100039748;
  if (!qword_100039748)
  {
    sub_1000269B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039748);
  }

  return result;
}

unint64_t sub_10001442C()
{
  result = qword_100039A30;
  if (!qword_100039A30)
  {
    sub_1000144E4(&qword_100039A28, &qword_1000284D0);
    sub_100014A38(&qword_100039A38, &qword_100039A20, &qword_1000284C8, &protocol conformance descriptor for HStack<A>);
    sub_10001452C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039A30);
  }

  return result;
}

uint64_t sub_1000144E4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10001452C()
{
  result = qword_100039A40;
  if (!qword_100039A40)
  {
    sub_1000144E4(&qword_100039A10, &qword_1000284B8);
    sub_100014A38(&qword_100039A48, &qword_100039A50, &qword_1000284D8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039A40);
  }

  return result;
}

unint64_t sub_1000145E4()
{
  result = qword_100039A58;
  if (!qword_100039A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039A58);
  }

  return result;
}

unint64_t sub_100014640()
{
  result = qword_100039A88;
  if (!qword_100039A88)
  {
    sub_1000144E4(&qword_100039A78, &qword_1000284F8);
    sub_1000146F8();
    sub_100014A38(&qword_100039B10, &qword_100039B18, &qword_100028CD0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039A88);
  }

  return result;
}

unint64_t sub_1000146F8()
{
  result = qword_100039A90;
  if (!qword_100039A90)
  {
    sub_1000144E4(&qword_100039A98, &qword_100028508);
    sub_1000147B0();
    sub_100014A38(&qword_100039B00, &qword_100039B08, &unk_100028540, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039A90);
  }

  return result;
}

unint64_t sub_1000147B0()
{
  result = qword_100039AA0;
  if (!qword_100039AA0)
  {
    sub_1000144E4(&qword_100039AA8, &qword_100028510);
    sub_100014868();
    sub_100014A38(&qword_100039AF0, &qword_100039AF8, &qword_100028D60, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039AA0);
  }

  return result;
}

unint64_t sub_100014868()
{
  result = qword_100039AB0;
  if (!qword_100039AB0)
  {
    sub_1000144E4(&qword_100039AB8, &qword_100028518);
    sub_1000148F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039AB0);
  }

  return result;
}

unint64_t sub_1000148F4()
{
  result = qword_100039AC0;
  if (!qword_100039AC0)
  {
    sub_1000144E4(&qword_100039AC8, &qword_100028520);
    sub_100014980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039AC0);
  }

  return result;
}

unint64_t sub_100014980()
{
  result = qword_100039AD0;
  if (!qword_100039AD0)
  {
    sub_1000144E4(&qword_100039AD8, &qword_100028528);
    sub_100014A38(&qword_100039AE0, &qword_100039AE8, &unk_100028530, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039AD0);
  }

  return result;
}

uint64_t sub_100014A38(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000144E4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100014A80()
{
  result = qword_100039B30;
  if (!qword_100039B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039B30);
  }

  return result;
}

void sub_100014AD4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_100014B44(uint64_t a1)
{
  v2 = sub_100027004();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100026C84();
}

uint64_t sub_100014C0C@<X0>(uint64_t a1@<X8>)
{
  result = sub_100026CF4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100014C40@<X0>(uint64_t a1@<X8>)
{
  result = sub_100026CF4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100014CD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100026CD4();
  *a1 = result;
  return result;
}

uint64_t sub_100014D00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100026CD4();
  *a1 = result;
  return result;
}

uint64_t sub_100014D84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100026C94();
  *a1 = result;
  return result;
}

uint64_t sub_100014DB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100026C94();
  *a1 = result;
  return result;
}

double sub_100014E34(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100014EA0(uint64_t a1)
{
  v3 = *(sub_100026B04() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100025F70(v4, a1);
}

uint64_t sub_100014F18()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100014F94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001505C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000150C0()
{
  v1 = sub_100026B04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  sub_100006044((v0 + 16));

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001518C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000151A4()
{
  v1 = *(sub_100026B04() - 8);
  v2 = *(v0 + 56);
  v3 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  return sub_100011604((v0 + 16), v2, v3);
}

uint64_t sub_10001520C()
{
  v1 = sub_100026B04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100015294(uint64_t a1)
{
  v3 = *(sub_100026B04() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10001175C(a1, v4);
}

uint64_t sub_100015314(void *a1)
{
  v3 = sub_10000274C(&qword_1000391C8, &qword_100028010);
  __chkstk_darwin(v3 - 8);
  v5 = &v23[-1] - v4;
  v6 = sub_100026904();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100019050(0, &qword_100039CC8, BMScreenTimeRequestEvent_ptr);
  v26 = &protocol witness table for BMScreenTimeRequestEvent;
  v24[0] = a1;
  sub_100010BC8(v24, v25);
  v10 = a1;
  sub_100027354();
  sub_100018EAC(&qword_100039CD0, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
  sub_100027214();
  sub_100027214();
  if (v23[0] == v23[6] && v23[1] == v23[7])
  {
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v11 = sub_100027474();
    (*(v7 + 8))(v9, v6);

    if ((v11 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v12 = v1 + qword_100039370;
  v14 = *(v1 + qword_100039370 + 16);
  v13 = *(v1 + qword_100039370 + 24);
  sub_100010BC8(v24, v25);

  if (v14 == sub_100027364() && v13 == v15)
  {
  }

  else
  {
    v16 = sub_100027474();

    if ((v16 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  sub_100018EF4(v12, v23);
  Strong = swift_unknownObjectWeakLoadStrong();
  v18 = v23[5];
  sub_100007590(v23);
  if (Strong)
  {
    v19 = sub_1000272A4();
    (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = Strong;
    v20[5] = v18;
    sub_100003824(0, 0, v5, &unk_1000287E0, v20);
  }

LABEL_11:
  sub_100006044(v24);
  sub_10000274C(&qword_100039CD8, &qword_1000287D8);
  swift_allocObject();
  return sub_1000267F4();
}

uint64_t sub_1000156CC(uint64_t a1)
{
  v111 = a1;
  v2 = sub_100026834();
  v3 = *(v2 - 8);
  v109 = v2;
  v110 = v3;
  v4 = __chkstk_darwin(v2);
  v105 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v98 = &v94 - v7;
  __chkstk_darwin(v6);
  v102 = &v94 - v8;
  v104 = sub_100026904();
  v100 = *(v104 - 8);
  v9 = __chkstk_darwin(v104);
  v101 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v99 = &v94 - v12;
  v13 = __chkstk_darwin(v11);
  v103 = &v94 - v14;
  __chkstk_darwin(v13);
  v112 = &v94 - v15;
  v16 = sub_100026994();
  v107 = *(v16 - 1);
  v108 = v16;
  __chkstk_darwin(v16);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_10000274C(&qword_100039CA0, &qword_1000287A8);
  __chkstk_darwin(v106);
  v20 = &v94 - v19;
  v21 = sub_10000274C(&qword_100039710, &unk_1000287B0);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v94 - v26;
  __chkstk_darwin(v25);
  v29 = &v94 - v28;
  v30 = OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_eventNotifier;
  swift_beginAccess();
  sub_1000061E4(&v1[v30], v113, &qword_100039CA8, &qword_1000288C0);
  v31 = v114;
  result = sub_100006B20(v113, &qword_100039CA8, &qword_1000288C0);
  if (v31)
  {
    return result;
  }

  v96 = v24;
  v95 = v18;
  v94 = v30;
  v97 = v1;
  sub_1000269D4();
  v34 = v107;
  v33 = v108;
  (*(v107 + 104))(v27, enum case for MessageDetails.EventSource.screenTime(_:), v108);
  (*(v34 + 56))(v27, 0, 1, v33);
  v35 = *(v106 + 48);
  sub_1000061E4(v29, v20, &qword_100039710, &unk_1000287B0);
  sub_1000061E4(v27, &v20[v35], &qword_100039710, &unk_1000287B0);
  v36 = *(v34 + 48);
  if (v36(v20, 1, v33) == 1)
  {
    sub_100006B20(v27, &qword_100039710, &unk_1000287B0);
    sub_100006B20(v29, &qword_100039710, &unk_1000287B0);
    v37 = v36(&v20[v35], 1, v33);
    v38 = v112;
    if (v37 == 1)
    {
      sub_100006B20(v20, &qword_100039710, &unk_1000287B0);
      v39 = v110;
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v40 = v34;
  v41 = v96;
  sub_1000061E4(v20, v96, &qword_100039710, &unk_1000287B0);
  v42 = v36(&v20[v35], 1, v33);
  v38 = v112;
  if (v42 == 1)
  {
    sub_100006B20(v27, &qword_100039710, &unk_1000287B0);
    sub_100006B20(v29, &qword_100039710, &unk_1000287B0);
    (*(v40 + 8))(v41, v33);
LABEL_7:
    sub_100006B20(v20, &qword_100039CA0, &qword_1000287A8);
    v39 = v110;
    goto LABEL_8;
  }

  v49 = v95;
  (*(v40 + 32))(v95, &v20[v35], v33);
  sub_100018EAC(&qword_100039730, &type metadata accessor for MessageDetails.EventSource, &protocol conformance descriptor for MessageDetails.EventSource);
  v50 = sub_100027114();
  v51 = *(v40 + 8);
  v51(v49, v33);
  sub_100006B20(v27, &qword_100039710, &unk_1000287B0);
  sub_100006B20(v29, &qword_100039710, &unk_1000287B0);
  v51(v96, v33);
  sub_100006B20(v20, &qword_100039710, &unk_1000287B0);
  v39 = v110;
  if (v50)
  {
LABEL_12:
    v52 = v97;
    if (v97[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_isBubbleActive] == 1)
    {
      v54 = *&v97[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
      v53 = *&v97[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8];

      v55 = sub_100026AF4();
      v106 = v56;
      v107 = v55;
      v57 = v100;
      v58 = v38;
      v59 = v38;
      v60 = v104;
      (*(v100 + 104))(v58, enum case for StatusType.screenTimeRequest(_:), v104);
      v61 = *(v57 + 16);
      v62 = v103;
      v61(v103, v59, v60);
      v63 = [objc_opt_self() screenTimeRequestStream];
      v108 = [v63 publisher];

      v111 = sub_10000274C(&qword_100039CB0, &qword_1000287C0);
      v64 = swift_allocObject();
      *(v64 + qword_100039368) = 0;
      v61((v64 + qword_100039360), v62, v60);
      v98 = v54;
      v113[0] = v54;
      v113[1] = v53;
      v113[2] = v107;
      v114 = v106;
      v65 = v60;
      v116 = &off_100035928;
      v66 = v97;
      swift_unknownObjectWeakInit();
      sub_100018DDC(v113, v64 + qword_100039370);

      v105 = v66;
      sub_100026894();
      v67 = v99;
      v106 = v61;
      v107 = v57 + 16;
      v61(v99, v62, v60);

      v68 = sub_100026824();
      v69 = sub_100027304();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v113[0] = v96;
        *v70 = 136315394;
        v71 = sub_100005F78(v98, v53, v113);

        *(v70 + 4) = v71;
        *(v70 + 12) = 2080;
        sub_100018EAC(&qword_100039CC0, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
        v72 = sub_100027464();
        v74 = v73;
        v75 = *(v57 + 8);
        v75(v67, v104);
        v76 = sub_100005F78(v72, v74, v113);

        *(v70 + 14) = v76;
        _os_log_impl(&_mh_execute_header, v68, v69, "Created listener with %s for %s listener", v70, 0x16u);
        swift_arrayDestroy();

        v65 = v104;

        v77 = v75;
        (*(v110 + 8))(v102, v109);
      }

      else
      {

        v77 = *(v57 + 8);
        v77(v67, v65);
        (*(v39 + 8))(v102, v109);
      }

      sub_100026944();
      sub_100026924();
      v87 = v103;
      v88 = sub_100026934();

      v89 = v108;
      v90 = [v108 subscribeOn:v88];
      (v106)(v101, v87, v65);
      sub_10000274C(&qword_100039CB8, &unk_1000287C8);
      swift_allocObject();

      v91 = sub_100026B84();

      v77(v87, v65);
      *(v64 + qword_100039368) = v91;

      v114 = v111;
      v115 = &off_1000355F8;
      v113[0] = v64;
      v77(v112, v65);
      v92 = v97;
      v93 = v94;
      swift_beginAccess();
      sub_100018E3C(v113, &v92[v93]);
      return swift_endAccess();
    }

    else
    {
      v78 = v98;
      sub_100026894();
      v79 = v52;
      v80 = sub_100026824();
      v81 = sub_100027304();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v113[0] = swift_slowAlloc();
        *v82 = 136315394;
        v83 = &v79[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
        v84 = *&v79[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
        v85 = *(v83 + 1);

        v86 = sub_100005F78(v84, v85, v113);

        *(v82 + 4) = v86;
        *(v82 + 12) = 2080;
        *(v82 + 14) = sub_100005F78(0xD00000000000001ELL, 0x8000000100029CD0, v113);
        _os_log_impl(&_mh_execute_header, v80, v81, "%s has been deactivated prior to %s!", v82, 0x16u);
        swift_arrayDestroy();
      }

      return (*(v39 + 8))(v78, v109);
    }
  }

LABEL_8:
  v43 = v105;
  sub_100026894();
  v44 = sub_100026824();
  v45 = sub_100027314();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v109;
  if (v46)
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "Misconfigured screenTime details", v48, 2u);
  }

  return (*(v39 + 8))(v43, v47);
}

uint64_t sub_10001648C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ScreenTimeMessageViewController(0);
  objc_msgSendSuper2(&v3, "viewDidLoad");
  *&v0[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_bubbleDelegate + 8] = &off_100035860;
  swift_unknownObjectWeakAssign();
  v1 = *&v0[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_messageDetailsLoader];
  *(v1 + 40) = &off_100035828;
  swift_unknownObjectWeakAssign();
  *(v1 + 24) = &off_100035838;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_100016834(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC24PeopleMessagesScreenTime31ScreenTimeMessageViewController_fallbackThumbnail;
  v4 = sub_100026974();
  v5 = *(*(v4 - 8) + 8);

  return v5(v2 + v3, v4);
}

id sub_10001689C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenTimeMessageViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ScreenTimeMessageViewController(uint64_t a1)
{
  result = qword_100039BA0;
  if (!qword_100039BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100016994(uint64_t a1, uint64_t a2)
{
  result = sub_100026974();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100016A24@<X0>(uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC24PeopleMessagesScreenTime31ScreenTimeMessageViewController_fallbackThumbnail;
  v5 = sub_100026974();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100016A9C(uint64_t a1)
{
  v3 = sub_100026B04();
  __chkstk_darwin(v3);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v10 = type metadata accessor for ScreenTimeMessageViewController(0);
  v20[3] = v10;
  v20[4] = &off_100035850;
  v20[0] = v1;
  type metadata accessor for ScreenTimeBubble(0);
  swift_allocObject();
  v11 = sub_100016FE4(v20, v10);
  __chkstk_darwin(v11);
  v13 = (&v20[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v16 = v1;
  v17 = sub_100018770(v5, v15, UIEdgeInsetsZero.top, left, bottom, right);
  sub_100006044(v20);
  return v17;
}

uint64_t sub_100016C88(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_100027274();
  v3[5] = sub_100027264();
  v5 = sub_100027244();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_100016D24, v5, v4);
}

uint64_t sub_100016D24()
{
  v1 = (v0[4] + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID);
  v3 = *v1;
  v2 = v1[1];
  v0[8] = v2;

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100016DF4;
  v5 = v0[2];
  v6 = v0[3];

  return static ScreenTimeSupport.getCurrentStatusDetails(withDetails:forId:)(v5, v6, v3, v2);
}

uint64_t sub_100016DF4()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_100016F74;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_100016F10;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100016F10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100016F74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100016FE4(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void sub_100017034(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a3;
  v7 = sub_1000268B4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000268E4();
  sub_1000268D4();
  (*(v8 + 104))(v10, enum case for PeopleAnalytics.MessageRequestBubbleSource.screenTime(_:), v7);
  sub_1000268C4();

  (*(v8 + 8))(v10, v7);
  sub_1000268A4();
  v11 = a1[2];
  if (v11)
  {
    v28 = a2;
    v29 = v3;
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100017430(0, v11, 0);
    v12 = aBlock[0];
    v13 = a1 + 5;
    v14 = v11;
    do
    {
      v15 = *(v13 - 1);
      v16 = *v13;
      aBlock[0] = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);

      if (v18 >= v17 >> 1)
      {
        sub_100017430((v17 > 1), v18 + 1, 1);
        v12 = aBlock[0];
      }

      *(v12 + 16) = v18 + 1;
      v19 = v12 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      v13 += 3;
      --v14;
    }

    while (v14);
    a2 = v28;
    v4 = v29;
  }

  v20.super.isa = sub_100027224().super.isa;

  if (v11)
  {
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100027404();
    v21 = a1 + 6;
    do
    {
      v22 = *v21;
      v21 += 3;
      [objc_allocWithZone(NSNumber) initWithInteger:v22];
      sub_1000273E4();
      sub_100027414();
      sub_100027424();
      sub_1000273F4();
      --v11;
    }

    while (v11);
  }

  sub_100019050(0, &qword_100039CE0, NSNumber_ptr);
  isa = sub_100027224().super.isa;

  v24 = swift_allocObject();
  v25 = v30;
  *(v24 + 16) = a2;
  *(v24 + 24) = v25;
  aBlock[4] = sub_1000190D0;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000173BC;
  aBlock[3] = &unk_100035900;
  v26 = _Block_copy(aBlock);

  [v4 _presentAlertSheetWith:v20.super.isa styles:isa completion:v26];
  _Block_release(v26);
}

uint64_t sub_1000173BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void *sub_100017410(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100017450(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100017430(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100017584(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100017450(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000274C(&qword_100039720, &qword_1000287F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000274C(&qword_100039738, &qword_1000282A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100017584(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000274C(&qword_100039CE8, &qword_1000287E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100017690(_BYTE *a1, char *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v147 = a2;
  v148 = a1;
  v144 = sub_100026DE4();
  v142 = *(v144 - 8);
  __chkstk_darwin(v144);
  v143 = &v116[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10000274C(&qword_100039BB0, &qword_100028700);
  __chkstk_darwin(v9 - 8);
  v128 = &v116[-v10];
  v126 = sub_10000274C(&qword_100039BB8, &qword_100028708);
  v11 = __chkstk_darwin(v126);
  v135 = &v116[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v129 = &v116[-v14];
  __chkstk_darwin(v13);
  v132 = &v116[-v15];
  v124 = sub_100026DB4();
  v122 = *(v124 - 8);
  __chkstk_darwin(v124);
  v120 = &v116[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v125 = sub_10000274C(&qword_100039BC0, &qword_100028710);
  v123 = *(v125 - 8);
  __chkstk_darwin(v125);
  v121 = &v116[-v17];
  v119 = sub_10000274C(&qword_100039BC8, &qword_100028718);
  v18 = __chkstk_darwin(v119);
  v127 = &v116[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v18);
  v118 = &v116[-v21];
  __chkstk_darwin(v20);
  v146 = &v116[-v22];
  v137 = sub_10000274C(&qword_100039BD0, &qword_100028720);
  __chkstk_darwin(v137);
  v24 = &v116[-v23];
  v25 = sub_10000274C(&qword_100039BD8, &qword_100028728);
  v140 = *(v25 - 8);
  v141 = v25;
  v26 = __chkstk_darwin(v25);
  v136 = &v116[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v139 = &v116[-v28];
  v29 = sub_100026B04();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v133 = v32;
  v134 = &v116[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v34 = &v116[-v33];
  v35 = type metadata accessor for ScreenTimeMessageViewController(0);
  v159[4] = &off_100035850;
  v159[3] = v35;
  v159[0] = v147;
  v36 = v147;
  v117 = sub_100007AB0();
  v138 = v30;
  v37 = *(v30 + 16);
  v149 = v29;
  v130 = v37;
  v131 = v30 + 16;
  v37(v34, (a3 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_details), v29);
  *v24 = sub_100026D54();
  *(v24 + 1) = 0;
  v147 = v24;
  v24[16] = 0;
  v38 = a3;
  v39 = sub_100026D14();
  v157 = 0;
  v40 = v148;
  v148 = v34;
  sub_100013288(v40, a3, v152);
  v182 = *&v152[144];
  v183 = *&v152[160];
  v184[0] = *&v152[176];
  *(v184 + 9) = *&v152[185];
  v179 = *&v152[96];
  v180 = *&v152[112];
  v181 = *&v152[128];
  v175 = *&v152[32];
  v176 = *&v152[48];
  v177 = *&v152[64];
  v178 = *&v152[80];
  v173 = *v152;
  v174 = *&v152[16];
  v185[9] = *&v152[144];
  v185[10] = *&v152[160];
  v186[0] = *&v152[176];
  *(v186 + 9) = *&v152[185];
  v185[6] = *&v152[96];
  v185[7] = *&v152[112];
  v185[8] = *&v152[128];
  v185[2] = *&v152[32];
  v185[3] = *&v152[48];
  v185[4] = *&v152[64];
  v185[5] = *&v152[80];
  v185[0] = *v152;
  v185[1] = *&v152[16];
  sub_1000061E4(&v173, v151, &qword_100039BE0, &qword_100028730);
  sub_100006B20(v185, &qword_100039BE0, &qword_100028730);
  *(&v156[9] + 7) = v182;
  *(&v156[10] + 7) = v183;
  *(&v156[11] + 7) = v184[0];
  v156[12] = *(v184 + 9);
  *(&v156[5] + 7) = v178;
  *(&v156[6] + 7) = v179;
  *(&v156[7] + 7) = v180;
  *(&v156[8] + 7) = v181;
  *(&v156[1] + 7) = v174;
  *(&v156[2] + 7) = v175;
  *(&v156[3] + 7) = v176;
  *(&v156[4] + 7) = v177;
  *(v156 + 7) = v173;
  v41 = v157;
  if (qword_1000390C0 != -1)
  {
    swift_once();
  }

  sub_100027074();
  v145 = a3;
  sub_100026C64();
  *&v158[55] = v163;
  *&v158[71] = v164;
  *&v158[87] = v165;
  *&v158[103] = v166;
  *&v158[7] = v160;
  *&v158[23] = v161;
  *&v158[39] = v162;
  *&v151[161] = v156[9];
  *&v151[177] = v156[10];
  *&v151[193] = v156[11];
  *&v151[209] = v156[12];
  *&v151[97] = v156[5];
  *&v151[113] = v156[6];
  *&v151[129] = v156[7];
  *&v151[145] = v156[8];
  *&v151[33] = v156[1];
  *&v151[49] = v156[2];
  *&v151[65] = v156[3];
  *&v151[289] = *&v158[64];
  *&v151[305] = *&v158[80];
  *&v151[321] = *&v158[96];
  *&v151[257] = *&v158[32];
  *&v151[273] = *&v158[48];
  *&v151[81] = v156[4];
  *&v151[17] = v156[0];
  *&v151[225] = *v158;
  *v151 = v39;
  *&v151[8] = 0;
  v151[16] = v41;
  *&v151[336] = *(&v166 + 1);
  *&v151[241] = *&v158[16];
  v42 = v120;
  sub_100026DA4();
  sub_10000274C(&qword_100039BE8, &qword_100028738);
  sub_100018924();
  v43 = v121;
  sub_100026F54();
  (*(v122 + 8))(v42, v124);
  memcpy(v152, v151, sizeof(v152));
  sub_100006B20(v152, &qword_100039BE8, &qword_100028738);
  v44 = sub_100026F94();
  LOBYTE(v42) = sub_100026E04();
  v45 = v118;
  (*(v123 + 32))(v118, v43, v125);
  v46 = v45 + *(v119 + 36);
  *v46 = v44;
  *(v46 + 8) = v42;
  v47 = v146;
  sub_1000189DC(v45, v146);
  sub_100027074();
  sub_100026C34();
  v124 = v169;
  v125 = v167;
  v122 = v172;
  v123 = v171;
  v155 = 1;
  v154 = v168;
  v153 = v170;
  v48 = sub_100026D44();
  v49 = v128;
  *v128 = v48;
  *(v49 + 8) = 0;
  *(v49 + 16) = 0;
  v50 = sub_10000274C(&qword_100039C08, &qword_100028748);
  sub_1000139A8(v117 & 1, v38, v159, v49 + *(v50 + 44));
  if (qword_100039088 != -1)
  {
    swift_once();
  }

  sub_100027064();
  v51 = sub_10000274C(&qword_100039C10, &qword_100028750);
  v52 = &v147[*(v51 + 44)];
  sub_100026C64();
  v53 = v129;
  sub_100010C0C(v49, v129, &qword_100039BB0, &qword_100028700);
  v54 = &v53[*(v126 + 36)];
  v55 = *&v151[80];
  v54[4] = *&v151[64];
  v54[5] = v55;
  v54[6] = *&v151[96];
  v56 = *&v151[16];
  *v54 = *v151;
  v54[1] = v56;
  v57 = *&v151[48];
  v54[2] = *&v151[32];
  v54[3] = v57;
  v58 = v132;
  sub_100010C0C(v53, v132, &qword_100039BB8, &qword_100028708);
  v59 = v127;
  sub_100018A4C(v47, v127);
  LOBYTE(v53) = v155;
  v60 = v154;
  v61 = v153;
  v62 = v135;
  sub_1000061E4(v58, v135, &qword_100039BB8, &qword_100028708);
  sub_100018A4C(v59, v52);
  v63 = sub_10000274C(&qword_100039C18, &qword_100028758);
  v64 = &v52[*(v63 + 48)];
  *v64 = 0;
  v64[8] = v53;
  v65 = v124;
  *(v64 + 2) = v125;
  v64[24] = v60;
  *(v64 + 4) = v65;
  v64[40] = v61;
  v66 = v122;
  *(v64 + 6) = v123;
  *(v64 + 7) = v66;
  sub_1000061E4(v62, &v52[*(v63 + 64)], &qword_100039BB8, &qword_100028708);
  sub_100006B20(v58, &qword_100039BB8, &qword_100028708);
  sub_100006B20(v146, &qword_100039BC8, &qword_100028718);
  sub_100006B20(v62, &qword_100039BB8, &qword_100028708);
  sub_100006B20(v59, &qword_100039BC8, &qword_100028718);
  v67 = sub_100026F94();
  v68 = sub_100026E04();
  v69 = sub_10000274C(&qword_100039C20, &qword_100028760);
  v70 = v147;
  v71 = &v147[*(v69 + 36)];
  *v71 = v67;
  v71[8] = v68;
  LOBYTE(v67) = sub_100026E14();
  sub_100026C24();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v80 = &v70[*(sub_10000274C(&qword_100039C28, &qword_100028768) + 36)];
  *v80 = v67;
  *(v80 + 1) = v73;
  *(v80 + 2) = v75;
  *(v80 + 3) = v77;
  *(v80 + 4) = v79;
  v80[40] = 0;
  LOBYTE(v67) = sub_100026E44();
  sub_100026C24();
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v89 = &v70[*(sub_10000274C(&qword_100039C30, &qword_100028770) + 36)];
  *v89 = v67;
  *(v89 + 1) = v82;
  *(v89 + 2) = v84;
  *(v89 + 3) = v86;
  *(v89 + 4) = v88;
  v89[40] = 0;
  LOBYTE(v67) = sub_100026E34();
  sub_100026C24();
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v98 = &v70[*(sub_10000274C(&qword_100039C38, &qword_100028778) + 36)];
  *v98 = v67;
  *(v98 + 1) = v91;
  *(v98 + 2) = v93;
  *(v98 + 3) = v95;
  *(v98 + 4) = v97;
  v98[40] = 0;
  LOBYTE(v67) = sub_100026E24();
  sub_100026C24();
  v99 = &v70[*(v137 + 36)];
  *v99 = v67;
  *(v99 + 1) = v100;
  *(v99 + 2) = v101;
  *(v99 + 3) = v102;
  *(v99 + 4) = v103;
  v99[40] = 0;
  v104 = v134;
  v105 = v149;
  v130(v134, v148, v149);
  v106 = v138;
  v107 = (*(v138 + 80) + 24) & ~*(v138 + 80);
  v108 = swift_allocObject();
  *(v108 + 16) = v145;
  (*(v106 + 32))(v108 + v107, v104, v105);
  sub_100018BE4(&qword_100039C40, &qword_100039BD0, &qword_100028720, sub_100018C68);

  v109 = v139;
  sub_100026F34();

  sub_100006B20(v70, &qword_100039BD0, &qword_100028720);
  v111 = v140;
  v110 = v141;
  (*(v140 + 16))(v136, v109, v141);
  v112 = objc_allocWithZone(sub_10000274C(&qword_100039C78, &qword_100028790));
  v113 = sub_100026D84();
  sub_10000274C(&qword_100039C80, &qword_100028798);
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_100028210;
  sub_100026DD4();
  sub_100026DC4();
  v150 = v114;
  sub_100018EAC(&qword_100039C88, &type metadata accessor for UIHostingControllerSizingOptions, &protocol conformance descriptor for UIHostingControllerSizingOptions);
  sub_10000274C(&qword_100039C90, &qword_1000287A0);
  sub_100014A38(&qword_100039C98, &qword_100039C90, &qword_1000287A0, &protocol conformance descriptor for [A]);
  sub_100027384();
  sub_100026D64();
  sub_100026D74();
  (*(v111 + 8))(v109, v110);
  (*(v106 + 8))(v148, v149);
  sub_100006044(v159);
  return v113;
}

uint64_t sub_100018770(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = sub_100026B04();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ScreenTimeMessageViewController(0);
  v26 = &off_100035850;
  v24[0] = a2;
  (*(v13 + 16))(v15, a1, v12);
  v16 = sub_100008648(v15);
  v17 = *(v16 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_image);
  v18 = *sub_100010BC8(v24, v25);

  v19 = v17;
  v20 = sub_100017690(v19, v18, v16, a3, a4, a5, a6);

  (*(v13 + 8))(a1, v12);
  sub_100006044(v24);
  v21 = *(v16 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_contentViewController);
  *(v16 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_contentViewController) = v20;

  return v16;
}

unint64_t sub_100018924()
{
  result = qword_100039BF0;
  if (!qword_100039BF0)
  {
    sub_1000144E4(&qword_100039BE8, &qword_100028738);
    sub_100014A38(&qword_100039BF8, &qword_100039C00, &qword_100028740, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039BF0);
  }

  return result;
}

uint64_t sub_1000189DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000274C(&qword_100039BC8, &qword_100028718);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018A4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000274C(&qword_100039BC8, &qword_100028718);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018ABC()
{
  v1 = sub_100026B04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100018B80()
{
  v1 = *(sub_100026B04() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100013DE0(v2, v3);
}

uint64_t sub_100018BE4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000144E4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100018CF8()
{
  result = qword_100039C60;
  if (!qword_100039C60)
  {
    sub_1000144E4(&qword_100039C20, &qword_100028760);
    sub_100014A38(&qword_100039C68, &qword_100039C70, &unk_100028780, &protocol conformance descriptor for VStack<A>);
    sub_100014A38(&qword_100039AF0, &qword_100039AF8, &qword_100028D60, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039C60);
  }

  return result;
}

uint64_t sub_100018E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000274C(&qword_100039CA8, &qword_1000288C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018EAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100018F50()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100018F90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100003730;

  return sub_100007184(a1, v4, v5, v7, v6);
}

uint64_t sub_100019050(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100019098()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000190F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100019110()
{
  v1 = sub_100026834();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026894();
  v5 = v0;
  v6 = sub_100026824();
  v7 = sub_100027304();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = *&v5[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
    v11 = *&v5[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8];

    v12 = sub_100005F78(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failure balloon %s", v8, 0xCu);
    sub_100006044(v9);
  }

  (*(v2 + 8))(v4, v1);
  v5[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_initialLoadError] = 1;
  return [v5 requestResize];
}

uint64_t sub_1000192F4()
{
  v1 = OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_eventNotifier;
  swift_beginAccess();
  sub_1000061E4(v0 + v1, &v8, &qword_100039CA8, &qword_1000288C0);
  if (*(&v9 + 1))
  {
    sub_10001505C(&v8, v5);
    sub_100006B20(&v8, &qword_100039CA8, &qword_1000288C0);
    v2 = v6;
    v3 = v7;
    sub_100010BC8(v5, v6);
    (*(v3 + 8))(v2, v3);
    sub_100006044(v5);
  }

  else
  {
    sub_100006B20(&v8, &qword_100039CA8, &qword_1000288C0);
  }

  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  swift_beginAccess();
  sub_100018E3C(&v8, v0 + v1);
  return swift_endAccess();
}

uint64_t sub_100019418(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_100027254();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_100026834();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = sub_100026B04();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  sub_10000274C(&qword_100039188, &qword_100027DE8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v6 = sub_100026734();
  v2[21] = v6;
  v2[22] = *(v6 - 8);
  v2[23] = swift_task_alloc();
  v7 = sub_100026864();
  v2[24] = v7;
  v2[25] = *(v7 - 8);
  v2[26] = swift_task_alloc();
  sub_100027274();
  v2[27] = sub_100027264();
  v9 = sub_100027244();
  v2[28] = v9;
  v2[29] = v8;

  return _swift_task_switch(sub_1000196FC, v9, v8);
}

uint64_t sub_1000196FC()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  (*(v2 + 104))(v1, enum case for PeopleURL.Parameter.requestID(_:), v3);
  v4 = sub_10000ACE8(v1);
  v6 = v5;
  *(v0 + 240) = v4;
  *(v0 + 248) = v5;
  (*(v2 + 8))(v1, v3);
  if (!v6)
  {

    sub_100026894();
    v11 = sub_100026824();
    v12 = sub_100027314();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 104);
    v15 = *(v0 + 64);
    v16 = *(v0 + 72);
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "conversation.requestID is nil";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v11, v12, v18, v17, 2u);
    }

LABEL_14:

    (*(v16 + 8))(v14, v15);

    v27 = *(v0 + 8);

    return v27();
  }

  v7 = [*(v0 + 24) selectedMessage];
  if (!v7)
  {
    v19 = *(v0 + 168);
    v20 = *(v0 + 176);
    v21 = *(v0 + 160);

    (*(v20 + 56))(v21, 1, 1, v19);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 URL];

  if (v9)
  {
    sub_100026714();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v23 = *(v0 + 168);
  v22 = *(v0 + 176);
  v25 = *(v0 + 152);
  v24 = *(v0 + 160);
  (*(v22 + 56))(v25, v10, 1, v23);
  sub_100020E64(v25, v24);
  if ((*(v22 + 48))(v24, 1, v23) == 1)
  {

LABEL_11:
    sub_100006B20(*(v0 + 160), &qword_100039188, &qword_100027DE8);
    sub_100026894();
    v11 = sub_100026824();
    v12 = sub_100027314();
    v26 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 112);
    v15 = *(v0 + 64);
    v16 = *(v0 + 72);
    if (v26)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "message url is nil";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v29 = *(v0 + 184);
  v30 = *(v0 + 32);
  (*(*(v0 + 176) + 32))(v29, *(v0 + 160), *(v0 + 168));
  *(v0 + 256) = *(v30 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_messageDetailsLoader);
  v31 = sub_10000C9F4(v29, v4, v6);
  *(v0 + 264) = v31;
  v32 = swift_task_alloc();
  *(v0 + 272) = v32;
  v33 = sub_10000274C(&qword_100039848, &qword_100028370);
  *(v0 + 280) = v33;
  *v32 = v0;
  v32[1] = sub_100019B68;
  v34 = *(v0 + 144);
  v35 = *(v0 + 120);

  return Task.value.getter(v34, v31, v35, v33, &protocol self-conformance witness table for Error);
}

uint64_t sub_100019B68()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_100019E00;
  }

  else
  {

    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_100019C90;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100019C90()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];

  sub_10001C8D4(v1);
  (*(v3 + 8))(v1, v2);
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v7 = v0[4];
  [v7 setReadyForDisplay];
  [v7 requestResize];
  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100019E00()
{
  v42 = v0;
  v1 = v0[36];

  v0[2] = v1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[5];

    (*(v3 + 8))(v2, v4);
    sub_100026894();
    v5 = sub_100026824();
    v6 = sub_100027304();
    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[22];
    v8 = v0[23];
    v10 = v0[21];
    v11 = v0[12];
    v13 = v0[8];
    v12 = v0[9];
    if (v7)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "loadAndRenderBubbleIgnoringCache cancelled, no render", v14, 2u);

      (*(v12 + 8))(v11, v13);
      (*(v9 + 8))(v8, v10);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
      (*(v9 + 8))(v8, v10);
    }
  }

  else
  {
    v15 = v0[4];
    sub_100026894();
    swift_errorRetain();
    v16 = v15;
    v17 = sub_100026824();
    v18 = sub_100027304();

    if (os_log_type_enabled(v17, v18))
    {
      v38 = v0[9];
      v39 = v0[8];
      v40 = v0[11];
      v19 = v0[4];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v20 = 136315650;
      v23 = *(v19 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID);
      v22 = *(v19 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8);

      v24 = sub_100005F78(v23, v22, &v41);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_100005F78(0xD000000000000027, 0x8000000100029F70, &v41);
      *(v20 + 22) = 2112;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 24) = v25;
      *v21 = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s  %s error loading full bubble: %@", v20, 0x20u);
      sub_100006B20(v21, &qword_100039838, &unk_100028360);

      swift_arrayDestroy();

      (*(v38 + 8))(v40, v39);
    }

    else
    {
      v26 = v0[11];
      v27 = v0[8];
      v28 = v0[9];

      (*(v28 + 8))(v26, v27);
    }

    sub_10000C330(1, v0[17]);
    v30 = v0[16];
    v29 = v0[17];
    v31 = v0[15];

    sub_10001C8D4(v29);

    (*(v30 + 8))(v29, v31);
    v33 = v0[22];
    v32 = v0[23];
    v34 = v0[21];
    v35 = v0[4];
    [v35 setReadyForDisplay];
    [v35 requestResize];
    (*(v33 + 8))(v32, v34);
  }

  v36 = v0[1];

  return v36();
}

uint64_t sub_10001A40C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = sub_100026834();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v40 = &v37 - v7;
  v8 = sub_10000274C(&qword_100039188, &qword_100027DE8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  v14 = sub_100026734();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v39 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100026864();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 104))(v20, enum case for PeopleURL.Parameter.requestID(_:), v17);
  v38 = sub_10000ACE8(v20);
  v22 = v21;
  (*(v18 + 8))(v20, v17);
  if (v22)
  {
    v23 = [a1 selectedMessage];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 URL];

      if (v25)
      {
        sub_100026714();

        v26 = 0;
      }

      else
      {
        v26 = 1;
      }

      (*(v15 + 56))(v11, v26, 1, v14);
      sub_100020E64(v11, v13);
      if ((*(v15 + 48))(v13, 1, v14) != 1)
      {
        v36 = v39;
        (*(v15 + 32))(v39, v13, v14);
        sub_10000B4F8(v38, v22, v43);

        return (*(v15 + 8))(v36, v14);
      }
    }

    else
    {

      (*(v15 + 56))(v13, 1, 1, v14);
    }

    sub_100006B20(v13, &qword_100039188, &qword_100027DE8);
    v30 = v40;
    sub_100026894();
    v31 = sub_100026824();
    v32 = sub_100027314();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "message url is nil", v33, 2u);
    }

    (*(v41 + 8))(v30, v42);
  }

  else
  {
    sub_100026894();
    v27 = sub_100026824();
    v28 = sub_100027314();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "conversation.requestID is nil", v29, 2u);
    }

    (*(v41 + 8))(v6, v42);
  }

  v34 = sub_100026B04();
  return (*(*(v34 - 8) + 56))(v43, 1, 1, v34);
}

uint64_t sub_10001A974(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_100026974();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_10000274C(&qword_100039188, &qword_100027DE8);
  v3[8] = swift_task_alloc();
  v5 = sub_100026734();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  sub_100027274();
  v3[12] = sub_100027264();
  v7 = sub_100027244();
  v3[13] = v7;
  v3[14] = v6;

  return _swift_task_switch(sub_10001AB00, v7, v6);
}

uint64_t sub_10001AB00()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_100026B04();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = sub_100026AB4();
  if (!v5)
  {
    v4 = sub_100026AF4();
  }

  v6 = v4;
  v7 = v5;
  v0[15] = v4;
  v0[16] = v5;
  v8 = sub_100026A04();
  if (v9 >> 60 == 15)
  {
    if (qword_100039068 != -1)
    {
      swift_once();
    }

    ImageCache.getFromCache(_:)(v6, v7);
    if (v10 >> 60 != 15)
    {
      sub_100026A14();
    }
  }

  else
  {
    sub_100010CDC(v8, v9);
  }

  v11 = sub_100026A04();
  if (v12 >> 60 == 15)
  {
    sub_100026A24();
    if (v13)
    {
      v14 = v0[9];
      v15 = v0[10];
      v16 = v0[8];
      sub_100026724();

      if ((*(v15 + 48))(v16, 1, v14) != 1)
      {
        (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
        v29 = swift_task_alloc();
        v0[17] = v29;
        *v29 = v0;
        v29[1] = sub_10001AE78;
        v30 = v0[11];

        return sub_10001F440(v30);
      }

      sub_100006B20(v0[8], &qword_100039188, &qword_100027DE8);
    }
  }

  else
  {
    sub_100010CDC(v11, v12);
  }

  v17 = sub_100026A04();
  if (v18 >> 60 == 15)
  {
    v19 = sub_100026AB4();
    v0[20] = v20;
    if (v20)
    {
      v21 = v19;
      v22 = v20;
      v24 = v0[6];
      v23 = v0[7];
      v25 = v0[5];
      sub_100026B64();
      (*(v24 + 104))(v23, enum case for FirstPartyApps.none(_:), v25);
      v26 = swift_task_alloc();
      v0[21] = v26;
      *v26 = v0;
      v26[1] = sub_10001B1F8;
      v27 = v0[7];

      return static AppBundleResolver.resolveThumbnail(_:_:)(v21, v22, v27);
    }
  }

  else
  {
    sub_100010CDC(v17, v18);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_10001AE78(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = a2;

  v5 = *(v3 + 112);
  v6 = *(v3 + 104);

  return _swift_task_switch(sub_10001AFA0, v6, v5);
}

uint64_t sub_10001AFA0()
{
  if (v0[19] >> 60 == 15)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
  }

  else
  {
    sub_100003B24(v0[18], v0[19]);
    sub_100026A14();
    if (qword_100039068 != -1)
    {
      swift_once();
    }

    v2 = v0[18];
    v1 = v0[19];
    v4 = v0[10];
    v3 = v0[11];
    v5 = v0[9];
    ImageCache.addToCache(_:image:)(v0[15], v0[16], v2, v1);
    sub_100010CDC(v2, v1);
    (*(v4 + 8))(v3, v5);
  }

  v6 = sub_100026A04();
  if (v7 >> 60 == 15)
  {
    v8 = sub_100026AB4();
    v0[20] = v9;
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      v13 = v0[6];
      v12 = v0[7];
      v14 = v0[5];
      sub_100026B64();
      (*(v13 + 104))(v12, enum case for FirstPartyApps.none(_:), v14);
      v15 = swift_task_alloc();
      v0[21] = v15;
      *v15 = v0;
      v15[1] = sub_10001B1F8;
      v16 = v0[7];

      return static AppBundleResolver.resolveThumbnail(_:_:)(v10, v11, v16);
    }
  }

  else
  {
    sub_100010CDC(v6, v7);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_10001B1F8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  *(v4 + 176) = a1;
  *(v4 + 184) = a2;

  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 112);
  v9 = *(v3 + 104);

  return _swift_task_switch(sub_10001B3A0, v9, v8);
}

uint64_t sub_10001B3A0()
{
  v1 = v0[23];

  if (v1 >> 60 == 15)
  {

    if (qword_100039080 != -1)
    {
      swift_once();
    }

    sub_100010CC8(qword_10003A740, qword_10003A748);
  }

  else
  {
    if (qword_100039068 != -1)
    {
      swift_once();
    }

    ImageCache.addToCache(_:image:)(v0[15], v0[16], v0[22], v0[23]);
  }

  sub_100026A14();

  v2 = v0[1];

  return v2();
}

id sub_10001B50C()
{
  v1 = v0;
  v2 = sub_100026834();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
  v6 = *&v1[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8];

  sub_100026894();

  v8 = sub_100026824();
  v9 = sub_100027304();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    v12 = sub_100005F78(v7, v6, &v16);

    *(v10 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "RequestMessageViewController deinit %s", v10, 0xCu);
    sub_100006044(v11);
  }

  else
  {
  }

  (*(v3 + 8))(v5, v2);
  v13 = type metadata accessor for RequestMessageViewController();
  v17.receiver = v1;
  v17.super_class = v13;
  return objc_msgSendSuper2(&v17, "dealloc");
}

void sub_10001B7B4()
{
  v0 = sub_100027124();
  v1 = [objc_opt_self() imageNamed:v0];

  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = UIImagePNGRepresentation(v1);

  if (!v2)
  {
    v1 = 0;
LABEL_5:
    v4 = 0xF000000000000000;
    goto LABEL_6;
  }

  v1 = sub_100026764();
  v4 = v3;

LABEL_6:
  qword_10003A740 = v1;
  qword_10003A748 = v4;
}

uint64_t sub_10001B940()
{
  v1 = v0;
  v2 = sub_100026864();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 activeConversation];
  if (!v6 || (v7 = v6, (*(v3 + 104))(v5, enum case for PeopleURL.Parameter.requestID(_:), v2), v8 = sub_10000ACE8(v5), v10 = v9, v7, (*(v3 + 8))(v5, v2), !v10))
  {

    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = &v1[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
  *v11 = v8;
  v11[1] = v10;
}

double sub_10001BA98(double a1, double a2)
{
  v5 = sub_100026834();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026894();
  v9 = v2;
  v10 = sub_100026824();
  v11 = sub_100027304();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v12 = 136315906;
    v13 = *&v9[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
    v14 = *&v9[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8];

    v15 = sub_100005F78(v13, v14, &v33);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100005F78(0xD000000000000017, 0x8000000100029F50, &v33);
    *(v12 + 22) = 2048;
    *(v12 + 24) = a1;
    *(v12 + 32) = 2048;
    *(v12 + 34) = a2;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s  %s! size: %f x %f", v12, 0x2Au);
    swift_arrayDestroy();
  }

  (*(v6 + 8))(v8, v5);
  if ((v9[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_initialLoadError] & 1) == 0)
  {
    [v9 additionalSafeAreaInsets];
    v18 = v16 + v17;
    v21 = v19 + v20;
    v22 = 150.0;
    if (a2 > 150.0)
    {
      v22 = a2;
    }

    v23 = 300.0;
    if (a1 <= 300.0)
    {
      v23 = a1;
    }

    a1 = v23 - v21;
    v24 = *&v9[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_bubble];
    if (v24)
    {
      v25 = *(v24 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_contentViewController);
      if (v25)
      {
        v26 = v22 - v18;
        v27 = [v25 view];
        if (v27)
        {
          v28 = v27;
          [v27 sizeThatFits:{a1, v26}];
          v30 = v29;

          return ceil(v21 + v30);
        }
      }
    }
  }

  return a1;
}

void sub_10001BDFC(void *a1)
{
  v3 = sub_10000274C(&qword_1000391C8, &qword_100028010);
  __chkstk_darwin(v3 - 8);
  v97 = &v90 - v4;
  v5 = sub_10000274C(&qword_100039830, &qword_100028358);
  __chkstk_darwin(v5 - 8);
  v99 = &v90 - v6;
  v7 = sub_100026B04();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v96 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v95 = &v90 - v12;
  __chkstk_darwin(v11);
  v103 = &v90 - v13;
  v14 = sub_100026834();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v94 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v98 = &v90 - v19;
  v20 = __chkstk_darwin(v18);
  v101 = &v90 - v21;
  __chkstk_darwin(v20);
  v23 = &v90 - v22;
  sub_100026894();
  v24 = v1;
  v25 = sub_100026824();
  v26 = sub_100027304();

  v27 = os_log_type_enabled(v25, v26);
  v102 = v15;
  v100 = v8;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v104 = v91;
    *v28 = 136315394;
    v29 = v14;
    v30 = v7;
    v31 = a1;
    v33 = *&v24[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
    v32 = *&v24[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8];

    v34 = sub_100005F78(v33, v32, &v104);
    a1 = v31;
    v7 = v30;
    v14 = v29;

    *(v28 + 4) = v34;
    v8 = v100;
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_100005F78(0xD000000000000017, 0x8000000100029F00, &v104);
    _os_log_impl(&_mh_execute_header, v25, v26, "%s  %s!", v28, 0x16u);
    swift_arrayDestroy();

    v15 = v102;
  }

  v35 = *(v15 + 8);
  (v35)(v23, v14);
  v36 = type metadata accessor for RequestMessageViewController();
  v106.receiver = v24;
  v106.super_class = v36;
  objc_msgSendSuper2(&v106, "willBecomeActiveWithConversation:", a1);
  [v24 setNeedsSizeMatchBeforeSnapshotSwap];
  v24[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_isBubbleActive] = 1;
  v37 = v99;
  sub_10001A40C(a1, v99);
  v38 = (*(v8 + 48))(v37, 1, v7);
  v39 = v101;
  if (v38 == 1)
  {
    sub_100006B20(v37, &qword_100039830, &qword_100028358);
    v40 = sub_100026874();
    v41 = v94;
    sub_100026894();
    v104 = 0;
    v105 = 0xE000000000000000;
    v42 = v40;
    sub_1000273B4(37);
    v44 = *&v24[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
    v43 = *&v24[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8];

    v104 = v44;
    v105 = v43;
    v107._countAndFlagsBits = 32;
    v107._object = 0xE100000000000000;
    sub_1000271E4(v107);
    v108._object = 0x8000000100029F00;
    v108._countAndFlagsBits = 0xD000000000000017;
    sub_1000271E4(v108);
    v109._countAndFlagsBits = 0xD000000000000020;
    v109._object = 0x8000000100029F20;
    sub_1000271E4(v109);
    sub_100026814();

    (v35)(v41, v14);
    sub_100019110();
  }

  else
  {
    v93 = v14;
    v45 = v103;
    (*(v8 + 32))(v103, v37, v7);
    sub_100026894();
    v46 = v95;
    v94 = *(v8 + 16);
    (v94)(v95, v45, v7);
    v47 = v24;
    v48 = sub_100026824();
    v49 = sub_100027304();
    v91 = v7;
    v50 = v49;

    v51 = os_log_type_enabled(v48, v50);
    v99 = v35;
    v92 = a1;
    if (v51)
    {
      v52 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *v52 = 136315650;
      v53 = *&v47[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
      v54 = *&v47[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8];

      v55 = sub_100005F78(v53, v54, &v104);

      *(v52 + 4) = v55;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_100005F78(0xD000000000000017, 0x8000000100029F00, &v104);
      *(v52 + 22) = 2080;
      v56 = sub_100026AF4();
      v58 = v57;
      v59 = *(v8 + 8);
      v60 = v91;
      v95 = v59;
      (v59)(v46, v91);
      v61 = sub_100005F78(v56, v58, &v104);

      *(v52 + 24) = v61;
      _os_log_impl(&_mh_execute_header, v48, v50, "%s %s - %s loaded from cache", v52, 0x20u);
      swift_arrayDestroy();

      v62 = v93;
      (v99)(v101, v93);
      v63 = v60;
    }

    else
    {

      v63 = v91;
      v95 = *(v8 + 8);
      (v95)(v46, v91);
      v62 = v93;
      (v35)(v39, v93);
    }

    v64 = v98;
    v65 = v103;
    sub_10001C8D4(v103);
    sub_100026894();
    v66 = v96;
    (v94)(v96, v65, v63);
    v67 = v47;
    v68 = sub_100026824();
    v69 = sub_100027304();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *v70 = 136315650;
      v71 = *&v67[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
      v72 = *&v67[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8];

      v73 = sub_100005F78(v71, v72, &v104);

      *(v70 + 4) = v73;
      *(v70 + 12) = 2080;
      *(v70 + 14) = sub_100005F78(0xD000000000000017, 0x8000000100029F00, &v104);
      *(v70 + 22) = 2080;
      v74 = sub_100026AF4();
      v76 = v75;
      v77 = v66;
      v78 = v95;
      (v95)(v77, v63);
      v79 = sub_100005F78(v74, v76, &v104);

      *(v70 + 24) = v79;
      v80 = v69;
      v81 = v78;
      _os_log_impl(&_mh_execute_header, v68, v80, "%s %s - %s loadIgnoringCache...", v70, 0x20u);
      swift_arrayDestroy();

      v82 = v98;
      v83 = v93;
    }

    else
    {

      v81 = v95;
      (v95)(v66, v63);
      v82 = v64;
      v83 = v62;
    }

    (v99)(v82, v83);
    v84 = sub_1000272A4();
    v85 = v97;
    (*(*(v84 - 8) + 56))(v97, 1, 1, v84);
    sub_100027274();
    v86 = v67;
    v87 = v92;
    v88 = sub_100027264();
    v89 = swift_allocObject();
    v89[2] = v88;
    v89[3] = &protocol witness table for MainActor;
    v89[4] = v86;
    v89[5] = v87;
    sub_100003824(0, 0, v85, &unk_1000288B8, v89);

    v81(v103, v63);
  }
}

id sub_10001C8D4(uint64_t a1)
{
  v2 = v1;
  v71 = a1;
  v3 = sub_100026834();
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v68 - v8;
  __chkstk_darwin(v7);
  v11 = v68 - v10;
  v12 = sub_10000274C(&qword_100039710, &unk_1000287B0);
  __chkstk_darwin(v12 - 8);
  v14 = v68 - v13;
  v15 = sub_100026994();
  v70 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000274C(&qword_100039830, &qword_100028358);
  __chkstk_darwin(v18 - 8);
  v20 = v68 - v19;
  v21 = &v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_bubbleDelegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_isBubbleActive] == 1)
    {
      v23 = *(v21 + 1);
      v24 = Strong;
      ObjectType = swift_getObjectType();
      v26 = *(v23 + 16);
      v27 = v71;
      v68[1] = v24;
      v69 = v26(v71, ObjectType, v23);
      v28 = *(v69 + OBJC_IVAR____TtC24PeopleMessagesScreenTime22BubbleContentContainer_contentViewController);
      if (v28)
      {
        v29 = sub_100026B04();
        v30 = *(v29 - 8);
        (*(v30 + 16))(v20, v27, v29);
        (*(v30 + 56))(v20, 0, 1, v29);
        v31 = v28;
        LOBYTE(v29) = sub_100020654(v20);
        sub_100006B20(v20, &qword_100039830, &qword_100028358);
        if (v29)
        {
          sub_1000192F4();
          v32 = v70;
        }

        else
        {
          v61 = swift_unknownObjectWeakLoadStrong();
          v32 = v70;
          v62 = v71;
          if (v61)
          {
            v63 = *(v21 + 1);
            v64 = swift_getObjectType();
            (*(v63 + 24))(v62, v64, v63);
            swift_unknownObjectRelease();
          }
        }

        result = [v31 view];
        if (result)
        {
          v65 = result;
          v66 = [objc_opt_self() clearColor];
          [v65 setBackgroundColor:v66];

          sub_1000269D4();
          v67 = *(v32 + 48);
          if (v67(v14, 1, v15) == 1)
          {
            (*(v32 + 104))(v17, enum case for MessageDetails.EventSource.unknown(_:), v15);
            if (v67(v14, 1, v15) != 1)
            {
              sub_100006B20(v14, &qword_100039710, &unk_1000287B0);
            }
          }

          else
          {
            (*(v32 + 32))(v17, v14, v15);
          }

          sub_10002000C(v31);
          swift_unknownObjectRelease();

          (*(v32 + 8))(v17, v15);
          *&v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_bubble] = v69;
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        sub_100026894();
        v52 = v2;
        v53 = sub_100026824();
        v54 = sub_100027314();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v74 = v56;
          *v55 = 136315138;
          v57 = &v52[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
          v58 = *&v52[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
          v59 = *(v57 + 1);

          v60 = sub_100005F78(v58, v59, &v74);

          *(v55 + 4) = v60;
          _os_log_impl(&_mh_execute_header, v53, v54, "%s - No bubble view controller!", v55, 0xCu);
          sub_100006044(v56);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        return (*(v72 + 8))(v11, v73);
      }
    }

    else
    {
      sub_100026894();
      v43 = v2;
      v44 = sub_100026824();
      v45 = sub_100027304();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v74 = v47;
        *v46 = 136315138;
        v48 = &v43[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
        v49 = *&v43[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
        v50 = *(v48 + 1);

        v51 = sub_100005F78(v49, v50, &v74);

        *(v46 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v44, v45, "%s has been deactivated prior to render!", v46, 0xCu);
        sub_100006044(v47);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      return (*(v72 + 8))(v9, v73);
    }
  }

  else
  {
    sub_100026894();
    v33 = v2;
    v34 = sub_100026824();
    v35 = sub_100027314();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v74 = v37;
      *v36 = 136315138;
      v38 = &v33[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
      v39 = *&v33[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
      v40 = *(v38 + 1);

      v41 = sub_100005F78(v39, v40, &v74);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "%s - Missing bubble creator!", v36, 0xCu);
      sub_100006044(v37);
    }

    return (*(v72 + 8))(v6, v73);
  }

  return result;
}

uint64_t sub_10001D124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_100027274();
  v5[3] = sub_100027264();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_10001D1E0;

  return sub_100019418(a5);
}

uint64_t sub_10001D1E0()
{

  v1 = sub_100027244();

  return _swift_task_switch(sub_10001D31C, v1, v0);
}

uint64_t sub_10001D31C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001D3E4(void *a1)
{
  v3 = sub_100026834();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026894();
  v7 = a1;
  v8 = v1;
  v9 = sub_100026824();
  v10 = sub_100027304();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = v3;
    v12 = v11;
    v22 = swift_slowAlloc();
    v25 = v22;
    *v12 = 136315650;
    v13 = *&v8[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
    v14 = *&v8[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8];

    v15 = sub_100005F78(v13, v14, &v25);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100005F78(0xD000000000000013, 0x8000000100029EC0, &v25);
    *(v12 + 22) = 2080;
    v24 = a1;
    v16 = v7;
    sub_10000274C(&qword_100039D70, &qword_1000288A8);
    v17 = sub_100027174();
    v19 = sub_100005F78(v17, v18, &v25);

    *(v12 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s  %s %s", v12, 0x20u);
    swift_arrayDestroy();

    result = (*(v4 + 8))(v6, v23);
    if (a1)
    {
      return result;
    }
  }

  else
  {

    result = (*(v4 + 8))(v6, v3);
    if (a1)
    {
      return result;
    }
  }

  v8[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_isBubbleActive] = 0;
  v21 = *&v8[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_messageDetailsLoader];
  if (*(v21 + 128))
  {
    sub_100026B04();

    sub_10000274C(&qword_100039848, &qword_100028370);
    sub_1000272C4();
  }

  *(v21 + 128) = 0;

  sub_1000192F4();
  *&v8[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_bubble] = 0;
}