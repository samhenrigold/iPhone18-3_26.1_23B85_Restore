uint64_t start(int a1, char **a2)
{
  v4 = VUISignpostLogObject();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Launch.Main", "", buf, 2u);
  }

  v5 = VUISignpostLogObject();
  if (os_signpost_enabled(v5))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Launch.FirstTab", "", v14, 2u);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = +[VUITVAppLauncher sharedInstance];
  [v7 preWarm:0];

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  objc_autoreleasePoolPop(v6);
  v12 = UIApplicationMain(a1, a2, v11, v9);

  return v12;
}

uint64_t type metadata accessor for SceneDelegate(uint64_t a1)
{
  result = qword_100023828;
  if (!qword_100023828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002354(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_100002554(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000096E4(&qword_100023270, &qword_100018CC0);
  v7 = __chkstk_darwin(v6 - 8);
  v83 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v84 = &v81 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v82 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v86 = &v81 - v14;
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v85 = v11;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v89 = v20;
    *v19 = 136315138;
    v21 = [v15 session];
    v81 = v10;
    v22 = v3;
    v23 = a2;
    v24 = v21;
    v25 = [v21 persistentIdentifier];

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = v26;
    a2 = v23;
    v3 = v22;
    v10 = v81;
    v30 = sub_100002D7C(v29, v28, &v89);

    *(v19 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v16, v17, "scene:willConnectTo:options: %s", v19, 0xCu);
    sub_100002FB0(v20);
  }

  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (v31)
  {
    v32 = v31;
    v33 = objc_allocWithZone(UIWindow);
    v34 = v15;
    v35 = [v33 initWithWindowScene:v32];
    v36 = objc_opt_self();
    v37 = [v36 sharedInstance];
    [v37 setMainWindow:v35];

    v38 = [v36 sharedInstance];
    [v38 applicationDidFinishLaunchingWithOptions:0];
  }

  v39 = [a2 userActivities];
  sub_10000300C(0, &qword_100023470, NSUserActivity_ptr);
  sub_100003054(&qword_100023478, &qword_100023470, NSUserActivity_ptr);
  v40 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = sub_1000030A4(v40);

  if (v41)
  {
    v42 = [v41 webpageURL];
    if (v42)
    {
      v43 = a2;
      v44 = v42;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v45 = [v41 _sourceApplication];
      v46 = _swiftEmptyDictionarySingleton;
      if (v45)
      {
        v47 = v45;
        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;

        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;
        v90 = &type metadata for String;
        *&v89 = v48;
        *(&v89 + 1) = v50;
        sub_10000ECC0(&v89, v88);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v87 = _swiftEmptyDictionarySingleton;
        sub_10000E27C(v88, v51, v53, isUniquelyReferenced_nonNull_native);

        v46 = v87;
      }

      v55 = v83;
      v56 = [v41 referrerURL];
      if (v56)
      {
        v57 = v56;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v58 = 0;
      }

      else
      {
        v58 = 1;
      }

      a2 = v43;
      v59 = v85;
      (*(v85 + 56))(v55, v58, 1, v10);
      v60 = v84;
      sub_10000EE18(v55, v84);
      if ((*(v59 + 48))(v60, 1, v10))
      {
        sub_10000EE88(v60, &qword_100023270, &qword_100018CC0);
      }

      else
      {
        v61 = v82;
        (*(v59 + 16))(v82, v60, v10);
        sub_10000EE88(v60, &qword_100023270, &qword_100018CC0);
        v62 = URL.absoluteString.getter();
        v64 = v63;
        (*(v59 + 8))(v61, v10);
        sub_1000096E4(&qword_100023480, &qword_100018CC8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100018A90;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v66;
        *(inited + 48) = v62;
        *(inited + 56) = v64;
        v67 = sub_10000E980(inited);
        swift_setDeallocating();
        sub_10000EE88(inited + 32, &qword_100023488, &qword_100018CD0);
        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v69;
        v90 = sub_1000096E4(&qword_100023490, &qword_100018CD8);
        *&v89 = v67;
        sub_10000ECC0(&v89, v88);
        v71 = swift_isUniquelyReferenced_nonNull_native();
        v87 = v46;
        sub_10000E27C(v88, v68, v70, v71);
      }

      v72 = [objc_opt_self() sharedInstance];
      v73 = v86;
      URL._bridgeToObjectiveC()(v74);
      v76 = v75;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v72 openURL:v76 options:isa];

      (*(v59 + 8))(v73, v10);
    }

    else
    {
    }
  }

  v78 = [a2 URLContexts];
  sub_10000300C(0, &qword_1000232C0, UIOpenURLContext_ptr);
  sub_100003054(&qword_1000232C8, &qword_1000232C0, UIOpenURLContext_ptr);
  v79 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  (*((swift_isaMask & *v3) + 0xA0))(v79);
}

unint64_t sub_100002D7C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002E48(v11, 0, 0, 1, a1, a2);
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
    sub_100002F54(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002FB0(v11);
  return v7;
}

unint64_t sub_100002E48(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000C194(a5, a6);
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

uint64_t sub_100002F54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100002FB0(void *a1)
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

uint64_t sub_10000300C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100003054(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000300C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000030A4(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000031C0(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1000031C0(v3, v5, v2 != 0);
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

  sub_10000E75C(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1000031C0(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_1000031C0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1000031CC(uint64_t a1)
{
  v111 = type metadata accessor for URL();
  v2 = *(v111 - 8);
  __chkstk_darwin(v111);
  v110 = v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10000300C(0, &qword_1000232C0, UIOpenURLContext_ptr);
    sub_100003054(&qword_1000232C8, &qword_1000232C0, UIOpenURLContext_ptr);
    Set.Iterator.init(_cocoa:)();
    a1 = v124;
    v4 = v125;
    v5 = v126;
    v6 = v127;
    v7 = v128;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v108[1] = v5;
  v11 = (v5 + 64) >> 6;
  v109 = (v2 + 8);
  v119 = UIApplicationOpenURLOptionsSourceApplicationKey;
  v118 = UIApplicationOpenURLOptionsAnnotationKey;
  v116 = UIApplicationOpenURLOptionsEventAttributionKey;
  v117 = UIApplicationOpenURLOptionsOpenInPlaceKey;
  v112 = a1;
  v113 = v4;
  v114 = v11;
  while (a1 < 0)
  {
    v17 = __CocoaSet.Iterator.next()();
    if (!v17)
    {
      return sub_100003D44(a1);
    }

    *&v121[0] = v17;
    sub_10000300C(0, &qword_1000232C0, UIOpenURLContext_ptr);
    swift_dynamicCast();
    v16 = v122;
    v14 = v6;
    v15 = v7;
    if (!v122)
    {
      return sub_100003D44(a1);
    }

LABEL_19:
    v18 = v119;
    v19 = [v16 options];
    v20 = [v19 sourceApplication];

    if (!v20)
    {
      v33 = _swiftEmptyDictionarySingleton;
      v34 = sub_10000D864(v18);
      if (v35)
      {
        v36 = v34;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v121[0] = _swiftEmptyDictionarySingleton;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_10000E438();
          v33 = *&v121[0];
        }

        sub_10000ECC0((v33[7] + 32 * v36), &v122);
        sub_10000E0B4(v36, v33);
      }

      else
      {

        v122 = 0u;
        v123 = 0u;
      }

      sub_10000EE88(&v122, &qword_1000232D0, &unk_100018AA0);
      goto LABEL_36;
    }

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    *(&v123 + 1) = &type metadata for String;
    *&v122 = v21;
    *(&v122 + 1) = v23;
    sub_10000ECC0(&v122, v121);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v120 = _swiftEmptyDictionarySingleton;
    v25 = sub_10000D864(v18);
    v27 = _swiftEmptyDictionarySingleton[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_86;
    }

    v31 = v26;
    if (_swiftEmptyDictionarySingleton[3] >= v30)
    {
      if ((v24 & 1) == 0)
      {
        v39 = v25;
        sub_10000E438();
        v25 = v39;
        v33 = v120;
        if (v31)
        {
LABEL_30:
          v38 = (v33[7] + 32 * v25);
          sub_100002FB0(v38);
          sub_10000ECC0(v121, v38);

          goto LABEL_36;
        }

        goto LABEL_34;
      }
    }

    else
    {
      sub_10000DB2C(v30, v24);
      v25 = sub_10000D864(v18);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_93;
      }
    }

    v33 = v120;
    if (v31)
    {
      goto LABEL_30;
    }

LABEL_34:
    v33[(v25 >> 6) + 8] |= 1 << v25;
    *(v33[6] + 8 * v25) = v18;
    sub_10000ECC0(v121, (v33[7] + 32 * v25));
    v40 = v33[2];
    v29 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v29)
    {
      goto LABEL_90;
    }

    v33[2] = v41;
LABEL_36:
    v42 = v118;
    v43 = [v16 options];
    v44 = [v43 annotation];

    if (!v44)
    {
      v53 = sub_10000D864(v42);
      if (v54)
      {
        v55 = v53;
        v56 = swift_isUniquelyReferenced_nonNull_native();
        *&v121[0] = v33;
        if (!v56)
        {
          sub_10000E438();
          v33 = *&v121[0];
        }

        sub_10000ECC0((v33[7] + 32 * v55), &v122);
        sub_10000E0B4(v55, v33);
      }

      else
      {

        v122 = 0u;
        v123 = 0u;
      }

      sub_10000EE88(&v122, &qword_1000232D0, &unk_100018AA0);
      goto LABEL_53;
    }

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000ECC0(&v122, v121);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v120 = v33;
    v46 = sub_10000D864(v42);
    v48 = v33[2];
    v49 = (v47 & 1) == 0;
    v29 = __OFADD__(v48, v49);
    v50 = v48 + v49;
    if (v29)
    {
      goto LABEL_87;
    }

    v51 = v47;
    if (v33[3] >= v50)
    {
      if ((v45 & 1) == 0)
      {
        v58 = v46;
        sub_10000E438();
        v46 = v58;
        v33 = v120;
        if (v51)
        {
LABEL_47:
          v57 = (v33[7] + 32 * v46);
          sub_100002FB0(v57);
          sub_10000ECC0(v121, v57);

          goto LABEL_53;
        }

        goto LABEL_51;
      }
    }

    else
    {
      sub_10000DB2C(v50, v45);
      v46 = sub_10000D864(v42);
      if ((v51 & 1) != (v52 & 1))
      {
        goto LABEL_93;
      }
    }

    v33 = v120;
    if (v51)
    {
      goto LABEL_47;
    }

LABEL_51:
    v33[(v46 >> 6) + 8] |= 1 << v46;
    *(v33[6] + 8 * v46) = v42;
    sub_10000ECC0(v121, (v33[7] + 32 * v46));
    v59 = v33[2];
    v29 = __OFADD__(v59, 1);
    v60 = v59 + 1;
    if (v29)
    {
      goto LABEL_91;
    }

    v33[2] = v60;
LABEL_53:
    v61 = [v16 options];
    v62 = [v61 openInPlace];

    *(&v123 + 1) = &type metadata for Bool;
    LOBYTE(v122) = v62;
    sub_10000ECC0(&v122, v121);
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v120 = v33;
    v64 = v117;
    v65 = sub_10000D864(v117);
    v67 = v33[2];
    v68 = (v66 & 1) == 0;
    v29 = __OFADD__(v67, v68);
    v69 = v67 + v68;
    if (v29)
    {
      goto LABEL_85;
    }

    v70 = v66;
    if (v33[3] < v69)
    {
      sub_10000DB2C(v69, v63);
      v65 = sub_10000D864(v64);
      if ((v70 & 1) != (v71 & 1))
      {
        goto LABEL_93;
      }

LABEL_58:
      v72 = v120;
      if (v70)
      {
        goto LABEL_59;
      }

      goto LABEL_61;
    }

    if (v63)
    {
      goto LABEL_58;
    }

    v74 = v65;
    sub_10000E438();
    v65 = v74;
    v72 = v120;
    if (v70)
    {
LABEL_59:
      v73 = (v72[7] + 32 * v65);
      sub_100002FB0(v73);
      sub_10000ECC0(v121, v73);
      goto LABEL_63;
    }

LABEL_61:
    v72[(v65 >> 6) + 8] |= 1 << v65;
    *(v72[6] + 8 * v65) = v64;
    sub_10000ECC0(v121, (v72[7] + 32 * v65));
    v75 = v72[2];
    v29 = __OFADD__(v75, 1);
    v76 = v75 + 1;
    if (v29)
    {
      goto LABEL_89;
    }

    v72[2] = v76;
    v77 = v64;
LABEL_63:
    v78 = v116;
    v79 = [v16 options];
    v80 = [v79 eventAttribution];

    if (v80)
    {
      *(&v123 + 1) = sub_10000300C(0, &qword_1000232E0, UIEventAttribution_ptr);
      *&v122 = v80;
      sub_10000ECC0(&v122, v121);
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v72;
      v83 = sub_10000D864(v78);
      v84 = v72[2];
      v85 = (v82 & 1) == 0;
      v86 = v84 + v85;
      if (__OFADD__(v84, v85))
      {
        goto LABEL_88;
      }

      v87 = v82;
      if (v72[3] >= v86)
      {
        if ((v81 & 1) == 0)
        {
          sub_10000E438();
        }
      }

      else
      {
        sub_10000DB2C(v86, v81);
        v88 = sub_10000D864(v78);
        if ((v87 & 1) != (v89 & 1))
        {
          goto LABEL_93;
        }

        v83 = v88;
      }

      a1 = v112;
      v94 = v120;
      if (v87)
      {
        v95 = (v120[7] + 32 * v83);
        sub_100002FB0(v95);
        sub_10000ECC0(v121, v95);
      }

      else
      {
        v120[(v83 >> 6) + 8] |= 1 << v83;
        *(v94[6] + 8 * v83) = v78;
        sub_10000ECC0(v121, (v94[7] + 32 * v83));
        v96 = v94[2];
        v29 = __OFADD__(v96, 1);
        v97 = v96 + 1;
        if (v29)
        {
          goto LABEL_92;
        }

        v94[2] = v97;
      }
    }

    else
    {
      v90 = sub_10000D864(v78);
      if (v91)
      {
        v92 = v90;
        v93 = swift_isUniquelyReferenced_nonNull_native();
        *&v121[0] = v72;
        if (!v93)
        {
          sub_10000E438();
          v72 = *&v121[0];
        }

        sub_10000ECC0((v72[7] + 32 * v92), &v122);
        sub_10000E0B4(v92, v72);
      }

      else
      {

        v122 = 0u;
        v123 = 0u;
      }

      sub_10000EE88(&v122, &qword_1000232D0, &unk_100018AA0);
    }

    v98 = *(v115 + OBJC_IVAR____TtC7AppleTV13SceneDelegate_appDelegate);
    if (v98 && ([*(v115 + OBJC_IVAR____TtC7AppleTV13SceneDelegate_appDelegate) respondsToSelector:"application:openURL:options:"] & 1) != 0)
    {
      v99 = [objc_opt_self() sharedApplication];
      v100 = [v16 URL];
      v101 = v110;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL._bridgeToObjectiveC()(v102);
      v104 = v103;
      type metadata accessor for OpenURLOptionsKey();
      sub_10000ED20(&qword_1000232D8, &unk_100018C64);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v98 application:v99 openURL:v104 options:isa];

      v106 = v101;
      a1 = v112;
      (*v109)(v106, v111);
    }

    else
    {
    }

    v6 = v14;
    v7 = v15;
    v4 = v113;
    v11 = v114;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_15:
    v15 = (v13 - 1) & v13;
    v16 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      return sub_100003D44(a1);
    }

    goto LABEL_19;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      return sub_100003D44(a1);
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  type metadata accessor for OpenURLOptionsKey();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100003DB4(void *a1, const char *a2)
{
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = [v3 session];
    v8 = [v7 persistentIdentifier];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_100002D7C(v9, v11, &v14);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, oslog, v4, a2, v5, 0xCu);
    sub_100002FB0(v6);
  }
}

void sub_100004050(id a1)
{
  qword_1000235C0 = [[ATAPPTController alloc] _init];

  _objc_release_x1();
}

void sub_100004584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000459C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) hasPrefix:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

BOOL sub_100004888(id a1, UIApplication *a2, UITabBarController *a3, NSString *a4)
{
  v5 = VUITabBarItemIdentifierKeyPPTStack;
  v6 = a4;
  v7 = a3;
  [ATAPPTUtilities selectTabWithTitle:v5 inTabBarController:v7];
  [ATAPPTUtilities waitForTabWithTitleToLoad:v5 inTabBarController:v7 totalChildren:1];
  v8 = [ATAPPTUtilities performScrollViewTest:v6 testOptions:0 scrollAxis:2 tabBarController:v7 scrollViewBlock:0];

  return v8;
}

BOOL sub_10000492C(id a1, UIApplication *a2, UITabBarController *a3, NSString *a4)
{
  v5 = VUITabBarItemIdentifierKeyPPTStack;
  v6 = a4;
  v7 = a3;
  [ATAPPTUtilities selectTabWithTitle:v5 inTabBarController:v7];
  [ATAPPTUtilities waitForTabWithTitleToLoad:v5 inTabBarController:v7 totalChildren:1];
  v8 = [ATAPPTUtilities performScrollViewTest:v6 testOptions:0 scrollAxis:1 tabBarController:v7 scrollViewBlock:&stru_10001CE48];

  return v8;
}

BOOL sub_1000049E8(id a1, UIApplication *a2, UITabBarController *a3, NSString *a4)
{
  v5 = VUITabBarItemIdentifierKeyLibrary;
  v6 = a4;
  v7 = a3;
  [ATAPPTUtilities selectTabWithTitle:v5 inTabBarController:v7];
  [ATAPPTUtilities waitForTabWithTitleToLoad:v5 inTabBarController:v7 totalChildren:1];
  v8 = [ATAPPTUtilities performScrollViewTest:v6 testOptions:0 scrollAxis:2 tabBarController:v7 scrollViewBlock:&stru_10001CE88];

  return v8;
}

UIScrollView *__cdecl sub_100004A90(id a1, UIViewController *a2)
{
  v2 = a2;
  +[ATAPPTUtilities resetNumScrollViewFound];
  v3 = [(UIViewController *)v2 view];

  v4 = [ATAPPTUtilities findScrollViewInView:v3 desiredScrollViewClass:objc_opt_class() numScrollViewsToSkip:0];

  return v4;
}

BOOL sub_100004B24(id a1, UIApplication *a2, UITabBarController *a3, NSString *a4)
{
  v5 = VUITabBarItemIdentifierKeyLibrary;
  v6 = a4;
  v7 = a3;
  [ATAPPTUtilities selectTabWithTitle:v5 inTabBarController:v7];
  [ATAPPTUtilities waitForTabWithTitleToLoad:v5 inTabBarController:v7 totalChildren:1];
  v8 = [ATAPPTUtilities performScrollViewTest:v6 testOptions:0 scrollAxis:2 tabBarController:v7 scrollViewBlock:&stru_10001CEC8];

  return v8;
}

UIScrollView *__cdecl sub_100004BCC(id a1, UIViewController *a2)
{
  v2 = a2;
  +[ATAPPTUtilities resetNumScrollViewFound];
  v3 = [(UIViewController *)v2 childViewControllers];

  v4 = [v3 firstObject];

  v5 = [v4 viewControllers];
  v6 = [v5 firstObject];

  v7 = [v6 view];
  v8 = [ATAPPTUtilities findScrollViewInView:v7 desiredScrollViewClass:objc_opt_class() numScrollViewsToSkip:0];

  return v8;
}

BOOL sub_100004CAC(id a1, UIApplication *a2, UITabBarController *a3, NSString *a4)
{
  v5 = VUITabBarItemIdentifierKeyLibrary;
  v6 = a4;
  v7 = a3;
  [ATAPPTUtilities selectTabWithTitle:v5 inTabBarController:v7];
  [ATAPPTUtilities waitForTabWithTitleToLoad:v5 inTabBarController:v7 totalChildren:1];
  v8 = [ATAPPTUtilities performScrollViewTest:v6 testOptions:0 scrollAxis:2 tabBarController:v7 scrollViewBlock:&stru_10001CF08];

  return v8;
}

UIScrollView *__cdecl sub_100004D54(id a1, UIViewController *a2)
{
  v2 = a2;
  +[ATAPPTUtilities resetNumScrollViewFound];
  v3 = [(UIViewController *)v2 childViewControllers];

  v4 = [v3 firstObject];

  v5 = [v4 viewControllers];
  v6 = [v5 lastObject];

  v7 = [v6 view];
  v8 = [ATAPPTUtilities findScrollViewInView:v7 desiredScrollViewClass:objc_opt_class() numScrollViewsToSkip:0];

  return v8;
}

BOOL sub_100004E34(id a1, UIApplication *a2, UITabBarController *a3, NSString *a4)
{
  v5 = VUITabBarItemIdentifierKeyPPTStack;
  v6 = a4;
  v7 = a3;
  [ATAPPTUtilities selectTabWithTitle:v5 inTabBarController:v7];
  +[ATAPPTUtilities resetNumScrollViewFound];
  v8 = [ATAPPTUtilities performScrollViewTest:v6 testOptions:0 scrollAxis:1 tabBarController:v7 scrollViewBlock:&stru_10001CF48];

  return v8;
}

BOOL sub_100004EE4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = VUITabBarItemIdentifierKeyPPTStack;
  [ATAPPTUtilities selectTabWithTitle:VUITabBarItemIdentifierKeyPPTStack inTabBarController:v6];
  [ATAPPTUtilities waitForTabWithTitleToLoad:v8 inTabBarController:v6 totalChildren:1];
  [*(a1 + 32) _scrollHalfTheScreenHeightIn:v6];
  v9 = +[UIDevice currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (!v10)
  {
    [*(a1 + 32) _scrollHalfTheScreenHeightIn:v6];
    [*(a1 + 32) _scrollHalfTheScreenHeightIn:v6];
  }

  v11 = [ATAPPTUtilities performScrollViewTest:v7 testOptions:0 scrollAxis:1 tabBarController:v6 scrollViewBlock:&stru_10001CF68];

  return v11;
}

BOOL sub_100004FE8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = VUITabBarItemIdentifierKeyPPTStack;
  [ATAPPTUtilities selectTabWithTitle:VUITabBarItemIdentifierKeyPPTStack inTabBarController:v6];
  [ATAPPTUtilities waitForTabWithTitleToLoad:v8 inTabBarController:v6 totalChildren:1];
  [*(a1 + 32) _scrollHalfTheScreenHeightIn:v6];
  [*(a1 + 32) _scrollHalfTheScreenHeightIn:v6];
  v9 = +[UIDevice currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (!v10)
  {
    [*(a1 + 32) _scrollHalfTheScreenHeightIn:v6];
    [*(a1 + 32) _scrollHalfTheScreenHeightIn:v6];
  }

  v11 = [ATAPPTUtilities performScrollViewTest:v7 testOptions:0 scrollAxis:1 tabBarController:v6 scrollViewBlock:&stru_10001CFB0];

  return v11;
}

BOOL sub_1000050F8(id a1, UIApplication *a2, UITabBarController *a3, NSString *a4)
{
  v5 = VUITabBarItemIdentifierKeyPPTSports;
  v6 = a4;
  v7 = a3;
  [ATAPPTUtilities selectTabWithTitle:v5 inTabBarController:v7];
  [ATAPPTUtilities waitForTabWithTitleToLoad:v5 inTabBarController:v7 totalChildren:1];
  v8 = [ATAPPTUtilities performScrollViewTest:v6 testOptions:0 scrollAxis:2 tabBarController:v7 scrollViewBlock:0];

  return v8;
}

BOOL sub_10000519C(id a1, UIApplication *a2, UITabBarController *a3, NSString *a4)
{
  v5 = VUITabBarItemIdentifierKeyPPTShowProduct;
  v6 = a4;
  v7 = a3;
  [ATAPPTUtilities selectTabWithTitle:v5 inTabBarController:v7];
  [ATAPPTUtilities waitForTabWithTitleToLoad:v5 inTabBarController:v7 totalChildren:1];
  v8 = [ATAPPTUtilities performScrollViewTest:v6 testOptions:0 scrollAxis:2 tabBarController:v7 scrollViewBlock:0];

  return v8;
}

void sub_100005418(id *a1)
{
  if (([a1[4] hasPrefix:@"Scroll"] & 1) == 0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005600;
    block[3] = &unk_10001D018;
    v10 = a1[5];
    v11 = a1[4];
    dispatch_sync(&_dispatch_main_q, block);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000560C;
  v5[3] = &unk_10001D090;
  objc_copyWeak(&v8, a1 + 7);
  v6 = a1[4];
  v7 = a1[5];
  [a1[6] setApplicationLoadCompletion:v5];
  os_unfair_lock_lock(a1[6] + 3);
  v2 = a1[6];
  v3 = *(v2 + 8);
  os_unfair_lock_unlock(v2 + 3);
  if ((v3 & 1) == 0)
  {
    usleep(0x7A120u);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100005A24;
  v4[3] = &unk_10001D0B8;
  v4[4] = a1[6];
  dispatch_sync(&_dispatch_main_q, v4);

  objc_destroyWeak(&v8);
}

void sub_10000560C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056E8;
  block[3] = &unk_10001D090;
  objc_copyWeak(&v7, a1 + 6);
  v5 = a1[4];
  v6 = a1[5];
  dispatch_async(v3, block);

  objc_destroyWeak(&v7);
}

void sub_1000056E8(id *a1)
{
  v2 = +[ATAPPTUtilities prepareForPPT];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100005920;
  v20 = sub_10000594C;
  v21 = 0;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v4 = [WeakRetained testsManifest];
  v5 = [v4 allKeys];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100005954;
  v12[3] = &unk_10001D040;
  v13 = a1[4];
  v14 = &v16;
  objc_copyWeak(&v15, a1 + 6);
  [v5 enumerateObjectsUsingBlock:v12];
  v6 = v17[5];
  if (v6)
  {
    v7 = (*(v6 + 16))(v6, a1[5], v2, a1[4]);
  }

  else
  {
    v7 = 0;
  }

  if (([a1[4] hasPrefix:@"Scroll"] & 1) == 0)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000059FC;
    v8[3] = &unk_10001D068;
    v11 = v7;
    v9 = a1[5];
    v10 = a1[4];
    dispatch_sync(&_dispatch_main_q, v8);
  }

  objc_destroyWeak(&v15);

  _Block_object_dispose(&v16, 8);
}

void sub_1000058F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  objc_destroyWeak((v22 + 48));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100005920(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_100005954(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  if ([*(a1 + 32) hasPrefix:?])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v7 = [WeakRetained testsManifest];
    v8 = [v7 objectForKeyedSubscript:v11];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

id sub_1000059FC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2 == 1)
  {
    return [v3 finishedTest:v4 waitForCommit:? extraResults:?];
  }

  else
  {
    return [v3 failedTest:v4];
  }
}

void sub_100005A24(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationLoadCompletion];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 32) setApplicationLoadCompletion:0];
    v3[2](v3);
    v2 = v3;
  }
}

