void sub_100014CE4(uint64_t a1, unint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_identFlatList];
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v5 + 40);
    while (1)
    {
      v9 = *(v8 - 1) == a1 && *v8 == a2;
      if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v7;
      v8 += 2;
      if (v6 == v7)
      {
        goto LABEL_9;
      }
    }

    sub_100015074(*&v2[OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_parentIdent], *&v2[OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_parentIdent + 8], &v23);
    if (v24)
    {
      v25[0] = v23;
      v25[1] = v24;
      sub_1000070C0(v25, v22, &qword_10003AD28, &qword_1000289D0);
      sub_100007128(&v23, &qword_10003ACB0, &qword_100028E20);
      if (v7 > 0xFF)
      {
        __break(1u);
        goto LABEL_27;
      }

      dispatch thunk of CAFCameraButtonObservable.selectedEntryIndex.setter();
      sub_100007128(v25, &qword_10003AD28, &qword_1000289D0);
    }

    if (qword_10003A258 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000036BC(v17, qword_10003CE48);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_22;
    }

    v20 = swift_slowAlloc();
    *v20 = 16777472;
    if (v7 <= 0xFF)
    {
      if ((((v7 + 1) >> 8) & 1) == 0)
      {
        v20[4] = v7 + 1;
        _os_log_impl(&_mh_execute_header, v18, v19, "[CameraButtonGroup] promoteChild updating selectedEntryIndex %hhu", v20, 5u);

LABEL_22:

        return;
      }

      goto LABEL_28;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

LABEL_9:
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000036BC(v10, qword_10003CE48);

  v11 = v2;
  oslog = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_10000B720(a1, a2, &v23);
    *(v13 + 12) = 2080;
    v14 = Array.description.getter();
    v16 = sub_10000B720(v14, v15, &v23);

    *(v13 + 14) = v16;
    _os_log_impl(&_mh_execute_header, oslog, v12, "[CameraButtonGroup] promoteChild failed finding child %s in parent child list %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_100015074(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *&v3[OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_model];
  v8 = OBJC_IVAR____TtC9CarCamera11CameraModel_buttonDict;
  swift_beginAccess();
  v9 = *(v7 + v8);
  if (!*(v9 + 16))
  {
LABEL_5:
    v28 = OBJC_IVAR____TtC9CarCamera11CameraModel_serviceDict;
    swift_beginAccess();
    v29 = *(v7 + v28);
    if (*(v29 + 16))
    {

      v30 = sub_10000F838(a1, a2);
      if (v31)
      {
        v47 = *(*(v29 + 56) + 8 * v30);

        sub_100015CC0();
        sub_100015D14(&qword_10003AF80, sub_100015CC0, &protocol conformance descriptor for CAFCameraButton);
        CAFObserved<>.observable.getter();
        type metadata accessor for ButtonBarLayout(0);
        sub_100015D14(&qword_10003A598, type metadata accessor for ButtonBarLayout, &unk_100029298);
        *&v49 = EnvironmentObject.init()();
        *(&v49 + 1) = v32;
        KeyPath = swift_getKeyPath();
        type metadata accessor for CameraModel(0);
        sub_100015D14(&qword_10003AE98, type metadata accessor for CameraModel, &unk_100028428);
        v33 = EnvironmentObject.init()();
        v46 = v34;
        v35 = v34;
        type metadata accessor for CAFCameraButtonObservable();
        sub_100015D14(&qword_10003AF88, &type metadata accessor for CAFCameraButtonObservable, &protocol conformance descriptor for CAFCameraButtonObservable);
        v36 = v4;
        v45 = ObservedObject.init(wrappedValue:)();
        v18 = v37;
        State.init(wrappedValue:)();
        v44 = a2;
        v26 = *(&v56 + 1);
        *&v52[0] = v45;
        *(&v52[0] + 1) = v18;
        v52[1] = v49;
        *&v53 = KeyPath;
        BYTE8(v53) = 0;
        *&v54 = v33;
        *(&v54 + 1) = v35;
        *v55 = v4;
        v55[8] = v56;
        *&v55[16] = *(&v56 + 1);
        v55[24] = 0;
        v56 = v52[0];
        v57 = v49;
        *&v60[9] = *&v55[9];
        v59 = v54;
        *v60 = *v55;
        v58 = v53;
        v22 = *(&v53 + 1);
        v25 = *&v55[8];
        swift_beginAccess();
        sub_10000695C(v52, v51);
        sub_10000695C(v52, v51);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51[0] = *(v7 + v8);
        *(v7 + v8) = 0x8000000000000000;
        sub_100016648(&v56, a1, v44, isUniquelyReferenced_nonNull_native);

        *(v7 + v8) = v51[0];
        swift_endAccess();

        sub_100009C64(v52);
        v17 = v45;
        v24 = v46;
        v23 = v33;
        v21 = KeyPath;
        v20 = *(&v49 + 1);
        v19 = v49;
LABEL_14:
        v27 = 0;
        goto LABEL_15;
      }
    }

    if (qword_10003A258 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000036BC(v39, qword_10003CE48);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v56 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_10000B720(a1, a2, &v56);
      _os_log_impl(&_mh_execute_header, v40, v41, "[CameraButtonGroup] button failed  %s", v42, 0xCu);
      sub_100008EDC(v43);
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v4 = 0;
    v25 = 0;
    v26 = 0;
    goto LABEL_14;
  }

  v10 = sub_10000F838(a1, a2);
  if ((v11 & 1) == 0)
  {

    goto LABEL_5;
  }

  v12 = (*(v9 + 56) + 96 * v10);
  v13 = v12[1];
  v56 = *v12;
  v57 = v13;
  v15 = v12[3];
  v14 = v12[4];
  v16 = v12[2];
  *&v60[9] = *(v12 + 73);
  v59 = v15;
  *v60 = v14;
  v58 = v16;
  sub_10000695C(&v56, v52);

  v18 = *(&v56 + 1);
  v17 = v56;
  v20 = *(&v57 + 1);
  v19 = v57;
  v22 = *(&v58 + 1);
  v21 = v58;
  v24 = *(&v59 + 1);
  v23 = v59;
  v4 = *v60;
  v25 = *&v60[8];
  v26 = *&v60[16];
  v27 = v60[24];
LABEL_15:
  *a3 = v17;
  *(a3 + 8) = v18;
  *(a3 + 16) = v19;
  *(a3 + 24) = v20;
  *(a3 + 32) = v21;
  *(a3 + 40) = v22;
  *(a3 + 48) = v23;
  *(a3 + 56) = v24;
  *(a3 + 64) = v4;
  *(a3 + 72) = v25;
  *(a3 + 80) = v26;
  *(a3 + 88) = v27;
}

uint64_t sub_1000155CC(uint64_t a1, unint64_t a2)
{
  if (!*(*(v2 + OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_childrenIdents) + 16))
  {
    if (qword_10003A258 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000036BC(v16, qword_10003CE48);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_16;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10000B720(a1, a2, &v19);
    v15 = "[CameraButtonGroup] menu group has no children %s";
    goto LABEL_15;
  }

  sub_10001441C(&v19);
  v5 = dispatch thunk of CAFCameraButtonObservable.identifier.getter();
  v7 = v6;
  sub_100009C64(&v19);
  if (v5 == a1 && v7 == a2)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      if (qword_10003A258 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_1000036BC(v10, qword_10003CE48);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_16;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_10000B720(a1, a2, &v18);
      v15 = "[CameraButtonGroup] already showing children of %s";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v11, v12, v15, v13, 0xCu);
      sub_100008EDC(v14);

LABEL_16:

      return 0;
    }
  }

  return 1;
}

id sub_100015890(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CameraButtonGroup();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100015958@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CameraButtonGroup();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

char *sub_100015994(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000026FC(&qword_10003A588, &qword_100028000);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100015AB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000026FC(&qword_10003AF98, &qword_1000289E0);
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

char *sub_100015BB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000026FC(&qword_10003AF90, &qword_1000289D8);
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

unint64_t sub_100015CC0()
{
  result = qword_10003ACF8;
  if (!qword_10003ACF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003ACF8);
  }

  return result;
}

uint64_t sub_100015D14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100015D5C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100015DE8(v3);
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

char *sub_100015DFC(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100015994(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100015EF4(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100015BB4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Int sub_100015FE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000026FC(&qword_10003ACE8, &qword_100028488);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v39 = v5;
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
      v25 = *(v5 + 56) + 96 * v21;
      if (v40)
      {
        v43 = *v25;
        v44 = *(v25 + 16);
        v41 = *(v25 + 8);
        v42 = *(v25 + 24);
        v46 = *(v25 + 32);
        v26 = *(v25 + 40);
        v45 = *(v25 + 56);
        v48 = *(v25 + 64);
        v49 = *(v25 + 48);
        v47 = *(v25 + 80);
        v50 = *(v25 + 88);
        v51 = *(v25 + 72);
      }

      else
      {
        v27 = *(v25 + 32);
        v28 = *(v25 + 48);
        v29 = *(v25 + 64);
        *&v55[9] = *(v25 + 73);
        v54 = v28;
        *v55 = v29;
        v53[2] = v27;
        v30 = *(v25 + 16);
        v53[0] = *v25;
        v53[1] = v30;
        v50 = v55[24];
        v51 = BYTE8(v29);
        v47 = *&v55[16];
        v48 = v29;
        v45 = *(&v54 + 1);
        v49 = v54;
        v46 = v27;
        v26 = BYTE8(v27);
        v43 = *&v53[0];
        v44 = v30;
        v41 = *(&v53[0] + 1);
        v42 = *(&v30 + 1);

        sub_10000695C(v53, v52);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v7 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(v53[0]) = v26;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 96 * v15;
      *v17 = v43;
      *(v17 + 8) = v41;
      *(v17 + 16) = v44;
      *(v17 + 24) = v42;
      *(v17 + 32) = v46;
      *(v17 + 40) = v26;
      *(v17 + 48) = v49;
      *(v17 + 56) = v45;
      *(v17 + 64) = v48;
      *(v17 + 72) = v51;
      *(v17 + 80) = v47;
      *(v17 + 88) = v50;
      ++*(v7 + 16);
      v5 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_1000163A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000026FC(&qword_10003ACE0, &qword_100028480);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_100016648(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000F838(a2, a3);
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
      sub_100015FE8(v16, a4 & 1);
      v11 = sub_10000F838(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1000167E8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 96 * v11;

    return sub_1000169B8(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + 96 * v11);
  v26 = a1[1];
  *v25 = *a1;
  v25[1] = v26;
  v27 = a1[2];
  v28 = a1[3];
  v29 = a1[4];
  *(v25 + 73) = *(a1 + 73);
  v25[3] = v28;
  v25[4] = v29;
  v25[2] = v27;
  v30 = v21[2];
  v15 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v31;
}

void *sub_1000167E8()
{
  v1 = v0;
  sub_1000026FC(&qword_10003ACE8, &qword_100028488);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_10000695C(&v33, &v32))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = *(v2 + 56);
      v19 = (*(v2 + 48) + 16 * v16);
      v21 = *v19;
      v20 = v19[1];
      v16 *= 96;
      v22 = *(v18 + v16 + 32);
      v23 = *(v18 + v16 + 48);
      v24 = *(v18 + v16 + 64);
      *(v37 + 9) = *(v18 + v16 + 73);
      v36 = v23;
      v37[0] = v24;
      v25 = *(v18 + v16 + 16);
      v33 = *(v18 + v16);
      v34 = v25;
      v35 = v22;
      v26 = (*(v4 + 48) + v17);
      *v26 = v21;
      v26[1] = v20;
      v27 = (*(v4 + 56) + v16);
      v28 = v34;
      *v27 = v33;
      v27[1] = v28;
      v29 = v35;
      v30 = v36;
      v31 = v37[0];
      *(v27 + 73) = *(v37 + 9);
      v27[3] = v30;
      v27[4] = v31;
      v27[2] = v29;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

id sub_100016A14()
{
  v1 = v0;
  sub_1000026FC(&qword_10003ACE0, &qword_100028480);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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

        result = v20;
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

  return result;
}

id sub_100016BA8(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000036BC(v10, qword_10003CE48);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10000B720(a1, a2, &v21);
    _os_log_impl(&_mh_execute_header, v11, v12, "[CameraButtonGroup] init %s", v13, 0xCu);
    sub_100008EDC(v14);
  }

  *&v5[OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_model] = a4;
  v15 = &v5[OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_parentIdent];
  *v15 = a1;
  *(v15 + 1) = a2;
  *&v5[OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_childrenIdents] = a3;
  sub_1000026FC(&qword_10003AF90, &qword_1000289D8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100028940;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  v21 = v16;

  v17 = a4;

  sub_100015EF4(v18);
  *&v5[OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_identFlatList] = v21;
  v20.receiver = v5;
  v20.super_class = type metadata accessor for CameraButtonGroup();
  return objc_msgSendSuper2(&v20, "init");
}

uint64_t sub_100016DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100016E80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CameraCloseButton(uint64_t a1)
{
  result = qword_10003AFF8;
  if (!qword_10003AFF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100016F70(uint64_t a1)
{
  sub_100017038(319);
  if (v1 <= 0x3F)
  {
    sub_1000170CC(319);
    if (v2 <= 0x3F)
    {
      sub_100017160();
      if (v3 <= 0x3F)
      {
        type metadata accessor for UUID();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100017038(uint64_t a1)
{
  if (!qword_10003B008)
  {
    type metadata accessor for CAFCameraGeneralObservable();
    sub_10001D7CC(&qword_10003AD18, &type metadata accessor for CAFCameraGeneralObservable, &protocol conformance descriptor for CAFCameraGeneralObservable);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_10003B008);
    }
  }
}

void sub_1000170CC(uint64_t a1)
{
  if (!qword_10003B010)
  {
    type metadata accessor for LayoutSize();
    sub_10001D7CC(&qword_10003AD10, type metadata accessor for LayoutSize, &unk_100029260);
    v1 = type metadata accessor for EnvironmentObject();
    if (!v2)
    {
      atomic_store(v1, &qword_10003B010);
    }
  }
}

void sub_100017160()
{
  if (!qword_10003B018)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10003B018);
    }
  }
}

__n128 sub_1000171C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000171E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_10001722C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1000172B0@<X0>(_BYTE *a1@<X8>)
{
  sub_100001DCC();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

void sub_100017370()
{
  v1 = v0;
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000036BC(v2, qword_10003CE48);
  sub_10000695C(v0, v35);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  sub_100009C64(v0);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v35[0] = v6;
    *v5 = 136315138;
    v7 = dispatch thunk of CAFCameraButtonObservable.identifier.getter();
    v9 = sub_10000B720(v7, v8, v35);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[CameraActionButton] %s sending action", v5, 0xCu);
    sub_100008EDC(v6);
  }

  v10 = CAFCameraButtonObservable.observed.getter();
  v11 = [v10 hasButtonAction];

  if (v11)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "[CameraActionButton] sendAction to vehicle with .performAction", v14, 2u);
    }

    dispatch thunk of CAFCameraButtonObservable.buttonAction.setter();
    return;
  }

  v15 = dispatch thunk of CAFCameraButtonObservable.contentURLAction.getter();
  if (!v16)
  {
LABEL_23:
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "[CameraActionButton] nothing to do";
LABEL_29:
      _os_log_impl(&_mh_execute_header, v31, v32, v34, v33, 2u);
    }

LABEL_30:

    return;
  }

  v17 = v15;
  v18 = v16;
  v19 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v19 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {

    goto LABEL_23;
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v35[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_10000B720(v17, v18, v35);
    _os_log_impl(&_mh_execute_header, v20, v21, "[CameraActionButton] RequestContent URL button pressed (URL: %s)", v22, 0xCu);
    sub_100008EDC(v23);
  }

  v24 = [objc_opt_self() sharedApplication];
  v25 = [v24 connectedScenes];

  sub_10001C23C();
  sub_10001D7CC(&qword_10003B120, sub_10001C23C, &protocol conformance descriptor for NSObject);
  v26 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = sub_1000193BC(v26);

  if (!v27)
  {

    goto LABEL_27;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

LABEL_27:
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "[CameraActionButton] RequestContent failed, missing window scene.";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (qword_10003A298 != -1)
  {
    swift_once();
  }

  if (*(qword_10003CEB8 + OBJC_IVAR____TtC9CarCamera16CameraCAFManager_requestContentManager))
  {
    v28 = swift_allocObject();
    *(v28 + 16) = v17;
    *(v28 + 24) = v18;
    v29 = v1[3];
    *(v28 + 64) = v1[2];
    *(v28 + 80) = v29;
    *(v28 + 96) = v1[4];
    *(v28 + 105) = *(v1 + 73);
    v30 = v1[1];
    *(v28 + 32) = *v1;
    *(v28 + 48) = v30;
    sub_10000695C(v1, v35);

    dispatch thunk of CAFUIRequestContentManager.open(contentURLString:in:completion:)();
  }
}

uint64_t sub_100017908(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x656C63726943;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0x80000001000297C0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x656C63726943;
  }

  if (*a2)
  {
    v6 = 0x80000001000297C0;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000179B0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100017A34(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100017AA4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100017B24@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1000354F0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100017B84(unint64_t *a1@<X8>)
{
  v2 = 0x80000001000297C0;
  v3 = 0x656C63726943;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

void *sub_100017BC4@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v7 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v5)
  {
    v11 = *(v8 + 20);
    v12 = enum case for RoundedCornerStyle.continuous(_:);
    v13 = type metadata accessor for RoundedCornerStyle();
    (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
    __asm { FMOV            V0.2D, #8.0 }

    *v10 = _Q0;
    RoundedRectangle.path(in:)();
    v23 = v25;
    v24 = v26;
    v19 = v27;
    result = sub_10001BF20(v10, &type metadata accessor for RoundedRectangle);
    v22 = v23;
    v21 = v24;
  }

  else
  {
    result = Circle.path(in:)();
    v21 = v26;
    v22 = v25;
    v19 = v27;
  }

  *a1 = v22;
  *(a1 + 16) = v21;
  *(a1 + 32) = v19;
  return result;
}

uint64_t (*sub_100017D54(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_100017DDC;
}

void sub_100017DDC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_100017E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001BF80();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100017E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001BF80();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100017EF0(uint64_t a1)
{
  v2 = sub_10001BF80();

  return Shape.body.getter(a1, v2);
}

uint64_t sub_100017F3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = sub_1000026FC(&qword_10003B090, &qword_100028D30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - v5;
  v7 = sub_1000026FC(&qword_10003B0E8, &qword_100028DB8);
  v8 = *(v7 - 8);
  v30 = v7;
  v31 = v8;
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = swift_allocObject();
  v12 = v2[3];
  v11[3] = v2[2];
  v11[4] = v12;
  v11[5] = v2[4];
  *(v11 + 89) = *(v2 + 73);
  v13 = v2[1];
  v11[1] = *v2;
  v11[2] = v13;
  v33 = v2;
  sub_10000695C(v2, &v38);
  sub_1000026FC(&qword_10003B098, &qword_100028D38);
  sub_10001A35C();
  Button.init(action:label:)();
  Solarium.init()();
  v14 = sub_1000026FC(&qword_10003B0F0, &qword_100028DC0);
  v15 = sub_100007210(&qword_10003B0C0, &qword_10003B090, &qword_100028D30, &protocol conformance descriptor for Button<A>);
  v38 = v3;
  v39 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.staticIf<A, B, C>(_:then:else:)();
  (*(v4 + 8))(v6, v3);
  v16 = sub_100018B04();
  v34 = v16 & 1;
  v17 = vdupq_n_s64(v16);
  *v17.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v17, xmmword_100028A00), vshlq_u64(v17, xmmword_1000289F0))), 0x1000100010001);
  v35 = vuzp1_s8(*v17.i8, *v17.i8).u32[0];
  v36 = BYTE5(v16) & 1;
  v37 = BYTE6(v16) & 1;
  v38 = v3;
  v39 = &type metadata for Solarium;
  v40 = v14;
  v41 = v3;
  v42 = v15;
  v43 = &protocol witness table for Solarium;
  v44 = OpaqueTypeConformance2;
  v45 = v15;
  swift_getOpaqueTypeConformance2();
  sub_10001A4C0();
  v18 = v32;
  v19 = v30;
  View.buttonStyle<A>(_:)();
  (*(v31 + 8))(v10, v19);
  LOBYTE(v6) = sub_100018B04();
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v6 & 1;
  v22 = (v18 + *(sub_1000026FC(&qword_10003B0F8, &qword_100028DC8) + 36));
  *v22 = KeyPath;
  v22[1] = sub_10001D830;
  v22[2] = v21;
  v23 = swift_allocObject();
  v24 = v2[3];
  v23[3] = v2[2];
  v23[4] = v24;
  v23[5] = v2[4];
  *(v23 + 89) = *(v2 + 73);
  v25 = v2[1];
  v23[1] = *v2;
  v23[2] = v25;
  v26 = (v18 + *(sub_1000026FC(&qword_10003B100, &qword_100028DD0) + 36));
  *v26 = sub_10001C068;
  v26[1] = v23;
  return sub_10000695C(v2, &v38);
}

void sub_1000183D8()
{
  v1 = v0;
  v2 = v0[3];
  v46 = v0[2];
  v47 = v2;
  v48[0] = v0[4];
  *(v48 + 9) = *(v0 + 73);
  v3 = v0[1];
  v44 = *v0;
  v45 = v3;
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000036BC(v4, qword_10003CE48);
  sub_10000695C(v0, v42);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  sub_100009C64(v0);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v42[0] = v8;
    *v7 = 136315138;
    v9 = dispatch thunk of CAFCameraButtonObservable.identifier.getter();
    v11 = sub_10000B720(v9, v10, v42);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "[CameraActionButton] performCameraAction entry [%s]", v7, 0xCu);
    sub_100008EDC(v8);
  }

  v12 = *(v0 + 2);
  if (!v12)
  {
    type metadata accessor for ButtonBarLayout(0);
    sub_10001D7CC(&qword_10003A598, type metadata accessor for ButtonBarLayout, &unk_100029298);
    EnvironmentObject.error()();
    __break(1u);
    return;
  }

  swift_beginAccess();
  v13 = *(v12 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  v14 = v13;
  static Published.subscript.getter(&v37);

  v42[2] = v39;
  v42[3] = v40;
  v43[0] = v41[0];
  *(v43 + 9) = *(v41 + 9);
  v42[0] = v37;
  v42[1] = v38;
  v15 = *(&v37 + 1);

  if (v15)
  {
    sub_100007128(v42, &qword_10003ACB0, &qword_100028E20);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "[CameraActionButton] performCameraAction exiting submenu, and sending action", v18, 2u);
    }

    sub_100017370();
    swift_beginAccess();
    v19 = *(v12 + 24);

    swift_getKeyPath();
    swift_getKeyPath();
    v40 = 0u;
    memset(v41, 0, 25);
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    static Published.subscript.setter();
    if (*(v1 + 64))
    {
      v20 = dispatch thunk of CAFCameraButtonObservable.identifier.getter();
      sub_100014CE4(v20, v21);
    }

    return;
  }

  v22 = *(v1 + 64);
  if (!v22)
  {
LABEL_17:

    sub_100017370();
    return;
  }

  v23 = v22;
  v24 = dispatch thunk of CAFCameraButtonObservable.identifier.getter();
  v26 = sub_1000155CC(v24, v25);

  if ((v26 & 1) == 0)
  {

    goto LABEL_17;
  }

  sub_10000695C(v1, &v37);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  sub_100009C64(v1);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v35 = v23;
    v30 = swift_slowAlloc();
    *&v37 = v30;
    *v29 = 136315138;
    v31 = dispatch thunk of CAFCameraButtonObservable.identifier.getter();
    v33 = sub_10000B720(v31, v32, &v37);

    *(v29 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v27, v28, "[CameraActionButton] performCameraAction service %s will reveal children", v29, 0xCu);
    sub_100008EDC(v30);
    v23 = v35;
  }

  swift_beginAccess();
  v34 = *(v12 + 24);

  swift_getKeyPath();
  swift_getKeyPath();
  v40 = v47;
  v41[0] = v48[0];
  *(v41 + 9) = *(v48 + 9);
  v37 = v44;
  v38 = v45;
  v39 = v46;
  sub_10000695C(v1, v36);
  static Published.subscript.setter();
}

int8x8_t sub_100018954@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of CAFCameraButtonObservable.symbolName.getter();
  Image.init(automakerSymbolName:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  v7 = sub_100018B04();
  KeyPath = swift_getKeyPath();
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = KeyPath;
  *(a1 + 32) = 0;
  *(a1 + 33) = v7 & 1;
  v9 = vdupq_n_s64(v7);
  *v9.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v9, xmmword_100028A00), vshlq_u64(v9, xmmword_1000289F0))), 0x1000100010001);
  result = vuzp1_s8(*v9.i8, *v9.i8);
  *(a1 + 34) = result.i32[0];
  *(a1 + 38) = BYTE5(v7) & 1;
  *(a1 + 39) = BYTE6(v7) & 1;
  return result;
}

