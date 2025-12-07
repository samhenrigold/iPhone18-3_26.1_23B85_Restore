uint64_t sub_1000AF878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SettingsURLDestination(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v31 - v11;
  __chkstk_darwin(v10);
  v14 = &v31 - v13;
  v15 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000659C(v17, qword_100169658);
    sub_10000822C(a2, v14, type metadata accessor for SettingsURLDestination);
    sub_10000822C(a2, v12, type metadata accessor for SettingsURLDestination);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v32 = v15;
      v21 = v20;
      v31 = swift_slowAlloc();
      v34[0] = v31;
      *v21 = 141558787;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2081;
      v22 = sub_1000F41C0();
      v33 = a4;
      v24 = v23;
      sub_100046460(v14, type metadata accessor for SettingsURLDestination);
      v25 = sub_100025CF0(v22, v24, v34);

      *(v21 + 14) = v25;
      *(v21 + 22) = 2160;
      *(v21 + 24) = 1752392040;
      *(v21 + 32) = 2081;
      v26 = sub_1000F41C0();
      v28 = v27;
      sub_100046460(v12, type metadata accessor for SettingsURLDestination);
      v29 = sub_100025CF0(v26, v28, v34);
      a4 = v33;

      *(v21 + 34) = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "Processing URL with possibly modified URL Destination (was '%{private,mask.hash}s', is now '%{private,mask.hash}s').", v21, 0x2Au);
      swift_arrayDestroy();

      v15 = v32;
    }

    else
    {

      sub_100046460(v12, type metadata accessor for SettingsURLDestination);
      sub_100046460(v14, type metadata accessor for SettingsURLDestination);
    }

    swift_beginAccess();
    sub_10000822C(v15, v9, type metadata accessor for SettingsURLDestination);
    swift_beginAccess();
    v30 = *(a4 + 16);
    sub_1000AFC44(v9, v30, 1);

    return sub_100046460(v9, type metadata accessor for SettingsURLDestination);
  }

  return result;
}

void sub_1000AFC44(uint64_t a1, void *a2, int a3)
{
  v140 = a3;
  v148 = type metadata accessor for URLQueryItem();
  v139 = *(v148 - 8);
  __chkstk_darwin(v148);
  v6 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SettingsURLDestination(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v141 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v138 - v12;
  __chkstk_darwin(v11);
  v15 = &v138 - v14;
  v16 = swift_allocObject();
  swift_weakInit();
  sub_10000822C(a1, v15, type metadata accessor for SettingsURLDestination);
  v145 = v13;
  sub_10000822C(v15, v13, type metadata accessor for SettingsURLDestination);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_100030854(v15, v18 + v17, type metadata accessor for SettingsURLDestination);
  v146 = v18;
  *(v18 + ((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
  v144 = v16;

  v147 = a2;
  [a2 dismissViewControllerAnimated:1 completion:0];
  v142 = v7;
  v19 = *(v7 + 24);
  v143 = a1;
  v20 = *(a1 + v19);
  v153 = *(v20 + 16);
  if (v153)
  {
    v21 = 0;
    v152 = v20 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
    v151 = v139 + 16;
    v22 = &_swiftEmptyDictionarySingleton;
    v150 = (v139 + 8);
    v23 = v148;
    v24 = v139;
    v149 = v20;
    while (1)
    {
      if (v21 >= *(v20 + 16))
      {
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      v25 = v24;
      (*(v24 + 16))(v6, v152 + *(v24 + 72) * v21, v23);
      v15 = URLQueryItem.name.getter();
      v27 = v26;
      v28 = URLQueryItem.value.getter();
      if (!v29 || (*&aBlock = v28, *(&aBlock + 1) = v29, sub_10002EAE0(), v30 = StringProtocol.removingPercentEncoding.getter(), v32 = v31, , !v32))
      {
        v42 = sub_1000B8930(v15, v27);
        v44 = v43;

        if (v44)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v156 = v22;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1000B9964();
            v22 = v156;
          }

          v46 = v22[7] + 40 * v42;
          v47 = *(v46 + 32);
          v48 = *(v46 + 16);
          aBlock = *v46;
          v162 = v48;
          v163 = v47;
          sub_1000B9468(v42, v22);
          (*v150)(v6, v23);
        }

        else
        {
          (*v150)(v6, v23);
          v163 = 0;
          aBlock = 0u;
          v162 = 0u;
        }

        sub_1000068B0(&aBlock, &qword_10015EDD8, &qword_100116058);
        goto LABEL_5;
      }

      *&v156 = v30;
      *(&v156 + 1) = v32;
      AnyHashable.init<A>(_:)();
      v156 = aBlock;
      v157 = v162;
      v158 = v163;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v154 = v22;
      v35 = sub_1000B8930(v15, v27);
      v36 = v22[2];
      v37 = (v34 & 1) == 0;
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        goto LABEL_93;
      }

      v39 = v34;
      if (v22[3] >= v38)
      {
        if (v33)
        {
          if (v34)
          {
            goto LABEL_20;
          }
        }

        else
        {
          sub_1000B9964();
          if (v39)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        sub_1000B8D5C(v38, v33);
        v40 = sub_1000B8930(v15, v27);
        if ((v39 & 1) != (v41 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v35 = v40;
        if (v39)
        {
LABEL_20:

          v22 = v154;
          sub_1000BAD20(&v156, v154[7] + 40 * v35);
          v23 = v148;
          (*v150)(v6, v148);
          goto LABEL_5;
        }
      }

      v22 = v154;
      v154[(v35 >> 6) + 8] |= 1 << v35;
      v49 = (v22[6] + 16 * v35);
      *v49 = v15;
      v49[1] = v27;
      v50 = v22[7] + 40 * v35;
      v51 = v158;
      v52 = v157;
      *v50 = v156;
      *(v50 + 16) = v52;
      *(v50 + 32) = v51;
      v23 = v148;
      (*v150)(v6, v148);
      v53 = v22[2];
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
        goto LABEL_94;
      }

      v22[2] = v55;
LABEL_5:
      ++v21;
      v24 = v25;
      v20 = v149;
      if (v153 == v21)
      {
        goto LABEL_25;
      }
    }
  }

  v22 = &_swiftEmptyDictionarySingleton;
LABEL_25:
  LOBYTE(v156) = 1;
  AnyHashable.init<A>(_:)();
  v56 = swift_isUniquelyReferenced_nonNull_native();
  *&v156 = v22;
  sub_1000B97D4(&aBlock, 0x6574616D696E61, 0xE700000000000000, v56);
  v57 = v156;
  sub_10000822C(v143, v141, type metadata accessor for SettingsURLDestination);
  sub_100018684(&qword_10015EDE0, type metadata accessor for SettingsURLDestination, &unk_100118778);
  AnyHashable.init<A>(_:)();
  v58 = swift_isUniquelyReferenced_nonNull_native();
  *&v156 = v57;
  sub_1000B97D4(&aBlock, 0xD000000000000021, 0x8000000100124380, v58);
  v15 = v156;
  v59 = &off_10015A000;
  v22 = v147;
  if (*(v156 + 16) && (v60 = sub_1000B8930(1752457584, 0xE400000000000000), (v61 & 1) != 0) && (sub_1000069D8(*(v15 + 7) + 40 * v60, &aBlock), (swift_dynamicCast() & 1) != 0))
  {
    v62 = v155;
    *&v156 = v154;
    if (!v155)
    {
      goto LABEL_62;
    }
  }

  else
  {
    if (!*(v15 + 2))
    {
      goto LABEL_62;
    }

    v63 = sub_1000B8930(1953460082, 0xE400000000000000);
    if ((v64 & 1) == 0)
    {
      goto LABEL_62;
    }

    sub_1000069D8(*(v15 + 7) + 40 * v63, &aBlock);
    if (!swift_dynamicCast())
    {
      v156 = 0uLL;
      goto LABEL_62;
    }

    v62 = *(&v156 + 1);
    if (!*(&v156 + 1))
    {
      goto LABEL_62;
    }
  }

  *&aBlock = v156;
  *(&aBlock + 1) = v62;
  *&v156 = 47;
  *(&v156 + 1) = 0xE100000000000000;
  sub_10002EAE0();
  v65 = StringProtocol.components<A>(separatedBy:)();

  if (!v65[2])
  {
LABEL_42:

    goto LABEL_62;
  }

  v67 = v65[4];
  v66 = v65[5];

  *&aBlock = v67;
  *(&aBlock + 1) = v66;
  *&v156 = 35;
  *(&v156 + 1) = 0xE100000000000000;
  if (!*(StringProtocol.components<A>(separatedBy:)() + 16))
  {

    goto LABEL_42;
  }

  LOBYTE(v154) = 1;
  if ([v22 respondsToSelector:"prepareHandlingURLForSpecifierID:resourceDictionary:animatePush:withCompletion:"])
  {
    v153 = sub_1000B2C98(v15);
    v68 = String._bridgeToObjectiveC()();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v163 = sub_1000BAC94;
    v164 = v146;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v162 = sub_10000411C;
    *(&v162 + 1) = &unk_100150668;
    v70 = v22;
    v71 = _Block_copy(&aBlock);
    v59 = &off_10015A000;

    v72 = [v70 prepareHandlingURLForSpecifierID:v68 resourceDictionary:isa animatePush:&v154 withCompletion:v71];
    _Block_release(v71);
  }

  else
  {

    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_10000659C(v73, qword_100169658);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v72 = 2;
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "controllerToHandleURL doesn't respond to prepareHandlingURL", v76, 2u);
    }

    else
    {

      v72 = 2;
    }
  }

  *&aBlock = v67;
  *(&aBlock + 1) = v66;
  *&v156 = 35;
  *(&v156 + 1) = 0xE100000000000000;
  v77 = StringProtocol.components<A>(separatedBy:)();

  v78 = *(v77 + 16);
  if (v78)
  {
    v79 = (v77 + 16 + 16 * v78);
    v81 = *v79;
    v80 = v79[1];

    if (v59[340] != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    sub_10000659C(v82, qword_100169658);

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *&aBlock = v86;
      *v85 = 136315138;
      *(v85 + 4) = sub_100025CF0(v81, v80, &aBlock);
      _os_log_impl(&_mh_execute_header, v83, v84, "controllerToHandleURL handling offset target %s", v85, 0xCu);
      sub_10000665C(v86);
    }

    v22 = v147;
    v159 = &OBJC_PROTOCOL___PSViewControllerOffsetProtocol;
    v87 = swift_dynamicCastObjCProtocolConditional();
    if (v87)
    {
      v88 = v87;
      v89 = v22;
      v90 = String._bridgeToObjectiveC()();
      [v88 setDesiredVerticalContentOffsetItemNamed:v90];
    }

    if ([v22 respondsToSelector:"highlightSpecifierWithID:"])
    {
      v91 = String._bridgeToObjectiveC()();
      [v22 highlightSpecifierWithID:v91];

      if (v72 == 2)
      {
        goto LABEL_62;
      }
    }

    else
    {

      if (v72 == 2)
      {
        goto LABEL_62;
      }
    }
  }

  else
  {

    v22 = v147;
    if (v72 == 2)
    {
      goto LABEL_62;
    }
  }

  if ((v72 & 1) == 0)
  {
    sub_100046460(v145, type metadata accessor for SettingsURLDestination);

    if (v59[340] != -1)
    {
      swift_once();
    }

    v129 = type metadata accessor for Logger();
    sub_10000659C(v129, qword_100169658);
    v130 = v22;
    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      *&aBlock = v134;
      *v133 = 136446210;
      swift_getObjectType();
      v135 = _typeName(_:qualified:)();
      v137 = sub_100025CF0(v135, v136, &aBlock);

      *(v133 + 4) = v137;
      _os_log_impl(&_mh_execute_header, v131, v132, "Instance of %{public}s deferred URL handling.", v133, 0xCu);
      sub_10000665C(v134);
    }

    return;
  }

LABEL_62:
  if (v59[340] != -1)
  {
LABEL_95:
    swift_once();
  }

  v92 = type metadata accessor for Logger();
  sub_10000659C(v92, qword_100169658);
  v93 = v22;
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *&aBlock = v97;
    *v96 = 136446210;
    swift_getObjectType();
    v98 = _typeName(_:qualified:)();
    v100 = sub_100025CF0(v98, v99, &aBlock);

    *(v96 + 4) = v100;
    _os_log_impl(&_mh_execute_header, v94, v95, "Instance of %{public}s did not defer URL handling, calling handleURL.", v96, 0xCu);
    sub_10000665C(v97);
  }

  if (*(v15 + 2) && (v101 = sub_1000B8930(1752457584, 0xE400000000000000), (v102 & 1) != 0) && (sub_1000069D8(*(v15 + 7) + 40 * v101, &aBlock), (swift_dynamicCast() & 1) != 0))
  {
    v103 = *(&v156 + 1);
    v104 = v156 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v104 = 0;
    v103 = 0xE000000000000000;
  }

  if ((v140 & 1) == 0)
  {
    sub_100046460(v145, type metadata accessor for SettingsURLDestination);

    goto LABEL_76;
  }

  v105 = HIBYTE(v103) & 0xF;
  if ((v103 & 0x2000000000000000) == 0)
  {
    v105 = v104;
  }

  if (v105)
  {
    sub_100046460(v145, type metadata accessor for SettingsURLDestination);
LABEL_76:

LABEL_77:
    v106 = v93;
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *&aBlock = v110;
      *v109 = 136315138;
      swift_getObjectType();
      v111 = _typeName(_:qualified:)();
      v113 = sub_100025CF0(v111, v112, &aBlock);

      *(v109 + 4) = v113;
      _os_log_impl(&_mh_execute_header, v107, v108, "Path is not empty, calling handleURL on '%s'.", v109, 0xCu);
      sub_10000665C(v110);
    }

    sub_1000B2C98(v15);
    v114 = Dictionary._bridgeToObjectiveC()().super.isa;

    v163 = sub_1000BAC94;
    v164 = v146;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v162 = sub_10000411C;
    *(&v162 + 1) = &unk_100150640;
    v115 = _Block_copy(&aBlock);

    [v106 handleURL:v114 withCompletion:v115];

    _Block_release(v115);

    return;
  }

  v160 = &OBJC_PROTOCOL___PSListControllerURLHandler;
  v116 = swift_dynamicCastObjCProtocolConditional();
  if (!v116)
  {

    sub_100046460(v145, type metadata accessor for SettingsURLDestination);
    goto LABEL_77;
  }

  v117 = v116;
  v118 = v93;
  v119 = Logger.logObject.getter();
  v120 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v119, v120))
  {
    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    *&aBlock = v122;
    *v121 = 136315138;
    swift_getObjectType();
    v123 = _typeName(_:qualified:)();
    v125 = sub_100025CF0(v123, v124, &aBlock);

    *(v121 + 4) = v125;
    _os_log_impl(&_mh_execute_header, v119, v120, "Reusing existing controller '%s' for handling URL with empty remaining path.", v121, 0xCu);
    sub_10000665C(v122);
  }

  if ([v117 respondsToSelector:"handleResourceDictionaryWhenAlreadyPresented:"])
  {
    v126 = v118;
    sub_1000B2C98(v15);
    v127 = Dictionary._bridgeToObjectiveC()().super.isa;
    [v117 handleResourceDictionaryWhenAlreadyPresented:v127];
  }

  v128 = v145;
  sub_1000B295C(v145, v144);

  sub_100046460(v128, type metadata accessor for SettingsURLDestination);
}

uint64_t sub_1000B10C0(uint64_t a1, Swift::Int a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000659C(v4, qword_100169658);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 141558275;
      *(v7 + 4) = 1752392040;
      *(v7 + 12) = 2049;
      *(v7 + 14) = a2;
      _os_log_impl(&_mh_execute_header, v5, v6, "Popping %{private,mask.hash}ld from stack.", v7, 0x16u);
    }

    swift_getKeyPath();
    sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    NavigationPath.removeLast(_:)(a2);
    swift_endAccess();
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  return result;
}

uint64_t sub_1000B1308(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v52 = a5;
  v53 = a3;
  v7 = type metadata accessor for SettingsURLDestination(0);
  v51 = *(v7 - 8);
  v8 = *(v51 + 64);
  __chkstk_darwin(v7 - 8);
  v55 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v9 - 8);
  v56 = &v49[-v10];
  v11 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
  __chkstk_darwin(v11);
  v13 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for SettingsAppDetailContent(0);
  v15 = __chkstk_darwin(v14);
  v17 = &v49[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v15);
  v20 = &v49[-v19];
  __chkstk_darwin(v18);
  v22 = &v49[-v21];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = result;
    v50 = a4;
    v54 = a2;
    sub_10000822C(a2, v22, type metadata accessor for SettingsAppDetailContent);
    v25 = v24 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
    swift_beginAccess();
    sub_10000822C(v25, v20, type metadata accessor for SettingsAppDetailContent);
    v26 = sub_1000BAABC(v20, v22);
    sub_100046460(v20, type metadata accessor for SettingsAppDetailContent);
    if (v26)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&v49[-16] = v24;
      *&v49[-8] = v22;
      v57[0] = v24;
      sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      sub_10000822C(v22, v17, type metadata accessor for SettingsAppDetailContent);
      swift_beginAccess();
      sub_1000BABF8(v17, v25);
      swift_endAccess();
      swift_getKeyPath();
      v57[0] = v24;
      sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v25 + 32) <= 2u)
      {
        sub_1000A8068();
      }

      sub_100046460(v17, type metadata accessor for SettingsAppDetailContent);
    }

    v28 = v54;
    sub_100046460(v22, type metadata accessor for SettingsAppDetailContent);
    sub_10000822C(v28 + *(v14 + 20), v13, type metadata accessor for SettingsAppDetailContent.ContentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v54 = *&v13[*(sub_10004DED0(&unk_10015E300, &unk_100115600) + 48)];
        v35 = type metadata accessor for TaskPriority();
        (*(*(v35 - 8) + 56))(v56, 1, 1, v35);
        v36 = swift_allocObject();
        swift_weakInit();
        sub_10000822C(v53, v55, type metadata accessor for SettingsURLDestination);
        type metadata accessor for MainActor();

        v37 = v52;
        sub_10002698C(v52, v57);
        v38 = static MainActor.shared.getter();
        v39 = (*(v51 + 80) + 40) & ~*(v51 + 80);
        v40 = swift_allocObject();
        v40[2] = v38;
        v40[3] = &protocol witness table for MainActor;
        v40[4] = v36;
        sub_100030854(v55, v40 + v39, type metadata accessor for SettingsURLDestination);
        v41 = v40 + ((v39 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v41 = v54;
        v41[8] = v50 & 1;
        v42 = v40 + ((v39 + v8 + 23) & 0xFFFFFFFFFFFFFFF8);
        v42[32] = *(v37 + 32);
        v43 = *(v37 + 16);
        *v42 = *v37;
        *(v42 + 1) = v43;

        sub_100094AF4(0, 0, v56, &unk_1001160E0, v40);

        v44 = type metadata accessor for SettingsPaneRecipe();
        return (*(*(v44 - 8) + 8))(v13, v44);
      }

      if (qword_10015AAA0 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_10000659C(v47, qword_100169658);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v31, v32))
      {
        goto LABEL_25;
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "Processing a URL for an empty content state!";
    }

    else if (EnumCaseMultiPayload)
    {
      v57[3] = &type metadata for SettingsAppFeatureFlags;
      v57[4] = sub_10000631C();
      LOBYTE(v57[0]) = 6;
      v45 = isFeatureEnabled(_:)();
      sub_10000665C(v57);
      if ((v45 & 1) == 0)
      {
        v48 = PreferencesControllerRepresentableModel.makeViewControllerIfNeeded()();
        sub_1000AFC44(v53, v48, (v50 & 1) == 0);
      }

      if (qword_10015AAA0 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_10000659C(v46, qword_100169658);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v31, v32))
      {
LABEL_25:
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "PSController URL handling is no longer supported in this app.";
    }

    else
    {
      sub_100046460(v13, type metadata accessor for SettingsAppDetailContent.ContentType);
      if (qword_10015AAA0 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_10000659C(v30, qword_100169658);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v31, v32))
      {
        goto LABEL_25;
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "Processing a URL for opaque view controller!";
    }

    _os_log_impl(&_mh_execute_header, v31, v32, v34, v33, 2u);

    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1000B1C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 168) = a7;
  *(v8 + 56) = a6;
  *(v8 + 64) = a8;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  v9 = type metadata accessor for AnimationCompletionCriteria();
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();
  v10 = type metadata accessor for NavigationPath();
  *(v8 + 96) = v10;
  *(v8 + 104) = *(v10 - 8);
  *(v8 + 112) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 120) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 128) = v12;
  *(v8 + 136) = v11;

  return _swift_task_switch(sub_1000B1D6C, v12, v11);
}