void sub_1000069C4(id a1)
{
  qword_1000235D0 = os_log_create("com.apple.tv", "ATAPPTUtilities");

  _objc_release_x1();
}

void sub_100006A4C(id a1)
{
  v1 = objc_alloc_init(NSOperationQueue);
  v2 = qword_1000235E0;
  qword_1000235E0 = v1;

  [qword_1000235E0 setMaxConcurrentOperationCount:1];
  v3 = qword_1000235E0;

  [v3 setQualityOfService:17];
}

void sub_100006F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v33 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100006F3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100006F54(uint64_t a1)
{
  v2 = [*(a1 + 48) _topViewControllerInTabBarController:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    *(*(*(a1 + 40) + 8) + 40) = [objc_opt_class() topMostController];

    _objc_release_x1();
  }
}

uint64_t sub_100006FE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, *(*(*(a1 + 48) + 8) + 40));
  }

  else
  {
    [*(a1 + 56) _findScrollViewInViewController:*(*(*(a1 + 48) + 8) + 40)];
  }
  *(*(*(a1 + 40) + 8) + 40) = ;

  return _objc_release_x1();
}

void sub_100007060(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = *(a1 + 64);
  v4 = *(a1 + 68);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100007130;
  v6[3] = &unk_10001D1D8;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v2 _performScrollTest:v5 iterations:10 delta:v3 length:v4 scrollAxis:v1 extraResultsBlock:&stru_10001D1B0 completionBlock:v6];
}

