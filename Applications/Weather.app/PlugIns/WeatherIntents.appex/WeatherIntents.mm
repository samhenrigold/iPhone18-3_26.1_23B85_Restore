uint64_t sub_100001BF8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100001C28(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100001CA8(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_100001D30(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

char *LocationSearchCompleter.init(searchCompleter:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC14WeatherIntents23LocationSearchCompleter_onUpdate];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC14WeatherIntents23LocationSearchCompleter_onError];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC14WeatherIntents23LocationSearchCompleter_searchCompleter] = a1;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v12, "init");
  v8 = OBJC_IVAR____TtC14WeatherIntents23LocationSearchCompleter_searchCompleter;
  v9 = *&v7[OBJC_IVAR____TtC14WeatherIntents23LocationSearchCompleter_searchCompleter];
  v10 = v7;
  [v9 wi_applyLocalitiesAndLandmarksFilterType];
  [*&v7[v8] setDelegate:v10];

  return v10;
}

Swift::Void __swiftcall LocationSearchCompleter.searchLocations(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + OBJC_IVAR____TtC14WeatherIntents23LocationSearchCompleter_searchCompleter);
  v5 = [v4 queryFragment];
  v6 = sub_10000FCB4();
  v8 = v7;

  if (v6 == countAndFlagsBits && v8 == object)
  {
  }

  else
  {
    v10 = sub_10000FEB4();

    if ((v10 & 1) == 0)
    {
      v11 = sub_10000FCA4();
      [v4 setQueryFragment:v11];

      return;
    }
  }

  _s14WeatherIntents23LocationSearchCompleterC25completerDidUpdateResultsyySo07MKLocaldE0CF_0();
}

uint64_t _s14WeatherIntents23LocationSearchCompleterC25completerDidUpdateResultsyySo07MKLocaldE0CF_0()
{
  v1 = v0 + OBJC_IVAR____TtC14WeatherIntents23LocationSearchCompleter_onUpdate;
  result = swift_beginAccess();
  v3 = *v1;
  if (*v1)
  {
    v4 = *(v1 + 8);
    v5 = *(v0 + OBJC_IVAR____TtC14WeatherIntents23LocationSearchCompleter_searchCompleter);

    v6 = [v5 results];
    sub_100002E20();
    v7 = sub_10000FD04();

    v3(v7);
    sub_100001C28(v3, v4);
  }

  return result;
}

id LocationSearchCompleter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LocationSearchCompleter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t LocationSearchCompleter.completer(_:didFailWithError:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FBC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000FBA4();
  v8 = v2;
  swift_errorRetain();
  v9 = sub_10000FBB4();
  v10 = sub_10000FD54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27[0] = v25;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2085;
    v12 = [*&v8[OBJC_IVAR____TtC14WeatherIntents23LocationSearchCompleter_searchCompleter] queryFragment];
    v13 = sub_10000FCB4();
    v24 = v4;
    v15 = v14;

    v16 = sub_100002694(v13, v15, v27);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2082;
    v26 = a2;
    swift_errorRetain();
    sub_100002C04(&qword_100019168, &qword_1000112D0);
    v17 = sub_10000FCC4();
    v19 = sub_100002694(v17, v18, v27);

    *(v11 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "Received an error while requesting a local search completion. searchQuery=%{sensitive,mask.hash}s, error=%{public}s", v11, 0x20u);
    swift_arrayDestroy();

    (*(v5 + 8))(v7, v24);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v20 = &v8[OBJC_IVAR____TtC14WeatherIntents23LocationSearchCompleter_onError];
  result = swift_beginAccess();
  v22 = *v20;
  if (*v20)
  {
    v23 = *(v20 + 1);

    v22(a2);
    return sub_100001C28(v22, v23);
  }

  return result;
}

uint64_t variable initialization expression of LocalSearchRequestManager.geocodeRequestDeduper()
{
  v0 = sub_10000FAD4();
  __chkstk_darwin(v0);
  sub_100002C4C();
  sub_100002C04(&qword_100019178, &qword_1000112D8);
  sub_100002CA4();
  sub_10000FDD4();
  sub_100002C04(&qword_100019188, &qword_1000112E0);
  swift_allocObject();
  return sub_10000FAB4();
}

double variable initialization expression of LocalSearchRequestManager.$__lazy_storage_$_store@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 1;
  *(a1 + 24) = xmmword_1000112C0;
  return result;
}

