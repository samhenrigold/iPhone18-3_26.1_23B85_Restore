id sub_100001810(void *a1)
{
  v2 = [a1 role];
  _StringGuts.grow(_:)(44);

  v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x3D6469203BLL;
  v4._object = 0xE500000000000000;
  String.append(_:)(v4);
  v5 = [a1 persistentIdentifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  if (qword_100019D80 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100001E6C(v10, qword_100019F70);
  v11 = static os_log_type_t.info.getter();
  v57 = 0xD000000000000032;
  v58 = 0x800000010000FBB0;
  v12 = sub_100001EA4(8);
  if (v13)
  {
    v56._countAndFlagsBits = 32;
    v56._object = 0xE100000000000000;
    String.append(_:)(*&v12);

    v14._countAndFlagsBits = 32;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
  }

  v15 = (0x800000010000FBF0 >> 56) & 0xF;
  if ((0x800000010000FBF0 & 0x2000000000000000) == 0)
  {
    v15 = 35;
  }

  if (v15)
  {
    v56._countAndFlagsBits = 32;
    v56._object = 0xE100000000000000;
    v16._countAndFlagsBits = 0xD000000000000023;
    v16._object = 0x800000010000FBF0;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 32;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
  }

  v19 = v57;
  v18 = v58;
  v20 = Logger.logObject.getter();
  if (os_log_type_enabled(v20, v11))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v56._countAndFlagsBits = v22;
    *v21 = 136315138;
    v23 = sub_100002378(v19, v18, &v56._countAndFlagsBits);

    *(v21 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v20, v11, "%s", v21, 0xCu);
    sub_100003024(v22);
  }

  else
  {
  }

  v24 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:v2];
  v25 = v2;
  v26 = static UISceneSessionRole.intelligenceLight.getter();
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;
  if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v30)
  {

LABEL_16:
    type metadata accessor for LightSceneDelegate();
    goto LABEL_17;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v31)
  {
    goto LABEL_16;
  }

  v33 = v25;
  v34 = String._bridgeToObjectiveC()();
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;
  if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
  {

LABEL_22:
    type metadata accessor for NoiseSceneDelegate();
    goto LABEL_17;
  }

  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v39)
  {
    goto LABEL_22;
  }

  v57 = 0;
  v58 = 0xE000000000000000;
  _StringGuts.grow(_:)(89);
  v40._countAndFlagsBits = 0xD000000000000035;
  v40._object = 0x800000010000FC50;
  String.append(_:)(v40);
  v41._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v41);

  v42._countAndFlagsBits = 0xD000000000000022;
  v42._object = 0x800000010000FC90;
  String.append(_:)(v42);
  v44 = v57;
  v43 = v58;
  v45 = static os_log_type_t.error.getter();
  v57 = 0xD000000000000032;
  v58 = 0x800000010000FBB0;
  v46 = sub_100001EA4(8);
  if (v47)
  {
    v56._countAndFlagsBits = 32;
    v56._object = 0xE100000000000000;
    String.append(_:)(*&v46);

    String.append(_:)(v56);
  }

  v48 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v48 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (v48)
  {
    v56._countAndFlagsBits = 32;
    v56._object = 0xE100000000000000;
    v49._countAndFlagsBits = v44;
    v49._object = v43;
    String.append(_:)(v49);
    String.append(_:)(v56);
  }

  v51 = v57;
  v50 = v58;
  v52 = Logger.logObject.getter();
  if (os_log_type_enabled(v52, v45))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v56._countAndFlagsBits = v54;
    *v53 = 136315138;
    v55 = sub_100002378(v51, v50, &v56._countAndFlagsBits);

    *(v53 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v52, v45, "%s", v53, 0xCu);
    sub_100003024(v54);
  }

  else
  {
  }

  type metadata accessor for EmptySceneDelegate();
LABEL_17:
  [v24 setDelegateClass:swift_getObjCClassFromMetadata()];

  return v24;
}