unint64_t sub_100018B04()
{
  v1 = v0;
  v2 = dispatch thunk of CAFCameraButtonObservable.buttonAction.getter();
  v3 = 0;
  if ((v2 & 0x100) == 0)
  {
    v4 = v2;
    v5 = dispatch thunk of CAFCameraButtonObservable.disabled.getter();
    v3 = v5 != 2 && (v5 & 1) != 0 || v4 != 0;
  }

  v6 = CAFCameraButtonObservable.observed.getter();
  v7 = [v6 selected];

  if (v7)
  {
    goto LABEL_15;
  }

  v8 = *(v1 + 48);
  if (!v8)
  {
    type metadata accessor for CameraModel(0);
    v43 = &qword_10003AE98;
    v44 = type metadata accessor for CameraModel;
    v45 = &unk_100028428;
    goto LABEL_50;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v8;
  static Published.subscript.getter(&v53);

  v60 = v55;
  v61 = v56;
  v62[0] = v57[0];
  *(v62 + 9) = *(v57 + 9);
  v58 = v53;
  v59 = v54;
  if (*(&v53 + 1))
  {
    v10 = *(&v58 + 1);
    sub_100007128(&v58, &qword_10003ACB0, &qword_100028E20);
    v11 = dispatch thunk of CAFCameraButtonObservable.identifier.getter();
    v13 = v12;
  }

  else
  {

    v11 = 0;
    v13 = 0;
  }

  v14 = CAFCameraButtonObservable.observed.getter();
  v15 = [v14 identifier];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (v13)
  {
    if (v11 != v16 || v13 != v18)
    {
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v19 = 256;
      if ((v42 & 1) == 0)
      {
        v19 = 0;
      }

      goto LABEL_16;
    }

LABEL_15:
    v19 = 256;
LABEL_16:
    v49 = v19;
    goto LABEL_17;
  }

  v49 = 0;
LABEL_17:
  v50 = v3;
  v58 = *(v1 + 72);
  sub_1000026FC(&qword_10003A748, &qword_100027F58);
  State.wrappedValue.getter();
  v20 = *(v1 + 16);
  if (!v20)
  {
    type metadata accessor for ButtonBarLayout(0);
    v43 = &qword_10003A598;
    v44 = type metadata accessor for ButtonBarLayout;
    v45 = &unk_100029298;
LABEL_50:
    sub_10001D7CC(v43, v44, v45);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v21 = v53;
  swift_beginAccess();
  v22 = *(v20 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v22;

  static Published.subscript.getter(&v53);

  v60 = v55;
  v61 = v56;
  v62[0] = v57[0];
  *(v62 + 9) = *(v57 + 9);
  v58 = v53;
  v59 = v54;
  if (!*(&v53 + 1))
  {

    dispatch thunk of CAFCameraButtonObservable.identifier.getter();
LABEL_25:

    v30 = 0;
    goto LABEL_30;
  }

  v48 = v1;
  v47 = v21;
  v24 = *(&v58 + 1);
  sub_100007128(&v58, &qword_10003ACB0, &qword_100028E20);
  v25 = dispatch thunk of CAFCameraButtonObservable.identifier.getter();
  v27 = v26;

  v28 = dispatch thunk of CAFCameraButtonObservable.identifier.getter();
  if (!v27)
  {
    v21 = v47;
    v1 = v48;
    goto LABEL_25;
  }

  if (v25 == v28 && v27 == v29)
  {

    v30 = 0x10000000000;
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      v30 = 0x10000000000;
    }

    else
    {
      v30 = 0;
    }
  }

  v21 = v47;
  v1 = v48;
LABEL_30:
  swift_beginAccess();
  v32 = *(v20 + 24);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v51);

  v55 = v51[2];
  v56 = v51[3];
  v57[0] = v52[0];
  *(v57 + 9) = *(v52 + 9);
  v53 = v51[0];
  v54 = v51[1];
  if (*(&v51[0] + 1))
  {
    sub_100007128(&v53, &qword_10003ACB0, &qword_100028E20);
  }

  else
  {
    v37 = *(v1 + 64);
    if (v37)
    {
      v38 = dispatch thunk of CAFCameraButtonObservable.identifier.getter();
      if (*(*(v37 + OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_childrenIdents) + 16))
      {
        *&v51[0] = v38;
        *(&v51[0] + 1) = v39;
        __chkstk_darwin(v38);
        v46[2] = v51;
        v41 = sub_10001BBF0(sub_10001C120, v46, v40);

        v33 = 0x1000000000000;
        if ((v41 & 1) == 0)
        {
          v33 = 0;
        }

        goto LABEL_33;
      }
    }
  }

  v33 = 0;
LABEL_33:
  v34 = &_mh_execute_header;
  if (!*(v1 + 88))
  {
    v34 = 0;
  }

  v35 = 0x10000;
  if (!v21)
  {
    v35 = 0;
  }

  return v49 | v50 | v30 | v33 | v35 | v34;
}

uint64_t sub_100019114(uint64_t a1)
{
  v11[1] = a1;
  v1 = type metadata accessor for _ShapeSet();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Material();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Material._experimentalGlass.getter();
  sub_1000026FC(&qword_10003B108, &qword_100028E28);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100028940;
  sub_10001C1E8();
  *(v9 + 32) = AnyShape.init<A>(_:)();
  _ShapeSet.init(shapes:smoothness:)();
  sub_1000026FC(&qword_10003B090, &qword_100028D30);
  sub_100007210(&qword_10003B0C0, &qword_10003B090, &qword_100028D30, &protocol conformance descriptor for Button<A>);
  View.materialEffect(_:in:)();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100019344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000026FC(&qword_10003B090, &qword_100028D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1000193BC(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_10001C300(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_10001C300(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_10001C30C(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_10001C300(v3, v5, v2 != 0);
  return v12;
}

void sub_1000194D8(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a1 & 1) == 0)
  {
    if (qword_10003A258 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000036BC(v14, qword_10003CE48);

    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_10000B720(a2, a3, &v19);
      _os_log_impl(&_mh_execute_header, oslog, v15, "[CameraActionButton] equestContent opening url %s was not successful", v16, 0xCu);
      sub_100008EDC(v17);

      return;
    }

    goto LABEL_14;
  }

  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000036BC(v7, qword_10003CE48);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10000B720(a2, a3, &v19);
    _os_log_impl(&_mh_execute_header, v8, v9, "RequestContent opened url %s successfully", v10, 0xCu);
    sub_100008EDC(v11);
  }

  v12 = *(a4 + 48);
  if (!v12)
  {
    type metadata accessor for CameraModel(0);
    sub_10001D7CC(&qword_10003AE98, type metadata accessor for CameraModel, &unk_100028428);
    EnvironmentObject.error()();
    __break(1u);
    return;
  }

  v13 = *(v12 + OBJC_IVAR____TtC9CarCamera11CameraModel_camera);
  if (v13)
  {
    oslog = [v13 cameraGeneral];
    [oslog setOn:0];
LABEL_14:
  }
}

unint64_t sub_1000198A0()
{
  result = qword_10003B070;
  if (!qword_10003B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B070);
  }

  return result;
}

unint64_t sub_1000198F8()
{
  result = qword_10003B078;
  if (!qword_10003B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B078);
  }

  return result;
}

unint64_t sub_100019950()
{
  result = qword_10003B080;
  if (!qword_10003B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B080);
  }

  return result;
}