unint64_t sub_100002694(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002758(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100002DC0(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100002D74(v11);
  return v7;
}

unint64_t sub_100002758(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100002858(a5, a6);
    *a1 = v9;
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
    result = sub_10000FE14();
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

char *sub_100002858(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000028A4(a1, a2);
  sub_1000029BC(&off_100014BC0);
  return v3;
}

char *sub_1000028A4(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_10000FCE4())
  {
    result = sub_100002AA0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_10000FDE4();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_10000FE14();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000029BC(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_100002B10(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100002AA0(uint64_t a1, uint64_t a2)
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

  sub_100002C04(&qword_100019218, &unk_100011318);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100002B10(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002C04(&qword_100019218, &unk_100011318);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_100002C04(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002C4C()
{
  result = qword_100019170;
  if (!qword_100019170)
  {
    sub_10000FAD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019170);
  }

  return result;
}

unint64_t sub_100002CA4()
{
  result = qword_100019180;
  if (!qword_100019180)
  {
    sub_100002D08(&qword_100019178, &qword_1000112D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019180);
  }

  return result;
}

uint64_t sub_100002D08(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002D74(void *a1)
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

uint64_t sub_100002DC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100002E20()
{
  result = qword_100019220;
  if (!qword_100019220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100019220);
  }

  return result;
}

uint64_t sub_100002E7C()
{

  return swift_beginAccess();
}

uint64_t sub_100002E9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002C04(&qword_100019290, &qword_1000116D0);
  __chkstk_darwin(v4 - 8);
  v6 = v31 - v5;
  v7 = sub_10000F594();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - v13;
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v33[0] = 0;
  v33[1] = 0;
  if (![a1 wi_getCoordinate:v33])
  {
    goto LABEL_6;
  }

  v17 = [a1 wi_mapItem];
  v32 = a2;
  v18 = v17;
  v19 = [v17 timeZone];

  a2 = v32;
  if (!v19)
  {
    goto LABEL_6;
  }

  sub_10000F584();

  (*(v8 + 32))(v16, v14, v7);
  v20 = sub_100003240([a1 wi_mapItem]);
  if (!v21)
  {
    (*(v8 + 8))(v16, v7);
LABEL_6:

    v28 = 1;
    goto LABEL_7;
  }

  v31[5] = v20;
  v31[3] = sub_10000FDC4();
  v31[4] = v22;
  (*(v8 + 16))(v11, v16, v7);
  sub_10000F564();
  v23 = sub_10000F574();
  sub_100003218(v6, 0, 1, v23);
  v24 = [a1 title];
  v25 = sub_10000FCB4();
  v31[1] = v26;
  v31[2] = v25;

  v27 = [a1 subtitle];
  sub_10000FCB4();

  a2 = v32;
  sub_10000FA74();

  (*(v8 + 8))(v16, v7);
  v28 = 0;
LABEL_7:
  v29 = sub_10000FAA4();
  return sub_100003218(a2, v28, 1, v29);
}

uint64_t sub_100003240(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_10000FCB4();

  return v3;
}

uint64_t *WeatherLocation.currentLocationID.unsafeMutableAddressor()
{
  if (qword_100019140 != -1)
  {
    sub_100003398(&qword_100019140);
  }

  return &static WeatherLocation.currentLocationID;
}

uint64_t sub_1000032FC()
{
  result = sub_10000F9D4();
  static WeatherLocation.currentLocationID = result;
  *algn_1000196C8 = v1;
  return result;
}

uint64_t static WeatherLocation.currentLocationID.getter()
{
  if (qword_100019140 != -1)
  {
    sub_100003398(&qword_100019140);
  }

  v0 = static WeatherLocation.currentLocationID;

  return v0;
}

uint64_t sub_100003398(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000033D0(SEL *a1)
{
  if ([v1 respondsToSelector:*a1])
  {
    return sub_100003420(v1, a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003420(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_10000FCB4();

  return v4;
}

id sub_1000034B4()
{
  type metadata accessor for BundleLookup();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_1000196D0 = result;
  return result;
}

double sub_100003528()
{
  v1 = sub_10000F794();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000053E8((v0 + 16), *(v0 + 40));
  sub_10000F984();
  sub_10000F784();
  v6 = v5;
  (*(v2 + 8))(v4, v1);
  return v6;
}

double sub_100003624@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_1000054B4((v1 + 10), &v5, &qword_100019330, &qword_100011380);
  if (*(&v6 + 1) == 1)
  {
    sub_100005454(&v5, &qword_100019330, &qword_100011380);
    sub_100003704(v1, a1);
    sub_1000054B4(a1, &v5, &qword_100019410, &unk_100011540);
    swift_beginAccess();
    sub_10000551C(&v5, (v1 + 10));
    swift_endAccess();
  }

  else
  {
    result = *&v5;
    v4 = v6;
    *a1 = v5;
    *(a1 + 16) = v4;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_100003704@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000FBC4();
  v5 = __chkstk_darwin(v4);
  (a1[15])(v9, v5);
  sub_10000F634();
  sub_10000F624();
  sub_10000F5B4();
  sub_10000F614();

  sub_1000053E8(v9, v9[3]);
  sub_10000F7D4();
  if (v8 == 1)
  {
    sub_10000F5B4();
    sub_1000056DC(&qword_100019420, v6, type metadata accessor for LocalSearchRequestManager, &protocol conformance descriptor for LocalSearchRequestManager);
    sub_10000F674();
  }

  sub_100005634(v9, a2);
  return sub_100002D74(v9);
}

BOOL sub_100003A6C()
{
  v0 = sub_100002C04(&qword_100019290, &qword_1000116D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_10000F574();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  sub_10000FA34();
  if (sub_10000542C(v2, 1, v3) == 1)
  {
    sub_100005454(v2, &qword_100019290, &qword_1000116D0);
    return 1;
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    v11 = sub_100003528();
    sub_10000F5A4();
    sub_10000F554();
    v13 = v12;
    v14 = *(v4 + 8);
    v14(v7, v3);
    v14(v9, v3);
    return v11 <= v13;
  }
}

uint64_t sub_100003C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v23 = a7;
  ObjectType = swift_getObjectType();
  v15 = a5[3];
  v14 = a5[4];
  v16 = sub_100004E18(a5, v15);
  __chkstk_darwin(v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = v23(a1, a3, a4, v18, a6, v22, ObjectType, v15, a2, v14);
  sub_100002D74(a5);
  return v20;
}

uint64_t LocalSearchRequestManager.performLocalSearch(with:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v2;
  sub_10000FAA4();

  v6 = sub_10000FB64();

  return v6;
}

uint64_t sub_100003EF4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a4;
  v8 = sub_100002C04(&qword_100019408, &unk_100011470);
  __chkstk_darwin(v8 - 8);
  v10 = v25 - v9;
  v11 = sub_10000FAA4();
  v28 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v27 = v25 - v15;
  sub_10000F634();
  sub_10000F624();
  sub_10000F5C4();
  sub_10000F614();

  if (v32[0])
  {
    goto LABEL_9;
  }

  v26 = v11;
  v29 = a2;
  sub_100003624(v32);
  if (!v33)
  {
    sub_100005454(v32, &qword_100019410, &unk_100011540);
    sub_100003218(v10, 1, 1, v26);
    goto LABEL_8;
  }

  sub_100005634(v32, v30);
  sub_100005454(v32, &qword_100019410, &unk_100011540);
  v25[1] = v7;
  sub_1000053E8(v30, v31);
  sub_10000F7B4();
  sub_100002D74(v30);
  v16 = v26;
  if (sub_10000542C(v10, 1, v26) == 1)
  {
LABEL_8:
    sub_100005454(v10, &qword_100019408, &unk_100011470);
    a2 = v29;
    goto LABEL_9;
  }

  v17 = v27;
  v18 = v28;
  (*(v28 + 32))(v27, v10, v16);
  if (!sub_100003A6C())
  {
    (*(v18 + 16))(v14, v17, v16);
    sub_100002C04(&qword_100019418, &qword_100011480);
    swift_allocObject();
    v23 = sub_10000FB44();
    (*(v18 + 8))(v17, v16);
    return v23;
  }

  v19 = sub_100003624(v32);
  if (v33)
  {
    sub_100005634(v32, v30);
    sub_100005454(v32, &qword_100019410, &unk_100011540);
    sub_1000053E8(v30, v31);
    sub_10000F7C4();
    (*(v18 + 8))(v17, v16);
    sub_100002D74(v30);
  }

  else
  {
    (*(v18 + 8))(v17, v16, v19);
    sub_100005454(v32, &qword_100019410, &unk_100011540);
  }

  a2 = v29;
LABEL_9:
  v20 = a1[8];
  ObjectType = swift_getObjectType();
  (*(v20 + 8))(a2, a3, ObjectType, v20);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;

  v23 = sub_10000FB24();

  return v23;
}

uint64_t LocalSearchRequestManager.performLocalSearch(with:calloutTitle:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a1;
  v7[5] = v3;
  sub_10000FAA4();

  v8 = a1;

  v9 = sub_10000FB64();

  return v9;
}

uint64_t sub_1000044D0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v32 = *a5;
  v9 = sub_100002C04(&qword_100019408, &unk_100011470);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_10000FAA4();
  v30 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v29 = &v29 - v16;
  sub_10000F634();
  sub_10000F624();
  sub_10000F5C4();
  sub_10000F614();

  if (v35[0])
  {
    goto LABEL_11;
  }

  v31 = a1;
  sub_100003624(v35);
  if (!v36)
  {
    sub_100005454(v35, &qword_100019410, &unk_100011540);
    sub_100003218(v11, 1, 1, v12);
    goto LABEL_8;
  }

  sub_100005634(v35, v33);
  sub_100005454(v35, &qword_100019410, &unk_100011540);
  sub_1000053E8(v33, v34);
  v17 = v12;
  sub_10000F7B4();
  sub_100002D74(v33);
  if (sub_10000542C(v11, 1, v12) == 1)
  {
LABEL_8:
    v21 = &qword_100019408;
    v22 = &unk_100011470;
    v23 = v11;
LABEL_9:
    sub_100005454(v23, v21, v22);
    goto LABEL_10;
  }

  v19 = v29;
  v18 = v30;
  (*(v30 + 32))(v29, v11, v17);
  if (!sub_100003A6C())
  {
    (*(v18 + 16))(v15, v19, v17);
    sub_100002C04(&qword_100019418, &qword_100011480);
    swift_allocObject();
    v27 = sub_10000FB44();
    (*(v18 + 8))(v19, v17);
    return v27;
  }

  v20 = sub_100003624(v35);
  if (!v36)
  {
    (*(v18 + 8))(v19, v17, v20);
    v21 = &qword_100019410;
    v22 = &unk_100011540;
    v23 = v35;
    goto LABEL_9;
  }

  sub_100005634(v35, v33);
  sub_100005454(v35, &qword_100019410, &unk_100011540);
  sub_1000053E8(v33, v34);
  sub_10000F7C4();
  (*(v18 + 8))(v19, v17);
  sub_100002D74(v33);
LABEL_10:
  a1 = v31;
LABEL_11:
  v24 = a3[8];
  ObjectType = swift_getObjectType();
  (*(v24 + 16))(a4, a1, a2, ObjectType, v24);
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;

  v27 = sub_10000FB24();

  return v27;
}

uint64_t sub_100004950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000FAA4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003624(v12);
  if (v13)
  {
    sub_100005634(v12, v11);
    sub_100005454(v12, &qword_100019410, &unk_100011540);
    v14 = v4;
    sub_1000053E8(v11, v11[3]);
    sub_10000F7A4();
    sub_100002D74(v11);
  }

  else
  {
    sub_100005454(v12, &qword_100019410, &unk_100011540);
  }

  (*(v7 + 16))(v9, a1, v6);
  sub_100002C04(&qword_100019418, &qword_100011480);
  swift_allocObject();
  return sub_10000FB44();
}

uint64_t LocalSearchRequestManager.deinit()
{
  sub_100002D74((v0 + 16));
  swift_unknownObjectRelease();

  sub_100005454(v0 + 80, &qword_100019330, &qword_100011380);

  return v0;
}

uint64_t LocalSearchRequestManager.__deallocating_deinit()
{
  LocalSearchRequestManager.deinit();

  return _swift_deallocClassInstance(v0, 144, 7);
}

uint64_t sub_100004CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = a5;
  v22 = a7;
  v15 = *(a8 - 8);
  __chkstk_darwin(a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a4, a8);
  v19 = sub_100004E68(a1, a2, a3, v17, v21, v18, v22, a8, a9, a10);
  (*(v15 + 8))(a4, a8);
  return v19;
}

uint64_t sub_100004E18(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_100004E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v30 = a1;
  v31 = a2;
  v28 = a3;
  v29 = a9;
  v14 = sub_10000FD94();
  v26 = *(v14 - 8);
  v27 = v14;
  __chkstk_darwin(v14);
  v25 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000FD84();
  __chkstk_darwin(v16);
  v24 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000FC74();
  __chkstk_darwin(v18 - 8);
  v19 = sub_10000FAD4();
  __chkstk_darwin(v19);
  v33[3] = a8;
  v33[4] = a10;
  v20 = sub_1000055D4(v33);
  (*(*(a8 - 8) + 32))(v20, a4, a8);
  v32 = &_swiftEmptyArrayStorage;
  sub_1000056DC(&qword_100019170, 255, &type metadata accessor for PromiseDeduperFlags, &protocol conformance descriptor for PromiseDeduperFlags);
  sub_100002C04(&qword_100019178, &qword_1000112D8);
  sub_100005724(&qword_100019180, &qword_100019178, &qword_1000112D8);
  sub_10000FDD4();
  sub_100002C04(&qword_100019188, &qword_1000112E0);
  swift_allocObject();
  v21 = v28;
  *(a6 + 72) = sub_10000FAB4();
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 96) = 0;
  *(a6 + 104) = xmmword_1000112C0;
  v22 = v29;
  *(a6 + 56) = v30;
  *(a6 + 64) = v22;
  *(a6 + 120) = v31;
  *(a6 + 128) = v21;
  sub_100005634(v33, a6 + 16);
  if (!a5)
  {
    sub_100005698();

    sub_10000FC64();
    v32 = &_swiftEmptyArrayStorage;
    sub_1000056DC(&qword_100019430, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_100002C04(&qword_100019438, &qword_100011488);
    sub_100005724(&qword_100019440, &qword_100019438, &qword_100011488);
    sub_10000FDD4();
    (*(v26 + 104))(v25, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v27);
    a5 = sub_10000FDA4();
  }

  sub_100002D74(v33);
  *(a6 + 136) = a5;
  return a6;
}

uint64_t sub_100005288()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000052E8()
{

  return _swift_deallocObject(v0, 48, 7);
}

void *sub_1000053E8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005454(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002C04(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000054B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002C04(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000551C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002C04(&qword_100019330, &qword_100011380);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000559C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t *sub_1000055D4(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_100005634(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100005698()
{
  result = qword_100019428;
  if (!qword_100019428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100019428);
  }

  return result;
}

uint64_t sub_1000056DC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100005724(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002D08(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Int sub_1000057BC()
{
  sub_10000FF14();
  sub_10000FF24(0);
  return sub_10000FF34();
}

Swift::Int sub_10000580C(uint64_t a1)
{
  sub_10000FF14();
  sub_10000FF24(0);
  return sub_10000FF34();
}

double sub_10000585C@<D0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___geocodeStore;
  swift_beginAccess();
  sub_10000C154(v1 + v3, &v6, &qword_100019330, &qword_100011380);
  if (*(&v7 + 1) == 1)
  {
    sub_10000C1A4(&v6, &qword_100019330, &qword_100011380);
    sub_100005960(a1);
    sub_10000C154(a1, &v6, &qword_100019410, &unk_100011540);
    swift_beginAccess();
    sub_10000C1FC(&v6, v1 + v3, &qword_100019330, &qword_100011380);
    swift_endAccess();
  }

  else
  {
    result = *&v6;
    v5 = v7;
    *a1 = v6;
    *(a1 + 16) = v5;
    *(a1 + 32) = v8;
  }

  return result;
}

uint64_t sub_100005960@<X0>(uint64_t *a1@<X8>)
{
  v20 = a1;
  v1 = sub_10000FC04();
  v18 = *(v1 - 8);
  v19 = v1;
  __chkstk_darwin(v1);
  v17 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000FC24();
  v3 = *(v16 - 8);
  __chkstk_darwin(v16);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000FBF4();
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000FC44();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10000FBE4();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10000FC34();
  __chkstk_darwin(v11 - 8);
  sub_10000FC54();
  v12 = sub_10000F6F4();
  sub_10000F6E4();
  sub_10000FBD4();
  sub_10000F6C4();
  (*(v6 + 104))(v8, enum case for Database.VacuumMode.incremental(_:), v15);
  (*(v3 + 104))(v5, enum case for Database.JournalingMode.wal(_:), v16);
  (*(v18 + 104))(v17, enum case for Database.RecoveryMode.throw(_:), v19);
  v21 = 1;
  sub_10000FC14();
  swift_allocObject();
  result = sub_10000F6D4();
  v14 = v20;
  v20[3] = v12;
  v14[4] = &protocol witness table for GeocodeStore;
  *v14 = result;
  return result;
}

uint64_t sub_100005D10@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___localSearchManager;
  swift_beginAccess();
  sub_10000C154(&v1[v3], &v13, &qword_1000194F8, &unk_100011530);
  if (v14)
  {
    return sub_10000BD0C(&v13, a1);
  }

  sub_10000C1A4(&v13, &qword_1000194F8, &unk_100011530);
  v5 = sub_1000063FC(&OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___appConfigurationManager, sub_100006018);
  type metadata accessor for LocalSearchRequestService();
  v6 = swift_allocObject();
  v6[5] = sub_10000F904();
  v6[6] = &protocol witness table for AppConfigurationManager;
  v6[2] = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v8 = *&v1[OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___appConfigurationManager];
  v9 = type metadata accessor for LocalSearchRequestManager();
  v10 = swift_allocObject();
  v11 = v1;

  v12 = sub_10000B894(v6, sub_10000B878, v7, v8, 0, v10);
  a1[3] = v9;
  a1[4] = &off_100014C38;
  *a1 = v12;
  sub_100005634(a1, &v13);
  swift_beginAccess();
  sub_10000C1FC(&v13, &v1[v3], &qword_1000194F8, &unk_100011530);
  return swift_endAccess();
}

uint64_t sub_100005EE4@<X0>(uint64_t a1@<X8>)
{
  sub_10000585C(&v3);
  if (v4)
  {
    return sub_10000BD0C(&v3, a1);
  }

  sub_10000C1A4(&v3, &qword_100019410, &unk_100011540);
  sub_10000BCB8();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_100005F80(uint64_t a1)
{
  sub_10000F9A4();
  sub_10000F994();
  sub_10000F894();
  sub_10000F774();
  swift_allocObject();

  return sub_10000F764();
}

uint64_t sub_100006018()
{
  v0 = sub_10000F544();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = sub_10000F6B4();
  sub_10000F664();
  sub_10000F644();
  sub_10000F654();

  sub_10000F534();
  (*(v1 + 8))(v4, v0);
  v6 = sub_10000F6A4();
  v23 = v5;
  v24 = &protocol witness table for WeatherConfigurationManager;
  v22 = v6;
  v7 = sub_10000F814();
  swift_allocObject();
  v8 = sub_10000F804();
  v20 = v7;
  v21 = &protocol witness table for PermanentURLFactory;
  v19 = v8;
  v9 = sub_1000063FC(&OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___identityService, sub_100005F80);
  v17 = sub_10000F774();
  v18 = &protocol witness table for IdentityService;
  v16 = v9;
  v10 = sub_10000F9C4();
  swift_allocObject();
  v11 = sub_10000F9B4();
  v17 = v10;
  v18 = &protocol witness table for AppConfigurationRemoteSettingsProvider;
  v16 = v11;
  sub_10000F924();
  swift_allocObject();
  sub_10000F914();
  sub_10000BD24(&qword_100019508, &type metadata accessor for AppConfigurationService, &protocol conformance descriptor for AppConfigurationService);
  v12 = sub_10000F8B4();
  swift_allocObject();
  v13 = sub_10000F8A4();
  v23 = v12;
  v24 = &protocol witness table for AppConfigurationStore;
  v22 = v13;
  sub_10000F904();
  swift_allocObject();
  return sub_10000F8F4();
}

uint64_t sub_1000062DC@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___locationDataModelFactory;
  swift_beginAccess();
  sub_10000C154(v1 + v3, &v7, &qword_100019540, &qword_100011598);
  if (v8)
  {
    return sub_10000BD0C(&v7, a1);
  }

  sub_10000C1A4(&v7, &qword_100019540, &qword_100011598);
  v5 = sub_10000F944();
  swift_allocObject();
  v6 = sub_10000F934();
  a1[3] = v5;
  a1[4] = &protocol witness table for LocationDataModelFactory;
  *a1 = v6;
  sub_100005634(a1, &v7);
  swift_beginAccess();
  sub_10000C1FC(&v7, v1 + v3, &qword_100019540, &qword_100011598);
  return swift_endAccess();
}

uint64_t sub_1000063FC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_100006464(uint64_t a1)
{
  sub_1000063FC(&OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___appConfigurationManager, sub_100006018);
  sub_10000F904();
  sub_1000063FC(&OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___identityService, sub_100005F80);
  sub_10000F774();
  sub_10000F834();
  swift_allocObject();
  sub_10000F824();
  sub_10000F754();
  swift_allocObject();
  sub_10000F744();
  sub_10000F734();
  swift_allocObject();
  sub_10000F724();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000F714();
  swift_allocObject();

  sub_10000F704();
  sub_10000F8E4();
  [objc_allocWithZone(WCDefaultCityManager) init];
  return sub_10000F8C4();
}

uint64_t sub_100006694@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10000585C(&v6);

    if (*(&v7 + 1))
    {
      return sub_10000BD0C(&v6, a2);
    }
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

  sub_10000C1A4(&v6, &qword_100019410, &unk_100011540);
  sub_10000BCB8();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_100006764@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___savedLocationsReader;
  swift_beginAccess();
  sub_10000C154(v1 + v3, &v6, &qword_100019528, &qword_100011588);
  if (v7)
  {
    return sub_10000BD0C(&v6, a1);
  }

  sub_10000C1A4(&v6, &qword_100019528, &qword_100011588);
  v5 = sub_10000686C();
  a1[3] = sub_10000F874();
  a1[4] = &protocol witness table for SavedLocationsReader;
  *a1 = v5;
  sub_100005634(a1, &v6);
  swift_beginAccess();
  sub_10000C1FC(&v6, v1 + v3, &qword_100019528, &qword_100011588);
  return swift_endAccess();
}

uint64_t sub_10000686C()
{
  v0 = sub_100002C04(&qword_100019530, &qword_100011590);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_10000F9A4();
  v4 = sub_10000F994();
  v22 = v3;
  v23 = &protocol witness table for UbiquitousKeyValueStoreProvider;
  v21 = v4;
  sub_1000062DC(v20);
  v5 = sub_10000F544();
  sub_100003218(v2, 1, 1, v5);
  v6 = sub_10000F974();
  swift_allocObject();
  v7 = sub_10000F964();
  v18 = v6;
  v19 = &protocol witness table for SyncedDataContextProvider;
  v17 = v7;
  v8 = sub_1000063FC(&OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___defaultLocationManager, sub_100006464);
  v15 = sub_10000F8E4();
  v16 = &protocol witness table for DefaultLocationManager;
  v14 = v8;
  v9 = sub_10000F854();
  swift_allocObject();
  v10 = sub_10000F844();
  v18 = v9;
  v19 = &protocol witness table for CoherenceDataManager;
  v17 = v10;
  v11 = sub_10000C114(0, &qword_100019538, NSUserDefaults_ptr);
  v12 = sub_10000FD74();
  v15 = v11;
  v16 = &protocol witness table for NSUserDefaults;
  v14 = v12;
  sub_10000F874();
  swift_allocObject();
  return sub_10000F864();
}

uint64_t sub_100006A3C()
{
  v1[7] = v0;
  v2 = sub_10000FAA4();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = sub_10000F7F4();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = sub_10000FA04();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_100006BCC, 0, 0);
}

uint64_t sub_100006BCC()
{
  sub_10000C5CC();
  sub_100006764(v0 + 2);
  v1 = v0[5];
  v2 = v0[6];
  sub_1000053E8(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_100006C88;

  return dispatch thunk of SavedLocationsReaderType.fetchSavedLocationsAsync()(v1, v2);
}

uint64_t sub_100006C88()
{
  sub_10000C4DC();
  sub_10000C528();
  sub_10000C420();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 160) = v3;

  v4 = sub_10000C440();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100006D70()
{
  v2 = v0[20];
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v0[15];
      v5 = v0[12];
      sub_10000C5D8();
      sub_10000B010(0, v3, 0);
      v6 = v30;
      v5 += 16;
      sub_10000C534();
      v27 = v2;
      v1 = v2 + v7;
      v28 = *(v5 + 56);
      v29 = v8;
      v9 = (v5 - 8);
      do
      {
        v10 = v0[13];
        v11 = v0[11];
        v29(v10, v1, v11);
        sub_10000F7E4();
        (*v9)(v10, v11);
        v13 = v30[2];
        v12 = v30[3];
        if (v13 >= v12 >> 1)
        {
          sub_10000B010((v12 > 1), v13 + 1, 1);
        }

        v30[2] = v13 + 1;
        sub_10000C534();
        (*(v4 + 32))(v30 + v14 + *(v4 + 72) * v13);
        v1 += v28;
        --v3;
      }

      while (v3);
    }

    else
    {

      v6 = &_swiftEmptyArrayStorage;
    }

    sub_100002D74(v0 + 2);
    v17 = v6[2];
    if (v17)
    {
      sub_10000C5D8();
      sub_10000FE44();
      type metadata accessor for WeatherLocation();
      sub_10000C3F4();
      do
      {
        v18 = sub_10000C4E8();
        v19(v18);
        sub_10000F9E4();
        sub_10000F9F4();
        sub_10000C618(v20, v21);

        sub_10000C4A8();
        v22 = sub_10000C588();
        v23(v22);
        sub_10000FE24();
        sub_10000C5C0();
        sub_10000FE54();
        sub_10000C5C0();
        sub_10000FE64();
        sub_10000FE34();
        v1 += v27;
        --v17;
      }

      while (v17);
    }

    sub_10000C658();

    sub_10000C5A0();

    __asm { BRAA            X2, X16 }
  }

  sub_100002D74(v0 + 2);
  v0[21] = sub_1000063FC(&OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___defaultLocationManager, sub_100006464);
  v15 = swift_task_alloc();
  v0[22] = v15;
  *v15 = v0;
  v15[1] = sub_1000070BC;
  sub_10000C5A0();

  return DefaultLocationManager.defaultLocations.getter();
}

uint64_t sub_1000070BC()
{
  sub_10000C4DC();
  sub_10000C528();
  sub_10000C420();
  *v2 = v1;
  v3 = *v0;
  sub_10000C430();
  *v4 = v3;
  *(v6 + 184) = v5;

  v7 = sub_10000C440();

  return _swift_task_switch(v7, v8, v9);
}

void sub_1000071BC(uint64_t a1)
{
  v3 = v1[23];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v1[15];
    v6 = v1[9];
    sub_10000C5D8();
    sub_10000B010(0, v4, 0);
    v7 = v29;
    v6 += 16;
    sub_10000C534();
    v9 = v3 + v8;
    v27 = *(v6 + 56);
    v28 = v10;
    v11 = (v6 - 8);
    do
    {
      v12 = v1[10];
      v13 = v1[8];
      v28(v12, v9, v13);
      sub_10000FA24();
      (*v11)(v12, v13);
      v15 = v29[2];
      v14 = v29[3];
      v2 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        sub_10000B010((v14 > 1), v15 + 1, 1);
      }

      v29[2] = v2;
      sub_10000C534();
      (*(v5 + 32))(v29 + v16 + *(v5 + 72) * v15);
      v9 += v27;
      --v4;
    }

    while (v4);
  }

  else
  {

    v7 = &_swiftEmptyArrayStorage;
  }

  v17 = v7[2];
  if (v17)
  {
    sub_10000C5D8();
    sub_10000FE44();
    type metadata accessor for WeatherLocation();
    sub_10000C3F4();
    do
    {
      v18 = sub_10000C4E8();
      v19(v18);
      sub_10000F9E4();
      sub_10000F9F4();
      sub_10000C618(v20, v21);

      sub_10000C4A8();
      v22 = sub_10000C588();
      v23(v22);
      sub_10000FE24();
      sub_10000C5C0();
      sub_10000FE54();
      sub_10000C5C0();
      sub_10000FE64();
      sub_10000FE34();
      v2 += v26;
      --v17;
    }

    while (v17);
  }

  sub_10000C658();

  sub_10000C5A0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_100007458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a1;
  v9[6] = a2;
  v10 = v4;

  sub_10000FB84();
}

void sub_1000074FC(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, void *a5)
{
  v34 = sub_10000FBC4();
  v10 = *(v34 - 8);
  __chkstk_darwin(v34);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC14WeatherIntents13IntentHandler_searchCompleter;
  v14 = *(a1 + OBJC_IVAR____TtC14WeatherIntents13IntentHandler_searchCompleter);
  if (v14 || (v15 = [objc_allocWithZone(MKLocalSearchCompleter) init], v16 = objc_allocWithZone(type metadata accessor for LocationSearchCompleter()), v17 = LocationSearchCompleter.init(searchCompleter:)(v15), v18 = *(a1 + v13), *(a1 + v13) = v17, v18, (v14 = *(a1 + v13)) != 0))
  {
    v33._countAndFlagsBits = a4;
    v33._object = a5;
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = a3;
    v20 = &v14[OBJC_IVAR____TtC14WeatherIntents23LocationSearchCompleter_onError];
    swift_beginAccess();
    v22 = *v20;
    v21 = v20[1];
    *v20 = sub_10000B6B0;
    v20[1] = v19;
    v23 = v14;

    sub_100001C28(v22, v21);
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = a2;
    v25[4] = a3;
    v26 = &v23[OBJC_IVAR____TtC14WeatherIntents23LocationSearchCompleter_onUpdate];
    swift_beginAccess();
    v27 = *v26;
    v28 = v26[1];
    *v26 = sub_10000B700;
    v26[1] = v25;

    sub_100001C28(v27, v28);

    sub_10000FBA4();
    v29 = sub_10000FBB4();
    v30 = sub_10000FD64();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Starting a search ...", v31, 2u);
    }

    (*(v10 + 8))(v12, v34);
    LocationSearchCompleter.searchLocations(for:)(v33);
  }

  else
  {
    a2(0, 0);
  }
}

uint64_t sub_1000077FC(uint64_t a1, uint64_t (*a2)(void, void))
{
  v3 = sub_10000FBC4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000FBA4();
  v7 = sub_10000FBB4();
  v8 = sub_10000FD54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "We encountered an error while updating the search term.", v9, 2u);
  }

  (*(v4 + 8))(v6, v3);
  return a2(0, 0);
}

void sub_100007954(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    __chkstk_darwin(Strong);
    sub_100002C04(&qword_1000194C8, &qword_100011500);
    sub_10000FB74();
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;

    v9 = sub_10000FAF4();
    sub_10000FB14();

    v10 = swift_allocObject();
    *(v10 + 16) = a3;
    *(v10 + 24) = a4;

    v11 = sub_10000FAF4();
    sub_10000FB34();
  }

  else
  {
    a3(0, 0);
  }
}

uint64_t sub_100007B18(unint64_t a1)
{
  v2 = sub_10000AF18(a1);
  if (v2)
  {
    v3 = v2;
    v12[1] = &_swiftEmptyArrayStorage;
    sub_10000FE44();
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = 0;
      while (1)
      {
        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = sub_10000FDF4();
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_12;
          }

          v6 = *(a1 + 8 * v4 + 32);
        }

        v7 = v6;
        v11 = v6;
        sub_10000A5B8(&v11, v12);

        sub_10000FE24();
        sub_10000FE54();
        sub_10000FE64();
        sub_10000FE34();
        ++v4;
        if (v5 == v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_10:
    v8 = sub_10000FAF4();
    sub_100002C04(&qword_1000194D0, &qword_100011508);
    v9 = sub_10000FAE4();

    return v9;
  }

  return result;
}

uint64_t sub_100007C94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a2;
  v6[4] = a3;

  sub_10000FB84();
}

void sub_100007D28(uint64_t a1, void (*a2)(id, void), uint64_t a3)
{
  v66 = a3;
  v67 = a2;
  v4 = sub_10000FBC4();
  v64 = *(v4 - 8);
  v65 = v4;
  __chkstk_darwin(v4);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000FAA4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002C04(&qword_1000194D0, &qword_100011508);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v63 - v13;
  v15 = *(a1 + 16);
  v16 = &_swiftEmptyArrayStorage;
  if (v15)
  {
    v63 = v6;
    v74 = &_swiftEmptyArrayStorage;
    sub_10000FE44();
    v17 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v18 = type metadata accessor for WeatherLocation();
    v70 = *(v12 + 72);
    v71 = v18;
    v68 = (v8 + 8);
    v69 = (v8 + 16);
    v72 = v11;
    do
    {
      sub_10000C154(v17, v14, &qword_1000194D0, &qword_100011508);
      v19 = &v14[*(v11 + 48)];
      v20 = v19[1];
      v73 = *v19;
      (*v69)(v10, v14, v7);
      v21 = sub_10000FA44();
      v23 = v22;
      sub_10000FA14();
      v25 = v24;
      v27 = v26;
      v28 = sub_10000FA94();
      v29 = v10;
      v30 = v14;
      v31 = v7;
      v33 = v32;

      v34 = v33;
      v7 = v31;
      v14 = v30;
      v10 = v29;
      sub_10000AA48(v21, v23, v25, v27, v28, v34, v73, v20);
      (*v68)(v29, v7);
      sub_10000C1A4(v14, &qword_1000194D0, &qword_100011508);
      sub_10000FE24();
      sub_10000FE54();
      v11 = v72;
      sub_10000FE64();
      sub_10000FE34();
      v17 += v70;
      --v15;
    }

    while (v15);
    v16 = v74;
    v6 = v63;
  }

  if (qword_100019148 != -1)
  {
    swift_once();
  }

  v35 = qword_1000196D0;
  v62._countAndFlagsBits = 0x8000000100011C90;
  v75._countAndFlagsBits = 0x6F4C20726568744FLL;
  v75._object = 0xEF736E6F69746163;
  v76.value._countAndFlagsBits = 0;
  v76.value._object = 0;
  v36.super.isa = v35;
  v77._countAndFlagsBits = 0;
  v77._object = 0xE000000000000000;
  v37 = sub_10000F514(v75, v76, v36, v77, 0xD000000000000025, v62);
  v39 = v38;

  v40 = objc_allocWithZone(INObjectSection);
  v41 = sub_10000AC18(v37, v39, v16);
  sub_100002C04(&qword_1000194D8, &qword_100011510);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_100011490;
  *(v42 + 32) = v41;
  v43 = objc_allocWithZone(INObjectCollection);
  v44 = v41;
  sub_100002C04(&qword_1000194E0, &unk_100011518);
  isa = sub_10000FCF4().super.isa;

  v46 = [v43 initWithSections:isa];

  sub_10000FBA4();
  v47 = v46;
  v48 = sub_10000FBB4();
  v49 = sub_10000FD64();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v73 = v44;
    v74 = v51;
    v52 = v51;
    *v50 = 136446210;
    v53 = v47;
    v54 = v6;
    v55 = [v53 description];
    v56 = sub_10000FCB4();
    v58 = v57;

    v59 = sub_100002694(v56, v58, &v74);

    *(v50 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v48, v49, "We have an updated search term and the collection was just updated. Collection=%{public}s", v50, 0xCu);
    sub_100002D74(v52);
    v44 = v73;

    (*(v64 + 8))(v54, v65);
  }

  else
  {

    (*(v64 + 8))(v6, v65);
  }

  v60 = v67;
  v61 = v47;
  v60(v47, 0);
}

