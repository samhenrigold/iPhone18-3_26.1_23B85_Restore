uint64_t variable initialization expression of ImageCache.directoryURL@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000243D0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id variable initialization expression of ImageCache.ramCache()
{
  v0 = objc_allocWithZone(NSCache);

  return [v0 init];
}

__n128 sub_100001B50(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001B60(uint64_t a1, int a2)
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

uint64_t sub_100001B80(uint64_t result, int a2, int a3)
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

uint64_t sub_100001BC4(uint64_t a1, id *a2)
{
  result = sub_100024E90();
  *a2 = 0;
  return result;
}

uint64_t sub_100001C3C(uint64_t a1, id *a2)
{
  v3 = sub_100024EA0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100001CBC@<X0>(uint64_t *a1@<X8>)
{
  sub_100024EB0();
  v2 = sub_100024E80();

  *a1 = v2;
  return result;
}

uint64_t sub_100001D00()
{
  sub_100024EB0();
  v0 = sub_100024F60();

  return v0;
}

uint64_t sub_100001D3C(uint64_t a1)
{
  sub_100024EB0();
  sub_100024EF0();
}

Swift::Int sub_100001D90(uint64_t a1)
{
  sub_100024EB0();
  sub_100025210();
  sub_100024EF0();
  v1 = sub_100025230();

  return v1;
}

uint64_t sub_100001E04(void *a1, uint64_t *a2)
{
  v2 = sub_100024EB0();
  v4 = v3;
  if (v2 == sub_100024EB0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000251B0();
  }

  return v7 & 1;
}

uint64_t sub_100001E8C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_100024E80();

  *a2 = v3;
  return result;
}

uint64_t sub_100001ED4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100024EB0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_100001F14(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100001F60(uint64_t a1)
{
  v2 = sub_100002060(&qword_1000351D0, &unk_100026D88);
  v3 = sub_100002060(&qword_1000351D8, &unk_100026D28);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002060(unint64_t *a1, uint64_t a2)
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

uint64_t sub_1000020D8()
{
  v0 = sub_10000269C(&qword_100035348, &qword_100027000);
  sub_100006350(v0, qword_1000366C0);
  sub_1000062D0(v0, qword_1000366C0);
  v1 = [objc_opt_self() hours];
  sub_1000063B4();
  return sub_1000242C0();
}

void sub_100002174()
{
  type metadata accessor for ImageCache(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_directoryURL;
  v2 = sub_1000243D0();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_hasRunCleanup) = 0;
  v3 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_ramCache;
  *(v0 + v3) = [objc_allocWithZone(NSCache) init];
  sub_100003C38();
  sub_100004408();
  v4 = *(v0 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_ramCache);
  [v4 setCountLimit:30];

  static ImageCache.sharedInstance = v0;
}

uint64_t *ImageCache.sharedInstance.unsafeMutableAddressor()
{
  if (qword_100035088 != -1)
  {
    swift_once();
  }

  return &static ImageCache.sharedInstance;
}

uint64_t static ImageCache.sharedInstance.getter()
{
  if (qword_100035088 != -1)
  {
    swift_once();
  }
}

uint64_t ImageCache.addToCache(_:image:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = sub_1000244D0();
  v7 = *(v35 - 8);
  __chkstk_darwin(v35);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000269C(&qword_1000351E0, &qword_100026E30);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v32 = v4;
  v13 = *(v4 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_ramCache);
  v14 = objc_allocWithZone(NSString);
  v15 = sub_100024E80();
  v16 = [v14 initWithString:v15];

  v17 = [v13 objectForKey:v16];
  if (v17)
  {

    sub_100024530();

    v18 = sub_1000244C0();
    v19 = sub_100025070();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1000056C8(a1, a2, &v36);
      _os_log_impl(&_mh_execute_header, v18, v19, "%s already in ram cache", v20, 0xCu);
      sub_100005794(v21);
    }

    return (*(v7 + 8))(v9, v35);
  }

  else
  {
    v24 = v33;
    v23 = v34;
    isa = sub_1000243F0().super.isa;
    v26 = objc_allocWithZone(NSString);
    v27 = sub_100024E80();
    v28 = [v26 initWithString:v27];

    [v13 setObject:isa forKey:v28];
    v29 = sub_100025000();
    (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v32;
    v30[5] = a1;
    v30[6] = a2;
    v30[7] = v24;
    v30[8] = v23;

    sub_100003274(v24, v23);
    sub_100002F74(0, 0, v12, &unk_100026E40, v30);
  }
}

uint64_t sub_10000269C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000026E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  v9 = sub_1000244D0();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  sub_10000269C(&qword_1000351F0, &qword_100027160);
  v8[15] = swift_task_alloc();
  v10 = sub_1000243D0();
  v8[16] = v10;
  v8[17] = *(v10 - 8);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();

  return _swift_task_switch(sub_10000287C, 0, 0);
}

uint64_t sub_10000287C()
{
  v42 = v0;
  v2 = v0 + 16;
  v1 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[5];
  v6 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_directoryURL;
  swift_beginAccess();
  sub_100005934(v5 + v6, v4, &qword_1000351F0, &qword_100027160);
  if ((*(v3 + 48))(v4, 1, v1))
  {
    v7 = v0 + 14;
    sub_100006270(v0[15], &qword_1000351F0, &qword_100027160);
    sub_100024530();
    v8 = sub_1000244C0();
    v9 = sub_100025080();
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
    sub_100006270(v18, &qword_1000351F0, &qword_100027160);
    sub_1000243A0();
    v19 = *(v16 + 8);
    v19(v14, v17);
    (*(v16 + 32))(v37, v15, v17);
    sub_100024530();
    v34(v39, v37, v17);
    v20 = sub_1000244C0();
    v38 = sub_100025070();
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
      v32 = sub_100024370();
      log = v20;
      v28 = v27;
      v19(v22, v23);
      v29 = sub_1000056C8(v32, v28, &v41);

      *(v26 + 4) = v29;
      _os_log_impl(&_mh_execute_header, log, v38, "Attempting to cache image to file at url %s", v26, 0xCu);
      sub_100005794(v35);

      (*(v25 + 8))(v36, v40);
    }

    else
    {

      v19(v22, v23);
      (*(v25 + 8))(v24, v40);
    }

    sub_100024410();
    v13 = v19;
  }

  v13(*v7, *v2);

  v30 = v0[1];

  return v30();
}

uint64_t sub_100002D00()
{
  swift_unknownObjectRelease();

  sub_100002D50(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100002D50(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100002DA4(uint64_t a1)
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
  v11[1] = sub_100002E80;

  return sub_1000026E4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100002E80()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000269C(&qword_1000351E0, &qword_100026E30);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100005934(a3, v25 - v10, &qword_1000351E0, &qword_100026E30);
  v12 = sub_100025000();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100006270(v11, &qword_1000351E0, &qword_100026E30);
  }

  else
  {
    sub_100024FF0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100024FA0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100024EE0() + 32;
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

      sub_100006270(a3, &qword_1000351E0, &qword_100026E30);

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

  sub_100006270(a3, &qword_1000351E0, &qword_100026E30);
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

uint64_t sub_100003274(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000032C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000269C(&qword_1000351E0, &qword_100026E30);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100005934(a3, v25 - v10, &qword_1000351E0, &qword_100026E30);
  v12 = sub_100025000();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100006270(v11, &qword_1000351E0, &qword_100026E30);
  }

  else
  {
    sub_100024FF0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100024FA0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100024EE0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_10000269C(&qword_100035328, &qword_100026EA0);
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

      sub_100006270(a3, &qword_1000351E0, &qword_100026E30);

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

  sub_100006270(a3, &qword_1000351E0, &qword_100026E30);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10000269C(&qword_100035328, &qword_100026EA0);
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
  v5 = sub_10000269C(&qword_1000351F0, &qword_100027160);
  __chkstk_darwin(v5 - 8);
  v59 = (v51 - v6);
  v55 = sub_1000243D0();
  v57 = *(v55 - 8);
  v7 = __chkstk_darwin(v55);
  v54 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v53 = v51 - v10;
  __chkstk_darwin(v9);
  v12 = v51 - v11;
  v13 = sub_1000244D0();
  v60 = *(v13 - 8);
  v61 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = v51 - v18;
  __chkstk_darwin(v17);
  v21 = v51 - v20;
  v56 = v2;
  v22 = *(v2 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_ramCache);
  v23 = objc_allocWithZone(NSString);
  v58 = a1;
  v24 = sub_100024E80();
  v25 = [v23 initWithString:v24];

  v26 = v22;
  v27 = [v22 objectForKey:v25];

  if (v27)
  {
    v28 = sub_100024400();

    sub_100024530();

    v29 = sub_1000244C0();
    v30 = sub_100025070();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v62[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1000056C8(v58, a2, v62);
      _os_log_impl(&_mh_execute_header, v29, v30, "%s found in ram cache", v31, 0xCu);
      sub_100005794(v32);
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
    v36 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_directoryURL;
    v37 = v56;
    swift_beginAccess();
    v38 = v37 + v36;
    v39 = v59;
    sub_100005934(v38, v59, &qword_1000351F0, &qword_100027160);
    v40 = v57;
    v41 = v55;
    if ((*(v57 + 48))(v39, 1, v55))
    {
      sub_100006270(v59, &qword_1000351F0, &qword_100027160);
      sub_100024530();
      v42 = sub_1000244C0();
      v43 = sub_100025080();
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
      sub_100006270(v45, &qword_1000351F0, &qword_100027160);
      sub_1000243A0();
      v59 = *(v40 + 8);
      (v59)(v35, v41);
      (*(v40 + 32))(v52, v34, v41);
      v28 = sub_1000243E0();
      isa = sub_1000243F0().super.isa;
      v47 = objc_allocWithZone(NSString);
      v48 = sub_100024E80();
      v49 = [v47 initWithString:v48];

      [v51[0] setObject:isa forKey:v49];
      (v59)(v52, v41);
    }
  }

  return v28;
}

uint64_t sub_100003C38()
{
  v66 = sub_1000244D0();
  v63 = *(v66 - 8);
  v1 = __chkstk_darwin(v66);
  v58 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v65 = &v57 - v3;
  v4 = sub_1000243D0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v57 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = &v57 - v8;
  v9 = sub_10000269C(&qword_1000351F0, &qword_100027160);
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
  v23 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_directoryURL;
  swift_beginAccess();
  v61 = v0;
  v64 = v23;
  sub_100005934(v0 + v23, v22, &qword_1000351F0, &qword_100027160);
  v62 = v5;
  v24 = *(v5 + 48);
  LODWORD(v23) = v24(v22, 1, v4);
  result = sub_100006270(v22, &qword_1000351F0, &qword_100027160);
  if (v23 == 1)
  {
    sub_1000244E0();
    v26 = v24;
    if (v24(v17, 1, v4) == 1)
    {
      sub_100006270(v17, &qword_1000351F0, &qword_100027160);
      v27 = 1;
      v28 = v66;
      v29 = v62;
    }

    else
    {
      sub_1000243A0();
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
    sub_100006400(v20, v31 + v32);
    swift_endAccess();
    sub_100005934(v31 + v32, v14, &qword_1000351F0, &qword_100027160);
    if (v26(v14, 1, v4) == 1)
    {
      sub_100006270(v14, &qword_1000351F0, &qword_100027160);
    }

    else
    {
      (*(v29 + 32))(v30, v14, v4);
      v33 = [objc_opt_self() defaultManager];
      sub_100024390(v34);
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
        sub_100024350();

        swift_willThrow();
        v41 = v58;
        sub_100024530();
        v67 = 0;
        v68 = 0xE000000000000000;
        swift_errorRetain();
        sub_100025140(34);

        v67 = 0xD00000000000001CLL;
        v68 = 0x8000000100026300;
        v69._countAndFlagsBits = sub_100024370();
        sub_100024F40(v69);

        v70._countAndFlagsBits = 1076174906;
        v70._object = 0xE400000000000000;
        sub_100024F40(v70);
        sub_1000244B0();

        v42 = v41;
        v28 = v66;
        (*(v63 + 8))(v42, v66);
        (*(v29 + 8))(v30, v4);
      }
    }

    v43 = v65;
    sub_100024530();

    v44 = sub_1000244C0();
    v45 = sub_100025070();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v67 = v47;
      *v46 = 136315138;
      v48 = v59;
      sub_100005934(v31 + v64, v59, &qword_1000351F0, &qword_100027160);
      if (v26(v48, 1, v4))
      {
        sub_100006270(v48, &qword_1000351F0, &qword_100027160);
        v49 = 0xE300000000000000;
        v50 = 7104878;
      }

      else
      {
        v51 = v57;
        (*(v29 + 16))(v57, v48, v4);
        sub_100006270(v48, &qword_1000351F0, &qword_100027160);
        v52 = sub_100024370();
        v53 = v4;
        v54 = v52;
        v49 = v55;
        (*(v29 + 8))(v51, v53);
        v50 = v54;
      }

      v56 = sub_1000056C8(v50, v49, &v67);

      *(v46 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v44, v45, "Root folder %s", v46, 0xCu);
      sub_100005794(v47);

      return (*(v63 + 8))(v65, v66);
    }

    else
    {

      return (*(v63 + 8))(v43, v28);
    }
  }

  return result;
}

uint64_t sub_100004408()
{
  v90 = sub_1000244D0();
  v89 = *(v90 - 8);
  v1 = __chkstk_darwin(v90);
  v88 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v103 = &v79 - v4;
  __chkstk_darwin(v3);
  v6 = &v79 - v5;
  v7 = sub_10000269C(&qword_100035330, &qword_100026EB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v79 - v8;
  v10 = sub_100024450();
  v87 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v98 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v108 = &v79 - v14;
  __chkstk_darwin(v13);
  v107 = &v79 - v15;
  v16 = sub_10000269C(&qword_100035338, &qword_100026EB8);
  __chkstk_darwin(v16 - 8);
  v109 = &v79 - v17;
  v101 = sub_100024340();
  v86 = *(v101 - 8);
  __chkstk_darwin(v101);
  v110 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000269C(&qword_1000351F0, &qword_100027160);
  __chkstk_darwin(v19 - 8);
  v21 = &v79 - v20;
  v22 = sub_1000243D0();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = &v79 - v28;
  result = __chkstk_darwin(v27);
  v32 = &v79 - v31;
  if ((*(v0 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_hasRunCleanup) & 1) == 0)
  {
    v82 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_hasRunCleanup;
    v106 = v9;
    v33 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_directoryURL;
    swift_beginAccess();
    v83 = v0;
    sub_100005934(v0 + v33, v21, &qword_1000351F0, &qword_100027160);
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {
      return sub_100006270(v21, &qword_1000351F0, &qword_100027160);
    }

    v79 = v6;
    (*(v23 + 32))(v32, v21, v22);
    v34 = [objc_opt_self() defaultManager];
    v100 = sub_10000269C(&qword_100035340, &unk_100026EC0);
    v35 = swift_allocObject();
    v99 = xmmword_100026E20;
    *(v35 + 16) = xmmword_100026E20;
    *(v35 + 32) = NSURLContentModificationDateKey;
    v36 = NSURLContentModificationDateKey;
    v81 = v32;
    sub_100024360();
    sub_100024390(v37);
    v39 = v38;
    v102 = v23;
    v40 = *(v23 + 8);
    v104 = v23 + 8;
    v105 = v40;
    v40(v29, v22);
    type metadata accessor for URLResourceKey(0);
    v41 = v22;
    isa = sub_100024F80().super.isa;

    v111[0] = 0;
    v85 = v34;
    v43 = [v34 contentsOfDirectoryAtURL:v39 includingPropertiesForKeys:isa options:4 error:v111];

    v44 = v111[0];
    if (v43)
    {
      v45 = sub_100024F90();
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
          sub_100006020(inited);
          swift_setDeallocating();
          sub_100006214(inited + 32);
          v56 = v109;
          sub_100024380();

          (*v96)(v56, 0, 1, v48);
          v57 = v110;
          (*v92)();
          v58 = v106;
          sub_100024330();
          if ((*v91)(v58, 1, v10) == 1)
          {
            (*v51)(v57, v48);
            v47 = v52;
            v105(v26, v52);
            sub_100006270(v58, &qword_100035330, &qword_100026EB0);
          }

          else
          {
            v59 = v107;
            (*v84)(v107, v58, v10);
            v47 = v52;
            if (qword_100035080 != -1)
            {
              swift_once();
            }

            v60 = sub_10000269C(&qword_100035348, &qword_100027000);
            sub_1000062D0(v60, qword_1000366C0);
            v61 = v108;
            sub_100024430();
            v62 = v98;
            sub_100024440();
            sub_100006308(&qword_100035350, &type metadata accessor for Date, &protocol conformance descriptor for Date);
            if (sub_100024E60())
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
              sub_100024390(v63);
              v67 = v66;
              v111[0] = 0;
              v68 = [v85 removeItemAtURL:v66 error:v111];

              if (!v68)
              {
                v71 = v111[0];
                sub_100024350();

                swift_willThrow();
                v72 = v88;
                sub_100024530();
                v111[0] = 0;
                v111[1] = 0xE000000000000000;
                swift_errorRetain();
                sub_100025140(20);

                strcpy(v111, "Failed delete ");
                HIBYTE(v111[1]) = -18;
                sub_100006308(&qword_100035358, &type metadata accessor for URL, &protocol conformance descriptor for URL);
                v112._countAndFlagsBits = sub_1000251A0();
                sub_100024F40(v112);

                v113._countAndFlagsBits = 1076174906;
                v113._object = 0xE400000000000000;
                sub_100024F40(v113);
                sub_1000244B0();

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
      sub_100024350();

      swift_willThrow();

      v75 = v103;
      sub_100024530();
      v76 = sub_1000244C0();
      v77 = sub_100025070();
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
  sub_100006270(v0 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_directoryURL, &qword_1000351F0, &qword_100027160);

  return v0;
}

uint64_t ImageCache.__deallocating_deinit()
{
  sub_100006270(v0 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy10ImageCache_directoryURL, &qword_1000351F0, &qword_100027160);

  return swift_deallocClassInstance();
}

uint64_t sub_1000053E0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100006594;

  return v6(a1);
}

uint64_t sub_1000054D8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000055D0;

  return v6(a1);
}

uint64_t sub_1000055D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1000056C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100005B44(v11, 0, 0, 1, a1, a2);
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
    sub_100006470(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005794(v11);
  return v7;
}

uint64_t sub_100005794(void *a1)
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
  result = qword_100035230;
  if (!qword_100035230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100005834(uint64_t a1)
{
  sub_1000058DC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000058DC(uint64_t a1)
{
  if (!qword_100035240)
  {
    sub_1000243D0();
    v1 = sub_100025100();
    if (!v2)
    {
      atomic_store(v1, &qword_100035240);
    }
  }
}

uint64_t sub_100005934(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000269C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000599C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000059D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006598;

  return sub_1000054D8(a1, v4);
}

uint64_t sub_100005A8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002E80;

  return sub_1000054D8(a1, v4);
}

unint64_t sub_100005B44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100005C50(a5, a6);
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
    result = sub_100025160();
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

char *sub_100005C50(uint64_t a1, unint64_t a2)
{
  v3 = sub_100005C9C(a1, a2);
  sub_100005DCC(&off_100031320);
  return v3;
}

char *sub_100005C9C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100005EB8(v5, 0);
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

  result = sub_100025160();
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
        v10 = sub_100024F50();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100005EB8(v10, 0);
        result = sub_100025130();
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

uint64_t sub_100005DCC(uint64_t result)
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

  result = sub_100005F2C(result, v11, 1, v3);
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

void *sub_100005EB8(uint64_t a1, uint64_t a2)
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

  sub_10000269C(&qword_100035370, &qword_100026ED8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100005F2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000269C(&qword_100035370, &qword_100026ED8);
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

void *sub_100006020(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000269C(&qword_100035368, &qword_100026ED0);
    v3 = sub_100025120();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_100024EB0();
      sub_100025210();
      v27 = v7;
      sub_100024EF0();
      v8 = sub_100025230();

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
        v16 = sub_100024EB0();
        v18 = v17;
        if (v16 == sub_100024EB0() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_1000251B0();

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

uint64_t sub_100006214(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006270(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000269C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000062D0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100006308(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_100006350(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1000063B4()
{
  result = qword_100035360;
  if (!qword_100035360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100035360);
  }

  return result;
}

uint64_t sub_100006400(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000269C(&qword_1000351F0, &qword_100027160);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006470(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000064D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006598;

  return sub_1000053E0(a1, v4);
}

id sub_10000659C()
{
  v1 = v0;
  v2 = sub_1000244D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
  v6 = *&v1[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8];

  sub_100024530();

  v8 = sub_1000244C0();
  v9 = sub_100025070();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    v12 = sub_1000056C8(v7, v6, &v16);

    *(v10 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "RequestMessageViewController deinit %s", v10, 0xCu);
    sub_100005794(v11);
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

void sub_100006844()
{
  v0 = sub_100024E80();
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

  v1 = sub_100024400();
  v4 = v3;

LABEL_6:
  qword_1000366E0 = v1;
  qword_1000366E8 = v4;
}

uint64_t sub_1000069D0()
{
  v1 = v0;
  v2 = sub_100024500();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 activeConversation];
  if (!v6 || (v7 = v6, (*(v3 + 104))(v5, enum case for PeopleURL.Parameter.requestID(_:), v2), v8 = sub_100010494(v5), v10 = v9, v7, (*(v3 + 8))(v5, v2), !v10))
  {

    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = &v1[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
  *v11 = v8;
  v11[1] = v10;
}

id sub_100006B28()
{
  v1 = sub_1000244D0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024530();
  v5 = v0;
  v6 = sub_1000244C0();
  v7 = sub_100025070();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = *&v5[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
    v11 = *&v5[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8];

    v12 = sub_1000056C8(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failure balloon %s", v8, 0xCu);
    sub_100005794(v9);
  }

  (*(v2 + 8))(v4, v1);
  v5[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_initialLoadError] = 1;
  return [v5 requestResize];
}

uint64_t sub_100006D0C()
{
  v1 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_eventNotifier;
  swift_beginAccess();
  sub_100005934(v0 + v1, &v8, &qword_100035420, &qword_100027030);
  if (*(&v9 + 1))
  {
    sub_10000E544(&v8, v5);
    sub_100006270(&v8, &qword_100035420, &qword_100027030);
    v2 = v6;
    v3 = v7;
    sub_10000E5A8(v5, v6);
    (*(v3 + 8))(v2, v3);
    sub_100005794(v5);
  }

  else
  {
    sub_100006270(&v8, &qword_100035420, &qword_100027030);
  }

  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  swift_beginAccess();
  sub_10000E4D4(&v8, v0 + v1);
  return swift_endAccess();
}

double sub_100006E30(double a1, double a2)
{
  v5 = sub_1000244D0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024530();
  v9 = v2;
  v10 = sub_1000244C0();
  v11 = sub_100025070();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v12 = 136315906;
    v13 = *&v9[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
    v14 = *&v9[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8];

    v15 = sub_1000056C8(v13, v14, &v33);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1000056C8(0xD000000000000017, 0x80000001000265D0, &v33);
    *(v12 + 22) = 2048;
    *(v12 + 24) = a1;
    *(v12 + 32) = 2048;
    *(v12 + 34) = a2;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s  %s! size: %f x %f", v12, 0x2Au);
    swift_arrayDestroy();
  }

  (*(v6 + 8))(v8, v5);
  if ((v9[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_initialLoadError] & 1) == 0)
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
    v24 = *&v9[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_bubble];
    if (v24)
    {
      v25 = *(v24 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_contentViewController);
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

void sub_100007194(void *a1)
{
  v3 = sub_10000269C(&qword_1000351E0, &qword_100026E30);
  __chkstk_darwin(v3 - 8);
  v97 = &v90 - v4;
  v5 = sub_10000269C(&qword_1000353F0, &unk_100027140);
  __chkstk_darwin(v5 - 8);
  v99 = &v90 - v6;
  v7 = sub_1000247B0();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v96 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v95 = &v90 - v12;
  __chkstk_darwin(v11);
  v103 = &v90 - v13;
  v14 = sub_1000244D0();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v94 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v98 = &v90 - v19;
  v20 = __chkstk_darwin(v18);
  v101 = &v90 - v21;
  __chkstk_darwin(v20);
  v23 = &v90 - v22;
  sub_100024530();
  v24 = v1;
  v25 = sub_1000244C0();
  v26 = sub_100025070();

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
    v33 = *&v24[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
    v32 = *&v24[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8];

    v34 = sub_1000056C8(v33, v32, &v104);
    a1 = v31;
    v7 = v30;
    v14 = v29;

    *(v28 + 4) = v34;
    v8 = v100;
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_1000056C8(0xD000000000000017, 0x8000000100026580, &v104);
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
  v24[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_isBubbleActive] = 1;
  v37 = v99;
  sub_10000A390(a1, v99);
  v38 = (*(v8 + 48))(v37, 1, v7);
  v39 = v101;
  if (v38 == 1)
  {
    sub_100006270(v37, &qword_1000353F0, &unk_100027140);
    v40 = sub_100024510();
    v41 = v94;
    sub_100024530();
    v104 = 0;
    v105 = 0xE000000000000000;
    v42 = v40;
    sub_100025140(37);
    v44 = *&v24[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
    v43 = *&v24[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8];

    v104 = v44;
    v105 = v43;
    v107._countAndFlagsBits = 32;
    v107._object = 0xE100000000000000;
    sub_100024F40(v107);
    v108._object = 0x8000000100026580;
    v108._countAndFlagsBits = 0xD000000000000017;
    sub_100024F40(v108);
    v109._countAndFlagsBits = 0xD000000000000020;
    v109._object = 0x80000001000265A0;
    sub_100024F40(v109);
    sub_1000244B0();

    (v35)(v41, v14);
    sub_100006B28();
  }

  else
  {
    v93 = v14;
    v45 = v103;
    (*(v8 + 32))(v103, v37, v7);
    sub_100024530();
    v46 = v95;
    v94 = *(v8 + 16);
    (v94)(v95, v45, v7);
    v47 = v24;
    v48 = sub_1000244C0();
    v49 = sub_100025070();
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
      v53 = *&v47[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
      v54 = *&v47[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8];

      v55 = sub_1000056C8(v53, v54, &v104);

      *(v52 + 4) = v55;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_1000056C8(0xD000000000000017, 0x8000000100026580, &v104);
      *(v52 + 22) = 2080;
      v56 = sub_100024790();
      v58 = v57;
      v59 = *(v8 + 8);
      v60 = v91;
      v95 = v59;
      (v59)(v46, v91);
      v61 = sub_1000056C8(v56, v58, &v104);

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
    sub_100007C6C(v103);
    sub_100024530();
    v66 = v96;
    (v94)(v96, v65, v63);
    v67 = v47;
    v68 = sub_1000244C0();
    v69 = sub_100025070();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *v70 = 136315650;
      v71 = *&v67[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
      v72 = *&v67[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8];

      v73 = sub_1000056C8(v71, v72, &v104);

      *(v70 + 4) = v73;
      *(v70 + 12) = 2080;
      *(v70 + 14) = sub_1000056C8(0xD000000000000017, 0x8000000100026580, &v104);
      *(v70 + 22) = 2080;
      v74 = sub_100024790();
      v76 = v75;
      v77 = v66;
      v78 = v95;
      (v95)(v77, v63);
      v79 = sub_1000056C8(v74, v76, &v104);

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
    v84 = sub_100025000();
    v85 = v97;
    (*(*(v84 - 8) + 56))(v97, 1, 1, v84);
    sub_100024FD0();
    v86 = v67;
    v87 = v92;
    v88 = sub_100024FC0();
    v89 = swift_allocObject();
    v89[2] = v88;
    v89[3] = &protocol witness table for MainActor;
    v89[4] = v86;
    v89[5] = v87;
    sub_100002F74(0, 0, v85, &unk_100027048, v89);

    v81(v103, v63);
  }
}

id sub_100007C6C(uint64_t a1)
{
  v2 = v1;
  v71 = a1;
  v3 = sub_1000244D0();
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v68 - v8;
  __chkstk_darwin(v7);
  v11 = v68 - v10;
  v12 = sub_10000269C(&qword_1000353E8, &unk_100026FE0);
  __chkstk_darwin(v12 - 8);
  v14 = v68 - v13;
  v15 = sub_100024630();
  v70 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000269C(&qword_1000353F0, &unk_100027140);
  __chkstk_darwin(v18 - 8);
  v20 = v68 - v19;
  v21 = &v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_bubbleDelegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_isBubbleActive] == 1)
    {
      v23 = *(v21 + 1);
      v24 = Strong;
      ObjectType = swift_getObjectType();
      v26 = *(v23 + 16);
      v27 = v71;
      v68[1] = v24;
      v69 = v26(v71, ObjectType, v23);
      v28 = *(v69 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_contentViewController);
      if (v28)
      {
        v29 = sub_1000247B0();
        v30 = *(v29 - 8);
        (*(v30 + 16))(v20, v27, v29);
        (*(v30 + 56))(v20, 0, 1, v29);
        v31 = v28;
        LOBYTE(v29) = sub_10000DB50(v20);
        sub_100006270(v20, &qword_1000353F0, &unk_100027140);
        if (v29)
        {
          sub_100006D0C();
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

          sub_100024670();
          v67 = *(v32 + 48);
          if (v67(v14, 1, v15) == 1)
          {
            (*(v32 + 104))(v17, enum case for MessageDetails.EventSource.unknown(_:), v15);
            if (v67(v14, 1, v15) != 1)
            {
              sub_100006270(v14, &qword_1000353E8, &unk_100026FE0);
            }
          }

          else
          {
            (*(v32 + 32))(v17, v14, v15);
          }

          sub_10000D498(v31);
          swift_unknownObjectRelease();

          (*(v32 + 8))(v17, v15);
          *&v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_bubble] = v69;
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        sub_100024530();
        v52 = v2;
        v53 = sub_1000244C0();
        v54 = sub_100025080();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v74 = v56;
          *v55 = 136315138;
          v57 = &v52[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
          v58 = *&v52[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
          v59 = *(v57 + 1);

          v60 = sub_1000056C8(v58, v59, &v74);

          *(v55 + 4) = v60;
          _os_log_impl(&_mh_execute_header, v53, v54, "%s - No bubble view controller!", v55, 0xCu);
          sub_100005794(v56);

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
      sub_100024530();
      v43 = v2;
      v44 = sub_1000244C0();
      v45 = sub_100025070();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v74 = v47;
        *v46 = 136315138;
        v48 = &v43[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
        v49 = *&v43[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
        v50 = *(v48 + 1);

        v51 = sub_1000056C8(v49, v50, &v74);

        *(v46 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v44, v45, "%s has been deactivated prior to render!", v46, 0xCu);
        sub_100005794(v47);

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
    sub_100024530();
    v33 = v2;
    v34 = sub_1000244C0();
    v35 = sub_100025080();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v74 = v37;
      *v36 = 136315138;
      v38 = &v33[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
      v39 = *&v33[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
      v40 = *(v38 + 1);

      v41 = sub_1000056C8(v39, v40, &v74);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "%s - Missing bubble creator!", v36, 0xCu);
      sub_100005794(v37);
    }

    return (*(v72 + 8))(v6, v73);
  }

  return result;
}

uint64_t sub_1000084BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_100024FD0();
  v5[3] = sub_100024FC0();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_100008578;

  return sub_10000877C(a5);
}

uint64_t sub_100008578()
{

  v1 = sub_100024FA0();

  return _swift_task_switch(sub_1000086B4, v1, v0);
}

uint64_t sub_1000086B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000877C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_100024FB0();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1000244D0();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = sub_1000247B0();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  sub_10000269C(&qword_1000351F0, &qword_100027160);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v6 = sub_1000243D0();
  v2[21] = v6;
  v2[22] = *(v6 - 8);
  v2[23] = swift_task_alloc();
  v7 = sub_100024500();
  v2[24] = v7;
  v2[25] = *(v7 - 8);
  v2[26] = swift_task_alloc();
  sub_100024FD0();
  v2[27] = sub_100024FC0();
  v9 = sub_100024FA0();
  v2[28] = v9;
  v2[29] = v8;

  return _swift_task_switch(sub_100008A60, v9, v8);
}

uint64_t sub_100008A60()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  (*(v2 + 104))(v1, enum case for PeopleURL.Parameter.requestID(_:), v3);
  v4 = sub_100010494(v1);
  v6 = v5;
  *(v0 + 240) = v4;
  *(v0 + 248) = v5;
  (*(v2 + 8))(v1, v3);
  if (!v6)
  {

    sub_100024530();
    v11 = sub_1000244C0();
    v12 = sub_100025080();
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
    sub_1000243B0();

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
  sub_10000DAE0(v25, v24);
  if ((*(v22 + 48))(v24, 1, v23) == 1)
  {

LABEL_11:
    sub_100006270(*(v0 + 160), &qword_1000351F0, &qword_100027160);
    sub_100024530();
    v11 = sub_1000244C0();
    v12 = sub_100025080();
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
  *(v0 + 256) = *(v30 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_messageDetailsLoader);
  v31 = sub_10000EC08(v29, v4, v6);
  *(v0 + 264) = v31;
  v32 = swift_task_alloc();
  *(v0 + 272) = v32;
  v33 = sub_10000269C(&qword_1000353D8, &qword_100026FD0);
  *(v0 + 280) = v33;
  *v32 = v0;
  v32[1] = sub_100008ECC;
  v34 = *(v0 + 144);
  v35 = *(v0 + 120);

  return Task.value.getter(v34, v31, v35, v33, &protocol self-conformance witness table for Error);
}

uint64_t sub_100008ECC()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_100009164;
  }

  else
  {

    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_100008FF4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100008FF4()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];

  sub_100007C6C(v1);
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

uint64_t sub_100009164()
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
    sub_100024530();
    v5 = sub_1000244C0();
    v6 = sub_100025070();
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
    sub_100024530();
    swift_errorRetain();
    v16 = v15;
    v17 = sub_1000244C0();
    v18 = sub_100025070();

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
      v23 = *(v19 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID);
      v22 = *(v19 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8);

      v24 = sub_1000056C8(v23, v22, &v41);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_1000056C8(0xD000000000000027, 0x80000001000264C0, &v41);
      *(v20 + 22) = 2112;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 24) = v25;
      *v21 = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s  %s error loading full bubble: %@", v20, 0x20u);
      sub_100006270(v21, &qword_1000353E0, &qword_100026FD8);

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

    sub_10000EEBC(1, v0[17]);
    v30 = v0[16];
    v29 = v0[17];
    v31 = v0[15];

    sub_100007C6C(v29);

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

uint64_t sub_100009770(void *a1)
{
  v3 = sub_1000244D0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024530();
  v7 = a1;
  v8 = v1;
  v9 = sub_1000244C0();
  v10 = sub_100025070();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = v3;
    v12 = v11;
    v22 = swift_slowAlloc();
    v25 = v22;
    *v12 = 136315650;
    v13 = *&v8[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
    v14 = *&v8[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8];

    v15 = sub_1000056C8(v13, v14, &v25);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1000056C8(0xD000000000000013, 0x8000000100026540, &v25);
    *(v12 + 22) = 2080;
    v24 = a1;
    v16 = v7;
    sub_10000269C(&qword_100035428, &qword_100027038);
    v17 = sub_100024ED0();
    v19 = sub_1000056C8(v17, v18, &v25);

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

  v8[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_isBubbleActive] = 0;
  v21 = *&v8[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_messageDetailsLoader];
  if (*(v21 + 128))
  {
    sub_1000247B0();

    sub_10000269C(&qword_1000353D8, &qword_100026FD0);
    sub_100025020();
  }

  *(v21 + 128) = 0;

  sub_100006D0C();
  *&v8[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_bubble] = 0;
}

uint64_t sub_100009AFC(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RequestMessageViewController();
  objc_msgSendSuper2(&v5, "willResignActiveWithConversation:", a1);
  v1[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_isBubbleActive] = 0;
  v3 = *&v1[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_messageDetailsLoader];
  if (*(v3 + 128))
  {
    sub_1000247B0();

    sub_10000269C(&qword_1000353D8, &qword_100026FD0);
    sub_100025020();
  }

  *(v3 + 128) = 0;

  return sub_100006D0C();
}

void sub_100009C30(uint64_t a1)
{
  v3 = sub_1000244D0();
  v60 = *(v3 - 8);
  v61 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v55 - v8;
  __chkstk_darwin(v7);
  v11 = &v55 - v10;
  v12 = sub_10000269C(&qword_1000353F0, &unk_100027140);
  __chkstk_darwin(v12 - 8);
  v14 = &v55 - v13;
  v15 = sub_1000247B0();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v55 - v20;
  v22 = type metadata accessor for RequestMessageViewController();
  v63.receiver = v1;
  v63.super_class = v22;
  objc_msgSendSuper2(&v63, "didTransitionToPresentationStyle:", a1);
  v23 = [v1 activeConversation];
  if (v23)
  {
    v24 = v23;
    sub_10000A390(v23, v14);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_100006270(v14, &qword_1000353F0, &unk_100027140);
      sub_100024530();
      v25 = v1;
      v26 = sub_1000244C0();
      v27 = sub_100025070();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = v24;
        v29 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v29 = 136315394;
        v30 = *&v25[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
        v31 = *&v25[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8];

        v32 = sub_1000056C8(v30, v31, &v62);

        *(v29 + 4) = v32;
        *(v29 + 12) = 2080;
        *(v29 + 14) = sub_1000056C8(0xD000000000000012, 0x8000000100026520, &v62);
        _os_log_impl(&_mh_execute_header, v26, v27, "%s %s - failed to load from cache", v29, 0x16u);
        swift_arrayDestroy();

        v24 = v28;
      }

      (*(v60 + 8))(v9, v61);
      sub_100006B28();
    }

    else
    {
      v59 = v24;
      (*(v16 + 32))(v21, v14, v15);
      sub_100024530();
      (*(v16 + 16))(v19, v21, v15);
      v42 = v1;
      v43 = sub_1000244C0();
      v44 = sub_100025070();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v62 = v57;
        *v45 = 136315650;
        v56 = v44;
        v58 = v42;
        v46 = *&v42[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
        v47 = *&v42[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8];

        v48 = sub_1000056C8(v46, v47, &v62);

        *(v45 + 4) = v48;
        v55 = v43;
        *(v45 + 12) = 2080;
        *(v45 + 14) = sub_1000056C8(0xD000000000000012, 0x8000000100026520, &v62);
        *(v45 + 22) = 2080;
        v49 = sub_100024790();
        v51 = v50;
        v52 = *(v16 + 8);
        v52(v19, v15);
        v53 = sub_1000056C8(v49, v51, &v62);

        *(v45 + 24) = v53;
        v54 = v55;
        _os_log_impl(&_mh_execute_header, v55, v56, "%s %s - %s loaded from cache", v45, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v52 = *(v16 + 8);
        v52(v19, v15);
      }

      (*(v60 + 8))(v11, v61);
      sub_100007C6C(v21);

      v52(v21, v15);
    }
  }

  else
  {
    sub_100024530();
    v33 = v1;
    v34 = sub_1000244C0();
    v35 = sub_100025080();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v62 = v37;
      *v36 = 136315138;
      v38 = &v33[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
      v39 = *&v33[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
      v40 = *(v38 + 1);

      v41 = sub_1000056C8(v39, v40, &v62);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "%s expected an active converstation, confused!", v36, 0xCu);
      sub_100005794(v37);
    }

    (*(v60 + 8))(v6, v61);
  }
}

uint64_t sub_10000A390@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = sub_1000244D0();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v40 = &v37 - v7;
  v8 = sub_10000269C(&qword_1000351F0, &qword_100027160);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  v14 = sub_1000243D0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v39 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100024500();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 104))(v20, enum case for PeopleURL.Parameter.requestID(_:), v17);
  v38 = sub_100010494(v20);
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
        sub_1000243B0();

        v26 = 0;
      }

      else
      {
        v26 = 1;
      }

      (*(v15 + 56))(v11, v26, 1, v14);
      sub_10000DAE0(v11, v13);
      if ((*(v15 + 48))(v13, 1, v14) != 1)
      {
        v36 = v39;
        (*(v15 + 32))(v39, v13, v14);
        sub_10000F580(v38, v22, v43);

        return (*(v15 + 8))(v36, v14);
      }
    }

    else
    {

      (*(v15 + 56))(v13, 1, 1, v14);
    }

    sub_100006270(v13, &qword_1000351F0, &qword_100027160);
    v30 = v40;
    sub_100024530();
    v31 = sub_1000244C0();
    v32 = sub_100025080();
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
    sub_100024530();
    v27 = sub_1000244C0();
    v28 = sub_100025080();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "conversation.requestID is nil", v29, 2u);
    }

    (*(v41 + 8))(v6, v42);
  }

  v34 = sub_1000247B0();
  return (*(*(v34 - 8) + 56))(v43, 1, 1, v34);
}

id sub_10000A8F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = sub_100024480();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v4[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
  sub_100024470();
  v12 = sub_100024460();
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  *v11 = v12;
  v11[1] = v14;
  v4[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_isBubbleActive] = 0;
  *&v4[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_bubble] = 0;
  v15 = &v4[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_eventNotifier];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  *&v4[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_bubbleDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_initialLoadError] = 0;
  v16 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_messageDetailsLoader;
  if (qword_1000350F0 != -1)
  {
    swift_once();
  }

  v18 = *(qword_100036760 + 16);
  v17 = *(qword_100036760 + 24);
  v29 = sub_100024860();
  v30 = &protocol witness table for MessageDetailsCache;
  *&v28 = v18;
  v26 = sub_100024880();
  v27 = &protocol witness table for ResolvedFamilyCache;
  *&v25 = v17;
  type metadata accessor for MessageDetailsLoader();
  v19 = swift_allocObject();
  v19[3] = 0;
  swift_unknownObjectWeakInit();
  v19[5] = 0;
  swift_unknownObjectWeakInit();
  v19[16] = 0;
  sub_10000E5EC(&v28, (v19 + 6));
  sub_10000E5EC(&v25, (v19 + 11));
  *&v4[v16] = v19;

  if (a2)
  {
    v20 = sub_100024E80();
  }

  else
  {
    v20 = 0;
  }

  v21 = type metadata accessor for RequestMessageViewController();
  v24.receiver = v4;
  v24.super_class = v21;
  v22 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", v20, a3);

  return v22;
}

id sub_10000ABF0(void *a1)
{
  v2 = v1;
  v4 = sub_100024480();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
  sub_100024470();
  v9 = sub_100024460();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  *v8 = v9;
  v8[1] = v11;
  v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_isBubbleActive] = 0;
  *&v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_bubble] = 0;
  v12 = &v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_eventNotifier];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *&v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_bubbleDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_initialLoadError] = 0;
  v13 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_messageDetailsLoader;
  if (qword_1000350F0 != -1)
  {
    swift_once();
  }

  v15 = *(qword_100036760 + 16);
  v14 = *(qword_100036760 + 24);
  v25 = sub_100024860();
  v26 = &protocol witness table for MessageDetailsCache;
  *&v24 = v15;
  v22 = sub_100024880();
  v23 = &protocol witness table for ResolvedFamilyCache;
  *&v21 = v14;
  type metadata accessor for MessageDetailsLoader();
  v16 = swift_allocObject();
  v16[3] = 0;
  swift_unknownObjectWeakInit();
  v16[5] = 0;
  swift_unknownObjectWeakInit();
  v16[16] = 0;
  sub_10000E5EC(&v24, (v16 + 6));
  sub_10000E5EC(&v21, (v16 + 11));
  *&v2[v13] = v16;
  v17 = type metadata accessor for RequestMessageViewController();
  v20.receiver = v2;
  v20.super_class = v17;

  v18 = objc_msgSendSuper2(&v20, "initWithCoder:", a1);

  if (v18)
  {
  }

  return v18;
}

id sub_10000AE7C(char a1)
{
  v2 = v1;
  v4 = sub_100024480();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
  sub_100024470();
  v9 = sub_100024460();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  *v8 = v9;
  v8[1] = v11;
  v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_isBubbleActive] = 0;
  *&v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_bubble] = 0;
  v12 = &v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_eventNotifier];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *&v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_bubbleDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_initialLoadError] = 0;
  v13 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_messageDetailsLoader;
  if (qword_1000350F0 != -1)
  {
    swift_once();
  }

  v15 = *(qword_100036760 + 16);
  v14 = *(qword_100036760 + 24);
  v24 = sub_100024860();
  v25 = &protocol witness table for MessageDetailsCache;
  *&v23 = v15;
  v21 = sub_100024880();
  v22 = &protocol witness table for ResolvedFamilyCache;
  *&v20 = v14;
  type metadata accessor for MessageDetailsLoader();
  v16 = swift_allocObject();
  v16[3] = 0;
  swift_unknownObjectWeakInit();
  v16[5] = 0;
  swift_unknownObjectWeakInit();
  v16[16] = 0;
  sub_10000E5EC(&v23, (v16 + 6));
  sub_10000E5EC(&v20, (v16 + 11));
  *&v2[v13] = v16;
  v17 = type metadata accessor for RequestMessageViewController();
  v19.receiver = v2;
  v19.super_class = v17;

  return objc_msgSendSuper2(&v19, "initWithShouldBeSheetPresentationControllerDelegate:", a1 & 1);
}

uint64_t sub_10000B110()
{
  v1[2] = v0;
  v2 = sub_1000244D0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  sub_100024FD0();
  v1[7] = sub_100024FC0();
  v4 = sub_100024FA0();
  v1[8] = v4;
  v1[9] = v3;

  return _swift_task_switch(sub_10000B210, v4, v3);
}

uint64_t sub_10000B210()
{
  v31 = v0;
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_isBubbleActive) == 1)
  {
    v2 = [*(v0 + 16) activeConversation];
    *(v0 + 80) = v2;
    if (v2)
    {
      v3 = v2;
      v4 = swift_task_alloc();
      *(v0 + 88) = v4;
      *v4 = v0;
      v4[1] = sub_10000B538;

      return sub_10000877C(v3);
    }

    v21 = *(v0 + 16);

    sub_100024530();
    v22 = v21;
    v7 = sub_1000244C0();
    v8 = sub_100025080();

    v23 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 48);
    v12 = *(v0 + 24);
    v11 = *(v0 + 32);
    if (v23)
    {
      v24 = *(v0 + 16);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v30 = v15;
      *v14 = 136315138;
      v25 = v24 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID;
      v26 = *(v24 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID);
      v27 = *(v25 + 8);

      v28 = sub_1000056C8(v26, v27, &v30);

      *(v14 + 4) = v28;
      v20 = "%s conversation is nil";
      goto LABEL_10;
    }
  }

  else
  {

    sub_100024530();
    v6 = v1;
    v7 = sub_1000244C0();
    v8 = sub_100025070();

    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 32);
    v10 = *(v0 + 40);
    v12 = *(v0 + 24);
    if (v9)
    {
      v13 = *(v0 + 16);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v30 = v15;
      *v14 = 136315138;
      v16 = v13 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID;
      v17 = *(v13 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID);
      v18 = *(v16 + 8);

      v19 = sub_1000056C8(v17, v18, &v30);

      *(v14 + 4) = v19;
      v20 = "%s has been deactivated prior to notify!";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v7, v8, v20, v14, 0xCu);
      sub_100005794(v15);
    }
  }

  (*(v11 + 8))(v10, v12);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_10000B538()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10000B658, v3, v2);
}

uint64_t sub_10000B658()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000B6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1000244D0();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_100024FD0();
  v4[6] = sub_100024FC0();
  v7 = sub_100024FA0();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_10000B7C4, v7, v6);
}

uint64_t sub_10000B7C4(uint64_t a1)
{
  v20 = v1;
  v2 = v1[2];
  sub_100024530();
  v3 = v2;
  v4 = sub_1000244C0();
  v5 = sub_100025070();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[3];
  if (v6)
  {
    v10 = v1[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    v13 = v10 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID;
    v14 = *(v10 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID);
    v15 = *(v13 + 8);

    v16 = sub_1000056C8(v14, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s responding to event notify)", v11, 0xCu);
    sub_100005794(v12);
  }

  (*(v8 + 8))(v7, v9);
  v17 = swift_task_alloc();
  v1[9] = v17;
  *v17 = v1;
  v17[1] = sub_10000B98C;

  return sub_10000B110();
}

uint64_t sub_10000B98C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_10000BAAC, v3, v2);
}