void sub_100007138(void *a1)
{
  if (a1[6] == 1 && ([*(*(a1[5] + 8) + 40) _contentScrollsAlongXAxis] & 1) == 0)
  {
    [*(*(a1[5] + 8) + 40) _setContentScrollsAlongXAxis:1];
  }

  v2 = [[RPTScrollViewTestParameters alloc] initWithTestName:a1[4] scrollView:*(*(a1[5] + 8) + 40) completionHandler:0];
  [RPTTestRunner runTestWithParameters:v2];
}

void sub_1000072D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000072EC(uint64_t a1)
{
  v2 = +[UIWindow keyWindow];
  v3 = [v2 rootViewController];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v7 = [*(*(*(a1 + 32) + 8) + 40) navigationController];
  v6 = [v7 popToRootViewControllerAnimated:0];
}

void sub_1000077C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000077E8(uint64_t a1)
{
  [*(a1 + 32) tabBarItems];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = v25 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    v6 = VUITabBarItemKeyIdentifier;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v22 + 1) + 8 * i) vui_stringForKey:{v6, v22}];
        if ([v8 isEqualToString:*(a1 + 40)])
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;

          goto LABEL_11;
        }

        ++*(*(*(a1 + 56) + 8) + 24);
      }

      v4 = [v2 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *(*(*(a1 + 48) + 8) + 24);
  v10 = +[ATAPPTUtilities testLog];
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = *(*(*(a1 + 56) + 8) + 24);
      *buf = 138412546;
      v27 = v12;
      v28 = 2048;
      v29 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found '%@' at index %lu", buf, 0x16u);
    }

    [*(a1 + 32) setSelectedIndex:*(*(*(a1 + 56) + 8) + 24)];
    v14 = [*(a1 + 32) viewControllers];
    v11 = [v14 objectAtIndex:*(*(*(a1 + 56) + 8) + 24)];

    v15 = [*(a1 + 32) delegate];
    [v15 tabBarController:*(a1 + 32) didSelectViewController:v11];
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1000128A0(a1, v11, v16, v17, v18, v19, v20, v21);
  }
}