unint64_t sub_1000199A8()
{
  result = qword_10003B088;
  if (!qword_10003B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B088);
  }

  return result;
}

uint64_t sub_100019A18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for CameraCloseButton(0);
  v4 = (v3 - 8);
  v5 = *(v3 - 8);
  __chkstk_darwin(v3);
  v32 = v6;
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000026FC(&qword_10003B090, &qword_100028D30);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  sub_100006C30(v2, v7);
  v27 = *(v5 + 80);
  v12 = (v27 + 16) & ~v27;
  v30 = v12;
  v13 = swift_allocObject();
  sub_100006BCC(v7, v13 + v12);
  v33 = v2;
  sub_1000026FC(&qword_10003B098, &qword_100028D38);
  sub_10001A35C();
  Button.init(action:label:)();
  v14 = *(v2 + v4[10]);
  v15 = *(v2 + v4[11]);
  v16 = *(v2 + 40);
  v35 = *(v2 + 32);
  LOBYTE(v12) = v35;
  v41 = v16;
  sub_1000026FC(&qword_10003A748, &qword_100027F58);
  State.wrappedValue.getter();
  v17 = *(v2 + v4[12]);
  v35 = v14;
  v36 = v15;
  v37 = v34;
  v38 = 1;
  v39 = v17;
  v40 = 0;
  sub_100007210(&qword_10003B0C0, &qword_10003B090, &qword_100028D30, &protocol conformance descriptor for Button<A>);
  sub_10001A4C0();
  v18 = v31;
  v19 = v28;
  View.buttonStyle<A>(_:)();
  (*(v29 + 8))(v11, v19);
  v35 = v12;
  v41 = v16;
  State.wrappedValue.getter();
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v14;
  v22 = (v18 + *(sub_1000026FC(&qword_10003B0D0, &qword_100028D80) + 36));
  *v22 = KeyPath;
  v22[1] = sub_10001BD04;
  v22[2] = v21;
  sub_100006C30(v2, v7);
  v23 = v30;
  v24 = swift_allocObject();
  sub_100006BCC(v7, v24 + v23);
  result = sub_1000026FC(&qword_10003B0D8, &qword_100028D88);
  v26 = (v18 + *(result + 36));
  *v26 = sub_10001BE14;
  v26[1] = v24;
  return result;
}

void sub_100019DCC()
{
  v1 = type metadata accessor for CameraCloseButton(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of CAFCameraGeneralObservable.on.setter();
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000036BC(v4, qword_10003CE48);
  sub_100006C30(v0, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    v8 = dispatch thunk of CAFCameraGeneralObservable.on.getter() & 1;
    sub_10001BF20(v3, type metadata accessor for CameraCloseButton);
    *(v7 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v5, v6, "[CAMERA] camera.On visiblity button button pressed: %{BOOL}d", v7, 8u);
  }

  else
  {
    sub_10001BF20(v3, type metadata accessor for CameraCloseButton);
  }
}

uint64_t sub_100019F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Image.init(systemName:)();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v8 = Image.resizable(capInsets:resizingMode:)();

  (*(v5 + 8))(v7, v4);
  v9 = type metadata accessor for CameraCloseButton(0);
  v10 = *(a1 + v9[8]);
  LOBYTE(v5) = *(a1 + v9[9]);
  v11 = *(a1 + 40);
  v13[8] = *(a1 + 32);
  v14 = v11;
  sub_1000026FC(&qword_10003A748, &qword_100027F58);
  State.wrappedValue.getter();
  LOBYTE(v4) = v13[7];
  LOBYTE(a1) = *(a1 + v9[10]);
  result = swift_getKeyPath();
  *a2 = v8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 32) = 0;
  *(a2 + 33) = v10;
  *(a2 + 34) = v5;
  *(a2 + 35) = v4;
  *(a2 + 36) = 1;
  *(a2 + 37) = a1;
  *(a2 + 38) = 0;
  return result;
}

uint64_t sub_10001A190()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 8);
  v5 = *v0;
  v9 = *v0;
  if (v10 != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100007128(&v9, &qword_10003A590, &qword_100028270);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

unint64_t sub_10001A35C()
{
  result = qword_10003B0A0;
  if (!qword_10003B0A0)
  {
    sub_1000028A8(&qword_10003B098, &qword_100028D38);
    sub_10001A3E8();
    sub_10001A46C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B0A0);
  }

  return result;
}

unint64_t sub_10001A3E8()
{
  result = qword_10003B0A8;
  if (!qword_10003B0A8)
  {
    sub_1000028A8(&qword_10003B0B0, &unk_100028D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B0A8);
  }

  return result;
}

unint64_t sub_10001A46C()
{
  result = qword_10003B0B8;
  if (!qword_10003B0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B0B8);
  }

  return result;
}

unint64_t sub_10001A4C0()
{
  result = qword_10003B0C8;
  if (!qword_10003B0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B0C8);
  }

  return result;
}

uint64_t sub_10001A514@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000026FC(&qword_10003B090, &qword_100028D30);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-v6];
  v8 = swift_allocObject();
  v9 = *(v1 + 16);
  v8[1] = *v1;
  v8[2] = v9;
  v8[3] = *(v1 + 32);
  *(v8 + 57) = *(v1 + 41);
  v21 = v1;
  sub_10001D20C(v1, v23);
  sub_1000026FC(&qword_10003B098, &qword_100028D38);
  sub_10001A35C();
  Button.init(action:label:)();
  v10 = *(v1 + 33);
  v11 = *(v1 + 34);
  v24 = *(v1 + 40);
  v23[0] = *(v1 + 40);
  sub_1000026FC(&qword_10003A748, &qword_100027F58);
  State.wrappedValue.getter();
  v12 = *(v1 + 56);
  LOBYTE(v23[0]) = v10;
  BYTE1(v23[0]) = v11;
  BYTE2(v23[0]) = v22;
  BYTE3(v23[0]) = 1;
  BYTE4(v23[0]) = v12;
  *(v23 + 5) = 0;
  sub_100007210(&qword_10003B0C0, &qword_10003B090, &qword_100028D30, &protocol conformance descriptor for Button<A>);
  sub_10001A4C0();
  View.buttonStyle<A>(_:)();
  (*(v5 + 8))(v7, v4);
  v23[0] = v24;
  State.wrappedValue.getter();
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = (a1 + *(sub_1000026FC(&qword_10003B0D0, &qword_100028D80) + 36));
  *v15 = KeyPath;
  v15[1] = sub_10001D830;
  v15[2] = v14;
  v16 = swift_allocObject();
  v17 = v2[1];
  v16[1] = *v2;
  v16[2] = v17;
  v16[3] = v2[2];
  *(v16 + 57) = *(v2 + 41);
  v18 = (a1 + *(sub_1000026FC(&qword_10003B0D8, &qword_100028D88) + 36));
  *v18 = sub_10001D290;
  v18[1] = v16;
  return sub_10001D20C(v2, v23);
}