uint64_t sub_10000BAAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000BB14()
{
  v1 = sub_10000269C(&qword_1000351E0, &qword_100026E30);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  sub_100024FE0();
  v4 = sub_100025000();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  sub_100024FD0();
  v5 = v0;
  v6 = sub_100024FC0();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v5;
  sub_100002F74(0, 0, v3, &unk_100026FB8, v7);
}

uint64_t sub_10000BC40()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000BC80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100006598;

  return sub_10000B6D0(a1, v4, v5, v6);
}

uint64_t sub_10000BD34(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1000244D0();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_1000243D0();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v2[11] = *(v5 + 64);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  sub_10000269C(&qword_1000351E0, &qword_100026E30);
  v2[14] = swift_task_alloc();
  v2[15] = sub_100024FD0();
  v2[16] = sub_100024FC0();
  v7 = sub_100024FA0();
  v2[17] = v7;
  v2[18] = v6;

  return _swift_task_switch(sub_10000BED4, v7, v6);
}

uint64_t sub_10000BED4()
{
  v44 = v0;
  if (sub_1000245B0())
  {
    v1 = v0[14];
    v2 = v0[13];
    v3 = v0[10];
    v4 = v0[9];
    v5 = v0[4];
    v6 = v0[5];
    sub_100024FE0();
    v7 = sub_100025000();
    (*(*(v7 - 8) + 56))(v1, 0, 1, v7);
    (*(v3 + 16))(v2, v5, v4);
    v8 = v6;
    v9 = sub_100024FC0();
    v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
    v11 = swift_allocObject();
    *(v11 + 2) = v9;
    *(v11 + 3) = &protocol witness table for MainActor;
    *(v11 + 4) = v8;
    (*(v3 + 32))(&v11[v10], v2, v4);
    v12 = sub_1000032C8(0, 0, v1, &unk_100027020, v11);
    v0[19] = v12;
    v13 = swift_task_alloc();
    v0[20] = v13;
    v14 = sub_10000269C(&qword_100035328, &qword_100026EA0);
    *v13 = v0;
    v13[1] = sub_10000C34C;

    return Task<>.value.getter(v0 + 2, v12, v14);
  }

  else
  {
    v15 = v0[12];
    v16 = v0[9];
    v17 = v0[10];
    v18 = v0[4];
    v19 = v0[5];

    sub_100024530();
    (*(v17 + 16))(v15, v18, v16);
    v20 = v19;
    v21 = sub_1000244C0();
    v22 = sub_100025080();

    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[12];
    v26 = v0[9];
    v25 = v0[10];
    v28 = v0[7];
    v27 = v0[8];
    v29 = v0[6];
    if (v23)
    {
      v42 = v0[8];
      v30 = v0[5];
      v41 = v0[6];
      v31 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v31 = 136315394;
      v33 = *(v30 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID);
      v32 = *(v30 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8);

      v34 = sub_1000056C8(v33, v32, &v43);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2080;
      sub_10000E2C8(&qword_100035358, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v35 = sub_1000251A0();
      v37 = v36;
      (*(v25 + 8))(v24, v26);
      v38 = sub_1000056C8(v35, v37, &v43);

      *(v31 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s - %s not in trusted list", v31, 0x16u);
      swift_arrayDestroy();

      (*(v28 + 8))(v42, v41);
    }

    else
    {

      (*(v25 + 8))(v24, v26);
      (*(v28 + 8))(v27, v29);
    }

    v39 = v0[1];

    return v39(0, 0xF000000000000000);
  }
}

uint64_t sub_10000C34C()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_10000C46C, v3, v2);
}