id sub_100008340()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___geocodeStore];
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *v2 = 0;
  *(v2 + 24) = xmmword_1000112C0;
  v3 = &v0[OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___localSearchManager];
  *(v3 + 4) = 0;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v4 = OBJC_IVAR____TtC14WeatherIntents13IntentHandler_iCloudStatusProvider;
  sub_10000F894();
  swift_allocObject();
  *&v0[v4] = sub_10000F884();
  *&v0[OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___identityService] = 0;
  *&v0[OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___appConfigurationManager] = 0;
  v5 = &v0[OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___locationDataModelFactory];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v0[OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___defaultLocationManager] = 0;
  v6 = &v0[OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___savedLocationsReader];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *&v0[OBJC_IVAR____TtC14WeatherIntents13IntentHandler_searchCompleter] = 0;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_100008590(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint8_t *a5)
{
  v6 = v5;
  v11 = sub_100002C04(&qword_1000194C0, &qword_1000114E8);
  __chkstk_darwin(v11 - 8);
  v35 = &v34[-v12];
  v13 = sub_10000FBC4();
  sub_10000C5E4();
  v15 = v14;
  v17 = __chkstk_darwin(v16);
  v36 = &v34[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v20 = &v34[-v19];
  sub_10000FBA4();
  v21 = sub_10000FBB4();
  v22 = sub_10000FD64();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    sub_10000C450(v23);
    _os_log_impl(&_mh_execute_header, v21, v22, "About to provide locations options collection for intent handling", a5, 2u);
    sub_10000C474();
  }

  v24 = *(v15 + 8);
  v24(v20, v13);
  if (!a3)
  {
    goto LABEL_10;
  }

  v25 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v25 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    sub_10000FBA4();
    v26 = sub_10000FBB4();
    v27 = sub_10000FD64();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      sub_10000C450(v28);
      _os_log_impl(&_mh_execute_header, v26, v27, "We have a search term so we need to reverse geocode that term ...", a5, 2u);
      sub_10000C474();
    }

    v24(v36, v13);
    return sub_100007458(a2, a3, a4, a5);
  }

  else
  {
LABEL_10:
    v30 = sub_10000FD44();
    v31 = v35;
    sub_100003218(v35, 1, 1, v30);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v6;
    v32[5] = a4;
    v32[6] = a5;
    v33 = v6;

    sub_100009304(0, 0, v31, &unk_1000114F8, v32);
  }
}