int64_t sub_100007F8C(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = v5;
    [v4 frame];
    v8 = v7;
    [v6 frame];
    v10 = v9;

    if (v8 > v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = -1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

BOOL +[ATAPPTUtilities _blockExecutionInTabBarController:documentRef:totalChildren:](id a1, SEL a2, id a3, id a4, unint64_t a5)
{
  v7 = a3;
  v8 = a4;
  v29 = v7;
  [v7 tabBarItems];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v9 = v39 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v10)
  {
    v30 = 0;
    v11 = *v39;
    v12 = VUITabBarItemKeyIdentifier;
    while (2)
    {
      v13 = 0;
      v14 = v30;
      v30 += v10;
      do
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [*(*(&v38 + 1) + 8 * v13) vui_stringForKey:v12];
        v16 = [v15 isEqualToString:v8];

        if (v16)
        {
          v30 = v14;
          goto LABEL_12;
        }

        ++v14;
        v13 = v13 + 1;
      }

      while (v10 != v13);
      v10 = [v9 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v30 = 0;
  }

LABEL_12:

  v17 = [v29 viewControllers];
  v28 = [v17 count];

  if (v30 < v28)
  {
    v18 = [v29 viewControllers];
    v26 = [v18 objectAtIndex:v30];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v26;
    }

    else
    {
      v19 = 0;
    }

    v20 = [v19 viewControllers];
    if ([v20 count] >= a5)
    {
LABEL_20:
    }

    else
    {
      v21 = 11;
      while (1)
      {

        if (!--v21)
        {
          break;
        }

        usleep(0xC350u);
        v20 = [v19 viewControllers];
        if ([v20 count] >= a5)
        {
          goto LABEL_20;
        }
      }
    }

    v22 = [v19 viewControllers];
    v23 = [v22 lastObject];

    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    while (1)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000083C8;
      block[3] = &unk_10001D2E0;
      v33 = &v34;
      v24 = v23;
      v32 = v24;
      dispatch_sync(&_dispatch_main_q, block);
      if (*(v35 + 24) != 1)
      {
        break;
      }

      usleep(0xC350u);
    }

    _Block_object_dispose(&v34, 8);
  }

  return v30 < v28;
}

void sub_1000083A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000083C8(uint64_t a1)
{
  result = [*(a1 + 32) vui_ppt_isLoading];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_100008838(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 text];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  return v6;
}