uint64_t sub_10000C46C()
{

  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_10000C51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_1000243D0();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = sub_1000244D0();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  sub_100024FD0();
  v5[11] = sub_100024FC0();
  v9 = sub_100024FA0();

  return _swift_task_switch(sub_10000C670, v9, v8);
}

uint64_t sub_10000C670()
{
  v33 = v0;
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];

  sub_100024530();
  (*(v2 + 16))(v1, v4, v3);
  v6 = v5;
  v7 = sub_1000244C0();
  v8 = sub_100025070();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[7];
  v13 = v0[8];
  v15 = v0[5];
  v14 = v0[6];
  if (v9)
  {
    v31 = v0[10];
    v16 = v0[3];
    v30 = v0[8];
    v17 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v17 = 136315394;
    v19 = *(v16 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID);
    v18 = *(v16 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8);

    v20 = sub_1000056C8(v19, v18, v32);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    v21 = sub_100024370();
    v23 = v22;
    (*(v14 + 8))(v12, v15);
    v24 = sub_1000056C8(v21, v23, v32);

    *(v17 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s - Fetching %s", v17, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v31, v30);
  }

  else
  {

    (*(v14 + 8))(v12, v15);
    (*(v11 + 8))(v10, v13);
  }

  v25 = sub_1000243E0();
  v26 = v0[2];
  *v26 = v25;
  v26[1] = v27;

  v28 = v0[1];

  return v28();
}

uint64_t sub_10000C900(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_100024610();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_10000269C(&qword_1000351F0, &qword_100027160);
  v3[8] = swift_task_alloc();
  v5 = sub_1000243D0();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  sub_100024FD0();
  v3[12] = sub_100024FC0();
  v7 = sub_100024FA0();
  v3[13] = v7;
  v3[14] = v6;

  return _swift_task_switch(sub_10000CA8C, v7, v6);
}

