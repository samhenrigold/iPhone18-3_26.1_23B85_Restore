uint64_t sub_1000018D8@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v41 = sub_100002120(&qword_100020688, &qword_100014208);
  __chkstk_darwin(v41);
  v40 = &v31 - v1;
  v34 = sub_100002120(&qword_100020690, &qword_100014210);
  v39 = *(v34 - 8);
  __chkstk_darwin(v34);
  v3 = &v31 - v2;
  v4 = sub_100002120(&qword_100020698, &qword_100014218);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = __chkstk_darwin(v4);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v44 = &v31 - v7;
  v8 = sub_100002120(&qword_1000206A0, &qword_100014220);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - v10;
  v35 = sub_100002120(&qword_1000206A8, &qword_100014228);
  v33 = *(v35 - 8);
  v12 = v33;
  v13 = __chkstk_darwin(v35);
  v43 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v31 - v15;
  sub_100002120(&qword_1000206B0, &qword_100014230);
  sub_100002168();
  WindowGroup.init(id:title:lazyContent:)();
  sub_100002440(&qword_100020700, &qword_1000206A0, &qword_100014220, &protocol conformance descriptor for WindowGroup<A>);
  v17 = v16;
  v32 = v16;
  Scene.extendedLaunchTestName(_:)();
  (*(v9 + 8))(v11, v8);
  AssistiveAccess.init(content:)();
  sub_100002440(&qword_100020708, &qword_100020690, &qword_100014210, &protocol conformance descriptor for AssistiveAccess<A>);
  v18 = v44;
  v19 = v34;
  Scene.extendedLaunchTestName(_:)();
  (*(v39 + 8))(v3, v19);
  v20 = *(v12 + 16);
  v21 = v43;
  v22 = v35;
  v20(v43, v17, v35);
  v24 = v36;
  v23 = v37;
  v25 = *(v37 + 16);
  v26 = v38;
  v25(v36, v18, v38);
  v27 = v40;
  v20(v40, v21, v22);
  v25(&v27[*(v41 + 48)], v24, v26);
  _TupleScene.init(_:)();
  v28 = *(v23 + 8);
  v28(v44, v26);
  v29 = *(v33 + 8);
  v29(v32, v22);
  v28(v24, v26);
  return (v29)(v43, v22);
}

uint64_t sub_100001E70(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_100001F38@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for PhotoLibraryView(0);
  sub_10000234C();
  NavigationStack.init<>(root:)();
  KeyPath = swift_getKeyPath();
  v4 = (a2 + *(sub_100002120(&qword_1000206C8, &qword_100014238) + 36));
  v5 = *(sub_100002120(&qword_1000206E8, &qword_100014248) + 28);
  v6 = enum case for ColorScheme.dark(_:);
  v7 = type metadata accessor for ColorScheme();
  (*(*(v7 - 8) + 104))(v4 + v5, v6, v7);
  *v4 = KeyPath;
  v8 = static Color.black.getter();
  v9 = swift_getKeyPath();
  result = sub_100002120(&qword_1000206B0, &qword_100014230);
  v11 = (a2 + *(result + 36));
  *v11 = v9;
  v11[1] = v8;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000020A0();
  static App.main()();
  return 0;
}

unint64_t sub_1000020A0()
{
  result = qword_100020680;
  if (!qword_100020680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020680);
  }

  return result;
}