uint64_t sub_100008FFC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [v3 textLabels];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v13 + 1) + 8 * v8) text];
          v10 = [v9 isEqualToString:*(a1 + 32)];

          if (v10)
          {
            v11 = 1;
            goto LABEL_13;
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_13:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id sub_100009230(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 performSelector:"textContentView"];
  }

  else
  {
    v4 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 performSelector:"text"];
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1000093F0(uint64_t a1, void *a2)
{
  v3 = [a2 currentTitle];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_10000956C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t sub_100009588()
{
  v0 = sub_1000096E4(&qword_1000230F0, &qword_100018820);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_1000096E4(&qword_1000230F8, &qword_100018828);
  sub_100009828();
  AssistiveAccess.init(content:)();
  sub_100009A38(&qword_100023140, &qword_1000230F0, &qword_100018820, &protocol conformance descriptor for AssistiveAccess<A>);
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000096E4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000972C@<X0>(uint64_t a1@<X8>)
{
  ClarityUIRootView.init()();
  KeyPath = swift_getKeyPath();
  v3 = (a1 + *(sub_1000096E4(&qword_100023110, &qword_100018830) + 36));
  v4 = *(sub_1000096E4(&qword_100023128, &qword_100018838) + 28);
  v5 = enum case for ColorScheme.dark(_:);
  v6 = type metadata accessor for ColorScheme();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = KeyPath;
  v7 = static Color.black.getter();
  v8 = swift_getKeyPath();
  result = sub_1000096E4(&qword_1000230F8, &qword_100018828);
  v10 = (a1 + *(result + 36));
  *v10 = v8;
  v10[1] = v7;
  return result;
}

unint64_t sub_100009828()
{
  result = qword_100023100;
  if (!qword_100023100)
  {
    sub_1000098E0(&qword_1000230F8, &qword_100018828);
    sub_100009928();
    sub_100009A38(&qword_100023130, &qword_100023138, qword_100018840, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023100);
  }

  return result;
}

uint64_t sub_1000098E0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100009928()
{
  result = qword_100023108;
  if (!qword_100023108)
  {
    sub_1000098E0(&qword_100023110, &qword_100018830);
    sub_1000099E0();
    sub_100009A38(&qword_100023120, &qword_100023128, &qword_100018838, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023108);
  }

  return result;
}

unint64_t sub_1000099E0()
{
  result = qword_100023118;
  if (!qword_100023118)
  {
    type metadata accessor for ClarityUIRootView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023118);
  }

  return result;
}

uint64_t sub_100009A38(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000098E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100009AA4(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

id sub_100009BF0()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_100009C24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClarityUISceneDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100009C98(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ClarityUISceneDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100009CCC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

void sub_100009D24(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v10 = a1;
  v4 = [v3 windows];
  sub_100009EC4();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v6 = *(v5 + 32);
    }

    v7 = v6;

    v8 = [objc_opt_self() sharedInstance];
    [v8 setMainWindow:v7];

    v9 = v8;
    goto LABEL_11;
  }

  v9 = v10;
LABEL_11:
}

unint64_t sub_100009EC4()
{
  result = qword_1000231D0;
  if (!qword_1000231D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000231D0);
  }

  return result;
}

uint64_t sub_100009F60(uint64_t a1, uint64_t a2)
{
  v20[0] = a1;
  v20[1] = a2;
  v2 = type metadata accessor for InputConnectionBehavior();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000096E4(&qword_100023250, &qword_100018918);
  __chkstk_darwin(v6 - 8);
  v8 = v20 - v7;
  v9 = sub_1000096E4(&qword_100023258, &qword_100018920);
  __chkstk_darwin(v9 - 8);
  v11 = v20 - v10;
  v12 = sub_1000096E4(&qword_100023260, &qword_100018928);
  __chkstk_darwin(v12 - 8);
  v14 = v20 - v13;
  v15 = type metadata accessor for LocalizedStringResource();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  sub_1000096E4(&qword_100023268, &qword_100018930);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v16 + 56))(v14, 1, 1, v15);
  v17 = type metadata accessor for String.IntentInputOptions();
  v20[2] = 0;
  v20[3] = 0;
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = type metadata accessor for IntentDialog();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  (*(v3 + 104))(v5, enum case for InputConnectionBehavior.default(_:), v2);
  return IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t sub_10000A288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a7;
  v46 = a8;
  v43 = a5;
  v44 = a6;
  v41 = a3;
  v42 = a4;
  v40 = a2;
  v47 = a1;
  v55 = type metadata accessor for InputConnectionBehavior();
  v8 = *(v55 - 8);
  __chkstk_darwin(v55);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000096E4(&qword_100023250, &qword_100018918);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - v12;
  v14 = sub_1000096E4(&qword_100023258, &qword_100018920);
  __chkstk_darwin(v14 - 8);
  v16 = &v32 - v15;
  v17 = sub_1000096E4(&qword_100023260, &qword_100018928);
  __chkstk_darwin(v17 - 8);
  v19 = &v32 - v18;
  v20 = type metadata accessor for LocalizedStringResource();
  v56 = v20;
  v39 = *(v20 - 8);
  v21 = v39;
  __chkstk_darwin(v20);
  v36 = sub_1000096E4(&qword_100023268, &qword_100018930);
  LocalizedStringResource.init(stringLiteral:)();
  v37 = *(v21 + 56);
  v50 = v21 + 56;
  v37(v19, 1, 1, v20);
  v49 = type metadata accessor for String.IntentInputOptions();
  v57 = 0;
  v58 = 0;
  v22 = *(v49 - 8);
  v54 = *(v22 + 56);
  v48 = v22 + 56;
  v54(v16, 1, 1, v49);
  v52 = type metadata accessor for IntentDialog();
  v23 = *(v52 - 8);
  v51 = *(v23 + 56);
  v53 = v23 + 56;
  v51(v13, 1, 1, v52);
  v24 = enum case for InputConnectionBehavior.default(_:);
  v33 = *(v8 + 104);
  v34 = v8 + 104;
  v35 = enum case for InputConnectionBehavior.default(_:);
  v25 = v55;
  v33(v10, enum case for InputConnectionBehavior.default(_:), v55);
  v38 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();

  LocalizedStringResource.init(stringLiteral:)();
  v26 = v37;
  v37(v19, 1, 1, v56);
  v57 = 0;
  v58 = 0;
  v54(v16, 1, 1, v49);
  v51(v13, 1, 1, v52);
  v27 = v24;
  v28 = v33;
  v33(v10, v27, v25);
  IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();

  LocalizedStringResource.init(stringLiteral:)();
  v26(v19, 1, 1, v56);
  v57 = 0;
  v58 = 0;
  v54(v16, 1, 1, v49);
  v51(v13, 1, 1, v52);
  v28(v10, v35, v55);
  IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v57 = v40;
  v58 = v41;

  v29 = v38;
  IntentParameter.wrappedValue.setter();
  v57 = v42;
  v58 = v43;
  IntentParameter.wrappedValue.setter();
  v57 = v44;
  v58 = v45;
  IntentParameter.wrappedValue.setter();
  v30 = type metadata accessor for IntentMediaItem();
  (*(*(v30 - 8) + 8))(v46, v30);
  (*(v39 + 8))(v47, v56);

  return v29;
}

uint64_t sub_10000A92C()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_10000CEEC(v0, qword_100023DC8);
  sub_10000CA90(v0, qword_100023DC8);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t (*sub_10000AA38(uint64_t a1))(uint64_t a1)
{
  if (qword_100023690 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for LocalizedStringResource();
  sub_10000CA90(v1, qword_100023DC8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_10000AACC()
{
  v0 = type metadata accessor for IntentDescription();
  sub_10000CEEC(v0, qword_100023DE0);
  sub_10000CA90(v0, qword_100023DE0);
  return IntentDescription.init(stringLiteral:)();
}

uint64_t sub_10000AB68(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return sub_10000CA90(v5, a3);
}

uint64_t sub_10000AC00@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_10000CA90(v7, a3);
  swift_beginAccess();
  return (*(*(v8 - 8) + 16))(a5, v9, v8);
}

uint64_t sub_10000ACEC(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (*a2 == -1)
  {
    v7 = a3(0);
  }

  else
  {
    swift_once();
    v7 = a3(0);
  }

  v8 = v7;
  v9 = sub_10000CA90(v7, a4);
  swift_beginAccess();
  v10 = *(v8 - 8);
  (*(v10 + 24))(v9, a1, v8);
  swift_endAccess();
  return (*(v10 + 8))(a1, v8);
}

uint64_t (*sub_10000ADD8(uint64_t a1))(uint64_t a1)
{
  if (qword_100023698[0] != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for IntentDescription();
  sub_10000CA90(v1, qword_100023DE0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_10000AE7C()
{
  swift_beginAccess();
  v0 = *aPurchaseintent_0;

  return v0;
}

uint64_t sub_10000AED0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aPurchaseintent_0 = a1;
  *&aPurchaseintent_0[8] = a2;
}

uint64_t (*sub_10000AFB8(uint64_t *a1))()
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10000CF54;
}

uint64_t (*sub_10000B084(uint64_t *a1))()
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10000B0F8;
}

uint64_t (*sub_10000B154(uint64_t *a1))()
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10000CF54;
}

void sub_10000B1C8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_10000B238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[34] = a2;
  v4[35] = a4;
  v4[33] = a1;
  v5 = type metadata accessor for Logger();
  v4[36] = v5;
  v4[37] = *(v5 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  sub_1000096E4(&qword_100023270, &qword_100018CC0);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();

  return _swift_task_switch(sub_10000B358, 0, 0);
}

uint64_t sub_10000B358()
{
  v42 = v0;
  if (TVAppFeature.isEnabled.getter())
  {
    _StringGuts.grow(_:)(47);

    v40 = 0xD000000000000014;
    v41 = 0x8000000100015510;
    IntentParameter.wrappedValue.getter();
    v1 = v0[27];
    if (v1)
    {
      v2 = v0[26];
    }

    else
    {
      v2 = 0x656E696665646E75;
    }

    if (v1)
    {
      v3 = v0[27];
    }

    else
    {
      v3 = 0xE900000000000064;
    }

    v4 = v3;
    String.append(_:)(*&v2);

    v5._countAndFlagsBits = 0xD000000000000017;
    v5._object = 0x8000000100015530;
    String.append(_:)(v5);
    IntentParameter.wrappedValue.getter();
    v6 = v0[29];
    if (v6)
    {
      v7 = v0[28];
    }

    else
    {
      v7 = 0x656E696665646E75;
    }

    if (v6)
    {
      v8 = v0[29];
    }

    else
    {
      v8 = 0xE900000000000064;
    }

    v9 = v8;
    String.append(_:)(*&v7);

    v10._countAndFlagsBits = v40;
    v11 = v41;
    v40 = 0xD00000000000002ALL;
    v41 = 0x8000000100015550;
    v10._object = v11;
    String.append(_:)(v10);

    v0[43] = 0xD00000000000002ALL;
    v0[44] = 0x8000000100015550;
    URL.init(string:)();
    swift_beginAccess();

    Logger.init(subsystem:category:)();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[40];
    v16 = v0[36];
    v17 = v0[37];
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v40 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_100002D7C(0xD00000000000002ALL, 0x8000000100015550, &v40);
      _os_log_impl(&_mh_execute_header, v12, v13, "Deep linking to %s", v18, 0xCu);
      sub_100002FB0(v19);
    }

    v20 = *(v17 + 8);
    v20(v15, v16);
    v0[45] = v20;
    v21 = [objc_opt_self() defaultWorkspace];
    v0[46] = v21;
    if (v21)
    {
      v22 = v21;
      v23 = v0[41];
      sub_10000CB1C(v0[42], v23);
      v24 = type metadata accessor for URL();
      v25 = *(v24 - 8);
      v26 = (*(v25 + 48))(v23, 1, v24);
      v28 = 0;
      if (v26 != 1)
      {
        v29 = v0[41];
        URL._bridgeToObjectiveC()(v27);
        v28 = v30;
        (*(v25 + 8))(v29, v24);
      }

      v0[47] = v28;
      v0[2] = v0;
      v0[7] = v0 + 32;
      v0[3] = sub_10000B938;
      v31 = swift_continuation_init();
      v0[17] = sub_1000096E4(&qword_100023280, &unk_100018940);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_10000BDB4;
      v0[13] = &unk_10001D470;
      v0[14] = v31;
      [v22 openURL:v28 configuration:0 completionHandler:v0 + 10];
      v21 = v0 + 2;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_await(v21);
  }

  else
  {
    swift_beginAccess();

    Logger.init(subsystem:category:)();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Feature flag disabled", v34, 2u);
    }

    v35 = v0[39];
    v36 = v0[36];
    v37 = v0[37];

    (*(v37 + 8))(v35, v36);
    v0[24] = 0xD000000000000019;
    v0[25] = 0x80000001000154F0;
    sub_10000CAC8();
    static IntentResult.result<A>(value:)();

    v38 = v0[1];

    return v38();
  }
}