uint64_t sub_100008870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_10000FBC4();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_100008934, 0, 0);
}

uint64_t sub_100008934()
{
  sub_10000C5CC();
  if (qword_100019148 != -1)
  {
    swift_once();
  }

  v1 = qword_1000196D0;
  v8._countAndFlagsBits = 0x8000000100011CE0;
  v10._countAndFlagsBits = 0x636F4C2072756F59;
  v10._object = 0xEE00736E6F697461;
  v11.value._countAndFlagsBits = 0;
  v11.value._object = 0;
  v2.super.isa = v1;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v3 = sub_10000F514(v10, v11, v2, v12, 0xD000000000000035, v8);
  v5 = v4;

  v0[8] = v3;
  v0[9] = v5;
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_100008A6C;

  return sub_100008E04();
}

uint64_t sub_100008A6C()
{
  sub_10000C4DC();
  sub_10000C528();
  sub_10000C420();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 88) = v3;

  v4 = sub_10000C440();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100008B54()
{
  v35 = v0;
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = objc_allocWithZone(INObjectSection);
  v5 = sub_10000AC18(v3, v2, v1);
  sub_100002C04(&qword_1000194D8, &qword_100011510);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100011490;
  *(v6 + 32) = v5;
  v7 = objc_allocWithZone(INObjectCollection);
  v8 = v5;
  sub_100002C04(&qword_1000194E0, &unk_100011518);
  isa = sub_10000FCF4().super.isa;

  v10 = [v7 initWithSections:isa];

  sub_10000FBA4();
  v11 = v10;
  v12 = sub_10000FBB4();
  v13 = sub_10000FD64();

  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[6];
  v15 = v0[7];
  v17 = v0[5];
  if (v14)
  {
    v33 = v8;
    v18 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v18 = 136446210;
    v19 = v11;
    v31 = v15;
    v20 = [v19 description];
    v30 = v17;
    v21 = sub_10000FCB4();
    v23 = v22;

    v24 = sub_100002694(v21, v23, &v34);

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v12, v13, "We have NO search term so we need to reverse provide the zero locations list. Collection=%{public}s", v18, 0xCu);
    sub_100002D74(v32);
    sub_10000C540(v32);
    v25 = v18;
    v8 = v33;
    sub_10000C540(v25);

    (*(v16 + 8))(v31, v30);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
  }

  v26 = v0[3];
  v27 = v11;
  v26(v11, 0);

  sub_10000C5F8();

  return v28();
}

