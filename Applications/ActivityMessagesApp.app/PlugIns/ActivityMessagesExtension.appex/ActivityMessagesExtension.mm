uint64_t sub_100001AC8()
{
  sub_100001E80();
  result = sub_10000FBEC();
  qword_1000189D8 = result;
  return result;
}

uint64_t sub_100001B44(uint64_t a1, id *a2)
{
  result = sub_10000FA1C();
  *a2 = 0;
  return result;
}

uint64_t sub_100001BBC(uint64_t a1, id *a2)
{
  v3 = sub_10000FA2C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100001C3C@<X0>(uint64_t *a1@<X8>)
{
  sub_10000FA3C();
  v2 = sub_10000FA0C();

  *a1 = v2;
  return result;
}

uint64_t sub_100001C80()
{
  sub_10000FA3C();
  v0 = sub_10000FA7C();

  return v0;
}

uint64_t sub_100001CBC(uint64_t a1)
{
  sub_10000FA3C();
  sub_10000FA6C();
}

Swift::Int sub_100001D10(uint64_t a1)
{
  sub_10000FA3C();
  sub_10000FD9C();
  sub_10000FA6C();
  v1 = sub_10000FDBC();

  return v1;
}

uint64_t sub_100001D84(void *a1, uint64_t *a2)
{
  v2 = sub_10000FA3C();
  v4 = v3;
  if (v2 == sub_10000FA3C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_10000FD7C();
  }

  return v7 & 1;
}

uint64_t sub_100001E0C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10000FA0C();

  *a2 = v3;
  return result;
}

uint64_t sub_100001E54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000FA3C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100001E80()
{
  result = qword_1000189E0;
  if (!qword_1000189E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000189E0);
  }

  return result;
}

void type metadata accessor for OpenExternalURLOptionsKey()
{
  if (!qword_1000189E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000189E8);
    }
  }
}