void sub_10001A834()
{
  v1 = v0;
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000036BC(v2, qword_10003CE48);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "[CAMERA] NavigationButton action", v5, 2u);
  }

  v6 = *(v0 + 32) >> 6;
  if (!v6)
  {
    goto LABEL_11;
  }

  if (v6 == 1)
  {
    v7 = *(v0 + 16);
    if (!v7)
    {
      goto LABEL_22;
    }

    v8 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_pageNumber;
    v1 = *(v7 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_pageNumber);
    v9 = v1 - 1;
    if (!__OFSUB__(v1, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_11:
    v7 = *(v1 + 16);
    if (v7)
    {
      v8 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_pageNumber;
      v1 = *(v7 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_pageNumber);
      v9 = v1 + 1;
      if (!__OFADD__(v1, 1))
      {
LABEL_13:
        *(v7 + v8) = v9;

        sub_10001E980(v1);

        return;
      }

      __break(1u);
    }

LABEL_22:
    type metadata accessor for ButtonBarLayout(0);
    sub_10001D7CC(&qword_10003A598, type metadata accessor for ButtonBarLayout, &unk_100029298);
    EnvironmentObject.error()();
    __break(1u);
    return;
  }

  oslog = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v10, "[CAMERA] NavigationButton action - close action not used here", v11, 2u);
  }
}

uint64_t sub_10001AA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A190();
  Image.init(systemName:)();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v8 = Image.resizable(capInsets:resizingMode:)();

  (*(v5 + 8))(v7, v4);
  LOBYTE(v4) = *(a1 + 33);
  LOBYTE(v7) = *(a1 + 34);
  v11 = *(a1 + 40);
  sub_1000026FC(&qword_10003A748, &qword_100027F58);
  State.wrappedValue.getter();
  v9 = v12;
  LOBYTE(a1) = *(a1 + 56);
  result = swift_getKeyPath();
  *a2 = v8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 32) = 0;
  *(a2 + 33) = v4;
  *(a2 + 34) = v7;
  *(a2 + 35) = v9;
  *(a2 + 36) = 1;
  *(a2 + 37) = a1;
  *(a2 + 38) = 0;
  return result;
}

uint64_t sub_10001AD0C()
{
  result = static Color.primary.getter();
  qword_10003CE88 = result;
  return result;
}

uint64_t sub_10001AD6C()
{
  v0 = [objc_opt_self() _carSystemFocusColor];
  result = Color.init(_:)();
  qword_10003CEA8 = result;
  return result;
}

uint64_t sub_10001ADC4(double a1, uint64_t a2, uint64_t *a3)
{
  static Color.secondary.getter();
  v4 = Color.opacity(_:)();

  *a3 = v4;
  return result;
}

uint64_t sub_10001AE18(uint64_t a1)
{
  if ((a1 & 0x1000000) != 0)
  {
    if ((a1 & 0x10100) != 0)
    {

      return static Color.secondary.getter();
    }

    else
    {

      return static Color.black.getter();
    }
  }

  else
  {
    result = static Color.primary.getter();
    if (a1)
    {
      if (qword_10003A290 != -1)
      {
        swift_once();
      }

      v3 = qword_10003CEB0;

      goto LABEL_6;
    }

    if ((a1 & 0x1010000000000) != 0)
    {
      if ((a1 & 0x10000) != 0)
      {
        v4 = static Color.black.getter();
      }

      else
      {
        v4 = static Color.white.getter();
      }

      v5 = v4;

      return v5;
    }

    else if ((a1 & 0x10100) != 0)
    {
      v3 = static Color.black.getter();
LABEL_6:

      return v3;
    }
  }

  return result;
}

uint64_t sub_10001AF34@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  ButtonStyleConfiguration.label.getter();
  v10 = 0x1000000000000;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = 0x10000000000;
  if (!v8)
  {
    v11 = 0;
  }

  v12 = &_mh_execute_header;
  if (!v7)
  {
    v12 = 0;
  }

  v13 = 0x1000000;
  if (!v6)
  {
    v13 = 0;
  }

  v14 = 0x10000;
  if (!v5)
  {
    v14 = 0;
  }

  if (v4)
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_10001CBA8(v15 | v3 | v14 | v13 | v12 | v11 | v10);
  v17 = static Edge.Set.all.getter();
  v18 = a1 + *(sub_1000026FC(&qword_10003B1E8, &qword_100029140) + 36);
  *v18 = v16;
  *(v18 + 8) = v17;
  v19 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v21 = (a1 + *(sub_1000026FC(&qword_10003B1F0, &qword_100029148) + 36));
  *v21 = KeyPath;
  v21[1] = v19;
  v22 = a1 + *(sub_1000026FC(&qword_10003B1F8, &qword_100029150) + 36);
  *v22 = v7;
  *(v22 + 1) = 256;
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = v3;
  v25 = (a1 + *(sub_1000026FC(&qword_10003B200, &qword_100029158) + 36));
  *v25 = v23;
  v25[1] = sub_10001D830;
  v25[2] = v24;
  v26 = ButtonStyleConfiguration.isPressed.getter();
  result = sub_1000026FC(&qword_10003B208, &unk_100029160);
  *(a1 + *(result + 36)) = v26 & 1;
  return result;
}

uint64_t sub_10001B114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a1;
  v54 = a4;
  v53 = a3 & 0x10000000000;
  v6 = sub_1000026FC(&qword_10003B168, &qword_1000290C8);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v44 - v8;
  v10 = sub_1000026FC(&qword_10003B170, &qword_1000290D0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v47 = &v44 - v12;
  v51 = sub_1000026FC(&qword_10003B178, &qword_1000290D8) - 8;
  __chkstk_darwin(v51);
  v50 = &v44 - v13;
  v52 = sub_1000026FC(&qword_10003B180, &qword_1000290E0) - 8;
  __chkstk_darwin(v52);
  v15 = &v44 - v14;
  v49 = sub_1000026FC(&qword_10003B188, &qword_1000290E8);
  __chkstk_darwin(v49);
  v17 = &v44 - v16;
  LOBYTE(v55) = a3 & 1;
  v48 = (a3 >> 40) & 1;
  v45 = a3 >> 8;
  sub_10001B5BC(a2, a3 & 0x101010101010101);
  v44 = a3 & &_mh_execute_header;
  v18 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = sub_1000026FC(&qword_10003B190, &qword_1000290F0);
  (*(*(v27 - 8) + 16))(v9, v46, v27);
  v28 = &v9[*(v7 + 44)];
  *v28 = v18;
  *(v28 + 1) = v20;
  *(v28 + 2) = v22;
  *(v28 + 3) = v24;
  *(v28 + 4) = v26;
  v28[40] = 0;
  LOBYTE(v55) = a3 & 1;
  sub_10001B5BC(a2, a3 & 0x101010101010101);
  LOBYTE(v55) = a3 & 1;
  sub_10001B5BC(a2, a3 & 0x101010101010101);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v29 = v47;
  sub_100002744(v9, v47, &qword_10003B168, &qword_1000290C8);
  v30 = (v29 + *(v11 + 44));
  v31 = v56;
  *v30 = v55;
  v30[1] = v31;
  v30[2] = v57;
  v32 = v45 & 0x10101 | ((v44 | v53) >> 8);
  v33 = v45 & 0x1010000000000;
  v34 = sub_10001CBA8(v32 | v45 & 0x1010000000000);
  LOBYTE(v11) = static Edge.Set.all.getter();
  v35 = v29;
  v36 = v50;
  sub_100002744(v35, v50, &qword_10003B170, &qword_1000290D0);
  v37 = v36 + *(v51 + 44);
  *v37 = v34;
  *(v37 + 8) = v11;
  v38 = sub_10001AE18(v32 | v33);
  KeyPath = swift_getKeyPath();
  sub_100002744(v36, v15, &qword_10003B178, &qword_1000290D8);
  v40 = &v15[*(v52 + 44)];
  *v40 = KeyPath;
  v40[1] = v38;
  v41 = v49;
  sub_100002744(v15, v17, &qword_10003B180, &qword_1000290E0);
  v42 = &v17[*(v41 + 36)];
  *v42 = v48;
  *(v42 + 1) = 256;
  if ((a3 & 0x100000000) != 0)
  {
    static Font.Weight.heavy.getter();
  }

  else
  {
    static Font.Weight.regular.getter();
  }

  sub_10001CE08();
  View.fontWeight(_:)();
  return sub_100007128(v17, &qword_10003B188, &qword_1000290E8);
}

void sub_10001B5BC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v15 = a1;
  v16 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (BYTE4(v16) == 1)
  {
    if ((v2 & 1) == 0)
    {
      sub_10001D174(&v15, v14);
      static os_log_type_t.fault.getter();
      v7 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_10001D1AC(&v15);
      v8 = *(v4 + 8);
      v8(v6, v3);
      sub_10001D174(&v15, v14);
      static os_log_type_t.fault.getter();
      v9 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_10001D1AC(&v15);
      v8(v6, v3);
    }
  }

  else if ((v2 & 1) == 0)
  {
    sub_10001D174(&v15, v14);
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001D1AC(&v15);
    v11 = *(v4 + 8);
    v11(v6, v3);
    sub_10001D174(&v15, v14);
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001D1AC(&v15);
    v11(v6, v3);
  }
}

uint64_t sub_10001B920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0x100000000000000;
  if ((*(v2 + 15) & 1) == 0)
  {
    v3 = 0;
  }

  v4 = 0x1000000000000;
  if ((*(v2 + 14) & 1) == 0)
  {
    v4 = 0;
  }

  v5 = 0x10000000000;
  if ((*(v2 + 13) & 1) == 0)
  {
    v5 = 0;
  }

  v6 = &_mh_execute_header;
  if ((*(v2 + 12) & 1) == 0)
  {
    v6 = 0;
  }

  v7 = 0x1000000;
  if ((*(v2 + 11) & 1) == 0)
  {
    v7 = 0;
  }

  v8 = 0x10000;
  if ((*(v2 + 10) & 1) == 0)
  {
    v8 = 0;
  }

  v9 = 256;
  if ((*(v2 + 9) & 1) == 0)
  {
    v9 = 0;
  }

  return sub_10001B114(a1, *v2, v8 | v9 | v7 | v6 | v5 | v4 | v3 | *(v2 + 8) & 1, a2);
}

void *sub_10001B9CC(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 = v4;
  return result;
}

__n128 sub_10001BA14@<Q0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v6);

  v4 = v6[0];
  result = v6[1];
  *(v8 + 9) = *&v7[9];
  v5 = v6[3];
  v8[0] = *v7;
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v5;
  *(a2 + 64) = v8[0];
  *(a2 + 73) = *(v8 + 9);
  *a2 = v4;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_10001BAD0(_OWORD *a1, void **a2)
{
  v3 = a1[3];
  v12[2] = a1[2];
  v12[3] = v3;
  v13[0] = a1[4];
  *(v13 + 9) = *(a1 + 73);
  v4 = a1[1];
  v12[0] = *a1;
  v12[1] = v4;
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1[3];
  v10[8] = a1[2];
  v10[9] = v6;
  v11[0] = a1[4];
  *(v11 + 9) = *(a1 + 73);
  v7 = a1[1];
  v10[6] = *a1;
  v10[7] = v7;
  v8 = v5;
  sub_10001C178(v12, v10);
  return static Published.subscript.setter();
}