uint64_t sub_100008E04()
{
  v1[2] = v0;
  v2 = sub_10000FBC4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100008ED0, 0, 0);
}

uint64_t sub_100008ED0(uint64_t a1)
{
  sub_10000FBA4();
  v2 = sub_10000FBB4();
  v3 = sub_10000FD64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "About to determine zero keyword locations for (current location + saved locations)", v4, 2u);
    sub_10000C540(v4);
  }

  v5 = v1[6];
  v6 = v1[3];
  v7 = v1[4];

  v8 = *(v7 + 8);
  v1[7] = v8;
  v8(v5, v6);
  sub_100002C04(&qword_1000194D8, &qword_100011510);
  v9 = swift_allocObject();
  v1[8] = v9;
  *(v9 + 16) = xmmword_100011490;
  *(v9 + 32) = sub_1000098C4();
  v10 = swift_task_alloc();
  v1[9] = v10;
  *v10 = v1;
  v10[1] = sub_100009044;

  return sub_100006A3C();
}

uint64_t sub_100009044()
{
  sub_10000C4DC();
  sub_10000C528();
  sub_10000C420();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 80) = v3;

  v4 = sub_10000C440();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10000912C()
{
  v19 = v0;
  v1 = v0[10];
  v18 = v0[8];
  sub_10000B1E4(v1);
  v2 = v18;
  sub_10000FBA4();

  v3 = sub_10000FBB4();
  v4 = sub_10000FD64();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  v7 = v0[5];
  v8 = v0[3];
  if (v5)
  {
    v17 = v0[7];
    v9 = swift_slowAlloc();
    v16 = v7;
    v10 = swift_slowAlloc();
    v18 = v10;
    sub_10000C604(7.2225e-34);
    *(v9 + 12) = 2081;
    type metadata accessor for WeatherLocation();
    v11 = sub_10000FD14();
    v13 = sub_100002694(v11, v12, &v18);

    *(v9 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Returning zero keyword locations=%{private,mask.hash}s", v9, 0x16u);
    sub_100002D74(v10);
    sub_10000C540(v10);
    sub_10000C540(v9);

    v17(v16, v8);
  }

  else
  {

    v6(v7, v8);
  }

  v14 = v0[1];

  return v14(v2);
}

uint64_t sub_100009304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002C04(&qword_1000194C0, &qword_1000114E8);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_10000C154(a3, v24 - v10, &qword_1000194C0, &qword_1000114E8);
  v12 = sub_10000FD44();
  v13 = sub_10000542C(v11, 1, v12);

  if (v13 == 1)
  {
    sub_10000C1A4(v11, &qword_1000194C0, &qword_1000114E8);
  }

  else
  {
    sub_10000FD34();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_10000FD24();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_10000FCD4() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_10000C1A4(a3, &qword_1000194C0, &qword_1000114E8);

      return v22;
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

  sub_10000C1A4(a3, &qword_1000194C0, &qword_1000114E8);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_1000096BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_10000F524();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_10000972C(void *a1)
{
  v2 = sub_10000FBC4();
  sub_10000C5E4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000FBA4();
  v8 = a1;
  v9 = sub_10000FBB4();
  v10 = sub_10000FD64();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    sub_10000C604(7.2225e-34);
    *(v11 + 12) = 2113;
    *(v11 + 14) = v8;
    *v13 = v8;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "About to determine default location for intent:%{private,mask.hash}@", v11, 0x16u);
    sub_10000C1A4(v12, &qword_1000194B8, &qword_1000114E0);
    sub_10000C540(v12);
    sub_10000C540(v11);
  }

  (*(v4 + 8))(v7, v2);
  return sub_1000098C4();
}

id sub_1000098C4()
{
  v0 = sub_10000FBC4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WeatherLocation();
  if (qword_100019140 != -1)
  {
    swift_once();
  }

  v4 = static WeatherLocation.currentLocationID;
  v5 = *algn_1000196C8;
  v6 = qword_100019148;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_1000196D0;
  v29._countAndFlagsBits = 0x8000000100011C40;
  v34._countAndFlagsBits = 0x7461636F4C20794DLL;
  v34._object = 0xEB000000006E6F69;
  v35.value._countAndFlagsBits = 0;
  v35.value._object = 0;
  v8.super.isa = v7;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v9 = sub_10000F514(v34, v35, v8, v36, 0xD000000000000046, v29);
  v11 = v10;

  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = sub_10000ACA8(v4, v5, v9, v11);
  sub_10000FBA4();
  v14 = v13;
  v15 = sub_10000FBB4();
  v16 = sub_10000FD64();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33 = v18;
    *v17 = 141558275;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    v19 = v14;
    v20 = [v19 description];
    v32 = v0;
    v21 = v20;
    v22 = sub_10000FCB4();
    v31 = v3;
    v23 = v1;
    v24 = v22;
    v26 = v25;

    v27 = sub_100002694(v24, v26, &v33);

    *(v17 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "currentLocation=%{private,mask.hash}s", v17, 0x16u);
    sub_100002D74(v18);

    (*(v23 + 8))(v31, v32);
  }

  else
  {

    (*(v1 + 8))(v3, v0);
  }

  return v14;
}