uint64_t sub_100002120(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002168()
{
  result = qword_1000206B8;
  if (!qword_1000206B8)
  {
    sub_100002220(&qword_1000206B0, &qword_100014230);
    sub_100002268();
    sub_100002440(&qword_1000206F0, &qword_1000206F8, &qword_100014250, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206B8);
  }

  return result;
}

uint64_t sub_100002220(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002268()
{
  result = qword_1000206C0;
  if (!qword_1000206C0)
  {
    sub_100002220(&qword_1000206C8, &qword_100014238);
    sub_100002440(&qword_1000206D0, &qword_1000206D8, &qword_100014240, &protocol conformance descriptor for NavigationStack<A, B>);
    sub_100002440(&qword_1000206E0, &qword_1000206E8, &qword_100014248, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206C0);
  }

  return result;
}

unint64_t sub_10000234C()
{
  result = qword_100020710;
  if (!qword_100020710)
  {
    type metadata accessor for PhotoLibraryView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020710);
  }

  return result;
}

uint64_t sub_1000023A4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100002440(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100002220(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static UIInterfaceOrientation.window.getter()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_100002B30(0, &qword_1000207E0, UIScene_ptr);
  sub_100002994();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  if (v3 >= 2)
  {
    if (qword_1000207C0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100002A18(v4, qword_100021C90);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v34[0] = v8;
      *v7 = 136315138;
      v9 = Set.description.getter();
      v11 = sub_100002B78(v9, v10, v34);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unexpectedly had multiple scenes: %s", v7, 0xCu);
      sub_100003120(v8);
    }
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v13 = v34[0];
    v12 = v34[1];
    v14 = v34[2];
    v15 = v34[3];
    v16 = v34[4];
  }

  else
  {
    v17 = -1 << *(v2 + 32);
    v12 = v2 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v2 + 56);

    v15 = 0;
    v13 = v2;
  }

  v20 = (v14 + 64) >> 6;
  if (v13 < 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  v21 = v15;
  v22 = v16;
  v23 = v15;
  if (!v16)
  {
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v20)
      {
        goto LABEL_28;
      }

      v22 = *(v12 + 8 * v23);
      ++v21;
      if (v22)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_38:
    swift_once();
    goto LABEL_30;
  }

LABEL_21:
  v24 = (v22 - 1) & v22;
  v25 = *(*(v13 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
  if (v25)
  {
    while (1)
    {
      sub_100002B30(0, &qword_1000207F0, UIWindowScene_ptr);
      if ([v25 isKindOfClass:swift_getObjCClassFromMetadata()])
      {
        break;
      }

      v15 = v23;
      v16 = v24;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_23:
      if (__CocoaSet.Iterator.next()())
      {
        swift_dynamicCast();
        v25 = v33;
        v23 = v15;
        v24 = v16;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_28;
    }

    sub_1000029FC(v13);

    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (v31)
    {
      v32 = [v31 effectiveGeometry];
      v29 = [v32 interfaceOrientation];

      goto LABEL_33;
    }
  }

  else
  {
LABEL_28:
    sub_1000029FC(v13);
  }

  if (qword_1000207C0 != -1)
  {
    goto LABEL_38;
  }

LABEL_30:
  v26 = type metadata accessor for Logger();
  sub_100002A18(v26, qword_100021C90);
  v25 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v25, v27, "Unexpectedly had no window scene.", v28, 2u);
  }

  v29 = 1;
LABEL_33:

  return v29;
}

unint64_t sub_100002994()
{
  result = qword_1000207E8;
  if (!qword_1000207E8)
  {
    sub_100002B30(255, &qword_1000207E0, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207E8);
  }

  return result;
}

uint64_t static UIInterfaceOrientation.fromDeviceOrientation(_:)(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100002A18(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t variable initialization expression of PhotoLibraryView._finishedLaunching@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100002120(&qword_1000207F8, &qword_100014EF0);

  return swift_storeEnumTagMultiPayload();
}

BOOL variable initialization expression of PhotoLibraryView.isPad()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 == 1;
}

uint64_t sub_100002B30(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_100002B78(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002C44(v11, 0, 0, 1, a1, a2);
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
    sub_1000031D8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003120(v11);
  return v7;
}

unint64_t sub_100002C44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002D50(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_100002D50(uint64_t a1, unint64_t a2)
{
  v3 = sub_100002D9C(a1, a2);
  sub_100002ECC(&off_10001D590);
  return v3;
}

char *sub_100002D9C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002FB8(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100002FB8(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_100002ECC(uint64_t result)
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

  result = sub_10000302C(result, v11, 1, v3);
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

void *sub_100002FB8(uint64_t a1, uint64_t a2)
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

  sub_100002120(&qword_100020808, &qword_100014350);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000302C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002120(&qword_100020808, &qword_100014350);
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

uint64_t sub_100003120(void *a1)
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

__n128 sub_10000316C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000317C(uint64_t a1, int a2)
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

uint64_t sub_10000319C(uint64_t result, int a2, int a3)
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

uint64_t sub_1000031D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10000324C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

__n128 sub_1000032AC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000032C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100003308(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_100003378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_100002120(&qword_100020820, &qword_100014448);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  type metadata accessor for PlayerViewModel();
  sub_10000375C();
  a3 &= 1u;
  v11 = *(StateObject.wrappedValue.getter() + 16);

  VideoPlayer<>.init(player:)();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  v13 = &v10[*(sub_100002120(&qword_100020830, &qword_100014450) + 36)];
  *v13 = sub_1000037C0;
  v13[1] = v12;
  v13[2] = 0;
  v13[3] = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  v15 = &v10[*(sub_100002120(&qword_100020838, &qword_100014458) + 36)];
  *v15 = 0;
  *(v15 + 1) = 0;
  *(v15 + 2) = sub_100003824;
  *(v15 + 3) = v14;
  v10[*(v8 + 36)] = 1;
  sub_10000384C(a1, a2);
  sub_10000384C(a1, a2);
  sub_100003854();
  View.accessibilityIdentifier(_:)();
  sub_100003A78(v10);
  v16 = *(StateObject.wrappedValue.getter() + 24);

  v17 = *(StateObject.wrappedValue.getter() + 32);

  v18 = a4 + *(sub_100002120(&qword_100020870, &qword_100014468) + 36);
  *v18 = v16 / v17;
  *(v18 + 8) = 0;
  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = 1;
  result = sub_100002120(&qword_100020878, &qword_1000144A0);
  v22 = (a4 + *(result + 36));
  *v22 = KeyPath;
  v22[1] = sub_100003B48;
  v22[2] = v20;
  return result;
}

uint64_t sub_100003644(uint64_t a1, uint64_t a2, char a3, SEL *a4)
{
  type metadata accessor for PlayerViewModel();
  sub_10000375C();
  [*(StateObject.wrappedValue.getter() + 16) *a4];
}

uint64_t sub_1000036F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = sub_100002120(&qword_100020818, &qword_100014440);
  return sub_100003378(v3, v4, v5, a1 + *(v6 + 44));
}

unint64_t sub_10000375C()
{
  result = qword_100020828;
  if (!qword_100020828)
  {
    type metadata accessor for PlayerViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020828);
  }

  return result;
}

uint64_t sub_1000037E8()
{
  sub_1000037B8(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 33, 7);
}

unint64_t sub_100003854()
{
  result = qword_100020840;
  if (!qword_100020840)
  {
    sub_100002220(&qword_100020820, &qword_100014448);
    sub_1000038E0();
    sub_100003A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020840);
  }

  return result;
}

unint64_t sub_1000038E0()
{
  result = qword_100020848;
  if (!qword_100020848)
  {
    sub_100002220(&qword_100020838, &qword_100014458);
    sub_10000396C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020848);
  }

  return result;
}

unint64_t sub_10000396C()
{
  result = qword_100020850;
  if (!qword_100020850)
  {
    sub_100002220(&qword_100020830, &qword_100014450);
    sub_100002440(&qword_100020858, &qword_100020860, &qword_100014460, &protocol conformance descriptor for VideoPlayer<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020850);
  }

  return result;
}

unint64_t sub_100003A24()
{
  result = qword_100020868;
  if (!qword_100020868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020868);
  }

  return result;
}

uint64_t sub_100003A78(uint64_t a1)
{
  v2 = sub_100002120(&qword_100020820, &qword_100014448);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003AE0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100003BBC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RoundedRectangle();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_100003C7C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RoundedRectangle();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PhotoViewInternal(uint64_t a1)
{
  result = qword_1000208E8;
  if (!qword_1000208E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100003D6C(uint64_t a1)
{
  sub_100003E68(319, &qword_1000208F8, &qword_100020900, &qword_1000144D8);
  if (v1 <= 0x3F)
  {
    sub_100003E68(319, &qword_100020908, &qword_100020910, qword_1000144E0);
    if (v2 <= 0x3F)
    {
      sub_100003EBC();
      if (v3 <= 0x3F)
      {
        type metadata accessor for RoundedRectangle();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100003E68(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100002220(a3, a4);
    v5 = type metadata accessor for State();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100003EBC()
{
  if (!qword_100020918)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100020918);
    }
  }
}

uint64_t sub_100003F28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100002120(&qword_100020958, &qword_100014538);
  __chkstk_darwin(v4);
  v6 = &v35 - v5;
  v7 = type metadata accessor for PhotoViewInternal(0);
  v8 = *(v7 - 8);
  v45 = v7;
  v46 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_100002120(&qword_100020960, &qword_100014540);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v61 = *(v1 + 16);
  sub_100002120(&qword_100020968, &qword_100014548);
  State.wrappedValue.getter();
  v13 = *&v58[0];
  if (*&v58[0])
  {
    v40 = v10;
    v43 = *&v58[0];
    v44 = a1;
    v37 = static Color.clear.getter();
    v14 = static Alignment.center.getter();
    v41 = v6;
    v42 = v4;
    v35 = v14;
    v16 = v15;
    v17 = static Alignment.center.getter();
    v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = v18;
    sub_100004500(v13, v2, &v61);
    v52 = v63;
    v53 = v64;
    v54 = v65;
    v55 = v66;
    v50 = v61;
    v51 = v62;
    v57 = v66;
    v56[2] = v63;
    v56[3] = v64;
    v56[4] = v65;
    v56[0] = v61;
    v56[1] = v62;
    v38 = v9;
    v36 = v2;
    sub_10000554C(&v50, v58, &qword_100020A08, &qword_100014598);
    sub_1000055B4(v56, &qword_100020A08, &qword_100014598);
    v64 = v52;
    v65 = v53;
    v66 = v54;
    v62 = v50;
    v63 = v51;
    *&v58[0] = v17;
    *(&v58[0] + 1) = v19;
    v58[1] = v50;
    v58[2] = v51;
    v58[4] = v53;
    v58[5] = v54;
    v58[3] = v52;
    *&v59 = v55;
    *(&v59 + 1) = v35;
    v60 = v16;
    v49 = 0;
    *&v48[54] = v52;
    *&v48[38] = v51;
    *&v48[22] = v50;
    *&v48[6] = v58[0];
    *&v48[118] = v16;
    *&v48[102] = v59;
    *&v48[86] = v54;
    *&v48[70] = v53;
    *&v61 = v17;
    *(&v61 + 1) = v19;
    v67 = v55;
    v68 = v35;
    v69 = v16;
    sub_10000554C(v58, &v47, &qword_1000209C8, &qword_100014578);
    sub_1000055B4(&v61, &qword_1000209C8, &qword_100014578);
    LOBYTE(v16) = v49;
    v20 = *(v45 + 36);
    v21 = &v12[*(sub_100002120(&qword_100020998, &qword_100014560) + 36)];
    v22 = v36;
    sub_10000542C(v36 + v20, v21, &type metadata accessor for RoundedRectangle);
    *(v21 + *(sub_100002120(&qword_1000209D8, &qword_100014580) + 36)) = 256;
    v23 = *&v48[48];
    *(v12 + 82) = *&v48[64];
    v24 = *&v48[96];
    *(v12 + 98) = *&v48[80];
    *(v12 + 114) = v24;
    *(v12 + 8) = *&v48[110];
    *(v12 + 18) = *v48;
    v25 = *&v48[32];
    *(v12 + 34) = *&v48[16];
    *(v12 + 50) = v25;
    *v12 = v37;
    *(v12 + 1) = 0x3FF0000000000000;
    v12[16] = v16;
    v12[17] = 0;
    *(v12 + 66) = v23;
    v26 = &v12[*(sub_100002120(&qword_100020988, &qword_100014558) + 36)];
    sub_10000542C(v22 + v20, v26, &type metadata accessor for RoundedRectangle);
    *(v26 + *(sub_100002120(&qword_1000209E8, &qword_100014588) + 36)) = 0;
    v27 = v39;
    sub_10000542C(v22, v39, type metadata accessor for PhotoViewInternal);
    v28 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v29 = swift_allocObject();
    sub_100004F58(v27, v29 + v28);
    v30 = v41;
    v31 = &v12[*(v40 + 36)];
    *v31 = 0;
    *(v31 + 1) = 0;
    *(v31 + 2) = sub_100005494;
    *(v31 + 3) = v29;
    sub_10000554C(v12, v30, &qword_100020960, &qword_100014540);
    swift_storeEnumTagMultiPayload();
    sub_100002120(&qword_100020970, &qword_100014550);
    sub_10000503C();
    sub_100005374();
    _ConditionalContent<>.init(storage:)();

    return sub_1000055B4(v12, &qword_100020960, &qword_100014540);
  }

  else
  {
    sub_10000542C(v2, &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotoViewInternal);
    v33 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v34 = swift_allocObject();
    sub_100004F58(&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33);
    *v6 = sub_100004FBC;
    *(v6 + 1) = v34;
    *(v6 + 2) = 0x3FF0000000000000;
    *(v6 + 12) = 0;
    swift_storeEnumTagMultiPayload();
    sub_100002120(&qword_100020970, &qword_100014550);
    sub_10000503C();
    sub_100005374();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100004500@<X0>(void *a1@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a1;
  Image.init(uiImage:)();
  (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
  v11 = Image.resizable(capInsets:resizingMode:)();

  (*(v7 + 8))(v9, v6);
  v12 = Image.init(systemName:)();
  v13 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v15 = static Color.black.getter();
  v16 = [*a2 mediaType];
  v24 = 1;
  v17 = 1.0;
  if (v16 != 2)
  {
    v17 = 0.0;
  }

  *&v25 = v12;
  *(&v25 + 1) = KeyPath;
  *&v26 = v13;
  *(&v26 + 1) = v15;
  v27 = 0x402C000000000000;
  v28 = 0;
  *&v29 = 0;
  *(&v29 + 1) = v17;
  *&v23[6] = v25;
  *&v23[22] = v26;
  *&v23[38] = 0x402C000000000000uLL;
  *&v23[54] = v29;
  *a3 = v11;
  *(a3 + 8) = 0;
  *(a3 + 16) = 257;
  v18 = *&v23[16];
  *(a3 + 18) = *v23;
  v19 = *&v23[32];
  v20 = *&v23[48];
  *(a3 + 80) = *&v23[62];
  *(a3 + 66) = v20;
  *(a3 + 50) = v19;
  *(a3 + 34) = v18;
  v30[0] = v12;
  v30[1] = KeyPath;
  v30[2] = v13;
  v30[3] = v15;
  v30[5] = 0;
  v30[6] = 0;
  v30[4] = 0x402C000000000000;
  *&v30[7] = v17;

  sub_10000554C(&v25, v22, &qword_100020A18, &qword_1000145D8);
  sub_1000055B4(v30, &qword_100020A18, &qword_1000145D8);
}

uint64_t sub_10000476C(uint64_t a1)
{
  sub_100002120(&qword_100020968, &qword_100014548);
  State.wrappedValue.setter();
  sub_100002120(&qword_100020A10, &qword_1000145A0);
  State.wrappedValue.getter();
  v1 = [objc_opt_self() defaultManager];
  [v1 cancelImageRequest:0];

  return State.wrappedValue.setter();
}

uint64_t sub_10000487C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PhotoViewInternal(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  ProgressView<>.init<>()();
  sub_10000542C(a2, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotoViewInternal);
  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = (v12 + *(v7 + 80) + v13) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_100004F58(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  (*(v7 + 32))(v15 + v14, v9, v6);
  result = sub_100002120(&qword_100020A20, &qword_1000145E0);
  v17 = (a3 + *(result + 36));
  *v17 = sub_1000057B4;
  v17[1] = v15;
  v17[2] = 0;
  v17[3] = 0;
  return result;
}

uint64_t sub_100004A8C(double *a1)
{
  v2 = type metadata accessor for PhotoViewInternal(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultManager];
  v34 = *a1;
  GeometryProxy.size.getter();
  v12 = v11;
  v13 = *(a1 + 6);
  if (*(a1 + 56) == 1)
  {
    v14 = a1[6];
    GeometryProxy.size.getter();
    v16 = v15;
    v17 = *&v13;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v32 = v3;
    v18 = static Log.runtimeIssuesLog.getter();
    v33 = v10;
    v19 = v18;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v20 = sub_100004F4C(v13, 0);
    v21 = *(v7 + 8);
    v21(v9, v6, v20);
    v17 = *&aBlock;
    GeometryProxy.size.getter();
    v16 = v22;

    static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v10 = v33;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v24 = sub_100004F4C(v13, 0);
    v21(v9, v6, v24);
    v3 = v32;
    v14 = *&aBlock;
  }

  v25 = [objc_allocWithZone(PHImageRequestOptions) init];
  [v25 setDeliveryMode:0];
  [v25 setNetworkAccessAllowed:1];
  [v25 setAllowSecondaryDegradedImage:1];
  sub_10000542C(a1, &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotoViewInternal);
  v26 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v27 = swift_allocObject();
  sub_100004F58(v5, v27 + v26);
  v41 = sub_10000599C;
  v42 = v27;
  *&aBlock = COERCE_DOUBLE(_NSConcreteStackBlock);
  v38 = 1107296256;
  v39 = sub_1000089B8;
  v40 = &unk_10001D850;
  v28 = _Block_copy(&aBlock);

  LODWORD(v27) = [v10 requestImageForAsset:*&v34 targetSize:1 contentMode:v25 options:v28 resultHandler:{v12 * v17, v16 * v14}];
  _Block_release(v28);

  v29 = *(a1 + 36);
  v30 = *(a1 + 5);
  LODWORD(aBlock) = *(a1 + 8);
  BYTE4(aBlock) = v29;
  v38 = v30;
  v35 = v27;
  v36 = 0;
  sub_100002120(&qword_100020A10, &qword_1000145A0);
  return State.wrappedValue.setter();
}

void *sub_100004EE4(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    sub_100002120(&qword_100020968, &qword_100014548);
    return State.wrappedValue.setter();
  }

  return result;
}

double sub_100004F4C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100004F58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoViewInternal(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PhotoViewInternal(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000487C(a1, v6, a2);
}

unint64_t sub_10000503C()
{
  result = qword_100020978;
  if (!qword_100020978)
  {
    sub_100002220(&qword_100020960, &qword_100014540);
    sub_1000050C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020978);
  }

  return result;
}

unint64_t sub_1000050C8()
{
  result = qword_100020980;
  if (!qword_100020980)
  {
    sub_100002220(&qword_100020988, &qword_100014558);
    sub_100005180();
    sub_100002440(&qword_1000209E0, &qword_1000209E8, &qword_100014588, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020980);
  }

  return result;
}

unint64_t sub_100005180()
{
  result = qword_100020990;
  if (!qword_100020990)
  {
    sub_100002220(&qword_100020998, &qword_100014560);
    sub_100005238();
    sub_100002440(&qword_1000209D0, &qword_1000209D8, &qword_100014580, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020990);
  }

  return result;
}

unint64_t sub_100005238()
{
  result = qword_1000209A0;
  if (!qword_1000209A0)
  {
    sub_100002220(&qword_1000209A8, &qword_100014568);
    sub_1000052F0();
    sub_100002440(&qword_1000209C0, &qword_1000209C8, &qword_100014578, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000209A0);
  }

  return result;
}

unint64_t sub_1000052F0()
{
  result = qword_1000209B0;
  if (!qword_1000209B0)
  {
    sub_100002220(&qword_1000209B8, &qword_100014570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000209B0);
  }

  return result;
}

unint64_t sub_100005374()
{
  result = qword_1000209F0;
  if (!qword_1000209F0)
  {
    sub_100002220(&qword_100020970, &qword_100014550);
    sub_100002440(&qword_1000209F8, &qword_100020A00, &qword_100014590, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000209F0);
  }

  return result;
}

uint64_t sub_10000542C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100005494()
{
  v1 = *(type metadata accessor for PhotoViewInternal(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10000476C(v2);
}

uint64_t sub_1000054F4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000554C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002120(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000055B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002120(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100005614()
{
  v1 = (type metadata accessor for PhotoViewInternal(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = v0 + v3;

  sub_100004F4C(*(v11 + 48), *(v11 + 56));
  v12 = v1[11];
  v13 = v12 + *(type metadata accessor for RoundedRectangle() + 20);
  v14 = type metadata accessor for RoundedCornerStyle();
  (*(*(v14 - 8) + 8))(v11 + v13, v14);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_1000057B4()
{
  v1 = *(type metadata accessor for PhotoViewInternal(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  type metadata accessor for GeometryProxy();

  return sub_100004A8C((v0 + v2));
}

uint64_t sub_100005880()
{
  v1 = (type metadata accessor for PhotoViewInternal(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  sub_100004F4C(*(v0 + v3 + 48), *(v0 + v3 + 56));
  v5 = v1[11];
  v6 = v5 + *(type metadata accessor for RoundedRectangle() + 20);
  v7 = type metadata accessor for RoundedCornerStyle();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void *sub_10000599C(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PhotoViewInternal(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100004EE4(a1, a2, v6);
}

uint64_t sub_100005A1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100005A38()
{
  result = qword_100020A28;
  if (!qword_100020A28)
  {
    sub_100002220(&qword_100020A30, &qword_1000145E8);
    sub_10000503C();
    sub_100005374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020A28);
  }

  return result;
}

__n128 sub_100005AD8(uint64_t a1, uint64_t a2)
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

uint64_t sub_100005AF4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_100005B3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100005C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_100005CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_100005D1C(uint64_t a1)
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100005D5C(uint64_t a1)
{
  v2 = sub_100002120(&qword_100020A70, &qword_100014710);
  __chkstk_darwin(v2);
  v4 = &v14[-v3 - 8];
  v5 = sub_100002120(&qword_100020A78, &qword_100014718);
  __chkstk_darwin(v5);
  v7 = &v14[-v6 - 8];
  v21 = *a1;
  if ([v21 mediaType] == 2)
  {
    sub_10000609C();
    sub_10000554C(v7, v4, &qword_100020A78, &qword_100014718);
    swift_storeEnumTagMultiPayload();
    sub_100002120(&qword_100020A80, &qword_100014720);
    sub_100007CBC();
    sub_100002440(&qword_100020AB8, &qword_100020A80, &qword_100014720, &protocol conformance descriptor for GeometryReader<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_1000055B4(v7, &qword_100020A78, &qword_100014718);
  }

  else
  {
    v9 = *(a1 + 8);
    v19 = *(a1 + 16);
    v20 = v9;
    v10 = *(a1 + 24);
    v17 = *(a1 + 32);
    v18 = v10;
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v11 = swift_allocObject();
    v12 = *(a1 + 16);
    *(v11 + 16) = *a1;
    *(v11 + 32) = v12;
    *(v11 + 48) = *(a1 + 32);
    *(v11 + 64) = *(a1 + 48);
    *v4 = sub_100007CB4;
    v4[1] = v11;
    swift_storeEnumTagMultiPayload();
    sub_100007C58(&v21, v14);
    sub_10000554C(&v20, v14, &qword_100020900, &qword_1000144D8);
    sub_10000554C(&v19, v14, &qword_100020A40, &qword_1000146F0);
    sub_10000554C(&v18, v14, &qword_100020A48, &qword_100015050);
    sub_10000554C(&v17, v14, &qword_100020A50, &qword_1000146F8);
    sub_10000554C(&v15, v14, &qword_100020A58, &qword_100014700);
    sub_100002120(&qword_100020A80, &qword_100014720);
    sub_100007CBC();
    sub_100002440(&qword_100020AB8, &qword_100020A80, &qword_100014720, &protocol conformance descriptor for GeometryReader<A>);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10000609C()
{
  v1 = v0;
  v2 = sub_100002120(&qword_100020AC0, &qword_100014738);
  __chkstk_darwin(v2);
  v4 = (&v21[-1] - v3);
  v5 = sub_100002120(&qword_100020A98, &qword_100014728);
  __chkstk_darwin(v5);
  v7 = (&v21[-1] - v6);
  v8 = v0[3];
  v9 = v0[4];
  v22 = v8;
  v23 = v9;
  sub_100002120(&qword_100020AC8, &qword_100014740);
  State.wrappedValue.getter();
  v10 = v21[0];
  if (v21[0])
  {
    *v7 = static Alignment.bottom.getter();
    v7[1] = v11;
    v12 = v7 + *(sub_100002120(&qword_100020AD0, &qword_100014748) + 44);
    v13 = *(v10 + 24);
    v14 = *(v10 + 32);
    v15 = *(sub_100002120(&qword_100020AD8, &qword_100014750) + 36);

    sub_10000A634(&v12[v15], v13, v14);
    *v12 = sub_100007E5C;
    *(v12 + 1) = v10;
    v12[16] = 0;
    sub_10000554C(v7, v4, &qword_100020A98, &qword_100014728);
    swift_storeEnumTagMultiPayload();
    sub_100002120(&qword_100020AA8, &qword_100014730);
    sub_100002440(&qword_100020A90, &qword_100020A98, &qword_100014728, &protocol conformance descriptor for ZStack<A>);
    sub_100007D74();
    _ConditionalContent<>.init(storage:)();

    return sub_1000055B4(v7, &qword_100020A98, &qword_100014728);
  }

  else
  {
    v17 = *v1;
    v25 = v1[1];
    v26 = v17;
    v24 = v1[2];
    v27 = v8;
    v28 = v9;
    v22 = v1[5];
    LOBYTE(v23) = *(v1 + 48);
    v18 = swift_allocObject();
    v19 = *(v1 + 1);
    *(v18 + 16) = *v1;
    *(v18 + 32) = v19;
    *(v18 + 48) = *(v1 + 2);
    *(v18 + 64) = *(v1 + 48);
    *v4 = sub_100007E54;
    v4[1] = v18;
    v4[2] = 0;
    v4[3] = 0;
    swift_storeEnumTagMultiPayload();
    sub_100007C58(&v26, v21);
    sub_10000554C(&v25, v21, &qword_100020900, &qword_1000144D8);
    sub_10000554C(&v24, v21, &qword_100020A40, &qword_1000146F0);
    sub_10000554C(&v27, v21, &qword_100020A48, &qword_100015050);
    sub_10000554C(&v28, v21, &qword_100020A50, &qword_1000146F8);
    sub_10000554C(&v22, v21, &qword_100020A58, &qword_100014700);
    sub_100002120(&qword_100020AA8, &qword_100014730);
    sub_100002440(&qword_100020A90, &qword_100020A98, &qword_100014728, &protocol conformance descriptor for ZStack<A>);
    sub_100007D74();
    return _ConditionalContent<>.init(storage:)();
  }
}

void sub_100006468(uint64_t *a1)
{
  if (qword_1000207C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002A18(v2, qword_100021C90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requesting asset for video", v5, 2u);
  }

  v6 = [objc_allocWithZone(PHVideoRequestOptions) init];
  [v6 setNetworkAccessAllowed:1];
  v7 = [objc_opt_self() defaultManager];
  v8 = *a1;
  v22 = a1[1];
  v23 = v8;
  v9 = a1[2];
  v20 = a1[3];
  v21 = v9;
  v10 = a1[5];
  v19 = a1[4];
  v17 = v10;
  v18 = *(a1 + 48);
  v11 = swift_allocObject();
  v12 = *(a1 + 1);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a1 + 2);
  *(v11 + 64) = *(a1 + 48);
  aBlock[4] = sub_100007E64;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000089B8;
  aBlock[3] = &unk_10001D9A0;
  v13 = _Block_copy(aBlock);
  v14 = v6;
  sub_100007C58(&v23, v15);
  sub_10000554C(&v22, v15, &qword_100020900, &qword_1000144D8);
  sub_10000554C(&v21, v15, &qword_100020A40, &qword_1000146F0);
  sub_10000554C(&v20, v15, &qword_100020A48, &qword_100015050);
  sub_10000554C(&v19, v15, &qword_100020A50, &qword_1000146F8);
  sub_10000554C(&v17, v15, &qword_100020A58, &qword_100014700);

  [v7 requestPlayerItemForVideo:v8 options:v14 resultHandler:v13];
  _Block_release(v13);
}

void sub_100006734(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = qword_1000207C0;
    v5 = a1;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100002A18(v6, qword_100021C90);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Got player item", v9, 2u);
    }

    v10 = *a3;
    v11 = v5;
    v12 = [v10 pixelWidth];
    v13 = [v10 pixelHeight];
    type metadata accessor for PlayerViewModel();
    v14 = swift_allocObject();
    v15 = [objc_allocWithZone(AVPlayer) initWithPlayerItem:v11];

    *(v14 + 16) = v15;
    *(v14 + 24) = v12;
    *(v14 + 32) = v13;
    v16 = *(a3 + 32);
    v36[0] = *(a3 + 24);
    v40 = v14;
    v41 = v16;
    v32 = v36[0];
    v33 = v16;
    sub_10000554C(v36, &v39, &qword_100020A48, &qword_100015050);
    sub_10000554C(&v41, &v39, &qword_100020A50, &qword_1000146F8);
    sub_100002120(&qword_100020AC8, &qword_100014740);
    State.wrappedValue.setter();

    sub_1000055B4(v36, &qword_100020A48, &qword_100015050);
    sub_1000055B4(&v41, &qword_100020A50, &qword_1000146F8);
  }

  else
  {
    if (qword_1000207C0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100002A18(v18, qword_100021C90);
    v19 = *a3;
    v40 = *(a3 + 8);
    v41 = v19;
    v20 = *(a3 + 16);
    v38 = *(a3 + 24);
    v39 = v20;
    v21 = *(a3 + 40);
    v37 = *(a3 + 32);
    v32 = v21;
    LOBYTE(v33) = *(a3 + 48);
    sub_100007C58(&v41, v36);
    sub_10000554C(&v40, v36, &qword_100020900, &qword_1000144D8);
    sub_10000554C(&v39, v36, &qword_100020A40, &qword_1000146F0);
    sub_10000554C(&v38, v36, &qword_100020A48, &qword_100015050);
    sub_10000554C(&v37, v36, &qword_100020A50, &qword_1000146F8);
    sub_10000554C(&v32, v36, &qword_100020A58, &qword_100014700);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    sub_100007E84(&v41);
    sub_1000055B4(&v40, &qword_100020900, &qword_1000144D8);
    v24 = v23;
    sub_1000055B4(&v39, &qword_100020A40, &qword_1000146F0);
    sub_1000055B4(&v38, &qword_100020A48, &qword_100015050);
    sub_1000055B4(&v37, &qword_100020A50, &qword_1000146F8);
    sub_1000055B4(&v32, &qword_100020A58, &qword_100014700);

    if (os_log_type_enabled(v22, v23))
    {
      v25 = v41;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = a2;
      v36[0] = v28;
      *v26 = 138412546;
      *(v26 + 4) = v25;
      *v27 = v25;
      *(v26 + 12) = 2080;
      sub_100007C58(&v41, v34);

      sub_100002120(&qword_100020AE0, &qword_100014758);
      v29 = String.init<A>(describing:)();
      v31 = sub_100002B78(v29, v30, v36);

      *(v26 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v22, v24, "Could not get playerItem for %@. Info: %s", v26, 0x16u);
      sub_1000055B4(v27, &qword_100020AE8, &qword_100014760);

      sub_100003120(v28);
    }
  }
}

uint64_t sub_100006C40(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a2;
  v4(a2, v5);
}

uint64_t sub_100006CEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_100002120(&qword_100020AF0, &qword_100014768);
  __chkstk_darwin(v8);
  v10 = &v23[-v9 - 8];
  sub_100007044(a2, &v23[-v9 - 8]);
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v11 = &v10[*(v8 + 36)];
  v12 = v27;
  *v11 = v26;
  v11[1] = v12;
  v11[2] = v28;
  GeometryProxy.size.getter();
  v24 = v13;
  v25 = v14;
  v15 = *a2;
  v34 = a2[1];
  v35 = v15;
  v16 = a2[2];
  v32 = a2[3];
  v33 = v16;
  v17 = a2[5];
  v31 = a2[4];
  v30 = *(a2 + 48);
  v29 = v17;
  (*(v6 + 16))(&v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a1, v5);
  v18 = (*(v6 + 80) + 65) & ~*(v6 + 80);
  v19 = swift_allocObject();
  v20 = *(a2 + 1);
  *(v19 + 16) = *a2;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(a2 + 2);
  *(v19 + 64) = *(a2 + 48);
  (*(v6 + 32))(v19 + v18, &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v5);
  sub_100007C58(&v35, v23);
  sub_10000554C(&v34, v23, &qword_100020900, &qword_1000144D8);
  sub_10000554C(&v33, v23, &qword_100020A40, &qword_1000146F0);
  sub_10000554C(&v32, v23, &qword_100020A48, &qword_100015050);
  sub_10000554C(&v31, v23, &qword_100020A50, &qword_1000146F8);
  sub_10000554C(&v29, v23, &qword_100020A58, &qword_100014700);
  type metadata accessor for CGSize(0);
  sub_10000802C();
  sub_1000083C4(&qword_100020B60, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
  View.onChange<A>(of:initial:_:)();

  return sub_1000055B4(v10, &qword_100020AF0, &qword_100014768);
}

uint64_t sub_100007044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002120(&qword_100020B28, &qword_100014780);
  __chkstk_darwin(v8);
  v10 = v20 - v9;
  v11 = sub_100002120(qword_100020B68, &qword_100014798);
  __chkstk_darwin(v11);
  v13 = v20 - v12;
  v21 = *(a1 + 8);
  sub_100002120(&qword_100020968, &qword_100014548);
  State.wrappedValue.getter();
  if (v23)
  {
    v14 = v23;
    v20[1] = a2;
    v15 = v14;
    Image.init(uiImage:)();
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v16 = Image.resizable(capInsets:resizingMode:)();

    (*(v5 + 8))(v7, v4);
    v21 = v16;
    v22 = 1;
    sub_100002120(&qword_100020B48, &qword_100014790);
    sub_100008340();
    View.accessibilityIdentifier(_:)();

    [v15 size];
    sub_10000A634(&v10[*(v8 + 36)], v17, v18);
    sub_10000554C(v10, v13, &qword_100020B28, &qword_100014780);
    swift_storeEnumTagMultiPayload();
    sub_1000081C8();
    sub_100007E00();
    _ConditionalContent<>.init(storage:)();

    return sub_1000055B4(v10, &qword_100020B28, &qword_100014780);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1000081C8();
    sub_100007E00();
    return _ConditionalContent<>.init(storage:)();
  }
}

void sub_100007380(double *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  GeometryProxy.size.getter();
  v8 = v7;
  v9 = a1[5];
  v34 = v9;
  v35 = *(a1 + 48);
  if (v35 == 1)
  {
    v10 = v9;
    GeometryProxy.size.getter();
    v12 = v11;
    v13 = v9;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v26 = v6;
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000055B4(&v34, &qword_100020A58, &qword_100014700);
    v15 = *(v3 + 8);
    v15(v5, v2);
    v13 = *aBlock;
    GeometryProxy.size.getter();
    v12 = v16;

    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v6 = v26;
    sub_1000055B4(&v34, &qword_100020A58, &qword_100014700);
    v15(v5, v2);
    v10 = *aBlock;
  }

  v33 = *a1;
  v18 = v33;
  v19 = [objc_allocWithZone(PHImageRequestOptions) init];
  [v19 setDeliveryMode:0];
  [v19 setNetworkAccessAllowed:1];
  [v19 setAllowSecondaryDegradedImage:1];
  v20 = *(a1 + 1);
  v31 = *(a1 + 2);
  v32 = v20;
  v21 = *(a1 + 3);
  v29 = *(a1 + 4);
  v30 = v21;
  v22 = swift_allocObject();
  v23 = *(a1 + 1);
  *(v22 + 16) = *a1;
  *(v22 + 32) = v23;
  *(v22 + 48) = *(a1 + 2);
  *(v22 + 64) = *(a1 + 48);
  aBlock[4] = sub_100008470;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000089B8;
  aBlock[3] = &unk_10001DA18;
  v24 = _Block_copy(aBlock);
  sub_10000554C(&v34, v27, &qword_100020A58, &qword_100014700);
  sub_100007C58(&v33, v27);
  sub_10000554C(&v32, v27, &qword_100020900, &qword_1000144D8);
  sub_10000554C(&v31, v27, &qword_100020A40, &qword_1000146F0);
  sub_10000554C(&v30, v27, &qword_100020A48, &qword_100015050);
  sub_10000554C(&v29, v27, &qword_100020A50, &qword_1000146F8);

  [v6 requestImageForAsset:v18 targetSize:0 contentMode:v19 options:v24 resultHandler:{v8 * v13, v12 * v10}];
  _Block_release(v24);
}

uint64_t sub_1000077C4(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  sub_100002120(&qword_100020968, &qword_100014548);
  return State.wrappedValue.setter();
}

uint64_t sub_10000781C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100007890@<X0>(uint64_t a2@<X8>)
{
  ProgressView<>.init<>()();
  v3 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  result = sub_100002120(&qword_100020BF0, &qword_100014930);
  v6 = (a2 + *(result + 36));
  *v6 = KeyPath;
  v6[1] = v3;
  return result;
}

uint64_t sub_1000078F4()
{
  v0 = sub_100002120(&qword_100020BF0, &qword_100014930);
  v1 = sub_100008684();

  return Label.init(title:icon:)(sub_10000781C, 0, sub_100007890, 0, &type metadata for Text, v0, &protocol witness table for Text, v1);
}

uint64_t sub_10000798C@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v18 = sub_100002120(&qword_100020A38, &qword_1000146E8);
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v17 - v3;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v23 = *v1;
  v5 = v23;
  v24 = v7;
  v10 = v1[4];
  v9 = v1[5];
  v25 = v6;
  v26 = v10;
  v27 = v8;
  v28 = v9;
  v29 = *(v1 + 48);
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = v6;
  *(v11 + 32) = v7;
  *(v11 + 40) = v8;
  v12 = v1[5];
  *(v11 + 48) = v10;
  *(v11 + 56) = v12;
  *(v11 + 64) = *(v1 + 48);
  v21 = sub_100007C50;
  v22 = v11;
  sub_100007C58(&v23, v20);
  sub_10000554C(&v25, v20, &qword_100020900, &qword_1000144D8);
  sub_10000554C(&v24, v20, &qword_100020A40, &qword_1000146F0);
  sub_10000554C(&v27, v20, &qword_100020A48, &qword_100015050);
  sub_10000554C(&v26, v20, &qword_100020A50, &qword_1000146F8);
  sub_10000554C(&v28, v20, &qword_100020A58, &qword_100014700);
  LocalizedStringKey.init(stringLiteral:)();
  v13 = sub_100002120(&qword_100020A60, &qword_100014708);
  v14 = sub_100002440(&qword_100020A68, &qword_100020A60, &qword_100014708, &unk_1000148E0);
  View.navigationTitle(_:)();

  v21 = v13;
  v22 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = v18;
  View.assistiveAccessNavigationIcon(systemImage:)();
  return (*(v2 + 8))(v4, v15);
}

unint64_t sub_100007CBC()
{
  result = qword_100020A88;
  if (!qword_100020A88)
  {
    sub_100002220(&qword_100020A78, &qword_100014718);
    sub_100002440(&qword_100020A90, &qword_100020A98, &qword_100014728, &protocol conformance descriptor for ZStack<A>);
    sub_100007D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020A88);
  }

  return result;
}

unint64_t sub_100007D74()
{
  result = qword_100020AA0;
  if (!qword_100020AA0)
  {
    sub_100002220(&qword_100020AA8, &qword_100014730);
    sub_100007E00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020AA0);
  }

  return result;
}

unint64_t sub_100007E00()
{
  result = qword_100020AB0;
  if (!qword_100020AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020AB0);
  }

  return result;
}

double sub_100007E6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100007ED8()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 65) & ~v3;
  v5 = *(v2 + 64);

  v6 = sub_100004F4C(*(v0 + 56), *(v0 + 64));
  (*(v2 + 8))(v0 + v4, v1, v6);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100007FC8()
{
  type metadata accessor for GeometryProxy();

  sub_100007380((v0 + 16));
}

unint64_t sub_10000802C()
{
  result = qword_100020AF8;
  if (!qword_100020AF8)
  {
    sub_100002220(&qword_100020AF0, &qword_100014768);
    sub_1000080B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020AF8);
  }

  return result;
}

unint64_t sub_1000080B8()
{
  result = qword_100020B00;
  if (!qword_100020B00)
  {
    sub_100002220(&qword_100020B08, &qword_100014770);
    sub_10000813C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020B00);
  }

  return result;
}

unint64_t sub_10000813C()
{
  result = qword_100020B10;
  if (!qword_100020B10)
  {
    sub_100002220(&qword_100020B18, &qword_100014778);
    sub_1000081C8();
    sub_100007E00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020B10);
  }

  return result;
}

unint64_t sub_1000081C8()
{
  result = qword_100020B20;
  if (!qword_100020B20)
  {
    sub_100002220(&qword_100020B28, &qword_100014780);
    sub_100008284();
    sub_1000083C4(&qword_100020B58, type metadata accessor for PinchToZoomModifier, &unk_100014DF4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020B20);
  }

  return result;
}

unint64_t sub_100008284()
{
  result = qword_100020B30;
  if (!qword_100020B30)
  {
    sub_100002220(&qword_100020B38, &qword_100014788);
    sub_100008340();
    sub_1000083C4(&qword_100020B50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020B30);
  }

  return result;
}

unint64_t sub_100008340()
{
  result = qword_100020B40;
  if (!qword_100020B40)
  {
    sub_100002220(&qword_100020B48, &qword_100014790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020B40);
  }

  return result;
}

uint64_t sub_1000083C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000840C()
{

  sub_100004F4C(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_100008488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000084D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100008518(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000856C()
{
  sub_100002220(&qword_100020A38, &qword_1000146E8);
  sub_100002220(&qword_100020A60, &qword_100014708);
  sub_100002440(&qword_100020A68, &qword_100020A60, &qword_100014708, &unk_1000148E0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100008684()
{
  result = qword_100020BF8;
  if (!qword_100020BF8)
  {
    sub_100002220(&qword_100020BF0, &qword_100014930);
    sub_100002440(&qword_100020C00, &qword_100020C08, &qword_100014938, &protocol conformance descriptor for ProgressView<A, B>);
    sub_100002440(&qword_1000206F0, &qword_1000206F8, &qword_100014250, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020BF8);
  }

  return result;
}

uint64_t sub_100008768@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000087C0(void (*a1)(void))
{
  __chkstk_darwin(a1);
  type metadata accessor for _UIHostingView();
  a1();
  return _UIHostingView.__allocating_init(rootView:)();
}

uint64_t sub_10000885C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v2(v1);
  return dispatch thunk of _UIHostingView.rootView.setter();
}

uint64_t sub_1000089BC()
{
  v0 = type metadata accessor for Logger();
  sub_100008B7C(v0, qword_100021C90);
  sub_100002A18(v0, qword_100021C90);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100008A40()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignposter();
  sub_100008B7C(v4, qword_100021CA8);
  sub_100002A18(v4, qword_100021CA8);
  if (qword_1000207C0 != -1)
  {
    swift_once();
  }

  v5 = sub_100002A18(v0, qword_100021C90);
  (*(v1 + 16))(v3, v5, v0);
  return OSSignposter.init(logger:)();
}

uint64_t *sub_100008B7C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_100008C34(int64_t a1, uint64_t a2, int64_t a3, id a4)
{
  result = [a4 count];
  if (a1 < 0 || result < a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = [a4 count];
  if (a3 < 0 || result < a3)
  {
    goto LABEL_17;
  }

  v9 = a3 - a1;
  if (a2 >= 1)
  {
    if (v9 < 0 || v9 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v9 <= 0 && v9 > a2)
  {
    return 0;
  }

LABEL_12:
  v11 = __OFADD__(a1, a2);
  v10 = a1 + a2;
  if (v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = [a4 count];
  if ((v10 & 0x8000000000000000) == 0 && result >= v10)
  {
    return v10;
  }

LABEL_19:
  __break(1u);
  return result;
}

void *sub_100008D14@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_100008D2C(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

id sub_100008D58@<X0>(void *a1@<X8>)
{
  result = [*v1 count];
  *a1 = result;
  return result;
}

void (*sub_100008D8C(void *a1, void *a2))(uint64_t a1)
{
  v4 = [*v2 objectAtIndexedSubscript:*a2];
  *a1 = v4;
  a1[1] = v4;
  return sub_100008DE8;
}

uint64_t sub_100008DF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *v2;
  result = [*v2 count];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < v4)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v7;

  return v7;
}

unint64_t sub_100008E70@<X0>(void *a1@<X8>)
{
  result = [*v1 count];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = result;
  }

  return result;
}

void *sub_100008EE8@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = [*v3 count];
    if ((v5 & 0x8000000000000000) == 0 && result >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

id sub_100008F44@<X0>(int64_t *a1@<X0>, uint64_t a2@<X1>, int64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_100008C34(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

id sub_100008F80(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  result = [*v2 count];
  if (v3 < 0 || result < v3)
  {
    __break(1u);
  }

  else
  {
    result = [v5 count];
    if ((v4 & 0x8000000000000000) == 0 && result >= v4)
    {
      return (v4 - v3);
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_100008FF0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_10000900C(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_100009028(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_100009044@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_10000905C(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

int64_t sub_100009084()
{
  v1 = *v0;
  v2 = [v1 count];
  result = [v1 count];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = [v1 count];
    if ((v2 & 0x8000000000000000) == 0 && result >= v2)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000090FC()
{
  v1 = *v0;
  v2 = sub_1000096C8(*v0);

  return v2;
}

void *sub_100009138(void *result, uint64_t a2, unint64_t a3, id a4)
{
  v5 = result;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *v5 = a4;
    v5[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = a3;
    v9 = a3 - 1;
    while (1)
    {
      if (v7 == [a4 count])
      {
        a3 = v7;
        goto LABEL_13;
      }

      *(a2 + 8 * v7) = [a4 objectAtIndexedSubscript:v7];
      if (v9 == v7)
      {
        break;
      }

      if (__OFADD__(++v7, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a3 = v8;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t sub_10000922C()
{
  result = qword_100020C30;
  if (!qword_100020C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020C30);
  }

  return result;
}

unint64_t sub_1000092C0()
{
  result = qword_100020C48;
  if (!qword_100020C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020C48);
  }

  return result;
}

unint64_t sub_10000935C()
{
  result = qword_100020C60;
  if (!qword_100020C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020C60);
  }

  return result;
}

unint64_t sub_10000942C()
{
  result = qword_100020C78;
  if (!qword_100020C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020C78);
  }

  return result;
}

uint64_t sub_1000094B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100002220(&qword_100020C40, &qword_100014A18);
    sub_1000092C0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100009578(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002220(&qword_100020C58, &qword_100014A20);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000095F0()
{
  result = qword_100020C90;
  if (!qword_100020C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020C90);
  }

  return result;
}

void *sub_100009644(uint64_t a1, uint64_t a2)
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

  sub_100002120(&qword_100020C98, &qword_100014BB8);
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_1000096C8(void *a1)
{
  v2 = [a1 count];
  result = [a1 count];
  if (result < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  result = [a1 count];
  if (v2 < 0 || result < v2)
  {
    goto LABEL_14;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v4 = sub_100009644(v2, 0);
  v5 = a1;
  if ([v5 count])
  {
    v6 = 0;
    v7 = v2 - 1;
    while (1)
    {
      v4[v6 + 4] = [v5 objectAtIndexedSubscript:v6];
      if (v7 == v6)
      {
        break;
      }

      if (++v6 == [v5 count])
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    __break(1u);
  }

  return v4;
}

uint64_t sub_100009810@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v36 = type metadata accessor for AccessibilityChildBehavior();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002120(&qword_100020CA0, &qword_100014C40);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v37 = sub_100002120(&qword_100020CA8, &qword_100014C48);
  v9 = *(v37 - 8);
  __chkstk_darwin(v37);
  v11 = &v35 - v10;
  v39 = 0;
  v12 = a1;
  sub_100002120(&qword_100020900, &qword_1000144D8);
  State.init(wrappedValue:)();
  *(v8 + 1) = v41;
  LODWORD(v39) = 0;
  BYTE4(v39) = 1;
  sub_100002120(&qword_100020910, qword_1000144E0);
  State.init(wrappedValue:)();
  v13 = BYTE4(v41);
  v14 = *(&v41 + 1);
  *(v8 + 8) = v41;
  v8[36] = v13;
  *(v8 + 5) = v14;
  *(v8 + 6) = swift_getKeyPath();
  v8[56] = 0;
  v15 = &v8[*(type metadata accessor for PhotoViewInternal(0) + 36)];
  v16 = *(type metadata accessor for RoundedRectangle() + 20);
  v17 = enum case for RoundedCornerStyle.continuous(_:);
  v18 = type metadata accessor for RoundedCornerStyle();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  __asm { FMOV            V0.2D, #10.0 }

  *v15 = _Q0;
  *v8 = v12;
  v8[8] = 0;
  v24 = [v12 localIdentifier];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = &v8[*(v6 + 52)];
  *v28 = v25;
  v28[1] = v27;
  static AccessibilityChildBehavior.ignore.getter();
  v29 = sub_100009C88();
  View.accessibilityElement(children:)();
  (*(v3 + 8))(v5, v36);
  sub_100009CEC(v8);
  *&v41 = sub_100009ECC(v12);
  *(&v41 + 1) = v30;
  v31._countAndFlagsBits = 8236;
  v31._object = 0xE200000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = sub_100009FAC(v12);
  String.append(_:)(v32);

  v39 = v6;
  v40 = v29;
  swift_getOpaqueTypeConformance2();
  sub_100009D54();
  v33 = v37;
  View.accessibilityLabel<A>(_:)();

  return (*(v9 + 8))(v11, v33);
}

unint64_t sub_100009C88()
{
  result = qword_100020CB0;
  if (!qword_100020CB0)
  {
    sub_100002220(&qword_100020CA0, &qword_100014C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020CB0);
  }

  return result;
}

uint64_t sub_100009CEC(uint64_t a1)
{
  v2 = sub_100002120(&qword_100020CA0, &qword_100014C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100009D54()
{
  result = qword_100020CB8;
  if (!qword_100020CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020CB8);
  }

  return result;
}

unint64_t sub_100009DAC()
{
  result = qword_100020CC0;
  if (!qword_100020CC0)
  {
    sub_100002220(&qword_100020CC8, &qword_100014C80);
    sub_100002220(&qword_100020CA0, &qword_100014C40);
    sub_100009C88();
    swift_getOpaqueTypeConformance2();
    sub_100009E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020CC0);
  }

  return result;
}

unint64_t sub_100009E74()
{
  result = qword_100020B50;
  if (!qword_100020B50)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020B50);
  }

  return result;
}

uint64_t sub_100009ECC(void *a1)
{
  v1 = [a1 mediaType];
  if (v1 == 1)
  {
    v2 = 1414482000;
  }

  else
  {
    if (v1 != 2)
    {
      return 0;
    }

    v2 = 1162103126;
  }

  v3 = [objc_opt_self() mainBundle];
  v8._object = 0x8000000100017940;
  v4._countAndFlagsBits = v2 & 0xFFFF0000FFFFFFFFLL | 0x4F00000000;
  v4._object = 0xE500000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0xD00000000000001ELL;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v8)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_100009FAC(void *a1)
{
  v2 = sub_100002120(&qword_100020CD0, &qword_100014C88);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 creationDate];
  if (v12)
  {
    v13 = v12;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v9 + 56))(v5, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v5, 1, 1, v8);
  }

  sub_10000A22C(v5, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000A29C(v7);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    if (qword_1000207D0 != -1)
    {
      swift_once();
    }

    v15 = qword_100021CC0;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v17 = [v15 stringFromDate:isa];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v9 + 8))(v11, v8);
    return v18;
  }
}

uint64_t sub_10000A22C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002120(&qword_100020CD0, &qword_100014C88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A29C(uint64_t a1)
{
  v2 = sub_100002120(&qword_100020CD0, &qword_100014C88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000A304(uint64_t *a1@<X8>)
{
  v3 = [*v1 localIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

Swift::Int sub_10000A35C()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10000A3C4(uint64_t a1)
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

void sub_10000A448()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setDateFormat:v1];

  qword_100021CC0 = v0;
}

unint64_t sub_10000A4D0()
{
  result = qword_100020CD8;
  if (!qword_100020CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020CD8);
  }

  return result;
}

unint64_t sub_10000A530()
{
  result = qword_100020CE0;
  if (!qword_100020CE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100020CE0);
  }

  return result;
}

uint64_t sub_10000A57C()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_10000A5E4@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

double sub_10000A634@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = type metadata accessor for ScrollPosition();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  *a1 = a2;
  *(a1 + 8) = a3;
  v23 = 0x3FF0000000000000;
  State.init(wrappedValue:)();
  v13 = *(&v26 + 1);
  *(a1 + 16) = v26;
  *(a1 + 24) = v13;
  v23 = 0x3FF0000000000000;
  State.init(wrappedValue:)();
  v14 = *(&v26 + 1);
  *(a1 + 32) = v26;
  *(a1 + 40) = v14;
  v15 = type metadata accessor for PinchToZoomModifier(0);
  ScrollPosition.init<A>(idType:)();
  (*(v7 + 16))(v10, v12, v6);
  State.init(wrappedValue:)();
  (*(v7 + 8))(v12, v6);
  v16 = a1 + v15[8];
  type metadata accessor for CGPoint(0);
  v23 = 0;
  v24 = 0;
  State.init(wrappedValue:)();
  v17 = v27;
  *v16 = v26;
  *(v16 + 16) = v17;
  v18 = a1 + v15[9];
  v23 = 0;
  v24 = 0;
  v25 = 1;
  sub_100002120(&qword_100020D90, &qword_100014DD0);
  State.init(wrappedValue:)();
  v19 = v27;
  v20 = v28;
  result = *&v26;
  *v18 = v26;
  *(v18 + 16) = v19;
  *(v18 + 24) = v20;
  *(a1 + v15[10]) = 0x3FF3333333333333;
  return result;
}

uint64_t type metadata accessor for PinchToZoomModifier(uint64_t a1)
{
  result = qword_100020DF8;
  if (!qword_100020DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000A8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100002120(&qword_100020D98, &qword_100014DD8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10000A9B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_100002120(&qword_100020D98, &qword_100014DD8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10000AA68(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    sub_10000AB74();
    if (v2 <= 0x3F)
    {
      sub_10000ABC4(319, &qword_100020E10, &type metadata accessor for ScrollPosition);
      if (v3 <= 0x3F)
      {
        sub_10000ABC4(319, &qword_100020E18, type metadata accessor for CGPoint);
        if (v4 <= 0x3F)
        {
          sub_10000AC18(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10000AB74()
{
  if (!qword_100020E08)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100020E08);
    }
  }
}

void sub_10000ABC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10000AC18(uint64_t a1)
{
  if (!qword_100020E20)
  {
    sub_100002220(&qword_100020D90, &qword_100014DD0);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_100020E20);
    }
  }
}

void sub_10000AC98(double a1)
{
  sub_100002120(&qword_100020F10, &qword_100014EC0);
  State.wrappedValue.setter();
  v1 = State.wrappedValue.getter();
  if (a1 < 1.0)
  {
    __chkstk_darwin(v1);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }
}

uint64_t sub_10000AD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v21 = a2;
  v2 = sub_100002120(&qword_100020E68, &qword_100014E48);
  __chkstk_darwin(v2);
  v4 = (v19 - v3);
  v5 = type metadata accessor for PinchToZoomModifier(0);
  v19[0] = *(v5 - 8);
  v6 = *(v19[0] + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_100002120(&qword_100020E70, &qword_100014E50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v19 - v10;
  sub_10000CA2C();
  v12 = [swift_getObjCClassFromMetadata() sharedInstance];
  v13 = [v12 allowPinchToZoom];

  v14 = *(v8 + 16);
  if (v13)
  {
    v14(v11, v20, v7);
    sub_10000CA78(v19[1], v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v16 = (v9 + *(v19[0] + 80) + v15) & ~*(v19[0] + 80);
    v17 = swift_allocObject();
    (*(v8 + 32))(v17 + v15, v11, v7);
    sub_10000CCA0(v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
    *v4 = sub_10000CD04;
    v4[1] = v17;
  }

  else
  {
    v14(v4, v20, v7);
  }

  swift_storeEnumTagMultiPayload();
  sub_100002120(&qword_100020E78, &qword_100014E58);
  sub_100002440(&qword_100020E80, &qword_100020E78, &qword_100014E58, &protocol conformance descriptor for GeometryReader<A>);
  sub_100002440(&qword_100020E88, &qword_100020E70, &qword_100014E50, &protocol conformance descriptor for _ViewModifier_Content<A>);
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10000B0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v98 = a3;
  v93 = a4;
  v94 = a1;
  v86 = type metadata accessor for MagnifyGesture();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_100002120(&qword_100020E90, &qword_100014E60);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v65 - v6;
  v92 = sub_100002120(&qword_100020E98, &qword_100014E68);
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v65 - v7;
  v81 = type metadata accessor for ScrollIndicatorVisibility();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002120(&qword_100020EA0, &qword_100014E70);
  __chkstk_darwin(v9 - 8);
  v72 = &v65 - v10;
  v69 = type metadata accessor for PinchToZoomModifier(0);
  v11 = *(v69 - 8);
  __chkstk_darwin(v69);
  v71 = v12;
  v97 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002120(&qword_100020EA8, &qword_100014E78);
  v67 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v65 - v14;
  v74 = sub_100002120(&qword_100020EB0, &qword_100014E80);
  v68 = *(v74 - 8);
  __chkstk_darwin(v74);
  v17 = &v65 - v16;
  v78 = sub_100002120(&qword_100020EB8, &qword_100014E88);
  v75 = *(v78 - 8);
  __chkstk_darwin(v78);
  v73 = &v65 - v18;
  v95 = sub_100002120(&qword_100020EC0, &qword_100014E90);
  v77 = *(v95 - 8);
  __chkstk_darwin(v95);
  v76 = &v65 - v19;
  v83 = sub_100002120(&qword_100020EC8, &qword_100014E98);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v96 = &v65 - v20;
  v66 = sub_100002120(&qword_100020ED0, &qword_100014EA0);
  inited = swift_initStackObject();
  v65 = xmmword_100014DB0;
  *(inited + 16) = xmmword_100014DB0;
  v22 = static Axis.Set.horizontal.getter();
  *(inited + 32) = v22;
  v23 = static Axis.Set.vertical.getter();
  *(inited + 33) = v23;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v22)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  v24 = Axis.Set.init(rawValue:)();
  if (v24 != v23)
  {
    v24 = Axis.Set.init(rawValue:)();
  }

  __chkstk_darwin(v24);
  *(&v65 - 4) = a2;
  v25 = v98;
  v26 = v94;
  *(&v65 - 3) = v98;
  v64 = v26;
  sub_100002120(&qword_100020ED8, &qword_100014EA8);
  v27 = sub_100002220(&qword_100020EE0, &qword_100014EB0);
  v28 = sub_10000CE00();
  v99 = v27;
  v100 = v28;
  swift_getOpaqueTypeConformance2();
  ScrollView.init(_:showsIndicators:content:)();
  type metadata accessor for CGPoint(0);
  v30 = v29;
  v31 = v97;
  sub_10000CA78(v25, v97);
  v32 = *(v11 + 80);
  v33 = (v32 + 16) & ~v32;
  v34 = v33 + v71;
  v71 = v32;
  v70 = v34;
  v35 = swift_allocObject();
  v94 = v33;
  sub_10000CCA0(v31, v35 + v33);
  v36 = sub_100002440(&qword_100020F00, &qword_100020EA8, &qword_100014E78, &protocol conformance descriptor for ScrollView<A>);
  v37 = sub_10000D010(&qword_100020F08, type metadata accessor for CGPoint, &protocol conformance descriptor for CGPoint);
  v64 = v37;
  View.onScrollGeometryChange<A>(for:of:action:)();

  (*(v67 + 8))(v15, v13);
  sub_100002120(&qword_100020D98, &qword_100014DD8);
  v38 = v72;
  State.projectedValue.getter();
  v99 = v13;
  v100 = v30;
  v101 = v36;
  v102 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v73;
  v41 = v74;
  View.scrollPosition(_:anchor:)();
  sub_1000055B4(v38, &qword_100020EA0, &qword_100014E70);
  (*(v68 + 8))(v17, v41);
  v42 = v79;
  static ScrollIndicatorVisibility.hidden.getter();
  v43 = swift_initStackObject();
  *(v43 + 16) = v65;
  LOBYTE(v30) = static Axis.Set.vertical.getter();
  *(v43 + 32) = v30;
  v44 = static Axis.Set.horizontal.getter();
  *(v43 + 33) = v44;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v30)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v44)
  {
    Axis.Set.init(rawValue:)();
  }

  v99 = v41;
  v100 = OpaqueTypeConformance2;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v76;
  v47 = v78;
  View.scrollIndicators(_:axes:)();
  (*(v80 + 8))(v42, v81);
  (*(v75 + 8))(v40, v47);
  v48 = v98;
  v49 = *(v98 + 40);
  v99 = *(v98 + 32);
  v100 = v49;
  sub_100002120(&qword_100020F10, &qword_100014EC0);
  State.wrappedValue.getter();
  v99 = v47;
  v100 = v45;
  v81 = swift_getOpaqueTypeConformance2();
  v50 = v95;
  View.scrollDisabled(_:)();
  (*(v77 + 8))(v46, v50);
  v51 = v84;
  MagnifyGesture.init(minimumScaleDelta:)();
  v52 = v97;
  sub_10000CA78(v48, v97);
  v53 = swift_allocObject();
  v54 = v94;
  sub_10000CCA0(v52, v53 + v94);
  sub_10000D010(&qword_100020F18, &type metadata accessor for MagnifyGesture, &protocol conformance descriptor for MagnifyGesture);
  sub_10000D010(&qword_100020F20, &type metadata accessor for MagnifyGesture.Value, &protocol conformance descriptor for MagnifyGesture.Value);
  v55 = v87;
  v56 = v86;
  Gesture<>.onChanged(_:)();

  (*(v85 + 8))(v51, v56);
  sub_10000CA78(v48, v52);
  v57 = swift_allocObject();
  sub_10000CCA0(v52, v57 + v54);
  sub_100002440(&qword_100020F28, &qword_100020E90, &qword_100014E60, &protocol conformance descriptor for _ChangedGesture<A>);
  v58 = v90;
  v59 = v89;
  Gesture.onEnded(_:)();

  (*(v88 + 8))(v55, v59);
  static GestureMask.all.getter();
  v99 = v95;
  v100 = v81;
  swift_getOpaqueTypeConformance2();
  sub_100002440(&qword_100020F30, &qword_100020E98, &qword_100014E68, &protocol conformance descriptor for _EndedGesture<A>);
  v60 = v83;
  v61 = v92;
  v62 = v96;
  View.highPriorityGesture<A>(_:including:)();
  (*(v91 + 8))(v58, v61);
  return (*(v82 + 8))(v62, v60);
}

uint64_t sub_10000BF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a1;
  v32 = a4;
  v30 = type metadata accessor for GeometryProxy();
  v6 = *(v30 - 8);
  v31 = *(v6 + 64);
  __chkstk_darwin(v30);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PinchToZoomModifier(0);
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100002120(&qword_100020EF8, &qword_100014EB8);
  v25 = v10;
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v29 = sub_100002120(&qword_100020EE0, &qword_100014EB0);
  __chkstk_darwin(v29);
  v14 = &v25 - v13;
  sub_10000C2D8(a3);
  sub_10000C2D8(a3);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = sub_100002120(&qword_100020E70, &qword_100014E50);
  (*(*(v15 - 8) + 16))(v12, v28, v15);
  v16 = &v12[*(v10 + 36)];
  v17 = v34;
  *v16 = v33;
  *(v16 + 1) = v17;
  *(v16 + 2) = v35;
  sub_10000CA78(a2, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v27;
  v19 = a3;
  v20 = v30;
  (*(v6 + 16))(v27, v19, v30);
  v21 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v22 = (v9 + *(v6 + 80) + v21) & ~*(v6 + 80);
  v23 = swift_allocObject();
  sub_10000CCA0(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v21);
  (*(v6 + 32))(v23 + v22, v18, v20);
  sub_10000CEBC();
  View.accessibilityZoomAction(_:)();

  sub_1000055B4(v12, &qword_100020EF8, &qword_100014EB8);
  sub_10000CE00();
  View.scrollTargetLayout(isEnabled:)();
  return sub_1000055B4(v14, &qword_100020EE0, &qword_100014EB0);
}

double sub_10000C2D8(uint64_t a1)
{
  GeometryProxy.size.getter();
  v3 = v2;
  sub_100002120(&qword_100020F10, &qword_100014EC0);
  State.wrappedValue.getter();
  State.wrappedValue.getter();
  v4 = v3 * (v10 * v10);
  GeometryProxy.size.getter();
  v6 = v5;
  State.wrappedValue.getter();
  State.wrappedValue.getter();
  v7 = v6 * (v10 * v10);
  v8 = *v1 / v1[1];
  if (v4 / v7 >= v8)
  {
    return v7 * v8;
  }

  return v4;
}

uint64_t sub_10000C404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ScrollPosition();
  __chkstk_darwin(v5 - 8);
  AccessibilityZoomGestureAction.direction.getter();
  if (static AccessibilityZoomGestureAction.Direction.== infix(_:_:)())
  {
    v6 = *(a2 + *(type metadata accessor for PinchToZoomModifier(0) + 40));
    sub_100002120(&qword_100020F10, &qword_100014EC0);
    State.wrappedValue.getter();
    v7 = v6 * v9;
  }

  else
  {
    sub_100002120(&qword_100020F10, &qword_100014EC0);
    State.wrappedValue.getter();
    v7 = v9 / *(a2 + *(type metadata accessor for PinchToZoomModifier(0) + 40));
    if (v7 <= 1.0)
    {
      v7 = 1.0;
    }
  }

  sub_10000AC98(v7);
  sub_10000C2D8(a3);
  GeometryProxy.size.getter();
  sub_10000C2D8(a3);
  GeometryProxy.size.getter();
  type metadata accessor for PinchToZoomModifier(0);
  sub_100002120(&qword_100020D98, &qword_100014DD8);
  State.wrappedValue.getter();
  ScrollPosition.scrollTo(point:)();
  return State.wrappedValue.setter();
}

void sub_10000C5EC(void *a1@<X8>)
{
  ScrollGeometry.contentOffset.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10000C618(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  type metadata accessor for PinchToZoomModifier(0);
  sub_100002120(&qword_100020F40, &qword_100014ED0);
  return State.wrappedValue.setter();
}

void *sub_10000C694(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for ScrollPosition();
  __chkstk_darwin(v2 - 8);
  type metadata accessor for PinchToZoomModifier(0);
  sub_100002120(&qword_100020F38, &qword_100014EC8);
  State.wrappedValue.getter();
  if (v4 == 1)
  {
    sub_100002120(&qword_100020F40, &qword_100014ED0);
    State.wrappedValue.getter();
    v4 = 0;
    State.wrappedValue.setter();
  }

  result = State.wrappedValue.getter();
  if ((v4 & 1) == 0)
  {
    MagnifyGesture.Value.magnification.getter();
    sub_100002120(&qword_100020F10, &qword_100014EC0);
    State.wrappedValue.setter();
    MagnifyGesture.Value.startLocation.getter();
    MagnifyGesture.Value.startLocation.getter();
    State.wrappedValue.getter();
    State.wrappedValue.getter();
    MagnifyGesture.Value.startLocation.getter();
    MagnifyGesture.Value.startLocation.getter();
    sub_100002120(&qword_100020D98, &qword_100014DD8);
    State.wrappedValue.getter();
    ScrollPosition.scrollTo(point:)();
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_10000C8FC(uint64_t a1, void *a2)
{
  MagnifyGesture.Value.magnification.getter();
  v3 = v2;
  sub_100002120(&qword_100020F10, &qword_100014EC0);
  State.wrappedValue.getter();
  sub_10000AC98(v3 * v5);
  State.wrappedValue.setter();
  type metadata accessor for PinchToZoomModifier(0);
  sub_100002120(&qword_100020F38, &qword_100014EC8);
  return State.wrappedValue.setter();
}

unint64_t sub_10000CA2C()
{
  result = qword_1000211C0;
  if (!qword_1000211C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000211C0);
  }

  return result;
}

uint64_t sub_10000CA78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PinchToZoomModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CADC()
{
  v1 = sub_100002120(&qword_100020E70, &qword_100014E50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for PinchToZoomModifier(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);

  v11 = v0 + v8 + v6[9];
  v12 = type metadata accessor for ScrollPosition();
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_100002120(&qword_100020D98, &qword_100014DD8);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_10000CCA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PinchToZoomModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_100002120(&qword_100020E70, &qword_100014E50) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PinchToZoomModifier(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_10000B0D0(a1, v2 + v6, v9, a2);
}

unint64_t sub_10000CE00()
{
  result = qword_100020EE8;
  if (!qword_100020EE8)
  {
    sub_100002220(&qword_100020EE0, &qword_100014EB0);
    sub_10000CEBC();
    sub_10000D010(&qword_100020B50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020EE8);
  }

  return result;
}

unint64_t sub_10000CEBC()
{
  result = qword_100020EF0;
  if (!qword_100020EF0)
  {
    sub_100002220(&qword_100020EF8, &qword_100014EB8);
    sub_100002440(&qword_100020E88, &qword_100020E70, &qword_100014E50, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020EF0);
  }

  return result;
}

uint64_t sub_10000CF74(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for PinchToZoomModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000C618(a1, a2, v6);
}

uint64_t sub_10000D010(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000D058()
{
  v1 = (type metadata accessor for PinchToZoomModifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];
  v6 = type metadata accessor for ScrollPosition();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_100002120(&qword_100020D98, &qword_100014DD8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000D1AC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PinchToZoomModifier(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_10000D260()
{
  v1 = (type metadata accessor for PinchToZoomModifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;

  v11 = v0 + v3 + v1[9];
  v12 = type metadata accessor for ScrollPosition();
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_100002120(&qword_100020D98, &qword_100014DD8);

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_10000D420(uint64_t a1)
{
  v3 = *(type metadata accessor for PinchToZoomModifier(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for GeometryProxy() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10000C404(a1, v1 + v4, v7);
}

unint64_t sub_10000D4F8()
{
  result = qword_100020F48;
  if (!qword_100020F48)
  {
    sub_100002220(&qword_100020F50, &qword_100014ED8);
    sub_100002440(&qword_100020E80, &qword_100020E78, &qword_100014E58, &protocol conformance descriptor for GeometryReader<A>);
    sub_100002440(&qword_100020E88, &qword_100020E70, &qword_100014E50, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020F48);
  }

  return result;
}

id sub_10000D608()
{
  v0 = objc_allocWithZone(type metadata accessor for PhotoLibrary(0));

  return [v0 init];
}

uint64_t PhotoLibraryView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for PhotoLibraryView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_10000E058(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10000E0D0(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a1 = sub_10000E134;
  a1[1] = v7;
  return result;
}

uint64_t type metadata accessor for PhotoLibraryView(uint64_t a1)
{
  result = qword_100020FC0;
  if (!qword_100020FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000D780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a3;
  v5 = type metadata accessor for PhotoLibraryView(0);
  v62 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v63 = v6;
  v64 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for ScrollAnchorRole();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002120(&qword_100021028, &qword_100014FA0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47 - v11;
  v48 = sub_100002120(&qword_100021030, &qword_100014FA8);
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v14 = &v47 - v13;
  v54 = sub_100002120(&qword_100021038, &qword_100014FB0);
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v16 = &v47 - v15;
  v57 = sub_100002120(&qword_100021040, &qword_100014FB8);
  __chkstk_darwin(v57);
  v52 = &v47 - v17;
  v59 = sub_100002120(&qword_100021048, &qword_100014FC0);
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v55 = &v47 - v18;
  v61 = sub_100002120(&qword_100021050, &qword_100014FC8);
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v56 = &v47 - v19;
  v65 = a2;
  v67 = a2;
  v68 = a1;
  static Axis.Set.vertical.getter();
  sub_100002120(&qword_100021058, &qword_100014FD0);
  sub_100002440(&qword_100021060, &qword_100021058, &qword_100014FD0, &protocol conformance descriptor for LazyVGrid<A>);
  ScrollView.init(_:showsIndicators:content:)();
  static UnitPoint.bottom.getter();
  v20 = sub_100002440(&qword_100021068, &qword_100021028, &qword_100014FA0, &protocol conformance descriptor for ScrollView<A>);
  v21 = v16;
  View.defaultScrollAnchor(_:)();
  (*(v10 + 8))(v12, v9);
  static UnitPoint.top.getter();
  static ScrollAnchorRole.alignment.getter();
  v69 = v9;
  v70 = v20;
  swift_getOpaqueTypeConformance2();
  v22 = v48;
  View.defaultScrollAnchor(_:for:)();
  (*(v50 + 8))(v8, v51);
  (*(v49 + 8))(v14, v22);
  sub_100002120(&qword_100021070, &qword_100014FD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100014DB0;
  LOBYTE(v8) = static Edge.Set.leading.getter();
  *(inited + 32) = v8;
  v24 = static Edge.Set.trailing.getter();
  *(inited + 33) = v24;
  v25 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v8)
  {
    v25 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v24)
  {
    v25 = Edge.Set.init(rawValue:)();
  }

  if (qword_1000207D8 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v52;
  (*(v53 + 32))(v52, v21, v54);
  v35 = v57;
  v36 = v34 + *(v57 + 36);
  *v36 = v25;
  *(v36 + 8) = v27;
  *(v36 + 16) = v29;
  *(v36 + 24) = v31;
  *(v36 + 32) = v33;
  *(v36 + 40) = 0;
  LocalizedStringKey.init(stringLiteral:)();
  v37 = sub_10000F284();
  v38 = v55;
  View.navigationTitle(_:)();

  sub_10000F3C4(v34);
  v69 = v35;
  v70 = v37;
  swift_getOpaqueTypeConformance2();
  v39 = v56;
  v40 = v59;
  View.assistiveAccessNavigationIcon(systemImage:)();
  (*(v58 + 8))(v38, v40);
  v41 = v64;
  sub_10000E058(v65, v64);
  v42 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v43 = swift_allocObject();
  sub_10000E0D0(v41, v43 + v42);
  v44 = v66;
  (*(v60 + 32))(v66, v39, v61);
  result = sub_100002120(&qword_100021080, &qword_100014FE0);
  v46 = (v44 + *(result + 36));
  *v46 = sub_10000F54C;
  v46[1] = v43;
  v46[2] = 0;
  v46[3] = 0;
  return result;
}

uint64_t sub_10000E058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoLibraryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10000E0C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    _objc_release_x1(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_10000E0D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoLibraryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E138(uint64_t a1)
{
  v2 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for GridItem.Size();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for GridItem();
  __chkstk_darwin(v7 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  GeometryProxy.size.getter();
  v11 = v10;
  v13 = v12;
  v14 = *(a1 + *(type metadata accessor for PhotoLibraryView(0) + 24));
  v15 = 3;
  if (v13 < v11)
  {
    v15 = 4;
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 2;
  }

  *v6 = xmmword_100014EE0;
  (*(v4 + 104))(v6, enum case for GridItem.Size.flexible(_:), v3);
  GridItem.init(_:spacing:alignment:)();
  sub_10000EC34(v9, v16);
  v19 = a1;
  static HorizontalAlignment.center.getter();
  v20 = 0;
  sub_10000F768(&qword_100021088, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_100002120(&qword_100021090, &qword_100014FE8);
  sub_10000F624();
  return LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
}

uint64_t sub_10000E3F0(uint64_t *a1)
{
  type metadata accessor for PhotoLibrary(0);
  sub_10000F768(&qword_100020FD8, type metadata accessor for PhotoLibrary, "ف");
  v1 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100002120(&qword_1000210B8, &unk_100015040);
  sub_1000095F0();
  sub_100002220(&qword_1000210A0, &qword_100014FF0);
  type metadata accessor for PlainButtonStyle();
  sub_100002440(&qword_1000210A8, &qword_1000210A0, &qword_100014FF0, &protocol conformance descriptor for NavigationLink<A, B>);
  sub_10000F768(&qword_1000210B0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  swift_getOpaqueTypeConformance2();
  sub_10000F7B8();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10000E604(void **a1)
{
  v2 = type metadata accessor for PlainButtonStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002120(&qword_1000210A0, &qword_100014FF0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - v8;
  v10 = *a1;
  v19 = 0;
  v11 = v10;
  sub_100002120(&qword_100020900, &qword_1000144D8);
  State.init(wrappedValue:)();
  v15 = *v17;
  v19 = 0;
  sub_100002120(&qword_100020A48, &qword_100015050);
  State.init(wrappedValue:)();
  v14 = *v17;
  KeyPath = swift_getKeyPath();
  v17[0] = v11;
  *&v17[3] = v14;
  *&v17[1] = v15;
  v17[5] = KeyPath;
  v18 = 0;
  v16 = v11;
  sub_10000F820();
  sub_10000F874();
  NavigationLink.init(destination:label:)();
  PlainButtonStyle.init()();
  sub_100002440(&qword_1000210A8, &qword_1000210A0, &qword_100014FF0, &protocol conformance descriptor for NavigationLink<A, B>);
  sub_10000F768(&qword_1000210B0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10000E8F0(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002120(&qword_1000207F8, &qword_100014EF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for FinishLaunchTestAction();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PhotoLibraryView(0);
  sub_10000F5AC(a1 + *(v13 + 20), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  FinishLaunchTestAction.callAsFunction()();
  return (*(v10 + 8))(v12, v9);
}

void PhotoLibraryView.init()(uint64_t a1@<X8>)
{
  *a1 = sub_10000D608;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = type metadata accessor for PhotoLibraryView(0);
  v3 = *(v2 + 20);
  *(a1 + v3) = swift_getKeyPath();
  sub_100002120(&qword_1000207F8, &qword_100014EF0);
  swift_storeEnumTagMultiPayload();
  v4 = *(v2 + 24);
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  *(a1 + v4) = v6 == 1;
}

char *sub_10000EC34(char *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = type metadata accessor for GridItem();
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v5 + 2) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(&v5[v7], v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = &v5[v10 + v7];
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = &_swiftEmptyArrayStorage;
    }

    v12 = type metadata accessor for GridItem();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

uint64_t sub_10000EDB0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10000E058(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10000E0D0(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_10000F8D0;
  a2[1] = v7;
  return result;
}

uint64_t sub_10000EECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100002120(&qword_100020F60, &qword_100014F78);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000EF94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = sub_100002120(&qword_100020F60, &qword_100014F78);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10000F040(uint64_t a1)
{
  sub_10000F0CC(319);
  if (v1 <= 0x3F)
  {
    sub_10000F160(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000F0CC(uint64_t a1)
{
  if (!qword_100020FD0)
  {
    type metadata accessor for PhotoLibrary(255);
    sub_10000F768(&qword_100020FD8, type metadata accessor for PhotoLibrary, "ف");
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100020FD0);
    }
  }
}

void sub_10000F160(uint64_t a1)
{
  if (!qword_100020FE0)
  {
    type metadata accessor for FinishLaunchTestAction();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100020FE0);
    }
  }
}

uint64_t sub_10000F1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PhotoLibraryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000D780(a1, v6, a2);
}

unint64_t sub_10000F284()
{
  result = qword_100021078;
  if (!qword_100021078)
  {
    sub_100002220(&qword_100021040, &qword_100014FB8);
    sub_100002220(&qword_100021030, &qword_100014FA8);
    sub_100002220(&qword_100021028, &qword_100014FA0);
    sub_100002440(&qword_100021068, &qword_100021028, &qword_100014FA0, &protocol conformance descriptor for ScrollView<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021078);
  }

  return result;
}

uint64_t sub_10000F3C4(uint64_t a1)
{
  v2 = sub_100002120(&qword_100021040, &qword_100014FB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000F42C()
{
  v1 = (type metadata accessor for PhotoLibraryView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  sub_10000E0C0(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  v5 = v1[7];
  sub_100002120(&qword_1000207F8, &qword_100014EF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for FinishLaunchTestAction();
    (*(*(v6 - 8) + 8))(v0 + v4 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_10000F54C()
{
  v1 = *(type metadata accessor for PhotoLibraryView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10000E8F0(v2);
}

uint64_t sub_10000F5AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002120(&qword_1000207F8, &qword_100014EF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000F624()
{
  result = qword_100021098;
  if (!qword_100021098)
  {
    sub_100002220(&qword_100021090, &qword_100014FE8);
    sub_100002220(&qword_1000210A0, &qword_100014FF0);
    type metadata accessor for PlainButtonStyle();
    sub_100002440(&qword_1000210A8, &qword_1000210A0, &qword_100014FF0, &protocol conformance descriptor for NavigationLink<A, B>);
    sub_10000F768(&qword_1000210B0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021098);
  }

  return result;
}

uint64_t sub_10000F768(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000F7B8()
{
  result = qword_1000210C0;
  if (!qword_1000210C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000210C0);
  }

  return result;
}

id sub_10000F814@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

unint64_t sub_10000F820()
{
  result = qword_1000210C8;
  if (!qword_1000210C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000210C8);
  }

  return result;
}

unint64_t sub_10000F874()
{
  result = qword_1000210D0;
  if (!qword_1000210D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000210D0);
  }

  return result;
}

uint64_t sub_10000F8D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

char *sub_10000F948()
{
  v1 = OBJC_IVAR____TtC15ClarityPhotosUI12PhotoLibrary_photoLibrary;
  v2 = [objc_opt_self() sharedPhotoLibrary];
  *&v0[v1] = v2;
  v3 = v2;
  v4 = sub_100011F58();

  swift_beginAccess();
  v10 = v4;
  Published.init(initialValue:)();
  swift_endAccess();
  v9.receiver = v0;
  v9.super_class = type metadata accessor for PhotoLibrary(0);
  v5 = objc_msgSendSuper2(&v9, "init");
  v6 = *&v5[OBJC_IVAR____TtC15ClarityPhotosUI12PhotoLibrary_photoLibrary];
  v7 = v5;
  [v6 registerChangeObserver:v7];
  sub_100012A28();

  return v7;
}

id sub_10000FA60()
{
  [*&v0[OBJC_IVAR____TtC15ClarityPhotosUI12PhotoLibrary_photoLibrary] unregisterChangeObserver:v0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoLibrary(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PhotoLibrary(uint64_t a1)
{
  result = qword_100021170;
  if (!qword_100021170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000FBF8(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000207C8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  sub_100002A18(v9, qword_100021CA8);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v14, "makePhotoCollection", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10000FE84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [a1 localIdentifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  swift_beginAccess();
  v9 = *(a4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1000114DC(0, *(v9 + 2) + 1, 1, v9);
    *(a4 + 16) = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1000114DC((v11 > 1), v12 + 1, 1, v9);
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[16 * v12];
  *(v13 + 4) = v6;
  *(v13 + 5) = v8;
  *(a4 + 16) = v9;
  return swift_endAccess();
}

void sub_10000FF78(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_10000FFFC()
{
  v1 = v0;
  v2 = sub_100002120(&qword_100021188, &qword_100015108);
  __chkstk_darwin(v2 - 8);
  v4 = v12 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v12[1];
  sub_100002B30(0, &qword_100021190, PHAsset_ptr);
  v6 = PHChange.changeDetails<A>(for:)();

  if (v6)
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    type metadata accessor for MainActor();
    v8 = v6;
    v9 = v1;
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v8;
    v11[5] = v9;
    sub_10001090C(0, 0, v4, &unk_100015160, v11);
  }
}

uint64_t sub_1000101B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = type metadata accessor for IndexSet.Index();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = sub_100002120(&qword_100021198, &qword_100015180);
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for IndexSet();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  sub_100002120(&qword_1000211A0, &qword_100015188);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[19] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100010388, v9, v8);
}

uint64_t sub_100010388()
{
  v1 = *(v0 + 56);

  if (![v1 hasIncrementalChanges])
  {
    goto LABEL_7;
  }

  v2 = [*(v0 + 56) insertedIndexes];
  v3 = *(v0 + 144);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  if (v2)
  {
    v6 = v2;
    static IndexSet._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 56))(v3, 0, 1, v4);
LABEL_6:
    sub_1000055B4(v3, &qword_1000211A0, &qword_100015188);
LABEL_7:
    if (qword_1000207C0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100002A18(v12, qword_100021C90);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Updating photo collection for photo library change.", v15, 2u);
    }

    v16 = *(v0 + 56);
    v17 = *(v0 + 64);

    v18 = [v16 fetchResultAfterChanges];
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 48) = v18;
    v19 = v17;
    static Published.subscript.setter();
    goto LABEL_12;
  }

  v7 = *(v0 + 56);
  v8 = *(v5 + 56);
  v8(*(v0 + 144), 1, 1, *(v0 + 112));
  sub_1000055B4(v3, &qword_1000211A0, &qword_100015188);
  v9 = [v7 removedIndexes];
  v3 = *(v0 + 136);
  v10 = *(v0 + 112);
  if (v9)
  {
    v11 = v9;
    static IndexSet._unconditionallyBridgeFromObjectiveC(_:)();

    v8(v3, 0, 1, v10);
    goto LABEL_6;
  }

  v22 = *(v0 + 56);
  v8(*(v0 + 136), 1, 1, *(v0 + 112));
  sub_1000055B4(v3, &qword_1000211A0, &qword_100015188);
  v23 = [v22 changedIndexes];
  if (v23)
  {
    v24 = *(v0 + 80);
    v25 = v23;
    static IndexSet._unconditionallyBridgeFromObjectiveC(_:)();

    IndexSet.makeIterator()();
    v43 = (v24 + 8);
    sub_100011494(&qword_1000211A8, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
    while (1)
    {
      v26 = *(v0 + 88);
      v27 = *(v0 + 72);
      dispatch thunk of Collection.endIndex.getter();
      sub_100011494(&unk_1000211B0, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v43)(v26, v27);
      if (v28)
      {
        break;
      }

      v29 = *(v0 + 56);
      v30 = dispatch thunk of Collection.subscript.read();
      v32 = *v31;
      v30(v0 + 16, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v33 = [v29 fetchResultBeforeChanges];
      v34 = [v33 objectAtIndexedSubscript:v32];

      v35 = [v29 fetchResultAfterChanges];
      v36 = [v35 objectAtIndexedSubscript:v32];

      sub_100002B30(0, &qword_100021190, PHAsset_ptr);
      LOBYTE(v35) = static NSObject.== infix(_:_:)();

      if ((v35 & 1) == 0)
      {
        v38 = *(v0 + 120);
        v37 = *(v0 + 128);
        v39 = *(v0 + 112);
        sub_1000055B4(*(v0 + 104), &qword_100021198, &qword_100015180);
        (*(v38 + 8))(v37, v39);
        goto LABEL_7;
      }
    }

    v41 = *(v0 + 120);
    v40 = *(v0 + 128);
    v42 = *(v0 + 112);
    sub_1000055B4(*(v0 + 104), &qword_100021198, &qword_100015180);
    (*(v41 + 8))(v40, v42);
  }

LABEL_12:

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10001090C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002120(&qword_100021188, &qword_100015108);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001108C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000055B4(v11, &qword_100021188, &qword_100015108);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
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

      sub_1000055B4(a3, &qword_100021188, &qword_100015108);

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

  sub_1000055B4(a3, &qword_100021188, &qword_100015108);
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

void sub_100010C64(uint64_t a1)
{
  sub_100010D00();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100010D00()
{
  if (!qword_100021180)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100021180);
    }
  }
}

uint64_t sub_100010D50@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotoLibrary(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void sub_100010D90(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_100010E14(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_100010E90()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100010ED8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100010F98;

  return sub_1000101B8(a1, v4, v5, v7, v6);
}

uint64_t sub_100010F98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001108C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002120(&qword_100021188, &qword_100015108);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000110FC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000111F4;

  return v6(a1);
}

uint64_t sub_1000111F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000112EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100011324(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100012DB4;

  return sub_1000110FC(a1, v4);
}

uint64_t sub_1000113DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100010F98;

  return sub_1000110FC(a1, v4);
}

uint64_t sub_100011494(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1000114DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002120(&qword_100021200, &qword_1000151B0);
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

uint64_t sub_1000115E8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100011694(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100011A44(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void sub_1000117E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100002120(&qword_1000211F8, &qword_1000151A8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100011A44(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000117E4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100011BC4();
      goto LABEL_16;
    }

    sub_100011D20(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100011BC4()
{
  v1 = v0;
  sub_100002120(&qword_1000211F8, &qword_1000151A8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
}

void sub_100011D20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100002120(&qword_1000211F8, &qword_1000151A8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
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
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

id sub_100011F58()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v72 - v5;
  if (qword_1000207C8 == -1)
  {
    goto LABEL_2;
  }

LABEL_38:
  swift_once();
LABEL_2:
  v7 = type metadata accessor for OSSignposter();
  sub_100002A18(v7, qword_100021CA8);
  static OSSignpostID.exclusive.getter();
  v8 = OSSignposter.logHandle.getter();
  v9 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, v9, v11, "makePhotoCollection", "", v10, 2u);
  }

  (*(v1 + 16))(v4, v6, v0);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v12 = OSSignpostIntervalState.init(id:isOpen:)();
  v13 = *(v1 + 8);
  v1 += 8;
  v13(v6, v0);
  v14 = [objc_allocWithZone(PHFetchOptions) init];
  [v14 setIncludeAssetSourceTypes:5];
  sub_100002B30(0, &qword_1000211C0, CLFPhotosSettings_ptr);
  v15 = [swift_getObjCClassFromMetadata() sharedInstance];
  if (![v15 includeSharedAlbums])
  {

    goto LABEL_36;
  }

  v16 = [v15 selectedSharedAlbumCloudIdentifiers];

  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v17 + 16))
  {

    goto LABEL_36;
  }

  v79 = v17;
  v73 = v15;
  v75 = v12;
  v18 = swift_allocObject();
  *(v18 + 16) = &_swiftEmptyArrayStorage;
  v19 = objc_opt_self();
  v74 = v14;
  v20 = [v19 fetchAssetCollectionsWithType:1 subtype:101 options:v14];
  aBlock[4] = sub_100012CBC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000FF78;
  aBlock[3] = &unk_10001DD10;
  v21 = _Block_copy(aBlock);
  v72 = v18;

  [v20 enumerateObjectsUsingBlock:v21];
  _Block_release(v21);

  swift_beginAccess();
  v4 = *(v18 + 16);

  v22 = PHPhotoLibrary.cloudIdentifierMappings(forLocalIdentifiers:)();

  v24 = 0;
  v25 = 0;
  v27 = v22 + 64;
  v26 = *(v22 + 64);
  v81 = v22;
  v28 = 1 << *(v22 + 32);
  v83[2] = &_swiftEmptySetSingleton;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v0 = v29 & v26;
  v6 = ((v28 + 63) >> 6);
  *&v23 = 136315394;
  v76 = v23;
  if ((v29 & v26) != 0)
  {
    while (2)
    {
      v32 = v24;
LABEL_19:
      v33 = __clz(__rbit64(v0));
      v0 &= v0 - 1;
      v34 = (v32 << 10) | (16 * v33);
      v35 = (*(v81 + 48) + v34);
      v36 = *v35;
      v1 = v35[1];
      v37 = *(v81 + 56) + v34;
      v38 = *v37;
      v39 = *(v37 + 8);

      v82 = v36;
      if (v39)
      {
        sub_100012CDC(v38, 1);
        if (qword_1000207C0 != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_100002A18(v40, qword_100021C90);

        sub_100012CDC(v38, 1);
        v4 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v4, v41))
        {
          v42 = swift_slowAlloc();
          v77 = v4;
          v4 = v42;
          v43 = swift_slowAlloc();
          v80 = v25;
          v44 = v43;
          v78 = swift_slowAlloc();
          v83[0] = v78;
          *v4 = v76;
          v45 = sub_100002B78(v82, v1, v83);

          *(v4 + 4) = v45;
          *(v4 + 12) = 2112;
          v46 = _swift_stdlib_bridgeErrorToNSError();
          *(v4 + 14) = v46;
          *v44 = v46;
          v47 = v77;
          _os_log_impl(&_mh_execute_header, v77, v41, "Error fetching album cloud identifier for local identifier: %s. Error: %@.", v4, 0x16u);
          sub_1000055B4(v44, &qword_100020AE8, &qword_100014760);
          v25 = v80;

          sub_100003120(v78);
        }

        else
        {

          sub_100012CE8(v38, 1);
        }

        v30 = v38;
        v31 = 1;
        goto LABEL_14;
      }

      sub_100012CDC(v38, 0);
      v48 = [v38 stringValue];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v80 = v38;
      v83[0] = v49;
      v83[1] = v51;
      __chkstk_darwin(v52);
      *(&v72 - 2) = v83;
      v4 = sub_1000115E8(sub_100012CF4, (&v72 - 4), v79);

      if (v4)
      {
        sub_100011694(v83, v82, v1);
        sub_100012CE8(v80, 0);

        v24 = v32;
        if (v0)
        {
          continue;
        }
      }

      else
      {

        v30 = v80;
        v31 = 0;
LABEL_14:
        sub_100012CE8(v30, v31);
        v24 = v32;
        if (v0)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v32 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v32 >= v6)
    {
      break;
    }

    v0 = *(v27 + 8 * v32);
    ++v24;
    if (v0)
    {
      goto LABEL_19;
    }
  }

  v53 = objc_opt_self();
  isa = Set._bridgeToObjectiveC()().super.isa;

  v55 = [v53 uuidsFromLocalIdentifiers:isa];

  if (v55)
  {
    v56 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100002B30(0, &qword_1000211D8, NSPredicate_ptr);
    sub_100002120(&qword_1000211E0, &qword_100015198);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1000150A0;
    *(v57 + 56) = sub_100002120(&qword_1000211E8, &qword_1000151A0);
    *(v57 + 64) = sub_100012D4C();
    *(v57 + 32) = v56;
    v58 = NSPredicate.init(format:_:)();
    v14 = v74;
    [v74 setInternalInclusionPredicate:v58];

    v12 = v75;
    v15 = v73;
  }

  else
  {
    v14 = v74;
    v12 = v75;
    v15 = v73;
    if (qword_1000207C0 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_100002A18(v59, qword_100021C90);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Unable to get UUIDs from shared album local identifiers.", v62, 2u);
    }
  }

LABEL_36:
  sub_100002120(&qword_1000211C8, &qword_100015190);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1000150B0;
  v64 = objc_allocWithZone(NSSortDescriptor);
  v65 = String._bridgeToObjectiveC()();
  v66 = [v64 initWithKey:v65 ascending:1];

  *(v63 + 32) = v66;
  sub_100002B30(0, &qword_1000211D0, NSSortDescriptor_ptr);
  v67 = Array._bridgeToObjectiveC()().super.isa;

  [v14 setSortDescriptors:v67];

  v68 = objc_opt_self();
  v69 = v14;
  v70 = [v68 fetchAssetsWithOptions:v69];

  sub_10000FBF8(v12);

  return v70;
}

void sub_100012A28()
{
  v0 = [objc_opt_self() sharedInstance];
  v11 = 0;
  v1 = [v0 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeDefault options:0 error:&v11];

  v2 = v11;
  if (v1)
  {

    v3 = v2;
  }

  else
  {
    v4 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1000207C0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100002A18(v5, qword_100021C90);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error setting AVAudioSession playback category. Error: %@.", v8, 0xCu);
      sub_1000055B4(v9, &qword_100020AE8, &qword_100014760);
    }

    else
    {
    }
  }
}

uint64_t sub_100012C84()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100012CC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_100012CDC(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_100012CE8(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100012CF4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_100012D4C()
{
  result = qword_1000211F0;
  if (!qword_1000211F0)
  {
    sub_100002220(&qword_1000211E8, &qword_1000151A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000211F0);
  }

  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}