uint64_t sub_100001F1C(uint64_t a1)
{
  v2 = sub_100002050(&qword_100018A08, &unk_100010FF4);
  v3 = sub_100002050(&unk_100018A10, &unk_100010F48);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002050(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OpenExternalURLOptionsKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100002094()
{
  v1 = OBJC_IVAR____TtC25ActivityMessagesExtension17StickerDataSource____lazy_storage___defaultStickers;
  if (*(v0 + OBJC_IVAR____TtC25ActivityMessagesExtension17StickerDataSource____lazy_storage___defaultStickers))
  {
    v2 = *(v0 + OBJC_IVAR____TtC25ActivityMessagesExtension17StickerDataSource____lazy_storage___defaultStickers);
  }

  else
  {
    v2 = sub_10000AEB4();
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1000020F8()
{
  v1 = &unk_1000148A8;
  v2 = 4;
  v3 = &_swiftEmptyArrayStorage;
  while (1)
  {

    v4 = sub_10000FA0C();
    v5 = [v0 URLsForResourcesWithExtension:v4 subdirectory:0];

    if (v5)
    {
      sub_10000F85C();
      v6 = sub_10000FAAC();
    }

    else
    {

      v6 = &_swiftEmptyArrayStorage;
    }

    v7 = v6[2];
    v8 = v3[2];
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v9 <= v3[3] >> 1)
    {
      if (v6[2])
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      v3 = sub_100005544(isUniquelyReferenced_nonNull_native, v11, 1, v3);
      if (v6[2])
      {
LABEL_16:
        v12 = (v3[3] >> 1) - v3[2];
        sub_10000F85C();
        if (v12 < v7)
        {
          goto LABEL_23;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v13 = v3[2];
          v14 = __OFADD__(v13, v7);
          v15 = v13 + v7;
          if (v14)
          {
            goto LABEL_24;
          }

          v3[2] = v15;
        }

        goto LABEL_3;
      }
    }

    if (v7)
    {
      goto LABEL_22;
    }

LABEL_3:
    v1 += 16;
    if (!--v2)
    {
      swift_arrayDestroy();
      return;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_1000022EC(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC25ActivityMessagesExtension17StickerDataSource_stickers) = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_10000FB7C();
    if (qword_1000189D0 != -1)
    {
      swift_once();
    }

    v5 = qword_1000189D8;
    sub_10000ADCC(&qword_100018B08, &unk_1000110D0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100011040;
    *(v6 + 56) = sub_10000ADCC(&qword_100018B10, &unk_100011170);
    *(v6 + 64) = sub_10000BBAC(&qword_100018B18, &qword_100018B10, &unk_100011170, &protocol conformance descriptor for [A]);
    *(v6 + 32) = &_swiftEmptyArrayStorage;
    sub_10000F95C("Data source did update, reloading", 33, 2, &_mh_execute_header, v5, v4, v6);

    v7 = [v3 stickerBrowserView];
    [v7 reloadData];
    swift_unknownObjectRelease();
  }
}

id sub_1000024A4()
{
  *&v0[OBJC_IVAR____TtC25ActivityMessagesExtension17StickerDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC25ActivityMessagesExtension17StickerDataSource_awardQuery] = 0;
  *&v0[OBJC_IVAR____TtC25ActivityMessagesExtension17StickerDataSource____lazy_storage___defaultStickers] = 0;
  v1 = [objc_allocWithZone(AAUIAchievementResourceProvider) init];
  *&v0[OBJC_IVAR____TtC25ActivityMessagesExtension17StickerDataSource_resourceProvider] = v1;
  if (&_swiftEmptyArrayStorage >> 62 && sub_10000FD2C())
  {
    sub_10000B204(&_swiftEmptyArrayStorage);
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC25ActivityMessagesExtension17StickerDataSource_achievements] = v2;
  *&v0[OBJC_IVAR____TtC25ActivityMessagesExtension17StickerDataSource_stickers] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC25ActivityMessagesExtension17StickerDataSource_queryRetryCount] = 0;
  *&v0[OBJC_IVAR____TtC25ActivityMessagesExtension17StickerDataSource_queryRetryDelayIncrement] = 10000;
  *&v0[OBJC_IVAR____TtC25ActivityMessagesExtension17StickerDataSource_queryRetryMaxmiumDelay] = 300000;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for StickerDataSource();
  v3 = objc_msgSendSuper2(&v9, "init");
  if (&_swiftEmptyArrayStorage >> 62 && sub_10000FD2C())
  {
    v4 = v3;
    sub_10000B204(&_swiftEmptyArrayStorage);
    v6 = v5;
  }

  else
  {
    v7 = v3;
    v6 = &_swiftEmptySetSingleton;
  }

  sub_100003500(v6, nullsub_1, 0);

  sub_10000264C();

  return v3;
}

void sub_10000264C()
{
  v1 = v0;
  v2 = sub_10000F96C();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v24 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10000F9BC();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v22 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v23 = &v19[-v7];
  v20 = sub_10000F97C();
  __chkstk_darwin(v20);
  v21 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = OBJC_IVAR____TtC25ActivityMessagesExtension17StickerDataSource_awardQuery;
  v9 = *&v0[OBJC_IVAR____TtC25ActivityMessagesExtension17StickerDataSource_awardQuery];
  if (v9)
  {
    v10 = v9;
    v11 = sub_10000FB7C();
    if (qword_1000189D0 != -1)
    {
      swift_once();
    }

    v12 = qword_1000189D8;
    sub_10000ADCC(&qword_100018B08, &unk_1000110D0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100011040;
    *(v13 + 56) = sub_10000ADCC(&qword_100018B10, &unk_100011170);
    *(v13 + 64) = sub_10000BBAC(&qword_100018B18, &qword_100018B10, &unk_100011170, &protocol conformance descriptor for [A]);
    *(v13 + 32) = &_swiftEmptyArrayStorage;
    sub_10000F95C("Deactivating existing awards query", 34, 2, &_mh_execute_header, v12, v11, v13);

    sub_10000F92C();
  }

  *(swift_allocObject() + 16) = v1;
  *(swift_allocObject() + 16) = v1;
  *(swift_allocObject() + 16) = v1;
  *(swift_allocObject() + 16) = v1;
  objc_allocWithZone(sub_10000F94C());
  v30 = v1;
  v14 = sub_10000F91C();
  v15 = sub_10000FB7C();
  if (qword_1000189D0 != -1)
  {
    swift_once();
  }

  v16 = qword_1000189D8;
  sub_10000ADCC(&qword_100018B08, &unk_1000110D0);
  v17 = swift_allocObject();
  v31 = xmmword_100011040;
  *(v17 + 16) = xmmword_100011040;
  *(v17 + 56) = sub_10000ADCC(&qword_100018B10, &unk_100011170);
  *(v17 + 64) = sub_10000BBAC(&qword_100018B18, &qword_100018B10, &unk_100011170, &protocol conformance descriptor for [A]);
  *(v17 + 32) = &_swiftEmptyArrayStorage;
  sub_10000F95C("Activating awards query", 23, 2, &_mh_execute_header, v16, v15, v17);

  sub_10000F93C();
  v18 = *&v1[v29];
  *&v1[v29] = v14;
}

uint64_t sub_100002FAC(uint64_t a1, char *a2)
{
  v3 = sub_10000FB7C();
  if (qword_1000189D0 != -1)
  {
    swift_once();
  }

  v4 = qword_1000189D8;
  sub_10000ADCC(&qword_100018B08, &unk_1000110D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100011040;
  *(v5 + 56) = sub_10000ADCC(&qword_100018B10, &unk_100011170);
  *(v5 + 64) = sub_10000BBAC(&qword_100018B18, &qword_100018B10, &unk_100011170, &protocol conformance descriptor for [A]);
  *(v5 + 32) = &_swiftEmptyArrayStorage;
  sub_10000F95C("Initial achievements delivered", 30, 2, &_mh_execute_header, v4, v3, v5);

  *&a2[OBJC_IVAR____TtC25ActivityMessagesExtension17StickerDataSource_queryRetryCount] = 0;

  v7 = sub_10000B4F4(v6);

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = a2;
  sub_100003500(v7, sub_10000C214, v8);
}

void sub_100003164(void *a1, uint64_t a2)
{
  swift_beginAccess();
  sub_10000800C(&v4, a1);
  v3 = v4;
  swift_endAccess();
}

uint64_t sub_1000031D8(uint64_t a1, void *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10000FB7C();
  if (qword_1000189D0 != -1)
  {
    swift_once();
  }

  v10 = qword_1000189D8;
  sub_10000ADCC(&qword_100018B08, &unk_1000110D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100011040;
  *(v11 + 56) = sub_10000ADCC(&qword_100018B10, &unk_100011170);
  *(v11 + 64) = sub_10000BBAC(&qword_100018B18, &qword_100018B10, &unk_100011170, &protocol conformance descriptor for [A]);
  *(v11 + 32) = &_swiftEmptyArrayStorage;
  sub_10000F95C(a3, a4, 2, &_mh_execute_header, v10, v9, v11);

  v13 = sub_10000B4F4(v12);

  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  v15 = a2;
  sub_100003500(v13, a6, v14);
}

void sub_10000338C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = sub_100009520(a1);
  swift_endAccess();
}

void sub_1000033F8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = sub_1000099C0(a1);
  swift_endAccess();
}

void sub_100003464(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10000264C();
  }
}

uint64_t sub_1000034B8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100003500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000F97C();
  v19 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000F99C();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BAB0(0, &qword_100018B98, OS_dispatch_queue_ptr);
  v13 = sub_10000FB9C();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = v3;
  aBlock[4] = sub_10000BB40;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000034B8;
  aBlock[3] = &unk_100014930;
  v15 = _Block_copy(aBlock);

  v16 = v3;

  sub_10000F98C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000BB64(&qword_100018BA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000ADCC(&qword_100018BA8, &qword_100011128);
  sub_10000BBAC(&qword_100018BB0, &qword_100018BA8, &qword_100011128, &protocol conformance descriptor for [A]);
  sub_10000FBFC();
  sub_10000FBAC();
  _Block_release(v15);

  (*(v19 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v18);
}

void sub_100003814(uint64_t a1, void (*a2)(id), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {

      sub_10000FC2C();
      sub_10000BAB0(0, &qword_100018B50, ACHAchievement_ptr);
      sub_10000BBF4();
      sub_10000FB5C();
      v5 = v23;
      v6 = v24;
      v8 = v25;
      v7 = v26;
      v9 = v27;
    }

    else
    {
      v10 = -1 << *(a1 + 32);
      v6 = a1 + 56;
      v8 = ~v10;
      v11 = -v10;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      else
      {
        v12 = -1;
      }

      v9 = v12 & *(a1 + 56);

      v7 = 0;
    }

    if (v5 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v13 = v7;
      v14 = v9;
      v15 = v7;
      if (!v9)
      {
        break;
      }

LABEL_13:
      v16 = (v14 - 1) & v14;
      v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
      if (!v17)
      {
LABEL_19:
        sub_10000A894(v5);
        swift_beginAccess();

        v19 = sub_100005494(v18);

        v20 = sub_100003B38(v19);

        v21 = sub_100002094();
        sub_100007E7C(v21);
        sub_1000022EC(v20);
        return;
      }

      while (1)
      {
        a2(v17);

        v7 = v15;
        v9 = v16;
        if ((v5 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (sub_10000FC5C())
        {
          sub_10000BAB0(0, &qword_100018B50, ACHAchievement_ptr);
          swift_dynamicCast();
          v17 = v22;
          v15 = v7;
          v16 = v9;
          if (v22)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v8 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100003B38(unint64_t a1)
{
  v75 = sub_10000F85C();
  v77 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v73 = v56 - v4;
  v5 = sub_10000FB7C();
  if (qword_1000189D0 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v6 = qword_1000189D8;
    v7 = sub_10000ADCC(&qword_100018B08, &unk_1000110D0);
    v8 = swift_allocObject();
    v68 = xmmword_100011040;
    *(v8 + 16) = xmmword_100011040;
    v9 = sub_10000ADCC(&qword_100018B10, &unk_100011170);
    *(v8 + 56) = v9;
    v10 = sub_10000BBAC(&qword_100018B18, &qword_100018B10, &unk_100011170, &protocol conformance descriptor for [A]);
    *(v8 + 64) = v10;
    *(v8 + 32) = &_swiftEmptyArrayStorage;
    sub_10000F95C("Uniqueing achievements", 22, 2, &_mh_execute_header, v6, v5, v8);

    v5 = sub_1000044A4(a1);
    v11 = sub_10000FB7C();
    v60 = v7;
    a1 = swift_allocObject();
    *(a1 + 16) = v68;
    v59 = v9;
    *(a1 + 56) = v9;
    *(a1 + 64) = v10;
    v58 = v10;
    *(a1 + 32) = &_swiftEmptyArrayStorage;
    v61 = v6;
    sub_10000F95C("Filtering to earned achievements", 32, 2, &_mh_execute_header, v6, v11, a1);

    v79 = &_swiftEmptyArrayStorage;
    if (v5 >> 62)
    {
      v12 = sub_10000FD2C();
    }

    else
    {
      v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v12)
    {
      v13 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v14 = sub_10000FCBC();
        }

        else
        {
          if (v13 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v14 = *(v5 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if ([v14 unearned])
        {
        }

        else
        {
          a1 = &v79;
          sub_10000FCDC();
          sub_10000FCFC();
          sub_10000FD0C();
          sub_10000FCEC();
        }

        ++v13;
        if (v16 == v12)
        {
          goto LABEL_15;
        }
      }

LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_15:

    v17 = sub_10000FB7C();
    v18 = swift_allocObject();
    *(v18 + 16) = v68;
    v19 = v59;
    v20 = v58;
    *(v18 + 56) = v59;
    *(v18 + 64) = v20;
    *(v18 + 32) = &_swiftEmptyArrayStorage;
    v21 = v61;
    sub_10000F95C("Collecting stickers", 19, 2, &_mh_execute_header, v61, v17, v18);

    v79 = sub_100009EA8(v22);
    sub_100005418(&v79);

    v23 = v79;
    v24 = v78;
    v5 = sub_10000B6B4(v23);

    v25 = sub_10000FB7C();
    v26 = swift_allocObject();
    *(v26 + 16) = v68;
    *(v26 + 56) = v19;
    *(v26 + 64) = v20;
    *(v26 + 32) = &_swiftEmptyArrayStorage;
    sub_10000F95C("Uniqueing stickers", 18, 2, &_mh_execute_header, v21, v25, v26);

    if (v5 >> 62)
    {
      v66 = v5 & 0xFFFFFFFFFFFFFF8;
      v27 = sub_10000FD2C();
      if (!v27)
      {
LABEL_53:
        v28 = &_swiftEmptyArrayStorage;
        goto LABEL_54;
      }
    }

    else
    {
      v66 = v5 & 0xFFFFFFFFFFFFFF8;
      v27 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
        goto LABEL_53;
      }
    }

    a1 = 0;
    v65 = v5 & 0xC000000000000001;
    v64 = v5 + 32;
    v28 = &_swiftEmptyArrayStorage;
    v72 = (v77 + 8);
    v57 = xmmword_100011050;
    v63 = v5;
    v62 = v27;
LABEL_19:
    v30 = v28 & 0xFFFFFFFFFFFFFF8;
    v77 = v28 & 0xFFFFFFFFFFFFFF8;
    if (v28 < 0)
    {
      v30 = v28;
    }

    v56[1] = v30;
    v71 = v28 & 0xC000000000000001;
    v67 = v28 >> 62;
LABEL_22:
    if (v65)
    {
      break;
    }

    if (a1 < *(v66 + 16))
    {
      v31 = *(v64 + 8 * a1);
      v32 = __OFADD__(a1++, 1);
      if (!v32)
      {
        goto LABEL_25;
      }

      goto LABEL_48;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

  v31 = sub_10000FCBC();
  v32 = __OFADD__(a1++, 1);
  if (v32)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_25:
  v69 = v31;
  v70 = a1;
  v33 = [v31 imageFileURL];
  v5 = v73;
  sub_10000F84C();

  v34 = v74;
  sub_10000F83C();
  v35 = sub_10000F81C();
  v78 = v36;
  a1 = v72;
  v37 = *v72;
  v38 = v34;
  v39 = v75;
  (*v72)(v38, v75);
  v37(v5, v39);
  if (v67)
  {
    v76 = sub_10000FD2C();
  }

  else
  {
    v76 = *(v77 + 16);
  }

  v40 = 0;
  while (1)
  {
    if (v76 == v40)
    {

      sub_10000ADCC(&qword_100018B30, &qword_1000110F0);
      inited = swift_initStackObject();
      *(inited + 16) = v57;
      *(inited + 32) = v69;
      v79 = v28;
      sub_100007E7C(inited);
      v28 = v79;
      a1 = v70;
      v5 = v63;
      if (v70 == v62)
      {
        goto LABEL_54;
      }

      goto LABEL_19;
    }

    if (v71)
    {
      v42 = sub_10000FCBC();
    }

    else
    {
      if (v40 >= *(v77 + 16))
      {
        goto LABEL_45;
      }

      v42 = *(v28 + 8 * v40 + 32);
    }

    v5 = v42;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v43 = [v42 imageFileURL];
    v44 = v73;
    sub_10000F84C();

    v45 = v74;
    sub_10000F83C();
    v46 = sub_10000F81C();
    a1 = v47;
    v48 = v45;
    v49 = v75;
    v37(v48, v75);
    v37(v44, v49);
    if (v46 == v35 && a1 == v78)
    {
      break;
    }

    v41 = sub_10000FD7C();

    ++v40;
    if (v41)
    {
      goto LABEL_38;
    }
  }

LABEL_38:
  sub_10000ADCC(&qword_100018AF8, qword_100011270);
  v50 = swift_allocObject();
  *(v50 + 16) = v68;
  *(v50 + 56) = &type metadata for String;
  *(v50 + 64) = sub_10000AE14();
  v51 = v78;
  *(v50 + 32) = v35;
  *(v50 + 40) = v51;
  v52 = sub_10000FB7C();
  v53 = swift_allocObject();
  *(v53 + 16) = v68;
  v54 = v58;
  *(v53 + 56) = v59;
  *(v53 + 64) = v54;
  *(v53 + 32) = v50;
  sub_10000F95C("Found a duplicate sticker, purging instance of %@", 49, 2, &_mh_execute_header, v61, v52, v53);

  a1 = v70;
  v5 = v63;
  if (v70 != v62)
  {
    goto LABEL_22;
  }

LABEL_54:

  return v28;
}

void sub_10000441C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_10000FA3C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_1000044A4(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_41;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v43 = a1;
    if (!v1)
    {
      break;
    }

    v2 = 0;
    *&v42 = a1 & 0xC000000000000001;
    v3 = &_swiftEmptySetSingleton;
    v4 = a1 & 0xFFFFFFFFFFFFFF8;
    v41 = xmmword_100011040;
    while (1)
    {
      if (v42)
      {
        a1 = sub_10000FCBC();
      }

      else
      {
        if (v2 >= *(v4 + 16))
        {
          goto LABEL_40;
        }

        a1 = *(a1 + 8 * v2 + 32);
      }

      v9 = a1;
      v10 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      sub_10000ADCC(&qword_100018B68, &qword_100011108);
      inited = swift_initStackObject();
      *(inited + 16) = v41;

      v12 = [v9 template];
      v13 = [v12 uniqueName];

      if (v13)
      {
        v5 = sub_10000FA3C();
        v7 = v6;
      }

      else
      {
        v5 = 0;
        v7 = 0;
      }

      *(inited + 32) = v5;
      *(inited + 40) = v7;
      v8 = sub_10000B634(inited, v3);
      swift_setDeallocating();
      sub_10000BA24(inited + 32);

      ++v2;
      v3 = v8;
      a1 = v43;
      if (v10 == v1)
      {
        goto LABEL_15;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    v34 = a1;
    v1 = sub_10000FD2C();
    a1 = v34;
  }

  v8 = &_swiftEmptySetSingleton;
LABEL_15:
  v40 = sub_10000ADCC(&qword_100018AF8, qword_100011270);
  v14 = swift_allocObject();
  v42 = xmmword_100011040;
  *(v14 + 16) = xmmword_100011040;
  *(v14 + 56) = sub_10000ADCC(&qword_100018B78, &qword_100011118);
  *(v14 + 64) = sub_10000BBAC(&qword_100018B80, &qword_100018B78, &qword_100011118, &protocol conformance descriptor for Set<A>);
  *(v14 + 32) = v8;

  v15 = sub_10000FB7C();
  if (qword_1000189D0 != -1)
  {
    swift_once();
  }

  v16 = qword_1000189D8;
  v38 = sub_10000ADCC(&qword_100018B08, &unk_1000110D0);
  v17 = swift_allocObject();
  *(v17 + 16) = v42;
  v37 = sub_10000ADCC(&qword_100018B10, &unk_100011170);
  *(v17 + 56) = v37;
  v36 = sub_10000BBAC(&qword_100018B18, &qword_100018B10, &unk_100011170, &protocol conformance descriptor for [A]);
  *(v17 + 64) = v36;
  *(v17 + 32) = v14;
  v39 = v16;
  sub_10000F95C("Unique identifiers: %@", 22, 2, &_mh_execute_header, v16, v15, v17);

  *&v41 = &_swiftEmptyArrayStorage;
  v45 = &_swiftEmptyArrayStorage;
  v18 = 1 << *(v8 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v8 + 7);
  v21 = (v18 + 63) >> 6;

  for (i = 0; ; i = v23)
  {
    while (1)
    {
      if (!v20)
      {
        while (1)
        {
          v23 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v23 >= v21)
          {

            v29 = swift_allocObject();
            *(v29 + 16) = v42;
            *(v29 + 56) = sub_10000ADCC(&qword_100018B58, &qword_100011100);
            *(v29 + 64) = sub_10000BBAC(&qword_100018B88, &qword_100018B58, &qword_100011100, &protocol conformance descriptor for [A]);
            v30 = v41;
            *(v29 + 32) = v41;

            v31 = sub_10000FB7C();
            v32 = swift_allocObject();
            *(v32 + 16) = v42;
            v33 = v36;
            *(v32 + 56) = v37;
            *(v32 + 64) = v33;
            *(v32 + 32) = v29;
            sub_10000F95C("Unique items: %@", 16, 2, &_mh_execute_header, v39, v31, v32);

            return v30;
          }

          v20 = *(v8 + v23 + 7);
          ++i;
          if (v20)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

      v23 = i;
LABEL_25:
      v44 = *(*(v8 + 6) + ((v23 << 10) | (16 * __clz(__rbit64(v20)))));
      __chkstk_darwin(a1);
      v35[2] = sub_10000441C;
      v35[3] = 0;
      v35[4] = &v44;

      v24 = v43;

      v25 = sub_100004AE0(sub_10000BA8C, v35, v24);
      v26 = v25;
      result = v25 >> 62 ? sub_10000FD2C() : *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v20 &= v20 - 1;
      if (result)
      {
        break;
      }

      i = v23;
    }

    if ((v26 & 0xC000000000000001) == 0)
    {
      break;
    }

    sub_10000FCBC();
LABEL_32:

    sub_10000FA8C();
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10000FABC();
    }

    a1 = sub_10000FADC();
    *&v41 = v45;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v26 + 32);
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

void *sub_100004AE0(uint64_t (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = a3;
  v19 = &_swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10000FD2C())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = sub_10000FCBC();
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_10000FCDC();
        sub_10000FCFC();
        v4 = v15;
        sub_10000FD0C();
        sub_10000FCEC();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = &_swiftEmptyArrayStorage;
LABEL_20:

  return v12;
}

void *sub_100004D44(uint64_t a1)
{
  v3 = sub_10000F85C();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC25ActivityMessagesExtension17StickerDataSource_resourceProvider);
  v9 = [v8 stickersBundlePathForAchievement:{a1, v5}];
  if (!v9)
  {
    return &_swiftEmptyArrayStorage;
  }

  v10 = v9;
  v11 = [objc_allocWithZone(NSBundle) initWithPath:v9];

  v32 = v11;
  if (!v11)
  {
    return &_swiftEmptyArrayStorage;
  }

  v12 = [v8 stickerURLsForAchievement:a1];
  sub_10000BB64(&qword_100018AF0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v13 = sub_10000FB3C();

  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = sub_100005820(*(v13 + 16), 0);
    sub_10000A5F0(v33, &v15[(*(v4 + 80) + 32) & ~*(v4 + 80)], v14, v13);
    v30 = v33[0];
    v31 = v16;
    v29 = v33[4];

    sub_10000A894(v30);
    if (v31 == v14)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v15 = &_swiftEmptyArrayStorage;
LABEL_7:
  v33[0] = v15;
  sub_100005370(v33);

  v17 = v33[0];
  v33[0] = &_swiftEmptyArrayStorage;
  v18 = *(v17 + 16);
  if (!v18)
  {

    return &_swiftEmptyArrayStorage;
  }

  v21 = *(v4 + 16);
  v19 = v4 + 16;
  v20 = v21;
  v22 = (*(v19 + 64) + 32) & ~*(v19 + 64);
  v31 = v17;
  v23 = v17 + v22;
  v24 = *(v19 + 56);
  v25 = (v19 - 8);
  v26 = &_swiftEmptyArrayStorage;
  v21(v7, v17 + v22, v3);
  while (1)
  {
    v27 = sub_10000A94C(v7, v32);
    (*v25)(v7, v3);
    if (v27)
    {
      sub_10000FA8C();
      if (*((v33[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = *((v33[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10000FABC();
      }

      sub_10000FADC();
      v26 = v33[0];
    }

    v23 += v24;
    if (!--v18)
    {
      break;
    }

    v20(v7, v23, v3);
  }

  return v26;
}

id sub_100005118()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000051FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_10000F82C(__stack_chk_guard);
  v7 = v6;
  v8 = sub_10000FA0C();

  v17 = 0;
  v9 = [v4 initWithContentsOfFileURL:v7 localizedDescription:v8 error:&v17];

  v10 = v17;
  if (v9)
  {
    v11 = sub_10000F85C();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17;
    sub_10000F7FC();

    swift_willThrow();
    v15 = sub_10000F85C();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

void sub_100005370(uint64_t *a1)
{
  v2 = *(sub_10000F85C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10000A3AC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1000059A4(v5);
  *a1 = v3;
}

uint64_t sub_100005418(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10000A3C0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100005AD0(v6);
  return sub_10000FCEC();
}

void *sub_100005494(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_10000FC3C();
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_10000591C(v2, 0);

    v1 = sub_10000A3D4(&v5, v3 + 4, v2, v1);
    sub_10000A894(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_100005544(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000ADCC(&qword_100018B28, &qword_1000110E8);
  v10 = *(sub_10000F85C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000F85C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10000571C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000ADCC(&qword_100018B20, &qword_1000110E0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_100005820(uint64_t a1, uint64_t a2)
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

  sub_10000ADCC(&qword_100018B28, &qword_1000110E8);
  v4 = *(sub_10000F85C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10000591C(uint64_t a1, uint64_t a2)
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

  sub_10000ADCC(&qword_100018B30, &qword_1000110F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_1000059A4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_10000FD6C(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000F85C();
        v6 = sub_10000FACC();
        v6[2] = v5;
      }

      v7 = *(sub_10000F85C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100006024(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100005BE4(0, v2, 1, a1);
  }
}

void sub_100005AD0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_10000FD6C(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000BAB0(0, &qword_100018B50, ACHAchievement_ptr);
        v6 = sub_10000FACC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_100006BE0(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100005EF0(0, v2, 1, a1);
  }
}

void sub_100005BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_10000F85C();
  __chkstk_darwin(v8);
  v44 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v34 - v11;
  v14 = __chkstk_darwin(v12);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v13 + 16);
    v46 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v42 = (v13 + 32);
    v43 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      (v45)(v47, v21, v8, v14);
      v24(v48, v23, v8);
      v25 = sub_10000F80C();
      v27 = v26;
      if (v25 == sub_10000F80C() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        v22(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = &v39[v35];
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_6;
      }

      v29 = sub_10000FD7C();

      v30 = *v18;
      (*v18)(v48, v8);
      v30(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_100005EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v20 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_5:
    v18 = v4;
    v19 = a3;
    v6 = *(v20 + 8 * a3);
    v17 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 template];
      v11 = [v10 displayOrder];

      v12 = [v9 template];
      v13 = [v12 displayOrder];

      if (v13 >= v11)
      {
LABEL_4:
        a3 = v19 + 1;
        v4 = v18 + 8;
        v5 = v17 - 1;
        if (v19 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v20)
      {
        break;
      }

      v14 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v14;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100006024(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_10000F85C();
  __chkstk_darwin(v9);
  v139 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v150 = &v129 - v12;
  __chkstk_darwin(v13);
  v155 = &v129 - v14;
  __chkstk_darwin(v15);
  v154 = &v129 - v16;
  __chkstk_darwin(v17);
  v147 = &v129 - v18;
  __chkstk_darwin(v19);
  v146 = &v129 - v20;
  __chkstk_darwin(v21);
  v134 = &v129 - v22;
  v25 = __chkstk_darwin(v23);
  v133 = &v129 - v26;
  v27 = a3[1];
  v144 = v24;
  if (v27 < 1)
  {
    v29 = &_swiftEmptyArrayStorage;
LABEL_103:
    v31 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_105:
      v156 = v29;
      v123 = *(v29 + 16);
      if (v123 >= 2)
      {
        do
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v29 + 16 * v123);
          a3 = v29;
          v127 = *(v29 + 16 * (v123 - 1) + 32);
          v29 = *(v29 + 16 * (v123 - 1) + 40);
          sub_1000072FC(v124 + *(v5 + 72) * v126, (v124 + *(v5 + 72) * v127), (v124 + *(v5 + 72) * v29), v31);
          if (v6)
          {
            break;
          }

          if (v29 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_100007D84(a3);
          }

          if (v123 - 2 >= a3[2])
          {
            goto LABEL_129;
          }

          v128 = &a3[2 * v123];
          *v128 = v126;
          v128[1] = v29;
          v156 = a3;
          sub_100007CF8(v123 - 1);
          v29 = v156;
          v123 = v156[2];
          a3 = v125;
        }

        while (v123 > 1);
      }

LABEL_113:

      return;
    }

LABEL_135:
    v29 = sub_100007D84(v29);
    goto LABEL_105;
  }

  v130 = a4;
  v28 = 0;
  v152 = v24 + 16;
  v153 = (v24 + 8);
  v151 = (v24 + 32);
  v29 = &_swiftEmptyArrayStorage;
  v136 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v138 = v28;
    if (v28 + 1 < v27)
    {
      v142 = v27;
      v131 = v29;
      v32 = *a3;
      v33 = *(v144 + 72);
      v5 = v28 + 1;
      v34 = v32 + v33 * v31;
      v35 = *(v144 + 16);
      v35(v133, v34, v9, v25);
      v145 = v33;
      v141 = v35;
      (v35)(v134, v32 + v33 * v30, v9);
      v31 = sub_10000F80C();
      v37 = v36;
      v38 = sub_10000F80C();
      v132 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_10000FD7C();
      }

      v40 = *v153;
      (*v153)(v134, v9);
      v140 = v40;
      v40(v133, v9);
      v41 = (v138 + 2);
      v42 = v145 * (v138 + 2);
      v43 = v32 + v42;
      v44 = v145 * v5;
      v45 = v32 + v145 * v5;
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v41;
        v49 = v141;
        (v141)(v146, v43, v9);
        v49(v147, v45, v9);
        v50 = sub_10000F80C();
        v52 = v51;
        if (v50 == sub_10000F80C() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_10000FD7C();
        }

        a3 = v149;

        v31 = v140;
        v140(v147, v9);
        (v31)(v146, v9);
        v47 = v143 ^ v46;
        v41 = (a3 + 1);
        v43 += v145;
        v45 += v145;
        v48 = v148;
        v5 = v148 + 1;
        v44 = v6 + v145;
        v42 = v29 + v145;
      }

      while ((v47 & 1) == 0);
      if (v143)
      {
        v30 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v54 = v138 * v145;
          v55 = v138;
          do
          {
            if (v55 != v48)
            {
              v57 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v149 = *v151;
              v149(v139, (v57 + v54), v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v149((v57 + v6), v139, v9);
              v30 = v138;
              v48 = v5;
            }

            ++v55;
            v6 -= v145;
            v29 -= v145;
            v54 += v145;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
      }

      else
      {
        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
      }
    }

    v58 = a3[1];
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_10000571C(0, *(v29 + 16) + 1, 1, v29);
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      v29 = sub_10000571C((v75 > 1), v76 + 1, 1, v29);
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
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
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_1000072FC(v118 + *(v144 + 72) * v119, (v118 + *(v144 + 72) * v120), (v118 + *(v144 + 72) * v29), v79);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_100007D84(a3);
        }

        if (v117 >= a3[2])
        {
          goto LABEL_116;
        }

        v121 = &a3[2 * v117];
        v121[4] = v119;
        v121[5] = v29;
        v156 = a3;
        sub_100007CF8(v31);
        v29 = v156;
        v77 = v156[2];
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v145;
    if (v145 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v130);
  if (__OFADD__(v30, v130))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = a3[1];
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v131 = v29;
  v132 = v6;
  v60 = *a3;
  v61 = *(v144 + 72);
  v62 = *(v144 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v148 = -v61;
  v149 = v60;
  v64 = v30 - v31;
  v137 = v61;
  v65 = v60 + v31 * v61;
  v140 = v59;
LABEL_43:
  v145 = v31;
  v141 = v65;
  v142 = v64;
  v143 = v63;
  v67 = v63;
  while (1)
  {
    v62(v154, v65, v9);
    (v62)(v155, v67);
    v5 = sub_10000F80C();
    v69 = v68;
    if (v5 == sub_10000F80C() && v69 == v70)
    {

      v66 = *v153;
      (*v153)(v155, v9);
      v66(v154, v9);
LABEL_42:
      v31 = v145 + 1;
      v63 = v143 + v137;
      v64 = v142 - 1;
      v65 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v31 = v140;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_10000FD7C();

    v71 = *v153;
    (*v153)(v155, v9);
    v71(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v72 = v150;
    v5 = v151;
    v73 = *v151;
    (*v151)(v150, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    v73(v67, v72, v9);
    v67 += v148;
    v65 += v148;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_100006BE0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = &_swiftEmptyArrayStorage;
LABEL_89:
    v5 = v10;
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v5 = sub_100007D84(v5);
    }

    v95 = *(v5 + 2);
    if (v95 >= 2)
    {
      do
      {
        v96 = *v7;
        if (!*v7)
        {
          goto LABEL_125;
        }

        v7 = (v95 - 1);
        v97 = *&v5[16 * v95];
        v98 = *&v5[16 * v95 + 24];
        sub_100007998((v96 + 8 * v97), (v96 + 8 * *&v5[16 * v95 + 16]), (v96 + 8 * v98), v10);
        if (v6)
        {
          break;
        }

        if (v98 < v97)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100007D84(v5);
        }

        if (v95 - 2 >= *(v5 + 2))
        {
          goto LABEL_115;
        }

        v99 = &v5[16 * v95];
        *v99 = v97;
        *(v99 + 1) = v98;
        sub_100007CF8(v95 - 1);
        v95 = *(v5 + 2);
        v7 = a3;
      }

      while (v95 > 1);
    }

LABEL_99:

    return;
  }

  v9 = 0;
  v10 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v109 = v8;
      v105 = v6;
      v5 = v9;
      v101 = 8 * v9;
      v13 = (*v7 + 8 * v9);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = *(*v7 + 8 * v12);
      v17 = v15;
      v18 = [v16 template];
      v113 = [v18 displayOrder];

      v19 = [v17 template];
      v111 = [v19 displayOrder];

      v103 = v5;
      v20 = v5 + 2;
      while (1)
      {
        v12 = v109;
        if (v109 == v20)
        {
          break;
        }

        v21 = *(v14 - 1);
        v22 = *v14;
        v23 = v21;
        v24 = [v22 template];
        v5 = v10;
        v25 = [v24 displayOrder];

        v26 = [v23 template];
        v27 = [v26 displayOrder];

        v28 = v27 >= v25;
        v10 = v5;
        v29 = v28;
        ++v20;
        ++v14;
        if ((((v111 < v113) ^ v29) & 1) == 0)
        {
          v12 = (v20 - 1);
          break;
        }
      }

      v11 = v103;
      v6 = v105;
      v7 = a3;
      v30 = v101;
      if (v111 < v113)
      {
        if (v12 < v103)
        {
          goto LABEL_118;
        }

        if (v103 < v12)
        {
          v31 = 8 * v12 - 8;
          v32 = v12;
          v33 = v103;
          do
          {
            if (v33 != --v32)
            {
              v35 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v34 = *(v35 + v30);
              *(v35 + v30) = *(v35 + v31);
              *(v35 + v31) = v34;
            }

            ++v33;
            v31 -= 8;
            v30 += 8;
          }

          while (v33 < v32);
        }
      }
    }

    v36 = v7[1];
    if (v12 < v36)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_117;
      }

      if (v12 - v11 < a4)
      {
        v37 = &v11[a4];
        if (__OFADD__(v11, a4))
        {
          goto LABEL_119;
        }

        if (v37 >= v36)
        {
          v37 = v7[1];
        }

        if (v37 < v11)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v12 != v37)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v12 < v11)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10000571C(0, *(v10 + 2) + 1, 1, v10);
    }

    v50 = *(v10 + 2);
    v49 = *(v10 + 3);
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      v10 = sub_10000571C((v49 > 1), v50 + 1, 1, v10);
    }

    *(v10 + 2) = v51;
    v52 = &v10[16 * v50];
    *(v52 + 4) = v11;
    *(v52 + 5) = v12;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v116 = v12;
    if (v50)
    {
      while (1)
      {
        v53 = v51 - 1;
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v54 = *(v10 + 4);
          v55 = *(v10 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_58:
          if (v57)
          {
            goto LABEL_105;
          }

          v70 = &v10[16 * v51];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_108;
          }

          v76 = &v10[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_112;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v51 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v80 = &v10[16 * v51];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_72:
        if (v75)
        {
          goto LABEL_107;
        }

        v83 = &v10[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_110;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_79:
        v91 = v53 - 1;
        if (v53 - 1 >= v51)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*v7)
        {
          goto LABEL_123;
        }

        v92 = *&v10[16 * v91 + 32];
        v93 = *&v10[16 * v53 + 40];
        sub_100007998((*v7 + 8 * v92), (*v7 + 8 * *&v10[16 * v53 + 32]), (*v7 + 8 * v93), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v93 < v92)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100007D84(v10);
        }

        if (v91 >= *(v10 + 2))
        {
          goto LABEL_102;
        }

        v94 = &v10[16 * v91];
        *(v94 + 4) = v92;
        *(v94 + 5) = v93;
        sub_100007CF8(v53);
        v51 = *(v10 + 2);
        if (v51 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v10[16 * v51 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_103;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_104;
      }

      v65 = &v10[16 * v51];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_106;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_109;
      }

      if (v69 >= v61)
      {
        v87 = &v10[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_113;
        }

        if (v56 < v90)
        {
          v53 = v51 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v116;
    if (v116 >= v8)
    {
      goto LABEL_89;
    }
  }

  v102 = v10;
  v104 = v11;
  v106 = v6;
  v38 = *v7;
  v39 = *v7 + 8 * v12 - 8;
  v40 = &v11[-v12];
  v110 = v37;
LABEL_31:
  v114 = v39;
  v115 = v12;
  v41 = *(v38 + 8 * v12);
  v112 = v40;
  while (1)
  {
    v42 = *v39;
    v43 = v41;
    v44 = v42;
    v45 = [v43 template];
    v5 = [v45 displayOrder];

    v46 = [v44 template];
    v47 = [v46 displayOrder];

    if (v47 >= v5)
    {
LABEL_30:
      ++v12;
      v39 = v114 + 8;
      v40 = v112 - 1;
      if (v115 + 1 != v110)
      {
        goto LABEL_31;
      }

      v12 = v110;
      v11 = v104;
      v6 = v106;
      v7 = a3;
      v10 = v102;
      goto LABEL_38;
    }

    if (!v38)
    {
      break;
    }

    v48 = *v39;
    v41 = *(v39 + 8);
    *v39 = v41;
    *(v39 + 8) = v48;
    v39 -= 8;
    v28 = __CFADD__(v40++, 1);
    if (v28)
    {
      goto LABEL_30;
    }
  }

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
}

void sub_1000072FC(unint64_t a1, char *a2, char *a3, char *a4)
{
  v70 = sub_10000F85C();
  v8 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v66 = &v58 - v11;
  __chkstk_darwin(v12);
  v69 = &v58 - v13;
  __chkstk_darwin(v14);
  v68 = &v58 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_70;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_71;
  }

  v19 = &a2[-a1] / v17;
  v73 = a1;
  v72 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || &a2[v21] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = &a4[v21];
    if (v21 < 1)
    {
      v43 = &a4[v21];
    }

    else
    {
      v62 = a4;
      v63 = (v8 + 16);
      v61 = (v8 + 8);
      v41 = -v17;
      v42 = &a4[v21];
      v43 = v40;
      v64 = v41;
      while (2)
      {
        while (1)
        {
          v59 = v43;
          v44 = &a2[v41];
          v68 = &a2[v41];
          v65 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v73 = a2;
              v71 = v59;
              goto LABEL_68;
            }

            v46 = a3;
            v60 = v43;
            v47 = *v63;
            v69 = (v42 + v41);
            v48 = v70;
            (v47)(v66);
            (v47)(v67, v44, v48);
            v49 = sub_10000F80C();
            v51 = v50;
            if (v49 == sub_10000F80C() && v51 == v52)
            {
              v53 = 0;
            }

            else
            {
              v53 = sub_10000FD7C();
            }

            v41 = v64;
            a3 = v64 + v46;
            v54 = *v61;
            v55 = v70;
            (*v61)(v67, v70);
            v54(v66, v55);
            if (v53)
            {
              break;
            }

            v56 = v69;
            v43 = v69;
            if (v46 < v42 || a3 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v44 = v68;
            }

            else
            {
              v44 = v68;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v43;
            v45 = v56 > v62;
            a2 = v65;
            if (!v45)
            {
              goto LABEL_66;
            }
          }

          if (v46 < v65 || a3 >= v65)
          {
            break;
          }

          a2 = v68;
          v57 = v62;
          v43 = v60;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_66;
          }
        }

        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v43 = v60;
        if (v42 > v62)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v73 = a2;
    v71 = v43;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v67 = &a4[v20];
    v71 = &a4[v20];
    if (v20 >= 1 && a2 < a3)
    {
      v23 = *(v8 + 16);
      v65 = v17;
      v66 = (v8 + 16);
      v63 = (v8 + 8);
      v64 = v23;
      do
      {
        v24 = a3;
        v25 = a2;
        v26 = a2;
        v27 = v70;
        v28 = v64;
        v64(v68, v26, v70);
        v28(v69, a4, v27);
        v29 = sub_10000F80C();
        v31 = v30;
        if (v29 == sub_10000F80C() && v31 == v32)
        {

          v33 = *v63;
          v34 = v70;
          (*v63)(v69, v70);
          v33(v68, v34);
        }

        else
        {
          v35 = sub_10000FD7C();

          v36 = *v63;
          v37 = v70;
          (*v63)(v69, v70);
          v36(v68, v37);
          if (v35)
          {
            a2 = &v65[v25];
            a3 = v24;
            if (a1 < v25 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v39 = v65;
            goto LABEL_37;
          }
        }

        v38 = a4;
        v39 = v65;
        a4 = &v65[a4];
        a2 = v25;
        a3 = v24;
        if (a1 < v38 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v38)
        {
          swift_arrayInitWithTakeBackToFront();
          v72 = a4;
          goto LABEL_37;
        }

        v72 = a4;
LABEL_37:
        a1 += v39;
        v73 = a1;
      }

      while (a4 < v67 && a2 < a3);
    }
  }

LABEL_68:
  sub_100007D98(&v73, &v72, &v71);
}

uint64_t sub_100007998(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v14 = a4;
    if (a4 != a2 || &a2[v11] <= a4)
    {
      v26 = a2;
      memmove(a4, a2, 8 * v11);
      a2 = v26;
    }

    v25 = a2;
    v44 = &v14[v11];
    if (v9 >= 8 && a2 > v5)
    {
      v43 = v14;
LABEL_27:
      __dst = v25;
      v27 = v25 - 1;
      v28 = v4 - 1;
      v29 = v44;
      v42 = v25 - 1;
      do
      {
        v30 = v28;
        v31 = v28 + 1;
        v32 = *--v29;
        v33 = *v27;
        v34 = v32;
        v35 = v33;
        v36 = [v34 template];
        v37 = [v36 displayOrder];

        v38 = [v35 template];
        v39 = [v38 displayOrder];

        if (v39 < v37)
        {
          v4 = v30;
          if (v31 != __dst)
          {
            *v30 = *v42;
          }

          v14 = v43;
          if (v44 <= v43 || (v25 = v42, v42 <= v5))
          {
            v25 = v42;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v31 != v44)
        {
          *v30 = *v29;
        }

        v28 = v30 - 1;
        v44 = v29;
        v27 = v42;
      }

      while (v29 > v43);
      v44 = v29;
      v14 = v43;
      v25 = __dst;
    }
  }

  else
  {
    v12 = a2;
    if (a4 != __src || &__src[v8] <= a4)
    {
      v13 = a4;
      memmove(a4, __src, 8 * v8);
      a4 = v13;
    }

    v44 = &a4[v8];
    v14 = a4;
    if (v6 >= 8 && v12 < v4)
    {
      v15 = v12;
      while (1)
      {
        v16 = *v14;
        v17 = *v15;
        v18 = v16;
        v19 = [v17 template];
        v20 = [v19 displayOrder];

        v21 = [v18 template];
        v22 = [v21 displayOrder];

        if (v22 >= v20)
        {
          break;
        }

        v23 = v15;
        v24 = v5 == v15++;
        if (!v24)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++v5;
        if (v14 >= v44 || v15 >= v4)
        {
          goto LABEL_20;
        }
      }

      v23 = v14;
      v24 = v5 == v14++;
      if (v24)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v5 = *v23;
      goto LABEL_18;
    }

LABEL_20:
    v25 = v5;
  }

LABEL_38:
  if (v25 != v14 || v25 >= (v14 + ((v44 - v14 + (v44 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v25, v14, 8 * (v44 - v14));
  }

  return 1;
}

uint64_t sub_100007CF8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100007D84(v3);
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

uint64_t sub_100007D98(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_10000F85C();
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

uint64_t sub_100007E7C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_10000FD2C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_10000FD2C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100007F6C(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100009F3C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100007F6C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_10000FD2C();
LABEL_9:
  result = sub_10000FCCC();
  *v2 = result;
  return result;
}

uint64_t sub_10000800C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_10000FC4C();

    if (v9)
    {

      sub_10000BAB0(0, &qword_100018B50, ACHAchievement_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_10000FC3C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1000083CC(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_1000085BC(v20 + 1);
    }

    v18 = v8;
    sub_100008A60(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_10000BAB0(0, &qword_100018B50, ACHAchievement_ptr);
  v11 = sub_10000FBCC(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100008AE4(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_10000FBDC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_100008244(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_10000FD9C();
  if (a3)
  {
    sub_10000FDAC(1u);
    sub_10000FA6C();
  }

  else
  {
    sub_10000FDAC(0);
  }

  v8 = sub_10000FDBC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_17:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100008C54(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_16;
    }

LABEL_7:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  v15 = *v13 == a2 && v14 == a3;
  if (!v15 && (sub_10000FD7C() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  *a1 = *(*(v7 + 48) + 16 * v10);

  return 0;
}

Swift::Int sub_1000083CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000ADCC(&qword_100018BC8, &unk_100011138);
    v2 = sub_10000FC9C();
    v15 = v2;
    sub_10000FC2C();
    if (sub_10000FC5C())
    {
      sub_10000BAB0(0, &qword_100018B50, ACHAchievement_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1000085BC(v9 + 1);
        }

        v2 = v15;
        result = sub_10000FBCC(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_10000FC5C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_1000085BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000ADCC(&qword_100018BC8, &unk_100011138);
  result = sub_10000FC8C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_10000FBCC(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1000087E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000ADCC(&qword_100018B90, &qword_100011120);
  result = sub_10000FC8C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v20 = *v18;
      v19 = v18[1];
      sub_10000FD9C();
      if (v19)
      {
        sub_10000FDAC(1u);
        sub_10000FA6C();
      }

      else
      {
        sub_10000FDAC(0);
      }

      result = sub_10000FDBC();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_100008A60(uint64_t a1, void *a2)
{
  sub_10000FBCC(a2[5]);
  result = sub_10000FC1C();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_100008AE4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000085BC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100008E10();
      goto LABEL_12;
    }

    sub_1000090B8(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_10000FBCC(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10000BAB0(0, &qword_100018B50, ACHAchievement_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_10000FBDC();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_10000FD8C();
  __break(1u);
}

uint64_t sub_100008C54(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a4)
  {
    sub_1000087E4(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_100008F60();
      goto LABEL_23;
    }

    sub_1000092CC(v9 + 1);
  }

  v11 = *v4;
  sub_10000FD9C();
  if (a2)
  {
    sub_10000FDAC(1u);
    sub_10000FA6C();
  }

  else
  {
    sub_10000FDAC(0);
  }

  result = sub_10000FDBC();
  v12 = v11 + 56;
  v13 = -1 << *(v11 + 32);
  a3 = result & ~v13;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v14 = ~v13;
    v15 = *(v11 + 48);
    do
    {
      v16 = (v15 + 16 * a3);
      v17 = v16[1];
      if (v17)
      {
        if (a2)
        {
          v18 = *v16 == v8 && v17 == a2;
          if (v18 || (result = sub_10000FD7C(), (result & 1) != 0))
          {
LABEL_22:
            sub_10000ADCC(&qword_100018B70, &qword_100011110);
            result = sub_10000FD8C();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_22;
      }

      a3 = (a3 + 1) & v14;
    }

    while (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_23:
  v19 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = v8;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

id sub_100008E10()
{
  v1 = v0;
  sub_10000ADCC(&qword_100018BC8, &unk_100011138);
  v2 = *v0;
  v3 = sub_10000FC7C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

void *sub_100008F60()
{
  v1 = v0;
  sub_10000ADCC(&qword_100018B90, &qword_100011120);
  v2 = *v0;
  v3 = sub_10000FC7C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

uint64_t sub_1000090B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000ADCC(&qword_100018BC8, &unk_100011138);
  result = sub_10000FC8C();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_10000FBCC(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1000092CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000ADCC(&qword_100018B90, &qword_100011120);
  result = sub_10000FC8C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v19 = *v17;
      v18 = v17[1];
      sub_10000FD9C();
      if (v18)
      {
        sub_10000FDAC(1u);

        sub_10000FA6C();
      }

      else
      {
        sub_10000FDAC(0);
      }

      result = sub_10000FDBC();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100009520(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_10000FC6C();

    if (v6)
    {
      v7 = sub_1000096B8(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_10000BAB0(0, &qword_100018B50, ACHAchievement_ptr);
  v10 = sub_10000FBCC(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_10000FBDC();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100008E10();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_100009820(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_1000096B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_10000FC3C();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1000083CC(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = sub_10000FBCC(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_10000BAB0(0, &qword_100018B50, ACHAchievement_ptr);
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_10000FBDC();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v14 = *(*(v6 + 48) + 8 * v10);
  sub_100009820(v10);
  result = sub_10000FBDC();
  if (result)
  {
    *v3 = v16;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100009820(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_10000FC0C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_10000FBCC(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1000099C0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v1;
    v7 = a1;
    goto LABEL_8;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_10000FC3C();
  if (!__OFADD__(result, 1))
  {
    v9 = sub_1000083CC(v5, result + 1);
    v7 = a1;
    isUniquelyReferenced_nonNull_native = 1;
LABEL_8:
    result = sub_100009A60(v7, isUniquelyReferenced_nonNull_native);
    *v2 = v9;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100009A60(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_10000FBCC(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_10000BAB0(0, &qword_100018B50, ACHAchievement_ptr);
    v11 = 1;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v9);
      v13 = sub_10000FBDC();

      if (v13)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v11 = 0;
LABEL_8:
    v14 = v13 ^ 1;
    v3 = v2;
  }

  else
  {
    v14 = 1;
    v11 = 1;
  }

  v15 = *(v6 + 16);
  v16 = v15 + v11;
  if (__OFADD__(v15, v11))
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v17 = *(v6 + 24);
  if (v17 >= v16 && (a2 & 1) != 0)
  {
    if ((v14 & 1) == 0)
    {
LABEL_28:
      v29 = *(*v3 + 48);
      result = *(v29 + 8 * v9);
      *(v29 + 8 * v9) = a1;
      return result;
    }

    goto LABEL_25;
  }

  if (a2)
  {
    sub_1000085BC(v16);
  }

  else
  {
    if (v17 >= v16)
    {
      sub_100008E10();
      if ((v14 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    sub_1000090B8(v16);
  }

  v18 = *v3;
  v19 = sub_10000FBCC(*(*v3 + 40));
  v20 = -1 << *(v18 + 32);
  v9 = v19 & ~v20;
  if (((*(v18 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_24:
    if ((v14 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_25:
    v24 = *v3;
    *(*v3 + 8 * (v9 >> 6) + 56) |= 1 << v9;
    *(*(v24 + 48) + 8 * v9) = a1;
    v25 = *(v24 + 16);
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (!v26)
    {
      result = 0;
      *(v24 + 16) = v27;
      return result;
    }

    goto LABEL_30;
  }

  v21 = ~v20;
  sub_10000BAB0(0, &qword_100018B50, ACHAchievement_ptr);
  while (1)
  {
    v22 = *(*(v18 + 48) + 8 * v9);
    v23 = sub_10000FBDC();

    if (v23)
    {
      break;
    }

    v9 = (v9 + 1) & v21;
    if (((*(v18 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_31:
  sub_10000BAB0(0, &qword_100018B50, ACHAchievement_ptr);
  result = sub_10000FD8C();
  __break(1u);
  return result;
}

void *sub_100009CD0(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000ADCC(&qword_100018B28, &qword_1000110E8);
  v10 = *(sub_10000F85C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000F85C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_100009EA8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_10000FD2C();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_10000591C(v3, 0);
  sub_10000A0F0(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100009F3C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10000FD2C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_10000FD2C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000BBAC(&qword_100018B48, &qword_100018B40, &qword_1000110F8, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10000ADCC(&qword_100018B40, &qword_1000110F8);
            v9 = sub_10000A32C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000BAB0(0, &qword_100018B38, MSSticker_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000A0F0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10000FD2C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_10000FD2C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000BBAC(&qword_100018B60, &qword_100018B58, &qword_100011100, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10000ADCC(&qword_100018B58, &qword_100011100);
            v9 = sub_10000A2A4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000BAB0(0, &qword_100018B50, ACHAchievement_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_10000A2A4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10000FCBC();
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
    return sub_10000A324;
  }

  __break(1u);
  return result;
}

void (*sub_10000A32C(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10000FCBC();
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
    return sub_10000C20C;
  }

  __break(1u);
  return result;
}

void *sub_10000A3D4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_10000FC2C();
  sub_10000BAB0(0, &qword_100018B50, ACHAchievement_ptr);
  sub_10000BBF4();
  result = sub_10000FB5C();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_10000FC5C())
      {
        goto LABEL_30;
      }

      sub_10000BAB0(0, &qword_100018B50, ACHAchievement_ptr);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void sub_10000A5F0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_10000F85C();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_10000A89C(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  v4 = a4[1];
  v11 = *a1;
  a2(&v9, &v11);
  v6 = v4 == 0;
  if (v10)
  {
    if (v4)
    {
      if (v9 == v5 && v10 == v4)
      {
        v6 = 1;
      }

      else
      {
        v6 = sub_10000FD7C();
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

id sub_10000A94C(uint64_t a1, void *a2)
{
  v4 = sub_10000F85C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v49 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  v48 = sub_10000ADCC(&qword_100018AF8, qword_100011270);
  v10 = swift_allocObject();
  v51 = xmmword_100011040;
  *(v10 + 16) = xmmword_100011040;
  v50 = a1;
  v11 = sub_10000F80C();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  v47 = sub_10000AE14();
  *(v10 + 64) = v47;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v14 = sub_10000FB7C();
  if (qword_1000189D0 != -1)
  {
    swift_once();
  }

  v15 = qword_1000189D8;
  v41 = qword_1000189D8;
  v44 = sub_10000ADCC(&qword_100018B08, &unk_1000110D0);
  v16 = swift_allocObject();
  *(v16 + 16) = v51;
  v43 = sub_10000ADCC(&qword_100018B10, &unk_100011170);
  *(v16 + 56) = v43;
  v42 = sub_10000BBAC(&qword_100018B18, &qword_100018B10, &unk_100011170, &protocol conformance descriptor for [A]);
  *(v16 + 64) = v42;
  *(v16 + 32) = v10;
  sub_10000F95C("Generating sticker for url: %@", 30, 2, &_mh_execute_header, v15, v14, v16);

  sub_10000F83C();
  v17 = sub_10000F81C();
  v19 = v18;
  v45 = v5;
  v46 = v4;
  (*(v5 + 8))(v9, v4);
  v20 = sub_10000FA0C();
  v21 = sub_10000FA0C();
  v22 = [a2 localizedStringForKey:v20 value:0 table:v21];

  v40 = sub_10000FA3C();
  v24 = v23;

  v25 = swift_allocObject();
  *(v25 + 16) = v51;
  v26 = v47;
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = v26;
  *(v25 + 32) = v17;
  *(v25 + 40) = v19;
  v27 = sub_10000FB7C();
  v28 = swift_allocObject();
  *(v28 + 16) = v51;
  v30 = v42;
  v29 = v43;
  *(v28 + 56) = v43;
  *(v28 + 64) = v30;
  *(v28 + 32) = v25;
  v31 = v41;
  sub_10000F95C("Localizable key: %@", 19, 2, &_mh_execute_header, v41, v27, v28);

  v32 = swift_allocObject();
  *(v32 + 16) = v51;
  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = v26;
  v33 = v40;
  *(v32 + 32) = v40;
  *(v32 + 40) = v24;

  v34 = sub_10000FB7C();
  v35 = swift_allocObject();
  *(v35 + 16) = v51;
  *(v35 + 56) = v29;
  *(v35 + 64) = v30;
  *(v35 + 32) = v32;
  sub_10000F95C("Localized description: %@", 25, 2, &_mh_execute_header, v31, v34, v35);

  v36 = v49;
  (*(v45 + 16))(v49, v50, v46);
  v37 = objc_allocWithZone(MSSticker);
  return sub_1000051FC(v36, v33, v24);
}

uint64_t sub_10000ADCC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000AE14()
{
  result = qword_100018B00;
  if (!qword_100018B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018B00);
  }

  return result;
}

uint64_t sub_10000AE68(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_10000AEB4()
{
  v25 = sub_10000F85C();
  v0 = *(v25 - 8);
  __chkstk_darwin(v25);
  v2 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000FB7C();
  if (qword_1000189D0 != -1)
  {
    swift_once();
  }

  v4 = qword_1000189D8;
  sub_10000ADCC(&qword_100018B08, &unk_1000110D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100011040;
  *(v5 + 56) = sub_10000ADCC(&qword_100018B10, &unk_100011170);
  *(v5 + 64) = sub_10000BBAC(&qword_100018B18, &qword_100018B10, &unk_100011170, &protocol conformance descriptor for [A]);
  v6 = &_swiftEmptyArrayStorage;
  *(v5 + 32) = &_swiftEmptyArrayStorage;
  sub_10000F95C("defaultStickers called", 22, 2, &_mh_execute_header, v4, v3, v5);

  v7 = objc_allocWithZone(NSBundle);
  v8 = sub_10000FA0C();
  v9 = [v7 initWithPath:v8];

  if (v9)
  {
    sub_1000020F8();
    v26 = v10;

    sub_100005370(&v26);

    v11 = v26;
    v26 = &_swiftEmptyArrayStorage;
    v12 = v11[2];
    if (v12)
    {
      v15 = *(v0 + 16);
      v14 = v0 + 16;
      v13 = v15;
      v16 = *(v14 + 64);
      v23[1] = v11;
      v17 = v11 + ((v16 + 32) & ~v16);
      v18 = *(v14 + 56);
      v19 = (v14 - 8);
      v24 = &_swiftEmptyArrayStorage;
      do
      {
        v20 = v25;
        v13(v2, v17, v25);
        v21 = sub_10000A94C(v2, v9);
        (*v19)(v2, v20);
        if (v21)
        {
          sub_10000FA8C();
          if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v24 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_10000FABC();
          }

          sub_10000FADC();
          v24 = v26;
        }

        v17 += v18;
        --v12;
      }

      while (v12);

      return v24;
    }

    else
    {
    }
  }

  return v6;
}

void sub_10000B204(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_10000FD2C())
    {
LABEL_3:
      sub_10000ADCC(&qword_100018BC8, &unk_100011138);
      v3 = sub_10000FCAC();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_10000FD2C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_10000FCBC();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_10000FBCC(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_10000BAB0(0, &qword_100018B50, ACHAchievement_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_10000FBDC();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = sub_10000FBCC(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_10000BAB0(0, &qword_100018B50, ACHAchievement_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_10000FBDC();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_10000B4F4(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_10000BAB0(0, &qword_100018B50, ACHAchievement_ptr);
    sub_10000BBF4();
    result = sub_10000FB4C();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_10000FCBC();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_10000800C(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_10000FD2C();
  }

  v5 = result;
  v4 = sub_10000FD2C();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10000B634(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_100008244(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

void *sub_10000B6B4(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = &_swiftEmptyArrayStorage;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v26 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_10000FCBC();
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = sub_100004D44(isUniquelyReferenced_nonNull_bridgeObject);

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = sub_10000FD2C();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_10000FD2C();
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v33 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v10)
        {
          v12 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_10000FD2C();
        goto LABEL_20;
      }

      if (v10)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_10000FCCC();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v8)
      {
        v16 = v12;
        isUniquelyReferenced_nonNull_bridgeObject = sub_10000FD2C();
        v12 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v14 >> 1) - v13) < v9)
          {
            goto LABEL_42;
          }

          v31 = v3;
          v17 = v12 + 8 * v13 + 32;
          v27 = v12;
          if (v8)
          {
            if (v15 < 1)
            {
              goto LABEL_44;
            }

            sub_10000BBAC(&qword_100018B48, &qword_100018B40, &qword_1000110F8, &protocol conformance descriptor for [A]);
            for (i = 0; i != v15; ++i)
            {
              sub_10000ADCC(&qword_100018B40, &qword_1000110F8);
              v19 = sub_10000A32C(v32, i, v7);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            sub_10000BAB0(0, &qword_100018B38, MSSticker_ptr);
            swift_arrayInitWithCopy();
          }

          v3 = v31;
          v1 = v26;
          if (v9 >= 1)
          {
            v22 = *(v27 + 16);
            v5 = __OFADD__(v22, v9);
            v23 = v22 + v9;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v27 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_25;
        }
      }

      if (v9 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v33;
      if (v33 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_10000FD2C();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_10000BA24(uint64_t a1)
{
  v2 = sub_10000ADCC(&qword_100018B70, &qword_100011110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000BAB0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000BAF8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000BB4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000BB64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000BBAC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000AE68(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000BBF4()
{
  result = qword_100018BB8;
  if (!qword_100018BB8)
  {
    sub_10000BAB0(255, &qword_100018B50, ACHAchievement_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018BB8);
  }

  return result;
}

uint64_t sub_10000BC5C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BD68()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BDD4()
{
  sub_10000ADCC(&qword_100018AF8, qword_100011270);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100011040;
  v2 = OBJC_IVAR____TtC25ActivityMessagesExtension17StickerDataSource_stickers;
  v3 = *(v0 + OBJC_IVAR____TtC25ActivityMessagesExtension17StickerDataSource_stickers);
  if (v3 >> 62)
  {
    v4 = sub_10000FD2C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v1 + 56) = &type metadata for Int;
  *(v1 + 64) = &protocol witness table for Int;
  *(v1 + 32) = v4;
  v5 = sub_10000FB7C();
  if (qword_1000189D0 != -1)
  {
    swift_once();
  }

  v6 = qword_1000189D8;
  sub_10000ADCC(&qword_100018B08, &unk_1000110D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100011040;
  *(v7 + 56) = sub_10000ADCC(&qword_100018B10, &unk_100011170);
  *(v7 + 64) = sub_10000BBAC(&qword_100018B18, &qword_100018B10, &unk_100011170, &protocol conformance descriptor for [A]);
  *(v7 + 32) = v1;
  sub_10000F95C("Returning number of stickers %@", 31, 2, &_mh_execute_header, v6, v5, v7);

  v8 = *(v0 + v2);
  if (!(v8 >> 62))
  {
    return *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_10000FD2C();
}

id sub_10000BFC4(unint64_t a1)
{
  sub_10000ADCC(&qword_100018AF8, qword_100011270);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100011040;
  *(v3 + 56) = &type metadata for Int;
  *(v3 + 64) = &protocol witness table for Int;
  *(v3 + 32) = a1;
  v4 = sub_10000FB7C();
  if (qword_1000189D0 != -1)
  {
    swift_once();
  }

  v5 = qword_1000189D8;
  sub_10000ADCC(&qword_100018B08, &unk_1000110D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100011040;
  *(v6 + 56) = sub_10000ADCC(&qword_100018B10, &unk_100011170);
  *(v6 + 64) = sub_10000BBAC(&qword_100018B18, &qword_100018B10, &unk_100011170, &protocol conformance descriptor for [A]);
  *(v6 + 32) = v3;
  sub_10000F95C("Returning sticker for index %@", 30, 2, &_mh_execute_header, v5, v4, v6);

  v8 = *(v1 + OBJC_IVAR____TtC25ActivityMessagesExtension17StickerDataSource_stickers);
  if ((v8 & 0xC000000000000001) != 0)
  {

    v10 = sub_10000FCBC();

    return v10;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v9 = *(v8 + 8 * a1 + 32);

  return v9;
}

Swift::Void __swiftcall AppViewController.willBecomeActive(with:)(MSConversation with)
{
  v3 = sub_10000ADCC(&qword_100018C30, &qword_100011150);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v12 - v5;
  if ([v1 presentationStyle] == 2)
  {
    v7 = sub_10000FB2C();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    sub_10000FB0C();
    v8 = v1;
    v9 = with.super.isa;
    v10 = sub_10000FAFC();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v8;
    v11[5] = v9;
    sub_10000C5E8(0, 0, v6, &unk_100011160, v11);
  }

  else
  {

    sub_10000C950();
  }
}

uint64_t sub_10000C390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_10000FB0C();
  v5[3] = sub_10000FAFC();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_10000C44C;

  return sub_10000CAD8(a5);
}

uint64_t sub_10000C44C()
{

  v1 = sub_10000FAEC();

  return _swift_task_switch(sub_10000C588, v1, v0);
}

uint64_t sub_10000C588()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000C5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000ADCC(&qword_100018C30, &qword_100011150);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000EDD8(a3, v25 - v10, &qword_100018C30, &qword_100011150);
  v12 = sub_10000FB2C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000EE40(v11, &qword_100018C30, &qword_100011150);
  }

  else
  {
    sub_10000FB1C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10000FAEC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10000FA5C() + 32;
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

      sub_10000EE40(a3, &qword_100018C30, &qword_100011150);

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

  sub_10000EE40(a3, &qword_100018C30, &qword_100011150);
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

void sub_10000C950()
{
  v16 = [objc_allocWithZone(type metadata accessor for StickerBrowserViewController()) init];
  [v0 addChildViewController:v16];
  v1 = [v16 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = [v0 view];
  if (!v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v2 setFrame:{v6, v8, v10, v12}];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13;
  v15 = [v16 view];

  if (!v15)
  {
LABEL_11:
    __break(1u);
    return;
  }

  [v14 addSubview:v15];

  [v16 didMoveToParentViewController:v0];
}

uint64_t sub_10000CAD8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10000ADCC(&qword_100018C68, &qword_1000111F0);
  v2[4] = swift_task_alloc();
  v3 = sub_10000F90C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_10000F85C();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  sub_10000FB0C();
  v2[12] = sub_10000FAFC();
  v6 = sub_10000FAEC();
  v2[13] = v6;
  v2[14] = v5;

  return _swift_task_switch(sub_10000CC6C, v6, v5);
}

uint64_t sub_10000CC6C()
{
  v1 = [*(v0 + 16) selectedMessage];
  *(v0 + 120) = v1;
  if (!v1)
  {

    v19 = sub_10000FB6C();
    if (qword_1000189D0 != -1)
    {
      swift_once();
    }

    v20 = qword_1000189D8;
    sub_10000ADCC(&qword_100018B08, &unk_1000110D0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100011040;
    *(v21 + 56) = sub_10000ADCC(&qword_100018B10, &unk_100011170);
    *(v21 + 64) = sub_10000E3AC();
    *(v21 + 32) = &_swiftEmptyArrayStorage;
    sub_10000F95C("No selected message in conversation", 35, 2, &_mh_execute_header, v20, v19, v21);

    goto LABEL_13;
  }

  v2 = v1;
  v3 = [v1 URL];
  if (!v3)
  {

    v22 = sub_10000FB6C();
    if (qword_1000189D0 != -1)
    {
      swift_once();
    }

    v23 = qword_1000189D8;
    sub_10000ADCC(&qword_100018B08, &unk_1000110D0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100011040;
    *(v24 + 56) = sub_10000ADCC(&qword_100018B10, &unk_100011170);
    *(v24 + 64) = sub_10000E3AC();
    *(v24 + 32) = &_swiftEmptyArrayStorage;
    sub_10000F95C("Payload missing for transcript presentation", 43, 2, &_mh_execute_header, v23, v22, v24);

    goto LABEL_13;
  }

  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v10 = *(v0 + 32);
  v11 = v3;
  sub_10000F84C();

  (*(v7 + 32))(v4, v5, v6);
  [v2 isFromMe];
  sub_10000F8EC();
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v12 = *(v0 + 32);

    sub_10000EE40(v12, &qword_100018C68, &qword_1000111F0);
    v13 = sub_10000FB6C();
    if (qword_1000189D0 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 88);
    v15 = *(v0 + 64);
    v16 = *(v0 + 72);
    v17 = qword_1000189D8;
    sub_10000ADCC(&qword_100018B08, &unk_1000110D0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100011040;
    *(v18 + 56) = sub_10000ADCC(&qword_100018B10, &unk_100011170);
    *(v18 + 64) = sub_10000E3AC();
    *(v18 + 32) = &_swiftEmptyArrayStorage;
    sub_10000F95C("Payload missing for transcript presentation", 43, 2, &_mh_execute_header, v17, v13, v18);

    (*(v16 + 8))(v14, v15);
LABEL_13:

    v25 = *(v0 + 8);

    return v25();
  }

  (*(*(v0 + 48) + 32))(*(v0 + 56), *(v0 + 32), *(v0 + 40));
  sub_10000F8BC();
  v27 = [v2 isPending];
  v28 = swift_task_alloc();
  *(v0 + 128) = v28;
  *v28 = v0;
  v28[1] = sub_10000D154;
  v29 = *(v0 + 88);
  v30 = *(v0 + 56);

  return static ReplyBubbleView.bubbleViewFor(reply:payload:isPending:)(v30, v29, v27);
}

uint64_t sub_10000D154(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 136) = a1;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);

  return _swift_task_switch(sub_10000D27C, v4, v3);
}

id sub_10000D27C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC25ActivityMessagesExtension17AppViewController_bubbleView);
  *(v2 + OBJC_IVAR____TtC25ActivityMessagesExtension17AppViewController_bubbleView) = v1;
  v4 = v1;

  if (v1)
  {
    v5 = sub_10000FB7C();
    if (qword_1000189D0 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 24);
    v7 = qword_1000189D8;
    sub_10000ADCC(&qword_100018B08, &unk_1000110D0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100011040;
    *(v8 + 56) = sub_10000ADCC(&qword_100018B10, &unk_100011170);
    *(v8 + 64) = sub_10000E3AC();
    *(v8 + 32) = &_swiftEmptyArrayStorage;
    sub_10000F95C("Presenting bubble with initial zero frame", 41, 2, &_mh_execute_header, v7, v5, v8);

    sub_10000ED68(&qword_100018C70, v9, type metadata accessor for AppViewController, &protocol conformance descriptor for AppViewController);
    swift_unknownObjectRetain();
    sub_10000F8AC();
    [v4 setFrame:{0.0, 0.0, 0.0, 0.0}];
    result = [v6 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v11 = result;
    v12 = *(v0 + 24);

    [v11 addSubview:v4];

    [v12 requestResize];
  }

  else
  {
  }

  v13 = *(v0 + 88);
  v14 = *(v0 + 64);
  v15 = *(v0 + 72);
  v17 = *(v0 + 48);
  v16 = *(v0 + 56);
  v18 = *(v0 + 40);

  (*(v17 + 8))(v16, v18);
  (*(v15 + 8))(v13, v14);

  v19 = *(v0 + 8);

  return v19();
}

Swift::Void __swiftcall AppViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for AppViewController();
  objc_msgSendSuper2(&v1, "viewDidLoad");
  [v0 invalidateMessageTintColor];
}

Swift::Void __swiftcall AppViewController.viewDidLayoutSubviews()()
{
  v28.receiver = v0;
  v28.super_class = type metadata accessor for AppViewController();
  objc_msgSendSuper2(&v28, "viewDidLayoutSubviews");
  v1 = [objc_opt_self() mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = v6;
  [v6 bounds];
  v9 = v8;
  v11 = v10;

  if (v3 > v9 || v5 > v11)
  {
    v13 = *&v0[OBJC_IVAR____TtC25ActivityMessagesExtension17AppViewController_bubbleView];
    if (!v13)
    {
      return;
    }

    v14 = v13;
    v15 = [v0 view];
    if (v15)
    {
      v16 = v15;
      [v15 bounds];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      [v14 setFrame:{v18, v20, v22, v24}];
      return;
    }

LABEL_15:
    __break(1u);
    return;
  }

  v25 = sub_10000FB7C();
  if (qword_1000189D0 != -1)
  {
    swift_once();
  }

  v26 = qword_1000189D8;
  sub_10000ADCC(&qword_100018B08, &unk_1000110D0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100011040;
  *(v27 + 56) = sub_10000ADCC(&qword_100018B10, &unk_100011170);
  *(v27 + 64) = sub_10000E3AC();
  *(v27 + 32) = &_swiftEmptyArrayStorage;
  sub_10000F95C("Skipping layout pass, current size >= screen size", 49, 2, &_mh_execute_header, v26, v25, v27);
}

CGSize __swiftcall AppViewController.contentSizeThatFits(_:)(CGSize a1)
{
  width = a1.width;
  v3 = *(v1 + OBJC_IVAR____TtC25ActivityMessagesExtension17AppViewController_bubbleView);
  if (v3)
  {
    height = a1.height;
    v5 = v3;
    [v5 setFrame:{0.0, 0.0, width, height}];
    [v5 layoutIfNeeded];
    sub_10000ADCC(&qword_100018AF8, qword_100011270);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100011040;
    sub_10000F89C();
    v7 = sub_10000FBBC();
    v9 = v8;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_10000AE14();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    v10 = sub_10000FB7C();
    if (qword_1000189D0 != -1)
    {
      swift_once();
    }

    v11 = qword_1000189D8;
    sub_10000ADCC(&qword_100018B08, &unk_1000110D0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100011040;
    *(v12 + 56) = sub_10000ADCC(&qword_100018B10, &unk_100011170);
    *(v12 + 64) = sub_10000E3AC();
    *(v12 + 32) = v6;
    sub_10000F95C("System requested bubble size, computed %{public}@", 49, 2, &_mh_execute_header, v11, v10, v12);

    sub_10000F89C();
    width = v13;
    v15 = v14;
  }

  else
  {
    v16 = sub_10000FB6C();
    if (qword_1000189D0 != -1)
    {
      swift_once();
    }

    v17 = qword_1000189D8;
    sub_10000ADCC(&qword_100018B08, &unk_1000110D0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100011040;
    *(v18 + 56) = sub_10000ADCC(&qword_100018B10, &unk_100011170);
    *(v18 + 64) = sub_10000E3AC();
    *(v18 + 32) = &_swiftEmptyArrayStorage;
    sub_10000F95C("System requested content size, but no bubble view exists to measure", 67, 2, &_mh_execute_header, v17, v16, v18);

    *&v15 = 114.0;
  }

  v19 = width;
  v20 = *&v15;
  result.height = v20;
  result.width = v19;
  return result;
}

uint64_t sub_10000DB18(char a1)
{
  sub_10000ADCC(&qword_100018AF8, qword_100011270);
  v2 = swift_allocObject();
  v3 = v2;
  *(v2 + 16) = xmmword_100011040;
  v4 = (a1 & 1) == 0;
  if (a1)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = sub_10000AE14();
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  v7 = sub_10000FB7C();
  if (qword_1000189D0 != -1)
  {
    swift_once();
  }

  v8 = qword_1000189D8;
  sub_10000ADCC(&qword_100018B08, &unk_1000110D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100011040;
  *(v9 + 56) = sub_10000ADCC(&qword_100018B10, &unk_100011170);
  *(v9 + 64) = sub_10000E3AC();
  *(v9 + 32) = v3;
  sub_10000F95C("URL open result: %@", 19, 2, &_mh_execute_header, v8, v7, v9);
}

uint64_t sub_10000DC88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id AppViewController.messageTintColor.getter()
{
  v0 = objc_allocWithZone(UIColor);

  return [v0 initWithWhite:0.098 alpha:1.0];
}

id AppViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_10000FA0C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AppViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC25ActivityMessagesExtension17AppViewController_bubbleView] = 0;
  if (a2)
  {
    v5 = sub_10000FA0C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for AppViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id AppViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id AppViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC25ActivityMessagesExtension17AppViewController_bubbleView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AppViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id AppViewController.__allocating_init(shouldBeSheetPresentationControllerDelegate:)(char a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithShouldBeSheetPresentationControllerDelegate:a1 & 1];
}

id AppViewController.init(shouldBeSheetPresentationControllerDelegate:)(char a1)
{
  *&v1[OBJC_IVAR____TtC25ActivityMessagesExtension17AppViewController_bubbleView] = 0;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AppViewController();
  return objc_msgSendSuper2(&v4, "initWithShouldBeSheetPresentationControllerDelegate:", a1 & 1);
}

id AppViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000E18C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000E1D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000E294;

  return sub_10000C390(a1, v4, v5, v7, v6);
}

uint64_t sub_10000E294()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10000E3AC()
{
  result = qword_100018B18;
  if (!qword_100018B18)
  {
    sub_10000AE68(&qword_100018B10, &unk_100011170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018B18);
  }

  return result;
}

uint64_t sub_10000E410(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000E508;

  return v6(a1);
}

uint64_t sub_10000E508()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10000E600(uint64_t a1)
{
  sub_10000FA3C();
  sub_10000FD9C();
  sub_10000FA6C();
  v2 = sub_10000FDBC();

  return sub_10000E694(a1, v2);
}

unint64_t sub_10000E694(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_10000FA3C();
      v8 = v7;
      if (v6 == sub_10000FA3C() && v8 == v9)
      {
        break;
      }

      v11 = sub_10000FD7C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10000E798(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000ADCC(&qword_100018C78, &qword_1000111F8);
    v3 = sub_10000FD3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000EDD8(v4, &v11, &qword_100018C80, &qword_100011200);
      v5 = v11;
      result = sub_10000E600(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000EDC8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t _s25ActivityMessagesExtension17AppViewControllerC11didTapReply_6friend12activityDate8behaviory0A9SharingUI0I0V_10Foundation4UUIDVAK0L0VAH0i6BubbleeH8BehaviorOtF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10000F8DC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock[-2] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000F85C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &aBlock[-2] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, enum case for ReplyBubbleViewTapBehavior.activityOriginatorDetail(_:), v4, v10);
  v13 = sub_10000F8CC();
  (*(v5 + 8))(v7, v4);
  if ((v13 & 1) != 0 && (sub_10000F8FC() & 1) == 0)
  {
    v15.super.isa = sub_10000F86C().super.isa;
    v16 = ASActivityAppLaunchURLForMeOnDate();
  }

  else
  {
    isa = sub_10000F87C().super.isa;
    v15.super.isa = sub_10000F86C().super.isa;
    v16 = ASActivityAppLaunchURLForFriendOnDate();
  }

  sub_10000F84C();
  sub_10000ADCC(&qword_100018AF8, qword_100011270);
  v17 = swift_allocObject();
  v31 = xmmword_100011040;
  *(v17 + 16) = xmmword_100011040;
  v18 = sub_10000F80C();
  v20 = v19;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_10000AE14();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  v21 = sub_10000FB7C();
  if (qword_1000189D0 != -1)
  {
    swift_once();
  }

  v22 = qword_1000189D8;
  sub_10000ADCC(&qword_100018B08, &unk_1000110D0);
  v23 = swift_allocObject();
  *(v23 + 16) = v31;
  *(v23 + 56) = sub_10000ADCC(&qword_100018B10, &unk_100011170);
  *(v23 + 64) = sub_10000E3AC();
  *(v23 + 32) = v17;
  sub_10000F95C("Message tapped, opening url: %@", 31, 2, &_mh_execute_header, v22, v21, v23);

  v24 = [objc_opt_self() sharedApplication];
  sub_10000F82C(v25);
  v27 = v26;
  sub_10000E798(&_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey();
  sub_10000ED68(&qword_100018A08, 255, type metadata accessor for OpenExternalURLOptionsKey, &unk_100010FF4);
  v28 = sub_10000F9FC().super.isa;

  aBlock[4] = sub_10000DB18;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DC88;
  aBlock[3] = &unk_100014B10;
  v29 = _Block_copy(aBlock);
  [v24 openURL:v27 options:v28 completionHandler:v29];
  _Block_release(v29);

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_10000ED68(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000EDB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_10000EDC8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000EDD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000ADCC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000EE40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000ADCC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000EEA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F04C;

  return sub_10000E410(a1, v4);
}

uint64_t sub_10000EF58()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000EF90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000E294;

  return sub_10000E410(a1, v4);
}

void sub_10000F148(uint64_t a1)
{
  v2 = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for StickerBrowserViewController();
  objc_msgSendSuper2(&v7, "viewWillAppear:", v2 & 1);
  v3 = sub_10000FB7C();
  if (qword_1000189D0 != -1)
  {
    swift_once();
  }

  v4 = qword_1000189D8;
  sub_10000ADCC(&qword_100018B08, &unk_1000110D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100011040;
  *(v5 + 56) = sub_10000ADCC(&qword_100018B10, &unk_100011170);
  *(v5 + 64) = sub_10000E3AC();
  *(v5 + 32) = &_swiftEmptyArrayStorage;
  sub_10000F95C("Sticker browser did appear, reloading", 37, 2, &_mh_execute_header, v4, v3, v5);

  v6 = [v1 stickerBrowserView];
  [v6 reloadData];
}

id sub_10000F3C0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StickerBrowserViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000F428()
{
  v1 = *(v0 + OBJC_IVAR____TtC25ActivityMessagesExtension28StickerBrowserViewController_dataSource);
  sub_10000ADCC(&qword_100018AF8, qword_100011270);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100011040;
  v3 = OBJC_IVAR____TtC25ActivityMessagesExtension17StickerDataSource_stickers;
  v4 = *(v1 + OBJC_IVAR____TtC25ActivityMessagesExtension17StickerDataSource_stickers);
  if (v4 >> 62)
  {
    v5 = sub_10000FD2C();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v2 + 56) = &type metadata for Int;
  *(v2 + 64) = &protocol witness table for Int;
  *(v2 + 32) = v5;
  v6 = sub_10000FB7C();
  if (qword_1000189D0 != -1)
  {
    swift_once();
  }

  v7 = qword_1000189D8;
  sub_10000ADCC(&qword_100018B08, &unk_1000110D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100011040;
  *(v8 + 56) = sub_10000ADCC(&qword_100018B10, &unk_100011170);
  *(v8 + 64) = sub_10000E3AC();
  *(v8 + 32) = v2;
  sub_10000F95C("Returning number of stickers %@", 31, 2, &_mh_execute_header, v7, v6, v8);

  v9 = *(v1 + v3);
  if (!(v9 >> 62))
  {
    return *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_10000FD2C();
}

id sub_10000F5F0(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC25ActivityMessagesExtension28StickerBrowserViewController_dataSource);
  sub_10000ADCC(&qword_100018AF8, qword_100011270);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100011040;
  *(v4 + 56) = &type metadata for Int;
  *(v4 + 64) = &protocol witness table for Int;
  *(v4 + 32) = a1;
  v5 = sub_10000FB7C();
  if (qword_1000189D0 != -1)
  {
    swift_once();
  }

  v6 = qword_1000189D8;
  sub_10000ADCC(&qword_100018B08, &unk_1000110D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100011040;
  *(v7 + 56) = sub_10000ADCC(&qword_100018B10, &unk_100011170);
  *(v7 + 64) = sub_10000E3AC();
  *(v7 + 32) = v4;
  sub_10000F95C("Returning sticker for index %@", 30, 2, &_mh_execute_header, v6, v5, v7);

  v9 = *(v3 + OBJC_IVAR____TtC25ActivityMessagesExtension17StickerDataSource_stickers);
  if ((v9 & 0xC000000000000001) != 0)
  {

    v11 = sub_10000FCBC();

    return v11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v10 = *(v9 + 8 * a1 + 32);

  return v10;
}