uint64_t sub_10000CA8C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1000247B0();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = sub_100024750();
  if (!v5)
  {
    v4 = sub_100024790();
  }

  v6 = v4;
  v7 = v5;
  v0[15] = v4;
  v0[16] = v5;
  v8 = sub_1000246B0();
  if (v9 >> 60 == 15)
  {
    if (qword_100035088 != -1)
    {
      swift_once();
    }

    ImageCache.getFromCache(_:)(v6, v7);
    if (v10 >> 60 != 15)
    {
      sub_1000246C0();
    }
  }

  else
  {
    sub_10000E2B4(v8, v9);
  }

  v11 = sub_1000246B0();
  if (v12 >> 60 == 15)
  {
    sub_1000246D0();
    if (v13)
    {
      v14 = v0[9];
      v15 = v0[10];
      v16 = v0[8];
      sub_1000243C0();

      if ((*(v15 + 48))(v16, 1, v14) != 1)
      {
        (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
        v29 = swift_task_alloc();
        v0[17] = v29;
        *v29 = v0;
        v29[1] = sub_10000CE04;
        v30 = v0[11];

        return sub_10000BD34(v30);
      }

      sub_100006270(v0[8], &qword_1000351F0, &qword_100027160);
    }
  }

  else
  {
    sub_10000E2B4(v11, v12);
  }

  v17 = sub_1000246B0();
  if (v18 >> 60 == 15)
  {
    v19 = sub_100024750();
    v0[20] = v20;
    if (v20)
    {
      v21 = v19;
      v22 = v20;
      v24 = v0[6];
      v23 = v0[7];
      v25 = v0[5];
      sub_100024820();
      (*(v24 + 104))(v23, enum case for FirstPartyApps.none(_:), v25);
      v26 = swift_task_alloc();
      v0[21] = v26;
      *v26 = v0;
      v26[1] = sub_10000D184;
      v27 = v0[7];

      return static AppBundleResolver.resolveThumbnail(_:_:)(v21, v22, v27);
    }
  }

  else
  {
    sub_10000E2B4(v17, v18);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_10000CE04(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = a2;

  v5 = *(v3 + 112);
  v6 = *(v3 + 104);

  return _swift_task_switch(sub_10000CF2C, v6, v5);
}

uint64_t sub_10000CF2C()
{
  if (v0[19] >> 60 == 15)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
  }

  else
  {
    sub_100003274(v0[18], v0[19]);
    sub_1000246C0();
    if (qword_100035088 != -1)
    {
      swift_once();
    }

    v2 = v0[18];
    v1 = v0[19];
    v4 = v0[10];
    v3 = v0[11];
    v5 = v0[9];
    ImageCache.addToCache(_:image:)(v0[15], v0[16], v2, v1);
    sub_10000E2B4(v2, v1);
    (*(v4 + 8))(v3, v5);
  }

  v6 = sub_1000246B0();
  if (v7 >> 60 == 15)
  {
    v8 = sub_100024750();
    v0[20] = v9;
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      v13 = v0[6];
      v12 = v0[7];
      v14 = v0[5];
      sub_100024820();
      (*(v13 + 104))(v12, enum case for FirstPartyApps.none(_:), v14);
      v15 = swift_task_alloc();
      v0[21] = v15;
      *v15 = v0;
      v15[1] = sub_10000D184;
      v16 = v0[7];

      return static AppBundleResolver.resolveThumbnail(_:_:)(v10, v11, v16);
    }
  }

  else
  {
    sub_10000E2B4(v6, v7);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_10000D184(uint64_t a1, uint64_t a2)
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

  return _swift_task_switch(sub_10000D32C, v9, v8);
}

uint64_t sub_10000D32C()
{
  v1 = v0[23];

  if (v1 >> 60 == 15)
  {

    if (qword_100035090 != -1)
    {
      swift_once();
    }

    sub_10000E2A0(qword_1000366E0, qword_1000366E8);
  }

  else
  {
    if (qword_100035088 != -1)
    {
      swift_once();
    }

    ImageCache.addToCache(_:image:)(v0[15], v0[16], v0[22], v0[23]);
  }

  sub_1000246C0();

  v2 = v0[1];

  return v2();
}

void sub_10000D498(void *a1)
{
  v3 = sub_1000244D0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 view];
  if (v7)
  {
    v8 = v7;
    v9 = [v1 view];
    if (v9)
    {
      v48 = v9;
      v10 = [v1 childViewControllers];
      sub_10000E258(0, &qword_1000353F8, UIViewController_ptr);
      v11 = sub_100024F90();

      sub_10000E13C(v11);

      [v1 addChildViewController:a1];
      v12 = [v1 view];
      if (v12)
      {
        v13 = v12;
        v14 = objc_opt_self();
        v15 = [v14 clearColor];
        [v13 setBackgroundColor:v15];

        v16 = [v14 clearColor];
        [v8 setBackgroundColor:v16];

        v17 = [v1 view];
        if (v17)
        {
          v18 = v17;
          [v17 insertSubview:v8 atIndex:0];

          [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
          v19 = objc_opt_self();
          sub_10000269C(&qword_100035400, &qword_100026FF0);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_100026F40;
          v21 = [v8 leadingAnchor];
          v22 = [v48 safeAreaLayoutGuide];
          v23 = [v22 leadingAnchor];

          v24 = [v21 constraintEqualToAnchor:v23];
          *(v20 + 32) = v24;
          v25 = [v8 trailingAnchor];
          v26 = [v48 safeAreaLayoutGuide];
          v27 = [v26 trailingAnchor];

          v28 = [v25 constraintEqualToAnchor:v27];
          *(v20 + 40) = v28;
          v29 = [v8 topAnchor];
          v30 = [v48 safeAreaLayoutGuide];
          v31 = [v30 topAnchor];

          v32 = [v29 constraintEqualToAnchor:v31];
          *(v20 + 48) = v32;
          v33 = [v8 bottomAnchor];
          v34 = [v48 safeAreaLayoutGuide];
          v35 = [v34 bottomAnchor];

          v36 = [v33 constraintEqualToAnchor:v35];
          *(v20 + 56) = v36;
          sub_10000E258(0, &qword_100035408, NSLayoutConstraint_ptr);
          isa = sub_100024F80().super.isa;

          [v19 activateConstraints:isa];

          [a1 didMoveToParentViewController:v1];
          [v8 setMinimumContentSizeCategory:UIContentSizeCategorySmall];
          [v8 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
          [v1 requestResize];

          v38 = v48;

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }

  sub_100024530();
  v39 = v1;
  v40 = sub_1000244C0();
  v41 = sub_100025080();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v49 = v43;
    *v42 = 136315138;
    v44 = &v39[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
    v45 = *&v39[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
    v46 = *(v44 + 1);

    v47 = sub_1000056C8(v45, v46, &v49);

    *(v42 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v40, v41, "%s missing views", v42, 0xCu);
    sub_100005794(v43);
  }

  (*(v4 + 8))(v6, v3);
}

uint64_t sub_10000DAE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000269C(&qword_1000351F0, &qword_100027160);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DB50(uint64_t a1)
{
  v2 = sub_10000269C(&qword_100035410, &qword_100026FF8);
  __chkstk_darwin(v2 - 8);
  v50 = &v43 - v3;
  v4 = sub_10000269C(&qword_100035348, &qword_100027000);
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v45 = &v43 - v5;
  v6 = sub_100024450();
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = __chkstk_darwin(v6);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v47 = &v43 - v10;
  __chkstk_darwin(v9);
  v46 = &v43 - v11;
  v12 = sub_100024650();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v43 - v17;
  v19 = sub_10000269C(&qword_1000353F0, &unk_100027140);
  __chkstk_darwin(v19 - 8);
  v21 = &v43 - v20;
  v22 = sub_1000247B0();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v26;
  sub_100005934(a1, v21, &qword_1000353F0, &unk_100027140);
  if ((*(v23 + 48))(v21, 1, v27) == 1)
  {
    sub_100006270(v21, &qword_1000353F0, &unk_100027140);
LABEL_5:
    v30 = 1;
    return v30 & 1;
  }

  (*(v23 + 32))(v25, v21, v27);
  sub_100024730();
  (*(v13 + 104))(v16, enum case for MessageDetails.EventStatus.purged(_:), v12);
  sub_10000E2C8(&qword_100035418, &type metadata accessor for MessageDetails.EventStatus, &protocol conformance descriptor for MessageDetails.EventStatus);
  v28 = sub_100024E70();
  v29 = *(v13 + 8);
  v29(v16, v12);
  v29(v18, v12);
  if (v28)
  {
    (*(v23 + 8))(v25, v27);
    goto LABEL_5;
  }

  v31 = v27;
  v32 = v46;
  sub_100024440();
  v33 = v47;
  sub_1000246F0();
  v34 = v50;
  sub_100024700();
  v36 = v48;
  v35 = v49;
  if ((*(v48 + 48))(v34, 1, v49) == 1)
  {
    sub_100006270(v34, &qword_100035410, &qword_100026FF8);
    v38 = v51;
    v37 = v52;
  }

  else
  {
    v39 = v45;
    (*(v36 + 32))(v45, v34, v35);
    v40 = v44;
    sub_100024430();
    (*(v36 + 8))(v39, v35);
    v38 = v51;
    v37 = v52;
    (*(v51 + 8))(v33, v52);
    (*(v38 + 32))(v33, v40, v37);
  }

  v30 = sub_100024420();
  v41 = *(v38 + 8);
  v41(v33, v37);
  v41(v32, v37);
  (*(v23 + 8))(v25, v31);
  return v30 & 1;
}

void sub_10000E13C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100025170())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = sub_100025150();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v4 willMoveToParentViewController:0];
      v7 = [v5 view];
      [v7 removeFromSuperview];

      [v5 removeFromParentViewController];
      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_10000E258(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000E2A0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100003274(result, a2);
  }

  return result;
}

uint64_t sub_10000E2B4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100002D50(result, a2);
  }

  return result;
}

uint64_t sub_10000E2C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000E310()
{
  v1 = sub_1000243D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000E3DC(uint64_t a1)
{
  v4 = *(sub_1000243D0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002E80;

  return sub_10000C51C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10000E4D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000269C(&qword_100035420, &qword_100027030);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E544(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10000E5A8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000E5EC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000E604()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000E64C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100006598;

  return sub_1000084BC(a1, v4, v5, v7, v6);
}

void sub_10000E744()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_100035430 = v1 == 5;
}

uint64_t sub_10000E7A8()
{
  result = sub_100024B50();
  qword_1000366F0 = result;
  return result;
}

uint64_t sub_10000E7C8()
{
  if (qword_100035098 != -1)
  {
    result = swift_once();
  }

  v0 = 28.0;
  if (byte_100035430)
  {
    v0 = 22.0;
  }

  qword_1000366F8 = *&v0;
  return result;
}

uint64_t sub_10000E86C(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_100024C60();
  *a3 = result;
  return result;
}

uint64_t sub_10000E8B4()
{
  qword_100036718 = sub_100024E20();
  result = sub_100024E30();
  qword_100036720 = result;
  return result;
}

uint64_t sub_10000E8E8()
{
  qword_100036728 = sub_100024E00();
  result = sub_100024E10();
  qword_100036730 = result;
  return result;
}

uint64_t sub_10000E91C()
{
  qword_100036738 = sub_100024DE0();
  result = sub_100024DF0();
  qword_100036740 = result;
  return result;
}

uint64_t sub_10000E950()
{
  qword_100036748 = sub_100024DD0();
  result = sub_100024DD0();
  qword_100036750 = result;
  return result;
}

uint64_t sub_10000E984()
{
  if (qword_100035098 != -1)
  {
    result = swift_once();
  }

  v0 = 60.0;
  if (byte_100035430)
  {
    v0 = 48.0;
  }

  qword_100036758 = *&v0;
  return result;
}

uint64_t sub_10000E9F4()
{
  v0 = sub_100024630();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppStateStore();
  v4 = swift_allocObject();
  (*(v1 + 104))(v3, enum case for MessageDetails.EventSource.screenTime(_:), v0);
  v5 = [objc_opt_self() defaultManager];
  v7[4] = sub_10000EBBC();
  v7[5] = &protocol witness table for NSFileManager;
  v7[1] = v5;
  sub_100024860();
  swift_allocObject();
  *(v4 + 16) = sub_100024850();
  sub_100024880();
  result = sub_100024870();
  *(v4 + 24) = result;
  qword_100036760 = v4;
  return result;
}

uint64_t sub_10000EB58()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10000EBBC()
{
  result = qword_1000354E0;
  if (!qword_1000354E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000354E0);
  }

  return result;
}

uint64_t sub_10000EC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a2;
  v7 = sub_1000243D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000269C(&qword_1000351E0, &qword_100026E30);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  if (*(v4 + 128))
  {
    sub_1000247B0();

    sub_10000269C(&qword_1000353D8, &qword_100026FD0);
    sub_100025020();
  }

  *(v4 + 128) = 0;

  sub_100024FE0();
  v14 = sub_100025000();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  (*(v8 + 16))(&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  sub_100024FD0();

  v15 = sub_100024FC0();
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
  v20 = sub_100013E4C(0, 0, v13, &unk_100027170, v18);
  *(v4 + 128) = v20;

  return v20;
}

uint64_t sub_10000EEBC@<X0>(int a2@<W3>, uint64_t a3@<X8>)
{
  v55 = a2;
  v58 = a3;
  v4 = sub_1000244D0();
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v50 - v8;
  v10 = sub_1000247B0();
  v56 = *(v10 - 8);
  v57 = v10;
  __chkstk_darwin(v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000269C(&qword_1000355B0, &qword_100027150);
  __chkstk_darwin(v13 - 8);
  v15 = &v50 - v14;
  v16 = sub_100024320();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024310();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100006270(v15, &qword_1000355B0, &qword_100027150);
    sub_100024530();
    v20 = sub_1000244C0();
    v21 = sub_100025080();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Can't parse bubble view url components", v22, 2u);
    }

    (*(v59 + 8))(v7, v60);
    sub_100014D78();
    swift_allocError();
    *v23 = 2;
    return swift_willThrow();
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    sub_100024660();
    if (v3)
    {
      return (*(v17 + 8))(v19, v16);
    }

    else
    {
      v25 = sub_100024750();
      if (!v26)
      {
        v25 = sub_100024790();
      }

      v27 = v25;
      v28 = v26;
      v29 = sub_1000246B0();
      if (v30 >> 60 == 15)
      {
        if (qword_100035088 != -1)
        {
          swift_once();
        }

        ImageCache.getFromCache(_:)(v27, v28);
        v32 = v31;

        if (v32 >> 60 != 15)
        {
          sub_1000246C0();
        }
      }

      else
      {
        v33 = v29;
        v34 = v30;

        sub_10000E2B4(v33, v34);
      }

      if (v55)
      {
        v35 = v9;
        v36 = sub_1000246B0();
        if (v37 >> 60 == 15)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            swift_unknownObjectRelease();
            if (qword_100035090 != -1)
            {
              swift_once();
            }

            v38 = qword_1000366E8;
            if (qword_1000366E8 >> 60 != 15)
            {
              v39 = qword_1000366E0;
              sub_10000E2A0(qword_1000366E0, qword_1000366E8);
              sub_100003274(v39, v38);
              sub_1000246C0();
              sub_100024530();
              v40 = sub_1000244C0();
              v55 = sub_100025060();
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
                v43 = sub_100024790();
                v54 = v35;
                v45 = v44;
                swift_endAccess();
                v46 = sub_1000056C8(v43, v45, &v61);

                *(v42 + 4) = v46;
                v47 = v51;
                _os_log_impl(&_mh_execute_header, v51, v55, "%s - using fallback icon", v42, 0xCu);
                sub_100005794(v53);

                sub_10000E2B4(v52, v38);
                (*(v59 + 8))(v54, v60);
              }

              else
              {

                sub_10000E2B4(v39, v38);
                (*(v59 + 8))(v35, v60);
              }
            }
          }
        }

        else
        {
          sub_10000E2B4(v36, v37);
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

uint64_t sub_10000F580@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v120 = a3;
  v114 = a4;
  v6 = sub_1000244D0();
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
  v102 = sub_1000247F0();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v98 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000269C(&qword_1000355A8, &unk_100027360);
  v17 = __chkstk_darwin(v16 - 8);
  v100 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v99 = &v96 - v20;
  __chkstk_darwin(v19);
  v103 = &v96 - v21;
  v22 = sub_1000247B0();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v105 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v108 = &v96 - v27;
  v28 = __chkstk_darwin(v26);
  v117 = &v96 - v29;
  __chkstk_darwin(v28);
  v116 = &v96 - v30;
  v31 = sub_10000269C(&qword_1000353F0, &unk_100027140);
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
  sub_10000EEBC(1, v39);
  v113 = a2;
  sub_100006270(v41, &qword_1000353F0, &unk_100027140);
  v44(v39, 0, 1, v22);
  sub_100014DCC(v39, v41, &qword_1000353F0, &unk_100027140);
  sub_100005934(v41, v36, &qword_1000353F0, &unk_100027140);
  v45 = v121;
  v46 = *(v121 + 48);
  v47 = v46(v36, 1, v22);
  v48 = v115;
  if (v47 == 1)
  {
    sub_100006270(v41, &qword_1000353F0, &unk_100027140);
    sub_100006270(v36, &qword_1000353F0, &unk_100027140);
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
    sub_10000E5A8(v48 + 6, v48[9]);
    v52 = v112;
    v53 = v120;
    sub_100024890();
    if (v46(v52, 1, v22) == 1)
    {
      sub_100006270(v52, &qword_1000353F0, &unk_100027140);
      v54 = v107;
      sub_100024530();
      v55 = v53;

      v56 = sub_1000244C0();
      v57 = sub_100025060();

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
        *(v62 + 4) = sub_1000056C8(v113, v55, &v122);
        _os_log_impl(&_mh_execute_header, v56, v57, "%s - cached message details is nil", v62, 0xCu);
        sub_100005794(v64);
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
      sub_100024760();
      v65 = v118;
      if (v66)
      {
        v67 = v104;
        sub_100024530();

        v68 = sub_1000244C0();
        v69 = sub_100025080();

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
          *(v72 + 4) = sub_1000056C8(v71, v53, &v122);
          _os_log_impl(&_mh_execute_header, v68, v69, "%s - userDSID is nil", v72, 0xCu);
          sub_100005794(v74);
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
        sub_10000E5A8(v115 + 11, v115[14]);
        v76 = v103;
        sub_1000248B0();
        sub_100005934(v76, v99, &qword_1000355A8, &unk_100027360);
        sub_100024720();
        v77 = v100;
        sub_100005934(v76, v100, &qword_1000355A8, &unk_100027360);
        v78 = v101;
        v79 = v102;
        if ((*(v101 + 48))(v77, 1, v102) == 1)
        {
          sub_100006270(v76, &qword_1000355A8, &unk_100027360);
          v80 = v77;
        }

        else
        {
          v81 = v98;
          (*(v78 + 32))(v98, v77, v79);
          v82 = sub_1000247C0();
          sub_1000250B0();

          sub_100024780();
          (*(v78 + 8))(v81, v79);
          v80 = v103;
        }

        sub_100006270(v80, &qword_1000355A8, &unk_100027360);
        v65 = v118;
      }

      v83 = v105;
      sub_100024620();
      v84 = *(v121 + 8);
      v85 = v117;
      v84(v117, v22);
      v109(v85, v83, v22);
      v86 = v106;
      sub_100024530();
      v87 = v120;

      v88 = sub_1000244C0();
      v89 = sub_100025060();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v92 = v87;
        v93 = v42;
        v94 = v91;
        v122 = v91;
        *v90 = 136315138;
        *(v90 + 4) = sub_1000056C8(v113, v92, &v122);
        _os_log_impl(&_mh_execute_header, v88, v89, "%s - loaded cached message details from cache", v90, 0xCu);
        sub_100005794(v94);
        v42 = v93;
      }

      (*(v65 + 8))(v86, v119);
      v84(v108, v22);
      v84(v116, v22);
      v75 = v97;
    }

    sub_100006270(v75, &qword_1000353F0, &unk_100027140);
    v50 = v114;
    v109(v114, v117, v22);
    v49 = 0;
  }

  return v42(v50, v49, 1, v22);
}

Swift::Int sub_1000103CC()
{
  v1 = *v0;
  sub_100025210();
  sub_100025220(v1);
  return sub_100025230();
}

Swift::Int sub_100010440(uint64_t a1)
{
  v2 = *v1;
  sub_100025210();
  sub_100025220(v2);
  return sub_100025230();
}

uint64_t sub_100010494(char *a1)
{
  v49 = a1;
  v2 = sub_1000244D0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v51 = &v48 - v7;
  v8 = sub_10000269C(&qword_1000355C0, &qword_100027158);
  __chkstk_darwin(v8 - 8);
  v10 = &v48 - v9;
  v11 = sub_10000269C(&qword_1000355B0, &qword_100027150);
  __chkstk_darwin(v11 - 8);
  v13 = &v48 - v12;
  v14 = sub_100024320();
  v53 = *(v14 - 8);
  v54 = v14;
  __chkstk_darwin(v14);
  v50 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000269C(&qword_1000351F0, &qword_100027160);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v48 - v20;
  v22 = sub_1000243D0();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v52 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [v1 selectedMessage];
  if (!v25)
  {
    (*(v23 + 56))(v21, 1, 1, v22);
LABEL_7:
    sub_100006270(v21, &qword_1000351F0, &qword_100027160);
    sub_100024530();
    v30 = sub_1000244C0();
    v31 = sub_100025080();
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
    sub_1000243B0();

    (*(v23 + 56))(v19, 0, 1, v22);
  }

  else
  {
    (*(v23 + 56))(v19, 1, 1, v22);
  }

  sub_100014DCC(v19, v21, &qword_1000351F0, &qword_100027160);
  v2 = v27;
  v3 = v26;
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    goto LABEL_7;
  }

  v33 = v52;
  (*(v23 + 32))(v52, v21, v22);
  sub_100024310();
  v35 = v53;
  v34 = v54;
  if ((*(v53 + 48))(v13, 1, v54) == 1)
  {
    sub_100006270(v13, &qword_1000355B0, &qword_100027150);
    v36 = v51;
    sub_100024530();
    v37 = sub_1000244C0();
    v38 = sub_100025080();
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
  v41 = sub_100024300();
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
  sub_100010CA4(sub_100014E34, v42, v43);

  v44 = sub_1000242F0();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v43, 1, v44) == 1)
  {
    (*(v53 + 8))(v40, v54);
    (*(v23 + 8))(v33, v22);
    sub_100006270(v43, &qword_1000355C0, &qword_100027158);
    return 0;
  }

  v47 = sub_1000242E0();
  (*(v53 + 8))(v40, v54);
  (*(v23 + 8))(v33, v22);
  (*(v45 + 8))(v43, v44);
  return v47;
}

uint64_t sub_100010C08()
{
  v0 = sub_1000242D0();
  v2 = v1;
  if (v0 == sub_1000244F0() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1000251B0();
  }

  return v4 & 1;
}

uint64_t sub_100010CA4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = sub_1000242F0();
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

uint64_t sub_100010E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  sub_10000269C(&qword_1000355A8, &unk_100027360);
  v7[7] = swift_task_alloc();
  v8 = sub_1000247F0();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v9 = sub_1000247B0();
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  sub_100024FD0();
  v7[14] = sub_100024FC0();
  v11 = sub_100024FA0();
  v7[15] = v11;
  v7[16] = v10;

  return _swift_task_switch(sub_100011008, v11, v10);
}

uint64_t sub_100011008()
{
  sub_10000EEBC(0, v0[13]);
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_100011124;
  v2 = v0[13];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[2];

  return sub_100011524(v5, v3, v4, v2);
}

uint64_t sub_100011124()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_10001147C;
  }

  else
  {
    v5 = sub_100011260;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100011260()
{
  v1 = v0[18];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];

  sub_1000138F4(v4, v2, v3);
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
    sub_100024710();
    v12 = (*(v10 + 48))(v11, 1, v9);
    v14 = v0[12];
    v13 = v0[13];
    v15 = v0[11];
    if (v12 == 1)
    {
      v16 = v0[7];
      (*(v14 + 8))(v0[13], v0[11]);
      sub_100006270(v16, &qword_1000355A8, &unk_100027360);
    }

    else
    {
      v18 = v0[9];
      v17 = v0[10];
      v19 = v0[8];
      v20 = v0[3];
      (*(v18 + 32))(v17, v0[7], v19);
      sub_10000E5A8((v20 + 88), *(v20 + 112));
      sub_1000248C0();
      (*(v18 + 8))(v17, v19);
      (*(v14 + 8))(v13, v15);
    }

    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_10001147C()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100011524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = sub_100024FB0();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = sub_1000244D0();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v8 = sub_1000247B0();
  v5[24] = v8;
  v5[25] = *(v8 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = sub_100024FD0();
  v5[30] = sub_100024FC0();
  v10 = sub_100024FA0();
  v5[31] = v10;
  v5[32] = v9;

  return _swift_task_switch(sub_10001173C, v10, v9);
}

uint64_t sub_10001173C()
{
  v88 = v0;
  (*(*(v0 + 200) + 16))(*(v0 + 224), *(v0 + 80), *(v0 + 192));
  sub_100025040();
  *(v0 + 264) = 0;
  v1 = &qword_100027000;
  v2 = sub_1000246B0();
  if (v3 >> 60 == 15)
  {
    sub_100024530();

    v4 = sub_1000244C0();
    v5 = sub_100025070();

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
      *(v12 + 4) = sub_1000056C8(v11, v10, v87);
      _os_log_impl(&_mh_execute_header, v4, v5, "%s stable details had no thumbnail data. Fetching it.", v12, 0xCu);
      sub_100005794(v13);
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
      v16[1] = sub_1000121E8;
      v17 = *(v0 + 216);
      v18 = *(v0 + 224);

      return sub_10000C900(v17, v18);
    }

    sub_100024530();

    v20 = sub_1000244C0();
    v21 = sub_100025070();

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
      *(v27 + 4) = sub_1000056C8(v25, v26, v87);
      _os_log_impl(&_mh_execute_header, v20, v21, "%s thumbnail is nil", v27, 0xCu);
      sub_100005794(v28);

      v29 = v83;
    }

    else
    {

      v29 = v23;
    }

    v14(v29, v24);
    v1 = &qword_100027000;
  }

  else
  {
    sub_10000E2B4(v2, v3);
  }

  *(v0 + 288) = *(v1 + 10);
  v30 = *(v0 + 264);
  sub_100025040();
  if (v30)
  {
    v31 = v30;
    sub_100024530();

    v32 = sub_1000244C0();
    v33 = sub_100025070();

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
      *(v38 + 4) = sub_1000056C8(v37, v40, v87);
      _os_log_impl(&_mh_execute_header, v32, v33, "%s has been deactivated prior to loading message status!", v38, 0xCu);
      sub_100005794(v39);

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
    sub_100024530();

    v69 = sub_1000244C0();
    v70 = sub_100025070();

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
      *(v78 + 4) = sub_1000056C8(v80, v76, v87);
      _os_log_impl(&_mh_execute_header, v69, v70, "%s messageStatusProvider == nil", v78, 0xCu);
      sub_100005794(v79);

      (*(v74 + 8))(v86, v73);
    }

    else
    {

      (*(v74 + 8))(v72, v73);
    }

    v47 = *(v0 + 224);
    v48 = *(v0 + 192);
    v49 = *(v0 + 200);
    sub_100014D78();
    v31 = swift_allocError();
    *v81 = 3;