id sub_100009C5C@<X0>(void *a1@<X8>)
{
  a1[3] = swift_getObjectType();
  *a1 = v3;

  return v3;
}

void sub_100009D14(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = sub_10000FBC4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v34[-v10];
  v12 = [a1 location];
  if (v12)
  {
    v13 = v12;
    sub_10000FBA4();
    v14 = a1;
    v15 = v13;
    v16 = sub_10000FBB4();
    v17 = sub_10000FD64();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v36 = v19;
      v38 = swift_slowAlloc();
      v39 = v38;
      *v18 = 141558787;
      *(v18 + 4) = 1752392040;
      *(v18 + 12) = 2113;
      *(v18 + 14) = v14;
      *v19 = v14;
      *(v18 + 22) = 2160;
      *(v18 + 24) = 1752392040;
      *(v18 + 32) = 2081;
      v20 = v14;
      v21 = v15;
      v22 = [v21 description];
      v37 = v5;
      v23 = a3;
      v24 = v22;
      v25 = sub_10000FCB4();
      v35 = v17;
      v26 = v25;
      v28 = v27;

      a3 = v23;
      v29 = sub_100002694(v26, v28, &v39);

      *(v18 + 34) = v29;
      _os_log_impl(&_mh_execute_header, v16, v35, "Resolving location for intent with success. intent %{private,mask.hash}@. location: %{private,mask.hash}s", v18, 0x2Au);
      sub_10000C1A4(v36, &qword_1000194B8, &qword_1000114E0);

      sub_100002D74(v38);

      (*(v6 + 8))(v11, v37);
    }

    else
    {

      (*(v6 + 8))(v11, v5);
    }

    type metadata accessor for WeatherLocationResolutionResult();
    v33 = static WeatherLocationResolutionResult.success(with:)(v15);
    (a3)[2](a3, v33);
  }

  else
  {
    sub_10000FBA4();
    v30 = sub_10000FBB4();
    v31 = sub_10000FD64();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Resolving location for intent not required.", v32, 2u);
    }

    (*(v6 + 8))(v9, v5);
    type metadata accessor for WeatherLocationResolutionResult();
    v33 = [swift_getObjCClassFromMetadata() notRequired];
    (a3)[2](a3, v33);
  }

  _Block_release(a3);
}

void sub_10000A100(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = sub_10000FBC4();
  v39 = *(v5 - 8);
  v40 = v5;
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &MKMapItem___WeatherIntents__properties;
  v9 = [a1 location];
  v10 = &MKMapItem___WeatherIntents__properties;
  if (v9)
  {
    v11 = v9;
    v12 = [v9 displayString];

    v13 = sub_10000FCB4();
    v15 = v14;
  }

  else
  {
    v15 = 0xE300000000000000;
    v13 = 7104878;
  }

  v16 = [a1 location];
  if (v16 && (v17 = sub_10000B3C8(v16), v18))
  {
    v19 = v18;
    v38 = v17;
  }

  else
  {
    v38 = 7104878;

    v19 = 0xE300000000000000;
  }

  sub_10000FBA4();
  v20 = a1;

  v21 = sub_10000FBB4();
  v22 = sub_10000FD64();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v36 = v7;
    v25 = v13;
    v26 = v24;
    v27 = swift_slowAlloc();
    v37 = a3;
    v41 = v27;
    *v23 = 141559299;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2113;
    *(v23 + 14) = v20;
    *v26 = v20;
    *(v23 + 22) = 2160;
    *(v23 + 24) = 1752392040;
    *(v23 + 32) = 2081;
    v28 = v20;
    v29 = sub_100002694(v25, v15, &v41);

    *(v23 + 34) = v29;
    *(v23 + 42) = 2160;
    *(v23 + 44) = 1752392040;
    *(v23 + 52) = 2081;
    v30 = sub_100002694(v38, v19, &v41);

    *(v23 + 54) = v30;
    v8 = &MKMapItem___WeatherIntents__properties;
    _os_log_impl(&_mh_execute_header, v21, v22, "Handling intent %{private,mask.hash}@. displayString: %{private,mask.hash}s. identifier: %{private,mask.hash}s", v23, 0x3Eu);
    sub_10000C1A4(v26, &qword_1000194B8, &qword_1000114E0);

    swift_arrayDestroy();
    a3 = v37;

    v10 = &MKMapItem___WeatherIntents__properties;

    (*(v39 + 8))(v36, v40);
  }

  else
  {

    (*(v39 + 8))(v7, v40);
  }

  v31 = objc_allocWithZone(type metadata accessor for WeatherIntentResponse());
  v32 = WeatherIntentResponse.init(code:userActivity:)(2, 0);
  v33 = [v20 *&v8[321]];
  if (v33)
  {
    v34 = v33;
    v35 = [v33 *&v10[322]];

    if (!v35)
    {
      sub_10000FCB4();
      v35 = sub_10000FCA4();
    }
  }

  else
  {
    v35 = 0;
  }

  [v32 setLocationName:v35];

  (a3)[2](a3, v32);
  _Block_release(a3);
}

void sub_10000A52C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

uint64_t sub_10000A5B8@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100002C04(&qword_1000194D0, &qword_100011508);
  __chkstk_darwin(v4);
  v6 = &v29[-1] - v5;
  v7 = sub_100002C04(&qword_100019408, &unk_100011470);
  __chkstk_darwin(v7 - 8);
  v9 = &v29[-1] - v8;
  v10 = sub_10000FAA4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_100002E9C(v14, v9);
  if (sub_10000542C(v9, 1, v10) == 1)
  {
    sub_10000C1A4(v9, &qword_100019408, &unk_100011470);
    sub_100005D10(v29);
    sub_1000053E8(v29, v29[3]);
    v15 = [v14 wi_calloutTitle];
    v16 = sub_10000FCB4();
    v18 = v17;

    LocalSearchRequestManager.performLocalSearch(with:calloutTitle:)(v14, v16, v18);

    *(swift_allocObject() + 16) = v14;
    v19 = v14;
    v20 = sub_10000FAF4();
    v21 = sub_10000FB04();

    result = sub_100002D74(v29);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v23 = [v14 wi_calloutTitle];
    v24 = sub_10000FCB4();
    v26 = v25;

    v27 = &v6[*(v4 + 48)];
    (*(v11 + 16))(v6, v13, v10);
    *v27 = v24;
    v27[1] = v26;
    sub_100002C04(&qword_1000194F0, &qword_100011528);
    swift_allocObject();
    v21 = sub_10000FB44();
    result = (*(v11 + 8))(v13, v10);
  }

  *a2 = v21;
  return result;
}

uint64_t sub_10000A90C(uint64_t a1, void *a2)
{
  v4 = sub_100002C04(&qword_1000194D0, &qword_100011508);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = [a2 wi_calloutTitle];
  v9 = sub_10000FCB4();
  v11 = v10;

  v12 = &v7[*(v5 + 56)];
  v13 = sub_10000FAA4();
  (*(*(v13 - 8) + 16))(v7, a1, v13);
  *v12 = v9;
  v12[1] = v11;
  sub_100002C04(&qword_1000194F0, &qword_100011528);
  swift_allocObject();
  return sub_10000FB44();
}

id sub_10000AA48(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v16 = objc_allocWithZone(v9);
  v17 = sub_10000FCA4();

  v18 = sub_10000B364(a1, a2, v17, v16);

  v19 = objc_allocWithZone(CLLocation);
  v20 = v18;
  v21 = [v19 initWithLatitude:a3 longitude:a4];
  sub_10000C114(0, &qword_1000194E8, CLPlacemark_ptr);
  v22 = v21;
  v23 = sub_10000AB7C(v22, a5, a6, 0);
  [v20 setGeolocation:v23];

  return v20;
}

id sub_10000AB7C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_10000FCA4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [swift_getObjCClassFromMetadata() placemarkWithLocation:a1 name:v6 postalAddress:a4];

  return v7;
}

id sub_10000AC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = sub_10000FCA4();
  }

  else
  {
    v4 = 0;
  }

  type metadata accessor for WeatherLocation();
  isa = sub_10000FCF4().super.isa;

  v6 = [v3 initWithTitle:v4 items:isa];

  return v6;
}

id sub_10000ACA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = sub_10000FCA4();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10000FCA4();

  v7 = [v4 initWithIdentifier:v5 displayString:v6];

  return v7;
}

uint64_t sub_10000AD3C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000AE34;

  return v6(a1);
}

uint64_t sub_10000AE34()
{
  sub_10000C4DC();
  sub_10000C528();
  v1 = *v0;
  sub_10000C430();
  *v2 = v1;

  sub_10000C5F8();

  return v3();
}