uint64_t sub_10001BB98@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10001BBF0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_10001BC9C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10001BD1C()
{
  v1 = (type metadata accessor for CameraCloseButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001BE14(char *a1)
{
  v3 = *(type metadata accessor for CameraCloseButton(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10001A130(a1, v4);
}

void *sub_10001BE84@<X0>(_BYTE *a1@<X8>)
{
  sub_100001DCC();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10001BF20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10001BF80()
{
  result = qword_10003B0E0;
  if (!qword_10003B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B0E0);
  }

  return result;
}

uint64_t sub_10001C004()
{

  sub_1000068C0(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 105, 7);
}

uint64_t sub_10001C0C8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10001C120(uint64_t *a1)
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

uint64_t sub_10001C178(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026FC(&qword_10003ACB0, &qword_100028E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001C1E8()
{
  result = qword_10003B110;
  if (!qword_10003B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B110);
  }

  return result;
}

unint64_t sub_10001C23C()
{
  result = qword_10003B118;
  if (!qword_10003B118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003B118);
  }

  return result;
}

uint64_t sub_10001C288()
{

  sub_1000068C0(*(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 121, 7);
}

uint64_t sub_10001C300(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_10001C30C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10001C23C();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10001C23C();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

__n128 sub_10001C50C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10001C528(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10001C584(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_DWORD *initializeBufferWithCopyOfBuffer for CameraButtonConfiguration(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t sub_10001C62C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_10001C674(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_10001C6C8()
{
  result = qword_10003B128;
  if (!qword_10003B128)
  {
    sub_1000028A8(&qword_10003B0D8, &qword_100028D88);
    sub_10001C780();
    sub_100007210(&qword_10003B148, &qword_10003B150, qword_100028FA0, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B128);
  }

  return result;
}

unint64_t sub_10001C780()
{
  result = qword_10003B130;
  if (!qword_10003B130)
  {
    sub_1000028A8(&qword_10003B0D0, &qword_100028D80);
    sub_1000028A8(&qword_10003B090, &qword_100028D30);
    sub_100007210(&qword_10003B0C0, &qword_10003B090, &qword_100028D30, &protocol conformance descriptor for Button<A>);
    sub_10001A4C0();
    swift_getOpaqueTypeConformance2();
    sub_100007210(&qword_10003B138, &qword_10003B140, &qword_100028F98, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B130);
  }

  return result;
}

unint64_t sub_10001C8C0()
{
  result = qword_10003B158;
  if (!qword_10003B158)
  {
    sub_1000028A8(&qword_10003B100, &qword_100028DD0);
    sub_10001C978();
    sub_100007210(&qword_10003B148, &qword_10003B150, qword_100028FA0, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B158);
  }

  return result;
}

unint64_t sub_10001C978()
{
  result = qword_10003B160;
  if (!qword_10003B160)
  {
    sub_1000028A8(&qword_10003B0F8, &qword_100028DC8);
    sub_1000028A8(&qword_10003B0E8, &qword_100028DB8);
    sub_1000028A8(&qword_10003B090, &qword_100028D30);
    sub_1000028A8(&qword_10003B0F0, &qword_100028DC0);
    sub_100007210(&qword_10003B0C0, &qword_10003B090, &qword_100028D30, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10001A4C0();
    swift_getOpaqueTypeConformance2();
    sub_100007210(&qword_10003B138, &qword_10003B140, &qword_100028F98, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B160);
  }

  return result;
}

uint64_t sub_10001CBA8(uint64_t a1)
{
  if (a1 & 0x100) != 0 && (a1)
  {
    if (qword_10003A270 != -1)
    {
      swift_once();
    }

    v1 = qword_10003CE90;
  }

  else
  {
    if ((a1 & 0x10000) == 0)
    {
      if ((a1 & 0x100) != 0)
      {
        v2 = a1;
        if (qword_10003A268 != -1)
        {
          swift_once();
        }

        v3 = &qword_10003CE88;
      }

      else
      {
        v2 = a1;
        if ((a1 & 0x1000000) != 0)
        {
          if (qword_10003A288 != -1)
          {
            swift_once();
          }

          v3 = &qword_10003CEA8;
        }

        else
        {
          if (qword_10003A278 != -1)
          {
            swift_once();
          }

          v3 = &qword_10003CE98;
        }
      }

      v1 = *v3;

      if ((v2 & 0x10000000000) != 0)
      {
        if (qword_10003A280 != -1)
        {
          swift_once();
        }

        v5 = qword_10003CEA0;
      }

      else
      {
        if ((v2 & 0x1000000000000) == 0)
        {
          return v1;
        }

        if (qword_10003A278 != -1)
        {
          swift_once();
        }

        v5 = qword_10003CE98;
      }

      return v5;
    }

    if (qword_10003A268 != -1)
    {
      swift_once();
    }

    v1 = qword_10003CE88;
  }

  return v1;
}

uint64_t sub_10001CDB0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10001CE08()
{
  result = qword_10003B198;
  if (!qword_10003B198)
  {
    sub_1000028A8(&qword_10003B188, &qword_1000290E8);
    sub_10001CEC0();
    sub_100007210(&qword_10003B1D8, &qword_10003B1E0, &qword_100029138, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B198);
  }

  return result;
}

unint64_t sub_10001CEC0()
{
  result = qword_10003B1A0;
  if (!qword_10003B1A0)
  {
    sub_1000028A8(&qword_10003B180, &qword_1000290E0);
    sub_10001CF78();
    sub_100007210(&qword_10003B1C8, &qword_10003B1D0, &qword_100029130, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B1A0);
  }

  return result;
}

unint64_t sub_10001CF78()
{
  result = qword_10003B1A8;
  if (!qword_10003B1A8)
  {
    sub_1000028A8(&qword_10003B178, &qword_1000290D8);
    sub_10001D030();
    sub_100007210(&qword_10003AF18, &qword_10003AF20, &qword_100028838, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B1A8);
  }

  return result;
}

unint64_t sub_10001D030()
{
  result = qword_10003B1B0;
  if (!qword_10003B1B0)
  {
    sub_1000028A8(&qword_10003B170, &qword_1000290D0);
    sub_10001D0BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B1B0);
  }

  return result;
}

unint64_t sub_10001D0BC()
{
  result = qword_10003B1B8;
  if (!qword_10003B1B8)
  {
    sub_1000028A8(&qword_10003B168, &qword_1000290C8);
    sub_100007210(&qword_10003B1C0, &qword_10003B190, &qword_1000290F0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B1B8);
  }

  return result;
}

uint64_t sub_10001D244()
{
  sub_1000068C0(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_10001D2EC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[7])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10001D344(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10001D39C()
{
  sub_1000028A8(&qword_10003B188, &qword_1000290E8);
  sub_10001CE08();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10001D404()
{
  result = qword_10003B210;
  if (!qword_10003B210)
  {
    sub_1000028A8(&qword_10003B208, &unk_100029160);
    sub_10001D4BC();
    sub_100007210(&qword_10003B240, &qword_10003B248, " @", &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B210);
  }

  return result;
}

unint64_t sub_10001D4BC()
{
  result = qword_10003B218;
  if (!qword_10003B218)
  {
    sub_1000028A8(&qword_10003B200, &qword_100029158);
    sub_10001D574();
    sub_100007210(&qword_10003B138, &qword_10003B140, &qword_100028F98, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B218);
  }

  return result;
}

unint64_t sub_10001D574()
{
  result = qword_10003B220;
  if (!qword_10003B220)
  {
    sub_1000028A8(&qword_10003B1F8, &qword_100029150);
    sub_10001D62C();
    sub_100007210(&qword_10003B1D8, &qword_10003B1E0, &qword_100029138, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B220);
  }

  return result;
}

unint64_t sub_10001D62C()
{
  result = qword_10003B228;
  if (!qword_10003B228)
  {
    sub_1000028A8(&qword_10003B1F0, &qword_100029148);
    sub_10001D6E4();
    sub_100007210(&qword_10003B1C8, &qword_10003B1D0, &qword_100029130, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B228);
  }

  return result;
}

unint64_t sub_10001D6E4()
{
  result = qword_10003B230;
  if (!qword_10003B230)
  {
    sub_1000028A8(&qword_10003B1E8, &qword_100029140);
    sub_10001D7CC(&qword_10003B238, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    sub_100007210(&qword_10003AF18, &qword_10003AF20, &qword_100028838, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B230);
  }

  return result;
}

uint64_t sub_10001D7CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001D860(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t sub_10001D8F8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t sub_10001D964()
{
  v1 = v0;
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000036BC(v2, qword_10003CE48);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Close changed", v5, 2u);
  }

  v6 = sub_10001DAA8();
  sub_100002E08(v6, *(v1 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_headIndex), 0, 0, 1, 0xD000000000000014, 0x8000000100029E40);

  sub_10001DE70(v7);
}

uint64_t sub_10001DAA8()
{
  v1 = v0;
  v2 = sub_1000026FC(&qword_10003AC80, &qword_100027CE8);
  __chkstk_darwin(v2 - 8);
  v4 = &v24[-v3];
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000036BC(v5, qword_10003CE48);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "takePagerState()", v8, 2u);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v4);

  v9 = type metadata accessor for CameraCloseButton(0);
  v10 = (*(*(v9 - 8) + 48))(v4, 1, v9);
  sub_100007128(v4, &qword_10003AC80, &qword_100027CE8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v29);

  v11 = v30;
  if (v30)
  {
    sub_1000069B8(v29, SBYTE8(v29), v30);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v29);

  v12 = v30;
  if (v30)
  {
    sub_1000069B8(v29, SBYTE8(v29), v30);
  }

  v13 = *(v1 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_headIndex);
  v14 = *(v1 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_tailIndex);
  v15 = (v1 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent);
  if (*(v1 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 8))
  {
    v16 = v15[3];
    v27[2] = v15[2];
    v27[3] = v16;
    v28[0] = v15[4];
    *(v28 + 9) = *(v15 + 73);
    v17 = v15[1];
    v27[0] = *v15;
    v27[1] = v17;
    if (*(&v27[0] + 1))
    {
      v18 = v15[3];
      v31 = v15[2];
      v32 = v18;
      v33[0] = v15[4];
      v19 = v33[0];
      *(v33 + 9) = *(v15 + 73);
      v20 = v15[1];
      v29 = *v15;
      v30 = v20;
      *(v26 + 9) = *(v33 + 9);
      v25[2] = v31;
      v25[3] = v18;
      v26[0] = v19;
      v25[0] = v29;
      v25[1] = v20;
      sub_10000695C(v25, v24);
      v21 = sub_100009994();
      sub_100007128(v27, &qword_10003ACB0, &qword_100028E20);
      v22 = *(v15 + 1) != 0;
    }

    else
    {
      v21 = 0;
      v22 = 1;
    }
  }

  else
  {
    v21 = *(v1 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_topLevelActionButtons);

    v22 = 0;
  }

  type metadata accessor for PagerState();
  result = swift_allocObject();
  *(result + 16) = v10 != 1;
  *(result + 17) = v11 != 0;
  *(result + 18) = v12 != 0;
  *(result + 24) = v13;
  *(result + 32) = v14;
  *(result + 40) = v21;
  *(result + 48) = v22;
  return result;
}

void sub_10001DE70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000026FC(&qword_10003AC80, &qword_100027CE8);
  __chkstk_darwin(v4 - 8);
  v6 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (v56 - v8);
  __chkstk_darwin(v10);
  v12 = (v56 - v11);
  if (!a1)
  {
    return;
  }

  v13 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_isUpdating;
  if ((*(v1 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_isUpdating) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_isUpdating) = 1;
    v19 = qword_10003A258;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000036BC(v20, qword_10003CE48);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "applyPagerState(_:)", v23, 2u);
    }

    if (*(a1 + 48) == 1 && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(&v57), , , v57))
    {

      __chkstk_darwin(v24);
      v56[-2] = v2;
      v56[-1] = a1;
      static Animation.default.getter();
      withAnimation<A>(_:_:)();
    }

    else
    {
      v25 = sub_100002AD8();
      swift_getKeyPath();
      swift_getKeyPath();
      v57 = v25;

      static Published.subscript.setter();
    }

    if (*(a1 + 16) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v12);

      v26 = type metadata accessor for CameraCloseButton(0);
      v27 = (*(*(v26 - 8) + 48))(v12, 1, v26);
      sub_100007128(v12, &qword_10003AC80, &qword_100027CE8);
      if (v27 != 1)
      {
        goto LABEL_23;
      }

      swift_beginAccess();
      v28 = *(v2 + 24);
      swift_getKeyPath();
      swift_getKeyPath();
      v29 = v28;
      static Published.subscript.getter(v9);
    }

    else
    {
      v30 = type metadata accessor for CameraCloseButton(0);
      (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000070C0(v9, v6, &qword_10003AC80, &qword_100027CE8);

    static Published.subscript.setter();
    sub_10001D964();
    sub_100007128(v9, &qword_10003AC80, &qword_100027CE8);
LABEL_23:
    v31 = *(a1 + 17);
    swift_getKeyPath();
    swift_getKeyPath();
    if (v31 == 1)
    {
      static Published.subscript.getter(&v57);

      if (v59)
      {
        sub_1000069B8(v57, v58, v59);
        goto LABEL_29;
      }

      LODWORD(v56[0]) = *(v2 + 32) | 0x40;
      KeyPath = swift_getKeyPath();
      type metadata accessor for ButtonBarLayout(0);
      sub_100022274(&qword_10003A598, type metadata accessor for ButtonBarLayout, &unk_100029298);
      v33 = EnvironmentObject.init()();
      v35 = v34;
      v65[0] = 0;
      State.init(wrappedValue:)();
      v36 = v57;
      v37 = v58;
      v66 = 0;
      type metadata accessor for ButtonBarEntity();
      v38 = swift_allocObject();
      v60 = &type metadata for NavigationButton;
      v61 = sub_100020F7C();
      v39 = swift_allocObject();
      v57 = v39;
      *(v39 + 16) = KeyPath;
      *(v39 + 24) = v66;
      *(v39 + 25) = *v65;
      *(v39 + 28) = *&v65[3];
      *(v39 + 32) = v33;
      *(v39 + 40) = v35;
      *(v39 + 48) = v56[0];
      *(v39 + 49) = 0;
      v40 = *&v62[3];
      *(v39 + 51) = v63;
      *(v39 + 55) = v64;
      *(v39 + 56) = v36;
      v41 = *v62;
      *(v39 + 60) = v40;
      *(v39 + 57) = v41;
      *(v39 + 64) = v37;
      *(v39 + 72) = 0;
      *(v38 + 88) = 0u;
      *(v38 + 72) = 0u;
      sub_10000B498(&v57, v38 + 32);
      *(v38 + 72) = 0xD000000000000019;
      *(v38 + 80) = 0x8000000100029E80;
      *(v38 + 88) = sub_1000244F0;
      *(v38 + 96) = 0;
      sub_100008EDC(&v57);
      *(v38 + 16) = 0xD000000000000019;
      *(v38 + 24) = 0x8000000100029E80;
      v42 = swift_getKeyPath();
      swift_getKeyPath();
      swift_getKeyPath();
      v57 = v42;
      v58 = 0;
      v59 = v38;
    }

    else
    {
      v57 = 0;
      v58 = 0;
      v59 = 0;
    }

    static Published.subscript.setter();
LABEL_29:
    v43 = *(a1 + 18);
    swift_getKeyPath();
    swift_getKeyPath();
    if (v43 == 1)
    {
      static Published.subscript.getter(&v57);

      if (v59)
      {
        sub_1000069B8(v57, v58, v59);
LABEL_35:
        *(v2 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_headIndex) = *(a1 + 24);
        v55 = *(a1 + 32);

        *(v2 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_tailIndex) = v55;
        *(v2 + v13) = 0;
        return;
      }

      LODWORD(v56[0]) = *(v2 + 32);
      v44 = swift_getKeyPath();
      type metadata accessor for ButtonBarLayout(0);
      sub_100022274(&qword_10003A598, type metadata accessor for ButtonBarLayout, &unk_100029298);
      v45 = EnvironmentObject.init()();
      v47 = v46;
      v65[0] = 0;
      State.init(wrappedValue:)();
      v48 = v57;
      v49 = v58;
      v66 = 0;
      type metadata accessor for ButtonBarEntity();
      v50 = swift_allocObject();
      v60 = &type metadata for NavigationButton;
      v61 = sub_100020F7C();
      v51 = swift_allocObject();
      v57 = v51;
      *(v51 + 16) = v44;
      *(v51 + 24) = v66;
      *(v51 + 25) = *v65;
      *(v51 + 28) = *&v65[3];
      *(v51 + 32) = v45;
      *(v51 + 40) = v47;
      *(v51 + 48) = v56[0];
      *(v51 + 49) = 0;
      v52 = *&v62[3];
      *(v51 + 51) = v63;
      *(v51 + 55) = v64;
      *(v51 + 56) = v48;
      v53 = *v62;
      *(v51 + 60) = v52;
      *(v51 + 57) = v53;
      *(v51 + 64) = v49;
      *(v51 + 72) = 0;
      *(v50 + 88) = 0u;
      *(v50 + 72) = 0u;
      sub_10000B498(&v57, v50 + 32);
      *(v50 + 72) = 0xD000000000000015;
      *(v50 + 80) = 0x8000000100029E60;
      *(v50 + 88) = sub_1000244F0;
      *(v50 + 96) = 0;
      sub_100008EDC(&v57);
      *(v50 + 16) = 0xD000000000000015;
      *(v50 + 24) = 0x8000000100029E60;
      v54 = swift_getKeyPath();
      swift_getKeyPath();
      swift_getKeyPath();
      v57 = v54;
      v58 = 0;
      v59 = v50;
    }

    else
    {
      v57 = 0;
      v58 = 0;
      v59 = 0;
    }

    static Published.subscript.setter();
    goto LABEL_35;
  }

  v14 = qword_10003A258;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000036BC(v15, qword_10003CE48);
  v56[0] = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v56[0], v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v56[0], v16, "applyPagerState skipped, already in update pass", v17, 2u);
  }

  v18 = v56[0];
}

uint64_t sub_10001E908@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);
}

uint64_t sub_10001E980(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_pageNumber);
  if (v2 != result && v2 != -1)
  {
    v4 = result;
    result = sub_10001DAA8();
    if (v2 <= v4)
    {
      v12 = *(v1 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_headIndex);
      v9 = v12 - 1;
      if (!__OFSUB__(v12, 1))
      {
        v11 = 0xD00000000000001BLL;
        v7 = 0x8000000100029EA0;
        v6 = 0;
        v8 = 1;
        v10 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v5 = *(v1 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_tailIndex);
      v6 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        v7 = 0x8000000100029EC0;
        v8 = 0;
        v9 = 0;
        v10 = 1;
        v11 = 0xD000000000000017;
LABEL_10:
        sub_100002E08(result, v6, v8, v9, v10, v11, v7);

        sub_10001DE70(v13);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10001EA9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026FC(&qword_10003AC80, &qword_100027CE8);
  __chkstk_darwin(v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v25 - v8;
  __chkstk_darwin(v10);
  v12 = v25 - v11;
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000036BC(v13, qword_10003CE48);
  sub_1000070C0(a1, v12, &qword_10003AC80, &qword_100027CE8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = v6;
    v17 = v16;
    v18 = swift_slowAlloc();
    v27[0] = v18;
    *v17 = 136315138;
    v25[1] = a2;
    sub_1000070C0(v12, v9, &qword_10003AC80, &qword_100027CE8);
    v19 = String.init<A>(describing:)();
    v20 = a1;
    v22 = v21;
    sub_100007128(v12, &qword_10003AC80, &qword_100027CE8);
    v23 = sub_10000B720(v19, v22, v27);
    a1 = v20;

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "sink %s", v17, 0xCu);
    sub_100008EDC(v18);

    v6 = v26;
  }

  else
  {

    sub_100007128(v12, &qword_10003AC80, &qword_100027CE8);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000070C0(a1, v9, &qword_10003AC80, &qword_100027CE8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000070C0(v9, v6, &qword_10003AC80, &qword_100027CE8);

    static Published.subscript.setter();
    sub_10001D964();

    return sub_100007128(v9, &qword_10003AC80, &qword_100027CE8);
  }

  return result;
}

uint64_t sub_10001EDD8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000036BC(v3, qword_10003CE48);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v2 + 16);

    _os_log_impl(&_mh_execute_header, v4, v5, "sink visibleButtons - %ld", v6, 0xCu);
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_topLevelActionButtons) = v2;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = sub_10001DAA8();

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_100002E08(v9, 0, 0, 0, 1, 0xD000000000000019, 0x8000000100029F30);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_10001DE70(v10);
    }
  }

  return result;
}

uint64_t sub_10001F038(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000036BC(v4, qword_10003CE48);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15[0] = v8;
    *v7 = 136315138;
    if (v2)
    {
      v9 = v2;
    }

    else
    {
      v3 = 0;
      v9 = 0xE000000000000000;
    }

    v10 = sub_10000B720(v3, v9, v15);

    *(v7 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "sink identifierChanged - %s", v7, 0xCu);
    sub_100008EDC(v8);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = *(result + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 8);

    if (v12)
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        v13 = sub_10001DAA8();

        swift_beginAccess();
        if (swift_weakLoadStrong())
        {

          sub_100002E08(v13, 0, 0, 0, 1, 0xD000000000000024, 0x8000000100029F00);
        }

        swift_beginAccess();
        if (swift_weakLoadStrong())
        {

          sub_10001DE70(v14);
        }
      }
    }
  }

  return result;
}