LABEL_22:
    swift_willThrow();
    (*(v49 + 8))(v47, v48);
    *(v0 + 368) = *(v1 + 10);
    *(v0 + 360) = v31;
    *(v0 + 40) = v31;
    swift_errorRetain();
    sub_10000269C(&qword_1000353D8, &qword_100026FD0);
    if (swift_dynamicCast())
    {
      v51 = *(v0 + 104);
      v50 = *(v0 + 112);
      v52 = *(v0 + 96);

      (*(v51 + 8))(v50, v52);
      swift_willThrow();
      sub_10000E2B4(0, 0xF000000000000000);

      v53 = *(v0 + 8);

      return v53();
    }

    else
    {
      sub_100024530();

      swift_errorRetain();
      v54 = sub_1000244C0();
      v55 = sub_100025070();

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
        *(v62 + 4) = sub_1000056C8(v61, v60, v87);
        *(v62 + 12) = 2080;
        swift_getErrorValue();
        v63 = sub_1000251C0();
        v65 = sub_1000056C8(v63, v64, v87);

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
      v66[1] = sub_1000136C0;
      v67 = *(v0 + 80);
      v68 = *(v0 + 56);

      return sub_100014104(v68, v67, 0, 0xF000000000000000);
    }
  }

  *(v0 + 312) = sub_100024FC0();
  v43 = sub_100024FA0();
  *(v0 + 320) = v43;
  *(v0 + 328) = v42;

  return _swift_task_switch(sub_100012A1C, v43, v42);
}

uint64_t sub_1000121E8()
{
  v1 = *v0;

  v2 = *(v1 + 256);
  v3 = *(v1 + 248);

  return _swift_task_switch(sub_100012308, v3, v2);
}

uint64_t sub_100012308(uint64_t a1)
{
  v67 = v1;
  v2 = v1[27];
  v4 = v1[24];
  v3 = v1[25];
  v5 = sub_1000246B0();
  v7 = v6;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v2, v4);
  if (v7 >> 60 != 15)
  {
    sub_100003274(v5, v7);
    sub_1000246C0();
  }

  v1[36] = v5;
  v1[37] = v7;
  v8 = v1[33];
  sub_100025040();
  if (v8)
  {
    v9 = v8;
    sub_100024530();

    v10 = sub_1000244C0();
    v11 = sub_100025070();

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
      *(v15 + 4) = sub_1000056C8(v17, v58, v66);
      _os_log_impl(&_mh_execute_header, v10, v11, "%s has been deactivated prior to loading message status!", v15, 0xCu);
      sub_100005794(v16);

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
    sub_100024530();

    v46 = sub_1000244C0();
    v47 = sub_100025070();

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
      *(v54 + 4) = sub_1000056C8(v53, v52, v66);
      _os_log_impl(&_mh_execute_header, v46, v47, "%s messageStatusProvider == nil", v54, 0xCu);
      sub_100005794(v55);

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
    sub_100014D78();
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
    sub_10000269C(&qword_1000353D8, &qword_100026FD0);
    if (swift_dynamicCast())
    {
      v28 = v1[13];
      v27 = v1[14];
      v29 = v1[12];

      (*(v28 + 8))(v27, v29);
      swift_willThrow();
      sub_10000E2B4(v5, v7);

      v30 = v1[1];

      return v30();
    }

    else
    {
      v64 = v7;
      sub_100024530();

      swift_errorRetain();
      v31 = sub_1000244C0();
      v32 = sub_100025070();

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
        *(v39 + 4) = sub_1000056C8(v37, v38, v66);
        *(v39 + 12) = 2080;
        swift_getErrorValue();
        v40 = sub_1000251C0();
        v42 = sub_1000056C8(v40, v41, v66);

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
      v43[1] = sub_1000136C0;
      v44 = v1[10];
      v45 = v1[7];

      return sub_100014104(v45, v44, v5, v64);
    }
  }

  v1[39] = sub_100024FC0();
  v20 = sub_100024FA0();
  v1[40] = v20;
  v1[41] = v19;

  return _swift_task_switch(sub_100012A1C, v20, v19);
}

uint64_t sub_100012A1C()
{
  v1 = (v0[38] + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID);
  v3 = *v1;
  v2 = v1[1];
  v0[42] = v2;

  v4 = swift_task_alloc();
  v0[43] = v4;
  *v4 = v0;
  v4[1] = sub_100012AF0;
  v5 = v0[28];
  v6 = v0[26];

  return static AskToBuySupport.getDetailsWithDetails(withDetails:forId:)(v6, v5, v3, v2);
}

uint64_t sub_100012AF0()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = sub_100013288;
  }

  else
  {

    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = sub_100012C0C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100012C0C()
{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return _swift_task_switch(sub_100012C70, v1, v2);
}

uint64_t sub_100012C70(uint64_t a1)
{
  v56 = v1;
  v2 = v1[44];
  sub_100025040();
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

    sub_100024620();
    swift_unknownObjectRelease();
    sub_10000E2B4(v15, v14);
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
  sub_100024530();

  v4 = sub_1000244C0();
  v5 = sub_100025070();

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
    *(v12 + 4) = sub_1000056C8(v11, v10, v55);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s has been deactivated prior to updating details!", v12, 0xCu);
    sub_100005794(v13);

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
  sub_10000269C(&qword_1000353D8, &qword_100026FD0);
  if (swift_dynamicCast())
  {
    v33 = v1[13];
    v32 = v1[14];
    v34 = v1[12];

    (*(v33 + 8))(v32, v34);
    swift_willThrow();
    sub_10000E2B4(v30, v31);

    v24 = v1[1];
    goto LABEL_8;
  }

  v54 = v30;
  sub_100024530();

  swift_errorRetain();
  v36 = sub_1000244C0();
  v37 = sub_100025070();

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
    *(v44 + 4) = sub_1000056C8(v43, v42, v55);
    *(v44 + 12) = 2080;
    swift_getErrorValue();
    v45 = sub_1000251C0();
    v47 = sub_1000056C8(v45, v46, v55);

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
  v48[1] = sub_1000136C0;
  v49 = v1[10];
  v50 = v1[7];

  return sub_100014104(v50, v49, v54, v31);
}

uint64_t sub_100013288()
{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return _swift_task_switch(sub_1000132F8, v1, v2);
}

uint64_t sub_1000132F8()
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
  sub_10000269C(&qword_1000353D8, &qword_100026FD0);
  if (swift_dynamicCast())
  {
    v7 = v6;
    v9 = v0[13];
    v8 = v0[14];
    v10 = v0[12];

    (*(v9 + 8))(v8, v10);
    swift_willThrow();
    sub_10000E2B4(v7, v5);

    v11 = v0[1];

    return v11();
  }

  else
  {
    sub_100024530();

    swift_errorRetain();
    v13 = sub_1000244C0();
    v14 = sub_100025070();

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
      *(v21 + 4) = sub_1000056C8(v20, v19, v31);
      *(v21 + 12) = 2080;
      swift_getErrorValue();
      v22 = sub_1000251C0();
      v24 = sub_1000056C8(v22, v23, v31);

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
    v25[1] = sub_1000136C0;
    v26 = v0[10];
    v27 = v0[7];

    return sub_100014104(v27, v26, v6, v5);
  }
}

uint64_t sub_1000136C0()
{
  v1 = *v0;

  v2 = *(v1 + 256);
  v3 = *(v1 + 248);

  return _swift_task_switch(sub_1000137E0, v3, v2);
}

uint64_t sub_1000137E0()
{
  v1 = v0[46];
  v2 = v0[47];

  sub_10000E2B4(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000138F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v45 = a1;
  v5 = sub_1000244D0();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v43 - v11;
  __chkstk_darwin(v10);
  v14 = &v43 - v13;
  sub_100024530();

  v15 = sub_1000244C0();
  v16 = sub_100025060();

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
    *(v18 + 4) = sub_1000056C8(a2, a3, &v51);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s - Finished background loading details ignoring cache!", v18, 0xCu);
    sub_100005794(v20);
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
  sub_100024530();

  v25 = sub_1000244C0();
  v26 = sub_100025070();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v27 = 136315394;
    v28 = v47;
    *(v27 + 4) = sub_1000056C8(v47, a3, &v51);
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_1000056C8(0xD000000000000019, 0x8000000100026720, &v51);
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
  sub_10000E5A8((v44 + 48), *(v44 + 72));
  v30 = v46;
  result = sub_1000248A0();
  if (v30)
  {
    sub_100024530();

    swift_errorRetain();
    v32 = sub_1000244C0();
    v33 = sub_100025080();

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
      *(v35 + 4) = sub_1000056C8(v34, a3, &v51);
      *(v35 + 12) = 2112;
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v40;
      *v37 = v40;
      _os_log_impl(&_mh_execute_header, v32, v33, "%s - Error saving message details to cache! %@", v35, 0x16u);
      sub_100006270(v37, &qword_1000353E0, &qword_100026FD8);

      sub_100005794(v39);

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

uint64_t sub_100013E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000269C(&qword_1000351E0, &qword_100026E30);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100005934(a3, v22 - v9, &qword_1000351E0, &qword_100026E30);
  v11 = sub_100025000();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100006270(v10, &qword_1000351E0, &qword_100026E30);
  }

  else
  {
    sub_100024FF0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_100024FA0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_100024EE0() + 32;
      sub_1000247B0();

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

      sub_100006270(a3, &qword_1000351E0, &qword_100026E30);

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

  sub_100006270(a3, &qword_1000351E0, &qword_100026E30);
  sub_1000247B0();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100014104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[28] = a4;
  v5[29] = v4;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  v6 = sub_1000247F0();
  v5[30] = v6;
  v5[31] = *(v6 - 8);
  v5[32] = swift_task_alloc();
  sub_10000269C(&qword_1000355A8, &unk_100027360);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v7 = sub_100024650();
  v5[36] = v7;
  v5[37] = *(v7 - 8);
  v5[38] = swift_task_alloc();
  v8 = sub_1000244D0();
  v5[39] = v8;
  v5[40] = *(v8 - 8);
  v5[41] = swift_task_alloc();
  v9 = sub_1000247B0();
  v5[42] = v9;
  v5[43] = *(v9 - 8);
  v5[44] = swift_task_alloc();
  sub_100024FD0();
  v5[45] = sub_100024FC0();
  v11 = sub_100024FA0();
  v5[46] = v11;
  v5[47] = v10;

  return _swift_task_switch(sub_100014364, v11, v10);
}

uint64_t sub_100014364()
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
    v7 = sub_1000246B0();
    if (v8 >> 60 == 15)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (qword_100035090 != -1)
        {
          swift_once();
        }

        v9 = qword_1000366E8;
        if (qword_1000366E8 >> 60 != 15)
        {
          v10 = qword_1000366E0;
          sub_10000E2A0(qword_1000366E0, qword_1000366E8);
          sub_100003274(v10, v9);
          sub_1000246C0();
          sub_100024530();
          v11 = sub_1000244C0();
          v12 = sub_100025060();
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
            v16 = sub_100024790();
            v18 = v17;
            swift_endAccess();
            v19 = sub_1000056C8(v16, v18, &v41);

            *(v14 + 4) = v19;
            _os_log_impl(&_mh_execute_header, v11, v12, "%s - using fallback icon (2)", v14, 0xCu);
            sub_100005794(v15);

            sub_10000E2B4(v10, v9);
            (*(v13 + 8))(v40, v39);
          }

          else
          {
            v21 = v0[40];
            v20 = v0[41];
            v22 = v0[39];
            sub_10000E2B4(v10, v9);

            (*(v21 + 8))(v20, v22);
          }
        }
      }
    }

    else
    {
      sub_10000E2B4(v7, v8);
    }
  }

  else
  {
    sub_100003274(v0[27], v0[28]);
    sub_1000246C0();
  }

  v23 = v0[35];
  v24 = v0[30];
  v25 = v0[31];
  (*(v0[37] + 104))(v0[38], enum case for MessageDetails.EventStatus.purged(_:), v0[36]);
  swift_beginAccess();
  sub_100024740();
  swift_endAccess();
  swift_beginAccess();
  sub_100024710();
  swift_endAccess();
  if ((*(v25 + 48))(v23, 1, v24) != 1)
  {
    v28 = v0[35];

    sub_100006270(v28, &qword_1000355A8, &unk_100027360);
    goto LABEL_16;
  }

  sub_100006270(v0[35], &qword_1000355A8, &unk_100027360);
  swift_beginAccess();
  v26 = sub_100024760();
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
  sub_100015074();
  v35 = sub_100024600();
  v36 = sub_1000245F0();
  v0[5] = v35;
  v0[6] = &protocol witness table for ContactFetcher;
  v0[2] = v36;
  v37 = swift_task_alloc();
  v0[50] = v37;
  *v37 = v0;
  v37[1] = sub_100014884;
  v38 = v0[34];

  return static FAFamilyCircle.resolveFamily(userDSID:actionUserDSID:withContactFetcher:useCache:)(v38, v34, 0, 1, v0 + 2, 1);
}