uint64_t sub_10000AF18(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_10000FE94();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_10000AF3C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_10000FA04(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_10000FA04();

    return _swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

void *sub_10000B010(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000B030(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000B030(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_100002C04(&qword_100019520, &qword_100011580);
  v10 = *(sub_10000FA04() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000FA04() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10000AF3C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10000B1E4(unint64_t a1)
{
  v3 = sub_10000AF18(a1);
  v4 = sub_10000AF18(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_10000B290(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10000BF28(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_10000B290(uint64_t a1, char a2)
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

  sub_10000FE94();
LABEL_9:
  result = sub_10000FE04();
  *v2 = result;
  return result;
}

unint64_t sub_10000B340(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

id sub_10000B364(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_10000FCA4();

  v7 = [a4 initWithIdentifier:v6 displayString:a3];

  return v7;
}

uint64_t sub_10000B3C8(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_10000FCB4();

  return v3;
}

uint64_t sub_10000B438()
{
  _Block_release(*(v0 + 16));
  v1 = sub_10000C578();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10000B470()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000B4B8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = sub_10000C558(v8);
  *v9 = v10;
  v9[1] = sub_10000B578;

  return sub_100008870(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_10000B578()
{
  sub_10000C4DC();
  sub_10000C528();
  v1 = *v0;
  sub_10000C430();
  *v2 = v1;

  sub_10000C5F8();

  return v3();
}

uint64_t sub_10000B658()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000B6B8()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_10000C578();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000B73C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B7D8(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_10000B82C()
{
  v1 = sub_10000C578();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10000B894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a1;
  v23 = a2;
  v10 = sub_10000FD94();
  v20 = *(v10 - 8);
  v21 = v10;
  __chkstk_darwin(v10);
  v19 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000FD84();
  __chkstk_darwin(v17);
  v18 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000FC74();
  __chkstk_darwin(v13 - 8);
  v14 = sub_10000FAD4();
  __chkstk_darwin(v14);
  v25[3] = sub_10000F904();
  v25[4] = &protocol witness table for AppConfigurationManager;
  v25[0] = a4;
  v24 = &_swiftEmptyArrayStorage;
  sub_10000BD24(&qword_100019170, &type metadata accessor for PromiseDeduperFlags, &protocol conformance descriptor for PromiseDeduperFlags);
  sub_100002C04(&qword_100019178, &qword_1000112D8);
  sub_10000C0B0(&qword_100019180, &qword_100019178, &qword_1000112D8, &protocol conformance descriptor for [A]);
  sub_10000FDD4();
  sub_100002C04(&qword_100019188, &qword_1000112E0);
  swift_allocObject();
  *(a6 + 72) = sub_10000FAB4();
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 96) = 0;
  *(a6 + 104) = xmmword_1000112C0;
  *(a6 + 56) = v22;
  *(a6 + 64) = &protocol witness table for LocalSearchRequestService;
  *(a6 + 120) = v23;
  *(a6 + 128) = a3;
  sub_100005634(v25, a6 + 16);
  if (!a5)
  {
    sub_10000C114(0, &qword_100019428, OS_dispatch_queue_ptr);

    sub_10000FC64();
    v24 = &_swiftEmptyArrayStorage;
    sub_10000BD24(&qword_100019430, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_100002C04(&qword_100019438, &qword_100011488);
    sub_10000C0B0(&qword_100019440, &qword_100019438, &qword_100011488, &protocol conformance descriptor for [A]);
    sub_10000FDD4();
    (*(v20 + 104))(v19, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v21);
    a5 = sub_10000FDA4();
  }

  sub_100002D74(v25);
  *(a6 + 136) = a5;
  return a6;
}

unint64_t sub_10000BCB8()
{
  result = qword_100019500;
  if (!qword_100019500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019500);
  }

  return result;
}

uint64_t sub_10000BD0C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000BD24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000BD6C()
{
  sub_10000C5CC();
  v0 = swift_task_alloc();
  v1 = sub_10000C558(v0);
  *v1 = v2;
  v3 = sub_10000C508(v1);

  return v4(v3);
}

uint64_t sub_10000BE00()
{
  sub_10000C5CC();
  v0 = swift_task_alloc();
  v1 = sub_10000C558(v0);
  *v1 = v2;
  v3 = sub_10000C508(v1);

  return v4(v3);
}

void (*sub_10000BE94(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_10000B330(a3);
  sub_10000B340(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = sub_10000FDF4();
  }

  *a1 = v7;
  return sub_10000BF20;
}

uint64_t sub_10000BF28(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_10000FE94();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_10000AF18(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for WeatherLocation();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_10000C0B0(&qword_100019518, &qword_100019510, &qword_100011578, &protocol conformance descriptor for [A]);
        for (i = 0; i != v7; ++i)
        {
          sub_100002C04(&qword_100019510, &qword_100011578);
          v9 = sub_10000BE94(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000C0B0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100002D08(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000C114(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000C154(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000C638(a1, a2, a3, a4);
  sub_10000C568();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_10000C1A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100002C04(a2, a3);
  sub_10000C568();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10000C1FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000C638(a1, a2, a3, a4);
  sub_10000C568();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t getEnumTagSinglePayload for IntentHandler.IntentHandlerError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for IntentHandler.IntentHandlerError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x10000C340);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10000C388()
{
  result = qword_100019548;
  if (!qword_100019548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019548);
  }

  return result;
}

_WORD *sub_10000C450(_WORD *result)
{
  *(v2 - 104) = v1;
  *result = 0;
  return result;
}

uint64_t sub_10000C474()
{
}

id sub_10000C4A8()
{

  return sub_10000AA48(v3, v1, v5, v6, v0, v2, v0, v2);
}

uint64_t sub_10000C540(uint64_t a1)
{
}

uint64_t sub_10000C618(__n128 a1, __n128 a2)
{
  a1.n128_u64[0] = v3;
  a2.n128_u64[0] = v4;

  return CLLocationCoordinate2D.intentIdentifier.getter(a1, a2);
}

uint64_t sub_10000C638(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100002C04(a3, a4);
}

uint64_t sub_10000C658()
{
}

uint64_t sub_10000C6A8(void *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_100004E18(a1, v5);
  __chkstk_darwin(v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = a2(v9, v2, v5, v6);
  sub_100002D74(a1);
  return v11;
}

uint64_t LocalSearchRequestService.performLocalSearch(with:calloutTitle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MKLocalSearchRequest) initWithCompletion:a1];
  sub_100002C04(&qword_100019418, &qword_100011480);
  swift_allocObject();
  v3 = sub_10000FB54();

  return v3;
}

uint64_t LocalSearchRequestService.performLocalSearch(with:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MKLocalSearchRequest) init];
  sub_10000D9F8(a1, a2, v4);
  sub_100002C04(&qword_100019418, &qword_100011480);
  swift_allocObject();
  v5 = sub_10000FB54();

  return v5;
}

void sub_10000C8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_10000D9F8(a6, a7, a5);
  v14 = [objc_allocWithZone(MKLocalSearch) initWithRequest:a5];
  v15 = swift_allocObject();
  v15[2] = a6;
  v15[3] = a7;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = a1;
  v15[7] = a2;
  v17[4] = sub_10000DC48;
  v17[5] = v15;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10000D8E4;
  v17[3] = &unk_100014F78;
  v16 = _Block_copy(v17);

  [v14 startWithCompletionHandler:v16];
  _Block_release(v16);
}

void sub_10000CA4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, void (*a7)(char *), uint64_t a8)
{
  v130 = a8;
  v131 = a7;
  v137 = a6;
  v138 = a5;
  v141 = a4;
  v135 = a1;
  v136 = a3;
  v9 = sub_100002C04(&qword_100019290, &qword_1000116D0);
  __chkstk_darwin(v9 - 8);
  v134 = &v119 - v10;
  v132 = sub_10000FAA4();
  v129 = *(v132 - 8);
  v11 = __chkstk_darwin(v132);
  v13 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v119 - v14;
  v16 = sub_100002C04(&qword_1000195F0, &unk_1000116D8);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v119 - v21;
  __chkstk_darwin(v20);
  v24 = &v119 - v23;
  v25 = sub_10000F594();
  v133 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v28 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v119 - v29;
  v31 = sub_10000FBC4();
  v32 = *(v31 - 8);
  v139 = v31;
  v140 = v32;
  v33 = __chkstk_darwin(v31);
  v34 = __chkstk_darwin(v33);
  v35 = __chkstk_darwin(v34);
  __chkstk_darwin(v35);
  v40 = &v119 - v39;
  if (a2)
  {
    swift_errorRetain();
    sub_10000FB94();
    swift_errorRetain();
    v41 = v141;

    v42 = sub_10000FBB4();
    v43 = sub_10000FD54();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v143[0] = swift_slowAlloc();
      *v44 = 141558531;
      *(v44 + 4) = 1752392040;
      *(v44 + 12) = 2085;
      *(v44 + 14) = sub_100002694(v136, v41, v143);
      *(v44 + 22) = 2082;
      v142 = a2;
      swift_errorRetain();
      sub_100002C04(&qword_100019168, &qword_1000112D0);
      v45 = sub_10000FCC4();
      v47 = sub_100002694(v45, v46, v143);

      *(v44 + 24) = v47;
      _os_log_impl(&_mh_execute_header, v42, v43, "Failed to geocode. searchString=%{sensitive,mask.hash}s, error=%{public}s", v44, 0x20u);
      swift_arrayDestroy();
    }

    (*(v140 + 8))(v40, v139);
    sub_10000DC70();
    v48 = swift_allocError();
    *v49 = a2;
    swift_errorRetain();
    (v138)(v48);

LABEL_15:

    return;
  }

  v124 = v22;
  v125 = v24;
  v126 = v28;
  v50 = v134;
  v122 = v13;
  v127 = v30;
  v128 = v25;
  v123 = v15;
  v51 = v141;
  if (!v135)
  {
LABEL_12:
    v67 = v36;
    sub_10000FB94();

    v68 = sub_10000FBB4();
    v69 = sub_10000FD54();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v143[0] = v71;
      *v70 = 141558275;
      *(v70 + 4) = 1752392040;
      *(v70 + 12) = 2085;
      *(v70 + 14) = sub_100002694(v136, v51, v143);
      sub_100002D74(v71);
    }

    (*(v140 + 8))(v67, v139);
    sub_10000DC70();
    swift_allocError();
    *v72 = 0;
    v138();
    goto LABEL_15;
  }

  v52 = v36;
  v120 = v38;
  v121 = v37;
  v53 = [v135 mapItems];
  sub_10000DCC4();
  v54 = sub_10000FD04();

  if (!sub_10000AF18(v54))
  {

    v36 = v52;
    goto LABEL_12;
  }

  sub_10000B33C();
  if ((v54 & 0xC000000000000001) != 0)
  {
    v55 = sub_10000FDF4();
  }

  else
  {
    v55 = *(v54 + 32);
  }

  v56 = v55;
  v57 = v128;
  v58 = v50;
  v59 = v126;

  v60 = [v56 placemark];
  v61 = [v60 timeZone];

  v62 = v124;
  if (v61)
  {
    sub_10000F584();

    v63 = v133;
    v64 = *(v133 + 32);
    v64(v62, v59, v57);
    sub_100003218(v62, 0, 1, v57);
    v65 = v125;
    v64(v125, v62, v57);
    sub_100003218(v65, 0, 1, v57);
    v66 = v127;
  }

  else
  {
    v73 = 1;
    sub_100003218(v124, 1, 1, v57);
    v74 = [v56 timeZone];
    if (v74)
    {
      v75 = v74;
      sub_10000F584();

      v73 = 0;
    }

    v66 = v127;
    v65 = v125;
    sub_100003218(v19, v73, 1, v57);
    sub_10000DD08(v19, v65);
    v76 = sub_10000542C(v62, 1, v57);
    v63 = v133;
    if (v76 != 1)
    {
      sub_10000DD78(v62);
    }
  }

  if (sub_10000542C(v65, 1, v57) == 1)
  {
    sub_10000DD78(v65);
    v77 = v120;
    sub_10000FB94();
    v78 = v141;

    v79 = sub_10000FBB4();
    v80 = sub_10000FD54();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v143[0] = v82;
      *v81 = 141558275;
      *(v81 + 4) = 1752392040;
      *(v81 + 12) = 2085;
      *(v81 + 14) = sub_100002694(v136, v78, v143);
      _os_log_impl(&_mh_execute_header, v79, v80, "Time zone missing while geocoding, searchString=%{sensitive,mask.hash}s.", v81, 0x16u);
      sub_100002D74(v82);
    }

    (*(v140 + 8))(v77, v139);
    sub_10000DC70();
    swift_allocError();
    *v83 = 1;
    v138();
  }

  else
  {
    (*(v63 + 32))(v66, v65, v57);
    v84 = [v56 placemark];
    [v84 coordinate];

    v137 = sub_10000FDC4();
    v138 = v85;
    v86 = [v56 wc_weatherDisplayName];
    v87 = sub_10000FCB4();
    v134 = v88;
    v135 = v87;

    (*(v63 + 16))(v59, v66, v57);
    sub_10000F5A4();
    v89 = sub_10000F574();
    sub_100003218(v58, 0, 1, v89);
    v90 = [v56 placemark];
    v91 = MKPlacemark.safeTitle.getter();
    v125 = v92;
    v126 = v91;

    v93 = [v56 placemark];
    MKPlacemark.safeSubtitle.getter();
    v124 = v94;

    v95 = [v56 wc_weatherLocationName];
    v120 = sub_10000FCB4();

    v96 = [v56 wc_weatherLocationName];
    sub_10000FCB4();

    v97 = [v56 wc_weatherDisplayName];
    sub_10000FCB4();

    sub_10000FA54();

    v98 = v123;
    sub_10000FA64();
    v99 = v121;
    sub_10000FB94();
    v100 = v129;
    v101 = v122;
    v102 = v132;
    (*(v129 + 16))(v122, v98, v132);
    v103 = v141;

    v104 = v56;
    v105 = sub_10000FBB4();
    v106 = sub_10000FD64();
    v138 = v104;

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v143[0] = swift_slowAlloc();
      *v107 = 141559299;
      v108 = v101;
      *(v107 + 4) = 1752392040;
      *(v107 + 12) = 2085;
      *(v107 + 14) = sub_100002694(v136, v103, v143);
      *(v107 + 22) = 2160;
      *(v107 + 24) = 1752392040;
      *(v107 + 32) = 2081;
      v109 = sub_10000FA84();
      v111 = v110;
      v112 = *(v100 + 8);
      v112(v108, v132);
      v113 = sub_100002694(v109, v111, v143);

      *(v107 + 34) = v113;
      *(v107 + 42) = 2160;
      *(v107 + 44) = 1752392040;
      *(v107 + 52) = 2081;
      v114 = [v138 wc_weatherLocationName];
      v115 = sub_10000FCB4();
      v117 = v116;

      v118 = sub_100002694(v115, v117, v143);

      *(v107 + 54) = v118;
      _os_log_impl(&_mh_execute_header, v105, v106, "Successfully geocoded location. searchString=%{sensitive,mask.hash}s, location=%{private,mask.hash}s, unsanitizedSecondaryName=%{private,mask.hash}s", v107, 0x3Eu);
      swift_arrayDestroy();
      v98 = v123;

      v102 = v132;
    }

    else
    {

      v112 = *(v100 + 8);
      v112(v101, v102);
    }

    (*(v140 + 8))(v99, v139);
    v131(v98);

    v112(v98, v102);
    (*(v133 + 8))(v127, v128);
  }
}

void sub_10000D8E4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t LocalSearchRequestService.__deallocating_deinit()
{
  sub_100002D74((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

void sub_10000D9F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10000FCA4();
  [a3 setNaturalLanguageQuery:v4];
}

void *sub_10000DA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v11 = sub_10000DB60(v9, v10, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v11;
}

void *sub_10000DB60(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  v7 = sub_1000055D4(a2 + 2);
  (*(*(a3 - 8) + 32))(v7, a1, a3);
  return a2;
}

uint64_t sub_10000DC00()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000DC58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000DC70()
{
  result = qword_1000195F8;
  if (!qword_1000195F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000195F8);
  }

  return result;
}

unint64_t sub_10000DCC4()
{
  result = qword_100019600;
  if (!qword_100019600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100019600);
  }

  return result;
}

uint64_t sub_10000DD08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002C04(&qword_1000195F0, &unk_1000116D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DD78(uint64_t a1)
{
  v2 = sub_100002C04(&qword_1000195F0, &unk_1000116D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000DDE0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10000DE04(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000DE58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_10000DEB4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

id WeatherIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeatherIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id WeatherIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for WeatherIntent();
  v9 = sub_10000EB90(v13, "initWithCoder:", v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WeatherIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_10000FCA4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id WeatherIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3, __n128 a4)
{
  if (a2)
  {
    v6 = sub_10000FCA4();
  }

  else
  {
    v6 = 0;
  }

  v17 = type metadata accessor for WeatherIntent();
  v13 = sub_10000EB90(v17, "initWithIdentifier:backingStore:", v7, v8, v9, v10, v11, v12, v4);
  v15 = objc_msgSendSuper2(v13, v14);

  return v15;
}

id WeatherIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000EB9C(a1, a2);

  v5 = sub_10000FCA4();

  if (v3)
  {
    v6.super.isa = sub_10000FC84().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6.super.isa];

  return v7;
}

id WeatherIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000EB9C(a1, a2);

  v5 = sub_10000FCA4();

  if (v3)
  {
    v6.super.isa = sub_10000FC84().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for WeatherIntent();
  v7 = objc_msgSendSuper2(&v9, "initWithDomain:verb:parametersByName:", v4, v5, v6.super.isa);

  return v7;
}

unint64_t WeatherIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

Swift::Int sub_10000E3DC(Swift::UInt a1)
{
  sub_10000FF14();
  sub_10000FF24(a1);
  return sub_10000FF34();
}

Swift::Int sub_10000E45C(uint64_t a1, Swift::UInt a2)
{
  sub_10000FF14();
  sub_10000FF24(a2);
  return sub_10000FF34();
}

unint64_t sub_10000E4A0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = WeatherIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t WeatherIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___WeatherIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10000E570(uint64_t a1)
{
  v3 = OBJC_IVAR___WeatherIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *WeatherIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___WeatherIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id WeatherIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___WeatherIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WeatherIntentResponse();
  return objc_msgSendSuper2(&v3, "init");
}

id WeatherLocation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id WeatherIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___WeatherIntentResponse_code) = 0;
  v13 = type metadata accessor for WeatherIntentResponse();
  v9 = sub_10000EB90(v13, "initWithCoder:", v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WeatherIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore:a1];

  return v3;
}

id WeatherIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___WeatherIntentResponse_code) = 0;
  v13 = type metadata accessor for WeatherIntentResponse();
  v9 = sub_10000EB90(v13, "initWithBackingStore:", v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WeatherIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1, __n128 a2)
{
  if (a1)
  {
    v3.super.isa = sub_10000FC84().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  v4 = [objc_allocWithZone(v2) initWithPropertiesByName:v3.super.isa];

  return v4;
}

id WeatherIntentResponse.init(propertiesByName:)(uint64_t a1, __n128 a2)
{
  *&v2[OBJC_IVAR___WeatherIntentResponse_code] = 0;
  if (a1)
  {
    v3.super.isa = sub_10000FC84().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  v6.receiver = v2;
  v6.super_class = type metadata accessor for WeatherIntentResponse();
  v4 = objc_msgSendSuper2(&v6, "initWithPropertiesByName:", v3.super.isa);

  if (v4)
  {
  }

  return v4;
}

id sub_10000EA94(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10000EAD0()
{
  result = qword_100019610;
  if (!qword_100019610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019610);
  }

  return result;
}

uint64_t sub_10000EB24@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherIntentResponse.code.getter();
  *a1 = result;
  return result;
}

NSString sub_10000EB9C(uint64_t a1, uint64_t a2)
{

  return sub_10000FCA4();
}

id WeatherLocation.__allocating_init(identifier:display:pronunciationHint:)()
{
  sub_10000F500();
  if (v2)
  {
    v3 = sub_10000FCA4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_10000FCA4();

  if (v1)
  {
    v5 = sub_10000FCA4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id WeatherLocation.init(identifier:display:pronunciationHint:)()
{
  sub_10000F500();
  if (v2)
  {
    v3 = sub_10000FCA4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_10000FCA4();

  if (v1)
  {
    v5 = sub_10000FCA4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for WeatherLocation();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:displayString:pronunciationHint:", v3, v4, v5);

  return v6;
}

id WeatherLocation.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WeatherLocation();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id static WeatherLocationResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___WeatherLocationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "successWithResolvedObject:", a1);

  return v2;
}

id static WeatherLocationResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_10000F074();

    sub_10000FE84();
  }

  else
  {

    sub_10000FEC4();
    sub_10000F074();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_10000F074();
  isa = sub_10000FCF4().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___WeatherLocationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", isa);

  return v3;
}

unint64_t sub_10000F074()
{
  result = qword_100019690;
  if (!qword_100019690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100019690);
  }

  return result;
}

id static WeatherLocationResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___WeatherLocationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "confirmationRequiredWithObjectToConfirm:", a1);

  return v2;
}

id WeatherLocationResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = sub_10000FC84().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id WeatherLocationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2, __n128 a3)
{
  isa = sub_10000FC84().super.isa;

  v8.receiver = v3;
  v8.super_class = type metadata accessor for WeatherLocationResolutionResult();
  v6 = objc_msgSendSuper2(&v8, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v6)
  {
  }

  return v6;
}

id sub_10000F4A0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000F4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return _assertionFailure(_:_:file:line:flags:)(a1, 11, 2, 0, 0xE000000000000000, a6, 36, 2);
}