uint64_t sub_10001F2D8(__int128 *a1, uint64_t a2)
{
  v3 = sub_1000026FC(&qword_10003B758, &qword_1000294B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v37[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v37[-v7];
  v9 = a1[3];
  v43 = a1[2];
  v44 = v9;
  v45[0] = a1[4];
  *(v45 + 9) = *(a1 + 73);
  v10 = a1[1];
  v41 = *a1;
  v42 = v10;
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000036BC(v11, qword_10003CE48);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "sink submenuParent", v14, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = (Strong + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent);
    v17 = *(Strong + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 16);
    v39[0] = *(Strong + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent);
    v39[1] = v17;
    v18 = *(Strong + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 32);
    v19 = *(Strong + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 48);
    v20 = *(Strong + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 64);
    *(v40 + 9) = *(Strong + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 73);
    v39[3] = v19;
    v40[0] = v20;
    v39[2] = v18;
    v22 = v44;
    v21 = v45[0];
    v23 = v43;
    *(v16 + 73) = *(v45 + 9);
    v16[3] = v22;
    v16[4] = v21;
    v16[2] = v23;
    v24 = v42;
    *v16 = v41;
    v16[1] = v24;
    sub_1000070C0(&v41, &v38, &qword_10003ACB0, &qword_100028E20);
    sub_100007128(v39, &qword_10003ACB0, &qword_100028E20);
  }

  if (*(&v41 + 1))
  {
    swift_beginAccess();
    v25 = swift_weakLoadStrong();
    if (v25)
    {
      v26 = v25;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_10001FC90(v5);

        v27 = 0;
      }

      else
      {
        v27 = 1;
      }

      v32 = type metadata accessor for StateSnapShot(0);
      (*(*(v32 - 8) + 56))(v5, v27, 1, v32);
      v33 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_snapshot;
      swift_beginAccess();
      sub_100022368(v5, v26 + v33);
      swift_endAccess();
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v34 = sub_10001DAA8();

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {

        sub_100002E08(v34, 0, 0, 0, 1, 0xD00000000000001FLL, 0x8000000100029EE0);
      }

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {

        sub_10001DE70(v35);
      }

      else
      {
      }
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_beginAccess();
      v29 = swift_weakLoadStrong();
      if (v29)
      {
        v30 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_snapshot;
        v31 = v29;
        swift_beginAccess();
        sub_1000070C0(v31 + v30, v8, &qword_10003B758, &qword_1000294B8);
      }

      else
      {
        v36 = type metadata accessor for StateSnapShot(0);
        (*(*(v36 - 8) + 56))(v8, 1, 1, v36);
      }

      sub_10001F7F0(v8);

      return sub_100007128(v8, &qword_10003B758, &qword_1000294B8);
    }
  }

  return result;
}

uint64_t sub_10001F7F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000026FC(&qword_10003AC80, &qword_100027CE8);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v10 = sub_1000026FC(&qword_10003B758, &qword_1000294B8);
  __chkstk_darwin(v10 - 8);
  v35 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v15 = type metadata accessor for StateSnapShot(0);
  v16 = *(v15 - 1);
  __chkstk_darwin(v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000070C0(a1, v14, &qword_10003B758, &qword_1000294B8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_100007128(v14, &qword_10003B758, &qword_1000294B8);
  }

  sub_1000223D8(v14, v18);
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000036BC(v20, qword_10003CE48);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "applySnapshot(_:)", v23, 2u);
  }

  sub_1000070C0(v18, v9, &qword_10003AC80, &qword_100027CE8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000070C0(v9, v6, &qword_10003AC80, &qword_100027CE8);

  static Published.subscript.setter();
  sub_10001D964();
  sub_100007128(v9, &qword_10003AC80, &qword_100027CE8);
  v24 = &v18[v15[5]];
  v25 = *v24;
  v26 = v24[1];
  v27 = v24[2];
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = v25;
  v37 = v26;
  v38 = v27;

  sub_100006D60(v25, v26, v27);
  static Published.subscript.setter();
  v28 = &v18[v15[6]];
  v29 = *v28;
  v30 = v28[1];
  v31 = v28[2];
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = v29;
  v37 = v30;
  v38 = v31;

  sub_100006D60(v29, v30, v31);
  static Published.subscript.setter();
  *(v2 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_headIndex) = *&v18[v15[8]];
  v32 = *&v18[v15[9]];
  sub_10002243C(v18);
  *(v2 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_tailIndex) = v32;
  v33 = v35;
  (*(v16 + 56))(v35, 1, 1, v15);
  v34 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_snapshot;
  swift_beginAccess();
  sub_100022368(v33, v2 + v34);
  return swift_endAccess();
}

__n128 sub_10001FC90@<Q0>(void *a1@<X8>)
{
  v2 = v1;
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000036BC(v4, qword_10003CE48);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "takeSnapshot()", v7, 2u);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v18);

  v17 = v18;
  v8 = v19;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v18);

  v16 = v18;
  v9 = v19;
  v10 = *(v2 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_headIndex);
  v11 = *(v2 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_tailIndex);
  v12 = type metadata accessor for StateSnapShot(0);
  v13 = a1 + v12[5];
  result = v16;
  *v13 = v17;
  *(v13 + 2) = v8;
  v15 = a1 + v12[6];
  *v15 = v16;
  *(v15 + 2) = v9;
  *(a1 + v12[7]) = 0;
  *(a1 + v12[8]) = v10;
  *(a1 + v12[9]) = v11;
  return result;
}

uint64_t sub_10001FEC0()
{
  v1 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout__previousButtonItem;
  v2 = sub_1000026FC(&qword_10003B748, &qword_1000294A8);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout__nextButtonItem, v2);
  v4 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout__visibleSubItems;
  v5 = sub_1000026FC(&qword_10003B750, &qword_1000294B0);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout__visibleTopItems, v5);
  v7 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout__closeButtonItem;
  v8 = sub_1000026FC(&qword_10003ACD0, &qword_100028478);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  sub_100007128(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_snapshot, &qword_10003B758, &qword_1000294B8);

  sub_1000210B4(*(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent), *(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 8), *(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 16), *(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 24), *(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 32), *(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 40), *(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 48), *(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 56), *(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 64), *(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 72), *(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 80));

  return v0;
}