uint64_t sub_1000B1D6C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    type metadata accessor for SettingsExperienceCoordinationManager();
    v0[19] = static SettingsExperienceCoordinationManager.shared.getter();
    v8 = (&async function pointer to dispatch thunk of SettingsExperienceCoordinationManager.openURL(_:startingFrom:) + async function pointer to dispatch thunk of SettingsExperienceCoordinationManager.openURL(_:startingFrom:));
    v2 = swift_task_alloc();
    v0[20] = v2;
    *v2 = v0;
    v2[1] = sub_1000B1EA4;
    v3 = v0[14];
    v4 = v0[6];
    v5 = v0[7];

    return v8(v3, v4, v5);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1000B1EA4()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_1000B1FE8, v3, v2);
}

uint64_t sub_1000B1FE8()
{
  v1 = *(v0 + 112);
  v11 = *(v0 + 104);
  v12 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v10 = *(v0 + 72);
  v5 = *(v0 + 168);

  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v1;
  swift_allocObject();
  swift_weakInit();

  static Animation.default.getter();
  static AnimationCompletionCriteria.logicallyComplete.getter();
  withAnimation<A>(_:completionCriteria:_:completion:)();
  (*(v2 + 8))(v3, v10);

  (*(v11 + 8))(v1, v12);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000B21B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v7 = *a3;
  v27 = *(a3 + 16);
  v28 = v7;
  v8 = *(a3 + 32);
  v9 = type metadata accessor for NavigationPath();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    if (a2)
    {
      sub_100010CD0();
      v30[1] = v27;
      v30[0] = v28;
      v31 = v8;
      sub_10002698C(a3, v29);
      sub_1000954AC(v30);
    }

    *&v28 = v4;
    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000659C(v18, qword_100169658);
    v19 = *(v10 + 16);
    v19(v15, v32, v9);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v25 = swift_slowAlloc();
      *v25 = 67109120;
      swift_getKeyPath();
      *&v27 = v19;
      v26 = v21;
      v29[0] = v17;
      sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v22 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
      swift_beginAccess();
      (v27)(v13, v17 + v22, v9);
      LOBYTE(v22) = static NavigationPath.== infix(_:_:)();
      v23 = *(v10 + 8);
      v23(v13, v9);
      v23(v15, v9);
      v19 = v27;
      v24 = v25;
      *(v25 + 1) = v22 & 1;

      _os_log_impl(&_mh_execute_header, v20, v26, "Is new NavigationPath equal to old NavigationPath? %{BOOL}d", v24, 8u);
    }

    else
    {
      (*(v10 + 8))(v15, v9);
    }

    v19(v13, v32, v9);
    sub_1000A7C70(v13);
  }

  return result;
}

uint64_t sub_1000B255C(uint64_t a1)
{
  v1 = sub_10004DED0(&qword_10015ED78, &qword_100115FB8);
  __chkstk_darwin(v1 - 8);
  v3 = &v8[-v2];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for SettingsURLDestination(0);
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_currentlyInProgressURLDestination;
    swift_beginAccess();
    sub_10003BBC0(v3, v5 + v7, &qword_10015ED78, &qword_100115FB8);
    swift_endAccess();
    sub_1000A8CB0();

    return sub_1000068B0(v3, &qword_10015ED78, &qword_100115FB8);
  }

  return result;
}

uint64_t sub_1000B26A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationPath();
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SettingsURLDestination(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000659C(v11, qword_100169658);
    sub_10000822C(a2, v9, type metadata accessor for SettingsURLDestination);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      v16 = sub_1000F41C0();
      v20 = v2;
      v18 = v17;
      sub_100046460(v9, type metadata accessor for SettingsURLDestination);
      v19 = sub_100025CF0(v16, v18, &v21);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Resetting Navigation Path for URL navigation %{private,mask.hash}s.", v14, 0x16u);
      sub_10000665C(v15);
    }

    else
    {

      sub_100046460(v9, type metadata accessor for SettingsURLDestination);
    }

    NavigationPath.init()();
    sub_1000A7C70(v6);
  }

  return result;
}

uint64_t sub_1000B295C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004DED0(&qword_10015ED78, &qword_100115FB8);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for SettingsURLDestination(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000659C(v10, qword_100169658);
  sub_10000822C(a1, v9, type metadata accessor for SettingsURLDestination);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = v6;
    v14 = v13;
    v15 = swift_slowAlloc();
    v25[0] = v15;
    *v14 = 136315138;
    v16 = URL.absoluteString.getter();
    v18 = v17;
    sub_100046460(v9, type metadata accessor for SettingsURLDestination);
    v19 = sub_100025CF0(v16, v18, v25);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "Application level completion handler for url '%s' called.", v14, 0xCu);
    sub_10000665C(v15);

    v6 = v24;
  }

  else
  {

    sub_100046460(v9, type metadata accessor for SettingsURLDestination);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    (*(v7 + 56))(v5, 1, 1, v6);
    v22 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_currentlyInProgressURLDestination;
    swift_beginAccess();
    sub_10003BBC0(v5, v21 + v22, &qword_10015ED78, &qword_100115FB8);
    swift_endAccess();
    sub_1000A8CB0();

    return sub_1000068B0(v5, &qword_10015ED78, &qword_100115FB8);
  }

  return result;
}

uint64_t sub_1000B2C98(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10004DED0(&qword_10015C8F0, &qword_100112B58);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000069D8(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_10001EFEC(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_10001EFEC(v35, v24);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_10001EFEC(v24, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000B2F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  type metadata accessor for MainActor();
  v8[10] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[11] = v10;
  v8[12] = v9;

  return _swift_task_switch(sub_1000B3024, v10, v9);
}

uint64_t sub_1000B3024()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v0[14] = sub_100010CD0();
    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v2[1] = sub_1000B312C;
    v3 = v0[8];
    v4 = v0[9];
    v6 = v0[6];
    v5 = v0[7];

    return sub_10009EC24(v6, v5, v3, v4);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1000B312C()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_1000B3270, v3, v2);
}

uint64_t sub_1000B3270()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000B32DC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for EngagementLinkData(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v36 - v10;
  v12 = sub_10004DED0(&qword_10015EB40, &qword_1001161A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v36 - v13;
  if (([a1 integerValue] | 2) == 2)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v15 = sub_100010CD0();

      sub_10000822C(a3, v14, type metadata accessor for EngagementLinkData);
      (*(v6 + 56))(v14, 0, 1, v5);
      v16 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingEngagementLinkData;
      swift_beginAccess();
      sub_1000BB1A0(v14, v15 + v16, &qword_10015EB40, &qword_1001161A0);
      swift_endAccess();
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100010CD0();

      sub_1000951B0(7);
    }

    if (qword_10015AAB8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000659C(v17, qword_1001696A0);
    sub_10000822C(a3, v11, type metadata accessor for EngagementLinkData);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v37 = v21;
      *v20 = 141558275;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      v22 = URL.absoluteString.getter();
      v24 = v23;
      sub_100046460(v11, type metadata accessor for EngagementLinkData);
      v25 = sub_100025CF0(v22, v24, &v37);

      *(v20 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Did update pending engagement link data for URL '%{private,mask.hash}s'.", v20, 0x16u);
      sub_10000665C(v21);

      return;
    }

    v35 = v11;
  }

  else
  {
    if (qword_10015AAB8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000659C(v26, qword_1001696A0);
    sub_10000822C(a3, v9, type metadata accessor for EngagementLinkData);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38[0] = v30;
      *v29 = 141558275;
      *(v29 + 4) = 1752392040;
      *(v29 + 12) = 2081;
      v31 = URL.absoluteString.getter();
      v33 = v32;
      sub_100046460(v9, type metadata accessor for EngagementLinkData);
      v34 = sub_100025CF0(v31, v33, v38);

      *(v29 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Unsupported URL type for URL '%{private,mask.hash}s'.", v29, 0x16u);
      sub_10000665C(v30);

      return;
    }

    v35 = v9;
  }

  sub_100046460(v35, type metadata accessor for EngagementLinkData);
}

void sub_1000B384C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1000B38B4(void *a1)
{
  if (qword_10015AA98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000659C(v1, qword_100169640);

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v3 = 136315394;
    v4 = _typeName(_:qualified:)();
    v6 = sub_100025CF0(v4, v5, &v8);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_100025CF0(0xD00000000000001FLL, 0x8000000100124590, &v8);
    _os_log_impl(&_mh_execute_header, oslog, v2, "…Complete (%s.%s)", v3, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000B3A7C(uint64_t a1, char **a2)
{
  v53 = a2;
  v3 = sub_10004DED0(&unk_10015EFE0, &qword_100116268);
  __chkstk_darwin(v3 - 8);
  v49 = &v43 - v4;
  v5 = type metadata accessor for SettingsAnyPlatformViewControllerRecipe();
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin(v5);
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004DED0(&qword_10015EEE0, &qword_1001160B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v43 - v8;
  v10 = type metadata accessor for PreferencesControllerRecipe();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004DED0(&qword_10015EF00, &qword_1001160C8);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v43 - v16;
  v18 = type metadata accessor for NavigationPath.CollectionProxy();
  (*(*(v18 - 8) + 16))(v17, a1, v18);
  v19 = *(v15 + 44);
  sub_100018684(&qword_10015EF08, &type metadata accessor for NavigationPath.CollectionProxy, &protocol conformance descriptor for NavigationPath.CollectionProxy);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*&v17[v19] != v56[0])
  {
    v21 = (v11 + 56);
    v46 = (v11 + 32);
    v45 = (v11 + 8);
    v47 = (v51 + 56);
    v44 = (v51 + 32);
    v43 = (v51 + 8);
    v50 = (v11 + 56);
    v51 = v13;
    while (1)
    {
      v22 = dispatch thunk of Collection.subscript.read();
      sub_10000B270(v23, v57);
      v22(v56, 0);
      dispatch thunk of Collection.formIndex(after:)();
      sub_100046A2C(v57, v56);
      sub_10000B270(v56, v55);
      sub_10004DED0(&qword_10015EF10, &qword_1001160D0);
      v24 = swift_dynamicCast();
      v25 = *v21;
      if ((v24 & 1) == 0)
      {
        break;
      }

      v25(v9, 0, 1, v10);
      (*v46)(v13, v9, v10);
      v26 = PreferencesControllerRecipe.viewControllerIfLoaded.getter();
      v27 = v52;
      if (!v26)
      {
        (*v45)(v13, v10);
LABEL_9:
        sub_10000B270(v56, v55);
        v30 = v49;
        v31 = swift_dynamicCast();
        v32 = *v47;
        v29 = 1;
        if (v31)
        {
          v32(v30, 0, 1, v27);
          (*v44)(v48, v30, v27);
          v33 = SettingsAnyPlatformViewControllerRecipe.viewController.getter();
          if (v33)
          {
            v34 = v33;
            v54 = &OBJC_PROTOCOL___PSStateRestoration;
            v29 = 1;
            v35 = swift_dynamicCastObjCProtocolConditional();
            if (v35)
            {
              v29 = [v35 canBeShownFromSuspendedState];
            }
          }

          (*v43)(v48, v27);
        }

        else
        {
          v32(v30, 1, 1, v27);
          sub_1000068B0(v30, &unk_10015EFE0, &qword_100116268);
        }

        goto LABEL_16;
      }

      v28 = v26;
      v29 = [v26 canBeShownFromSuspendedState];

      (*v45)(v13, v10);
LABEL_16:
      v36 = v53;
      v37 = *v53;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v36 = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = sub_1000C51E4(0, *(v37 + 2) + 1, 1, v37);
        *v53 = v37;
      }

      v40 = *(v37 + 2);
      v39 = *(v37 + 3);
      if (v40 >= v39 >> 1)
      {
        v42 = sub_1000C51E4((v39 > 1), v40 + 1, 1, v37);
        *v53 = v42;
      }

      sub_10000665C(v56);
      v41 = *v53;
      *(v41 + 2) = v40 + 1;
      v41[v40 + 32] = v29;
      dispatch thunk of Collection.endIndex.getter();
      v21 = v50;
      v13 = v51;
      if (*&v17[v19] == v56[0])
      {
        return sub_1000068B0(v17, &qword_10015EF00, &qword_1001160C8);
      }
    }

    v25(v9, 1, 1, v10);
    sub_1000068B0(v9, &qword_10015EEE0, &qword_1001160B0);
    v27 = v52;
    goto LABEL_9;
  }

  return sub_1000068B0(v17, &qword_10015EF00, &qword_1001160C8);
}

uint64_t sub_1000B4114()
{
  v0 = type metadata accessor for NavigationPath();
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  NavigationPath.init()();
  return sub_1000A7C70(v2);
}

uint64_t sub_1000B419C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NavigationPath();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  swift_beginAccess();
  v10 = *(v4 + 16);
  v10(v9, a2, v3);
  v10(v7, v9, v3);
  sub_1000A7C70(v7);
  return (*(v4 + 8))(v9, v3);
}

void sub_1000B42F8(void *a1)
{
  if (qword_10015AA98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000659C(v1, qword_100169640);

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v3 = 136315394;
    v4 = _typeName(_:qualified:)();
    v6 = sub_100025CF0(v4, v5, &v8);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_100025CF0(0xD00000000000001DLL, 0x80000001001245D0, &v8);
    _os_log_impl(&_mh_execute_header, oslog, v2, "…Complete (%s.%s)", v3, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_1000B44D4(void *a1)
{
  if (qword_10015AA98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000659C(v1, qword_100169640);

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v3 = 136315394;
    v4 = _typeName(_:qualified:)();
    v6 = sub_100025CF0(v4, v5, &v8);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_100025CF0(0xD000000000000020, 0x80000001001245F0, &v8);
    _os_log_impl(&_mh_execute_header, oslog, v2, "…Complete (%s.%s)", v3, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000B469C(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015EEE0, &qword_1001160B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v35 - v3;
  v5 = type metadata accessor for PreferencesControllerRecipe();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004DED0(&qword_10015EF00, &qword_1001160C8);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  v13 = type metadata accessor for NavigationPath.CollectionProxy();
  (*(*(v13 - 8) + 16))(v12, a1, v13);
  v14 = *(v10 + 44);
  sub_100018684(&qword_10015EF08, &type metadata accessor for NavigationPath.CollectionProxy, &protocol conformance descriptor for NavigationPath.CollectionProxy);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*&v12[v14] != v42[0])
  {
    v17 = (v6 + 56);
    v41 = (v6 + 8);
    v18 = (v6 + 32);
    *&v15 = 141558275;
    v35 = v15;
    v40 = v8;
    v37 = v17;
    v38 = v18;
    do
    {
      v19 = dispatch thunk of Collection.subscript.read();
      sub_10000B270(v20, v43);
      v19(v42, 0);
      dispatch thunk of Collection.formIndex(after:)();
      sub_100046A2C(v43, v42);
      sub_10004DED0(&qword_10015EF10, &qword_1001160D0);
      v21 = swift_dynamicCast();
      v22 = *v17;
      if (v21)
      {
        v22(v4, 0, 1, v5);
        (*v18)(v8, v4, v5);
        v23 = PreferencesControllerRecipe.viewControllerIfLoaded.getter();
        if (v23)
        {
          v24 = v23;
          objc_opt_self();
          v25 = swift_dynamicCastObjCClass();
          if (v25)
          {
            v26 = v25;
            if ([v25 shouldReloadSpecifiersOnResume])
            {
              if (qword_10015AA80 != -1)
              {
                swift_once();
              }

              v27 = type metadata accessor for Logger();
              sub_10000659C(v27, qword_1001695F8);
              v28 = v24;
              v29 = Logger.logObject.getter();
              v30 = static os_log_type_t.default.getter();
              v39 = v28;

              v31 = v29;
              if (os_log_type_enabled(v29, v30))
              {
                v32 = swift_slowAlloc();
                v33 = swift_slowAlloc();
                v36 = v33;
                *v32 = v35;
                *(v32 + 4) = 1752392040;
                *(v32 + 12) = 2113;
                *(v32 + 14) = v26;
                *v33 = v26;
                v34 = v39;
                _os_log_impl(&_mh_execute_header, v31, v30, "Reloading specifiers on resume for %{private,mask.hash}@.", v32, 0x16u);
                sub_1000068B0(v36, &unk_10015F9C0, &unk_100115230);
              }

              [v26 reloadSpecifiers];
              v8 = v40;
              (*v41)(v40, v5);
              v17 = v37;
              v18 = v38;
            }

            else
            {
              v8 = v40;
              (*v41)(v40, v5);
            }

            goto LABEL_5;
          }

          v8 = v40;
        }

        (*v41)(v8, v5);
      }

      else
      {
        v22(v4, 1, 1, v5);
        sub_1000068B0(v4, &qword_10015EEE0, &qword_1001160B0);
      }

LABEL_5:
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v12[v14] != v42[0]);
  }

  return sub_1000068B0(v12, &qword_10015EF00, &qword_1001160C8);
}

void sub_1000B4C08(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  v130 = a1;
  v7 = *(a3 + 1);
  v129 = *a3;
  v128 = v7;
  v8 = *(a3 + 3);
  v127 = *(a3 + 2);
  v126 = v8;
  v125 = *(a3 + 32);
  v124 = type metadata accessor for SettingsPaneRecipe();
  v123 = *(v124 - 8);
  v9 = __chkstk_darwin(v124);
  v118 = v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v119 = v116 - v11;
  v137 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
  v12 = __chkstk_darwin(v137);
  v14 = v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v131 = v116 - v16;
  __chkstk_darwin(v15);
  v139 = (v116 - v17);
  v18 = type metadata accessor for NavigationPath();
  __chkstk_darwin(v18 - 8);
  v136 = v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for SettingsAppDetailContent(0);
  v20 = __chkstk_darwin(v145);
  v121 = v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v120 = v116 - v23;
  v24 = __chkstk_darwin(v22);
  v122 = v116 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = v116 - v27;
  v29 = __chkstk_darwin(v26);
  v141 = v116 - v30;
  v31 = __chkstk_darwin(v29);
  v138 = v116 - v32;
  __chkstk_darwin(v31);
  v34 = v116 - v33;
  v134 = type metadata accessor for SettingsURLDestination.Action(0);
  __chkstk_darwin(v134);
  v135 = v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10004DED0(&qword_10015ED78, &qword_100115FB8);
  __chkstk_darwin(v36 - 8);
  v144 = v116 - v37;
  v143 = type metadata accessor for SettingsURLDestination(0);
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v133 = v116 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  v40 = sub_10000659C(v39, qword_100169658);

  sub_100059CA0(a2, &v154, &qword_10015E690, &qword_100115788);
  sub_100059CA0(a3, &v154, &qword_10015E690, &qword_100115788);
  v146 = a2;
  v116[1] = v40;
  v41 = Logger.logObject.getter();
  v42 = v146;
  v43 = v41;
  v44 = static os_log_type_t.info.getter();

  sub_1000068B0(v42, &qword_10015E690, &qword_100115788);
  sub_1000068B0(a3, &qword_10015E690, &qword_100115788);
  v132 = v44;
  v45 = os_log_type_enabled(v43, v44);
  v140 = v34;
  v117 = v28;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v116[0] = swift_slowAlloc();
    *&v148[0] = v116[0];
    *v46 = 136315906;
    v47 = _typeName(_:qualified:)();
    v49 = sub_100025CF0(v47, v48, v148);

    *(v46 + 4) = v49;
    *(v46 + 12) = 2080;
    *(v46 + 14) = sub_100025CF0(0xD000000000000037, 0x8000000100124340, v148);
    *(v46 + 22) = 2082;
    v50 = *(v42 + 16);
    v154 = *v42;
    v155 = v50;
    v156 = *(v42 + 32);
    sub_100059CA0(v42, &v150, &qword_10015E690, &qword_100115788);
    sub_10004DED0(&qword_10015E690, &qword_100115788);
    v51 = String.init<A>(describing:)();
    v53 = sub_100025CF0(v51, v52, v148);

    *(v46 + 24) = v53;
    *(v46 + 32) = 2082;
    v54 = a3[1];
    v154 = *a3;
    v155 = v54;
    v156 = *(a3 + 32);
    v34 = v140;
    sub_100059CA0(a3, &v150, &qword_10015E690, &qword_100115788);
    v55 = String.init<A>(describing:)();
    v57 = sub_100025CF0(v55, v56, v148);

    *(v46 + 34) = v57;
    _os_log_impl(&_mh_execute_header, v43, v132, "(%s.%s): '%{public}s' → '%{public}s'", v46, 0x2Au);
    swift_arrayDestroy();
  }

  v58 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_currentlyInProgressURLDestination;
  swift_beginAccess();
  v59 = v4 + v58;
  v60 = v144;
  sub_100059CA0(v59, v144, &qword_10015ED78, &qword_100115FB8);
  v61 = v143;
  if ((*(v142 + 48))(v60, 1, v143) == 1)
  {
    sub_1000068B0(v60, &qword_10015ED78, &qword_100115FB8);
  }

  else
  {
    v62 = v133;
    sub_100030854(v60, v133, type metadata accessor for SettingsURLDestination);
    v63 = v135;
    sub_10000822C(v62 + *(v61 + 20), v135, type metadata accessor for SettingsURLDestination.Action);
    sub_100046460(v62, type metadata accessor for SettingsURLDestination);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v64 = *v63;
      v65 = *(v63 + 8);
      v66 = *(v63 + 16);
      v67 = *(v63 + 24);
      v68 = *(v63 + 32);
      if (v68 > 2)
      {
        sub_10002C5C0(v64, v65, v66, v67, v68);

        v110 = Logger.logObject.getter();
        v111 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          *&v154 = swift_slowAlloc();
          *v112 = 136315394;
          v113 = _typeName(_:qualified:)();
          v115 = sub_100025CF0(v113, v114, &v154);

          *(v112 + 4) = v115;
          *(v112 + 12) = 2080;
          *(v112 + 14) = sub_100025CF0(0xD000000000000037, 0x8000000100124340, &v154);
          _os_log_impl(&_mh_execute_header, v110, v111, "(%s.%s): URL in progress, trusting URL handling to set the detail content and NavigationPath.", v112, 0x16u);
          swift_arrayDestroy();
        }

        return;
      }

      sub_10002C5C0(v64, v65, v66, v67, v68);
    }

    else
    {
      sub_100046460(v63, type metadata accessor for SettingsURLDestination.Action);
    }
  }

  swift_getKeyPath();
  v69 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel___observationRegistrar;
  *&v154 = v4;
  v144 = sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v70 = v4 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
  swift_beginAccess();
  sub_10000822C(v70, v34, type metadata accessor for SettingsAppDetailContent);
  v71 = *(a3 + 32);
  if (v71 != 255)
  {
    v72 = *a3;
    v73 = *(a3 + 1);
    v74 = *(a3 + 2);
    v75 = *(a3 + 3);
    v150.i64[0] = v72;
    v150.i64[1] = v73;
    v151 = v74;
    v152 = v75;
    v153 = v71;
    v76 = *(v146 + 32);
    if (v76 != 255)
    {
      v77 = *(v146 + 16);
      v148[0] = *v146;
      v148[1] = v77;
      v149 = v76;
      if (sub_10002BB48(v148, &v150))
      {
        v78 = v136;
        NavigationPath.init()();
        sub_1000A7C70(v78);
LABEL_30:
        sub_100046460(v34, type metadata accessor for SettingsAppDetailContent);
        return;
      }
    }

    v143 = v69;
    sub_100029920(v129, v128, v127, v126, v125);
    v79 = v136;
    NavigationPath.init()();
    v146 = v4;
    sub_1000A7C70(v79);
    v80 = v139;
    sub_10008F610(v130, v139);
    v81 = v138;
    v136 = *(v145 + 20);
    sub_10000822C(v80, v138 + v136, type metadata accessor for SettingsAppDetailContent.ContentType);
    *v81 = v72;
    *(v81 + 8) = v73;
    *(v81 + 16) = v74;
    *(v81 + 24) = v75;
    *(v81 + 32) = v71;
    v142 = v72;
    v82 = v141;
    sub_10000822C(v70, v141, type metadata accessor for SettingsAppDetailContent);
    v83 = *v82;
    v84 = *(v82 + 8);
    v86 = *(v82 + 16);
    v85 = *(v82 + 24);
    v87 = *(v82 + 32);
    if (v87 == 255)
    {
      sub_10002698C(&v150, &v154);
      sub_100032660(v83, v84, v86, v85, 0xFFu);
      sub_100032660(v142, v73, v74, v75, v71);
      v89 = v145;
      v90 = v138;
    }

    else
    {
      *&v154 = *v82;
      *(&v154 + 1) = v84;
      *&v155 = v86;
      *(&v155 + 1) = v85;
      v156 = v87;
      v88 = sub_10002BB48(&v154, &v150);
      v89 = v145;
      v90 = v138;
      if ((v88 & 1) != 0 && sub_100032BF8(v141 + *(v145 + 20), v138 + v136))
      {
        sub_100046460(v141, type metadata accessor for SettingsAppDetailContent);
        v91 = v117;
        sub_10000822C(v90, v117, type metadata accessor for SettingsAppDetailContent);
        swift_beginAccess();
        sub_1000BABF8(v91, v70);
        swift_endAccess();
        swift_getKeyPath();
        v147 = v146;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v92 = v140;
        if (*(v70 + 32) <= 2u)
        {
          sub_1000A8068();
        }

        sub_100046460(v91, type metadata accessor for SettingsAppDetailContent);
        goto LABEL_34;
      }
    }

    sub_100046460(v141, type metadata accessor for SettingsAppDetailContent);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v105 = v146;
    v116[-2] = v146;
    v116[-1] = v90;
    v147 = v105;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v92 = v140;
LABEL_34:
    sub_100046460(v90, type metadata accessor for SettingsAppDetailContent);
    v106 = v131;
    sub_10000822C(v92 + *(v89 + 20), v131, type metadata accessor for SettingsAppDetailContent.ContentType);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_10004DED0(&unk_10015E300, &unk_100115600);

      v107 = v123;
      v108 = v119;
      v109 = v124;
      (*(v123 + 32))(v119, v106, v124);
      type metadata accessor for SettingsExperienceCoordinationManager();
      static SettingsExperienceCoordinationManager.shared.getter();
      dispatch thunk of SettingsExperienceCoordinationManager.removeCoordinator(for:)();

      (*(v107 + 8))(v108, v109);
      sub_100046460(v139, type metadata accessor for SettingsAppDetailContent.ContentType);
      sub_100046460(v92, type metadata accessor for SettingsAppDetailContent);
    }

    else
    {
      sub_100046460(v139, type metadata accessor for SettingsAppDetailContent.ContentType);
      sub_100046460(v92, type metadata accessor for SettingsAppDetailContent);
      sub_100046460(v106, type metadata accessor for SettingsAppDetailContent.ContentType);
    }

    return;
  }

  if (qword_10015AB18 != -1)
  {
    swift_once();
  }

  v93 = v145;
  v94 = sub_10000659C(v145, qword_1001697A0);
  v95 = v122;
  sub_10000822C(v94, v122, type metadata accessor for SettingsAppDetailContent);
  v96 = v120;
  sub_10000822C(v70, v120, type metadata accessor for SettingsAppDetailContent);
  v97 = sub_1000BAABC(v96, v95);
  sub_100046460(v96, type metadata accessor for SettingsAppDetailContent);
  if (v97)
  {
    v98 = swift_getKeyPath();
    __chkstk_darwin(v98);
    v116[-2] = v99;
    v116[-1] = v95;
    *&v154 = v99;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v100 = v121;
    sub_10000822C(v95, v121, type metadata accessor for SettingsAppDetailContent);
    swift_beginAccess();
    sub_1000BABF8(v100, v70);
    swift_endAccess();
    swift_getKeyPath();
    *&v154 = v4;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v70 + 32) <= 2u)
    {
      sub_1000A8068();
    }

    sub_100046460(v121, type metadata accessor for SettingsAppDetailContent);
  }

  sub_100046460(v95, type metadata accessor for SettingsAppDetailContent);
  sub_10000822C(&v34[*(v93 + 20)], v14, type metadata accessor for SettingsAppDetailContent.ContentType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_10004DED0(&unk_10015E300, &unk_100115600);

    v101 = v123;
    v102 = v118;
    v103 = v124;
    (*(v123 + 32))(v118, v14, v124);
    type metadata accessor for SettingsExperienceCoordinationManager();
    static SettingsExperienceCoordinationManager.shared.getter();
    dispatch thunk of SettingsExperienceCoordinationManager.removeCoordinator(for:)();

    (*(v101 + 8))(v102, v103);
    goto LABEL_30;
  }

  sub_100046460(v34, type metadata accessor for SettingsAppDetailContent);
  sub_100046460(v14, type metadata accessor for SettingsAppDetailContent.ContentType);
}

BOOL sub_1000B5F84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10004DED0(&qword_10015ED78, &qword_100115FB8);
  __chkstk_darwin(v4 - 8);
  v6 = &v26[-1] - v5;
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000659C(v7, qword_1001696A0);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v10 = 136315907;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100025CF0(v11, v12, v26);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100025CF0(0xD000000000000039, 0x8000000100124550, v26);
    *(v10 + 22) = 2160;
    *(v10 + 24) = 1752392040;
    *(v10 + 32) = 2081;
    v14 = Dictionary.description.getter();
    v16 = sub_100025CF0(v14, v15, v26);

    *(v10 + 34) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Start (%s.%s), resourceDictionary: '%{private,mask.hash}s'…", v10, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_pendingURLDestination;
  swift_beginAccess();
  sub_100059CA0(v1 + v17, v6, &qword_10015ED78, &qword_100115FB8);
  v18 = type metadata accessor for SettingsURLDestination(0);
  v19 = (*(*(v18 - 8) + 48))(v6, 1, v18);
  sub_1000068B0(v6, &qword_10015ED78, &qword_100115FB8);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    if (v19 == 1)
    {
      v22 = "No pending request found, should continue active URL routing.";
    }

    else
    {
      v22 = "Pending request found, should stop active URL routing.";
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, v22, v23, 2u);
  }

  sub_1000B6330(v2, a1);
  return v19 == 1;
}