uint64_t sub_100014884()
{
  v2 = *v1;

  if (v0)
  {

    v3 = v2[46];
    v4 = v2[47];
    v5 = sub_100014BBC;
  }

  else
  {
    sub_100005794(v2 + 2);
    v3 = v2[46];
    v4 = v2[47];
    v5 = sub_1000149B0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000149B0()
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
  sub_100024720();
  swift_endAccess();
  v7 = sub_1000247C0();
  sub_1000250B0();

  swift_beginAccess();
  sub_100024780();
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

uint64_t sub_100014BBC()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);

  sub_100005794((v0 + 16));
  (*(v3 + 56))(v1, 1, 1, v2);
  sub_100006270(v1, &qword_1000355A8, &unk_100027360);
  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v6 = *(v0 + 336);
  (*(v0 + 384))(*(v0 + 200), v4, v6);
  (*(v5 + 8))(v4, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100014CFC()
{
  sub_10000E70C(v0 + 16);
  sub_10000E70C(v0 + 32);
  sub_100005794((v0 + 48));
  sub_100005794((v0 + 88));

  return swift_deallocClassInstance();
}

unint64_t sub_100014D78()
{
  result = qword_1000355B8;
  if (!qword_1000355B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000355B8);
  }

  return result;
}

uint64_t sub_100014DCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000269C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100014E54()
{
  v1 = sub_1000243D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100014F38(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000243D0() - 8);
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
  v13[1] = sub_100002E80;

  return sub_100010E78(a1, v7, v8, v9, v1 + v6, v11, v12);
}

unint64_t sub_100015074()
{
  result = qword_1000355C8;
  if (!qword_1000355C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000355C8);
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

unint64_t sub_100015234()
{
  result = qword_1000355D0;
  if (!qword_1000355D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000355D0);
  }

  return result;
}

uint64_t sub_100015288(uint64_t a1)
{
  v111 = a1;
  v2 = sub_1000244D0();
  v3 = *(v2 - 8);
  v109 = v2;
  v110 = v3;
  v4 = __chkstk_darwin(v2);
  v105 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v98 = &v94 - v7;
  __chkstk_darwin(v6);
  v102 = &v94 - v8;
  v104 = sub_1000245A0();
  v100 = *(v104 - 8);
  v9 = __chkstk_darwin(v104);
  v101 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v99 = &v94 - v12;
  v13 = __chkstk_darwin(v11);
  v103 = &v94 - v14;
  __chkstk_darwin(v13);
  v112 = &v94 - v15;
  v16 = sub_100024630();
  v107 = *(v16 - 1);
  v108 = v16;
  __chkstk_darwin(v16);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_10000269C(&qword_100035610, &qword_1000272B8);
  __chkstk_darwin(v106);
  v20 = &v94 - v19;
  v21 = sub_10000269C(&qword_1000353E8, &unk_100026FE0);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v94 - v26;
  __chkstk_darwin(v25);
  v29 = &v94 - v28;
  v30 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_eventNotifier;
  swift_beginAccess();
  sub_100005934(&v1[v30], v113, &qword_100035420, &qword_100027030);
  v31 = v114;
  result = sub_100006270(v113, &qword_100035420, &qword_100027030);
  if (v31)
  {
    return result;
  }

  v96 = v24;
  v95 = v18;
  v94 = v30;
  v97 = v1;
  sub_100024670();
  v34 = v107;
  v33 = v108;
  (*(v107 + 104))(v27, enum case for MessageDetails.EventSource.askToBuy(_:), v108);
  (*(v34 + 56))(v27, 0, 1, v33);
  v35 = *(v106 + 48);
  sub_100005934(v29, v20, &qword_1000353E8, &unk_100026FE0);
  sub_100005934(v27, &v20[v35], &qword_1000353E8, &unk_100026FE0);
  v36 = *(v34 + 48);
  if (v36(v20, 1, v33) == 1)
  {
    sub_100006270(v27, &qword_1000353E8, &unk_100026FE0);
    sub_100006270(v29, &qword_1000353E8, &unk_100026FE0);
    v37 = v36(&v20[v35], 1, v33);
    v38 = v112;
    if (v37 == 1)
    {
      sub_100006270(v20, &qword_1000353E8, &unk_100026FE0);
      v39 = v110;
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v40 = v34;
  v41 = v96;
  sub_100005934(v20, v96, &qword_1000353E8, &unk_100026FE0);
  v42 = v36(&v20[v35], 1, v33);
  v38 = v112;
  if (v42 == 1)
  {
    sub_100006270(v27, &qword_1000353E8, &unk_100026FE0);
    sub_100006270(v29, &qword_1000353E8, &unk_100026FE0);
    (*(v40 + 8))(v41, v33);
LABEL_7:
    sub_100006270(v20, &qword_100035610, &qword_1000272B8);
    v39 = v110;
    goto LABEL_8;
  }

  v49 = v95;
  (*(v40 + 32))(v95, &v20[v35], v33);
  sub_100016EE4(&qword_100035630, &type metadata accessor for MessageDetails.EventSource, &protocol conformance descriptor for MessageDetails.EventSource);
  v50 = sub_100024E70();
  v51 = *(v40 + 8);
  v51(v49, v33);
  sub_100006270(v27, &qword_1000353E8, &unk_100026FE0);
  sub_100006270(v29, &qword_1000353E8, &unk_100026FE0);
  v51(v96, v33);
  sub_100006270(v20, &qword_1000353E8, &unk_100026FE0);
  v39 = v110;
  if (v50)
  {
LABEL_12:
    v52 = v97;
    if (v97[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_isBubbleActive] == 1)
    {
      v54 = *&v97[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
      v53 = *&v97[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID + 8];

      v55 = sub_100024790();
      v106 = v56;
      v107 = v55;
      v57 = v100;
      v58 = v38;
      v59 = v38;
      v60 = v104;
      (*(v100 + 104))(v58, enum case for StatusType.askToBuyRequest(_:), v104);
      v61 = *(v57 + 16);
      v62 = v103;
      v61(v103, v59, v60);
      v63 = [objc_opt_self() askToBuyStream];
      v108 = [v63 publisher];

      v111 = sub_10000269C(&qword_100035618, &qword_1000272C0);
      v64 = swift_allocObject();
      *(v64 + qword_100035BF8) = 0;
      v61((v64 + qword_100035BF0), v62, v60);
      v98 = v54;
      v113[0] = v54;
      v113[1] = v53;
      v113[2] = v107;
      v114 = v106;
      v65 = v60;
      v116 = &off_100031520;
      v66 = v97;
      swift_unknownObjectWeakInit();
      sub_100016E38(v113, v64 + qword_100035C00);

      v105 = v66;
      sub_100024530();
      v67 = v99;
      v106 = v61;
      v107 = v57 + 16;
      v61(v99, v62, v60);

      v68 = sub_1000244C0();
      v69 = sub_100025070();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v113[0] = v96;
        *v70 = 136315394;
        v71 = sub_1000056C8(v98, v53, v113);

        *(v70 + 4) = v71;
        *(v70 + 12) = 2080;
        sub_100016EE4(&qword_100035628, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
        v72 = sub_1000251A0();
        v74 = v73;
        v75 = *(v57 + 8);
        v75(v67, v104);
        v76 = sub_1000056C8(v72, v74, v113);

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

      sub_1000245E0();
      sub_1000245C0();
      v87 = v103;
      v88 = sub_1000245D0();

      v89 = v108;
      v90 = [v108 subscribeOn:v88];
      (v106)(v101, v87, v65);
      sub_10000269C(&qword_100035620, &unk_1000272C8);
      swift_allocObject();

      v91 = sub_100024830();

      v77(v87, v65);
      *(v64 + qword_100035BF8) = v91;

      v114 = v111;
      v115 = &off_100031950;
      v113[0] = v64;
      v77(v112, v65);
      v92 = v97;
      v93 = v94;
      swift_beginAccess();
      sub_10000E4D4(v113, &v92[v93]);
      return swift_endAccess();
    }

    else
    {
      v78 = v98;
      sub_100024530();
      v79 = v52;
      v80 = sub_1000244C0();
      v81 = sub_100025070();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v113[0] = swift_slowAlloc();
        *v82 = 136315394;
        v83 = &v79[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
        v84 = *&v79[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID];
        v85 = *(v83 + 1);

        v86 = sub_1000056C8(v84, v85, v113);

        *(v82 + 4) = v86;
        *(v82 + 12) = 2080;
        *(v82 + 14) = sub_1000056C8(0xD00000000000001ELL, 0x80000001000267C0, v113);
        _os_log_impl(&_mh_execute_header, v80, v81, "%s has been deactivated prior to %s!", v82, 0x16u);
        swift_arrayDestroy();
      }

      return (*(v39 + 8))(v78, v109);
    }
  }

LABEL_8:
  v43 = v105;
  sub_100024530();
  v44 = sub_1000244C0();
  v45 = sub_100025080();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v109;
  if (v46)
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "Misconfigured askToBuy details", v48, 2u);
  }

  return (*(v39 + 8))(v43, v47);
}

uint64_t sub_100016048()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AskToBuyMessageViewController(0);
  objc_msgSendSuper2(&v3, "viewDidLoad");
  *&v0[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_bubbleDelegate + 8] = &off_1000316A8;
  swift_unknownObjectWeakAssign();
  v1 = *&v0[OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_messageDetailsLoader];
  *(v1 + 40) = &off_100031680;
  swift_unknownObjectWeakAssign();
  *(v1 + 24) = &off_100031690;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1000163F0()
{
  v1 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy29AskToBuyMessageViewController_fallbackThumbnail;
  v2 = sub_100024610();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_100016458()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AskToBuyMessageViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AskToBuyMessageViewController(uint64_t a1)
{
  result = qword_100035600;
  if (!qword_100035600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100016550(uint64_t a1)
{
  result = sub_100024610();
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

uint64_t sub_1000165E0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy29AskToBuyMessageViewController_fallbackThumbnail;
  v4 = sub_100024610();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100016658(uint64_t a1)
{
  v2 = sub_1000247B0();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  type metadata accessor for AskToBuyBubble(0);
  swift_allocObject();
  return sub_10001A464(v4);
}

uint64_t sub_100016734(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_100024FD0();
  v3[5] = sub_100024FC0();
  v5 = sub_100024FA0();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_1000167D0, v5, v4);
}

uint64_t sub_1000167D0()
{
  v1 = (v0[4] + OBJC_IVAR____TtC22PeopleMessagesAskToBuy28RequestMessageViewController_uniqueID);
  v3 = *v1;
  v2 = v1[1];
  v0[8] = v2;

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1000168A0;
  v5 = v0[2];
  v6 = v0[3];

  return static AskToBuySupport.getDetailsWithDetails(withDetails:forId:)(v5, v6, v3, v2);
}

uint64_t sub_1000168A0()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_100016A20;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1000169BC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000169BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100016A20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100016A90(void *a1)
{
  v3 = sub_10000269C(&qword_1000351E0, &qword_100026E30);
  __chkstk_darwin(v3 - 8);
  v5 = &v22[-1] - v4;
  v6 = sub_1000245A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100016E98();
  v25 = &protocol witness table for BMAskToBuyEvent;
  v23[0] = a1;
  sub_10000E5A8(v23, v24);
  a1;
  sub_1000250C0();
  sub_100016EE4(&qword_100035640, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
  sub_100024F70();
  sub_100024F70();
  if (v22[0] == v22[6] && v22[1] == v22[7])
  {
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v10 = sub_1000251B0();
    (*(v7 + 8))(v9, v6);

    if ((v10 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v11 = v1 + qword_100035C00;
  v13 = *(v1 + qword_100035C00 + 16);
  v12 = *(v1 + qword_100035C00 + 24);

  if (v13 == sub_1000250F0() && v12 == v14)
  {
  }

  else
  {
    v15 = sub_1000251B0();

    if ((v15 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  sub_100016F2C(v11, v22);
  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = v22[5];
  sub_100016F88(v22);
  if (Strong)
  {
    v18 = sub_100025000();
    (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = Strong;
    v19[5] = v17;
    sub_100002F74(0, 0, v5, &unk_1000272E0, v19);
  }

LABEL_11:
  sub_100005794(v23);
  sub_10000269C(&qword_100035648, &qword_1000272D8);
  swift_allocObject();
  return sub_100024490();
}

unint64_t sub_100016E98()
{
  result = qword_100035638;
  if (!qword_100035638)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100035638);
  }

  return result;
}

uint64_t sub_100016EE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100016FDC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001701C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002E80;

  return sub_10001F810(a1, v4, v5, v7, v6);
}

uint64_t sub_1000170F0()
{
  v1 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer____lazy_storage___isMac;
  v2 = *(v0 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer____lazy_storage___isMac);
  if (v2 == 2)
  {
    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 userInterfaceIdiom];

    LOBYTE(v2) = v4 == 5;
    *(v0 + v1) = v4 == 5;
  }

  return v2 & 1;
}

uint64_t sub_100017170(uint64_t a1, uint64_t a2)
{
  v3 = sub_100024630();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10001A358(&qword_1000357F8, &type metadata accessor for MessageDetails.EventSource, &protocol conformance descriptor for MessageDetails.EventSource), v7 = sub_100024E50(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
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
      sub_10001A358(&qword_100035630, &type metadata accessor for MessageDetails.EventSource, &protocol conformance descriptor for MessageDetails.EventSource);
      v15 = sub_100024E70();
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

uint64_t sub_100017388()
{
  v0 = sub_100024650();
  v70 = *(v0 - 8);
  v71 = v0;
  v1 = __chkstk_darwin(v0);
  v65 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v67 = &v61 - v4;
  __chkstk_darwin(v3);
  v69 = &v61 - v5;
  v6 = sub_10000269C(&qword_1000355A8, &unk_100027360);
  v7 = __chkstk_darwin(v6 - 8);
  v75 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v68 = &v61 - v10;
  __chkstk_darwin(v9);
  v12 = &v61 - v11;
  v13 = sub_1000247F0();
  v76 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v74 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v66 = &v61 - v17;
  __chkstk_darwin(v16);
  v19 = &v61 - v18;
  v20 = sub_1000244D0();
  v72 = *(v20 - 8);
  v73 = v20;
  __chkstk_darwin(v20);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000269C(&qword_1000353E8, &unk_100026FE0);
  __chkstk_darwin(v23 - 8);
  v25 = &v61 - v24;
  v26 = sub_100024630();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_details;
  sub_100024670();
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_100006270(v25, &qword_1000353E8, &unk_100026FE0);
  }

  else
  {
    (*(v27 + 32))(v29, v25, v26);
    if (qword_1000350F8 != -1)
    {
      swift_once();
    }

    v30 = sub_100017170(v29, qword_100035650);
    (*(v27 + 8))(v29, v26);
    if (v30)
    {
      goto LABEL_30;
    }
  }

  sub_100024520();
  swift_retain_n();
  v31 = sub_1000244C0();
  v32 = sub_100025070();
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
  sub_100024710();
  v34 = v76;
  v35 = *(v76 + 48);
  if (v35(v12, 1, v13) == 1)
  {
    sub_100006270(v12, &qword_1000355A8, &unk_100027360);
    v36 = 1;
    v37 = v34;
  }

  else
  {
    (*(v34 + 32))(v19, v12, v13);
    v38 = sub_1000247E0();
    if (v38 >> 62)
    {
      v39 = sub_100025170();
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
  sub_100024710();
  if (v35(v40, 1, v13) == 1)
  {
    sub_100006270(v40, &qword_1000355A8, &unk_100027360);
    goto LABEL_19;
  }

  v41 = v66;
  (*(v37 + 32))(v66, v40, v13);
  v42 = sub_1000247D0();
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
  sub_100024730();
  v47 = sub_100024640();
  v49 = v48;
  (*(v70 + 8))(v46, v71);
  v50 = sub_1000056C8(v47, v49, v80);

  *(v33 + 16) = v50;
  v51 = v64;
  _os_log_impl(&_mh_execute_header, v64, v63, "[canPresentApprovalActions] familyIsEmpty: %{BOOL}d, amIaParent: %{BOOL}d, details.status: %s", v33, 0x18u);
  sub_100005794(v62);

  (*(v72 + 8))(v22, v73);
LABEL_21:
  v52 = v75;
  sub_100024710();
  if ((*(v37 + 48))(v52, 1, v13) == 1)
  {
    sub_100006270(v52, &qword_1000355A8, &unk_100027360);
LABEL_30:
    v56 = 0;
    return v56 & 1;
  }

  (*(v37 + 32))(v74, v52, v13);
  v53 = sub_1000247E0();
  if (v53 >> 62)
  {
    v54 = sub_100025170();
  }

  else
  {
    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  (*(v37 + 8))(v74, v13);
  if (!v54 || (sub_100017D54() & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_100024730();
  v55 = v65;
  (*(v70 + 104))(v65, enum case for MessageDetails.EventStatus.pending(_:), v71);
  sub_10001A358(&qword_100035808, &type metadata accessor for MessageDetails.EventStatus, &protocol conformance descriptor for MessageDetails.EventStatus);
  sub_100024F70();
  sub_100024F70();
  if (v80[0] == v78 && v80[1] == v79)
  {
    v56 = 1;
  }

  else
  {
    v56 = sub_1000251B0();
  }

  v58 = *(v70 + 8);
  v59 = v55;
  v60 = v71;
  v58(v59, v71);
  v58(v67, v60);

  return v56 & 1;
}

id sub_100017D54()
{
  v0 = sub_10000269C(&qword_1000355A8, &unk_100027360);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_1000247F0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024710();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_100006270(v2, &qword_1000355A8, &unk_100027360);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v7 = sub_1000247D0();
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

uint64_t sub_100017F20(char *a1)
{
  v2 = v1;
  v4 = sub_1000247B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer____lazy_storage___isIpad) = 2;
  *(v2 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer____lazy_storage___isMac) = 2;
  *(v2 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_contentViewController) = 0;
  v8 = v2 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_resolvedSize;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_details;
  v10 = *(v5 + 16);
  v10(v2 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_details, a1, v4);
  v10(v7, (v2 + v9), v4);
  v11 = sub_1000246B0();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v7, v4);
  if (v13 >> 60 == 15)
  {
    v11 = 0;
    v13 = 0xC000000000000000;
  }

  v15 = objc_allocWithZone(UIImage);
  isa = sub_1000243F0().super.isa;
  v17 = [v15 initWithData:isa];

  sub_100002D50(v11, v13);
  if (!v17)
  {
    v17 = [objc_allocWithZone(UIImage) init];
  }

  v14(a1, v4);
  *(v2 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_image) = v17;
  return v2;
}

uint64_t sub_100018120()
{
  v1 = sub_1000244D0();
  v126 = *(v1 - 8);
  v127 = v1;
  v2 = __chkstk_darwin(v1);
  v124 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v123 = &v116 - v4;
  v5 = sub_10000269C(&qword_1000353E8, &unk_100026FE0);
  v6 = __chkstk_darwin(v5 - 8);
  v117 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v118 = &v116 - v8;
  v9 = sub_10000269C(&qword_1000355A8, &unk_100027360);
  __chkstk_darwin(v9 - 8);
  v128 = &v116 - v10;
  v11 = sub_1000247F0();
  v12 = *(v11 - 8);
  v129 = v11;
  v130 = v12;
  __chkstk_darwin(v11);
  v125 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100024650();
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
  v134 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_details;
  v135 = v0;
  sub_100024730();
  v136 = *(v15 + 104);
  v137 = v15 + 104;
  v136(v35, enum case for MessageDetails.EventStatus.pending(_:), v14);
  sub_10001A358(&qword_100035808, &type metadata accessor for MessageDetails.EventStatus, &protocol conformance descriptor for MessageDetails.EventStatus);
  sub_100024F70();
  v38 = v14;
  sub_100024F70();
  if (v141 == v139 && v142 == v140)
  {
    v39 = 1;
  }

  else
  {
    v39 = sub_1000251B0();
  }

  v40 = *(v15 + 8);
  v40(v35, v38);
  v41 = v37;
  v133 = v40;
  v42 = (v15 + 8);
  v40(v41, v38);

  if (v39)
  {
    return sub_100024F10();
  }

  sub_100024730();
  v136(v30, enum case for MessageDetails.EventStatus.expired(_:), v38);
  sub_100024F70();
  sub_100024F70();
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

  v47 = sub_1000251B0();
  v48 = v30;
  v49 = v133;
  v133(v48, v38);
  v49(v138, v38);

  if (v47)
  {
    return 2099744;
  }

  v50 = v131;
  sub_100024730();
  v136(v132, enum case for MessageDetails.EventStatus.unknown(_:), v38);
  sub_100024F70();
  sub_100024F70();
  if (v141 == v139 && v142 == v140)
  {
    v49(v132, v38);
    v49(v50, v38);
    goto LABEL_10;
  }

  v51 = sub_1000251B0();
  v49(v132, v38);
  v49(v50, v38);

  if (v51)
  {
    return 2099744;
  }

  v52 = v128;
  sub_100024710();
  v54 = v129;
  v53 = v130;
  if ((*(v130 + 48))(v52, 1, v129) == 1)
  {
    sub_100006270(v52, &qword_1000355A8, &unk_100027360);
    v55 = v124;
    sub_100024530();
    v56 = sub_1000244C0();
    v57 = sub_100025080();
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
  v132 = sub_1000246E0();
  if (v60)
  {
LABEL_61:
    v112 = v123;
    sub_100024530();
    v113 = sub_1000244C0();
    v114 = sub_100025080();
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

  v61 = sub_1000247E0();
  v62 = v61;
  if (v61 >> 62)
  {
    v63 = sub_100025170();
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
      v65 = sub_100025150();
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
      v83 = sub_100024F10();

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

  sub_100024730();
  v136(v121, enum case for MessageDetails.EventStatus.denied(_:), v44);
  sub_100024F70();
  sub_100024F70();
  v73 = v130;
  v74 = v125;
  if (v141 == v139 && v142 == v140)
  {
    v75 = v133;
    v133(v121, v44);
    v75(v122, v44);

    goto LABEL_39;
  }

  v76 = sub_1000251B0();
  v77 = v133;
  v133(v121, v44);
  v77(v122, v44);

  if (v76)
  {
LABEL_39:
    v78 = v138;
    [v138 isMe];
    sub_100024F10();

    sub_10000269C(&qword_100035810, &qword_100027388);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_100026E20;
    v80 = sub_1000250B0();
    v82 = v81;
    *(v79 + 56) = &type metadata for String;
    *(v79 + 64) = sub_10001A410();
    *(v79 + 32) = v80;
    *(v79 + 40) = v82;
    v83 = sub_100024EC0();

    (*(v73 + 8))(v74, v129);
    return v83;
  }

  v84 = v119;
  sub_100024730();
  v85 = v120;
  v136(v120, enum case for MessageDetails.EventStatus.approved(_:), v44);
  sub_10001A358(&qword_100035418, &type metadata accessor for MessageDetails.EventStatus, &protocol conformance descriptor for MessageDetails.EventStatus);
  v86 = sub_100024E70();
  v77(v85, v44);
  v77(v84, v44);
  if ((v86 & 1) == 0)
  {
    (*(v73 + 8))(v74, v129);

    return 2099744;
  }

  v87 = v118;
  sub_100024670();
  v63 = sub_100024630();
  v62 = *(v63 - 8);
  if ((*(v62 + 48))(v87, 1, v63) == 1)
  {
    goto LABEL_43;
  }

  v88 = v117;
  sub_10001A3A0(v87, v117);
  v89 = (*(v62 + 88))(v88, v63);
  if (v89 == enum case for MessageDetails.EventSource.askToBuy(_:))
  {
    v90 = v138;
    [v138 isMe];
    sub_100024F10();

    sub_10000269C(&qword_100035810, &qword_100027388);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_100026E20;
    v92 = sub_1000250B0();
    v94 = v93;
    *(v91 + 56) = &type metadata for String;
    *(v91 + 64) = sub_10001A410();
    *(v91 + 32) = v92;
    *(v91 + 40) = v94;
    v83 = sub_100024EC0();

    goto LABEL_47;
  }

  if (v89 != enum case for MessageDetails.EventSource.screenTime(_:))
  {
    goto LABEL_55;
  }

  sub_100024690();
  v96 = sub_100024F30();
  v98 = v97;

  if (!v98)
  {
    v100 = v138;
    [v138 isMe];
    sub_100024F10();

    sub_10000269C(&qword_100035810, &qword_100027388);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_100026E20;
    v102 = sub_1000250B0();
    v104 = v103;
    *(v101 + 56) = &type metadata for String;
    *(v101 + 64) = sub_10001A410();
    *(v101 + 32) = v102;
    *(v101 + 40) = v104;
    v83 = sub_100024EC0();

LABEL_57:
    (*(v130 + 8))(v125, v129);
    v95 = v118;
LABEL_48:
    sub_100006270(v95, &qword_1000353E8, &unk_100026FE0);
    return v83;
  }

  if ([v138 isMe])
  {
    sub_100024F10();
    sub_10000269C(&qword_100035810, &qword_100027388);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_100026E20;
    *(v99 + 56) = &type metadata for String;
    *(v99 + 64) = sub_10001A410();
    *(v99 + 32) = v96;
    *(v99 + 40) = v98;
    v83 = sub_100024EC0();

    goto LABEL_57;
  }

  sub_100024F10();
  sub_10000269C(&qword_100035810, &qword_100027388);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_1000272F0;
  v106 = v138;
  v107 = sub_1000250B0();
  v109 = v108;
  *(v105 + 56) = &type metadata for String;
  v110 = sub_10001A410();
  *(v105 + 32) = v107;
  *(v105 + 40) = v109;
  *(v105 + 96) = &type metadata for String;
  *(v105 + 104) = v110;
  *(v105 + 64) = v110;
  *(v105 + 72) = v96;
  *(v105 + 80) = v98;
  v111 = sub_100024EC0();

  (*(v130 + 8))(v125, v129);
  sub_100006270(v118, &qword_1000353E8, &unk_100026FE0);
  return v111;
}

id sub_100019340()
{
  v0 = sub_100024650();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024730();
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

void *sub_1000194D8@<X0>(uint64_t *a1@<X8>)
{
  v67 = a1;
  v1 = sub_10000269C(&qword_1000355A8, &unk_100027360);
  __chkstk_darwin(v1 - 8);
  v65 = &v57 - v2;
  v3 = sub_1000247F0();
  v4 = *(v3 - 8);
  v68 = v3;
  v69 = v4;
  __chkstk_darwin(v3);
  v66 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000269C(&qword_1000353E8, &unk_100026FE0);
  v7 = __chkstk_darwin(v6 - 8);
  v61 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v57 - v9;
  v11 = sub_100024630();
  v70 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v58 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v64 = &v57 - v14;
  v15 = sub_100024650();
  v16 = *(v15 - 8);
  v17 = v16;
  __chkstk_darwin(v15);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000269C(&qword_1000357E8, &qword_100027370);
  v20 = *(v16 + 72);
  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = swift_allocObject();
  v63 = xmmword_1000272F0;
  *(v22 + 16) = xmmword_1000272F0;
  v23 = v22 + v21;
  v24 = *(v17 + 104);
  v24(v23, enum case for MessageDetails.EventStatus.approved(_:), v15);
  v24(v23 + v20, enum case for MessageDetails.EventStatus.denied(_:), v15);
  v71 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_details;
  sub_100024730();
  LOBYTE(v20) = sub_100019D54(v19, v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v17 + 8))(v19, v15);
  v25 = v11;
  if ((v20 & 1) == 0)
  {
    sub_100024670();
    v26 = v70;
    if ((*(v70 + 48))(v10, 1, v11) == 1)
    {
      sub_100006270(v10, &qword_1000353E8, &unk_100026FE0);
    }

    else
    {
      v27 = v64;
      (*(v26 + 32))(v64, v10, v25);
      if (qword_1000350F8 != -1)
      {
        swift_once();
      }

      v28 = sub_100017170(v27, qword_100035650);
      (*(v26 + 8))(v27, v25);
      if (v28)
      {
        sub_10000269C(&qword_1000357F0, &qword_100027378);
        v29 = swift_allocObject();
        *(v29 + 16) = v63;
        *(v29 + 32) = 0;
        *(v29 + 40) = 0;
        *(v29 + 48) = sub_100024F10();
        *(v29 + 56) = v30;
        goto LABEL_9;
      }
    }
  }

  sub_100018120();
  v31 = sub_100024F20();

  v29 = sub_100019E60(v31);

LABEL_9:

  v32 = sub_100019340();
  v34 = v33;
  v36 = v35;
  if (v32)
  {

    v37 = v32;
    v38 = sub_100024C60();
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
  sub_100024710();
  v44 = v69;
  if ((*(v69 + 48))(v43, 1, v42) != 1)
  {
    (*(v44 + 32))(v66, v43, v42);
    v46 = sub_1000247E0();
    v45 = v70;
    if (!(v46 >> 62))
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_22;
    }

LABEL_35:
    v47 = sub_100025170();
    v45 = v70;
LABEL_22:

    (*(v69 + 8))(v66, v42);
    if (v47)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  sub_100006270(v43, &qword_1000355A8, &unk_100027360);
  v45 = v70;
LABEL_23:
  v48 = v61;
  sub_100024670();
  if ((*(v45 + 48))(v48, 1, v25) == 1)
  {

    sub_100006270(v48, &qword_1000353E8, &unk_100026FE0);
LABEL_30:
    sub_100024F00();
    v53 = sub_100024F10();
    v34 = v54;

    v36 = sub_100024F10();
    v15 = v55;
    result = sub_10001A1C4(v32, v62, v63);
    v52 = 0;
    v39 = 0;
    goto LABEL_31;
  }

  v49 = v58;
  (*(v45 + 32))(v58, v48, v25);
  if (qword_1000350F8 != -1)
  {
    swift_once();
  }

  v50 = sub_100017170(v49, qword_100035650);
  (*(v45 + 8))(v49, v25);
  if ((v50 & 1) == 0)
  {

    goto LABEL_30;
  }

LABEL_28:
  result = sub_10001A1C4(v32, v62, v63);
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

BOOL sub_100019D54(uint64_t a1, uint64_t a2)
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

    sub_100024650();
    ++v2;
    sub_10001A358(&qword_100035418, &type metadata accessor for MessageDetails.EventStatus, &protocol conformance descriptor for MessageDetails.EventStatus);
  }

  while ((sub_100024E70() & 1) == 0);
  return v3 != v4;
}

unint64_t *sub_100019E60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001A204(0, v1, 0);
    v3 = a1 + 40;
    do
    {

      sub_10000269C(&qword_100035800, &qword_100027380);
      swift_dynamicCast();
      v4 = v8;
      v6 = *(&_swiftEmptyArrayStorage + 2);
      v5 = *(&_swiftEmptyArrayStorage + 3);
      if (v6 >= v5 >> 1)
      {
        sub_10001A204((v5 > 1), v6 + 1, 1);
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
  v1 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_details;
  v2 = sub_1000247B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t BubbleContentContainer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_details;
  v2 = sub_1000247B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BubbleContentContainer(uint64_t a1)
{
  result = qword_100035690;
  if (!qword_100035690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001A108(uint64_t a1)
{
  result = sub_1000247B0();
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

void *sub_10001A1C4(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

void *sub_10001A204(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001A224(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001A224(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000269C(&qword_1000357F0, &qword_100027378);
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
    sub_10000269C(&qword_100035800, &qword_100027380);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10001A358(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001A3A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000269C(&qword_1000353E8, &unk_100026FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001A410()
{
  result = qword_100035818;
  if (!qword_100035818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035818);
  }

  return result;
}

uint64_t sub_10001A464(uint64_t a1)
{
  v3 = sub_1000247B0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy14AskToBuyBubble__buttonTapped;
  v15[15] = 0;
  sub_100024D20();
  v8 = v16;
  *v7 = v15[16];
  *(v7 + 8) = v8;
  (*(v4 + 16))(v6, a1, v3);
  v9 = sub_100017F20(v6);
  v10 = *(v9 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_image);

  v11 = v10;
  v12 = sub_10001B374(v11);

  (*(v4 + 8))(a1, v3);
  v13 = *(v9 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_contentViewController);
  *(v9 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_contentViewController) = v12;

  return v9;
}

__n128 sub_10001A5D8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a3;
  v64 = a1;
  v65 = a2;
  v76 = a5;
  v7 = sub_100024A90();
  v72 = *(v7 - 8);
  v73 = v7;
  __chkstk_darwin(v7);
  v71 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10000269C(&qword_100035AD8, &qword_1000274A8);
  v69 = *(v66 - 8);
  __chkstk_darwin(v66);
  v10 = &v59 - v9;
  v70 = sub_10000269C(&qword_100035AE0, &qword_1000274B0);
  v68 = *(v70 - 8);
  v11 = __chkstk_darwin(v70);
  v75 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v74 = &v59 - v13;
  v14 = sub_10000269C(&qword_100035AB8, &unk_100027470);
  __chkstk_darwin(v14 - 8);
  v16 = &v59 - v15;
  if (sub_1000170F0())
  {
    v17 = sub_100024DA0();
  }

  else
  {
    v17 = sub_100024D90();
  }

  v61 = v18;
  v62 = v17;
  v19 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer____lazy_storage___isMac;
  v20 = *(v5 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer____lazy_storage___isMac);
  v21 = objc_opt_self();
  v22 = 0x2E6E6F7276656863;
  if (v20)
  {
    v22 = 0;
  }

  v60 = v22;
  if (v20)
  {
    v23 = 0;
  }

  else
  {
    v23 = 0xEF64726177726F66;
  }

  v24 = &selRef_systemFillColor;
  if ((v20 & 1) == 0)
  {
    v24 = &selRef_tertiarySystemFillColor;
  }

  v25 = [v21 *v24];
  v77 = sub_100024C60();
  *v16 = sub_100024A00();
  *(v16 + 1) = 0;
  v16[16] = 1;
  if (*(v5 + v19))
  {
    v57 = sub_100024D80();
    v58 = v26;
    LOBYTE(v56) = 1;
    v55 = 0;
    LOBYTE(v54) = 1;
    v53 = 0;
    sub_100024920();
    *&v78[71] = v94;
    *&v78[55] = v93;
    *&v78[103] = v96;
    *&v78[87] = v95;
    *&v78[23] = v91;
    *&v78[7] = v90;
    *&v78[39] = v92;
    *(&v79[4] + 9) = *&v78[64];
    *(&v79[5] + 9) = *&v78[80];
    *(&v79[6] + 9) = *&v78[96];
    *(v79 + 9) = *v78;
    *(&v79[1] + 9) = *&v78[16];
    *(&v79[2] + 9) = *&v78[32];
    v97[0].n128_u8[0] = 1;
    *&v79[0] = 0;
    BYTE8(v79[0]) = 1;
    *(&v79[7] + 1) = *(&v96 + 1);
    *(&v79[3] + 9) = *&v78[48];
    sub_10001E280(v79);
    v87 = v79[6];
    v88 = v79[7];
    v83 = v79[2];
    v84 = v79[3];
    v89 = v80;
    v85 = v79[4];
    v86 = v79[5];
    v81 = v79[0];
    v82 = v79[1];
  }

  else
  {
    sub_10001DCAC(&v81);
  }

  v27 = *(sub_10000269C(&qword_100035AE8, &qword_1000274B8) + 44);
  v67 = v16;
  v28 = &v16[v27];
  v29 = swift_allocObject();
  *(v29 + 16) = v63;
  *(v29 + 24) = a4;
  __chkstk_darwin(v29);
  v30 = v65;
  *(&v59 - 8) = v64;
  *(&v59 - 7) = v30;
  v53 = v77;
  v54 = v62;
  v55 = v61;
  v56 = v60;
  v57 = v23;
  v58 = v5;

  sub_10000269C(&qword_100035AF0, &qword_1000274C0);
  sub_10001DD40();
  sub_100024D50();
  v31 = v71;
  sub_100024A80();
  sub_10001E1F0(&qword_100035BB0, &qword_100035AD8, &qword_1000274A8, &protocol conformance descriptor for Button<A>);
  sub_10001E238(&qword_100035BB8, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  v32 = v73;
  v33 = v74;
  v34 = v66;
  sub_100024C20();
  (*(v72 + 8))(v31, v32);
  (*(v69 + 8))(v10, v34);
  v79[5] = v86;
  v79[6] = v87;
  v79[7] = v88;
  v79[1] = v82;
  v79[2] = v83;
  v79[3] = v84;
  v79[4] = v85;
  v80 = v89;
  v79[0] = v81;
  v35 = v68;
  v36 = *(v68 + 16);
  v37 = v75;
  v38 = v70;
  v36(v75, v33, v70);
  v39 = v79[5];
  v40 = v79[7];
  *(v28 + 6) = v79[6];
  *(v28 + 7) = v40;
  v41 = v79[1];
  v42 = v79[3];
  v43 = v79[4];
  *(v28 + 2) = v79[2];
  *(v28 + 3) = v42;
  v28[128] = v80;
  *(v28 + 4) = v43;
  *(v28 + 5) = v39;
  *v28 = v79[0];
  *(v28 + 1) = v41;
  v44 = sub_10000269C(&qword_100035BC0, &qword_100027520);
  v36(&v28[*(v44 + 48)], v37, v38);
  v45 = *(v35 + 8);
  v45(v33, v38);
  v45(v37, v38);

  if (qword_1000350A8 != -1)
  {
    swift_once();
  }

  v46 = qword_1000366F8;
  v57 = sub_100024D80();
  v58 = v47;
  LOBYTE(v56) = 0;
  v55 = v46;
  LOBYTE(v54) = 1;
  v53 = 0;
  sub_100024920();

  v48 = v76;
  sub_100014DCC(v67, v76, &qword_100035AB8, &unk_100027470);
  v49 = (v48 + *(sub_10000269C(&qword_100035AA0, &qword_100027468) + 36));
  v50 = v97[5];
  v49[4] = v97[4];
  v49[5] = v50;
  v49[6] = v97[6];
  v51 = v97[1];
  *v49 = v97[0];
  v49[1] = v51;
  result = v97[3];
  v49[2] = v97[2];
  v49[3] = result;
  return result;
}

uint64_t sub_10001ADC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v69 = a8;
  v70 = a3;
  v71 = a9;
  v66 = sub_10000269C(&qword_100035B18, &qword_1000274D0);
  __chkstk_darwin(v66);
  v16 = &v63[-v15];
  v67 = sub_10000269C(&qword_100035B08, &qword_1000274C8);
  __chkstk_darwin(v67);
  v68 = &v63[-v17];
  v18 = objc_opt_self();
  v19 = [v18 labelColor];
  v20 = sub_100024C60();
  v21 = [v18 tertiaryLabelColor];
  v22 = sub_100024C60();
  v65 = sub_100024A00();
  v80 = 0;
  sub_10001FC4C(a1, a2, v20, a4, a5, a6, a7, v22, v78);
  memcpy(v84, v78, sizeof(v84));
  memcpy(v85, v78, 0x270uLL);
  sub_100005934(v84, v76, &qword_100035BC8, &qword_100027528);
  sub_100006270(v85, &qword_100035BC8, &qword_100027528);
  memcpy(&v79[7], v84, 0x270uLL);
  v23 = v80;
  v64 = sub_100024B10();
  if (qword_100035098 != -1)
  {
    swift_once();
  }

  sub_1000248D0();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v81 = 0;
  v32 = sub_100024B20();
  sub_1000248D0();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v82 = 0;
  sub_100024D80();
  sub_1000248E0();
  *&v83[7] = v78[0];
  *&v83[23] = v78[1];
  *&v83[39] = v78[2];
  v41 = sub_100024B00();

  v42 = &v16[*(v66 + 36)];
  v43 = *(sub_100024910() + 20);
  v44 = enum case for RoundedCornerStyle.continuous(_:);
  v45 = sub_100024A10();
  (*(*(v45 - 8) + 104))(&v42[v43], v44, v45);
  __asm { FMOV            V0.2D, #10.0 }

  *v42 = _Q0;
  *&v42[*(sub_10000269C(&qword_100035B88, &qword_100027508) + 36)] = 256;
  *v16 = v65;
  *(v16 + 1) = 0;
  v16[16] = v23;
  memcpy(v16 + 17, v79, 0x277uLL);
  v16[648] = v64;
  *(v16 + 649) = *v75;
  *(v16 + 163) = *&v75[3];
  *(v16 + 82) = v25;
  *(v16 + 83) = v27;
  *(v16 + 84) = v29;
  *(v16 + 85) = v31;
  v16[688] = 0;
  *(v16 + 689) = *v74;
  *(v16 + 173) = *&v74[3];
  v16[696] = v32;
  *(v16 + 697) = *v73;
  *(v16 + 175) = *&v73[3];
  *(v16 + 88) = v34;
  *(v16 + 89) = v36;
  *(v16 + 90) = v38;
  *(v16 + 91) = v40;
  v16[736] = 0;
  v51 = *&v83[16];
  *(v16 + 737) = *v83;
  *(v16 + 753) = v51;
  *(v16 + 769) = *&v83[32];
  *(v16 + 98) = *&v83[47];
  *(v16 + 99) = v70;
  v16[800] = v41;
  v52 = v68;
  v53 = &v68[*(v67 + 36)];
  v54 = *(sub_10000269C(&qword_100035B98, &qword_100027510) + 28);
  v55 = enum case for Image.Scale.small(_:);
  v56 = sub_100024D00();
  (*(*(v56 - 8) + 104))(v53 + v54, v55, v56);
  *v53 = swift_getKeyPath();
  sub_100014DCC(v16, v52, &qword_100035B18, &qword_1000274D0);
  v57 = *(v69 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy14AskToBuyBubble__buttonTapped + 8);
  v76[0] = *(v69 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy14AskToBuyBubble__buttonTapped);
  v77 = v57;

  sub_10000269C(&qword_100035AC8, &qword_100027480);
  sub_100024D30();
  LOBYTE(v54) = v72;
  KeyPath = swift_getKeyPath();
  v59 = swift_allocObject();
  *(v59 + 16) = v54;
  v60 = v71;
  sub_100014DCC(v52, v71, &qword_100035B08, &qword_1000274C8);
  result = sub_10000269C(&qword_100035AF0, &qword_1000274C0);
  v62 = (v60 + *(result + 36));
  *v62 = KeyPath;
  v62[1] = sub_10001E318;
  v62[2] = v59;
  return result;
}

uint64_t sub_10001B374(char *a1)
{
  v127 = a1;
  v145 = sub_100024AE0();
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v144 = &v121[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_10000269C(&qword_1000359E8, &qword_1000273D0);
  v4 = __chkstk_darwin(v3 - 8);
  v140 = &v121[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v139 = &v121[-v6];
  v136 = sub_100024AB0();
  v134 = *(v136 - 8);
  __chkstk_darwin(v136);
  v132 = &v121[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v137 = sub_10000269C(&qword_1000359F0, &qword_1000273D8);
  v135 = *(v137 - 8);
  __chkstk_darwin(v137);
  v133 = &v121[-v8];
  v131 = sub_10000269C(&qword_1000359F8, &qword_1000273E0);
  v9 = __chkstk_darwin(v131);
  v138 = &v121[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v130 = &v121[-v12];
  __chkstk_darwin(v11);
  v148 = &v121[-v13];
  v141 = sub_10000269C(&qword_100035A00, &qword_1000273E8);
  v14 = __chkstk_darwin(v141);
  v142 = &v121[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v153 = &v121[-v16];
  v129 = sub_1000244D0();
  v126 = *(v129 - 8);
  __chkstk_darwin(v129);
  v125 = &v121[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_1000250D0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v121[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_1000247B0();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v121[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v28 = &v121[-v27];
  v146 = v23;
  v147 = v29;
  v30 = *(v23 + 16);
  v30(&v121[-v27], v1 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_details);
  v149 = v1;
  v128 = sub_100017388();
  strcpy(v179, "appstore");
  BYTE1(v179[1]) = 0;
  WORD1(v179[1]) = 0;
  HIDWORD(v179[1]) = -402653184;
  if (qword_1000350C8 != -1)
  {
    swift_once();
  }

  v31 = qword_100036720;
  v177 = qword_100036718;
  v178 = qword_100036720;
  v152 = qword_100036718;

  v151 = v31;

  v150 = v28;
  sub_100024680();
  sub_100016E98();
  sub_1000250E0();

  v32 = (*(v19 + 88))(v21, v18);
  if (v32 != enum case for BMAskToBuyEvent.ProductType.books(_:))
  {
    if (v32 == enum case for BMAskToBuyEvent.ProductType.iTunes(_:))
    {
      strcpy(v179, "star.fill");
      WORD1(v179[1]) = 0;
      HIDWORD(v179[1]) = -385875968;
      v129 = 0xE90000000000006CLL;
      if (qword_1000350D0 != -1)
      {
        swift_once();
      }

      v35 = &qword_100036728;
    }

    else
    {
      v36 = v150;
      if (v32 != enum case for BMAskToBuyEvent.ProductType.subscriptions(_:))
      {
        if (v32 == enum case for BMAskToBuyEvent.ProductType.appleTV(_:))
        {
          strcpy(v179, "appletv.fill");
          BYTE5(v179[1]) = 0;
          HIWORD(v179[1]) = -5120;
          v129 = 0xEC0000006C6C6966;
        }

        else
        {
          v124 = v19;
          v109 = v125;
          sub_100024530();
          v110 = v36;
          v111 = v147;
          (v30)(v26, v110, v147);
          v112 = sub_1000244C0();
          v113 = sub_100025070();
          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            v123 = swift_slowAlloc();
            *v156 = v123;
            *v114 = 136315138;
            v122 = v113;
            v115 = sub_100024680();
            if (v116)
            {
              v117 = v115;
            }

            else
            {
              v117 = 0;
            }

            v118 = v111;
            if (v116)
            {
              v119 = v116;
            }

            else
            {
              v119 = 0xE000000000000000;
            }

            (*(v146 + 8))(v26, v118);
            v120 = sub_1000056C8(v117, v119, v156);

            *(v114 + 4) = v120;
            _os_log_impl(&_mh_execute_header, v112, v122, "Unknown product type (%s), defaults to app store", v114, 0xCu);
            sub_100005794(v123);
          }

          else
          {

            (*(v146 + 8))(v26, v111);
          }

          (*(v126 + 8))(v109, v129);
          (*(v124 + 8))(v21, v18);
          v129 = 0xE800000000000000;
        }

        goto LABEL_16;
      }

      strcpy(v179, "goforward.plus");
      HIBYTE(v179[1]) = -18;
      v129 = 0xEE0073756C702E64;
      if (qword_1000350E0 != -1)
      {
        swift_once();
      }

      v35 = &qword_100036748;
    }

    v37 = *v35;
    v38 = v35[1];

    v177 = v37;
    v178 = v38;
    v151 = v38;
    v152 = v37;
    goto LABEL_16;
  }

  strcpy(v179, "book.fill");
  WORD1(v179[1]) = 0;
  HIDWORD(v179[1]) = -385875968;
  v129 = 0xE90000000000006CLL;
  if (qword_1000350D8 != -1)
  {
    swift_once();
  }

  v33 = qword_100036738;
  v34 = qword_100036740;

  v177 = v33;
  v178 = v34;
  v151 = v34;
  v152 = v33;
LABEL_16:
  v39 = sub_100024A30();
  v40 = v153;
  *v153 = v39;
  v40[1] = 0;
  *(v40 + 16) = 0;
  v41 = sub_1000249F0();
  v161 = 0;
  sub_10001C644(v127, v179, &v177, v149, v156);
  v173 = *&v156[160];
  v174[0] = *&v156[176];
  *(v174 + 9) = *&v156[185];
  v169 = *&v156[96];
  v170 = *&v156[112];
  v172 = *&v156[144];
  v171 = *&v156[128];
  v165 = *&v156[32];
  v166 = *&v156[48];
  v168 = *&v156[80];
  v167 = *&v156[64];
  v164 = *&v156[16];
  v163 = *v156;
  v175[10] = *&v156[160];
  v176[0] = *&v156[176];
  *(v176 + 9) = *&v156[185];
  v175[6] = *&v156[96];
  v175[7] = *&v156[112];
  v175[9] = *&v156[144];
  v175[8] = *&v156[128];
  v175[2] = *&v156[32];
  v175[3] = *&v156[48];
  v175[5] = *&v156[80];
  v175[4] = *&v156[64];
  v175[1] = *&v156[16];
  v175[0] = *v156;
  sub_100005934(&v163, v155, &qword_100035A08, &qword_1000273F0);
  sub_100006270(v175, &qword_100035A08, &qword_1000273F0);
  *(&v160[9] + 7) = v172;
  *(&v160[10] + 7) = v173;
  *(&v160[11] + 7) = v174[0];
  v160[12] = *(v174 + 9);
  *(&v160[5] + 7) = v168;
  *(&v160[6] + 7) = v169;
  *(&v160[7] + 7) = v170;
  *(&v160[8] + 7) = v171;
  *(&v160[1] + 7) = v164;
  *(&v160[2] + 7) = v165;
  *(&v160[3] + 7) = v166;
  *(&v160[4] + 7) = v167;
  *(v160 + 7) = v163;
  v42 = v161;
  if (qword_1000350E8 != -1)
  {
    swift_once();
  }

  sub_100024D80();
  v43 = sub_10000269C(&qword_100035A10, &qword_1000273F8);
  v127 = v153 + *(v43 + 44);
  sub_100024920();
  *&v162[55] = v183;
  *&v162[71] = v184;
  *&v162[87] = v185;
  *&v162[103] = v186;
  *&v162[7] = v180;
  *&v162[23] = v181;
  *&v162[39] = v182;
  *(&v155[20] + 1) = v160[9];
  *(&v155[22] + 1) = v160[10];
  *(&v155[24] + 1) = v160[11];
  *(&v155[26] + 1) = v160[12];
  *(&v155[12] + 1) = v160[5];
  *(&v155[14] + 1) = v160[6];
  *(&v155[16] + 1) = v160[7];
  *(&v155[18] + 1) = v160[8];
  *(&v155[4] + 1) = v160[1];
  *(&v155[6] + 1) = v160[2];
  *(&v155[8] + 1) = v160[3];
  *(&v155[36] + 1) = *&v162[64];
  *(&v155[38] + 1) = *&v162[80];
  *(&v155[40] + 1) = *&v162[96];
  *(&v155[32] + 1) = *&v162[32];
  *(&v155[34] + 1) = *&v162[48];
  *(&v155[10] + 1) = v160[4];
  *(&v155[2] + 1) = v160[0];
  *(&v155[28] + 1) = *v162;
  v155[0] = v41;
  v155[1] = 0;
  LOBYTE(v155[2]) = v42;
  v155[42] = *(&v186 + 1);
  *(&v155[30] + 1) = *&v162[16];
  v44 = v132;
  sub_100024AA0();
  sub_10000269C(&qword_100035A18, &qword_100027400);
  sub_10001D76C();
  v45 = v133;
  sub_100024C50();
  (*(v134 + 8))(v44, v136);
  memcpy(v156, v155, sizeof(v156));
  sub_100006270(v156, &qword_100035A18, &qword_100027400);
  v46 = sub_100024C90();
  v47 = sub_100024B00();
  v48 = v130;
  (*(v135 + 32))(v130, v45, v137);
  v49 = v48 + *(v131 + 36);
  *v49 = v46;
  *(v49 + 8) = v47;
  v50 = v148;
  sub_100014DCC(v48, v148, &qword_1000359F8, &qword_1000273E0);
  sub_100024D80();
  sub_1000248E0();
  v136 = v155[2];
  v137 = v155[0];
  v134 = v155[5];
  v135 = v155[4];
  v159 = 1;
  v158 = v155[1];
  v157 = v155[3];
  v51 = sub_100024A20();
  v52 = v139;
  *v139 = v51;
  *(v52 + 8) = 0;
  *(v52 + 16) = 0;
  sub_10000269C(&qword_100035A38, &qword_100027410);
  sub_10001CD94(v128 & 1, v149);
  v53 = v138;
  sub_100005934(v50, v138, &qword_1000359F8, &qword_1000273E0);
  LOBYTE(v45) = v159;
  LOBYTE(v50) = v158;
  v54 = v157;
  v55 = v140;
  sub_100005934(v52, v140, &qword_1000359E8, &qword_1000273D0);
  v56 = v127;
  sub_100005934(v53, v127, &qword_1000359F8, &qword_1000273E0);
  v57 = sub_10000269C(&qword_100035A40, &qword_100027418);
  v58 = &v56[*(v57 + 48)];
  *v58 = 0;
  v58[8] = v45;
  v59 = v136;
  *(v58 + 2) = v137;
  v58[24] = v50;
  *(v58 + 4) = v59;
  v58[40] = v54;
  v60 = v134;
  *(v58 + 6) = v135;
  *(v58 + 7) = v60;
  sub_100005934(v55, &v56[*(v57 + 64)], &qword_1000359E8, &qword_1000273D0);
  sub_100006270(v52, &qword_1000359E8, &qword_1000273D0);
  sub_100006270(v148, &qword_1000359F8, &qword_1000273E0);
  sub_100006270(v55, &qword_1000359E8, &qword_1000273D0);
  sub_100006270(v53, &qword_1000359F8, &qword_1000273E0);
  v61 = sub_100024C90();
  LOBYTE(v45) = sub_100024B00();
  v62 = sub_10000269C(&qword_100035A48, &qword_100027420);
  v63 = v153;
  v64 = v153 + *(v62 + 36);
  *v64 = v61;
  v64[8] = v45;
  LOBYTE(v61) = sub_100024B10();
  sub_1000248D0();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = v63 + *(sub_10000269C(&qword_100035A50, &qword_100027428) + 36);
  *v73 = v61;
  *(v73 + 8) = v66;
  *(v73 + 16) = v68;
  *(v73 + 24) = v70;
  *(v73 + 32) = v72;
  *(v73 + 40) = 0;
  LOBYTE(v61) = sub_100024B40();
  sub_1000248D0();
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v82 = v63 + *(sub_10000269C(&qword_100035A58, &qword_100027430) + 36);
  *v82 = v61;
  *(v82 + 8) = v75;
  *(v82 + 16) = v77;
  *(v82 + 24) = v79;
  *(v82 + 32) = v81;
  *(v82 + 40) = 0;
  LOBYTE(v61) = sub_100024B30();
  sub_1000248D0();
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v91 = v63 + *(sub_10000269C(&qword_100035A60, &qword_100027438) + 36);
  *v91 = v61;
  *(v91 + 8) = v84;
  *(v91 + 16) = v86;
  *(v91 + 24) = v88;
  *(v91 + 32) = v90;
  *(v91 + 40) = 0;
  LOBYTE(v61) = sub_100024B20();
  sub_1000248D0();
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v100 = v63 + *(sub_10000269C(&qword_100035A68, &qword_100027440) + 36);
  *v100 = v61;
  *(v100 + 8) = v93;
  *(v100 + 16) = v95;
  *(v100 + 24) = v97;
  *(v100 + 32) = v99;
  *(v100 + 40) = 0;
  v101 = sub_100024900();
  v102 = sub_100024B00();
  v103 = v142;
  v104 = v63 + *(v141 + 36);
  *v104 = v101;
  *(v104 + 8) = v102;
  sub_100005934(v63, v103, &qword_100035A00, &qword_1000273E8);
  v105 = objc_allocWithZone(sub_10000269C(&qword_100035A70, &qword_100027448));
  v106 = sub_100024A60();
  sub_10000269C(&qword_100035A78, &qword_100027450);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_1000272F0;
  sub_100024AD0();
  sub_100024AC0();
  v154 = v107;
  sub_10001E238(&qword_100035A80, &type metadata accessor for UIHostingControllerSizingOptions, &protocol conformance descriptor for UIHostingControllerSizingOptions);
  sub_10000269C(&qword_100035A88, &qword_100027458);
  sub_10001E1F0(&qword_100035A90, &qword_100035A88, &qword_100027458, &protocol conformance descriptor for [A]);
  sub_100025110();
  sub_100024A40();
  sub_100024A50();
  sub_100006270(v63, &qword_100035A00, &qword_1000273E8);

  (*(v146 + 8))(v150, v147);
  return v106;
}

uint64_t sub_10001C644@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a2[1];
  v62 = *a2;
  v8 = *a3;
  v9 = a3[1];

  v64 = v8;

  v63 = v9;

  v59 = a4;

  v60 = sub_100024CA0();
  [a1 size];
  v11 = v10;
  [a1 size];
  v13 = v12;
  if (qword_100035098 != -1)
  {
    swift_once();
  }

  if (byte_100035430)
  {
    v14 = 48.0;
  }

  else
  {
    v14 = 60.0;
  }

  v15 = 90.0;
  if (byte_100035430)
  {
    v15 = 72.0;
  }

  if (v11 == v13)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = objc_opt_self();
  v18 = [v17 mainScreen];
  [v18 scale];
  v20 = v19;

  v21 = v14 * v20;
  v22 = [v17 mainScreen];
  [v22 scale];
  v24 = v23;

  [a1 size];
  v102.origin.x = 0.0;
  v102.origin.y = 0.0;
  v102.size.width = v21;
  v102.size.height = v16 * v24;
  v101 = AVMakeRectWithAspectRatioInsideRect(v100, v102);
  width = v101.size.width;
  height = v101.size.height;
  v27 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v27 setScale:1.0];
  v28 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v27 format:{width, height}];
  v29 = swift_allocObject();
  *(v29 + 2) = a1;
  v29[3] = width;
  v29[4] = height;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_10001DBA0;
  *(v30 + 24) = v29;
  *&v80 = sub_10001DBBC;
  *(&v80 + 1) = v30;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v79 = sub_10001D720;
  *(&v79 + 1) = &unk_100031770;
  v31 = _Block_copy(&aBlock);
  v32 = a1;

  v33 = [v28 imageWithActions:v31];

  _Block_release(v31);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
  }

  else
  {
    sub_100024D80();
    sub_1000248E0();
    v57 = v96;
    v58 = v94;
    v55 = v99;
    v56 = v98;
    v67 = v95;
    v66 = v97;
    sub_100024F10();
    sub_10000269C(&qword_100035810, &qword_100027388);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100026E20;
    v36 = sub_100024770();
    v38 = v37;
    *(v35 + 56) = &type metadata for String;
    *(v35 + 64) = sub_10001A410();
    *(v35 + 32) = v36;
    *(v35 + 40) = v38;
    v39 = sub_100024EC0();
    v41 = v40;

    v42 = sub_1000246A0();
    v44 = v43;
    v45 = sub_100024A30();
    v46 = sub_100024C90();
    v47 = sub_100024B00();
    *&v68 = v33;
    *(&v68 + 1) = v62;
    *&v69 = v61;
    *(&v69 + 1) = v60;
    *&v70 = v64;
    *(&v70 + 1) = v63;
    *&v71 = sub_10001DB60;
    *(&v71 + 1) = v59;
    v72 = v11 == v13;
    aBlock = v68;
    LOBYTE(v82) = v11 == v13;
    v81 = v71;
    v80 = v70;
    v79 = v69;
    v73 = v45;
    LOBYTE(v74) = 0;
    DWORD1(v74) = *&v65[3];
    *(&v74 + 1) = *v65;
    *(&v74 + 1) = v39;
    *&v75 = v41;
    *(&v75 + 1) = v42;
    *&v76 = v44;
    *(&v76 + 1) = v46;
    v77 = v47;
    v48 = v68;
    v49 = v69;
    v50 = v71;
    v51 = v82;
    *(a5 + 32) = v70;
    *(a5 + 48) = v50;
    *a5 = v48;
    *(a5 + 16) = v49;
    *(a5 + 64) = v51;
    *(a5 + 72) = 0;
    *(a5 + 80) = 1;
    *(a5 + 88) = v58;
    *(a5 + 96) = v67;
    *(a5 + 104) = v57;
    *(a5 + 112) = v66;
    *(a5 + 120) = v56;
    *(a5 + 128) = v55;
    v52 = v74;
    *(a5 + 136) = v73;
    v53 = v75;
    v54 = v76;
    *(a5 + 200) = v77;
    *(a5 + 184) = v54;
    *(a5 + 168) = v53;
    *(a5 + 152) = v52;
    v83[0] = v45;
    v83[1] = 0;
    v84 = 0;
    *&v85[3] = *&v65[3];
    *v85 = *v65;
    v86 = v39;
    v87 = v41;
    v88 = v42;
    v89 = v44;
    v90 = v46;
    v91 = v47;
    sub_10001DBFC(&v68, v92);
    sub_100005934(&v73, v92, &qword_100035AD0, &qword_1000274A0);
    sub_100006270(v83, &qword_100035AD0, &qword_1000274A0);
    v92[0] = v33;
    v92[1] = v62;
    v92[2] = v61;
    v92[3] = v60;
    v92[4] = v64;
    v92[5] = v63;
    v92[6] = sub_10001DB60;
    v92[7] = v59;
    v93 = v11 == v13;
    return sub_10001DC58(v92);
  }

  return result;
}

uint64_t sub_10001CC5C(uint64_t a1)
{
  v1 = sub_100024550();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1000170F0();
  if ((result & 1) == 0)
  {
    sub_100024580();
    sub_100024570();
    (*(v2 + 104))(v4, enum case for PeopleAnalytics.MessageRequestBubbleSource.askToBuy(_:), v1);
    sub_100024560();

    (*(v2 + 8))(v4, v1);
    return sub_10001E620();
  }

  return result;
}

uint64_t sub_10001CD94(char a1, uint64_t a2)
{
  v4 = sub_10000269C(&qword_100035A98, &qword_100027460);
  __chkstk_darwin(v4);
  v6 = v17 - v5;
  v7 = sub_10000269C(&qword_100035AA0, &qword_100027468);
  __chkstk_darwin(v7);
  v9 = v17 - v8;
  if (a1)
  {
    sub_1000170F0();
    v10 = sub_100024F10();
    v12 = v11;

    sub_10001A5D8(v10, v12, sub_10001D978, a2, v9);

    sub_100005934(v9, v6, &qword_100035AA0, &qword_100027468);
    swift_storeEnumTagMultiPayload();
    sub_10001D86C();
    sub_10001D924();
    sub_100024A70();
    return sub_100006270(v9, &qword_100035AA0, &qword_100027468);
  }

  else
  {
    sub_1000194D8(v17);
    v14 = v18;
    v15 = v17[1];
    v16 = v17[2];
    *v6 = v17[0];
    *(v6 + 1) = v15;
    *(v6 + 2) = v16;
    *(v6 + 6) = v14;
    swift_storeEnumTagMultiPayload();
    sub_10001D86C();
    sub_10001D924();
    return sub_100024A70();
  }
}

uint64_t sub_10001CFEC(uint64_t a1)
{
  v2 = sub_10000269C(&qword_1000351E0, &qword_100026E30);
  __chkstk_darwin(v2 - 8);
  v4 = &v10[-v3];
  v5 = *(a1 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy14AskToBuyBubble__buttonTapped + 8);
  v10[16] = *(a1 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy14AskToBuyBubble__buttonTapped);
  v11 = v5;
  v10[15] = 1;
  sub_10000269C(&qword_100035AC8, &qword_100027480);
  sub_100024D40();
  v6 = sub_100025000();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_100024FD0();

  v7 = sub_100024FC0();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = a1;
  sub_100002F74(0, 0, v4, &unk_100027490, v8);
}

uint64_t sub_10001D15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[5] = sub_100024FD0();
  v4[6] = sub_100024FC0();
  v6 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_details;
  v7 = swift_task_alloc();
  v4[7] = v7;
  *v7 = v4;
  v7[1] = sub_10001D234;

  return sub_10001EDFC(a4 + v6);
}

uint64_t sub_10001D234()
{
  v1 = *v0;
  v4 = *v0;

  v2 = swift_task_alloc();
  *(v1 + 64) = v2;
  *v2 = v4;
  v2[1] = sub_10001D368;

  return static Task<>.sleep(nanoseconds:)(4000000000);
}

uint64_t sub_10001D368()
{

  if (v0)
  {

    v1 = sub_100024FA0();
    v3 = v2;
    v4 = sub_10001E330;
  }

  else
  {
    v1 = sub_100024FA0();
    v3 = v5;
    v4 = sub_10001D4EC;
  }

  return _swift_task_switch(v4, v1, v3);
}

uint64_t sub_10001D4EC()
{
  v1 = *(v0 + 32);

  v2 = *(v1 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy14AskToBuyBubble__buttonTapped + 8);
  *(v0 + 16) = *(v1 + OBJC_IVAR____TtC22PeopleMessagesAskToBuy14AskToBuyBubble__buttonTapped);
  *(v0 + 24) = v2;
  *(v0 + 72) = 0;
  sub_10000269C(&qword_100035AC8, &qword_100027480);
  sub_100024D40();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10001D5AC()
{
  v1 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy22BubbleContentContainer_details;
  v2 = sub_1000247B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AskToBuyBubble(uint64_t a1)
{
  result = qword_100035850;
  if (!qword_100035850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001D720(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}