uint64_t sub_1000200AC()
{
  sub_10001FEC0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_10002012C(uint64_t a1)
{
  sub_100020810(319, &qword_10003B2F8, &qword_10003B300, &qword_100029210, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    sub_100020810(319, &qword_10003B308, &qword_10003B310, &qword_100029218, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      sub_100020810(319, &qword_10003AC78, &qword_10003AC80, &qword_100027CE8, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        sub_10002076C(319, &unk_10003B318, type metadata accessor for StateSnapShot);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_100020380(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000203B8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ButtonBarLayout(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1000203F8(uint64_t a1)
{
  sub_100002AD8();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1000204C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000026FC(&qword_10003AC80, &qword_100027CE8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000205B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000026FC(&qword_10003AC80, &qword_100027CE8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = a2;
  }

  return result;
}

void sub_100020678(uint64_t a1)
{
  sub_10002076C(319, &qword_10003B6F0, type metadata accessor for CameraCloseButton);
  if (v1 <= 0x3F)
  {
    sub_1000207C0();
    if (v2 <= 0x3F)
    {
      sub_100020810(319, &unk_10003B700, &qword_10003AC90, &qword_100027CA8, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10002076C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000207C0()
{
  if (!qword_10003B6F8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10003B6F8);
    }
  }
}

void sub_100020810(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1000028A8(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100020874@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LayoutSize();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1000208C4(uint64_t a1, void **a2)
{
  v4 = sub_1000026FC(&qword_10003AC80, &qword_100027CE8);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  sub_1000070C0(a1, &v13 - v8, &qword_10003AC80, &qword_100027CE8);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000070C0(v9, v6, &qword_10003AC80, &qword_100027CE8);
  v11 = v10;
  static Published.subscript.setter();
  return sub_100007128(v9, &qword_10003AC80, &qword_100027CE8);
}

uint64_t sub_100020A04@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a4);
}

uint64_t sub_100020AA4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000026FC(&qword_10003AC80, &qword_100027CE8);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_1000070C0(a1, &v10 - v7, &qword_10003AC80, &qword_100027CE8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000070C0(v8, v5, &qword_10003AC80, &qword_100027CE8);

  static Published.subscript.setter();
  sub_10001D964();
  return sub_100007128(v8, &qword_10003AC80, &qword_100027CE8);
}

double sub_100020C18@<D0>(uint64_t a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v7);

  v5 = v8;
  result = *&v7;
  *a4 = v7;
  *(a4 + 16) = v5;
  return result;
}

uint64_t sub_100020CB0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_100006D60(v6, v7, v8);
  return static Published.subscript.setter();
}

uint64_t sub_100020D7C@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  *a4 = v6;
  return result;
}

uint64_t sub_100020E0C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_100020F7C()
{
  result = qword_10003B740;
  if (!qword_10003B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B740);
  }

  return result;
}

uint64_t sub_100020FD0()
{
  sub_1000068C0(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 73, 7);
}

void sub_1000210B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {

    sub_1000068C0(a5, a6 & 1);
  }
}

unint64_t sub_100021134(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_1000026FC(&qword_10003B7A0, &unk_1000294E0);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    sub_100022274(&qword_10003B7A8, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_100022274(&qword_10003B7B0, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      while (1)
      {
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void sub_1000213C8(void *a1, double a2)
{
  v3 = v2;
  v79 = a1;
  v5 = sub_1000026FC(&qword_10003B760, &qword_1000294C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v64 - v7;
  v9 = sub_1000026FC(&qword_10003B768, &qword_1000294C8);
  v75 = *(v9 - 8);
  v76 = v9;
  __chkstk_darwin(v9);
  v74 = &v64 - v10;
  v11 = sub_1000026FC(&qword_10003B770, &qword_1000294D0);
  v72 = *(v11 - 8);
  v73 = v11;
  __chkstk_darwin(v11);
  v71 = &v64 - v12;
  v13 = sub_1000026FC(&qword_10003B778, &qword_1000294D8);
  v69 = *(v13 - 8);
  v70 = v13;
  __chkstk_darwin(v13);
  v68 = &v64 - v14;
  v80 = sub_1000026FC(&qword_10003ACD0, &qword_100028478);
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v81 = &v64 - v15;
  v77 = sub_1000026FC(&qword_10003AC80, &qword_100027CE8);
  __chkstk_darwin(v77);
  v82 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v83 = (&v64 - v18);
  v19 = sub_1000026FC(&qword_10003B750, &qword_1000294B0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v64 - v21;
  v23 = sub_1000026FC(&qword_10003B748, &qword_1000294A8);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v64 - v25;
  if (qword_10003CE20)
  {
    v65 = v8;
    v66 = v6;
    v67 = v5;
    v27 = *(qword_10003CE20 + OBJC_IVAR____TtC9CarCamera17CameraAppDelegate_layoutConfig);
    if (v27 != 2)
    {
      *(v3 + 32) = v27 & 1;
      v28 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout__previousButtonItem;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      sub_1000026FC(&qword_10003B300, &qword_100029210);
      Published.init(initialValue:)();
      v29 = *(v24 + 32);
      v29(v3 + v28, v26, v23);
      v30 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout__nextButtonItem;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      Published.init(initialValue:)();
      v29(v3 + v30, v26, v23);
      v31 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout__visibleSubItems;
      v84 = 0;
      sub_1000026FC(&qword_10003B310, &qword_100029218);
      Published.init(initialValue:)();
      v32 = *(v20 + 32);
      v32(v3 + v31, v22, v19);
      v33 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout__visibleTopItems;
      v84 = 0;
      Published.init(initialValue:)();
      v32(v3 + v33, v22, v19);
      v34 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout__closeButtonItem;
      v35 = type metadata accessor for CameraCloseButton(0);
      v36 = v83;
      (*(*(v35 - 8) + 56))(v83, 1, 1, v35);
      sub_1000070C0(v36, v82, &qword_10003AC80, &qword_100027CE8);
      v37 = v81;
      Published.init(initialValue:)();
      sub_100007128(v36, &qword_10003AC80, &qword_100027CE8);
      (*(v78 + 32))(v3 + v34, v37, v80);
      v38 = &_swiftEmptyArrayStorage;
      if (&_swiftEmptyArrayStorage >> 62)
      {
        v63 = _CocoaArrayWrapper.endIndex.getter();
        v40 = v79;
        if (!v63)
        {
          goto LABEL_22;
        }

        v39 = sub_100021134(&_swiftEmptyArrayStorage);
      }

      else
      {
        v39 = &_swiftEmptySetSingleton;
        v40 = v79;
      }

      while (1)
      {
        *(v3 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_cancellables) = v39;
        v41 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_snapshot;
        v42 = type metadata accessor for StateSnapShot(0);
        (*(*(v42 - 8) + 56))(v3 + v41, 1, 1, v42);
        *(v3 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_isUpdating) = 0;
        *(v3 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_pageNumber) = 0;
        v43 = (v3 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent);
        *v43 = 0u;
        v43[1] = 0u;
        v43[2] = 0u;
        v43[3] = 0u;
        v43[4] = 0u;
        *(v43 + 73) = 0u;
        *(v3 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_headIndex) = 0;
        *(v3 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_tailIndex) = 0;
        *(v3 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_topLevelActionButtons) = v38;
        if (qword_10003A258 != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        sub_1000036BC(v44, qword_10003CE48);
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "ButtonBarLayout init", v47, 2u);
        }

        swift_beginAccess();
        v38 = type metadata accessor for CameraModel(0);
        sub_100022274(&qword_10003AE98, type metadata accessor for CameraModel, &unk_100028428);
        v40;
        *(v3 + 16) = ObservedObject.init(wrappedValue:)();
        *(v3 + 24) = v48;
        swift_endAccess();
        v49 = 36.0;
        if (*(v3 + 32))
        {
          v49 = 32.0;
        }

        v50 = a2 / v49;
        if ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v50 <= -9.22337204e18)
        {
          goto LABEL_19;
        }

        if (v50 >= 9.22337204e18)
        {
          goto LABEL_20;
        }

        v38 = v50;
        type metadata accessor for Pager();
        v51 = swift_allocObject();
        *(v51 + 32) = 0;
        *(v51 + 40) = 0;
        if (!__OFSUB__(v38, 1))
        {
          *(v51 + 16) = v38 - 1;
          *(v51 + 24) = 1;
          *(v3 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_pager) = v51;
          swift_getKeyPath();
          swift_getKeyPath();
          v52 = v83;
          static Published.subscript.getter(v83);

          swift_getKeyPath();
          swift_getKeyPath();
          sub_1000070C0(v52, v82, &qword_10003AC80, &qword_100027CE8);

          static Published.subscript.setter();
          sub_10001D964();
          sub_100007128(v52, &qword_10003AC80, &qword_100027CE8);
          swift_beginAccess();
          v53 = v68;
          Published.projectedValue.getter();
          swift_endAccess();
          swift_allocObject();
          swift_weakInit();
          sub_100022314(&qword_10003B780, &qword_10003B778, &qword_1000294D8);

          v54 = v70;
          Publisher<>.sink(receiveValue:)();

          (*(v69 + 8))(v53, v54);
          swift_beginAccess();
          AnyCancellable.store(in:)();
          swift_endAccess();

          swift_beginAccess();
          sub_1000026FC(&qword_10003ACC8, &qword_100028470);
          v55 = v71;
          Published.projectedValue.getter();
          swift_endAccess();
          swift_allocObject();
          swift_weakInit();
          sub_100022314(&qword_10003B788, &qword_10003B770, &qword_1000294D0);
          v56 = v73;
          Publisher<>.sink(receiveValue:)();

          (*(v72 + 8))(v55, v56);
          swift_beginAccess();
          AnyCancellable.store(in:)();
          swift_endAccess();

          swift_beginAccess();
          sub_1000026FC(&qword_10003ACC0, &qword_100028468);
          v57 = v74;
          Published.projectedValue.getter();
          swift_endAccess();
          swift_allocObject();
          swift_weakInit();
          sub_100022314(&qword_10003B790, &qword_10003B768, &qword_1000294C8);
          v58 = v76;
          Publisher<>.sink(receiveValue:)();

          (*(v75 + 8))(v57, v58);
          swift_beginAccess();
          AnyCancellable.store(in:)();
          swift_endAccess();

          swift_beginAccess();
          sub_1000026FC(&qword_10003ACB8, &qword_100028460);
          v59 = v65;
          Published.projectedValue.getter();
          swift_endAccess();
          swift_allocObject();
          swift_weakInit();

          sub_100022314(&qword_10003B798, &qword_10003B760, &qword_1000294C0);
          v60 = v67;
          Publisher<>.sink(receiveValue:)();

          (*(v66 + 8))(v59, v60);
          swift_beginAccess();
          AnyCancellable.store(in:)();
          swift_endAccess();

          v61 = sub_10001DAA8();

          sub_100002E08(v61, 0, 0, 0, 1, 0x692074756F79616CLL, 0xEB0000000074696ELL);

          sub_10001DE70(v62);

          return;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        v39 = &_swiftEmptySetSingleton;
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100022274(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000222BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022314(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000028A8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100022368(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026FC(&qword_10003B758, &qword_1000294B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000223D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateSnapShot(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002243C(uint64_t a1)
{
  v2 = type metadata accessor for StateSnapShot(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000224F4(uint64_t a1)
{
  v2 = v1;
  v74.receiver = v1;
  v74.super_class = type metadata accessor for CameraViewController();
  objc_msgSendSuper2(&v74, "viewDidLoad");
  if (!qword_10003CE20)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v3 = v1[OBJC_IVAR____TtC9CarCamera20CameraViewController_presentationMode];
  v4 = v3 != 2 && (v3 & 1) != 0;
  *(qword_10003CE20 + OBJC_IVAR____TtC9CarCamera17CameraAppDelegate_layoutConfig) = v4;
  v5 = [v1 view];
  if (!v5)
  {
    goto LABEL_32;
  }

  v6 = v5;
  [v5 frame];

  swift_getKeyPath();
  swift_getKeyPath();
  v7 = objc_allocWithZone(sub_1000026FC(&qword_10003B7E8, &qword_100029540));
  v8 = UIHostingController.init(rootView:)();
  v9 = [v8 view];
  if (!v9)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v10 = v9;
  v11 = [objc_opt_self() blackColor];
  [v10 setBackgroundColor:v11];

  [v2 addChildViewController:v8];
  v12 = [v8 view];
  if (!v12)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v13 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [v2 view];
  if (!v14)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v15 = v14;
  v16 = [v8 view];
  if (!v16)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v17 = v16;
  [v15 addSubview:v16];

  [v8 didMoveToParentViewController:v2];
  sub_1000026FC(&qword_10003B7F0, &qword_100029548);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000294F0;
  v19 = [v8 view];
  v20 = v19;
  if (v3 == 2)
  {
    if (v19)
    {
      v21 = [v19 topAnchor];

      v22 = [v2 view];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 safeAreaLayoutGuide];

        v25 = [v24 topAnchor];
        v26 = [v21 constraintEqualToAnchor:v25];

        *(v18 + 32) = v26;
        v27 = [v8 view];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 bottomAnchor];

          v30 = [v2 view];
          if (v30)
          {
            v31 = v30;
            v32 = [v30 safeAreaLayoutGuide];

            v33 = [v32 bottomAnchor];
            v34 = [v29 constraintEqualToAnchor:v33];

            *(v18 + 40) = v34;
            v35 = [v8 view];
            if (v35)
            {
              v36 = v35;
              v37 = [v35 leadingAnchor];

              v38 = [v2 view];
              if (v38)
              {
                v39 = v38;
                v40 = [v38 safeAreaLayoutGuide];

                v41 = [v40 leadingAnchor];
                v42 = [v37 constraintEqualToAnchor:v41];

                *(v18 + 48) = v42;
                v43 = [v8 view];

                if (v43)
                {
                  v44 = [v43 trailingAnchor];

                  v45 = [v2 view];
                  if (v45)
                  {
                    v46 = v45;
                    v47 = objc_opt_self();
                    v48 = [v46 safeAreaLayoutGuide];

                    v49 = [v48 trailingAnchor];
LABEL_30:
                    v71 = v49;

                    v72 = [v44 constraintEqualToAnchor:v71];
                    *(v18 + 56) = v72;
                    sub_100022E20();
                    isa = Array._bridgeToObjectiveC()().super.isa;

                    [v47 activateConstraints:isa];

                    CAFSignpostEmit_Rendered();
                    return;
                  }

                  goto LABEL_51;
                }

                goto LABEL_49;
              }

              goto LABEL_47;
            }

            goto LABEL_45;
          }

          goto LABEL_43;
        }

        goto LABEL_41;
      }

      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (!v19)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v50 = [v19 topAnchor];

  v51 = [v2 view];
  if (!v51)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v52 = v51;
  v53 = [v51 topAnchor];

  v54 = [v50 constraintEqualToAnchor:v53];
  *(v18 + 32) = v54;
  v55 = [v8 view];
  if (!v55)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v56 = v55;
  v57 = [v55 bottomAnchor];

  v58 = [v2 view];
  if (!v58)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v59 = v58;
  v60 = [v58 bottomAnchor];

  v61 = [v57 constraintEqualToAnchor:v60];
  *(v18 + 40) = v61;
  v62 = [v8 view];
  if (!v62)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v63 = v62;
  v64 = [v62 leadingAnchor];

  v65 = [v2 view];
  if (!v65)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v66 = v65;
  v67 = [v65 leadingAnchor];

  v68 = [v64 constraintEqualToAnchor:v67];
  *(v18 + 48) = v68;
  v69 = [v8 view];

  if (!v69)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v44 = [v69 trailingAnchor];

  v70 = [v2 view];
  if (v70)
  {
    v48 = v70;
    v47 = objc_opt_self();
    v49 = [v48 trailingAnchor];
    goto LABEL_30;
  }

LABEL_52:
  __break(1u);
}

id sub_100022DC0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CameraViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100022E20()
{
  result = qword_10003B7F8;
  if (!qword_10003B7F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003B7F8);
  }

  return result;
}

uint64_t sub_100022E6C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void sub_100022EE0()
{
  v0 = sub_1000026FC(&qword_10003B8C8, &qword_1000295D0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v19 - v2;
  v4 = sub_1000026FC(&qword_10003B8D0, &qword_1000295D8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - v6;
  v8 = [objc_allocWithZone(CAFCarManager) init];
  sub_100010EE0(0, &qword_10003B8D8, CAFCarManager_ptr);
  sub_100023F6C(&qword_10003B8E0, &qword_10003B8D8, CAFCarManager_ptr, &protocol conformance descriptor for CAFCarManager);
  v9 = CAFObserved<>.observable.getter();

  v10 = type metadata accessor for CameraCAFManager(0);
  v11 = objc_allocWithZone(v10);
  v12 = OBJC_IVAR____TtC9CarCamera16CameraCAFManager__model;
  v19[1] = 0;
  sub_1000026FC(&qword_10003B8C0, &qword_100029578);
  Published.init(initialValue:)();
  (*(v5 + 32))(&v11[v12], v7, v4);
  *&v11[OBJC_IVAR____TtC9CarCamera16CameraCAFManager_currentSession] = 0;
  *&v11[OBJC_IVAR____TtC9CarCamera16CameraCAFManager_requestContentManager] = 0;
  *&v11[OBJC_IVAR____TtC9CarCamera16CameraCAFManager_cancellables] = &_swiftEmptySetSingleton;
  v13 = OBJC_IVAR____TtC9CarCamera16CameraCAFManager_sessionStatus;
  *&v11[v13] = [objc_allocWithZone(CARSessionStatus) initWithOptions:1];
  v14 = [objc_allocWithZone(CARSessionStatus) init];
  *&v11[OBJC_IVAR____TtC9CarCamera16CameraCAFManager_carSessionStatus] = v14;
  *&v11[OBJC_IVAR____TtC9CarCamera16CameraCAFManager_carManager] = v9;
  v20.receiver = v11;
  v20.super_class = v10;
  v15 = v9;
  v16 = objc_msgSendSuper2(&v20, "init");
  v17 = *&v16[OBJC_IVAR____TtC9CarCamera16CameraCAFManager_carSessionStatus];
  v18 = v16;
  [v17 addSessionObserver:v18];
  dispatch thunk of CAFCarManagerObservable.$currentCar.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100007210(&qword_10003B8E8, &qword_10003B8C8, &qword_1000295D0, &protocol conformance descriptor for Published<A>.Publisher);
  Publisher<>.sink(receiveValue:)();

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_1000234D8();

  qword_10003CEB8 = v18;
}

uint64_t sub_1000232B4(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000036BC(v3, qword_10003CE48);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v2;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "[CAMERA] currentCar %@", v7, 0xCu);
    sub_100023FB0(v8);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (v2)
    {
      sub_100010EE0(0, &qword_10003B8F0, CAFCar_ptr);
      sub_100023F6C(&unk_10003B8F8, &qword_10003B8F0, CAFCar_ptr, &protocol conformance descriptor for CAFCar);
      v11 = CAFObserved<>.observable.getter();
      v12 = objc_allocWithZone(type metadata accessor for CameraModel(0));
      sub_10000BFDC(v11);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

id sub_1000234D8()
{
  v1 = v0;
  result = [*(v0 + OBJC_IVAR____TtC9CarCamera16CameraCAFManager_carSessionStatus) currentSession];
  if (result)
  {
    if (qword_10003A258 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000036BC(v3, qword_10003CE48);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "[CAMERA] Created Request Content Manager", v6, 2u);
    }

    type metadata accessor for CAFUIRequestContentManager();
    swift_allocObject();
    *(v1 + OBJC_IVAR____TtC9CarCamera16CameraCAFManager_requestContentManager) = CAFUIRequestContentManager.init(session:)();
  }

  return result;
}

uint64_t sub_10002363C(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v15 = *(v5 - 8);
  v16 = v5;
  __chkstk_darwin(v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100010EE0(0, &qword_10003B908, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = a1;
  aBlock[4] = sub_100024058;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000239D0;
  aBlock[3] = &unk_1000362C8;
  v11 = _Block_copy(aBlock);

  v12 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100024078();
  sub_1000026FC(&qword_10003B918, &qword_100029630);
  sub_100007210(&unk_10003B920, &qword_10003B918, &qword_100029630, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v17 + 8))(v4, v2);
  (*(v15 + 8))(v7, v16);
}

void sub_100023930(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC9CarCamera16CameraCAFManager_currentSession);
    *(Strong + OBJC_IVAR____TtC9CarCamera16CameraCAFManager_currentSession) = a2;
    v5 = Strong;
    v6 = a2;
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    sub_1000234D8();
  }
}

uint64_t sub_1000239D0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100023A7C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *&Strong[OBJC_IVAR____TtC9CarCamera16CameraCAFManager_currentSession];
    *&Strong[OBJC_IVAR____TtC9CarCamera16CameraCAFManager_currentSession] = 0;
  }
}

id sub_100023B6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraCAFManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CameraCAFManager(uint64_t a1)
{
  result = qword_10003B8A8;
  if (!qword_10003B8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100023CD0(uint64_t a1)
{
  sub_100023D8C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100023D8C(uint64_t a1)
{
  if (!qword_10003B8B8)
  {
    sub_1000028A8(&qword_10003B8C0, &qword_100029578);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_10003B8B8);
    }
  }
}

uint64_t sub_100023DF0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CameraCAFManager(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100023E30@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_100023EB0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_100023F24()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023F6C(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100010EE0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100023FB0(uint64_t a1)
{
  v2 = sub_1000026FC(&qword_10003AD20, &qword_100028570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100024018()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100024060(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100024078()
{
  result = qword_10003B910;
  if (!qword_10003B910)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B910);
  }

  return result;
}

uint64_t sub_1000240D0()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v11 = *(v3 - 8);
  v12 = v3;
  __chkstk_darwin(v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100010EE0(0, &qword_10003B908, OS_dispatch_queue_ptr);
  v7 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1000243A4;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000239D0;
  aBlock[3] = &unk_1000362F0;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100024078();
  sub_1000026FC(&qword_10003B918, &qword_100029630);
  sub_100007210(&unk_10003B920, &qword_10003B918, &qword_100029630, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v13 + 8))(v2, v0);
  (*(v11 + 8))(v5, v12);
}

uint64_t sub_1000243B4()
{

  sub_100008EDC(v0 + 4);

  sub_10000B7EC(v0[11], v0[12]);

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t sub_100024428@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

unint64_t sub_100024438()
{
  v1 = *v0;
  _StringGuts.grow(_:)(21);

  String.append(_:)(v1[1]);
  v2._countAndFlagsBits = 62;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 0xD000000000000012;
}

uint64_t sub_1000244B8(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

void sub_1000244F0(Swift::String *a1)
{
  if (qword_10003A260 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000036BC(v2, qword_10003CE60);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315138;
    v9 = v5;
    _StringGuts.grow(_:)(21);

    String.append(_:)(a1[1]);
    v6._countAndFlagsBits = 62;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    v7 = sub_10000B720(0xD000000000000012, 0x8000000100029A90, &v9);

    *(v4 + 4) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v3, "[ButtonBarEntity] NavigationButton action %s", v4, 0xCu);
    sub_100008EDC(v5);
  }
}

uint64_t sub_1000246A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1000246EC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100024710(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100024758(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100024804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  v8 = __chkstk_darwin(v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000248FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  v8 = __chkstk_darwin(v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000249F4(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t sub_100024BC4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v27[1] = type metadata accessor for VStack();
  v27[2] = type metadata accessor for VStack();
  type metadata accessor for _ConditionalContent();
  v6 = type metadata accessor for Group();
  v30 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v27 - v7;
  v9 = type metadata accessor for ModifiedContent();
  v31 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v27 - v10;
  v12 = type metadata accessor for ModifiedContent();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v28 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v29 = v27 - v16;
  v33 = v5;
  v34 = v4;
  v35 = v3;
  WitnessTable = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v41 = WitnessTable;
  v42 = v18;
  v19 = swift_getWitnessTable();
  Group<A>.init(content:)();
  static Edge.Set.horizontal.getter();
  v40 = v19;
  v20 = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v30 + 8))(v8, v6);
  static Edge.Set.vertical.getter();
  v38 = v20;
  v39 = &protocol witness table for _PaddingLayout;
  v21 = swift_getWitnessTable();
  v22 = v28;
  View.padding(_:_:)();
  (*(v31 + 8))(v11, v9);
  v36 = v21;
  v37 = &protocol witness table for _PaddingLayout;
  swift_getWitnessTable();
  v23 = *(v13 + 16);
  v24 = v29;
  v23(v29, v22, v12);
  v25 = *(v13 + 8);
  v25(v22, v12);
  v23(v32, v24, v12);
  return (v25)(v24, v12);
}

uint64_t sub_100025040@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a4;
  v7 = type metadata accessor for VStack();
  v40 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v39 = &v37 - v11;
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for VStack();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v37 - v17;
  v19 = type metadata accessor for _ConditionalContent();
  v42 = *(v19 - 8);
  v43 = v19;
  __chkstk_darwin(v19);
  v41 = &v37 - v21;
  if (*a1)
  {
    VStack.init(alignment:spacing:content:)();
    WitnessTable = swift_getWitnessTable();
    v22 = v39;
    v23 = v40;
    v24 = v40[2];
    v24(v39, v9, v7);
    v25 = v23[1];
    v25(v9, v7);
    v24(v9, v22, v7);
    v26 = swift_getWitnessTable();
    v27 = v41;
    sub_1000248FC(v9, v12, v7, v26, WitnessTable);
    v25(v9, v7);
    v25(v22, v7);
  }

  else
  {
    v40 = &v37;
    __chkstk_darwin(v20);
    *(&v37 - 4) = a2;
    *(&v37 - 3) = a3;
    *(&v37 - 2) = a1;
    static HorizontalAlignment.center.getter();
    VStack.init(alignment:spacing:content:)();
    v28 = swift_getWitnessTable();
    v29 = *(v13 + 16);
    v29(v18, v15, v12);
    v30 = *(v13 + 8);
    v30(v15, v12);
    v29(v15, v18, v12);
    v31 = swift_getWitnessTable();
    v27 = v41;
    sub_100024804(v15, v12, v7, v28, v31);
    v30(v15, v12);
    v30(v18, v12);
  }

  v32 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  v45 = v32;
  v46 = v33;
  v34 = v43;
  swift_getWitnessTable();
  v35 = v42;
  (*(v42 + 16))(v44, v27, v34);
  return (*(v35 + 8))(v27, v34);
}

uint64_t sub_100025568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for HStack();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v14 - v8;
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  v11 = *(v4 + 16);
  v11(v9, v6, v3);
  v12 = *(v4 + 8);
  v12(v6, v3);
  v16 = 0;
  v17 = 1;
  v18[0] = &v16;
  v11(v6, v9, v3);
  v18[1] = v6;
  v15[0] = &type metadata for Spacer;
  v15[1] = v3;
  v14[0] = &protocol witness table for Spacer;
  v14[1] = WitnessTable;
  sub_1000249F4(v18, 2uLL, v15);
  v12(v9, v3);
  return (v12)(v6, v3);
}

uint64_t sub_1000257E0(void *a1)
{
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for VStack();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}