void sub_1000B6330(void *a1, uint64_t a2)
{
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_1001696A0);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v4 = 136315907;
    v5 = _typeName(_:qualified:)();
    v7 = sub_100025CF0(v5, v6, &v12);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_100025CF0(0xD000000000000039, 0x8000000100124550, &v12);
    *(v4 + 22) = 2160;
    *(v4 + 24) = 1752392040;
    *(v4 + 32) = 2081;
    v8 = Dictionary.description.getter();
    v10 = sub_100025CF0(v8, v9, &v12);

    *(v4 + 34) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v3, "…Complete (%s.%s), resourceDictionary: '%{private,mask.hash}s'.", v4, 0x2Au);
    swift_arrayDestroy();
  }
}

void sub_1000B65DC(void *a1, char a2)
{
  v4 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - v5;
  v26[3] = &type metadata for SettingsAppFeatureFlags;
  v26[4] = sub_10000631C();
  LOBYTE(v26[0]) = 6;
  v7 = isFeatureEnabled(_:)();
  v8 = sub_10000665C(v26);
  if (v7)
  {
    sub_1000B690C(v8);
  }

  else
  {
    v9 = sub_1000B6A8C();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    static TaskPriority.background.getter();
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v6, 0, 1, v16);
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v17;
    v18[5] = v9;
    v18[6] = v11;
    v18[7] = v13;
    v18[8] = v15;
    sub_1000B6E4C(0, 0, v6, &unk_100116210, v18);

    sub_1000068B0(v6, &unk_10015D490, &qword_100112150);
    v22[1] = &OBJC_PROTOCOL___PSController;
    if (swift_dynamicCastObjCProtocolConditional())
    {
      v24 = type metadata accessor for PreferencesControllerRecipe();
      v25 = sub_100018684(&qword_10015EFA0, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
      sub_1000BB418(&v23);
      v19 = a1;
      PreferencesControllerRecipe.init(viewController:)();
    }

    else
    {
      v24 = type metadata accessor for SettingsAnyPlatformViewControllerRecipe();
      v25 = sub_100018684(&qword_10015EF98, &type metadata accessor for SettingsAnyPlatformViewControllerRecipe, &protocol conformance descriptor for SettingsAnyPlatformViewControllerRecipe);
      sub_1000BB418(&v23);
      v20 = a1;
      SettingsAnyPlatformViewControllerRecipe.init(_:)();
    }

    v21 = sub_100046A2C(&v23, v26);
    __chkstk_darwin(v21);
    v22[-2] = v26;
    v22[-1] = v2;
    *&v23 = 0;
    Transaction.disablesAnimations.setter();
    withTransaction<A>(_:_:)();

    sub_10000665C(v26);
  }
}

void sub_1000B690C(uint64_t a1)
{
  v1 = sub_1000B6A8C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = objc_autoreleasePoolPush();
  sub_1000B7944(v1, v3, v5, v7);
  objc_autoreleasePoolPop(v8);
  _StringGuts.grow(_:)(283);
  v9._countAndFlagsBits = 0xD000000000000105;
  v9._object = 0x80000001001243D0;
  String.append(_:)(v9);
  v10._countAndFlagsBits = v1;
  v10._object = v3;
  String.append(_:)(v10);
  v11._object = 0x80000001001244E0;
  v11._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v11);
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  String.append(_:)(v12);

  v13 = objc_allocWithZone(NSException);
  v14 = String._bridgeToObjectiveC()();

  v15 = [v13 initWithName:NSInternalInconsistencyException reason:v14 userInfo:0];

  [v15 raise];
}

uint64_t sub_1000B6A8C()
{
  v1 = v0;
  v18 = type metadata accessor for NavigationPath();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100010CD0();
  swift_getKeyPath();
  v22 = v5;
  sub_100018684(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *&v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection];
  v7 = *&v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 8];
  v8 = *&v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 16];
  v9 = *&v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 24];
  v10 = v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 32];
  sub_100031DF8(v6, v7, v8, v9, v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 32]);

  if (v10 == 255)
  {
    v17 = 0xE300000000000000;
    v11 = 7104878;
  }

  else
  {
    v22 = v6;
    v23 = v7;
    v24 = v8;
    v25 = v9;
    v26 = v10;
    v11 = sub_100026A58();
    v17 = v12;
    sub_100032660(v6, v7, v8, v9, v10);
  }

  v21 = _swiftEmptyArrayStorage;
  swift_getKeyPath();
  v20 = v0;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  v14 = v18;
  v15 = (*(v2 + 16))(v4, v1 + v13, v18);
  __chkstk_darwin(v15);
  *(&v17 - 2) = &v21;
  NavigationPath.withCollectionProxy(_:)();
  (*(v2 + 8))(v4, v14);
  if (v21[2])
  {
    v19 = v21;

    sub_10004DED0(&unk_10015FC00, &qword_100111C00);
    sub_1000525A0(&qword_10015EF80, &unk_10015FC00, &qword_100111C00, &protocol conformance descriptor for [A]);
    BidirectionalCollection<>.joined(separator:)();
    swift_bridgeObjectRelease_n();
  }

  else
  {
  }

  return v11;
}

uint64_t sub_1000B6E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a1;
  v8[6] = a4;
  return _swift_task_switch(sub_1000BBA4C, 0, 0);
}

uint64_t sub_1000B6E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100059CA0(a3, v25 - v10, &unk_10015D490, &qword_100112150);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000068B0(v11, &unk_10015D490, &qword_100112150);
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

      sub_10004DED0(&unk_10015EB30, &qword_1001161E0);
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

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10004DED0(&unk_10015EB30, &qword_1001161E0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000B7120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  NavigationPath.append<A>(_:)();
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

BOOL sub_1000B7278()
{
  v0 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v0 - 8);
  v2 = &v17[-1] - v1;
  v17[3] = &type metadata for SettingsAppFeatureFlags;
  v17[4] = sub_10000631C();
  LOBYTE(v17[0]) = 6;
  v3 = isFeatureEnabled(_:)();
  v4 = sub_10000665C(v17);
  if (v3)
  {
    sub_1000B690C(v4);
  }

  v5 = sub_1000B6A8C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  static TaskPriority.background.getter();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v2, 0, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v13;
  v14[5] = v5;
  v14[6] = v7;
  v14[7] = v9;
  v14[8] = v11;
  sub_1000B6E4C(0, 0, v2, &unk_1001161B0, v14);

  sub_1000068B0(v2, &unk_10015D490, &qword_100112150);
  return (v3 & 1) == 0;
}

uint64_t sub_1000B7430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a1;
  v8[6] = a4;
  return _swift_task_switch(sub_1000B7458, 0, 0);
}

uint64_t sub_1000B7458()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);

    v6 = objc_autoreleasePoolPush();
    sub_1000B7944(v5, v4, v3, v2);
    objc_autoreleasePoolPop(v6);
  }

  **(v0 + 40) = Strong == 0;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000B7558(uint64_t a1, char **a2)
{
  v4 = sub_10004DED0(&qword_10015EF00, &qword_1001160C8);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = v31 - v6;
  v8 = type metadata accessor for NavigationPath.CollectionProxy();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  v9 = *(v5 + 44);
  sub_100018684(&qword_10015EF08, &type metadata accessor for NavigationPath.CollectionProxy, &protocol conformance descriptor for NavigationPath.CollectionProxy);
  dispatch thunk of Collection.startIndex.getter();
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v7[v9] == v35[0])
    {
      break;
    }

    v10 = dispatch thunk of Collection.subscript.read();
    sub_10000B270(v11, v36);
    v10(v35, 0);
    dispatch thunk of Collection.formIndex(after:)();
    sub_100046A2C(v36, v35);
    sub_10000B270(v35, v33);
    sub_10004DED0(&qword_10015EF10, &qword_1001160D0);
    sub_10004DED0(&qword_10015EF88, &qword_1001161F8);
    if (swift_dynamicCast())
    {
      sub_100046A2C(v31, v34);
      sub_100018544(v34, v34[3]);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      v15 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_1000C4E44(0, *(v15 + 2) + 1, 1, v15);
        *a2 = v15;
      }

      v18 = *(v15 + 2);
      v17 = *(v15 + 3);
      if (v18 >= v17 >> 1)
      {
        *a2 = sub_1000C4E44((v17 > 1), v18 + 1, 1, v15);
      }

      sub_10000665C(v35);
      v19 = *a2;
      *(v19 + 2) = v18 + 1;
      v20 = &v19[16 * v18];
      *(v20 + 4) = v12;
      *(v20 + 5) = v14;
      sub_10000665C(v34);
    }

    else
    {
      v32 = 0;
      memset(v31, 0, sizeof(v31));
      sub_1000068B0(v31, &qword_10015EF90, &qword_100116200);
      strcpy(v34, "CustomType: ");
      BYTE5(v34[1]) = 0;
      HIWORD(v34[1]) = -5120;
      sub_100018544(v35, v35[3]);
      swift_getDynamicType();
      v21._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v21);

      v22 = v34[0];
      v23 = v34[1];
      v24 = *a2;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v24;
      if ((v25 & 1) == 0)
      {
        v24 = sub_1000C4E44(0, *(v24 + 2) + 1, 1, v24);
        *a2 = v24;
      }

      v27 = *(v24 + 2);
      v26 = *(v24 + 3);
      if (v27 >= v26 >> 1)
      {
        *a2 = sub_1000C4E44((v26 > 1), v27 + 1, 1, v24);
      }

      sub_10000665C(v35);
      v28 = *a2;
      *(v28 + 2) = v27 + 1;
      v29 = &v28[16 * v27];
      *(v29 + 4) = v22;
      *(v29 + 5) = v23;
    }
  }

  return sub_1000068B0(v7, &qword_10015EF00, &qword_1001160C8);
}

void sub_1000B7944(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_10004DED0(&unk_10015EF60, &unk_1001148B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001103D0;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 40) = 0x8000000100124500;
  *(inited + 48) = String._bridgeToObjectiveC()();
  strcpy((inited + 56), "navigationPath");
  *(inited + 71) = -18;
  *(inited + 72) = String._bridgeToObjectiveC()();
  sub_1000BA614(inited, &qword_10015EF78, &qword_1001161C8);
  swift_setDeallocating();
  sub_10004DED0(&qword_10015DE28, &qword_1001161C0);
  swift_arrayDestroy();
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000659C(v9, qword_100169658);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v12 = 136446466;
    *(v12 + 4) = sub_100025CF0(a1, a2, &v15);
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_100025CF0(a3, a4, &v15);
    _os_log_impl(&_mh_execute_header, v10, v11, "Posting Navigation Event for unsupported action, selectedSidebarItemIdentifier: '%{public}s', navigationPath: '%{public}s'", v12, 0x16u);
    swift_arrayDestroy();
  }

  v13 = String._bridgeToObjectiveC()();
  sub_100008294(0, &qword_10015EF70, NSObject_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();
}

uint64_t sub_1000B7C90(Swift::Int a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  NavigationPath.removeLast(_:)(a1);
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_1000B7DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  NavigationPath.append<A>(_:)();
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_1000B7F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100107D90(a1, a2);
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_1000B80A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100107D90(a1, a2);
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_1000B8210()
{
  v1 = type metadata accessor for NavigationPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  swift_getKeyPath();
  v8[1] = v5;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v6, v1);
  LOBYTE(v6) = NavigationPath.isEmpty.getter();
  (*(v2 + 8))(v4, v1);
  return v6 & 1;
}