uint64_t sub_10000B938()
{
  v1 = *(*v0 + 48);
  *(*v0 + 384) = v1;
  if (v1)
  {
    v2 = sub_10000BB38;
  }

  else
  {

    v2 = sub_10000BA50;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000BA50()
{
  v1 = *(v0 + 376);

  v2 = *(v0 + 336);
  *(v0 + 240) = 0;
  *(v0 + 248) = 0xE000000000000000;
  sub_10000CAC8();
  static IntentResult.result<A>(value:)();
  sub_10000CBA4(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000BB38()
{
  v21 = v0;
  v1 = v0[47];
  v2 = v0[46];
  swift_willThrow();

  Logger.init(subsystem:category:)();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[44];
  v7 = v0[45];
  if (v5)
  {
    v19 = v0[45];
    v8 = v0[43];
    v18 = v0[38];
    v9 = v0[36];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    v12 = sub_100002D7C(v8, v6, &v20);

    *(v10 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to deep link to %s", v10, 0xCu);
    sub_100002FB0(v11);

    v19(v18, v9);
  }

  else
  {
    v13 = v0[38];
    v14 = v0[36];

    v7(v13, v14);
  }

  v15 = v0[42];
  v0[30] = 0;
  v0[31] = 0xE000000000000000;
  sub_10000CAC8();
  static IntentResult.result<A>(value:)();
  sub_10000CBA4(v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_10000BDB4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_10000CEA8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000096E4(&qword_1000232B8, &unk_100018A80);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10000BEB0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100023690 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10000CA90(v2, qword_100023DC8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_10000BF88(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000C038;

  return sub_10000B238(a1, v4, v6, v5);
}

uint64_t sub_10000C038()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000C12C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000C564();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_10000C158(uint64_t a1)
{
  v2 = sub_10000CD40();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

char *sub_10000C194(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000C1E0(a1, a2);
  sub_10000C310(&off_10001D448);
  return v3;
}

char *sub_10000C1E0(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000C3FC(v5, 0);
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
        v7 = sub_10000C3FC(v10, 0);
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

uint64_t sub_10000C310(uint64_t result)
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

  result = sub_10000C470(result, v11, 1, v3);
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

void *sub_10000C3FC(uint64_t a1, uint64_t a2)
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

  sub_1000096E4(&qword_1000232B0, &unk_100018CF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000C470(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000096E4(&qword_1000232B0, &unk_100018CF0);
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

uint64_t sub_10000C564()
{
  v41 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v41 - 8);
  __chkstk_darwin(v41);
  v39 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000096E4(&qword_100023250, &qword_100018918);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_1000096E4(&qword_100023258, &qword_100018920);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_1000096E4(&qword_100023260, &qword_100018928);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for LocalizedStringResource();
  v30 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_1000096E4(&qword_100023268, &qword_100018930);
  LocalizedStringResource.init(stringLiteral:)();
  v13 = *(v12 + 56);
  v31 = v12 + 56;
  v33 = v13;
  v13(v10, 1, 1, v11);
  v14 = type metadata accessor for String.IntentInputOptions();
  v42 = 0;
  v43 = 0;
  v15 = *(v14 - 8);
  v40 = *(v15 + 56);
  v29 = v15 + 56;
  v27 = v14;
  v40(v7, 1, 1, v14);
  v37 = type metadata accessor for IntentDialog();
  v16 = *(v37 - 8);
  v36 = *(v16 + 56);
  v38 = v16 + 56;
  v17 = v4;
  v36(v4, 1, 1, v37);
  v35 = enum case for InputConnectionBehavior.default(_:);
  v26 = *(v0 + 104);
  v34 = v0 + 104;
  v18 = v41;
  v26(v39);
  v19 = v17;
  v32 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  LocalizedStringResource.init(stringLiteral:)();
  v20 = v30;
  v33(v10, 1, 1, v30);
  v42 = 0;
  v43 = 0;
  v40(v7, 1, 1, v14);
  v21 = v19;
  v36(v19, 1, 1, v37);
  v22 = v39;
  v23 = v18;
  v24 = v26;
  (v26)(v39, v35, v23);
  v28 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  LocalizedStringResource.init(stringLiteral:)();
  v33(v10, 1, 1, v20);
  v42 = 0;
  v43 = 0;
  v40(v7, 1, 1, v27);
  v36(v21, 1, 1, v37);
  (v24)(v22, v35, v41);
  IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  return v32;
}

uint64_t sub_10000CA90(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_10000CAC8()
{
  result = qword_100023278;
  if (!qword_100023278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023278);
  }

  return result;
}

uint64_t sub_10000CB1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000096E4(&qword_100023270, &qword_100018CC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CBA4(uint64_t a1)
{
  v2 = sub_1000096E4(&qword_100023270, &qword_100018CC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000CC10()
{
  result = qword_100023288;
  if (!qword_100023288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023288);
  }

  return result;
}

unint64_t sub_10000CC68()
{
  result = qword_100023290;
  if (!qword_100023290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023290);
  }

  return result;
}

unint64_t sub_10000CD40()
{
  result = qword_100023298;
  if (!qword_100023298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023298);
  }

  return result;
}

__n128 sub_10000CD94(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000CDA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10000CDF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000CE40()
{
  result = qword_1000232A0;
  if (!qword_1000232A0)
  {
    sub_1000098E0(&qword_1000232A8, &qword_100018A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000232A0);
  }

  return result;
}

void *sub_10000CEA8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_10000CEEC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_10000CF88()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  return v1;
}

uint64_t sub_10000D18C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_1000096E4(&unk_100023460, &qword_100018CB8);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3(v2);
}

id sub_10000D304()
{
  Logger.init(subsystem:category:)();
  v1 = OBJC_IVAR____TtC7AppleTV13SceneDelegate_appDelegate;
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  *&v0[v1] = v3;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SceneDelegate(0);
  return objc_msgSendSuper2(&v5, "init");
}

id sub_10000D3D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000D490(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10000D508(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000D588@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10000D5CC()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_10000D608(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10000D65C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_10000D6D0(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_10000D758@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10000D7A0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000D7CC(uint64_t a1)
{
  v2 = sub_10000ED20(&qword_1000232D8, &unk_100018C64);
  v3 = sub_10000ED20(&qword_1000233F0, &unk_100018BB8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_10000D864(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10000D970(a1, v2);
}

unint64_t sub_10000D8F8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000DA74(a1, a2, v4);
}

unint64_t sub_10000D970(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t sub_10000DA74(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10000DB2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000096E4(&qword_1000233F8, &unk_100018CA8);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_10000ECC0(v22, v36);
      }

      else
      {
        sub_100002F54(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_10000ECC0(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_10000DDFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000096E4(&qword_100023498, &qword_100018CE0);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_10000ECC0(v24, v34);
      }

      else
      {
        sub_100002F54(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10000ECC0(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_34:
  *v3 = v7;
  return result;
}

void sub_10000E0B4(int64_t a1, uint64_t a2)
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
      v10 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v11 = v10;
      String.hash(into:)();
      v12 = Hasher._finalize()();

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

_OWORD *sub_10000E27C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000D8F8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10000E5B8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10000DDFC(v16, a4 & 1);
    v11 = sub_10000D8F8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100002FB0(v22);

    return sub_10000ECC0(a1, v22);
  }

  else
  {
    sub_10000E3CC(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_10000E3CC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000ECC0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

id sub_10000E438()
{
  v1 = v0;
  sub_1000096E4(&qword_1000233F8, &unk_100018CA8);
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
        sub_100002F54(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_10000ECC0(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_10000E5B8()
{
  v1 = v0;
  sub_1000096E4(&qword_100023498, &qword_100018CE0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100002F54(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000ECC0(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void sub_10000E75C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10000300C(0, &qword_100023470, NSUserActivity_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10000300C(0, &qword_100023470, NSUserActivity_ptr);
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

unint64_t sub_10000E980(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000096E4(&qword_1000234A0, &qword_100018CE8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000D8F8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_10000EA94(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16[0] = v7;
    *v6 = 136315138;
    v8 = [v3 activityType];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_100002D7C(v9, v11, v16);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "AppleTVAppDelegate continueUserActivity -- restorationHandler activityType %s", v6, 0xCu);
    sub_100002FB0(v7);
  }

  v13 = *(v2 + OBJC_IVAR____TtC7AppleTV13SceneDelegate_appDelegate);
  if (v13)
  {
    if ([*(v2 + OBJC_IVAR____TtC7AppleTV13SceneDelegate_appDelegate) respondsToSelector:"application:continueUserActivity:restorationHandler:"])
    {
      v14 = [objc_opt_self() sharedApplication];
      v16[4] = nullsub_1;
      v16[5] = 0;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 1107296256;
      v16[2] = sub_10000D18C;
      v16[3] = &unk_10001D570;
      v15 = _Block_copy(v16);
      [v13 application:v14 continueUserActivity:v3 restorationHandler:v15];

      _Block_release(v15);
    }
  }
}

_OWORD *sub_10000ECC0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void type metadata accessor for OpenURLOptionsKey()
{
  if (!qword_1000233D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000233D0);
    }
  }
}

uint64_t sub_10000ED20(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OpenURLOptionsKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000EE00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EE18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000096E4(&qword_100023270, &qword_100018CC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000EE88(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000096E4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000EEEC(uint64_t a1)
{
  v26 = a1;
  v1 = sub_1000096E4(&qword_1000234F0, &qword_100018E88);
  v2 = *(v1 - 8);
  v29 = v1;
  v30 = v2;
  __chkstk_darwin(v1);
  v4 = v22 - v3;
  v27 = type metadata accessor for _AssistantIntent.PhraseToken();
  v5 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000096E4(&qword_1000234F8, &qword_100018E90);
  __chkstk_darwin(v8);
  sub_10001097C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x64616F6C6E776F44;
  v9._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  sub_1000109D0();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 544106784;
  v10._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v25 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v24 = *(v5 + 104);
  v11 = v27;
  v24(v7);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v12 = *(v5 + 8);
  v22[1] = v5 + 8;
  v23 = v12;
  v12(v7, v11);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = *(v30 + 8);
  v30 += 8;
  v22[0] = v14;
  v14(v4, v29);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x20656B614DLL;
  v15._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._object = 0x80000001000157B0;
  v16._countAndFlagsBits = 0xD000000000000013;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  (v24)(v7, v25, v11);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v23(v7, v11);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v18 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  (v22[0])(v4, v29);
  sub_1000096E4(&qword_100023500, &unk_100018E98);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100018D00;
  *(v19 + 32) = v28;
  *(v19 + 40) = v18;
  v20 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v20;
}

uint64_t sub_10000F368@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000B050();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000F3D0()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1000096E4(&qword_1000234D0, &qword_100018DF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100018D10;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_10000F4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for _AssistantIntent.Value();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1000109D0();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10001097C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v7 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v4 + 8))(v6, v3);
  sub_1000096E4(&qword_1000234C8, &qword_100018DE8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100018A90;
  *(v8 + 32) = v7;
  v9 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v9;
}

uint64_t sub_10000F630@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000AF84();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000F678(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2;
  v8 = a2[1];

  return a5(v5, v6, v7, v8);
}

uint64_t sub_10000F6E0()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1000096E4(&qword_1000234D0, &qword_100018DF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100018D10;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_10000F7B4(uint64_t a1)
{
  v58 = sub_1000096E4(&qword_1000234D8, &qword_100018E20);
  v61 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v44 - v2;
  v60 = type metadata accessor for _AssistantIntent.PhraseToken();
  v3 = *(v60 - 8);
  __chkstk_darwin(v60);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000096E4(&qword_1000234E0, &qword_100018E28);
  __chkstk_darwin(v6);
  v49 = sub_10000CD40();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x6573616863727550;
  v7._object = 0xED00002065687420;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v8 = sub_1000109D0();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 32;
  v9._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  v53 = a1;
  v54 = v8;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 544106784;
  v10._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v11 = v3;
  v51 = *(v3 + 104);
  v52 = v3 + 104;
  v12 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v56 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v13 = v60;
  v51(v5);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v50 = *(v11 + 8);
  v59 = v11 + 8;
  v50(v5, v13);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  v15 = v57;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v47 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v55 = *(v61 + 8);
  v61 += 8;
  v16 = v15;
  v17 = v58;
  v55(v16, v58);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 544830786;
  v18._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 544106784;
  v19._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  v48 = v5;
  v20 = v12;
  v21 = v60;
  v22 = v51;
  (v51)(v5, v20, v60);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v23 = v50;
  v50(v5, v21);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  v25 = v57;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v46 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v55(v25, v17);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._countAndFlagsBits = 0x6573616863727550;
  v26._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27._countAndFlagsBits = 544106784;
  v27._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  v28 = v48;
  v29 = v60;
  (v22)(v48, v56, v60);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v23(v28, v29);
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  v31 = v57;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v45 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v32 = v55;
  v55(v31, v58);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v33._countAndFlagsBits = 0x2065687420797542;
  v33._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v34._countAndFlagsBits = 32;
  v34._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v35._countAndFlagsBits = 544106784;
  v35._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  v36 = v48;
  v37 = v60;
  (v51)(v48, v56, v60);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v50(v36, v37);
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v38);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v39 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v32(v31, v58);
  sub_1000096E4(&qword_1000234E8, &qword_100018E30);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100018D20;
  v41 = v46;
  *(v40 + 32) = v47;
  *(v40 + 40) = v41;
  *(v40 + 48) = v45;
  *(v40 + 56) = v39;
  v42 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v42;
}

uint64_t sub_100010040()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1000096E4(&qword_1000234D0, &qword_100018DF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100018D20;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_100010150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = type metadata accessor for _AssistantIntent.Value();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1000109D0();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10000CD40();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v9 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v10 = *(v6 + 8);
  v10(v8, v5);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v11 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v10(v8, v5);
  sub_1000096E4(&qword_1000234C8, &qword_100018DE8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100018D00;
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;
  v13 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v13;
}

uint64_t sub_10001034C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1000096E4(&qword_1000234D0, &qword_100018DF0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100018D00;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t sub_1000103F0@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2]);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_100010440(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];

  return a5(v5, v6, v7, v8, v9);
}

uint64_t sub_1000104B8()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1000096E4(&qword_1000234D0, &qword_100018DF0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100018D00;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v3;
}

uint64_t *sub_10001057C()
{
  if (qword_100023B40 != -1)
  {
    swift_once();
  }

  return &qword_100023E00;
}

uint64_t sub_1000105CC()
{
  if (qword_100023B40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_100010644(uint64_t a1)
{
  if (qword_100023B40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_100023E00 = a1;
}

uint64_t (*sub_1000106C4(uint64_t a1))(uint64_t a1)
{
  if (qword_100023B40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_100010750()
{
  v0 = type metadata accessor for _AssistantIntent();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100011210(v2);
  v16 = v5;
  sub_10001097C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:implying:)();
  v6 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v15 = sub_100009F10();
  v16 = v8;
  v17 = v9;
  sub_10000CD40();
  _AssistantIntent.init<A>(_:phrases:parameterValues:implying:)();
  v10 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v4, v0);
  sub_1000096E4(&qword_1000234B0, "F\v");
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100018D00;
  *(v11 + 32) = v6;
  *(v11 + 40) = v10;
  v12 = static _AssistantIntent.Builder.buildBlock(_:)();

  return v12;
}

unint64_t sub_10001097C()
{
  result = qword_1000234A8;
  if (!qword_1000234A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000234A8);
  }

  return result;
}

unint64_t sub_1000109D0()
{
  result = qword_1000234B8;
  if (!qword_1000234B8)
  {
    sub_1000098E0(&qword_1000234C0, &qword_100018DB8);
    sub_10000CAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000234B8);
  }

  return result;
}

uint64_t sub_100010A54()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_10000CEEC(v0, qword_100023E08);
  sub_10000CA90(v0, qword_100023E08);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t (*sub_100010B60(uint64_t a1))(uint64_t a1)
{
  if (qword_100023C00 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for LocalizedStringResource();
  sub_10000CA90(v1, qword_100023E08);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_100010BF4()
{
  v0 = type metadata accessor for IntentDescription();
  sub_10000CEEC(v0, qword_100023E20);
  sub_10000CA90(v0, qword_100023E20);
  return IntentDescription.init(stringLiteral:)();
}

uint64_t (*sub_100010D00(uint64_t a1))(uint64_t a1)
{
  if (qword_100023C08[0] != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for IntentDescription();
  sub_10000CA90(v1, qword_100023E20);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t (*sub_100010D94(uint64_t *a1))()
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10000CF54;
}

uint64_t (*sub_100010E08(uint64_t *a1))()
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10000B0F8;
}

uint64_t sub_100010E8C()
{
  swift_beginAccess();
  v0 = *aDownloadintent_0;

  return v0;
}

uint64_t sub_100010EE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aDownloadintent_0 = a1;
  *&aDownloadintent_0[8] = a2;
}

uint64_t sub_100010F94(uint64_t a1)
{
  v1[9] = a1;
  v2 = type metadata accessor for Logger();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_100011054, 0, 0);
}

uint64_t sub_100011054()
{
  if (TVAppFeature.isEnabled.getter())
  {
    v0[7] = 0;
    v0[8] = 0xE000000000000000;
    sub_10000CAC8();
  }

  else
  {
    swift_beginAccess();

    Logger.init(subsystem:category:)();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Feature flag disabled", v3, 2u);
    }

    v5 = v0[11];
    v4 = v0[12];
    v6 = v0[10];

    (*(v5 + 8))(v4, v6);
    v0[5] = 0xD000000000000019;
    v0[6] = 0x80000001000154F0;
    sub_10000CAC8();
  }

  static IntentResult.result<A>(value:)();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100011218()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000096E4(&qword_100023250, &qword_100018918);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = sub_1000096E4(&qword_100023258, &qword_100018920);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  v10 = sub_1000096E4(&qword_100023260, &qword_100018928);
  __chkstk_darwin(v10 - 8);
  v12 = v18 - v11;
  v13 = type metadata accessor for LocalizedStringResource();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  sub_1000096E4(&qword_100023268, &qword_100018930);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v14 + 56))(v12, 1, 1, v13);
  v15 = type metadata accessor for String.IntentInputOptions();
  v18[0] = 0;
  v18[1] = 0;
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = type metadata accessor for IntentDialog();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  (*(v1 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v0);
  return IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t sub_100011540()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000096E4(&qword_100023250, &qword_100018918);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = sub_1000096E4(&qword_100023258, &qword_100018920);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  v10 = sub_1000096E4(&qword_100023260, &qword_100018928);
  __chkstk_darwin(v10 - 8);
  v12 = v18 - v11;
  v13 = type metadata accessor for LocalizedStringResource();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  sub_1000096E4(&qword_100023268, &qword_100018930);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v14 + 56))(v12, 1, 1, v13);
  v15 = type metadata accessor for String.IntentInputOptions();
  v18[0] = 0;
  v18[1] = 0;
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = type metadata accessor for IntentDialog();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  (*(v1 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v0);
  return IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t sub_100011878@<X0>(uint64_t a1@<X8>)
{
  if (qword_100023C00 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10000CA90(v2, qword_100023E08);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_100011938(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000C038;

  return sub_100010F94(a1);
}

uint64_t sub_1000119D0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100011A34();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000119F8(uint64_t a1)
{
  v2 = sub_10001097C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100011A34()
{
  v28 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v28 - 8);
  __chkstk_darwin(v28);
  v2 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000096E4(&qword_100023250, &qword_100018918);
  __chkstk_darwin(v3 - 8);
  v5 = v22 - v4;
  v6 = sub_1000096E4(&qword_100023258, &qword_100018920);
  __chkstk_darwin(v6 - 8);
  v8 = v22 - v7;
  v9 = sub_1000096E4(&qword_100023260, &qword_100018928);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v33 = v12;
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v31 = sub_1000096E4(&qword_100023268, &qword_100018930);
  LocalizedStringResource.init(stringLiteral:)();
  v14 = *(v13 + 56);
  v32 = v13 + 56;
  v34 = v14;
  v14(v11, 1, 1, v12);
  v15 = type metadata accessor for String.IntentInputOptions();
  v35 = 0;
  v36 = 0;
  v16 = *(v15 - 8);
  v29 = *(v16 + 56);
  v30 = v16 + 56;
  v29(v8, 1, 1, v15);
  v17 = type metadata accessor for IntentDialog();
  v18 = *(v17 - 8);
  v26 = *(v18 + 56);
  v27 = v18 + 56;
  v26(v5, 1, 1, v17);
  v24 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v0 + 104);
  v22[1] = v0 + 104;
  v23 = v19;
  v20 = v28;
  v19(v2);
  v25 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  LocalizedStringResource.init(stringLiteral:)();
  v34(v11, 1, 1, v33);
  v35 = 0;
  v36 = 0;
  v29(v8, 1, 1, v15);
  v26(v5, 1, 1, v17);
  v23(v2, v24, v20);
  IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  return v25;
}

unint64_t sub_100011E54()
{
  result = qword_100023518;
  if (!qword_100023518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023518);
  }

  return result;
}

unint64_t sub_100011EAC()
{
  result = qword_100023520;
  if (!qword_100023520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023520);
  }

  return result;
}

__n128 sub_100011F84(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100011F90(uint64_t *a1, int a2)
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

uint64_t sub_100011FD8(uint64_t result, int a2, int a3)
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

id sub_10001203C()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100023D98 = result;
  return result;
}

uint64_t sub_1000121C4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = type metadata accessor for ColorResource();
  sub_10000CEEC(v4, a2);
  sub_10000CA90(v4, a2);
  if (qword_100023D90 != -1)
  {
    swift_once();
  }

  v5 = qword_100023D98;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1000122E0()
{
  v0 = type metadata accessor for ImageResource();
  sub_10000CEEC(v0, qword_100023E80);
  sub_10000CA90(v0, qword_100023E80);
  if (qword_100023D90 != -1)
  {
    swift_once();
  }

  v1 = qword_100023D98;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1000123F8()
{
  v0 = type metadata accessor for ImageResource();
  sub_10000CEEC(v0, qword_100023E98);
  sub_10000CA90(v0, qword_100023E98);
  if (qword_100023D90 != -1)
  {
    swift_once();
  }

  v1 = qword_100023D98;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1000124D8(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return sub_10000CA90(v5, a3);
}

uint64_t sub_100012570@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_10000CA90(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

void sub_10001266C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Already have a previous completion handler for %@.  Calling it now", &v2, 0xCu);
}

void sub_1000126E4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Already have a previous AR completion handler for %@.  Calling it now", &v2, 0xCu);
}

void sub_1000127C8(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_10000956C(&_mh_execute_header, a2, a3, "Failed to find scrollview for test '%@'", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100012834(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_10000956C(&_mh_execute_header, a2, a3, "Unable to find shelf with button %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1000128A0(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 40);
  sub_10000956C(&_mh_execute_header, a2, a3, "Unable to find tab %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

uint64_t _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)()
{
  return _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
}

{
  return _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
}