uint64_t sub_100001E6C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001EA4(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = &_swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_100002170(0, 1, 1, &_swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100002170((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x746867696C23;
  *(v5 + 5) = 0xE600000000000000;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100002170(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100002170((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x6F6964756123;
    *(v8 + 5) = 0xE600000000000000;
  }

LABEL_12:
  if ((a1 & 4) == 0)
  {
    if ((a1 & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_21:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100002170(0, *(v2 + 2) + 1, 1, v2);
    }

    v14 = *(v2 + 2);
    v13 = *(v2 + 3);
    if (v14 >= v13 >> 1)
    {
      v2 = sub_100002170((v13 > 1), v14 + 1, 1, v2);
    }

    *(v2 + 2) = v14 + 1;
    v15 = &v2[16 * v14];
    *(v15 + 4) = 0x656E65637323;
    *(v15 + 5) = 0xE600000000000000;
    goto LABEL_26;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100002170(0, *(v2 + 2) + 1, 1, v2);
  }

  v11 = *(v2 + 2);
  v10 = *(v2 + 3);
  if (v11 >= v10 >> 1)
  {
    v2 = sub_100002170((v10 > 1), v11 + 1, 1, v2);
  }

  *(v2 + 2) = v11 + 1;
  v12 = &v2[16 * v11];
  *(v12 + 4) = 0x6573696F6E23;
  *(v12 + 5) = 0xE600000000000000;
  if ((a1 & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_14:
  if (*(v2 + 2))
  {
LABEL_26:
    v17 = v2;

    sub_100002550(&v17);

    sub_10000A298(&qword_100019FB0, &qword_10000E390);
    sub_1000026A0();
    v9 = BidirectionalCollection<>.joined(separator:)();

    return v9;
  }

  return 0;
}

char *sub_100002170(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A298(&qword_100019FC0, &qword_10000E398);
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

Swift::Int sub_100002280(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1000099BC(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000025D0(0, v2, 1, a1);
  }

  return result;
}

unint64_t sub_100002378(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002704(v11, 0, 0, 1, a1, a2);
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
    sub_100003070(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003024(v11);
  return v7;
}

char *sub_100002444(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A298(&qword_100019FC0, &qword_10000E398);
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

Swift::Int sub_100002550(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000025BC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100002280(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1000025D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1000026A0()
{
  result = qword_100019FB8;
  if (!qword_100019FB8)
  {
    sub_10000A2E0(&qword_100019FB0, &qword_10000E390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019FB8);
  }

  return result;
}

unint64_t sub_100002704(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100009470(a5, a6);
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

void sub_1000028F0(void *a1, void *a2, void *a3)
{
  v4 = v3;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v76 = a1;
    _StringGuts.grow(_:)(48);

    v10 = [a2 persistentIdentifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    String.append(_:)(v14);

    v15._object = 0x800000010000FFE0;
    v15._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v15);
    v16 = a3;
    v17 = [v16 description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);

    if (qword_100019D80 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100001E6C(v22, qword_100019F70);
    v23 = static os_log_type_t.info.getter();
    v77 = 0xD00000000000001FLL;
    v78 = 0x8000000100010020;
    v24 = sub_100001EA4(1);
    if (v25)
    {
      v82._countAndFlagsBits = 32;
      v82._object = 0xE100000000000000;
      String.append(_:)(*&v24);

      v26._countAndFlagsBits = 32;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);
    }

    v27 = (0x8000000100010040 >> 56) & 0xF;
    if ((0x8000000100010040 & 0x2000000000000000) == 0)
    {
      v27 = 28;
    }

    if (v27)
    {
      v82._countAndFlagsBits = 32;
      v82._object = 0xE100000000000000;
      v28._countAndFlagsBits = 0xD00000000000001CLL;
      v28._object = 0x8000000100010040;
      String.append(_:)(v28);
      v29._countAndFlagsBits = 32;
      v29._object = 0xE100000000000000;
      String.append(_:)(v29);
    }

    v31 = v77;
    v30 = v78;
    v32 = Logger.logObject.getter();
    if (os_log_type_enabled(v32, v23))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v82._countAndFlagsBits = v34;
      *v33 = 136315138;
      v35 = sub_100002378(v31, v30, &v82._countAndFlagsBits);

      *(v33 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v32, v23, "%s", v33, 0xCu);
      sub_100003024(v34);
    }

    else
    {
    }

    v36 = OBJC_IVAR____TtC16IntelligentLight18LightSceneDelegate_moduleManager;
    v37 = *&v4[OBJC_IVAR____TtC16IntelligentLight18LightSceneDelegate_moduleManager];
    v38 = &OBJC_METACLASS____TtC16IntelligentLight11SceneModule;
    if (v37)
    {
      v39 = *(v37 + OBJC_IVAR____TtC16IntelligentLight13ModuleManager_lightLayerModule);
      v40 = [v9 screen];
      sub_100003210(v40);
    }

    if (UISceneConnectionOptions.prefersAudioReactivity.getter())
    {
      v41 = *&v4[v36];
      if (v41)
      {
        v75 = *(v41 + OBJC_IVAR____TtC16IntelligentLight13ModuleManager_audioPowerModule);
        v42 = static os_log_type_t.info.getter();
        v77 = 0xD000000000000017;
        v78 = 0x8000000100010060;
        v43 = sub_100001EA4(2);
        if (v44)
        {
          v82._countAndFlagsBits = 32;
          v82._object = 0xE100000000000000;
          String.append(_:)(*&v43);

          String.append(_:)(v82);
        }

        v82._countAndFlagsBits = 32;
        v82._object = 0xE100000000000000;
        v45._countAndFlagsBits = 0x747261747323;
        v45._object = 0xE600000000000000;
        String.append(_:)(v45);
        String.append(_:)(v82);

        v47 = v77;
        v46 = v78;
        v48 = Logger.logObject.getter();
        if (os_log_type_enabled(v48, v42))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v82._countAndFlagsBits = v50;
          *v49 = 136315138;
          v51 = sub_100002378(v47, v46, &v82._countAndFlagsBits);

          *(v49 + 4) = v51;
          _os_log_impl(&_mh_execute_header, v48, v42, "%s", v49, 0xCu);
          sub_100003024(v50);
          v38 = &OBJC_METACLASS____TtC16IntelligentLight11SceneModule;
        }

        else
        {
        }

        v52 = *&v75[OBJC_IVAR____TtC16IntelligentLight16AudioPowerModule_audioPowerUpdater];
        [v52 startObservingUpdates];
      }
    }

    v53 = [objc_allocWithZone(type metadata accessor for SiriLightHostWindow()) initWithWindowScene:v9];
    [v53 bounds];
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v62 = v53;
    v63 = [v62 screen];
    [v63 nativeBounds];

    v64 = [v62 screen];
    v65 = [v64 displayIdentity];

    if (v65)
    {
      v66 = *&v4[v36];
      if (v66)
      {
        v67 = *(v66 + v38[22].info);
        v68 = type metadata accessor for LightLayerModule();
        v69 = v67;
        v66 = &off_100014B30;
      }

      else
      {
        v69 = 0;
        v68 = 0;
        v78 = 0;
        v79 = 0;
      }

      v77 = v69;
      v80 = v68;
      v81 = v66;
      v70 = objc_allocWithZone(type metadata accessor for SiriLightHostView());
      v71 = sub_1000051C4(v65, &v77, v55, v57, v59, v61);
      [v71 setAutoresizingMask:18];
      [v62 addSubview:v71];
      v72 = *&v4[OBJC_IVAR____TtC16IntelligentLight18LightSceneDelegate_contentView];
      *&v4[OBJC_IVAR____TtC16IntelligentLight18LightSceneDelegate_contentView] = v71;
      v73 = v71;

      [v4 setWindow:v62];
      v74 = *&v4[OBJC_IVAR____TtC16IntelligentLight18LightSceneDelegate_window];
      [v74 makeKeyAndVisible];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100003024(void *a1)
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

uint64_t sub_100003070(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_1000030F0()
{
  v1 = OBJC_IVAR____TtC16IntelligentLight18LightSceneDelegate_moduleManager;
  *&v0[OBJC_IVAR____TtC16IntelligentLight18LightSceneDelegate_moduleManager] = 0;
  *&v0[OBJC_IVAR____TtC16IntelligentLight18LightSceneDelegate_window] = 0;
  *&v0[OBJC_IVAR____TtC16IntelligentLight18LightSceneDelegate_contentView] = 0;
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    type metadata accessor for IntelligentLightAppDelegate();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____TtC16IntelligentLight27IntelligentLightAppDelegate_moduleManager);
      v6 = v5;
    }

    else
    {
      v5 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  v7 = *&v0[v1];
  *&v0[v1] = v5;

  v9.receiver = v0;
  v9.super_class = type metadata accessor for LightSceneDelegate();
  return objc_msgSendSuper2(&v9, "init");
}

void sub_100003210(void *a1)
{
  v2 = v1;
  v4 = [a1 displayIdentity];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = OBJC_IVAR____TtC16IntelligentLight16LightLayerModule_displayContexts;
  swift_beginAccess();
  if (*(*(v1 + v6) + 16))
  {

    sub_100003E94(v5);
    if (v7)
    {

      return;
    }
  }

  v8 = [a1 traitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9)
  {
    v10 = [a1 traitCollection];
    v11 = [v10 userInterfaceIdiom];

    v12 = [a1 displayConfiguration];
    v13 = v12;
    if (v11 == 3)
    {
      if (v12)
      {
        [v12 bounds];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;

        goto LABEL_15;
      }

      __break(1u);
LABEL_53:
      __break(1u);
      return;
    }

    if (!v12)
    {
      goto LABEL_53;
    }

    v24 = [v12 currentMode];

    [v24 nativePixelSize];
  }

  else
  {
    v22 = [*(v2 + OBJC_IVAR____TtC16IntelligentLight16LightLayerModule_displayMonitor) configurationForIdentity:v5];
    if (!v22)
    {
      v77 = (*((swift_isaMask & *v2) + 0x118))();
      _StringGuts.grow(_:)(47);

      v78 = [v5 description];
      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = v80;

      v82._countAndFlagsBits = v79;
      v82._object = v81;
      String.append(_:)(v82);

      if (qword_100019D80 != -1)
      {
        swift_once();
      }

      v83 = type metadata accessor for Logger();
      sub_100001E6C(v83, qword_100019F70);
      v84 = static os_log_type_t.error.getter();
      *&v100 = 0xD00000000000001DLL;
      *(&v100 + 1) = 0x8000000100010370;
      v85 = sub_100001EA4(v77);
      if (v86)
      {
        v98 = 32;
        v99 = 0xE100000000000000;
        String.append(_:)(*&v85);

        v87._countAndFlagsBits = 32;
        v87._object = 0xE100000000000000;
        String.append(_:)(v87);
      }

      v88 = (0x8000000100010400 >> 56) & 0xF;
      if ((0x8000000100010400 & 0x2000000000000000) == 0)
      {
        v88 = 45;
      }

      if (v88)
      {
        v98 = 32;
        v99 = 0xE100000000000000;
        v89._countAndFlagsBits = 0xD00000000000002DLL;
        v89._object = 0x8000000100010400;
        String.append(_:)(v89);
        v90._countAndFlagsBits = 32;
        v90._object = 0xE100000000000000;
        String.append(_:)(v90);
      }

      v91 = v100;
      v70 = Logger.logObject.getter();
      if (os_log_type_enabled(v70, v84))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v98 = v93;
        *v92 = 136315138;
        v94 = sub_100002378(v91, *(&v91 + 1), &v98);

        *(v92 + 4) = v94;
        _os_log_impl(&_mh_execute_header, v70, v84, "%s", v92, 0xCu);
        sub_100003024(v93);

        goto LABEL_47;
      }

LABEL_49:

      goto LABEL_50;
    }

    v23 = v22;
    [v22 pixelSize];
  }

  v15 = sub_1000073FC();
  v17 = v25;
  v19 = v26;
  v21 = v27;
LABEL_15:
  v28 = [objc_allocWithZone(SUICIntelligentLightLayer) initWithScreen:a1 commandQueue:0];
  [v28 setColorPalette:(*((swift_isaMask & *v2) + 0x110))()];
  if (*(v2 + OBJC_IVAR____TtC16IntelligentLight16LightLayerModule_reducedFramerateMode) == 1)
  {
    [v28 startReducedFramerateForPerformance];
  }

  v29 = objc_opt_self();
  sub_10000A298(&qword_10001A2B0, &qword_10000E5E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000E510;
  *&v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v100 + 1) = v31;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  sub_10000755C(inited);
  swift_setDeallocating();
  sub_100007E9C(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v33 = [v29 remoteContextWithOptions:isa];

  if (!v33)
  {
    v55 = (*((swift_isaMask & *v2) + 0x118))();
    _StringGuts.grow(_:)(46);

    v56 = [v5 description];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    v60._countAndFlagsBits = v57;
    v60._object = v59;
    String.append(_:)(v60);

    if (qword_100019D80 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_100001E6C(v61, qword_100019F70);
    v62 = static os_log_type_t.error.getter();
    *&v100 = 0xD00000000000001DLL;
    *(&v100 + 1) = 0x8000000100010370;
    v63 = sub_100001EA4(v55);
    if (v64)
    {
      v98 = 32;
      v99 = 0xE100000000000000;
      String.append(_:)(*&v63);

      v65._countAndFlagsBits = 32;
      v65._object = 0xE100000000000000;
      String.append(_:)(v65);
    }

    v66 = (0x8000000100010390 >> 56) & 0xF;
    if ((0x8000000100010390 & 0x2000000000000000) == 0)
    {
      v66 = 44;
    }

    if (v66)
    {
      v98 = 32;
      v99 = 0xE100000000000000;
      v67._countAndFlagsBits = 0xD00000000000002CLL;
      v67._object = 0x8000000100010390;
      String.append(_:)(v67);
      v68._countAndFlagsBits = 32;
      v68._object = 0xE100000000000000;
      String.append(_:)(v68);
    }

    v69 = v100;
    v70 = Logger.logObject.getter();
    if (os_log_type_enabled(v70, v62))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v98 = v72;
      *v71 = 136315138;
      v73 = sub_100002378(v69, *(&v69 + 1), &v98);

      *(v71 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v70, v62, "%s", v71, 0xCu);
      sub_100003024(v72);

LABEL_47:

LABEL_50:
      return;
    }

    goto LABEL_49;
  }

  v95 = v28;
  v34 = [v33 setLayer:v28];
  v35 = (*((swift_isaMask & *v2) + 0x118))(v34);
  _StringGuts.grow(_:)(66);
  v36._countAndFlagsBits = 0xD000000000000032;
  v36._object = 0x80000001000103C0;
  String.append(_:)(v36);
  v96 = v5;
  v37 = [v5 description];
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41._countAndFlagsBits = v38;
  v41._object = v40;
  String.append(_:)(v41);

  v42._countAndFlagsBits = 0x747865746E6F6320;
  v42._object = 0xEB00000000206449;
  String.append(_:)(v42);
  LODWORD(v98) = [v33 contextId];
  v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v43);

  v44._countAndFlagsBits = 46;
  v44._object = 0xE100000000000000;
  String.append(_:)(v44);
  if (qword_100019D80 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_100001E6C(v45, qword_100019F70);
  v46 = static os_log_type_t.info.getter();
  *&v100 = 0xD00000000000001DLL;
  *(&v100 + 1) = 0x8000000100010370;
  v47 = sub_100001EA4(v35);
  if (v48)
  {
    v98 = 32;
    v99 = 0xE100000000000000;
    String.append(_:)(*&v47);

    v49._countAndFlagsBits = 32;
    v49._object = 0xE100000000000000;
    String.append(_:)(v49);
  }

  v50 = v100;
  v51 = Logger.logObject.getter();
  if (os_log_type_enabled(v51, v46))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v98 = v53;
    *v52 = 136315138;
    v54 = sub_100002378(v50, *(&v50 + 1), &v98);

    *(v52 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v51, v46, "%s", v52, 0xCu);
    sub_100003024(v53);
  }

  else
  {
  }

  *&v100 = v95;
  *(&v100 + 1) = v33;
  v101 = v15;
  v102 = v17;
  v103 = v19;
  v104 = v21;
  swift_beginAccess();
  v74 = v95;
  v75 = v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v97 = *(v2 + v6);
  *(v2 + v6) = 0x8000000000000000;
  sub_100007F04(&v100, v96, isUniquelyReferenced_nonNull_native);

  *(v2 + v6) = v97;
  swift_endAccess();
}

unint64_t sub_100003E94(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_100003ED8(a1, v4);
}

unint64_t sub_100003ED8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100003F9C();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100003F9C()
{
  result = qword_10001A2A8;
  if (!qword_10001A2A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001A2A8);
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for IntelligentLightApp();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for IntelligentLightAppDelegate();
  v7 = swift_getObjCClassFromMetadata();
  v8 = NSStringFromClass(v7);
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v3, v4, v6, v8);

  return 0;
}

char *sub_100004280()
{
  *&v0[OBJC_IVAR____TtC16IntelligentLight13ModuleManager_lightLayerModule] = [objc_allocWithZone(type metadata accessor for LightLayerModule()) init];
  *&v0[OBJC_IVAR____TtC16IntelligentLight13ModuleManager_audioPowerModule] = [objc_allocWithZone(type metadata accessor for AudioPowerModule()) init];
  *&v0[OBJC_IVAR____TtC16IntelligentLight13ModuleManager_noiseLayerModule] = [objc_allocWithZone(type metadata accessor for NoiseLayerModule()) init];
  *&v0[OBJC_IVAR____TtC16IntelligentLight13ModuleManager_sceneModule] = [objc_allocWithZone(type metadata accessor for SceneModule()) init];
  v17.receiver = v0;
  v17.super_class = type metadata accessor for ModuleManager();
  v1 = objc_msgSendSuper2(&v17, "init");
  v2 = OBJC_IVAR____TtC16IntelligentLight13ModuleManager_lightLayerModule;
  *(*&v1[OBJC_IVAR____TtC16IntelligentLight13ModuleManager_lightLayerModule] + OBJC_IVAR____TtC16IntelligentLight16LightLayerModule_moduleAccessor + 8) = &off_100014B58;
  swift_unknownObjectWeakAssign();
  v3 = OBJC_IVAR____TtC16IntelligentLight13ModuleManager_audioPowerModule;
  v4 = *&v1[OBJC_IVAR____TtC16IntelligentLight13ModuleManager_audioPowerModule];
  v5 = v1;
  v6 = v4;
  sub_100006920(v5, v6);

  v7 = OBJC_IVAR____TtC16IntelligentLight13ModuleManager_noiseLayerModule;
  *(*&v5[OBJC_IVAR____TtC16IntelligentLight13ModuleManager_noiseLayerModule] + OBJC_IVAR____TtC16IntelligentLight16LightLayerModule_moduleAccessor + 8) = &off_100014B58;
  swift_unknownObjectWeakAssign();
  v8 = *&v5[OBJC_IVAR____TtC16IntelligentLight13ModuleManager_sceneModule];
  v9 = v5;
  v10 = v8;
  sub_100006FD8(v9, v10);

  [*(*&v1[v2] + OBJC_IVAR____TtC16IntelligentLight16LightLayerModule_displayMonitor) addObserver:?];
  v11 = *&v1[v3];
  v12 = objc_allocWithZone(SRUIFAudioPowerLevelUpdater);
  v13 = v11;
  v14 = [v12 initWithDelegate:v13];
  v15 = *&v13[OBJC_IVAR____TtC16IntelligentLight16AudioPowerModule_audioPowerUpdater];
  *&v13[OBJC_IVAR____TtC16IntelligentLight16AudioPowerModule_audioPowerUpdater] = v14;

  [*(*&v5[v7] + OBJC_IVAR____TtC16IntelligentLight16LightLayerModule_displayMonitor) addObserver:?];
  return v9;
}

id sub_1000044C8()
{
  *&v0[OBJC_IVAR____TtC16IntelligentLight16LightLayerModule_moduleAccessor + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC16IntelligentLight16LightLayerModule_displayContexts] = &_swiftEmptyDictionarySingleton;
  v1 = OBJC_IVAR____TtC16IntelligentLight16LightLayerModule_displayMonitor;
  *&v0[v1] = [objc_allocWithZone(FBSDisplayMonitor) init];
  v0[OBJC_IVAR____TtC16IntelligentLight16LightLayerModule_reducedFramerateMode] = 0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for LightLayerModule();
  v2 = objc_msgSendSuper2(&v7, "init");
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 defaultCenter];
  [v5 addObserver:v4 selector:"thermalStateDidChangeWithNotification:" name:NSProcessInfoThermalStateDidChangeNotification object:0];

  sub_1000046BC();
  return v4;
}

void sub_1000046BC()
{
  v1 = v0;
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 thermalState];
  if (v3 < 2)
  {
    v18 = (*((swift_isaMask & *v0) + 0x118))();
    if (qword_100019D80 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100001E6C(v19, qword_100019F70);
    v20 = static os_log_type_t.info.getter();
    v48 = 0xD000000000000020;
    v49 = 0x80000001000101D0;
    v21 = sub_100001EA4(v18);
    if (v22)
    {
      v46 = 32;
      v47 = 0xE100000000000000;
      String.append(_:)(*&v21);

      v23._countAndFlagsBits = 32;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
    }

    if (("wn thermal pressure" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v46 = 32;
      v47 = 0xE100000000000000;
      v24._countAndFlagsBits = 0xD00000000000004CLL;
      v24._object = 0x8000000100010240;
      String.append(_:)(v24);
      v25._countAndFlagsBits = 32;
      v25._object = 0xE100000000000000;
      String.append(_:)(v25);
    }

    v27 = v48;
    v26 = v49;
    v28 = Logger.logObject.getter();
    if (os_log_type_enabled(v28, v20))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v46 = v30;
      *v29 = 136315138;
      v31 = sub_100002378(v27, v26, &v46);

      *(v29 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v28, v20, "%s", v29, 0xCu);
      sub_100003024(v30);
    }

    else
    {
    }

    sub_100004DB8();
    *(v1 + OBJC_IVAR____TtC16IntelligentLight16LightLayerModule_reducedFramerateMode) = 0;
  }

  else if ((v3 - 2) > 1)
  {
    v32 = (*((swift_isaMask & *v0) + 0x118))();
    if (qword_100019D80 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100001E6C(v33, qword_100019F70);
    v34 = static os_log_type_t.info.getter();
    v48 = 0xD000000000000020;
    v49 = 0x80000001000101D0;
    v35 = sub_100001EA4(v32);
    if (v36)
    {
      v46 = 32;
      v47 = 0xE100000000000000;
      String.append(_:)(*&v35);

      v37._countAndFlagsBits = 32;
      v37._object = 0xE100000000000000;
      String.append(_:)(v37);
    }

    if (("ermalCondition()" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v46 = 32;
      v47 = 0xE100000000000000;
      v38._countAndFlagsBits = 0xD000000000000033;
      v38._object = 0x8000000100010200;
      String.append(_:)(v38);
      v39._countAndFlagsBits = 32;
      v39._object = 0xE100000000000000;
      String.append(_:)(v39);
    }

    v41 = v48;
    v40 = v49;
    v42 = Logger.logObject.getter();
    if (os_log_type_enabled(v42, v34))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v46 = v44;
      *v43 = 136315138;
      v45 = sub_100002378(v41, v40, &v46);

      *(v43 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v42, v34, "%s", v43, 0xCu);
      sub_100003024(v44);
    }

    else
    {
    }
  }

  else
  {
    v4 = (*((swift_isaMask & *v0) + 0x118))();
    if (qword_100019D80 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100001E6C(v5, qword_100019F70);
    v6 = static os_log_type_t.info.getter();
    v48 = 0xD000000000000020;
    v49 = 0x80000001000101D0;
    v7 = sub_100001EA4(v4);
    if (v8)
    {
      v46 = 32;
      v47 = 0xE100000000000000;
      String.append(_:)(*&v7);

      v9._countAndFlagsBits = 32;
      v9._object = 0xE100000000000000;
      String.append(_:)(v9);
    }

    if (("o decreased thermal pressure" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v46 = 32;
      v47 = 0xE100000000000000;
      v10._countAndFlagsBits = 0xD000000000000043;
      v10._object = 0x8000000100010290;
      String.append(_:)(v10);
      v11._countAndFlagsBits = 32;
      v11._object = 0xE100000000000000;
      String.append(_:)(v11);
    }

    v13 = v48;
    v12 = v49;
    v14 = Logger.logObject.getter();
    if (os_log_type_enabled(v14, v6))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v46 = v16;
      *v15 = 136315138;
      v17 = sub_100002378(v13, v12, &v46);

      *(v15 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v14, v6, "%s", v15, 0xCu);
      sub_100003024(v16);
    }

    else
    {
    }

    sub_100005018();
    *(v1 + OBJC_IVAR____TtC16IntelligentLight16LightLayerModule_reducedFramerateMode) = 1;
  }
}

id sub_100004DC4(SEL *a1)
{
  v3 = OBJC_IVAR____TtC16IntelligentLight16LightLayerModule_displayContexts;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  for (i = 0; v7; result = [*(*(v4 + 56) + 48 * (v12 | (v11 << 6))) *a1])
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 64 + 8 * v11);
    ++i;
    if (v7)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100004ED4()
{
  v0 = type metadata accessor for Logger();
  sub_100004F68(v0, qword_100019F70);
  sub_100001E6C(v0, qword_100019F70);
  sub_100004FCC();
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

uint64_t *sub_100004F68(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100004FCC()
{
  result = qword_100019FD0;
  if (!qword_100019FD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100019FD0);
  }

  return result;
}

id sub_1000050AC(float a1)
{
  v3 = OBJC_IVAR____TtC16IntelligentLight16LightLayerModule_displayContexts;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  for (i = 0; v7; result = [*(*(v4 + 56) + 48 * (v13 | (v12 << 6))) updateVolumeInputdB:v10])
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    *&v10 = a1;
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
    }

    v7 = *(v4 + 64 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id sub_1000051C4(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v75.receiver = v6;
  v75.super_class = type metadata accessor for SiriLightHostView();
  v13 = objc_msgSendSuper2(&v75, "initWithFrame:", a3, a4, a5, a6);
  v14 = [v13 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setSequestered:1];

  v15 = [v13 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setTransformsToScreenSpace:1];

  sub_100007238(a2, &v70);
  v16 = v73;
  if (v73)
  {
    v17 = v74;
    sub_1000072A8(&v70, v73);
    (*(v17 + 8))(v76, a1, v16, v17);
    sub_100003024(&v70);
    v18 = v76[0];
    if (v76[0])
    {
      v66 = v76[1];
      v67 = a2;
      v19 = *&v76[2];
      v20 = *&v76[3];
      v21 = *&v76[4];
      v22 = *&v76[5];
      v70 = 0;
      v71 = 0xE000000000000000;
      _StringGuts.grow(_:)(49);
      v68 = v70;
      v69 = v71;
      v23._countAndFlagsBits = 0xD000000000000029;
      v23._object = 0x8000000100010680;
      String.append(_:)(v23);
      v24 = [a1 description];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28._countAndFlagsBits = v25;
      v28._object = v27;
      String.append(_:)(v28);

      v29._countAndFlagsBits = 544175136;
      v29._object = 0xE400000000000000;
      String.append(_:)(v29);
      v70 = *&v19;
      v71 = *&v20;
      v72 = v21;
      v73 = *&v22;
      type metadata accessor for CGRect(0);
      _print_unlocked<A, B>(_:_:)();
      v31 = v68;
      v30 = v69;
      if (qword_100019D80 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_100001E6C(v32, qword_100019F70);
      v33 = static os_log_type_t.info.getter();
      v70 = 0xD00000000000002CLL;
      v71 = 0x8000000100010650;
      v34 = sub_100001EA4(1);
      if (v35)
      {
        v68 = 32;
        v69 = 0xE100000000000000;
        String.append(_:)(*&v34);

        v36._countAndFlagsBits = 32;
        v36._object = 0xE100000000000000;
        String.append(_:)(v36);
      }

      v37 = HIBYTE(v30) & 0xF;
      if ((v30 & 0x2000000000000000) == 0)
      {
        v37 = v31 & 0xFFFFFFFFFFFFLL;
      }

      if (v37)
      {
        v68 = 32;
        v69 = 0xE100000000000000;
        v38._countAndFlagsBits = v31;
        v38._object = v30;
        String.append(_:)(v38);
        v39._countAndFlagsBits = 32;
        v39._object = 0xE100000000000000;
        String.append(_:)(v39);
      }

      v40 = v70;
      v41 = v71;
      v42 = Logger.logObject.getter();
      if (os_log_type_enabled(v42, v33))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v68 = v44;
        *v43 = 136315138;
        v45 = sub_100002378(v40, v41, &v68);

        *(v43 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v42, v33, "%s", v43, 0xCu);
        sub_100003024(v44);
      }

      else
      {
      }

      a2 = v67;
      [v18 setFrame:{v19, v20, v21, v22}];
      v64 = [v13 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setContextId:{objc_msgSend(v66, "contextId")}];

      goto LABEL_28;
    }
  }

  else
  {
    sub_1000058EC(&v70);
  }

  v70 = 0;
  v71 = 0xE000000000000000;
  v46._countAndFlagsBits = 0x203A726F727245;
  v46._object = 0xE700000000000000;
  String.append(_:)(v46);
  LOBYTE(v68) = 0;
  _print_unlocked<A, B>(_:_:)();
  v48 = v70;
  v47 = v71;
  if (qword_100019D80 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_100001E6C(v49, qword_100019F70);
  v50 = static os_log_type_t.error.getter();
  v70 = 0xD00000000000002CLL;
  v71 = 0x8000000100010650;
  v51 = sub_100001EA4(1);
  if (v52)
  {
    v68 = 32;
    v69 = 0xE100000000000000;
    String.append(_:)(*&v51);

    v53._countAndFlagsBits = 32;
    v53._object = 0xE100000000000000;
    String.append(_:)(v53);
  }

  v54 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v54 = v48 & 0xFFFFFFFFFFFFLL;
  }

  if (v54)
  {
    v68 = 32;
    v69 = 0xE100000000000000;
    v55._countAndFlagsBits = v48;
    v55._object = v47;
    String.append(_:)(v55);
    v56._countAndFlagsBits = 32;
    v56._object = 0xE100000000000000;
    String.append(_:)(v56);
  }

  v58 = v70;
  v57 = v71;
  v59 = Logger.logObject.getter();
  if (os_log_type_enabled(v59, v50))
  {
    v60 = swift_slowAlloc();
    v61 = a2;
    v62 = swift_slowAlloc();
    v68 = v62;
    *v60 = 136315138;
    v63 = sub_100002378(v58, v57, &v68);

    *(v60 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v59, v50, "%s", v60, 0xCu);
    sub_100003024(v62);
    a2 = v61;
  }

  else
  {
  }

LABEL_28:
  sub_1000058EC(a2);
  return v13;
}

uint64_t sub_1000058EC(uint64_t a1)
{
  v2 = sub_10000A298(&unk_10001A420, &qword_10000E7F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_10000598C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void sub_100005998(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void sub_1000059E8()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SiriLightHostView();
  objc_msgSendSuper2(&v6, "didMoveToWindow");
  v1 = [v0 window];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 traitCollection];

    v4 = [v3 userInterfaceIdiom];
    if (v4 == 3)
    {
      v5 = [v0 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setTransformsToScreenSpace:0];
    }
  }
}

void sub_100005B6C(char *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v4 = *&a1[OBJC_IVAR____TtC16IntelligentLight18LightSceneDelegate_moduleManager];
  if (v4)
  {
    v7 = *(v4 + OBJC_IVAR____TtC16IntelligentLight13ModuleManager_sceneModule);
    v8 = a3;
    v10 = a1;
    v9 = v7;
    a4(v8);
  }
}

void sub_100005C28(void *a1)
{
  v1 = [a1 session];
  v2 = [v1 role];
  v3 = static UISceneSessionRole.intelligenceLight.getter();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

LABEL_18:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v30 = Strong;
      sub_1000060DC(0);
    }

    goto LABEL_20;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    goto LABEL_18;
  }

  v10 = static UISceneSessionRole.intelligenceNoise.getter();
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {

LABEL_22:
    v35 = swift_unknownObjectWeakLoadStrong();
    if (v35)
    {
      v36 = v35;
      sub_1000060DC(0);
    }

LABEL_20:
    v31 = [v1 persistentIdentifier];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    swift_beginAccess();
    sub_100006488(v37, v32, v34);
    swift_endAccess();

    return;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
    goto LABEL_22;
  }

  _StringGuts.grow(_:)(99);
  v17._countAndFlagsBits = 0xD000000000000036;
  v17._object = 0x800000010000FE80;
  String.append(_:)(v17);
  v18._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0xD00000000000002BLL;
  v19._object = 0x800000010000FEC0;
  String.append(_:)(v19);
  if (qword_100019D80 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100001E6C(v20, qword_100019F70);
  v21 = static os_log_type_t.error.getter();
  v22 = sub_100001EA4(8);
  if (v23)
  {
    v37[0] = 32;
    v37[1] = 0xE100000000000000;
    String.append(_:)(*&v22);

    v24._countAndFlagsBits = 32;
    v24._object = 0xE100000000000000;
    String.append(_:)(v24);
  }

  v25 = Logger.logObject.getter();
  if (os_log_type_enabled(v25, v21))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v37[0] = v27;
    *v26 = 136315138;
    v28 = sub_100002378(0xD000000000000011, 0x800000010000FE60, v37);

    *(v26 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v25, v21, "%s", v26, 0xCu);
    sub_100003024(v27);
  }

  else
  {
  }
}

uint64_t sub_1000060DC(char a1)
{
  v2 = v1;
  LOBYTE(v4) = (*((swift_isaMask & *v1) + 0x118))();
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v5._object = 0x80000001000102E0;
  v5._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v5);
  if (a1)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (a1)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  v10 = v30[0];
  v9 = v30[1];
  if (qword_100019D80 != -1)
  {
LABEL_29:
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100001E6C(v11, qword_100019F70);
  v12 = static os_log_type_t.info.getter();
  strcpy(v30, "setPaused(_:)");
  HIWORD(v30[1]) = -4864;
  v13 = sub_100001EA4(v4);
  if (v14)
  {
    v31._countAndFlagsBits = 32;
    v31._object = 0xE100000000000000;
    String.append(_:)(*&v13);

    String.append(_:)(v31);
  }

  v15 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v15 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v31._countAndFlagsBits = 32;
    v31._object = 0xE100000000000000;
    v16._countAndFlagsBits = v10;
    v16._object = v9;
    String.append(_:)(v16);
    String.append(_:)(v31);
  }

  v18 = v30[0];
  v17 = v30[1];
  v19 = Logger.logObject.getter();
  if (os_log_type_enabled(v19, v12))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31._countAndFlagsBits = v21;
    *v20 = 136315138;
    v22 = sub_100002378(v18, v17, &v31._countAndFlagsBits);

    *(v20 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v19, v12, "%s", v20, 0xCu);
    sub_100003024(v21);
  }

  else
  {
  }

  v23 = OBJC_IVAR____TtC16IntelligentLight16LightLayerModule_displayContexts;
  swift_beginAccess();
  v24 = *(v2 + v23);
  v2 = (v24 + 64);
  v25 = 1 << *(v24 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v4 = v26 & *(v24 + 64);
  v9 = (v25 + 63) >> 6;

  v10 = 0;
  if (v4)
  {
    while (1)
    {
      v27 = v10;
LABEL_25:
      v28 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      [*(*(v24 + 56) + 48 * (v28 | (v27 << 6))) setPaused:a1 & 1];
      if (!v4)
      {
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
LABEL_21:
    v27 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v27 >= v9)
    {
    }

    v4 = v2[v27];
    ++v10;
    if (v4)
    {
      v10 = v27;
      goto LABEL_25;
    }
  }
}

uint64_t sub_100006488(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_1000065D8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_1000065D8(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10000A94C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10000ABAC();
      goto LABEL_16;
    }

    sub_1000083F4(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100006920(uint64_t a1, char *a2)
{
  v3 = &a2[OBJC_IVAR____TtC16IntelligentLight16AudioPowerModule_moduleAccessor];
  *&a2[OBJC_IVAR____TtC16IntelligentLight16AudioPowerModule_moduleAccessor + 8] = &off_100014B58;
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v10[3] = type metadata accessor for AudioPowerModule();
    v10[4] = &off_100014A40;
    v10[0] = a2;
    v7 = type metadata accessor for LightLayerModule();
    v8 = *(v5 + 8);
    v9 = a2;
    v8(&v11, v10, v7, v7, ObjectType, v5);

    sub_100006F70(v10);
    Strong = v11;
  }

  swift_unknownObjectWeakAssign();
}

uint64_t sub_100006A1C@<X0>(uint64_t a1@<X2>, char *a2@<X8>)
{
  v56 = type metadata accessor for Optional();
  v54 = *(v56 - 8);
  v5 = __chkstk_darwin(v56);
  v52 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v53 = &v48 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v48 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v48 - v13;
  v15 = *(a1 - 8);
  v16 = __chkstk_darwin(v12);
  v50 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v51 = &v48 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v48 - v21;
  __chkstk_darwin(v20);
  v24 = &v48 - v23;
  v55 = v2;
  v57 = *(v2 + OBJC_IVAR____TtC16IntelligentLight13ModuleManager_lightLayerModule);
  v25 = v57;
  type metadata accessor for LightLayerModule();
  v26 = v25;
  v27 = swift_dynamicCast();
  v28 = *(v15 + 56);
  if (v27)
  {
    v28(v14, 0, 1, a1);
    v29 = *(v15 + 32);
    v29(v24, v14, a1);
    v29(a2, v24, a1);
  }

  else
  {
    v49 = a2;
    v28(v14, 1, 1, a1);
    v30 = *(v54 + 8);
    v30(v14, v56);
    v57 = *(v55 + OBJC_IVAR____TtC16IntelligentLight13ModuleManager_audioPowerModule);
    v31 = v57;
    type metadata accessor for AudioPowerModule();
    v32 = v31;
    if (swift_dynamicCast())
    {
      v28(v11, 0, 1, a1);
      v33 = *(v15 + 32);
      v33(v22, v11, a1);
      a2 = v49;
      v33(v49, v22, a1);
    }

    else
    {
      v28(v11, 1, 1, a1);
      v36 = v30;
      v30(v11, v56);
      v57 = *(v55 + OBJC_IVAR____TtC16IntelligentLight13ModuleManager_noiseLayerModule);
      v37 = v57;
      type metadata accessor for NoiseLayerModule();
      v38 = v37;
      v39 = v53;
      if (swift_dynamicCast())
      {
        v28(v39, 0, 1, a1);
        v40 = *(v15 + 32);
        v41 = v51;
        v40(v51, v39, a1);
        a2 = v49;
        v40(v49, v41, a1);
      }

      else
      {
        v28(v39, 1, 1, a1);
        v36(v39, v56);
        v57 = *(v55 + OBJC_IVAR____TtC16IntelligentLight13ModuleManager_sceneModule);
        v42 = v57;
        type metadata accessor for SceneModule();
        v43 = v42;
        v44 = v52;
        v45 = swift_dynamicCast();
        a2 = v49;
        if (!v45)
        {
          v28(v44, 1, 1, a1);
          v36(v44, v56);
          v34 = 1;
          return (v28)(a2, v34, 1, a1);
        }

        v28(v44, 0, 1, a1);
        v46 = *(v15 + 32);
        v47 = v50;
        v46(v50, v44, a1);
        v46(a2, v47, a1);
      }
    }
  }

  v34 = 0;
  return (v28)(a2, v34, 1, a1);
}

uint64_t sub_100006F70(uint64_t a1)
{
  v2 = sub_10000A298(&unk_10001A1C0, &qword_10000E450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100006FD8(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v4 = &a2[OBJC_IVAR____TtC16IntelligentLight11SceneModule_moduleAccessor];
  *&a2[OBJC_IVAR____TtC16IntelligentLight11SceneModule_moduleAccessor + 8] = &off_100014B58;
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(v4 + 1);
    v7 = swift_getObjectType();
    v22 = ObjectType;
    v23 = &off_100014A18;
    v21[0] = a2;
    v8 = type metadata accessor for LightLayerModule();
    v9 = *(v6 + 8);
    v10 = a2;
    v9(&v24, v21, v8, v8, v7, v6);

    sub_100006F70(v21);
    Strong = v24;
  }

  swift_unknownObjectWeakAssign();

  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    sub_1000060DC(1);
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = *(v4 + 1);
    v15 = swift_getObjectType();
    v22 = ObjectType;
    v23 = &off_100014A18;
    v21[0] = a2;
    v16 = type metadata accessor for NoiseLayerModule();
    v17 = *(v14 + 8);
    v18 = a2;
    v17(&v24, v21, v16, v16, v15, v14);

    sub_100006F70(v21);
    v13 = v24;
  }

  swift_unknownObjectWeakAssign();

  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    sub_1000060DC(1);
  }
}

unint64_t sub_1000071EC()
{
  result = qword_10001A418;
  if (!qword_10001A418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001A418);
  }

  return result;
}

uint64_t sub_100007238(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A298(&unk_10001A420, &qword_10000E7F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1000072A8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000072EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OBJC_IVAR____TtC16IntelligentLight16LightLayerModule_displayContexts;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  if (*(v7 + 16))
  {

    v8 = sub_100003E94(a1);
    if (v9)
    {
      v10 = *(v7 + 56) + 48 * v8;
      v11 = *v10;
      v12 = *(v10 + 8);
      v17 = *(v10 + 32);
      v18 = *(v10 + 16);
      v13 = *v10;
      v14 = v12;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v17 = 0u;
      v18 = 0u;
    }

    v16 = v17;
    v15 = v18;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v15;
  *(a2 + 32) = v16;
  return result;
}

double sub_1000073B8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000072EC(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

id sub_100007434()
{
  v1 = OBJC_IVAR____TtC16IntelligentLight18NoiseSceneDelegate_moduleManager;
  *&v0[OBJC_IVAR____TtC16IntelligentLight18NoiseSceneDelegate_moduleManager] = 0;
  *&v0[OBJC_IVAR____TtC16IntelligentLight18NoiseSceneDelegate_window] = 0;
  *&v0[OBJC_IVAR____TtC16IntelligentLight18NoiseSceneDelegate_contentView] = 0;
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    type metadata accessor for IntelligentLightAppDelegate();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____TtC16IntelligentLight27IntelligentLightAppDelegate_moduleManager);
      v6 = v5;
    }

    else
    {
      v5 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  v7 = *&v0[v1];
  *&v0[v1] = v5;

  v9.receiver = v0;
  v9.super_class = type metadata accessor for NoiseSceneDelegate();
  return objc_msgSendSuper2(&v9, "init");
}

unint64_t sub_10000755C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A298(&unk_10001A2C0, &qword_10000E5F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007678(v4, v13);
      result = sub_10000777C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100007B64(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_100007678(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A298(&qword_10001A2B8, &qword_10000E5F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000777C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100007B74(a1, v4);
}

void sub_1000077C0(void *a1, void *a2)
{
  v3 = v2;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v36 = a1;
  _StringGuts.grow(_:)(30);

  v8 = [a2 persistentIdentifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  if (qword_100019D80 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100001E6C(v13, qword_100019F70);
  v14 = static os_log_type_t.info.getter();
  v39 = 0xD00000000000001FLL;
  v40 = 0x8000000100010020;
  v15 = sub_100001EA4(4);
  if (v16)
  {
    v37 = 32;
    v38 = 0xE100000000000000;
    String.append(_:)(*&v15);

    v17._countAndFlagsBits = 32;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
  }

  v18 = (0x8000000100010040 >> 56) & 0xF;
  if ((0x8000000100010040 & 0x2000000000000000) == 0)
  {
    v18 = 28;
  }

  if (v18)
  {
    v37 = 32;
    v38 = 0xE100000000000000;
    v19._countAndFlagsBits = 0xD00000000000001CLL;
    v19._object = 0x8000000100010040;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
  }

  v22 = v39;
  v21 = v40;
  v23 = Logger.logObject.getter();
  if (os_log_type_enabled(v23, v14))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v37 = v25;
    *v24 = 136315138;
    v26 = sub_100002378(v22, v21, &v37);

    *(v24 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v23, v14, "%s", v24, 0xCu);
    sub_100003024(v25);
  }

  else
  {
  }

  v27 = *(v3 + OBJC_IVAR____TtC16IntelligentLight18NoiseSceneDelegate_moduleManager);
  if (v27)
  {
    v28 = *(v27 + OBJC_IVAR____TtC16IntelligentLight13ModuleManager_lightLayerModule);
    type metadata accessor for NoiseLayerModule();
    v29 = swift_dynamicCastClass();
    if (v29)
    {
      v30 = v29;
      v31 = v28;
LABEL_19:
      v34 = [v7 screen];
      sub_100003210(v34);

      goto LABEL_20;
    }

    v32 = *(v27 + OBJC_IVAR____TtC16IntelligentLight13ModuleManager_noiseLayerModule);
    v33 = v32;
    if (v32)
    {
      v30 = v33;
      goto LABEL_19;
    }
  }

LABEL_20:
  sub_100007C3C(v7);
  v35 = *(v3 + OBJC_IVAR____TtC16IntelligentLight18NoiseSceneDelegate_window);
  [v35 makeKeyAndVisible];
}

_OWORD *sub_100007B64(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100007B74(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000C5D0(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000C62C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_100007C3C(uint64_t a1)
{
  v2 = v1;
  v3 = [objc_allocWithZone(type metadata accessor for SiriLightHostWindow()) initWithWindowScene:a1];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v27 = v3;
  v12 = [v27 screen];
  [v12 nativeBounds];

  v13 = [v27 screen];
  v14 = [v13 displayIdentity];

  if (!v14)
  {
    __break(1u);
    return;
  }

  v15 = *&v2[OBJC_IVAR____TtC16IntelligentLight18NoiseSceneDelegate_moduleManager];
  if (!v15)
  {
    goto LABEL_8;
  }

  v16 = *(v15 + OBJC_IVAR____TtC16IntelligentLight13ModuleManager_lightLayerModule);
  v17 = type metadata accessor for NoiseLayerModule();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    v21 = *(v15 + OBJC_IVAR____TtC16IntelligentLight13ModuleManager_noiseLayerModule);
    v22 = v21;
    if (v21)
    {
      v19 = v22;
      goto LABEL_7;
    }

LABEL_8:
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    goto LABEL_9;
  }

  v19 = v18;
  v20 = v16;
LABEL_7:
  *(&v29 + 1) = v17;
  v30 = &off_100014B30;
  *&v28 = v19;
LABEL_9:
  v23 = objc_allocWithZone(type metadata accessor for SiriLightHostView());
  v24 = sub_1000051C4(v14, &v28, v5, v7, v9, v11);
  [v24 setAutoresizingMask:18];
  [v27 addSubview:v24];
  v25 = *&v2[OBJC_IVAR____TtC16IntelligentLight18NoiseSceneDelegate_contentView];
  *&v2[OBJC_IVAR____TtC16IntelligentLight18NoiseSceneDelegate_contentView] = v24;
  v26 = v24;

  [v2 setWindow:v27];
}

uint64_t sub_100007E9C(uint64_t a1)
{
  v2 = sub_10000A298(&qword_10001A2B8, &qword_10000E5F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100007F04(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100003E94(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10000814C(v13, a3 & 1);
      v8 = sub_100003E94(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100003F9C();
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
_objc_retain_x1:
        _objc_retain_x1();
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_10000C44C();
      v8 = v16;
    }
  }

  v18 = *v4;
  if ((v14 & 1) == 0)
  {
    v18[(v8 >> 6) + 8] |= 1 << v8;
    *(v18[6] + 8 * v8) = a2;
    v22 = (v18[7] + 48 * v8);
    v23 = a1[1];
    *v22 = *a1;
    v22[1] = v23;
    v22[2] = a1[2];
    v24 = v18[2];
    v12 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v12)
    {
      v18[2] = v25;

      goto _objc_retain_x1;
    }

    goto LABEL_17;
  }

  v19 = v18[7] + 48 * v8;
  v20 = *(v19 + 8);
  v27 = *v19;
  v21 = a1[2];
  *(v19 + 16) = a1[1];
  *(v19 + 32) = v21;
  *v19 = *a1;
}

void sub_1000080A0(char *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v4 = *&a1[OBJC_IVAR____TtC16IntelligentLight18NoiseSceneDelegate_moduleManager];
  if (v4)
  {
    v7 = *(v4 + OBJC_IVAR____TtC16IntelligentLight13ModuleManager_sceneModule);
    v8 = a3;
    v10 = a1;
    v9 = v7;
    a4(v8);
  }
}

Swift::Int sub_10000814C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000A298(&qword_10001A2A0, &qword_10000E5E0);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 48 * v20;
      v24 = *v22;
      v23 = *(v22 + 8);
      v38 = *(v22 + 32);
      v39 = *(v22 + 16);
      if ((v37 & 1) == 0)
      {
        v25 = v21;
        v26 = v24;
        v27 = v23;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 48 * v15;
      *v16 = v24;
      *(v16 + 8) = v23;
      *(v16 + 16) = v39;
      *(v16 + 32) = v38;
      ++*(v7 + 16);
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

    if (v37)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

Swift::Int sub_1000083F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000A298(&qword_10001A028, qword_10000E458);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
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

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

  return result;
}

uint64_t sub_10000862C(uint64_t a1, int a2)
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

uint64_t sub_10000864C(uint64_t result, int a2, int a3)
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

uint64_t sub_1000086A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000086C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 sub_1000086F0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

id sub_1000087EC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100008880()
{
  result = qword_100019E68;
  if (!qword_100019E68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100019E68);
  }

  return result;
}

unint64_t sub_1000088CC()
{
  result = qword_100019E70;
  if (!qword_100019E70)
  {
    sub_100008880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019E70);
  }

  return result;
}

void sub_100008924(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100008880();
    sub_1000088CC();
    Set.Iterator.init(_cocoa:)();
    v2 = v44;
    v3 = v45;
    v4 = v46;
    v5 = v47;
    v6 = v48;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  v38 = v10;
  while (v2 < 0)
  {
    v16 = __CocoaSet.Iterator.next()();
    if (!v16 || (v41._countAndFlagsBits = v16, sub_100008880(), swift_dynamicCast(), v15 = v42, v13 = v5, v14 = v6, !v42))
    {
LABEL_29:
      sub_100008D74(v2);
      return;
    }

LABEL_19:
    v40 = v14;
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v42 = 0xD000000000000015;
    v43 = 0x800000010000FB90;
    v39 = v15;
    v17 = [v15 persistentIdentifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);

    v22 = v42;
    v23 = v43;
    if (qword_100019D80 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100001E6C(v24, qword_100019F70);
    v25 = static os_log_type_t.info.getter();
    v42 = 0xD000000000000027;
    v43 = 0x800000010000FB60;
    v26 = sub_100001EA4(8);
    if (v27)
    {
      v41._countAndFlagsBits = 32;
      v41._object = 0xE100000000000000;
      String.append(_:)(*&v26);

      String.append(_:)(v41);
    }

    v28 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v28 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {
      v41._countAndFlagsBits = 32;
      v41._object = 0xE100000000000000;
      v29._countAndFlagsBits = v22;
      v29._object = v23;
      String.append(_:)(v29);
      String.append(_:)(v41);
    }

    v30 = v42;
    v31 = v43;
    v32 = Logger.logObject.getter();
    if (os_log_type_enabled(v32, v25))
    {
      v33 = swift_slowAlloc();
      v34 = v3;
      v35 = v2;
      v36 = swift_slowAlloc();
      v41._countAndFlagsBits = v36;
      *v33 = 136315138;
      v37 = sub_100002378(v30, v31, &v41._countAndFlagsBits);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v32, v25, "%s", v33, 0xCu);
      sub_100003024(v36);
      v2 = v35;
      v3 = v34;
    }

    else
    {
    }

    v5 = v13;
    v6 = v40;
    v10 = v38;
  }

  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_15:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_29;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

id sub_100008DC0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EmptySceneDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

Swift::Int sub_100008E98()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100008F0C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

BOOL sub_100008F94(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100008FC4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100008FF0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1000090C8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000090F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10000A260(a1);

  *a2 = v3;
  return result;
}

void sub_100009150(char a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void))
{
  if (qword_100019D80 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100001E6C(v12, qword_100019F70);
  v13 = a6();
  v28 = a2;
  v29 = a3;

  v14 = sub_100001EA4(a1);
  if (v15)
  {
    v26 = 32;
    v27 = 0xE100000000000000;
    String.append(_:)(*&v14);

    v16._countAndFlagsBits = 32;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
  }

  if (a5)
  {
    v17 = HIBYTE(a5) & 0xF;
    if ((a5 & 0x2000000000000000) == 0)
    {
      v17 = a4 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      v26 = 32;
      v27 = 0xE100000000000000;
      v18._countAndFlagsBits = a4;
      v18._object = a5;
      String.append(_:)(v18);
      v19._countAndFlagsBits = 32;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
    }
  }

  v21 = v28;
  v20 = v29;
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v13))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26 = v23;
    *v22 = 136315138;
    v24 = sub_100002378(v21, v20, &v26);

    *(v22 + 4) = v24;
    _os_log_impl(&_mh_execute_header, log, v13, "%s", v22, 0xCu);
    sub_100003024(v23);
  }

  else
  {
  }
}

char *sub_10000936C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A298(&qword_100019FC8, &unk_10000E3A0);
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

char *sub_100009470(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000094BC(a1, a2);
  sub_1000095EC(&off_100014828);
  return v3;
}

char *sub_1000094BC(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000096D8(v5, 0);
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
        v7 = sub_1000096D8(v10, 0);
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

uint64_t sub_1000095EC(uint64_t result)
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

  result = sub_10000974C(result, v11, 1, v3);
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

void *sub_1000096D8(uint64_t a1, uint64_t a2)
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

  sub_10000A298(&qword_100019FA8, &qword_10000E388);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000974C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A298(&qword_100019FA8, &qword_10000E388);
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

unint64_t sub_100009844()
{
  result = qword_100019F88;
  if (!qword_100019F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019F88);
  }

  return result;
}

unint64_t sub_10000989C()
{
  result = qword_100019F90;
  if (!qword_100019F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019F90);
  }

  return result;
}

unint64_t sub_1000098F0()
{
  result = qword_100019F98;
  if (!qword_100019F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019F98);
  }

  return result;
}

unint64_t sub_100009948()
{
  result = qword_100019FA0;
  if (!qword_100019FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019FA0);
  }

  return result;
}

uint64_t sub_1000099BC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_10000A24C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_100009F98((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10000936C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_10000936C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_100009F98((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10000A24C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_10000A1C0(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_100009F98(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_10000A1C0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10000A24C(v3);
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

uint64_t sub_10000A260(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_10000A298(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000A2E0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_10000A330(void *a1)
{
  v2 = v1;
  v3 = [a1 session];
  v4 = [v3 role];
  v5 = static UISceneSessionRole.intelligenceLight.getter();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {

LABEL_18:
    v31 = [v3 persistentIdentifier];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = OBJC_IVAR____TtC16IntelligentLight11SceneModule_activeLightSceneSessionIds;
    swift_beginAccess();
    sub_10000AD08(v32, v34);
    swift_endAccess();

    if (*(*(v2 + v35) + 16))
    {
LABEL_23:

      return;
    }

LABEL_19:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v37 = Strong;
      sub_1000060DC(1);
    }

    goto LABEL_23;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_18;
  }

  v12 = static UISceneSessionRole.intelligenceNoise.getter();
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {

LABEL_22:
    v38 = [v3 persistentIdentifier];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = OBJC_IVAR____TtC16IntelligentLight11SceneModule_activeNoiseSceneSessionIds;
    swift_beginAccess();
    sub_10000AD08(v39, v41);
    swift_endAccess();

    if (*(*(v2 + v42) + 16))
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
    goto LABEL_22;
  }

  _StringGuts.grow(_:)(54);
  v19._countAndFlagsBits = 0xD000000000000033;
  v19._object = 0x800000010000FE20;
  String.append(_:)(v19);
  v20._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 46;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  if (qword_100019D80 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100001E6C(v22, qword_100019F70);
  v23 = static os_log_type_t.error.getter();
  v24 = sub_100001EA4(8);
  if (v25)
  {
    v43[0] = 32;
    v43[1] = 0xE100000000000000;
    String.append(_:)(*&v24);

    v26._countAndFlagsBits = 32;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);
  }

  v27 = Logger.logObject.getter();
  if (os_log_type_enabled(v27, v23))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v43[0] = v29;
    *v28 = 136315138;
    v30 = sub_100002378(0xD000000000000013, 0x800000010000FE00, v43);

    *(v28 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v27, v23, "%s", v28, 0xCu);
    sub_100003024(v29);
  }

  else
  {
  }
}

id sub_10000A820()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000A8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  ObjectType = swift_getObjectType();

  sub_10000B008(a2, v6, ObjectType, a3);
}

Swift::Int sub_10000A94C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000A298(&qword_10001A028, qword_10000E458);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

void *sub_10000ABAC()
{
  v1 = v0;
  sub_10000A298(&qword_10001A028, qword_10000E458);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

  return result;
}

uint64_t sub_10000AD08(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10000ABAC();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_10000AE44(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_10000AE44(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
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
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
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
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
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

  return result;
}

void sub_10000B008(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v7 = &a2[OBJC_IVAR____TtC16IntelligentLight11SceneModule_moduleAccessor];
  *&a2[OBJC_IVAR____TtC16IntelligentLight11SceneModule_moduleAccessor + 8] = a4;
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(v7 + 1);
    v10 = swift_getObjectType();
    v25 = ObjectType;
    v26 = &off_100014A18;
    v24[0] = a2;
    v11 = type metadata accessor for LightLayerModule();
    v12 = *(v9 + 8);
    v13 = a2;
    v12(&v27, v24, v11, v11, v10, v9);

    sub_100006F70(v24);
    Strong = v27;
  }

  swift_unknownObjectWeakAssign();

  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    sub_1000060DC(1);
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = *(v7 + 1);
    v18 = swift_getObjectType();
    v25 = ObjectType;
    v26 = &off_100014A18;
    v24[0] = a2;
    v19 = type metadata accessor for NoiseLayerModule();
    v20 = *(v17 + 8);
    v21 = a2;
    v20(&v27, v24, v19, v19, v18, v17);

    sub_100006F70(v24);
    v16 = v27;
  }

  swift_unknownObjectWeakAssign();

  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    sub_1000060DC(1);
  }
}

void sub_10000B1FC(void *a1)
{
  v2 = OBJC_IVAR____TtC16IntelligentLight18LightSceneDelegate_moduleManager;
  v3 = *(v1 + OBJC_IVAR____TtC16IntelligentLight18LightSceneDelegate_moduleManager);
  if (v3)
  {
    v4 = v1;
    v6 = qword_100019D80;
    v26 = *(v3 + OBJC_IVAR____TtC16IntelligentLight13ModuleManager_audioPowerModule);
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100001E6C(v7, qword_100019F70);
    v8 = static os_log_type_t.info.getter();
    v28 = 0xD000000000000016;
    v29 = 0x8000000100010000;
    v9 = sub_100001EA4(2);
    if (v10)
    {
      String.append(_:)(*&v9);

      v11._countAndFlagsBits = 32;
      v11._object = 0xE100000000000000;
      String.append(_:)(v11);
    }

    v27[0] = 32;
    v27[1] = 0xE100000000000000;
    v12._countAndFlagsBits = 1886352499;
    v12._object = 0xE400000000000000;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 32;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);

    v15 = v28;
    v14 = v29;
    v16 = Logger.logObject.getter();
    if (os_log_type_enabled(v16, v8))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27[0] = v18;
      *v17 = 136315138;
      v19 = sub_100002378(v15, v14, v27);

      *(v17 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v16, v8, "%s", v17, 0xCu);
      sub_100003024(v18);
    }

    else
    {
    }

    v21 = v26;
    v22 = *&v26[OBJC_IVAR____TtC16IntelligentLight16AudioPowerModule_audioPowerUpdater];
    if (v22)
    {
      v23 = v22;
      [v23 stopObservingUpdates];

      v21 = v26;
    }

    v24 = *(v4 + v2);
    if (v24)
    {
      v25 = *(v24 + OBJC_IVAR____TtC16IntelligentLight13ModuleManager_sceneModule);
      sub_10000A330(a1);
    }

    v20 = v26;
  }

  else
  {
    v20 = 0;
  }
}

id sub_10000B518()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LightSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000B5B8(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for _UIIntelligenceLightSourceConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 0;
  v33 = 0xE000000000000000;
  _StringGuts.grow(_:)(62);
  v8._countAndFlagsBits = 0xD00000000000002ALL;
  v8._object = 0x800000010000FFB0;
  String.append(_:)(v8);
  v9 = [a1 session];
  v10 = [v9 persistentIdentifier];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._object = 0x800000010000FFE0;
  v15._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v15);
  (*(v5 + 16))(v7, a2, v4);
  v16._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v16);

  v18 = v32;
  v17 = v33;
  if (qword_100019D80 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100001E6C(v19, qword_100019F70);
  v20 = static os_log_type_t.info.getter();
  v32 = 0xD000000000000025;
  v33 = 0x800000010000FF80;
  v21 = sub_100001EA4(1);
  if (v22)
  {
    v31._countAndFlagsBits = 32;
    v31._object = 0xE100000000000000;
    String.append(_:)(*&v21);

    String.append(_:)(v31);
  }

  v23 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v23 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v31._countAndFlagsBits = 32;
    v31._object = 0xE100000000000000;
    v24._countAndFlagsBits = v18;
    v24._object = v17;
    String.append(_:)(v24);
    String.append(_:)(v31);
  }

  v26 = v32;
  v25 = v33;
  v27 = Logger.logObject.getter();
  if (os_log_type_enabled(v27, v20))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31._countAndFlagsBits = v29;
    *v28 = 136315138;
    v30 = sub_100002378(v26, v25, &v31._countAndFlagsBits);

    *(v28 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v27, v20, "%s", v28, 0xCu);
    sub_100003024(v29);
  }

  else
  {
  }
}

id sub_10000B93C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioPowerModule();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000B9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  ObjectType = swift_getObjectType();

  sub_10000BA9C(a2, v6, ObjectType, a3);
}

uint64_t sub_10000BA24()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(SRUIFAudioPowerLevelUpdater) initWithDelegate:*v0];
  *(v1 + OBJC_IVAR____TtC16IntelligentLight16AudioPowerModule_audioPowerUpdater) = v2;

  return _objc_release_x1();
}

void sub_10000BA9C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = &a2[OBJC_IVAR____TtC16IntelligentLight16AudioPowerModule_moduleAccessor];
  *&a2[OBJC_IVAR____TtC16IntelligentLight16AudioPowerModule_moduleAccessor + 8] = a4;
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v12[3] = type metadata accessor for AudioPowerModule();
    v12[4] = &off_100014A40;
    v12[0] = a2;
    v9 = type metadata accessor for LightLayerModule();
    v10 = *(v7 + 8);
    v11 = a2;
    v10(&v13, v12, v9, v9, ObjectType, v7);

    sub_100006F70(v12);
    Strong = v13;
  }

  swift_unknownObjectWeakAssign();
}

id sub_10000BB8C()
{
  [*&v0[OBJC_IVAR____TtC16IntelligentLight16LightLayerModule_displayMonitor] removeObserver:v0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LightLayerModule();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000BC9C(void *a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x118))();
  _StringGuts.grow(_:)(50);

  v4 = [a1 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 46;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  if (qword_100019D80 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100001E6C(v10, qword_100019F70);
  v11 = static os_log_type_t.info.getter();
  *&v27 = 0xD00000000000001ALL;
  *(&v27 + 1) = 0x8000000100010320;
  v12 = sub_100001EA4(v3);
  if (v13)
  {
    v25 = 32;
    v26 = 0xE100000000000000;
    String.append(_:)(*&v12);

    v14._countAndFlagsBits = 32;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
  }

  v15 = (0x8000000100010340 >> 56) & 0xF;
  if ((0x8000000100010340 & 0x2000000000000000) == 0)
  {
    v15 = 47;
  }

  if (v15)
  {
    v25 = 32;
    v26 = 0xE100000000000000;
    v16._countAndFlagsBits = 0xD00000000000002FLL;
    v16._object = 0x8000000100010340;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 32;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
  }

  v18 = v27;
  v19 = Logger.logObject.getter();
  if (os_log_type_enabled(v19, v11))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v21;
    *v20 = 136315138;
    v22 = sub_100002378(v18, *(&v18 + 1), &v25);

    *(v20 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v19, v11, "%s", v20, 0xCu);
    sub_100003024(v21);
  }

  else
  {
  }

  swift_beginAccess();
  sub_10000C1F4(a1, &v27);
  swift_endAccess();
  v23 = v27;
  if (v27)
  {
    v24 = *(&v27 + 1);
    [v27 invalidate];
  }
}

id sub_10000C118()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoiseLayerModule();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10000C14C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000C160(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10000C1A8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_10000C1F4(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_100003E94(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v17 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10000C44C();
      v9 = v17;
    }

    v10 = (*(v9 + 56) + 48 * v7);
    v15 = *v10;
    v16 = v10[2];
    v14 = v10[1];
    sub_10000C2B4(v7, v9);
    v12 = v14;
    v11 = v15;
    v13 = v16;
    *v3 = v9;
  }

  else
  {
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;
}

void sub_10000C2B4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v6);
      v13 = NSObject._rawHashValue(seed:)(v11);

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = *(a2 + 48);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 48 * v3);
          v22 = (v20 + 48 * v6);
          if (v3 != v6 || v21 >= v22 + 3)
          {
            v9 = *v22;
            v10 = v22[2];
            v21[1] = v22[1];
            v21[2] = v10;
            *v21 = v9;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

id sub_10000C44C()
{
  v1 = v0;
  sub_10000A298(&qword_10001A2A0, &qword_10000E5E0);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(v2 + 56) + 48 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 32);
        *(*(v4 + 48) + 8 * v17) = v18;
        v24 = *(v4 + 56) + 48 * v17;
        *v24 = v20;
        *(v24 + 8) = v21;
        *(v24 + 16) = v22;
        *(v24 + 32) = v23;
        v25 = v18;
        v26 = v20;
        result = v21;
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

void sub_10000C680(void *a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x118))();
  _StringGuts.grow(_:)(27);

  v4 = [a1 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 46;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  if (qword_100019D80 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100001E6C(v10, qword_100019F70);
  v11 = static os_log_type_t.info.getter();
  v26 = 0xD000000000000029;
  v27 = 0x8000000100010430;
  v12 = sub_100001EA4(v3);
  if (v13)
  {
    v24 = 32;
    v25 = 0xE100000000000000;
    String.append(_:)(*&v12);

    v14._countAndFlagsBits = 32;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
  }

  v15 = (0x8000000100010460 >> 56) & 0xF;
  if ((0x8000000100010460 & 0x2000000000000000) == 0)
  {
    v15 = 24;
  }

  if (v15)
  {
    v24 = 32;
    v25 = 0xE100000000000000;
    v16._countAndFlagsBits = 0xD000000000000018;
    v16._object = 0x8000000100010460;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 32;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
  }

  v19 = v26;
  v18 = v27;
  v20 = Logger.logObject.getter();
  if (os_log_type_enabled(v20, v11))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v21 = 136315138;
    v23 = sub_100002378(v19, v18, &v24);

    *(v21 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v20, v11, "%s", v21, 0xCu);
    sub_100003024(v22);
  }

  else
  {
  }

  sub_10000BC9C(a1);
}

id sub_10000CA5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriLightHostWindow();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000CA90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoiseSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000CB28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModuleManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

IntelligentLight::IntelligentLightErrors_optional __swiftcall IntelligentLightErrors.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

unint64_t sub_10000CBF8()
{
  result = qword_10001A3D8;
  if (!qword_10001A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001A3D8);
  }

  return result;
}

Swift::Int sub_10000CC4C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000CCC0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t *sub_10000CD04@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10000CD2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CEF8();
  v5 = sub_10000CF4C();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t getEnumTagSinglePayload for IntelligentLightErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IntelligentLightErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000CEF8()
{
  result = qword_10001A3E0;
  if (!qword_10001A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001A3E0);
  }

  return result;
}

unint64_t sub_10000CF4C()
{
  result = qword_10001A3E8;
  if (!qword_10001A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001A3E8);
  }

  return result;
}

id sub_10000D02C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriLightHostView();
  return objc_msgSendSuper2(&v2, "dealloc");
}