uint64_t sub_1000B8390()
{
  v1 = type metadata accessor for NavigationPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  swift_getKeyPath();
  v9[1] = v5;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v6, v1);
  v7 = NavigationPath.count.getter();
  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t sub_1000B85C4()
{
  v0 = type metadata accessor for NavigationPath();
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  NavigationPath.init()();
  return sub_1000A7C70(v2);
}

void sub_1000B863C()
{
  memset(v0, 0, sizeof(v0));
  v1 = 6;
  sub_1000A57A4(v0);
}

uint64_t sub_1000B867C(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPath();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_1000A7C70(v4);
}

uint64_t sub_1000B8744@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  swift_getKeyPath();
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  v6 = type metadata accessor for NavigationPath();
  return (*(*(v6 - 8) + 16))(a2, v4 + v5, v6);
}

char *sub_1000B883C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004DED0(&unk_10015ED80, &qword_100115FC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_1000B8930(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000B8AB8(a1, a2, v4);
}

unint64_t sub_1000B89A8(uint64_t a1)
{
  sub_10004DED0(&unk_10015EF50, &qword_100116190);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1000B8B70(a1, v2);
}

unint64_t sub_1000B8A24(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000B8C58(a1, v2);
}

unint64_t sub_1000B8AB8(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1000B8B70(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10004DED0(&unk_10015EF50, &qword_100116190);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000B8C58(uint64_t a1, uint64_t a2)
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

Swift::Int sub_1000B8D5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10004DED0(&unk_10015EEB0, &unk_100116060);
  v38 = v4;
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_1000069D8(v27, &v39);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
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
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_1000B902C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10004DED0(&qword_10015EF48, &qword_100116188);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      if ((v34 & 1) == 0)
      {
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1000B92CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for SettingsSearchResultItem();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1000068B0(v25, &unk_10015EFF0, &unk_100116270);
  }

  if (v18 < 1)
  {
    return sub_1000068B0(v25, &unk_10015EFF0, &unk_100116270);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_1000068B0(v25, &unk_10015EFF0, &unk_100116270);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1000B9468(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000B9624(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

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

  return result;
}

uint64_t sub_1000B97D4(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000B8930(a2, a3);
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
      sub_1000B8D5C(v16, a4 & 1);
      v11 = sub_1000B8930(a2, a3);
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
      sub_1000B9964();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_1000BAD20(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * v11;
  v26 = *a1;
  v27 = a1[1];
  *(v25 + 32) = *(a1 + 4);
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

void *sub_1000B9964()
{
  v1 = v0;
  sub_10004DED0(&unk_10015EEB0, &unk_100116060);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v22 = 40 * v17;
        sub_1000069D8(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
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

void sub_1000B9B18()
{
  v1 = v0;
  v2 = type metadata accessor for PrimarySettingsListItemModel(0);
  v38 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v37 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004DED0(&qword_10015EF40, &qword_100116180);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v34 = v1;
    v35 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v39 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v40 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 40 * v19;
        v21 = *(v4 + 56);
        v22 = *(v4 + 48) + 40 * v19;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = v37;
        v28 = *(v38 + 72) * v19;
        v29 = *(v22 + 32);
        sub_10000822C(v21 + v28, v37, type metadata accessor for PrimarySettingsListItemModel);
        v30 = v39;
        v31 = *(v39 + 48) + v20;
        *v31 = v23;
        *(v31 + 8) = v24;
        *(v31 + 16) = v25;
        *(v31 + 24) = v26;
        *(v31 + 32) = v29;
        v32 = v27;
        v4 = v36;
        sub_100030854(v32, *(v30 + 56) + v28, type metadata accessor for PrimarySettingsListItemModel);
        sub_100029920(v23, v24, v25, v26, v29);
        v14 = v40;
      }

      while (v40);
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

        v1 = v34;
        v6 = v39;
        goto LABEL_18;
      }

      v18 = *(v35 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void *sub_1000B9DA8()
{
  v1 = v0;
  v2 = type metadata accessor for PrimarySettingsListSectionModel(0);
  v32 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004DED0(&qword_10015EF38, &qword_100116178);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v30 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v34 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 24 * v19;
        v21 = *(v4 + 48) + 24 * v19;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = v31;
        v25 = *(v32 + 72) * v19;
        v26 = *(v21 + 16);
        sub_10000822C(*(v4 + 56) + v25, v31, type metadata accessor for PrimarySettingsListSectionModel);
        v27 = v33;
        v28 = *(v33 + 48) + v20;
        *v28 = v22;
        *(v28 + 8) = v23;
        *(v28 + 16) = v26;
        sub_100030854(v24, *(v27 + 56) + v25, type metadata accessor for PrimarySettingsListSectionModel);
        result = sub_100025974(v22, v23, v26);
        v14 = v34;
      }

      while (v34);
    }

    v17 = v10;
    v6 = v33;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v34 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1000BA020()
{
  v1 = v0;
  sub_10004DED0(&qword_10015EF48, &qword_100116188);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

uint64_t sub_1000BA1B0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1000BA2A4;

  return v5(v2 + 32);
}

uint64_t sub_1000BA2A4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_1000BA3B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004DED0(&qword_10015EF48, &qword_100116188);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000B8930(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_1000BA4EC()
{
  v1 = *(type metadata accessor for SettingsAppDetailContent(0) - 8);
  v2 = (*(v1 + 80) + 25) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for SettingsURLDestination(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1000ACA48(v6, v7, (v0 + v2), v0 + v5, v8);
}

unint64_t sub_1000BA614(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10004DED0(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1000B8930(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1000BA710(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004DED0(&qword_10015EFB8, &qword_100116228);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100059CA0(v4, &v11, &unk_10015EFC0, &qword_100116230);
      v5 = v11;
      result = sub_1000B8A24(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10001EFEC(&v12, (v3[7] + 32 * result));
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

unint64_t sub_1000BA838(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004DED0(&qword_10015C8F0, &qword_100112B58);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100059CA0(v4, v13, &qword_10015EFA8, &qword_100116218);
      result = sub_100017DC0(v13);
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
      result = sub_10001EFEC(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1000BA974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for URLQueryItem();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

BOOL sub_1000BAABC(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v10 = *a2;
  v9 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  if (v8 == 255)
  {
    if (v13 == 255)
    {
      goto LABEL_7;
    }

LABEL_6:
    v15 = *(a1 + 16);
    v16 = *(a1 + 24);
    sub_100031DF8(*a1, v4, v7, v6, v8);
    sub_100031DF8(v10, v9, v12, v11, v13);
    sub_100032660(v5, v4, v15, v16, v8);
    sub_100032660(v10, v9, v12, v11, v13);
    return 1;
  }

  if (v13 == 255)
  {
    goto LABEL_6;
  }

  v21.i64[0] = *a2;
  v21.i64[1] = v9;
  v22 = v12;
  v23 = v11;
  v24 = v13;
  v19[0] = v5;
  v19[1] = v4;
  v19[2] = v7;
  v19[3] = v6;
  v20 = v8;
  if (sub_10002BB48(v19, &v21))
  {
LABEL_7:
    v17 = type metadata accessor for SettingsAppDetailContent(0);
    return !sub_100032BF8(a1 + *(v17 + 20), a2 + *(v17 + 20));
  }

  return 1;
}

uint64_t sub_1000BABF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsAppDetailContent(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BAC94()
{
  v1 = *(type metadata accessor for SettingsURLDestination(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000B295C(v0 + v2, v3);
}

uint64_t sub_1000BAD7C()
{
  v1 = *(type metadata accessor for SettingsAppDetailContent(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for SettingsURLDestination(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v0 + 16);
  v8 = *(v0 + v6);

  return sub_1000B1308(v7, v0 + v2, v0 + v5, v8, v0 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000BAEA4()
{
  v1 = *(type metadata accessor for SettingsURLDestination(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000AF878(v4, v0 + v2, v5, v6);
}

uint64_t sub_1000BAF5C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SettingsURLDestination(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10000ACE4;

  return sub_1000B1C14(a1, v10, v11, v12, v1 + v6, v13, v14, v1 + v9);
}

void sub_1000BB0DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1000A7760(v2);
  *(v1 + 32) = v2;
}

void sub_1000BB12C(void *a1)
{
  v3 = *(type metadata accessor for EngagementLinkData(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1000B32DC(a1, v4, v5);
}

uint64_t sub_1000BB1A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10004DED0(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000BB208(uint64_t a1)
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
  v11[1] = sub_10000A924;

  return sub_1000B7430(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000BB2EC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000BB33C(uint64_t a1)
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
  v11[1] = sub_10000ACE4;

  return sub_1000B6E24(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t *sub_1000BB418(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000BB47C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  v4 = sub_100018544(v1, v2);
  return sub_1000B7120(v4, v2, v3);
}

void sub_1000BB4C4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = qword_10015AAA0;
    v9 = a2;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    v11 = sub_10000659C(v10, qword_100169658);
    (*(v5 + 16))(v7, a1, v4);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v36 = v11;
      v15 = v14;
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v15 = 141558275;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      sub_100018684(&qword_10015E918, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v9;
      v19 = v18;
      (*(v5 + 8))(v7, v4);
      v20 = sub_100025CF0(v16, v19, aBlock);
      v9 = v17;

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "Received Finish Setup Redirect with url: %{private,mask.hash}s", v15, 0x16u);
      sub_10000665C(v35);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    v25 = [objc_allocWithZone(BFFFinishSetupViewController) init];
    URL._bridgeToObjectiveC()(v26);
    v28 = v27;
    v29 = swift_allocObject();
    *(v29 + 16) = v9;
    aBlock[4] = sub_1000BB9BC;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000411C;
    aBlock[3] = &unk_1001508E8;
    v30 = _Block_copy(aBlock);
    v31 = v9;

    [v25 processURL:v28 completion:v30];
    _Block_release(v30);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Presenting Finish Setup Modal.", v34, 2u);
    }

    [v31 presentViewController:v25 animated:1 completion:0];
  }

  else
  {
    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000659C(v21, qword_100169658);
    v36 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v36, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v36, v22, "No hostingController available for finish setup presentation.", v23, 2u);
    }

    v24 = v36;
  }
}

uint64_t sub_1000BBA68(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7055776F6C6C6F66;
    v6 = 0x656D656761676E65;
    v7 = 0xD000000000000012;
    if (a1 != 8)
    {
      v7 = 0x6461526F54706174;
    }

    if (a1 != 7)
    {
      v6 = v7;
    }

    if (a1 == 5)
    {
      v5 = 0xD000000000000020;
    }

    if (a1 <= 6u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000019;
    v2 = 0xD000000000000018;
    if (a1 != 3)
    {
      v2 = 0xD000000000000024;
    }

    if (a1 != 2)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000016;
    if (a1)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_1000BBBF8()
{
  result = qword_10015F000;
  if (!qword_10015F000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F000);
  }

  return result;
}

unint64_t sub_1000BBC50()
{
  result = qword_10015F008;
  if (!qword_10015F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F008);
  }

  return result;
}

uint64_t sub_1000BBCA4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 10;
  }

  if (a1 == 0xD000000000000016 && 0x80000001001246E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  if (a1 == 0xD000000000000010 && 0x8000000100121660 == a2)
  {

    return 1;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
    return 1;
  }

  else
  {
    return 10;
  }
}

void sub_1000BBDB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000BBE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unsigned __int8 a4@<W3>, void (*a5)(void *)@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for AppleIDSignInView();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = a3;
  sub_10004DED0(&qword_10015F388, &qword_100116680);
  v16 = Binding.wrappedValue.getter();
  if (HIBYTE(v19) == 10 || HIBYTE(v19) != a4)
  {
    v17 = 1;
  }

  else
  {
    a5(v16);
    (*(v13 + 32))(a6, v15, v12);
    v17 = 0;
  }

  return (*(v13 + 56))(a6, v17, 1, v12);
}

uint64_t sub_1000BBF88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unsigned __int8 a4@<W3>, void (*a5)(void *)@<X4>, uint64_t *a6@<X6>, uint64_t *a7@<X7>, uint64_t a8@<X8>)
{
  v14 = sub_10004DED0(a6, a7);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v21 - v16;
  v22 = a1;
  v23 = a2;
  v24 = a3;
  sub_10004DED0(&qword_10015F388, &qword_100116680);
  v18 = Binding.wrappedValue.getter();
  if (HIBYTE(v21) == 10 || HIBYTE(v21) != a4)
  {
    v19 = 1;
  }

  else
  {
    a5(v18);
    (*(v15 + 32))(a8, v17, v14);
    v19 = 0;
  }

  return (*(v15 + 56))(a8, v19, 1, v14);
}

uint64_t sub_1000BC0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, int a5@<W4>, void (*a6)(char *)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v27 = a7;
  v28 = a6;
  v29 = a5;
  v32 = a8;
  v12 = type metadata accessor for AMSEngagementSheet(0);
  v30 = *(v12 - 8);
  v31 = v12;
  __chkstk_darwin(v12);
  v26 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004DED0(&qword_10015EB40, &qword_1001161A0);
  __chkstk_darwin(v14 - 8);
  v16 = &v25 - v15;
  v17 = type metadata accessor for EngagementLinkData(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a2;
  v35 = a3;
  v36 = a4;
  sub_100059CA0(a1, v16, &qword_10015EB40, &qword_1001161A0);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    sub_100018848(v16, v20, type metadata accessor for EngagementLinkData);
    sub_10004DED0(&qword_10015F388, &qword_100116680);
    Binding.wrappedValue.getter();
    if (v33 == 10)
    {
      v22 = v32;
    }

    else
    {
      v22 = v32;
      if (v33 == v29)
      {
        v23 = v26;
        v28(v20);
        sub_1000186CC(v20, type metadata accessor for EngagementLinkData);
        sub_100018848(v23, v22, type metadata accessor for AMSEngagementSheet);
        v21 = 0;
        return (*(v30 + 56))(v22, v21, 1, v31);
      }
    }

    sub_1000186CC(v20, type metadata accessor for EngagementLinkData);
    v21 = 1;
    return (*(v30 + 56))(v22, v21, 1, v31);
  }

  sub_1000068B0(v16, &qword_10015EB40, &qword_1001161A0);
  v21 = 1;
  v22 = v32;
  return (*(v30 + 56))(v22, v21, 1, v31);
}

uint64_t sub_1000BC400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unsigned __int8 a4@<W3>, void (*a5)(void *)@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_10004DED0(&qword_10015F348, &unk_100116648);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v19 - v14;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  sub_10004DED0(&qword_10015F388, &qword_100116680);
  v16 = Binding.wrappedValue.getter();
  if (HIBYTE(v19) == 10 || HIBYTE(v19) != a4)
  {
    v17 = 1;
  }

  else
  {
    a5(v16);
    sub_1000A4CB8(v15, a6, &qword_10015F348, &unk_100116648);
    v17 = 0;
  }

  return (*(v13 + 56))(a6, v17, 1, v12);
}

void *sub_1000BC574(uint64_t a1, uint64_t a2, char a3, char a4, void (*a5)(uint64_t))
{
  v19 = a5;
  v10 = sub_10004DED0(&qword_10015F390, &qword_1001166C0);
  __chkstk_darwin(v10);
  v12 = (&v18 - v11);
  v13 = sub_10004DED0(&qword_10015F320, &qword_100116638);
  __chkstk_darwin(v13);
  v15 = &v18 - v14;
  v21 = a1;
  v22 = a2;
  v23 = a3;
  sub_10004DED0(&qword_10015F388, &qword_100116680);
  v16 = Binding.wrappedValue.getter();
  if (v20 == 10 || v20 != a4)
  {
    *v12 = static Color.red.getter();
    swift_storeEnumTagMultiPayload();
    sub_10000BF00();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v19(v16);
    sub_100059CA0(v15, v12, &qword_10015F320, &qword_100116638);
    swift_storeEnumTagMultiPayload();
    sub_10000BF00();
    _ConditionalContent<>.init(storage:)();
    return sub_1000068B0(v15, &qword_10015F320, &qword_100116638);
  }
}

uint64_t sub_1000BC780()
{
  v0 = sub_10004DED0(&qword_10015F4C8, &qword_100116850);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_10004DED0(&qword_10015F1D8, &qword_1001164F8);
  __chkstk_darwin(v3);
  v5 = &v8 - v4;
  sub_10001FAF0(&v8 - v4);
  static ToolbarDefaultItemKind.sidebarToggle.getter();
  v6 = type metadata accessor for ToolbarDefaultItemKind();
  (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
  sub_1000C2E98();
  View.toolbar(removing:)();
  sub_1000068B0(v2, &qword_10015F4C8, &qword_100116850);
  return sub_1000068B0(v5, &qword_10015F1D8, &qword_1001164F8);
}

uint64_t sub_1000BC904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_10004DED0(&qword_10015F3D8, &qword_100116788);
  __chkstk_darwin(v3 - 8);
  v35 = &v27 - v4;
  v5 = sub_10004DED0(&qword_10015F018, &qword_100116398);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  type metadata accessor for SettingsNavigationSplitView(0);
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v6 + 8))(v8, v5);
  v37 = a1;
  v34 = sub_10004DED0(&qword_10015F3E0, &qword_100116790);
  v33 = sub_100052374(&qword_10015F3E8, &qword_100116798);
  v32 = type metadata accessor for SettingsPaneRecipe();
  v31 = sub_100052374(&qword_10015F3F0, &qword_1001167A0);
  v30 = sub_100052374(&qword_10015F3F8, &qword_1001167A8);
  v29 = type metadata accessor for SettingsAnyPlatformViewControllerRecipe();
  v28 = sub_100052374(&qword_10015F400, &qword_1001167B0);
  v27 = sub_100052374(&qword_10015F408, &qword_1001167B8);
  v9 = type metadata accessor for SettingsAnyViewRecipe();
  v10 = sub_100052374(&qword_10015F410, &qword_1001167C0);
  v11 = sub_100052374(&qword_10015F418, &qword_1001167C8);
  v12 = type metadata accessor for PreferencesControllerRecipe();
  v13 = sub_100052374(&qword_10015F420, &qword_1001167D0);
  v14 = sub_1000525A0(&qword_10015F428, &qword_10015F418, &qword_1001167C8, &protocol conformance descriptor for IDView<A, B>);
  v15 = sub_10000A568(&qword_10015EFA0, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
  v16 = sub_1000525A0(&qword_10015F430, &qword_10015F420, &qword_1001167D0, &protocol conformance descriptor for IDView<A, B>);
  v38 = v11;
  v39 = v12;
  v40 = v13;
  v41 = v14;
  v42 = v15;
  v43 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_10000A568(&qword_10015F438, &type metadata accessor for SettingsAnyViewRecipe, &protocol conformance descriptor for SettingsAnyViewRecipe);
  v19 = sub_1000525A0(&qword_10015F440, &qword_10015F410, &qword_1001167C0, &protocol conformance descriptor for IDView<A, B>);
  v38 = v27;
  v39 = v9;
  v40 = v10;
  v41 = OpaqueTypeConformance2;
  v42 = v18;
  v43 = v19;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = sub_10000A568(&qword_10015EF98, &type metadata accessor for SettingsAnyPlatformViewControllerRecipe, &protocol conformance descriptor for SettingsAnyPlatformViewControllerRecipe);
  v22 = sub_1000525A0(&qword_10015F448, &qword_10015F400, &qword_1001167B0, &protocol conformance descriptor for IDView<A, B>);
  v38 = v30;
  v39 = v29;
  v40 = v28;
  v41 = v20;
  v42 = v21;
  v43 = v22;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = sub_10000A568(&qword_10015E4D0, &type metadata accessor for SettingsPaneRecipe, &protocol conformance descriptor for SettingsPaneRecipe);
  v25 = sub_1000525A0(&qword_10015F450, &qword_10015F3F0, &qword_1001167A0, &protocol conformance descriptor for IDView<A, B>);
  v38 = v33;
  v39 = v32;
  v40 = v31;
  v41 = v23;
  v42 = v24;
  v43 = v25;
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(path:root:)();
}

uint64_t sub_1000BCDEC(void *a1, uint64_t a2)
{
  sub_100018544(a1, a1[3]);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    sub_10000A568(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    NavigationPath.append<A>(_:)();
    swift_endAccess();
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  return result;
}

uint64_t sub_1000BCF74(uint64_t a1)
{
  v1 = type metadata accessor for NavigationPath();
  __chkstk_darwin(v1 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    NavigationPath.init()();
    sub_1000A7C70(v3);
  }

  return result;
}

uint64_t sub_1000BD01C()
{
  type metadata accessor for SettingsNavigationSplitView(0);
  sub_10004DED0(&qword_10015F018, &qword_100116398);
  Bindable.wrappedValue.getter();
  memset(v1, 0, sizeof(v1));
  v2 = 6;
  sub_1000A57A4(v1);
}

uint64_t sub_1000BD094(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015EF28, &qword_100116590);
  __chkstk_darwin(v2 - 8);
  sub_100059CA0(a1, &v5 - v3, &qword_10015EF28, &qword_100116590);
  return EnvironmentValues.horizontalSizeClass.setter();
}

uint64_t sub_1000BD13C(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.scenePhase.setter();
}

void sub_1000BD204(char *a1)
{
  v1 = *a1;
  type metadata accessor for SettingsNavigationSplitView(0);
  sub_10004DED0(&qword_10015F018, &qword_100116398);
  Bindable.wrappedValue.getter();
  v2 = sub_100010CD0();
  v3 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_viewControllerForPresentation;
  swift_beginAccess();
  v4 = *&v2[v3];
  if (v4)
  {
    v5 = v4;

    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v1;
    aBlock[4] = sub_1000C4354;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000411C;
    aBlock[3] = &unk_100150E00;
    v8 = _Block_copy(aBlock);

    [v5 dismissViewControllerAnimated:1 completion:v8];
    _Block_release(v8);
  }

  else
  {
  }
}

uint64_t sub_1000BD39C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WithCurrentHostingControllerAction();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SettingsNavigationSplitView(0);
  sub_1000C3560(&qword_10015B0D8, &qword_10010FB60, &type metadata accessor for WithCurrentHostingControllerAction, v7);
  v10 = a2;
  v11 = a1;
  WithCurrentHostingControllerAction.callAsFunction(_:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000BD4C8(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SettingsNavigationSplitView(0);
  sub_10004DED0(&qword_10015F018, &qword_100116398);
  Bindable.wrappedValue.getter();
  sub_1000BB4C4(a3, a1);
}

uint64_t sub_1000BD544(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_100017DC0(v10), (v5 & 1) == 0))
  {

    sub_100017E04(v10);
LABEL_9:
    v12 = 0u;
    v13 = 0u;
    return sub_1000068B0(&v12, &qword_10015C8D0, &unk_100116750);
  }

  sub_10001EE30(*(v3 + 56) + 32 * v4, &v12);
  sub_100017E04(v10);

  if (!*(&v13 + 1))
  {
    return sub_1000068B0(&v12, &qword_10015C8D0, &unk_100116750);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v7 = v10[0];
    type metadata accessor for SettingsNavigationSplitView(0);
    sub_10004DED0(&qword_10015F018, &qword_100116398);
    Bindable.wrappedValue.getter();
    memset(v10, 0, sizeof(v10));
    v11 = 6;
    sub_1000A57A4(v10);

    Bindable.wrappedValue.getter();
    v8 = *(v12 + 16);

    if (*(v8 + 16) != 1)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&v12 = v8;
      sub_10000A568(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    Bindable.wrappedValue.getter();

    sub_1000EE9F4(v7, *(&v7 + 1));
  }

  return result;
}

uint64_t sub_1000BD834()
{
  if (qword_10015AAD8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000659C(v0, qword_100169700);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Setting up state for scroll search test", v3, 2u);
  }

  type metadata accessor for SettingsNavigationSplitView(0);
  sub_10004DED0(&qword_10015F018, &qword_100116398);
  Bindable.wrappedValue.getter();
  memset(v8, 0, sizeof(v8));
  v9 = 6;
  sub_1000A57A4(v8);

  Bindable.wrappedValue.getter();
  v4 = *(v7 + 16);

  if (*(v4 + 16) != 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000A568(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  Bindable.wrappedValue.getter();

  sub_1000EE9F4(0x6C6172656E6547, 0xE700000000000000);
}

uint64_t sub_1000BDAD4(uint64_t a1, uint64_t a2, const char *a3, unint64_t a4)
{
  if (qword_10015AAD8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000659C(v6, qword_100169700);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a3, v9, 2u);
  }

  type metadata accessor for SettingsNavigationSplitView(0);
  sub_10004DED0(&qword_10015F018, &qword_100116398);
  Bindable.wrappedValue.getter();
  sub_100010CD0();

  v11 = a4;
  v12 = 0;
  v13 = 0;
  v14 = 6;
  sub_1000954AC(&v11);
}

uint64_t sub_1000BDC28(uint64_t a1)
{
  sub_10004DED0(&qword_10015F3D0, &qword_100116720);
  sub_100052374(&qword_10015B028, &unk_100113980);
  sub_1000822CC();
  sub_1000525A0(&qword_10015B030, &qword_10015B028, &unk_100113980, &protocol conformance descriptor for Button<A>);
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

uint64_t sub_1000BDD24(uint64_t a1)
{
  v2 = type metadata accessor for SettingsNavigationSplitView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_10004DED0(&qword_10015B028, &unk_100113980);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_100020E44(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SettingsNavigationSplitView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_100018848(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for SettingsNavigationSplitView);
  Button.init(action:label:)();
  sub_1000822CC();
  sub_1000525A0(&qword_10015B030, &qword_10015B028, &unk_100113980, &protocol conformance descriptor for Button<A>);
  View.navigationBarItems<A>(trailing:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000BDF78(uint64_t a1)
{
  sub_10004DED0(&qword_10015F3B0, &qword_1001166F8);
  sub_100052374(&qword_10015F3B8, &qword_100116700);
  sub_100052374(&qword_10015B028, &unk_100113980);
  sub_100052374(&qword_10015F3C0, &qword_100116708);
  sub_1000C4000();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1000525A0(&qword_10015B030, &qword_10015B028, &unk_100113980, &protocol conformance descriptor for Button<A>);
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

uint64_t sub_1000BE0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v41 = a2;
  v2 = type metadata accessor for SettingsNavigationSplitView(0);
  v37 = *(v2 - 8);
  v36 = *(v37 + 64);
  __chkstk_darwin(v2 - 8);
  v34 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004DED0(&qword_10015B028, &unk_100113980);
  v5 = *(v4 - 8);
  v39 = v4;
  v40 = v5;
  __chkstk_darwin(v4);
  v35 = &v32 - v6;
  v7 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004DED0(&qword_10015F3C0, &qword_100116708);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  v15 = sub_10004DED0(&qword_10015F3B8, &qword_100116700);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  __chkstk_darwin(v15);
  v18 = &v32 - v17;
  (*(v8 + 104))(v10, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v7);
  v19 = sub_1000C4000();
  View.navigationBarTitleDisplayMode(_:)();
  (*(v8 + 8))(v10, v7);
  LocalizedStringKey.init(stringLiteral:)();
  v20 = Text.init(_:tableName:bundle:comment:)();
  v22 = v21;
  LOBYTE(v8) = v23;
  v42 = &type metadata for AboutSupervisedDeviceRepresentable;
  v43 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.navigationBarTitle(_:)();
  sub_100009680(v20, v22, v8 & 1);

  (*(v12 + 8))(v14, v11);
  v25 = v34;
  sub_100020E44(v38, v34, type metadata accessor for SettingsNavigationSplitView);
  v26 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v27 = swift_allocObject();
  sub_100018848(v25, v27 + v26, type metadata accessor for SettingsNavigationSplitView);
  v28 = v35;
  Button.init(action:label:)();
  v42 = v11;
  v43 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1000525A0(&qword_10015B030, &qword_10015B028, &unk_100113980, &protocol conformance descriptor for Button<A>);
  v29 = v32;
  v30 = v39;
  View.navigationBarItems<A>(trailing:)();
  (*(v40 + 8))(v28, v30);
  return (*(v33 + 8))(v18, v29);
}

uint64_t sub_1000BE660(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for AISAppleIDSignInConfiguration()) init];
  swift_retain_n();

  return AppleIDSignInView.init(configuration:onSkip:completion:)(v2, sub_1000C3E5C, a1, sub_1000C3E7C, a1);
}

uint64_t sub_1000BE6FC(void *a1, char a2, uint64_t a3)
{
  v6 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v6 - 8);
  v32 = &v30 - v7;
  v8 = sub_10004DED0(&qword_10015E4E8, &unk_100115610);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v33 = a3;
  v12 = swift_projectBox();
  v13 = *(v9 + 16);
  v13(v11, v12, v8);
  Bindable.wrappedValue.getter();
  v14 = *(v9 + 8);
  v14(v11, v8);
  sub_1000A5000(v35);
  sub_10002698C(v35, v34);

  if ((a2 & 1) == 0)
  {
    v31 = a1;
    a1;
    if (*(AISAppleIDSignInResult.authResults.getter() + 16))
    {
      sub_1000B8930(0x495344746C414B41, 0xE900000000000044);
      v16 = v15;

      if (v16)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    if (*(AISAppleIDSignInResult.authResults.getter() + 16))
    {
      sub_1000B8930(0x444953444B41, 0xE600000000000000);
      v18 = v17;

      if (v18)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
    if (*(AISAppleIDSignInResult.authResults.getter() + 16))
    {
      sub_1000B8930(v30, v20);
      v22 = v21;

      if (v22)
      {
LABEL_13:
        v23 = type metadata accessor for TaskPriority();
        v24 = v32;
        (*(*(v23 - 8) + 56))(v32, 1, 1, v23);
        type metadata accessor for MainActor();
        v25 = v33;

        v26 = static MainActor.shared.getter();
        v27 = swift_allocObject();
        *(v27 + 16) = v26;
        *(v27 + 24) = &protocol witness table for MainActor;
        *(v27 + 32) = v25;
        v28 = v35[1];
        *(v27 + 40) = v35[0];
        *(v27 + 56) = v28;
        *(v27 + 72) = v36;
        sub_100094AF4(0, 0, v24, &unk_1001166F0, v27);
        sub_1000C3F2C(v31, 0);

        goto LABEL_16;
      }
    }

    else
    {
    }

    sub_100026A04(v35);
    sub_1000C3F2C(v31, 0);
    goto LABEL_16;
  }

  sub_100026A04(v35);
LABEL_16:
  v13(v11, v12, v8);
  Bindable.wrappedValue.getter();
  v14(v11, v8);
  sub_1000951B0(10);
}

uint64_t sub_1000BEAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  v6 = *(a5 + 16);
  *(v5 + 120) = *a5;
  *(v5 + 136) = v6;
  *(v5 + 49) = *(a5 + 32);
  v7 = sub_10004DED0(&qword_10015E4E8, &unk_100115610);
  *(v5 + 152) = v7;
  *(v5 + 160) = *(v7 - 8);
  *(v5 + 168) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 176) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000BEBFC, v9, v8);
}

uint64_t sub_1000BEBFC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 49);
  v5 = *(v0 + 112);
  v9 = *(v0 + 136);
  v10 = *(v0 + 120);

  v6 = swift_projectBox();
  (*(v3 + 16))(v1, v6, v2);
  Bindable.wrappedValue.getter();
  (*(v3 + 8))(v1, v2);
  *(v0 + 32) = v9;
  *(v0 + 16) = v10;
  *(v0 + 48) = v4;
  sub_10002698C(v5, v0 + 56);
  sub_1000954AC((v0 + 16));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000BED18(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004DED0(&qword_10015E4E8, &unk_100115610);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = swift_projectBox();
  (*(v4 + 16))(v6, v7, v3);
  Bindable.wrappedValue.getter();
  (*(v4 + 8))(v6, v3);
  sub_1000951B0(a2);
}

uint64_t sub_1000BEE38()
{
  v0 = type metadata accessor for AppleAccountSignInSheet(0);
  __chkstk_darwin(v0);
  v2 = (v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v2 = swift_getKeyPath();
  sub_10004DED0(&qword_10015D1B0, &qword_100114420);
  swift_storeEnumTagMultiPayload();
  v3 = (v2 + *(v0 + 20));
  *v3 = nullsub_1;
  v3[1] = 0;
  v5[1] = static Color.clear.getter();
  sub_10000A568(&qword_10015DCF8, type metadata accessor for AppleAccountSignInSheet, &unk_1001144E8);
  View.presentationBackground<A>(_:)();

  return sub_1000186CC(v2, type metadata accessor for AppleAccountSignInSheet);
}

uint64_t sub_1000BEF8C(uint64_t a1)
{
  v1 = sub_10004DED0(&qword_10015E4E8, &unk_100115610);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - v3;
  v5 = swift_projectBox();
  v6 = *(v2 + 16);
  v6(v4, v5, v1);
  Bindable.wrappedValue.getter();
  v7 = *(v2 + 8);
  v7(v4, v1);
  v8 = *(v11 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingFollowUpController);
  if (v8)
  {
    *(v11 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingFollowUpController) = 0;
  }

  else
  {
  }

  v6(v4, v5, v1);
  Bindable.wrappedValue.getter();
  v7(v4, v1);
  sub_1000951B0(10);
}

void *sub_1000BF114@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v34 = a1;
  v38 = a2;
  v36 = type metadata accessor for SettingsAnyPlatformViewControllerView();
  v31 = *(v36 - 8);
  __chkstk_darwin(v36);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10004DED0(&qword_10015F398, &qword_1001166C8);
  v33 = *(v37 - 8);
  __chkstk_darwin(v37);
  v32 = &v31 - v4;
  v35 = sub_10004DED0(&qword_10015F3A0, &qword_1001166D0);
  __chkstk_darwin(v35);
  v6 = (&v31 - v5);
  v7 = sub_10004DED0(&qword_10015E4E8, &unk_100115610);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  v11 = type metadata accessor for SettingsAnyPlatformViewControllerRecipe();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v31 - v17;
  __chkstk_darwin(v16);
  v20 = &v31 - v19;
  v21 = swift_projectBox();
  (*(v8 + 16))(v10, v21, v7);
  Bindable.wrappedValue.getter();
  (*(v8 + 8))(v10, v7);
  v22 = *(v39 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingFollowUpController);
  v23 = v22;

  if (v22)
  {
    SettingsAnyPlatformViewControllerRecipe.init(_:)();
    (*(v12 + 32))(v20, v18, v11);
    (*(v12 + 16))(v15, v20, v11);
    SettingsAnyPlatformViewControllerView.init(platformViewControllerRecipe:)();
    v39 = static Color.clear.getter();
    v24 = sub_10000A568(&qword_10015F328, &type metadata accessor for SettingsAnyPlatformViewControllerView, &protocol conformance descriptor for SettingsAnyPlatformViewControllerView);
    v25 = v32;
    v26 = v36;
    View.presentationBackground<A>(_:)();

    (*(v31 + 8))(v3, v26);
    v27 = v33;
    v28 = v37;
    (*(v33 + 16))(v6, v25, v37);
    swift_storeEnumTagMultiPayload();
    v39 = v26;
    v40 = &type metadata for Color;
    v41 = v24;
    v42 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v27 + 8))(v25, v28);
    return (*(v12 + 8))(v20, v11);
  }

  else
  {
    *v6 = static Color.blue.getter();
    swift_storeEnumTagMultiPayload();
    v30 = sub_10000A568(&qword_10015F328, &type metadata accessor for SettingsAnyPlatformViewControllerView, &protocol conformance descriptor for SettingsAnyPlatformViewControllerView);
    v39 = v36;
    v40 = &type metadata for Color;
    v41 = v30;
    v42 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1000BF6B8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SettingsApplicationDebugRoot(0);
  v12 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 sf_isInternalInstall];

  if (v6)
  {
    *v4 = swift_getKeyPath();
    sub_10004DED0(&qword_10015D1B0, &qword_100114420);
    swift_storeEnumTagMultiPayload();
    v7 = v4 + *(v2 + 20);
    type metadata accessor for SettingsAppModel(0);
    sub_10000A568(&qword_10015AFB8, type metadata accessor for SettingsAppModel, &unk_10010FC24);
    *v7 = Environment.init<A>(_:)();
    v7[8] = v8 & 1;
    sub_100018848(v4, a1, type metadata accessor for SettingsApplicationDebugRoot);
    return (*(v12 + 56))(a1, 0, 1, v2);
  }

  else
  {
    v10 = *(v12 + 56);

    return v10(a1, 1, 1, v2);
  }
}

uint64_t sub_1000BF8C8(uint64_t a1)
{
  v1 = sub_10004DED0(&qword_10015EB40, &qword_1001161A0);
  __chkstk_darwin(v1 - 8);
  v3 = v13 - v2;
  v4 = sub_10004DED0(&qword_10015E4E8, &unk_100115610);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - v6;
  v8 = swift_projectBox();
  (*(v5 + 16))(v7, v8, v4);
  Bindable.wrappedValue.getter();
  (*(v5 + 8))(v7, v4);
  v9 = v13[1];
  v10 = type metadata accessor for EngagementLinkData(0);
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  v11 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingEngagementLinkData;
  swift_beginAccess();
  sub_1000BB1A0(v3, v9 + v11, &qword_10015EB40, &qword_1001161A0);
  swift_endAccess();
}

uint64_t sub_1000BFAB4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() bagForProfile:v4 profileVersion:v5];

  v7 = *(type metadata accessor for EngagementLinkData(0) + 24);
  v8 = type metadata accessor for AMSEngagementSheet(0);
  v9 = *(v8 + 24);
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 16))(&a2[v9], a1 + v7, v10);
  *a2 = swift_getKeyPath();
  sub_10004DED0(&qword_10015D1B0, &qword_100114420);
  result = swift_storeEnumTagMultiPayload();
  *&a2[*(v8 + 20)] = v6;
  return result;
}

uint64_t sub_1000BFBD4@<X0>(char *a1@<X8>)
{
  v2 = sub_10004DED0(&qword_10015B028, &unk_100113980);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v19 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v19 - v11;
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  Button.init(action:label:)();
  Button.init(action:label:)();
  v15 = *(v3 + 16);
  v15(v9, v14, v2);
  v15(v6, v12, v2);
  v15(a1, v9, v2);
  v16 = sub_10004DED0(&qword_10015F380, &unk_100116670);
  v15(&a1[*(v16 + 48)], v6, v2);
  v17 = *(v3 + 8);
  v17(v12, v2);
  v17(v14, v2);
  v17(v6, v2);
  return (v17)(v9, v2);
}

uint64_t sub_1000BFE60()
{
  v0 = sub_10004DED0(&qword_10015E1D8, &unk_100115208);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  if (qword_10015AB08 != -1)
  {
    swift_once();
  }

  v3 = qword_100169780;
  v4 = type metadata accessor for TapToRadarDraft(0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = OBJC_IVAR____TtC11SettingsApp17TapToRadarManager_draft;
  swift_beginAccess();
  sub_1000BB1A0(v2, v3 + v5, &qword_10015E1D8, &unk_100115208);
  return swift_endAccess();
}

void sub_1000BFFB4()
{
  if (qword_10015AB08 != -1)
  {
    swift_once();
  }

  sub_10008DA10();
}

uint64_t sub_1000C0034@<X0>(uint64_t a1@<X8>)
{
  if (qword_10015AB08 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v1 = *(qword_100169780 + 16);
  v2 = *(qword_100169780 + 24);
  v3 = *(qword_100169780 + 32);
  v4 = *(qword_100169780 + 40);
  v5 = 0x8000000100124710;
  v6 = _swiftEmptyArrayStorage;
  v7 = 0xD000000000000033;
  if (v4)
  {
    v7 = *(qword_100169780 + 16);
    v5 = *(qword_100169780 + 24);
    v8 = *(qword_100169780 + 32);
  }

  else
  {
    v8 = 0;
  }

  if (v4)
  {
    v6 = *(qword_100169780 + 40);
  }

  *a1 = v7;
  *(a1 + 8) = v5;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v6;

  return sub_10007AAFC(v1, v2, v3, v4);
}

uint64_t sub_1000C00EC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v4 = sub_10004DED0(&qword_10015F220, &qword_100116520);
  v56 = *(v4 - 8);
  v57 = v4;
  __chkstk_darwin(v4);
  v54 = &v50 - v5;
  v6 = type metadata accessor for EnvironmentValues();
  v51 = *(v6 - 8);
  v52 = v6;
  __chkstk_darwin(v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004DED0(&qword_10015F4F0, &qword_100116900);
  v10 = __chkstk_darwin(v9 - 8);
  v53 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v50 - v12;
  v14 = sub_10004DED0(&qword_10015F4F8, &qword_100116908);
  v55 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v50 - v18;
  v20 = sub_10004DED0(&qword_10015F4D0, &qword_100116858);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v50 - v22;
  v24 = swift_projectBox();
  (*(v21 + 16))(v23, v24, v20);
  Bindable.wrappedValue.getter();
  (*(v21 + 8))(v23, v20);
  v25 = v59;
  swift_getKeyPath();
  v59 = v25;
  sub_10000A568(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v23) = *(v25 + 16);

  if (v23 == 1)
  {
    __chkstk_darwin(v26);
    LocalizedStringKey.init(stringLiteral:)();
    v59 = Text.init(_:tableName:bundle:comment:)();
    v60 = v27;
    v61 = v28 & 1;
    v62 = v29;
    sub_10004DED0(&qword_10015B038, &qword_100116910);
    v50 = sub_100007108();
    Section<>.init(header:content:)();
    v30 = *(a2 + 24);

    v31 = v19;
    if ((v30 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v32 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v51 + 8))(v8, v52);
    }

    v33 = SettingsZeroKeywordNavigationItemsProvider.recents.getter();

    v34 = *(v33 + 16);

    if (v34)
    {
      __chkstk_darwin(v35);
      LocalizedStringKey.init(stringLiteral:)();
      v59 = Text.init(_:tableName:bundle:comment:)();
      v60 = v36;
      v61 = v37 & 1;
      v62 = v38;
      Section<>.init(header:content:)();
      (*(v55 + 32))(v13, v17, v14);
      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v42 = v55;
    (*(v55 + 56))(v13, v39, 1, v14);
    v43 = *(v42 + 16);
    v43(v17, v19, v14);
    v44 = v53;
    sub_100059CA0(v13, v53, &qword_10015F4F0, &qword_100116900);
    v45 = v31;
    v46 = v54;
    v43(v54, v17, v14);
    v47 = sub_10004DED0(&qword_10015F500, &qword_100116918);
    sub_100059CA0(v44, v46 + *(v47 + 48), &qword_10015F4F0, &qword_100116900);
    sub_1000068B0(v13, &qword_10015F4F0, &qword_100116900);
    v48 = *(v42 + 8);
    v48(v45, v14);
    sub_1000068B0(v44, &qword_10015F4F0, &qword_100116900);
    v48(v17, v14);
    v41 = v58;
    sub_1000A4CB8(v46, v58, &qword_10015F220, &qword_100116520);
    v40 = 0;
  }

  else
  {
    v40 = 1;
    v41 = v58;
  }

  return (*(v56 + 56))(v41, v40, 1, v57);
}

uint64_t sub_1000C0884(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *(a1 + 24);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v10 = (*(v7 + 8))(v9, v6);
  }

  v12 = a2(v10);

  v21 = v12;
  v13 = sub_10004DED0(&qword_10015B058, &qword_100116920);
  v14 = type metadata accessor for URL();
  v15 = type metadata accessor for SettingsSearchZeroKeywordListRecentItem(0);
  v16 = sub_1000525A0(&qword_10015B060, &qword_10015B058, &qword_100116920, &protocol conformance descriptor for [A]);
  v17 = sub_10000A568(&qword_10015B048, type metadata accessor for SettingsSearchZeroKeywordListRecentItem, &unk_100113DB8);
  v18 = sub_10000A568(&qword_10015B068, &type metadata accessor for SettingsNavigationEventRecord, &protocol conformance descriptor for SettingsNavigationEventRecord);
  return ForEach<>.init(_:content:)(&v21, a3, 0, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1000C0AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SettingsSearchZeroKeywordListRecentItem(0);
  v5 = v4[7];
  v6 = type metadata accessor for SettingsNavigationEventRecord();
  (*(*(v6 - 8) + 16))(a2 + v5, a1, v6);
  type metadata accessor for SettingsAppModel(0);
  sub_10000A568(&qword_10015AFB8, type metadata accessor for SettingsAppModel, &unk_10010FC24);
  *a2 = Environment.init<A>(_:)();
  *(a2 + 8) = v7 & 1;
  v8 = v4[5];
  *(a2 + v8) = swift_getKeyPath();
  sub_10004DED0(&qword_10015B070, &qword_10010FA60);
  swift_storeEnumTagMultiPayload();
  v9 = v4[6];
  *(a2 + v9) = swift_getKeyPath();
  sub_10004DED0(&qword_10015B078, &unk_100113E10);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000C0C4C(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_10004DED0(&qword_10015F4D0, &qword_100116858);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for ContinuousClock();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[12] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[13] = v5;
  v1[14] = v4;

  return _swift_task_switch(sub_1000C0DA8, v5, v4);
}

uint64_t sub_1000C0DA8()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1000C0E74;

  return sub_100044BC4(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1000C0E74()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 112);
  v7 = *(v2 + 104);
  if (v0)
  {
    v8 = sub_1000C13B0;
  }

  else
  {
    v8 = sub_1000C100C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000C100C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = swift_projectBox();
  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  Bindable.wrappedValue.getter();
  v6 = *(v2 + 8);
  v6(v1, v3);
  v0[17] = v0[2];
  v5(v1, v4, v3);
  Bindable.wrappedValue.getter();
  v6(v1, v3);
  v7 = v0[3];
  swift_getKeyPath();
  v0[4] = v7;
  sub_10000A568(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  v0[18] = v9;

  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_1000C11DC;

  return sub_1000EF1AC(v8, v9);
}

uint64_t sub_1000C11DC()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_1000C133C, v3, v2);
}

uint64_t sub_1000C133C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C13B0()
{

  if (qword_10015AAA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000659C(v1, qword_100169670);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Search cancelled.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000C14EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v58 = a2;
  v2 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004DED0(&qword_10015F458, &qword_1001167D8);
  __chkstk_darwin(v6);
  v8 = (&v49 - v7);
  v9 = sub_10004DED0(&qword_10015F460, &qword_1001167E0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v49 - v11;
  v50 = sub_10004DED0(&qword_10015F418, &qword_1001167C8);
  __chkstk_darwin(v50);
  v14 = &v49 - v13;
  v51 = sub_10004DED0(&qword_10015F408, &qword_1001167B8);
  v53 = *(v51 - 8);
  __chkstk_darwin(v51);
  v59 = &v49 - v15;
  v16 = sub_10004DED0(&qword_10015F3F8, &qword_1001167A8);
  v17 = *(v16 - 8);
  v54 = v16;
  v55 = v17;
  __chkstk_darwin(v16);
  v60 = &v49 - v18;
  v19 = sub_10004DED0(&qword_10015F3E8, &qword_100116798);
  v20 = *(v19 - 8);
  v56 = v19;
  v57 = v20;
  __chkstk_darwin(v19);
  v52 = &v49 - v21;
  sub_1000C1E5C(v8);
  (*(v3 + 104))(v5, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v2);
  v22 = sub_1000C4368();
  View.navigationBarTitleDisplayMode(_:)();
  (*(v3 + 8))(v5, v2);
  sub_1000068B0(v8, &qword_10015F458, &qword_1001167D8);
  v61 = v6;
  v62 = v22;
  swift_getOpaqueTypeConformance2();
  View.navigationBarHidden(_:)();
  (*(v10 + 8))(v12, v9);
  type metadata accessor for SettingsNavigationSplitView(0);
  sub_10004DED0(&qword_10015F018, &qword_100116398);
  Bindable.wrappedValue.getter();
  v23 = v61;
  swift_getKeyPath();
  v61 = v23;
  sub_10000A568(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
  swift_beginAccess();
  v25 = v50;
  sub_100020E44(v23 + v24, &v14[*(v50 + 52)], type metadata accessor for SettingsAppDetailContent);

  v26 = type metadata accessor for PreferencesControllerRecipe();
  v27 = sub_10004DED0(&qword_10015F420, &qword_1001167D0);
  v28 = sub_1000525A0(&qword_10015F428, &qword_10015F418, &qword_1001167C8, &protocol conformance descriptor for IDView<A, B>);
  v29 = sub_10000A568(&qword_10015EFA0, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
  v49 = &protocol conformance descriptor for IDView<A, B>;
  v30 = sub_1000525A0(&qword_10015F430, &qword_10015F420, &qword_1001167D0, &protocol conformance descriptor for IDView<A, B>);
  View.navigationDestination<A, B>(for:destination:)();
  sub_1000068B0(v14, &qword_10015F418, &qword_1001167C8);
  v31 = type metadata accessor for SettingsAnyViewRecipe();
  v32 = sub_10004DED0(&qword_10015F410, &qword_1001167C0);
  v61 = v25;
  v62 = v26;
  v63 = v27;
  v64 = v28;
  v65 = v29;
  v66 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = sub_10000A568(&qword_10015F438, &type metadata accessor for SettingsAnyViewRecipe, &protocol conformance descriptor for SettingsAnyViewRecipe);
  v35 = sub_1000525A0(&qword_10015F440, &qword_10015F410, &qword_1001167C0, &protocol conformance descriptor for IDView<A, B>);
  v36 = v59;
  v37 = v51;
  View.navigationDestination<A, B>(for:destination:)();
  (*(v53 + 8))(v36, v37);
  v38 = type metadata accessor for SettingsAnyPlatformViewControllerRecipe();
  v39 = sub_10004DED0(&qword_10015F400, &qword_1001167B0);
  v61 = v37;
  v62 = v31;
  v63 = v32;
  v64 = OpaqueTypeConformance2;
  v65 = v34;
  v66 = v35;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = sub_10000A568(&qword_10015EF98, &type metadata accessor for SettingsAnyPlatformViewControllerRecipe, &protocol conformance descriptor for SettingsAnyPlatformViewControllerRecipe);
  v42 = v49;
  v43 = sub_1000525A0(&qword_10015F448, &qword_10015F400, &qword_1001167B0, v49);
  v44 = v52;
  v45 = v54;
  v46 = v60;
  View.navigationDestination<A, B>(for:destination:)();
  (*(v55 + 8))(v46, v45);
  type metadata accessor for SettingsPaneRecipe();
  v60 = sub_10004DED0(&qword_10015F3F0, &qword_1001167A0);
  v61 = v45;
  v62 = v38;
  v63 = v39;
  v64 = v40;
  v65 = v41;
  v66 = v43;
  swift_getOpaqueTypeConformance2();
  sub_10000A568(&qword_10015E4D0, &type metadata accessor for SettingsPaneRecipe, &protocol conformance descriptor for SettingsPaneRecipe);
  sub_1000525A0(&qword_10015F450, &qword_10015F3F0, &qword_1001167A0, v42);
  v47 = v56;
  View.navigationDestination<A, B>(for:destination:)();
  return (*(v57 + 8))(v44, v47);
}

uint64_t sub_1000C1E5C@<X0>(void *a1@<X8>)
{
  v53 = a1;
  v48 = sub_10004DED0(&qword_10015F4A8, &qword_100116828);
  v42 = *(v48 - 8);
  __chkstk_darwin(v48);
  v41 = &v36 - v1;
  v43 = sub_10004DED0(&qword_10015F4B0, &qword_100116830);
  __chkstk_darwin(v43);
  v45 = &v36 - v2;
  v52 = sub_10004DED0(&qword_10015F498, &qword_1001167F8);
  __chkstk_darwin(v52);
  v47 = &v36 - v3;
  v46 = type metadata accessor for PreferencesControllerView();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for SettingsAnyPlatformViewControllerView();
  v38 = *(v44 - 8);
  __chkstk_darwin(v44);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10004DED0(&qword_10015F4B8, &qword_100116838);
  __chkstk_darwin(v49);
  v51 = &v36 - v6;
  v7 = sub_10004DED0(&qword_10015F4C0, &unk_100116840);
  __chkstk_darwin(v7);
  v9 = (&v36 - v8);
  v50 = sub_10004DED0(&qword_10015F488, &qword_1001167F0);
  __chkstk_darwin(v50);
  v11 = &v36 - v10;
  v12 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
  __chkstk_darwin(v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SettingsAppDetailContent(0);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SettingsNavigationSplitView(0);
  sub_10004DED0(&qword_10015F018, &qword_100116398);
  Bindable.wrappedValue.getter();
  v19 = v54;
  swift_getKeyPath();
  v54 = v19;
  sub_10000A568(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
  swift_beginAccess();
  sub_100020E44(v19 + v20, v18, type metadata accessor for SettingsAppDetailContent);

  sub_100020E44(&v18[*(v16 + 28)], v14, type metadata accessor for SettingsAppDetailContent.ContentType);
  sub_1000186CC(v18, type metadata accessor for SettingsAppDetailContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_10004DED0(&unk_10015E300, &unk_100115600);
      v26 = v41;
      dispatch thunk of SettingsExperienceContentCoordinator.requestRootView()();
      v27 = v42;
      v28 = v48;
      (*(v42 + 16))(v45, v26, v48);
      swift_storeEnumTagMultiPayload();
      sub_10000A568(&qword_10015F4A0, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
      swift_getOpaqueTypeConformance2();
      v29 = v47;
      _ConditionalContent<>.init(storage:)();
      sub_100059CA0(v29, v51, &qword_10015F498, &qword_1001167F8);
      swift_storeEnumTagMultiPayload();
      sub_10001878C();
      sub_1000C4478();
      _ConditionalContent<>.init(storage:)();

      sub_1000068B0(v29, &qword_10015F498, &qword_1001167F8);
      (*(v27 + 8))(v26, v28);
      v30 = type metadata accessor for SettingsPaneRecipe();
      return (*(*(v30 - 8) + 8))(v14, v30);
    }

    else
    {
      v35 = [objc_opt_self() systemGroupedBackgroundColor];
      *v9 = Color.init(_:)();
      swift_storeEnumTagMultiPayload();
      sub_10000A568(&qword_10015F328, &type metadata accessor for SettingsAnyPlatformViewControllerView, &protocol conformance descriptor for SettingsAnyPlatformViewControllerView);

      _ConditionalContent<>.init(storage:)();
      sub_100059CA0(v11, v51, &qword_10015F488, &qword_1001167F0);
      swift_storeEnumTagMultiPayload();
      sub_10001878C();
      sub_1000C4478();
      _ConditionalContent<>.init(storage:)();

      return sub_1000068B0(v11, &qword_10015F488, &qword_1001167F0);
    }
  }

  else if (EnumCaseMultiPayload)
  {

    v31 = v39;
    PreferencesControllerView.init(preferencesControllerRepresentableModel:)();
    v32 = v40;
    v33 = v46;
    (*(v40 + 16))(v45, v31, v46);
    swift_storeEnumTagMultiPayload();
    sub_10000A568(&qword_10015F4A0, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
    swift_getOpaqueTypeConformance2();
    v34 = v47;
    _ConditionalContent<>.init(storage:)();
    sub_100059CA0(v34, v51, &qword_10015F498, &qword_1001167F8);
    swift_storeEnumTagMultiPayload();
    sub_10001878C();
    sub_1000C4478();
    _ConditionalContent<>.init(storage:)();

    sub_1000068B0(v34, &qword_10015F498, &qword_1001167F8);
    return (*(v32 + 8))(v31, v33);
  }

  else
  {

    v22 = v37;
    SettingsAnyPlatformViewControllerView.init(platformViewControllerModel:)();
    v23 = v38;
    v24 = v44;
    (*(v38 + 16))(v9, v22, v44);
    swift_storeEnumTagMultiPayload();
    sub_10000A568(&qword_10015F328, &type metadata accessor for SettingsAnyPlatformViewControllerView, &protocol conformance descriptor for SettingsAnyPlatformViewControllerView);
    _ConditionalContent<>.init(storage:)();
    sub_100059CA0(v11, v51, &qword_10015F488, &qword_1001167F0);
    swift_storeEnumTagMultiPayload();
    sub_10001878C();
    sub_1000C4478();
    _ConditionalContent<>.init(storage:)();

    sub_1000068B0(v11, &qword_10015F488, &qword_1001167F0);
    return (*(v23 + 8))(v22, v24);
  }
}

uint64_t sub_1000C291C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = SettingsAnyViewRecipe.view.getter();
  v5 = *(sub_10004DED0(&qword_10015F410, &qword_1001167C0) + 52);
  v6 = type metadata accessor for SettingsAnyViewRecipe();
  result = (*(*(v6 - 8) + 16))(a2 + v5, a1, v6);
  *a2 = v4;
  return result;
}

uint64_t sub_1000C2A20@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(char *)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  v15 = *(v12 + 16);
  v15(&v18 - v13, a1, v11);
  a3(v14);
  v16 = sub_10004DED0(a4, a5);
  return (v15)(a6 + *(v16 + 52), a1, v11);
}

uint64_t sub_1000C2B40(uint64_t a1)
{
  v2 = type metadata accessor for SettingsNavigationSplitView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_100020E44(a1, v5, type metadata accessor for SettingsNavigationSplitView);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_100018848(v5, v12 + v11, type metadata accessor for SettingsNavigationSplitView);
  sub_100094AF4(0, 0, v8, &unk_100116718, v12);
}

uint64_t sub_1000C2D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  type metadata accessor for MainActor();
  *(v4 + 32) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000C2DB8, v6, v5);
}

uint64_t sub_1000C2DB8()
{

  type metadata accessor for SettingsNavigationSplitView(0);
  sub_10004DED0(&qword_10015F018, &qword_100116398);
  Bindable.wrappedValue.getter();
  sub_100010CD0();

  sub_1000951B0(10);

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1000C2E98()
{
  result = qword_10015F1E0;
  if (!qword_10015F1E0)
  {
    sub_100052374(&qword_10015F1D8, &qword_1001164F8);
    sub_100052374(&qword_10015F1E8, &qword_100116500);
    sub_100052374(&qword_10015F1F0, &qword_100116508);
    sub_100052374(&qword_10015F1F8, &qword_100116510);
    sub_100052374(&qword_10015F200, &qword_100116518);
    type metadata accessor for PrimarySettingsList(255);
    sub_10000A568(&qword_10015F208, type metadata accessor for PrimarySettingsList, &unk_100115634);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10000C310();
    swift_getOpaqueTypeConformance2();
    sub_1000525A0(&qword_10015F228, &qword_10015F230, &qword_100116528, &protocol conformance descriptor for _TaskValueModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F1E0);
  }

  return result;
}

void sub_1000C30C0(char *a1)
{
  type metadata accessor for SettingsNavigationSplitView(0);

  sub_1000BD204(a1);
}

uint64_t sub_1000C3148(void *a1)
{
  type metadata accessor for SettingsNavigationSplitView(0);

  return sub_1000BD544(a1);
}

unint64_t sub_1000C329C()
{
  result = qword_10015F280;
  if (!qword_10015F280)
  {
    sub_100052374(&qword_10015F160, &qword_100116480);
    sub_1000C3328();
    sub_10000BBC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F280);
  }

  return result;
}

unint64_t sub_1000C3328()
{
  result = qword_10015F288;
  if (!qword_10015F288)
  {
    sub_100052374(&qword_10015F270, &qword_1001165D0);
    sub_100052374(&qword_10015F158, &qword_100116478);
    sub_100052374(&qword_10015F150, &qword_100116470);
    sub_100052374(&qword_10015F148, &qword_100116468);
    sub_100052374(&qword_10015F140, &qword_100116460);
    sub_100052374(&qword_10015F138, &qword_100116458);
    sub_1000525A0(&qword_10015F268, &qword_10015F138, &qword_100116458, &protocol conformance descriptor for SubscriptionView<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10000BB70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F288);
  }

  return result;
}

uint64_t sub_1000C3560@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004DED0(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_100059CA0(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1000C3788()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_10000A568(&qword_10015F4E0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10000A568(&qword_10015F4E8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1000C3918;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1000C3918()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1000C3AD4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1000C3AD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C3B6C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SettingsNavigationSplitView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1000C3CAC()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1000C3D0C()
{
  result = qword_10015F338;
  if (!qword_10015F338)
  {
    sub_100052374(&qword_10015F330, &qword_100116640);
    sub_10000C000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F338);
  }

  return result;
}

uint64_t sub_1000C3D98@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_10004DED0(&qword_10015EB40, &qword_1001161A0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 25) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = v1 + v6;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *v7;
  v12 = *(v7 + 8);
  v13 = *(v7 + 17);
  v14 = *(v7 + 16);

  return sub_1000BC0F8(v1 + v4, v11, v12, v14, v13, v9, v10, a1);
}

uint64_t sub_1000C3E88(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  sub_10004DED0(&qword_10015F388, &qword_100116680);
  Binding.transaction(_:)();
  Binding.wrappedValue.setter();
}

void sub_1000C3F2C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1000C3F38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_1000BEAE8(a1, v4, v5, v6, (v1 + 5));
}

unint64_t sub_1000C4000()
{
  result = qword_10015F3C8;
  if (!qword_10015F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F3C8);
  }

  return result;
}

uint64_t sub_1000C406C(uint64_t a1)
{
  v4 = *(type metadata accessor for SettingsNavigationSplitView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A924;

  return sub_1000C2D20(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000C415C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 50, 7);
}

uint64_t sub_1000C41C0()
{
  v1 = type metadata accessor for SettingsNavigationSplitView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 28);
  sub_10004DED0(&qword_10015B0D8, &qword_10010FB60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 40);
  v9 = sub_10004DED0(&qword_10015F018, &qword_100116398);
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1000C4368()
{
  result = qword_10015F468;
  if (!qword_10015F468)
  {
    sub_100052374(&qword_10015F458, &qword_1001167D8);
    sub_1000C43EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F468);
  }

  return result;
}

unint64_t sub_1000C43EC()
{
  result = qword_10015F470;
  if (!qword_10015F470)
  {
    sub_100052374(&qword_10015F478, &qword_1001167E8);
    sub_10001878C();
    sub_1000C4478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F470);
  }

  return result;
}

unint64_t sub_1000C4478()
{
  result = qword_10015F490;
  if (!qword_10015F490)
  {
    sub_100052374(&qword_10015F498, &qword_1001167F8);
    sub_10000A568(&qword_10015F4A0, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F490);
  }

  return result;
}

uint64_t sub_1000C4554()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000ACE4;

  return sub_1000C0C4C(v0);
}

uint64_t sub_1000C4690(uint64_t a1, uint64_t a2, void (***a3)(void *, uint64_t), unint64_t a4)
{
  v63 = a2;
  v8 = type metadata accessor for SettingsNavigationEventRecord();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_10004DED0(qword_10015F538, &qword_100116A98);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v61 = &v48 - v17;
  __chkstk_darwin(v16);
  v18 = &v48;
  v20 = &v48 - v19;
  v21 = a4 >> 1;
  v22 = __OFSUB__(a4 >> 1, a3);
  v23 = (a4 >> 1) - a3;
  if (v22)
  {
    __break(1u);
    goto LABEL_21;
  }

  v62 = v11;
  v64 = v9;
  v65 = a1;
  v11 = *v4;
  v24 = *(*v4 + 16);
  v25 = v24 + v23;
  if (__OFADD__(v24, v23))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v18 = (v11[3] >> 1), v18 < v25))
  {
    if (v24 <= v25)
    {
      v27 = v24 + v23;
    }

    else
    {
      v27 = v24;
    }

    v11 = sub_100026144(isUniquelyReferenced_nonNull_native, v27, 1, v11, &qword_10015D5C8, &unk_100116AA0, &type metadata accessor for SettingsNavigationEventRecord);
    v18 = (v11[3] >> 1);
  }

  v28 = v18 - v11[2];
  if (v21 == a3)
  {
    if (v23 <= 0)
    {
      v23 = 0;
      v18 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v28 < v23)
  {
    __break(1u);
    goto LABEL_26;
  }

  result = swift_arrayInitWithCopy();
  if (v23 <= 0)
  {
LABEL_16:
    v18 = v21;
LABEL_17:
    if (v23 != v28)
    {
      result = swift_unknownObjectRelease();
LABEL_19:
      *v4 = v11;
      return result;
    }

LABEL_23:
    v60 = v18;
    v23 = v11[2];
    v25 = v64;
    v50 = *(v64 + 56);
    v51 = v64 + 56;
    v50(v20, 1, 1, v8);
    v28 = v61;
    sub_1000C56B4(v20, v61);
    v57 = *(v25 + 48);
    v58 = v25 + 48;
    if (v57(v28, 1, v8) == 1)
    {
LABEL_24:
      sub_1000C5724(v20);
      swift_unknownObjectRelease();
      result = sub_1000C5724(v28);
      goto LABEL_19;
    }

LABEL_26:
    v55 = (v25 + 32);
    v48 = (v25 + 8);
    v49 = (v25 + 16);
    v32 = v23;
    v52 = v15;
    do
    {
      sub_1000C5724(v28);
      v34 = v11[3];
      v35 = v34 >> 1;
      v36 = v32;
      if ((v34 >> 1) < v32 + 1)
      {
        v11 = sub_100026144((v34 > 1), v32 + 1, 1, v11, &qword_10015D5C8, &unk_100116AA0, &type metadata accessor for SettingsNavigationEventRecord);
        v35 = v11[3] >> 1;
      }

      v37 = *(v64 + 80);
      sub_1000C56B4(v20, v15);
      if (v57(v15, 1, v8) == 1)
      {
        v32 = v36;
LABEL_33:
        sub_1000C5724(v15);
        v33 = v32;
        v28 = v61;
      }

      else
      {
        v54 = v11 + ((v37 + 32) & ~v37);
        v38 = *v55;
        v32 = v36;
        if (v36 <= v35)
        {
          v39 = v35;
        }

        else
        {
          v39 = v36;
        }

        v56 = v39;
        v53 = v38;
        while (1)
        {
          v42 = v62;
          v43 = v15;
          v44 = v38;
          v38(v62, v43, v8);
          if (v56 == v32)
          {
            break;
          }

          sub_1000C5724(v20);
          v45 = v32;
          v46 = *(v64 + 72);
          v59 = v45;
          result = v44(&v54[v46 * v45], v42, v8);
          if (v60 == v21)
          {
            v40 = 1;
            v60 = v21;
            v15 = v52;
          }

          else
          {
            v15 = v52;
            if (v60 < a3 || v60 >= v21)
            {
              goto LABEL_46;
            }

            v47 = v60;
            (*v49)(v20, v63 + v46 * v60, v8);
            v40 = 0;
            v60 = v47 + 1;
          }

          v50(v20, v40, 1, v8);
          sub_1000C56B4(v20, v15);
          v41 = v57(v15, 1, v8);
          v32 = v59 + 1;
          v38 = v53;
          if (v41 == 1)
          {
            goto LABEL_33;
          }
        }

        (*v48)(v42, v8);
        v33 = v56;
        v32 = v56;
        v28 = v61;
        v15 = v52;
      }

      v11[2] = v33;
      sub_1000C56B4(v20, v28);
    }

    while (v57(v28, 1, v8) != 1);
    goto LABEL_24;
  }

  v30 = v11[2];
  v22 = __OFADD__(v30, v23);
  v31 = v30 + v23;
  if (!v22)
  {
    v11[2] = v31;
    goto LABEL_16;
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1000C4C68(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_100026144(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000C4DC4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_10006C7EC(*a1, *a2) & 1) == 0 || (sub_1000A2E68(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_1000A3B54(v3, v5);
}

char *sub_1000C4E44(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004DED0(&qword_10015C470, &qword_100112480);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000C4F78(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004DED0(&qword_10015F520, &qword_100116A78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000C50C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004DED0(&qword_10015F518, &qword_100116A70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000C51E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004DED0(&qword_10015F528, &qword_100116A88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void sub_1000C5300(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 2);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v9 > *(v7 + 3) >> 1)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v12 = v8 + v6;
      }

      else
      {
        v12 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_1000C4E44(isUniquelyReferenced_nonNull_native, v12, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((*(v7 + 3) >> 1) - *(v7 + 2) < v6)
  {
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
LABEL_16:
    *v4 = v7;
    return;
  }

  v13 = *(v7 + 2);
  v14 = __OFADD__(v13, v6);
  v15 = v13 + v6;
  if (!v14)
  {
    *(v7 + 2) = v15;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

void *sub_1000C5400(uint64_t a1)
{
  v2 = type metadata accessor for PrimarySettingsListSectionModel(0);
  v3 = __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = *(v3 + 28);
  v9 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v10 = *(v4 + 72);
  v11 = _swiftEmptyArrayStorage;
  while (1)
  {
    sub_10002F2E0(v9, v6, type metadata accessor for PrimarySettingsListSectionModel);
    v13 = *&v6[v8];

    result = sub_10002CA38(v6);
    v14 = *(v13 + 16);
    v15 = v11[2];
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v16 <= v11[3] >> 1)
    {
      if (*(v13 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v18 = v15 + v14;
      }

      else
      {
        v18 = v15;
      }

      v11 = sub_100026144(isUniquelyReferenced_nonNull_native, v18, 1, v11, &unk_10015FB80, &unk_100116A40, type metadata accessor for PrimarySettingsListItemModel);
      if (*(v13 + 16))
      {
LABEL_14:
        v19 = (v11[3] >> 1) - v11[2];
        result = type metadata accessor for PrimarySettingsListItemModel(0);
        if (v19 < v14)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v14)
        {
          v20 = v11[2];
          v21 = __OFADD__(v20, v14);
          v22 = v20 + v14;
          if (v21)
          {
            goto LABEL_23;
          }

          v11[2] = v22;
        }

        goto LABEL_4;
      }
    }

    if (v14)
    {
      goto LABEL_21;
    }

LABEL_4:
    v9 += v10;
    if (!--v7)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1000C564C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C56B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(qword_10015F538, &qword_100116A98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C5724(uint64_t a1)
{
  v2 = sub_10004DED0(qword_10015F538, &qword_100116A98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C578C()
{

  return swift_deallocClassInstance();
}

id sub_1000C57D0()
{
  v0 = [objc_allocWithZone(PSAboutHTMLSheetViewController) init];
  v1 = PSAboutDeviceSupervision();
  [v0 setHTMLContent:v1 isFragment:1];

  return v0;
}

uint64_t sub_1000C5838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C5928();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000C589C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C5928();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000C5900(uint64_t a1)
{
  sub_1000C5928();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000C5928()
{
  result = qword_10015F670;
  if (!qword_10015F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F670);
  }

  return result;
}

uint64_t sub_1000C597C(uint64_t a1)
{
  v3 = *(v1 + 56);

  v4 = sub_10006D3B8(a1, v3);

  if ((v4 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for PrimarySettingsListModel(0);
    sub_1000A2E28("Connected Headphones", 20, 2);
    swift_unknownObjectRelease();
  }

  *(v1 + 56) = a1;
}

id sub_1000C5A54()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    v3 = [objc_allocWithZone(ConnectedHeadphonesControllerWrapper) init];
    v4 = *(v0 + 64);
    *(v0 + 64) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1000C5AC0()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC11SettingsApp39ConnectedHeadphonesSectionModelProvider_deviceChangeStreamContinuation;
  (*(v3 + 16))(&v13 - v4, v1 + OBJC_IVAR____TtC11SettingsApp39ConnectedHeadphonesSectionModelProvider_deviceChangeStreamContinuation, v2);
  AsyncStream.Continuation.finish()();
  v7 = *(v3 + 8);
  v7(v5, v2);
  v8 = OBJC_IVAR____TtC11SettingsApp39ConnectedHeadphonesSectionModelProvider_observationTask;
  if (*(v1 + OBJC_IVAR____TtC11SettingsApp39ConnectedHeadphonesSectionModelProvider_observationTask))
  {

    Task.cancel()();
  }

  *(v1 + v8) = 0;

  v9 = sub_1000C5A54();
  [v9 setDeviceChangeHandler:0];

  *(v1 + 56) = _swiftEmptyArrayStorage;

  sub_100025CD8(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  sub_1000122B4(v1 + 40);

  v10 = OBJC_IVAR____TtC11SettingsApp39ConnectedHeadphonesSectionModelProvider_deviceChangeStream;
  v11 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  v7((v1 + v6), v2);

  return v1;
}

uint64_t sub_1000C5CDC()
{
  sub_1000C5AC0();

  return swift_deallocClassInstance();
}

uint64_t sub_1000C5D3C()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  v6 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v6 - 8);
  v8 = aBlock - v7;
  v9 = sub_1000C5A54();
  v10 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1000C8320;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000411C;
  aBlock[3] = &unk_100150FD8;
  v11 = _Block_copy(aBlock);

  [v9 setDeviceChangeHandler:v11];
  _Block_release(v11);

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v13;

  *(v1 + OBJC_IVAR____TtC11SettingsApp39ConnectedHeadphonesSectionModelProvider_observationTask) = sub_100094AF4(0, 0, v8, &unk_100116F18, v15);

  AsyncStream.Continuation.yield<A>()();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1000C601C(uint64_t a1)
{
  v1 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - v3;
  v5 = sub_10004DED0(&qword_10015F818, &qword_100116F28);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v2 + 16))(v4, Strong + OBJC_IVAR____TtC11SettingsApp39ConnectedHeadphonesSectionModelProvider_deviceChangeStreamContinuation, v1);

    AsyncStream.Continuation.yield<A>()();
    (*(v2 + 8))(v4, v1);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  (*(*(v10 - 8) + 56))(v7, v9, 1, v10);
  return sub_1000068B0(v7, &qword_10015F818, &qword_100116F28);
}

uint64_t sub_1000C6204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v4[10] = sub_10004DED0(&unk_10015F9E0, &unk_100112BB0);
  v4[11] = swift_task_alloc();
  v5 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[18] = v7;
  v4[19] = v6;

  return _swift_task_switch(sub_1000C6350, v7, v6);
}

uint64_t sub_1000C6350()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[14];
    v3 = v0[15];
    v4 = v0[12];
    v5 = v0[13];
    v6 = v0[11];
    (*(v5 + 16))(v2, Strong + OBJC_IVAR____TtC11SettingsApp39ConnectedHeadphonesSectionModelProvider_deviceChangeStream, v4);

    (*(v5 + 32))(v3, v2, v4);
    sub_10001AE08();
    AsyncSequence.debounce<>(for:tolerance:)();
    v7 = AsyncDebounceSequence.makeAsyncIterator()();
    v0[20] = v7;
    sub_1000068B0(v6, &unk_10015F9E0, &unk_100112BB0);
    v0[8] = v7;
    swift_beginAccess();
    v8 = static MainActor.shared.getter();
    v0[21] = v8;
    v9 = swift_task_alloc();
    v0[22] = v9;
    *v9 = v0;
    v9[1] = sub_1000C658C;

    return sub_100064180(v8, &protocol witness table for MainActor);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1000C658C(char a1)
{
  v4 = *v2;

  if (!v1)
  {

    *(v4 + 208) = a1;
    v6 = *(v4 + 144);
    v7 = *(v4 + 152);

    return _swift_task_switch(sub_1000C66B8, v6, v7);
  }

  return result;
}

uint64_t sub_1000C66B8()
{
  if ((*(v0 + 208) & 1) != 0 || (Strong = swift_weakLoadStrong(), (*(v0 + 184) = Strong) == 0))
  {
    v4 = *(v0 + 120);
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);

    (*(v6 + 8))(v4, v5);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 192) = v2;
    *v2 = v0;
    v2[1] = sub_1000C67F0;

    return sub_1000C6D3C();
  }
}

uint64_t sub_1000C67F0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 200) = a1;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);

  return _swift_task_switch(sub_1000C6918, v4, v3);
}

uint64_t sub_1000C6918()
{
  sub_1000C597C(v0[25]);

  v1 = static MainActor.shared.getter();
  v0[21] = v1;
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_1000C658C;

  return sub_100064180(v1, &protocol witness table for MainActor);
}

uint64_t sub_1000C69F0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PrimarySettingsListItemModel(0);
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 56);
  v7 = *(v6 + 16);
  if (v7)
  {
    v32 = v1;
    v33 = a1;
    v8 = v6 + 32;
    v31[1] = v6;

    v9 = _swiftEmptyArrayStorage;
    do
    {
      v38 = v7;
      sub_10006D7CC(v8, v39);
      v10 = v39[1];
      v11 = v9;
      v13 = v39[4];
      v12 = v39[5];
      v14 = v39[3];
      v36 = v39[2];
      v37 = v39[0];
      v15 = v40;

      sub_100039F14(v13, v12, v15);

      sub_10006D828(v39);
      v16 = v35;
      v17 = &v5[*(v35 + 20)];
      *v17 = v13;
      *(v17 + 1) = v12;
      v9 = v11;
      v17[16] = v15;
      *(v17 + 3) = v36;
      *(v17 + 4) = v14;
      type metadata accessor for PrimarySettingsListItemViewType(0);
      swift_storeEnumTagMultiPayload();
      *v5 = v37;
      *(v5 + 1) = v10;
      *(v5 + 2) = 0;
      *(v5 + 3) = 0;
      v5[32] = 5;
      *&v5[*(v16 + 24)] = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_10002C850(0, v11[2] + 1, 1, v11);
      }

      v19 = v9[2];
      v18 = v9[3];
      v20 = v38;
      if (v19 >= v18 >> 1)
      {
        v9 = sub_10002C850((v18 > 1), v19 + 1, 1, v9);
      }

      v9[2] = v19 + 1;
      sub_10002C634(v5, v9 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v19);
      v8 += 96;
      v7 = v20 - 1;
    }

    while (v7);

    v21 = *(v32 + 16);
    v22 = *(v32 + 24);
    v23 = *(v32 + 32);
    v24 = type metadata accessor for PrimarySettingsListSectionModel(0);
    v25 = *(v24 + 24);
    v26 = type metadata accessor for LocalizedStringResource();
    v27 = v33;
    (*(*(v26 - 8) + 56))(v33 + v25, 1, 1, v26);
    *v27 = v21;
    *(v27 + 8) = v22;
    *(v27 + 16) = v23;
    *(v27 + 24) = 0;
    *(v27 + 32) = 0;
    *(v27 + *(v24 + 28)) = v9;
    (*(*(v24 - 8) + 56))(v27, 0, 1, v24);
    return sub_100025974(v21, v22, v23);
  }

  else
  {
    v29 = type metadata accessor for PrimarySettingsListSectionModel(0);
    v30 = *(*(v29 - 8) + 56);

    return v30(a1, 1, 1, v29);
  }
}

uint64_t sub_1000C6D3C()
{
  v1[2] = v0;
  v2 = type metadata accessor for OSSignpostID();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for OSSignposter();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000C6E58, 0, 0);
}

uint64_t sub_1000C6E58()
{
  v19 = v0;
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v16 = v4;
  v17 = v0[3];
  v6 = sub_10000659C(v4, qword_100169718);
  (*(v2 + 16))(v1, v6, v4);
  static OSSignpostID.exclusive.getter();
  v7 = swift_slowAlloc();
  *v7 = 0;
  v8 = OSSignposter.logHandle.getter();
  v9 = static os_signpost_type_t.begin.getter();
  v10 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, v9, v10, "ConnectedHeadphonesSectionModelProvider.produceConnectedHeadphoneItems()", "", v7, 2u);
  sub_1000C7054(&v18);
  v11 = static os_signpost_type_t.end.getter();
  v12 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, v11, v12, "ConnectedHeadphonesSectionModelProvider.produceConnectedHeadphoneItems()", "", v7, 2u);

  v13 = v18;

  (*(v5 + 8))(v3, v17);
  (*(v2 + 8))(v1, v16);

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_1000C7054@<X0>(char **a1@<X8>)
{
  v1 = sub_1000C5A54();
  v2 = [v1 connectedHeadphoneInfo];

  sub_100008294(0, &qword_10015F7F8, HPSConnectedHeadphoneInfo_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    v24 = v3 & 0xC000000000000001;
    v6 = _swiftEmptyArrayStorage;
    v15 = i;
    while (1)
    {
      if (v24)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v23[0] = v7;
      sub_1000C74FC(v23, v22);

      if (*(&v22[0] + 1))
      {
        v18 = v22[2];
        v19 = v22[3];
        v20 = v22[4];
        v21 = v22[5];
        v16 = v22[0];
        v17 = v22[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1000C4F78(0, *(v6 + 2) + 1, 1, v6);
        }

        v11 = *(v6 + 2);
        v10 = *(v6 + 3);
        if (v11 >= v10 >> 1)
        {
          v6 = sub_1000C4F78((v10 > 1), v11 + 1, 1, v6);
        }

        *(v6 + 2) = v11 + 1;
        v12 = &v6[96 * v11];
        *(v12 + 2) = v16;
        *(v12 + 3) = v17;
        *(v12 + 6) = v20;
        *(v12 + 7) = v21;
        *(v12 + 4) = v18;
        *(v12 + 5) = v19;
        i = v15;
      }

      else
      {
        sub_1000068B0(v22, &qword_10015F800, &qword_100116EF8);
      }

      ++v5;
      if (v9 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_21:

  *a1 = v6;
  return result;
}

id sub_1000C7290@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004DED0(&qword_10015F808, &unk_100116F00);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  [a1 productId];
  result = [a1 vendorId];
  if (result >> 16)
  {
    __break(1u);
    goto LABEL_11;
  }

  UTType.init(_rawBluetoothProductID:rawVendorID:)();
  result = MobileGestalt_get_current_device();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v11 = result;
  appleInternalInstallCapability = MobileGestalt_get_appleInternalInstallCapability();

  if (!appleInternalInstallCapability)
  {
    return sub_1000C82B0(v9, a2);
  }

  sub_100059CA0(v9, v7, &qword_10015F808, &unk_100116F00);
  v13 = type metadata accessor for UTType();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v7, 1, v13) == 1)
  {
    UTType.init(_:)();
    sub_1000068B0(v9, &qword_10015F808, &unk_100116F00);
    result = v15(v7, 1, v13);
    if (result != 1)
    {
      return sub_1000068B0(v7, &qword_10015F808, &unk_100116F00);
    }
  }

  else
  {
    sub_1000068B0(v9, &qword_10015F808, &unk_100116F00);
    (*(v14 + 32))(a2, v7, v13);
    return (*(v14 + 56))(a2, 0, 1, v13);
  }

  return result;
}

double sub_1000C74FC@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004DED0(&qword_10015F808, &unk_100116F00);
  __chkstk_darwin(v4 - 8);
  v6 = &v51 - v5;
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = [*a1 deviceSpecifier];
  v13 = [v12 userInfo];

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
  }

  v58 = v60;
  v59 = v61;
  if (!*(&v61 + 1))
  {
    sub_1000068B0(&v58, &qword_10015C8D0, &unk_100116750);
    goto LABEL_13;
  }

  sub_10004DED0(&qword_10015C8D8, &unk_100112B40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v14 = v57[0];
  strcpy(v57, "hps-device-key");
  HIBYTE(v57[1]) = -18;
  AnyHashable.init<A>(_:)();
  if (!v14[2] || (v15 = sub_100017DC0(&v58), (v16 & 1) == 0))
  {

    sub_100017E04(&v58);
    goto LABEL_13;
  }

  sub_10001EE30(v14[7] + 32 * v15, &v60);
  sub_100017E04(&v58);

  sub_100008294(0, &qword_10015F810, HPSDevice_ptr);
  if (!swift_dynamicCast())
  {
LABEL_13:
    v19 = [v11 deviceID];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = [v11 deviceName];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = [v11 deviceSpecifier];
    v28 = [v27 properties];

    if (v28)
    {
      v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v29 = 0;
    }

    v30 = [v11 deviceSpecifier];
    v31 = [v30 userInfo];

    if (v31)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
    }

    *a2 = v20;
    *(a2 + 8) = v22;
    *(a2 + 16) = v24;
    *(a2 + 24) = v26;
    *(a2 + 32) = 0xD00000000000001ALL;
    *(a2 + 40) = 0x8000000100124B20;
    *(a2 + 48) = 2;
    *(a2 + 56) = v29;
    goto LABEL_20;
  }

  v17 = v57[0];
  sub_1000C7290(v57[0], v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_1000068B0(v6, &qword_10015F808, &unk_100116F00);
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    return result;
  }

  (*(v8 + 32))(v10, v6, v7);
  v33 = [v11 deviceID];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v35;

  v36 = [v11 deviceName];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v38;
  v55 = v37;

  v39 = UTType.identifier.getter();
  v52 = v40;
  v53 = v39;
  v41 = [v11 deviceSpecifier];
  v42 = [v41 properties];

  if (v42)
  {
    v43 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v43 = 0;
  }

  v44 = [v11 deviceSpecifier];
  v45 = [v44 userInfo];

  if (v45)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    (*(v8 + 8))(v10, v7);
  }

  else
  {
    (*(v8 + 8))(v10, v7);

    v58 = 0u;
    v59 = 0u;
  }

  v47 = v55;
  v46 = v56;
  *a2 = v34;
  *(a2 + 8) = v46;
  v49 = v53;
  v48 = v54;
  *(a2 + 16) = v47;
  *(a2 + 24) = v48;
  v50 = v52;
  *(a2 + 32) = v49;
  *(a2 + 40) = v50;
  *(a2 + 48) = 2;
  *(a2 + 56) = v43;
LABEL_20:
  result = *&v58;
  v32 = v59;
  *(a2 + 64) = v58;
  *(a2 + 80) = v32;
  return result;
}

void sub_1000C7AFC(void *a1, uint64_t a2, unint64_t a3)
{
  v7 = *(v3 + 56);
  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 0;
    v10 = v7 + 32;
    while (1)
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      sub_10006D7CC(v10, &v24);
      v11 = v24 == a2 && *(&v24 + 1) == a3;
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v9;
      sub_10006D828(&v24);
      v10 += 96;
      if (v8 == v9)
      {
        goto LABEL_10;
      }
    }

    v30[2] = v26;
    v30[3] = v27;
    v31[0] = v28;
    v31[1] = v29;
    v30[0] = v24;
    v30[1] = v25;
    if (*(&v27 + 1))
    {
      v17.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v17.super.isa = 0;
    }

    [a1 setProperties:v17.super.isa];

    sub_100059CA0(v31, &v24, &qword_10015C8D0, &unk_100116750);
    v18 = *(&v25 + 1);
    if (*(&v25 + 1))
    {
      v19 = sub_100018544(&v24, *(&v25 + 1));
      v20 = *(v18 - 8);
      __chkstk_darwin(v19);
      v22 = &v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v22);
      v23 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v20 + 8))(v22, v18);
      sub_10000665C(&v24);
    }

    else
    {
      v23 = 0;
    }

    [a1 setUserInfo:v23];
    swift_unknownObjectRelease();
    sub_10006D828(v30);
  }

  else
  {
LABEL_10:

    if (qword_10015AAC8 != -1)
    {
LABEL_22:
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000659C(v12, qword_1001696D0);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v30[0] = v16;
      *v15 = 141558275;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      *(v15 + 14) = sub_100025CF0(a2, a3, v30);
      _os_log_impl(&_mh_execute_header, v13, v14, "Could not find connected headphone item for identifier: %{private,mask.hash}s", v15, 0x16u);
      sub_10000665C(v16);
    }
  }
}

uint64_t sub_1000C7E74(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000C7E8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1000C7EA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1000C7EF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000C7F58()
{
  result = qword_10015F7F0;
  if (!qword_10015F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F7F0);
  }

  return result;
}

uint64_t sub_1000C7FF4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1000C8000(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4];
  v7 = a1[5];
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a1 + 48);

  return sub_10006F358(v6, v7, v11, v8, v9, v10);
}

void sub_1000C8098(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  if (*(v1 + 48) <= 1u)
  {
    if (!*(v1 + 48))
    {
      Hasher._combine(_:)(1uLL);
      NSObject.hash(into:)();
      return;
    }

    v2 = 2;
    goto LABEL_7;
  }

  if (*(v1 + 48) == 2)
  {
    v2 = 3;
LABEL_7:
    Hasher._combine(_:)(v2);

    String.hash(into:)();
    return;
  }

  if (*(v1 + 32) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = 4;
  }

  Hasher._combine(_:)(v3);
}

Swift::Int sub_1000C8168()
{
  Hasher.init(_seed:)();
  sub_1000C8098(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000C81AC(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000C8098(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000C82B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015F808, &unk_100116F00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C8328(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A924;

  return sub_1000C6204(a1, v4, v5, v6);
}

uint64_t getEnumTagSinglePayload for CoreFollowUpGroup(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CoreFollowUpGroup(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000C8534()
{
  result = qword_10015F820;
  if (!qword_10015F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F820);
  }

  return result;
}

unint64_t sub_1000C859C()
{
  result = qword_10015F828;
  if (!qword_10015F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F828);
  }

  return result;
}

uint64_t sub_1000C85F0()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_100008294(0, &qword_10015C9D0, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_10001F7D4();
  sub_10004DED0(&unk_10015FD30, &unk_100117260);
  sub_1000525A0(&qword_10015FA20, &unk_10015FD30, &unk_100117260, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10015F830 = result;
  return result;
}

uint64_t sub_1000C8834()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015F990, &unk_100115CF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - v4;
  v6 = sub_10004DED0(&qword_10015F9A8, &qword_100117210);
  __chkstk_darwin(v6 - 8);
  v8 = v20 - v7;
  v9 = OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_observationTasks;
  swift_beginAccess();
  v10 = *(*(v1 + v9) + 16);
  if (v10)
  {
    v20[1] = v9;
    v21 = v3;
    v22 = v2;

    v11 = 32;
    do
    {

      Task.cancel()();

      v11 += 8;
      --v10;
    }

    while (v10);

    v3 = v21;
    v2 = v22;
  }

  v12 = OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_updateStreamContinuation;
  swift_beginAccess();
  sub_1000CBC2C(v1 + v12, v8);
  v13 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v8, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    AsyncStream.Continuation.finish()();
    (*(v14 + 8))(v8, v13);
    v16 = OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_modelStreamContinuation;
    (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_modelStreamContinuation, v2);
    AsyncStream.Continuation.finish()();
    v17 = *(v3 + 8);
    v17(v5, v2);
    sub_1000122B4(v1 + 16);
    swift_unknownObjectRelease();
    sub_1000068B0(v1 + OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_updateStream, &unk_10015F9B0, &unk_1001170F0);
    sub_1000068B0(v1 + v12, &qword_10015F9A8, &qword_100117210);
    v18 = OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_modelStream;
    v19 = sub_10004DED0(&qword_10015EA20, &unk_1001170E0);
    (*(*(v19 - 8) + 8))(v1 + v18, v19);
    v17((v1 + v16), v2);

    return v1;
  }

  return result;
}

uint64_t sub_1000C8B90()
{
  sub_1000C8834();

  return swift_deallocClassInstance();
}

uint64_t sub_1000C8BF0()
{
  v0 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v92 = *(v0 - 8);
  v93 = v0;
  __chkstk_darwin(v0);
  v91 = v87 - v1;
  v2 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v2 - 8);
  v104 = v87 - v3;
  v4 = sub_10004DED0(&qword_10015F9A8, &qword_100117210);
  __chkstk_darwin(v4 - 8);
  v89 = v87 - v5;
  v6 = sub_10004DED0(&unk_10015F9B0, &unk_1001170F0);
  __chkstk_darwin(v6 - 8);
  v8 = v87 - v7;
  v9 = sub_10004DED0(&qword_10015C580, &unk_1001123B0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (v87 - v11);
  v13 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v88 = v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87[1] = v16;
  __chkstk_darwin(v15);
  v18 = v87 - v17;
  v19 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v97 = v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v94 = v87 - v24;
  v96 = v25;
  __chkstk_darwin(v23);
  v27 = v87 - v26;
  *v12 = 1;
  (*(v10 + 104))(v12, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v9);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v10 + 8))(v12, v9);
  v29 = (v20 + 16);
  v28 = *(v20 + 16);
  v101 = v27;
  v95 = v28;
  v28(v8, v27, v19);
  v102 = v19;
  v103 = v20;
  v30 = v20;
  v31 = v90;
  (*(v30 + 56))(v8, 0, 1, v19);
  v32 = OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_updateStream;
  swift_beginAccess();
  sub_1000BB1A0(v8, v31 + v32, &unk_10015F9B0, &unk_1001170F0);
  swift_endAccess();
  v33 = *(v14 + 16);
  v34 = v89;
  v98 = v18;
  v33(v89, v18, v13);
  v99 = v14;
  v100 = v13;
  (*(v14 + 56))(v34, 0, 1, v13);
  v35 = OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_updateStreamContinuation;
  swift_beginAccess();
  sub_1000BB1A0(v34, v31 + v35, &qword_10015F9A8, &qword_100117210);
  swift_endAccess();
  if (qword_10015AB38 != -1)
  {
    swift_once();
  }

  v36 = v94;
  sub_100015934(0xD000000000000024, 0x8000000100124C70, qword_10015F830, v94);
  v37 = type metadata accessor for TaskPriority();
  (*(*(v37 - 8) + 56))(v104, 1, 1, v37);
  v38 = v97;
  v39 = v36;
  v40 = v102;
  v89 = v29;
  v95(v97, v39, v102);
  v41 = v100;
  v33(v88, v98, v100);
  type metadata accessor for MainActor();
  v42 = static MainActor.shared.getter();
  v43 = v103;
  v44 = (*(v103 + 80) + 32) & ~*(v103 + 80);
  v45 = v99;
  v46 = (v96 + *(v99 + 80) + v44) & ~*(v99 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = v42;
  *(v47 + 24) = &protocol witness table for MainActor;
  (*(v43 + 32))(v47 + v44, v38, v40);
  (*(v45 + 32))(v47 + v46, v88, v41);
  v48 = sub_100094AF4(0, 0, v104, &unk_100117130, v47);
  v49 = OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_observationTasks;
  swift_beginAccess();
  v50 = *(v31 + v49);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v31 + v49) = v50;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v50 = sub_100015698(0, v50[2] + 1, 1, v50);
    *(v31 + v49) = v50;
  }

  v53 = v50[2];
  v52 = v50[3];
  v54 = v103;
  if (v53 >= v52 >> 1)
  {
    v50 = sub_100015698((v52 > 1), v53 + 1, 1, v50);
  }

  v50[2] = v53 + 1;
  v50[v53 + 4] = v48;
  *(v31 + v49) = v50;
  swift_endAccess();

  (*(v54 + 8))(v94, v40);
  v55 = type metadata accessor for TaskPriority();
  v56 = *(v55 - 8);
  v57 = *(v56 + 56);
  v58 = v104;
  v94 = v55;
  v88 = (v56 + 56);
  v89 = v57;
  (v57)(v104, 1, 1);
  v59 = swift_allocObject();
  swift_weakInit();
  v60 = v97;
  v95(v97, v101, v40);
  type metadata accessor for MainActor();

  v61 = static MainActor.shared.getter();
  v62 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v63 = v54;
  v64 = (v96 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  v66 = v40;
  v67 = v65;
  *(v65 + 16) = v61;
  *(v65 + 24) = &protocol witness table for MainActor;
  (*(v63 + 32))(v65 + v62, v60, v66);
  *(v67 + v64) = v59;

  v68 = sub_100094AF4(0, 0, v58, &unk_100117108, v67);
  v69 = OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_observationTasks;
  swift_beginAccess();
  v70 = *(v31 + v69);

  v71 = swift_isUniquelyReferenced_nonNull_native();
  *(v31 + v69) = v70;
  if ((v71 & 1) == 0)
  {
    v70 = sub_100015698(0, v70[2] + 1, 1, v70);
    *(v31 + v69) = v70;
  }

  v73 = v70[2];
  v72 = v70[3];
  if (v73 >= v72 >> 1)
  {
    v70 = sub_100015698((v72 > 1), v73 + 1, 1, v70);
  }

  v70[2] = v73 + 1;
  v70[v73 + 4] = v68;
  *(v31 + v69) = v70;
  swift_endAccess();
  v74 = v104;
  (v89)(v104, 1, 1, v94);
  v75 = swift_allocObject();
  swift_weakInit();

  v76 = static MainActor.shared.getter();
  v77 = swift_allocObject();
  v77[2] = v76;
  v77[3] = &protocol witness table for MainActor;
  v77[4] = v75;

  v78 = sub_100094AF4(0, 0, v74, &unk_100117118, v77);
  swift_beginAccess();
  v79 = *(v31 + v69);

  v80 = swift_isUniquelyReferenced_nonNull_native();
  *(v31 + v69) = v79;
  if ((v80 & 1) == 0)
  {
    v79 = sub_100015698(0, v79[2] + 1, 1, v79);
    *(v31 + v69) = v79;
  }

  v81 = v103;
  v83 = v79[2];
  v82 = v79[3];
  if (v83 >= v82 >> 1)
  {
    v79 = sub_100015698((v82 > 1), v83 + 1, 1, v79);
  }

  v79[2] = v83 + 1;
  v79[v83 + 4] = v78;
  *(v31 + v69) = v79;
  swift_endAccess();
  v84 = v91;
  v85 = v98;
  AsyncStream.Continuation.yield<A>()();

  (*(v92 + 8))(v84, v93);
  (*(v99 + 8))(v85, v100);
  return (*(v81 + 8))(v101, v102);
}

uint64_t sub_1000C989C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_10004DED0(&qword_10015C460, &qword_100112450);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[12] = v9;
  v5[13] = v8;

  return _swift_task_switch(sub_1000C9A08, v9, v8);
}

uint64_t sub_1000C9A08()
{
  sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  AsyncStream.makeAsyncIterator()();
  v1 = static MainActor.shared.getter();
  v0[14] = v1;
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_1000C9AE8;
  v3 = v0[7];

  return AsyncStream.Iterator.next(isolation:)(v0 + 16, v1, &protocol witness table for MainActor, v3);
}

uint64_t sub_1000C9AE8()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1000C9C2C, v3, v2);
}

uint64_t sub_1000C9C2C()
{
  if (*(v0 + 128) & 1) != 0 || (static Task<>.isCancelled.getter())
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    AsyncStream.Continuation.yield<A>()();
    (*(v4 + 8))(v3, v5);
    v6 = static MainActor.shared.getter();
    *(v0 + 112) = v6;
    v7 = swift_task_alloc();
    *(v0 + 120) = v7;
    *v7 = v0;
    v7[1] = sub_1000C9AE8;
    v8 = *(v0 + 56);

    return AsyncStream.Iterator.next(isolation:)(v0 + 128, v6, &protocol witness table for MainActor, v8);
  }
}

uint64_t sub_1000C9D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_10004DED0(&unk_10015FB90, &unk_100117148);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = sub_10004DED0(&unk_10015F9E0, &unk_100112BB0);
  v5[14] = swift_task_alloc();
  v5[15] = type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[17] = v8;
  v5[18] = v7;

  return _swift_task_switch(sub_1000C9ED4, v8, v7);
}

uint64_t sub_1000C9ED4()
{
  v1 = v0[14];
  sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  sub_1000525A0(&qword_10015C930, &qword_10015C900, &qword_1001123C0, &protocol conformance descriptor for AsyncStream<A>);
  AsyncSequence.debounce<>(for:tolerance:)();
  v2 = AsyncDebounceSequence.makeAsyncIterator()();
  v0[19] = v2;
  sub_1000068B0(v1, &unk_10015F9E0, &unk_100112BB0);
  v0[5] = v2;
  swift_beginAccess();
  v0[20] = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  v0[21] = v3;
  v4 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
  *v3 = v0;
  v3[1] = sub_1000CA070;

  return AsyncDebounceSequence.Iterator.next()(v0 + 26, v4);
}

uint64_t sub_1000CA070()
{
  v2 = *v1;
  *(v2 + 176) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000CA3A8;
  }

  else
  {
    *(v2 + 209) = *(v2 + 208);
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000CA210;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1000CA210()
{

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return _swift_task_switch(sub_1000CA274, v1, v2);
}

uint64_t sub_1000CA274()
{
  if (*(v0 + 209) == 1 || (Strong = swift_weakLoadStrong(), (*(v0 + 184) = Strong) == 0))
  {
LABEL_5:

    v3 = *(v0 + 8);

    return v3();
  }

  v2 = Strong;
  if (static Task<>.isCancelled.getter())
  {

    goto LABEL_5;
  }

  v5 = *(v2 + OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_group);
  v6 = swift_task_alloc();
  *(v0 + 192) = v6;
  *v6 = v0;
  v6[1] = sub_1000CA434;

  return sub_1000CB56C(v5);
}

uint64_t sub_1000CA3A8()
{
  *(v0 + 48) = *(v0 + 176);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1000CA434(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 200) = a1;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);

  return _swift_task_switch(sub_1000CA55C, v4, v3);
}

uint64_t sub_1000CA55C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[7] = v0[25];
  swift_unknownObjectRetain();
  sub_10004DED0(&unk_10015F990, &unk_100115CF0);
  AsyncStream.Continuation.yield(_:)();

  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);
  v0[20] = static MainActor.shared.getter();
  v4 = swift_task_alloc();
  v0[21] = v4;
  v5 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
  *v4 = v0;
  v4[1] = sub_1000CA070;

  return AsyncDebounceSequence.Iterator.next()(v0 + 26, v5);
}

uint64_t sub_1000CA6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_10004DED0(&unk_10015F9D0, &qword_100117140);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_10004DED0(&qword_10015EA20, &unk_1001170E0);
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = type metadata accessor for MainActor();
  v4[18] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[19] = v8;
  v4[20] = v7;

  return _swift_task_switch(sub_1000CA824, v8, v7);
}

uint64_t sub_1000CA824()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[15];
    v3 = v0[16];
    v4 = v0[13];
    v5 = v0[14];
    (*(v5 + 16))(v2, Strong + OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_modelStream, v4);

    (*(v5 + 32))(v3, v2, v4);
    AsyncStream.makeAsyncIterator()();
    swift_beginAccess();
    v6 = static MainActor.shared.getter();
    v0[21] = v6;
    v7 = swift_task_alloc();
    v0[22] = v7;
    *v7 = v0;
    v7[1] = sub_1000CA9FC;
    v8 = v0[10];

    return AsyncStream.Iterator.next(isolation:)(v0 + 8, v6, &protocol witness table for MainActor, v8);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1000CA9FC()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_1000CAB40, v3, v2);
}

uint64_t sub_1000CAB40()
{
  v1 = v0[8];
  if (v1 == 1)
  {
    goto LABEL_5;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    sub_1000CB55C(v1);
    goto LABEL_7;
  }

  v3 = Strong;
  if (static Task<>.isCancelled.getter())
  {

    sub_1000CB55C(v1);
LABEL_5:

LABEL_7:
    v4 = v0[16];
    v5 = v0[13];
    v6 = v0[14];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v6 + 8))(v4, v5);

    v7 = v0[1];

    return v7();
  }

  v9 = *(v3 + 32);
  if (v9)
  {
    if (v9 == v1)
    {
      goto LABEL_16;
    }

LABEL_14:
    if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for PrimarySettingsListModel(0);
      sub_1000A2E28("CFU No Group", 12, 2);
      swift_unknownObjectRelease();
    }

    goto LABEL_16;
  }

  if (v1)
  {
    goto LABEL_14;
  }

LABEL_16:
  *(v3 + 32) = v1;

  swift_unknownObjectRelease();
  v10 = static MainActor.shared.getter();
  v0[21] = v10;
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_1000CA9FC;
  v12 = v0[10];

  return AsyncStream.Iterator.next(isolation:)(v0 + 8, v10, &protocol witness table for MainActor, v12);
}