void sub_100096CA8(__int128 *a1)
{
  v2 = v1;
  v34 = a1[1];
  v35 = *a1;
  v4 = *(a1 + 32);
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000659C(v5, qword_100169658);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100025CF0(v9, v10, v36);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_100025CF0(0xD000000000000041, 0x8000000100123E20, v36);
    _os_log_impl(&_mh_execute_header, v6, v7, "Start (%s.%s)…", v8, 0x16u);
    swift_arrayDestroy();
  }

  v12 = [objc_opt_self() sharedNetworkObserver];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 isNetworkReachable];

    if (v14)
    {
      v15 = v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingSelectionForSuccessfulPrimaryAppleAccountSignIn;
      v16 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingSelectionForSuccessfulPrimaryAppleAccountSignIn);
      v17 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingSelectionForSuccessfulPrimaryAppleAccountSignIn + 8);
      v18 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingSelectionForSuccessfulPrimaryAppleAccountSignIn + 16);
      v19 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingSelectionForSuccessfulPrimaryAppleAccountSignIn + 24);
      *v15 = v35;
      *(v15 + 1) = v34;
      v20 = v15[32];
      v15[32] = v4;
      sub_100032660(v16, v17, v18, v19, v20);
      swift_getKeyPath();
      v36[5] = v2;
      sub_10002698C(a1, v36);
      sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v21 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 48);
      v22 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 56);
      v23 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 64);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      v26 = os_log_type_enabled(v24, v25);
      if (v23 >> 6 == 2)
      {
        if (v26)
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          v28 = "Presenting teen shield UI.";
          goto LABEL_16;
        }

LABEL_17:

        sub_100098CC4(8);
        sub_100045DB4(v21, v22, v23);
LABEL_22:
        sub_10009E740(v2);
        return;
      }

      if (v23 >> 6 == 1)
      {
        if (v26)
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          v28 = "Presenting shield UI.";
LABEL_16:
          _os_log_impl(&_mh_execute_header, v24, v25, v28, v27, 2u);

          goto LABEL_17;
        }

        goto LABEL_17;
      }

      if (v26)
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Presenting Primary Apple Account Sign in.", v33, 2u);
      }

      v32 = 2;
    }

    else
    {
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Presenting Network Alert.", v31, 2u);
      }

      v32 = 4;
    }

    sub_100098CC4(v32);
    goto LABEL_22;
  }

  __break(1u);
}

void sub_100097128(__int128 *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *a1;
  v163 = a1[1];
  v161 = v4;
  v162 = *(a1 + 32);
  v5 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v5 - 8);
  v164 = &v145 - v6;
  if (qword_10015AAA0 != -1)
  {
    goto LABEL_120;
  }

LABEL_2:
  v7 = type metadata accessor for Logger();
  v8 = sub_10000659C(v7, qword_100169658);

  v167 = v8;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *&v171 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = sub_100025CF0(v12, v13, &v171);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100025CF0(0xD00000000000002FLL, 0x8000000100123EB0, &v171);
    _os_log_impl(&_mh_execute_header, v9, v10, "Start (%s.%s)…", v11, 0x16u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  *&v171 = v2;
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__currentlyLoadingFollowUp;
  if (*(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__currentlyLoadingFollowUp + 32) != 255)
  {

    sub_10002698C(v3, &v171);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    sub_100026A04(v3);
    if (!os_log_type_enabled(v16, v17))
    {

      goto LABEL_14;
    }

    LODWORD(v169) = v17;
    v18 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    v170[0] = v168;
    *v18 = 136315906;
    v19 = _typeName(_:qualified:)();
    v21 = sub_100025CF0(v19, v20, v170);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_100025CF0(0xD00000000000002FLL, 0x8000000100123EB0, v170);
    *(v18 + 22) = 2082;
    v22 = sub_100026A58();
    v24 = sub_100025CF0(v22, v23, v170);

    *(v18 + 24) = v24;
    *(v18 + 32) = 2082;
    swift_getKeyPath();
    *&v171 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v25 = *(v15 + 32);
    if (v25 != 255)
    {
      v27 = *(v15 + 16);
      v26 = *(v15 + 24);
      v28 = *(v15 + 8);
      *&v171 = *v15;
      v29 = v171;
      *(&v171 + 1) = v28;
      *&v172 = v27;
      *(&v172 + 1) = v26;
      v173 = v25;
      sub_100029920(v171, v28, v27, v26, v25);

      v30 = sub_100026A58();
      v32 = v31;
      sub_100032660(v29, v28, v27, v26, v25);
      v33 = sub_100025CF0(v30, v32, v170);

      *(v18 + 34) = v33;
      _os_log_impl(&_mh_execute_header, v16, v169, "…Complete (%s.%s). Ignoring tap on follow up '%{public}s' because currently loading '%{public}s'.", v18, 0x2Au);
      swift_arrayDestroy();

      goto LABEL_8;
    }

LABEL_146:

    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
    return;
  }

  v34 = *v3;
  v168 = *(v3 + 8);
  v169 = v34;
  v35 = *(v3 + 16);
  v16 = *(v3 + 24);
  v36 = *(v3 + 32);
  if (v36 == 2)
  {
    v153 = *(v3 + 16);
    v158 = 0;
    v160 = v16;
    v16 = 0;
  }

  else if (v36 == 1)
  {
    v158 = 0;
    v16 = 0;
    v153 = 0;
    v160 = 0;
  }

  else
  {
    if (*(v3 + 32))
    {

      sub_10002698C(v3, &v171);
      v16 = Logger.logObject.getter();
      v86 = static os_log_type_t.fault.getter();

      sub_100026A04(v3);
      if (!os_log_type_enabled(v16, v86))
      {
        goto LABEL_14;
      }

      v87 = swift_slowAlloc();
      *&v171 = swift_slowAlloc();
      *v87 = 136315650;
      v88 = _typeName(_:qualified:)();
      v90 = sub_100025CF0(v88, v89, &v171);

      *(v87 + 4) = v90;
      *(v87 + 12) = 2080;
      *(v87 + 14) = sub_100025CF0(0xD00000000000002FLL, 0x8000000100123EB0, &v171);
      *(v87 + 22) = 2082;
      v91 = sub_100026A58();
      v93 = sub_100025CF0(v91, v92, &v171);

      *(v87 + 24) = v93;
      _os_log_impl(&_mh_execute_header, v16, v86, "…Complete (%s.%s). Ignoring tap on follow up '%{public}s' because its an unsupported case!", v87, 0x20u);
      swift_arrayDestroy();

LABEL_8:

      goto LABEL_14;
    }

    v160 = 0;
    v158 = v35;
    v153 = 0;
  }

  v159 = [objc_allocWithZone(FLTopLevelViewModel) initWithBundleIdentifier:FLFollowUpPreferencesBundleIdentifier clientIdentifier:0];
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  v38 = objc_opt_self();
  p_base_meths = &WalletAndApplePayOrPaymentAndContactlessListItemProvider.base_meths;
  v40 = [v38 defaultStore];
  if (!v40)
  {
    goto LABEL_147;
  }

  v41 = v40;
  v42 = [v40 aa_primaryAppleAccount];
  if (!v42 || (v43 = v42, v44 = [v42 identifier], v43, !v44))
  {

    goto LABEL_23;
  }

  v171 = 0uLL;
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  if (!*(&v171 + 1))
  {
LABEL_23:
    v45 = 0;
    goto LABEL_24;
  }

  v45 = String._bridgeToObjectiveC()();

LABEL_24:
  v46 = [v38 defaultStore];
  if (!v46)
  {
    goto LABEL_148;
  }

  v47 = v46;
  sub_100104DCC();

  isa = Array._bridgeToObjectiveC()().super.isa;

  v49 = [v159 groupsForPrimaryAccount:v45 secondaryAccounts:isa];

  sub_10004DED0(&unk_10015E8E0, &qword_100115AD0);
  v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v156 = v50;
  if (v50 >> 62)
  {
    goto LABEL_124;
  }

  v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v51)
  {
LABEL_64:

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *&v171 = swift_slowAlloc();
      *v82 = 136315394;
      v83 = _typeName(_:qualified:)();
      v85 = sub_100025CF0(v83, v84, &v171);

      *(v82 + 4) = v85;
      *(v82 + 12) = 2080;
      *(v82 + 14) = sub_100025CF0(0xD00000000000002FLL, 0x8000000100123EB0, &v171);
      _os_log_impl(&_mh_execute_header, v80, v81, "…Complete (%s.%s) no group.", v82, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_101;
  }

LABEL_27:
  v52 = 0;
  v53 = v50 & 0xC000000000000001;
  v148 = v50 & 0xFFFFFFFFFFFFFF8;
  v147 = v50 + 32;
  v54 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v54 = v158 & 0xFFFFFFFFFFFFLL;
  }

  v146 = v54;
  v165 = v3;
  v157 = v37;
  v149 = v50 & 0xC000000000000001;
  v154 = v2;
  v152 = v16;
  v150 = v51;
  while (1)
  {
    if (v53)
    {
      v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v56 = __OFADD__(v52, 1);
      v57 = v52 + 1;
      if (v56)
      {
        goto LABEL_123;
      }
    }

    else
    {
      if (v52 >= *(v148 + 16))
      {
        __break(1u);
LABEL_127:
        v98 = _CocoaArrayWrapper.endIndex.getter();
        if (!v98)
        {
          goto LABEL_128;
        }

LABEL_75:
        v99 = 0;
        v2 = v37 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v37 & 0xC000000000000001) != 0)
          {
            v100 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v99 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_122;
            }

            v100 = *(v37 + 8 * v99 + 32);
          }

          v16 = v100;
          v3 = v99 + 1;
          if (__OFADD__(v99, 1))
          {
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            v125 = _CocoaArrayWrapper.endIndex.getter();
            v50 = v156;
            v51 = v125;
            if (!v125)
            {
              goto LABEL_64;
            }

            goto LABEL_27;
          }

          v101 = [v100 identifier];
          if (!v101)
          {
            v101 = [v16 label];
            if (!v101)
            {
              break;
            }
          }

          v102 = v101;
          v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v105 = v104;

          if (v160)
          {
            if (v103 == v153 && v160 == v105)
            {

              v3 = v166;
              swift_unknownObjectRelease();

              goto LABEL_104;
            }

            v107 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v107)
            {
              goto LABEL_102;
            }

LABEL_92:

            goto LABEL_77;
          }

LABEL_77:
          ++v99;
          v68 = v3 == v98;
          p_base_meths = v165;
          v3 = v166;
          if (v68)
          {
            goto LABEL_128;
          }
        }

        if (!v160)
        {
LABEL_102:

          v3 = v166;
          swift_unknownObjectRelease();
LABEL_104:
          v2 = v154;
          p_base_meths = v165;
          goto LABEL_129;
        }

        goto LABEL_92;
      }

      v55 = *(v147 + 8 * v52);
      swift_unknownObjectRetain();
      v56 = __OFADD__(v52, 1);
      v57 = v52 + 1;
      if (v56)
      {
        goto LABEL_123;
      }
    }

    v58 = [v55 items];
    v151 = sub_100008294(0, &qword_10015F9A0, FLFollowUpItem_ptr);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v166 = v55;
    v155 = v57;
    if (v2 >> 62)
    {
      v59 = _CocoaArrayWrapper.endIndex.getter();
      if (v59)
      {
LABEL_38:
        v3 = 0;
        v16 = v2 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_119;
            }

            v60 = *(v2 + 8 * v3 + 32);
          }

          v61 = v60;
          v62 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            break;
          }

          v63 = [v60 uniqueIdentifier];
          if (v63)
          {
            v64 = v63;
            v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v67 = v66;

            v68 = v65 == v169 && v67 == v168;
            if (v68)
            {

LABEL_69:

              v2 = v154;
              p_base_meths = v165;
              v3 = v166;
              v37 = v157;
              goto LABEL_70;
            }

            v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v69)
            {
              goto LABEL_69;
            }
          }

          ++v3;
          if (v62 == v59)
          {
            goto LABEL_53;
          }
        }

        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        swift_once();
        goto LABEL_2;
      }
    }

    else
    {
      v59 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v59)
      {
        goto LABEL_38;
      }
    }

LABEL_53:

    v3 = v166;
    v70 = [v166 identifier];
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    p_base_meths = v165;
    if (v71 == v169 && v73 == v168)
    {

      v2 = v154;
      v37 = v157;
      v16 = v152;
      if (!v152)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v2 = v154;
      v37 = v157;
      v16 = v152;
      if ((v74 & 1) == 0 || !v152)
      {
        goto LABEL_63;
      }
    }

    if (!v146)
    {
      goto LABEL_106;
    }

    v75 = [v3 accountID];
    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;

    if (v76 == v158 && v16 == v78)
    {
      break;
    }

    v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v79)
    {
      goto LABEL_106;
    }

LABEL_63:
    swift_unknownObjectRelease();
    v52 = v155;
    v53 = v149;
    if (v155 == v150)
    {
      goto LABEL_64;
    }
  }

LABEL_106:
  v16 = &WalletAndApplePayOrPaymentAndContactlessListItemProvider.base_meths;
  if (([swift_unknownObjectRetain() shouldCoalesceItems] & 1) != 0 || ((v118 = objc_msgSend(v3, "items"), v119 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v118, v119 >> 62) ? (v120 = _CocoaArrayWrapper.endIndex.getter()) : (v120 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v120 != 1))
  {
    v124 = [v3 shouldCoalesceItems];
    swift_unknownObjectRelease();
    if (v124)
    {
      goto LABEL_117;
    }

    goto LABEL_71;
  }

  v121 = [v3 items];
  v122 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v122 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_143;
    }

LABEL_112:
    if ((v122 & 0xC000000000000001) != 0)
    {
      v123 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_146;
      }

      v123 = *(v122 + 32);
    }

    v61 = v123;
    swift_unknownObjectRelease();

    goto LABEL_70;
  }

  if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_112;
  }

LABEL_143:
  swift_unknownObjectRelease();

LABEL_117:
  v61 = 0;
LABEL_70:
  v94 = *(v37 + 16);
  *(v37 + 16) = v61;

LABEL_71:
  v95 = *(v37 + 16);
  swift_unknownObjectRetain();
  if (!v95)
  {
    if ([v3 shouldCoalesceItems])
    {
      v95 = *(v37 + 16);
      if (v95)
      {
        goto LABEL_72;
      }

LABEL_96:
      swift_unknownObjectRelease();
      v16 = 0;
      goto LABEL_130;
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRetain();
    v80 = Logger.logObject.getter();
    v108 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v80, v108))
    {
      v109 = swift_slowAlloc();
      *&v171 = swift_slowAlloc();
      *v109 = 136315650;
      v110 = _typeName(_:qualified:)();
      v112 = sub_100025CF0(v110, v111, &v171);

      *(v109 + 4) = v112;
      *(v109 + 12) = 2080;
      *(v109 + 14) = sub_100025CF0(0xD00000000000002FLL, 0x8000000100123EB0, &v171);
      *(v109 + 22) = 2082;
      v113 = [v3 identifier];
      v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v116 = v115;

      v117 = sub_100025CF0(v114, v116, &v171);

      *(v109 + 24) = v117;
      _os_log_impl(&_mh_execute_header, v80, v108, "…Complete (%s.%s) item is nil and %{public}s doesn't coalesce items.", v109, 0x20u);
      swift_arrayDestroy();
    }

    swift_unknownObjectRelease();
LABEL_101:

LABEL_140:
    return;
  }

LABEL_72:
  v96 = [v95 actions];
  if (!v96)
  {
    goto LABEL_96;
  }

  v97 = v96;
  sub_100008294(0, &qword_10015E8F0, FLFollowUpAction_ptr);
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v37 >> 62)
  {
    goto LABEL_127;
  }

  v98 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v98)
  {
    goto LABEL_75;
  }

LABEL_128:

  swift_unknownObjectRelease();
  v16 = 0;
  v2 = v154;
LABEL_129:
  v37 = v157;
LABEL_130:
  if (![objc_opt_self() shouldPreflightNetworkAccessForGroup:v3 item:*(v37 + 16)])
  {

LABEL_139:
    v171 = v161;
    v172 = v163;
    v173 = v162;
    sub_10002698C(p_base_meths, v170);
    sub_100099214(&v171, &OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__currentlyLoadingFollowUp, &unk_100115AA0, sub_1000A49E4);
    v138 = type metadata accessor for TaskPriority();
    v139 = v164;
    (*(*(v138 - 8) + 56))(v164, 1, 1, v138);
    type metadata accessor for MainActor();

    sub_10002698C(p_base_meths, v170);
    v140 = v37;
    v141 = v16;
    swift_unknownObjectRetain();

    v142 = static MainActor.shared.getter();
    v143 = swift_allocObject();
    *(v143 + 16) = v142;
    *(v143 + 24) = &protocol witness table for MainActor;
    *(v143 + 32) = v3;
    *(v143 + 40) = v140;
    *(v143 + 48) = v16;
    *(v143 + 56) = v2;
    v144 = *(p_base_meths + 1);
    *(v143 + 64) = *p_base_meths;
    *(v143 + 80) = v144;
    *(v143 + 96) = *(p_base_meths + 32);
    sub_100094AF4(0, 0, v139, &unk_100115AE0, v143);

    swift_unknownObjectRelease();

    goto LABEL_140;
  }

  v126 = [objc_opt_self() sharedNetworkObserver];
  if (!v126)
  {
    goto LABEL_149;
  }

  v127 = v126;

  v128 = [v127 isNetworkReachable];

  if (v128)
  {
    goto LABEL_139;
  }

  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    *v131 = 0;
    _os_log_impl(&_mh_execute_header, v129, v130, "Presenting Network Alert for Follow Up.", v131, 2u);
  }

  sub_100098CC4(5);

  v132 = Logger.logObject.getter();
  v133 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    *&v171 = swift_slowAlloc();
    *v134 = 136315394;
    v135 = _typeName(_:qualified:)();
    v137 = sub_100025CF0(v135, v136, &v171);

    *(v134 + 4) = v137;
    *(v134 + 12) = 2080;
    *(v134 + 14) = sub_100025CF0(0xD00000000000002FLL, 0x8000000100123EB0, &v171);
    _os_log_impl(&_mh_execute_header, v132, v133, "…Complete (%s.%s)", v134, 0x16u);
    swift_arrayDestroy();
  }

  swift_unknownObjectRelease();

LABEL_14:
}

uint64_t sub_10009884C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  *&v14[0] = v2;
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 16);
    v14[0] = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection);
    v14[1] = v4;
    v15 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 32);
    sub_100059CA0(v14, v13, &qword_10015E690, &qword_100115788);
    sub_1000B4C08(v2, v14, a1);
    swift_unknownObjectRelease();
    sub_1000068B0(v14, &qword_10015E690, &qword_100115788);
  }

  v5 = v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection;
  v6 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection);
  v7 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 8);
  v8 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 16);
  v9 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 24);
  v10 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v10;
  v11 = *(v5 + 32);
  *(v5 + 32) = *(a1 + 32);
  sub_100032660(v6, v7, v8, v9, v11);
  swift_getKeyPath();
  v13[0] = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100098A04(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  sub_100059CA0(v3, v2, &qword_10015E690, &qword_100115788);
  sub_100099214(v3, &OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cellToScrollAndHighlight, &unk_100115BF0, sub_1000A4BE0);
}

void sub_100098AAC(void *a1, uint64_t a2)
{
  v2 = a2;
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000659C(v3, qword_100169658);

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136315650;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100025CF0(v6, v7, &v14);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_100025CF0(0xD00000000000001ELL, 0x8000000100123E90, &v14);
    *(v5 + 22) = 2082;
    if (v2 == 10)
    {
      v9 = 0xE300000000000000;
      v10 = 7104878;
    }

    else
    {
      v10 = sub_1000BBA68(v2);
      v9 = v11;
    }

    v12 = sub_100025CF0(v10, v9, &v14);

    *(v5 + 24) = v12;
    _os_log_impl(&_mh_execute_header, oslog, v4, "...Complete (%s.%s), identifier: '%{public}s'", v5, 0x20u);
    swift_arrayDestroy();
  }
}

void sub_100098CC4(uint64_t a1)
{
  v2 = v1;
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000659C(v4, qword_100169658);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315650;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100025CF0(v8, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100025CF0(0xD000000000000014, 0x8000000100123E70, &v18);
    *(v7 + 22) = 2082;
    v11 = sub_1000BBA68(a1);
    v13 = sub_100025CF0(v11, v12, &v18);

    *(v7 + 24) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Start (%s.%s), identifier: '%{public}s'…", v7, 0x20u);
    swift_arrayDestroy();
  }

  if (a1 == 3 && (v14 = [objc_opt_self() currentDevice], v15 = objc_msgSend(v14, "sf_isInternalInstall"), v14, (v15 & 1) == 0))
  {

    sub_10009E380(v2, 3);
  }

  else
  {
    swift_getKeyPath();
    v18 = v2;
    sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveCurrentPresentedItemIdentifier) == 6)
    {
      v16 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingFollowUpController);
      *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingFollowUpController) = 0;
    }

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v18 = v2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10009E380(v2, a1);
  }
}

void sub_10009906C(void *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = v3 + *a2;
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v11 = *(v6 + 32);
  sub_100031DF8(*v6, v8, v9, v10, v11);
  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;
}

void sub_100099148(uint64_t *a1@<X0>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = v7 + *a4;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  *a5 = *v8;
  *(a5 + 8) = v10;
  *(a5 + 16) = v11;
  *(a5 + 24) = v12;
  v13 = *(v8 + 32);
  *(a5 + 32) = v13;
  sub_100031DF8(v9, v10, v11, v12, v13);
}

void sub_100099214(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = v4 + *a2;
  v13 = *v11;
  v12 = *(v11 + 8);
  v15 = *(v11 + 16);
  v14 = *(v11 + 24);
  v16 = *(v11 + 32);
  if (v16 != 255)
  {
    if (v10 != 255)
    {
      v26.i64[0] = *a1;
      v26.i64[1] = v6;
      v27 = v9;
      v28 = v8;
      v29 = v10;
      v24[0] = v13;
      v24[1] = v12;
      v24[2] = v15;
      v24[3] = v14;
      v25 = v16;
      if (sub_10002BB48(v24, &v26))
      {
        goto LABEL_8;
      }

LABEL_7:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      sub_1000068B0(a1, &qword_10015E690, &qword_100115788);

      return;
    }

LABEL_6:
    v17 = *v11;
    v18 = *(v11 + 8);
    v22 = v9;
    v23 = v8;
    v19 = v6;
    sub_100031DF8(v17, v18, v15, v14, v16);
    sub_100059CA0(a1, &v26, &qword_10015E690, &qword_100115788);
    sub_100032660(v13, v12, v15, v14, v16);
    sub_100032660(v7, v19, v22, v23, v10);
    goto LABEL_7;
  }

  if (v10 != 255)
  {
    goto LABEL_6;
  }

LABEL_8:
  v21 = *(a1 + 16);
  *v11 = *a1;
  *(v11 + 16) = v21;
  *(v11 + 32) = *(a1 + 32);

  sub_100032660(v13, v12, v15, v14, v16);
}

void sub_100099444(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v8;
  v9 = *(v3 + 32);
  *(v3 + 32) = *(a2 + 32);
  sub_100059CA0(a2, v10, &qword_10015E690, &qword_100115788);
  sub_100032660(v4, v5, v6, v7, v9);
}

double sub_1000994DC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double sub_100099588@<D0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v4 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__topLevelListManager);

  return result;
}

uint64_t sub_10009963C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__topLevelListManager) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100099778(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel);
  sub_100030A7C(v3, *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel + 8), *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel + 16));
  return v3;
}

uint64_t sub_100099858(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_100099904@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel);
  v6 = *(v4 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel + 8);
  v7 = *(v4 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel + 16);
  *a3 = v5;
  a3[1] = v6;
  a3[2] = v7;
  return sub_100030A7C(v5, v6, v7);
}

void *sub_1000999C4()
{
  v1 = v0;
  v161 = &type metadata for SecurityResearchDeviceSectionModelProvider;
  v162 = &off_100151E98;
  v159 = xmmword_1001157B0;
  v160 = 3;
  v2 = type metadata accessor for StaticPrimarySettingsListSingleSectionCollectionProvider();
  v3 = swift_allocObject();
  sub_100046A2C(&v159, v3 + 16);
  v161 = v2;
  v162 = &off_10014E308;
  *&v159 = v3;
  sub_10004DED0(&qword_10015E960, &unk_100116A50);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001103C0;
  v113 = v4;
  sub_100046A2C(&v159, v4 + 32);
  v5 = type metadata accessor for SupervisedDeviceSectionModelProvider();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 3;
  v157 = v5;
  v158 = &off_100151EC0;
  *&v156 = v6;
  v7 = swift_allocObject();
  sub_100046A2C(&v156, v7 + 16);
  v157 = v2;
  v158 = &off_10014E308;
  *&v156 = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001103C0;
  v112 = v8;
  sub_100046A2C(&v156, v8 + 32);
  v9 = type metadata accessor for RemoteControlSectionModelProvider();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100110E00;
  *(v10 + 32) = 3;
  *(v10 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + 48) = &off_100150230;
  *(v10 + 56) = 0;
  swift_unknownObjectWeakAssign();
  v154 = v9;
  v155 = &off_100151D78;
  *&v153 = v10;
  v11 = swift_allocObject();
  sub_100046A2C(&v153, v11 + 16);
  v154 = v2;
  v155 = &off_10014E308;
  *&v153 = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001103C0;
  v111 = v12;
  sub_100046A2C(&v153, v12 + 32);
  v13 = sub_10009BA14(v1);
  v14 = type metadata accessor for ComposablePrimarySettingsListSectionProvider();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1001157C0;
  *(v15 + 32) = 3;
  *(v15 + 40) = v13;
  v151 = v14;
  v152 = &off_10014E2B8;
  *&v150 = v15;
  v16 = swift_allocObject();
  sub_100046A2C(&v150, v16 + 16);
  v151 = v2;
  v152 = &off_10014E308;
  *&v150 = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1001103C0;
  v110 = v17;
  sub_100046A2C(&v150, v17 + 32);
  v18 = type metadata accessor for CoreFollowUpSectionModelProvider(0);
  v19 = swift_allocObject();

  v21 = sub_100023268(v20, 2, v19);

  v149 = &off_100151230;
  v148 = v18;
  *&v147 = v21;
  v22 = swift_allocObject();
  sub_100046A2C(&v147, v22 + 16);
  v149 = &off_10014E308;
  v148 = v2;
  *&v147 = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1001103C0;
  v109 = v23;
  sub_100046A2C(&v147, v23 + 32);
  v24 = type metadata accessor for CoreFollowUpNoGroupSectionCollectionModelProvider(0);
  swift_allocObject();

  v26 = sub_100023898(v25, &off_100150230, 0);

  v146 = &off_100151148;
  v145 = v24;
  *&v144 = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1001103C0;
  v108 = v27;
  sub_100046A2C(&v144, v27 + 32);
  swift_allocObject();

  v29 = sub_100023898(v28, &off_100150230, 2);

  v143 = &off_100151148;
  v142 = v24;
  *&v141 = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1001103C0;
  v107 = v30;
  sub_100046A2C(&v141, v30 + 32);
  v31 = sub_10009BDF0(v1);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1001157D0;
  *(v32 + 32) = 3;
  *(v32 + 40) = v31;
  v140 = &off_10014E2B8;
  v139 = v14;
  *&v138 = v32;
  v33 = swift_allocObject();
  sub_100046A2C(&v138, v33 + 16);
  v140 = &off_10014E308;
  v139 = v2;
  *&v138 = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1001103C0;
  v106 = v34;
  sub_100046A2C(&v138, v34 + 32);
  swift_allocObject();

  v36 = sub_100023898(v35, &off_100150230, 1);

  v136 = v24;
  v137 = &off_100151148;
  *&v135 = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1001103C0;
  v105 = v37;
  sub_100046A2C(&v135, v37 + 32);
  v38 = swift_allocObject();

  v40 = sub_100023268(v39, 4, v38);

  v133 = v18;
  v134 = &off_100151230;
  *&v132 = v40;
  v41 = swift_allocObject();
  sub_100046A2C(&v132, v41 + 16);
  v133 = v2;
  v134 = &off_10014E308;
  *&v132 = v41;
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1001103C0;
  v104 = v42;
  sub_100046A2C(&v132, v42 + 32);
  v43 = swift_allocObject();

  v45 = sub_100023268(v44, 5, v43);

  v130 = v18;
  v131 = &off_100151230;
  *&v129 = v45;
  v46 = swift_allocObject();
  sub_100046A2C(&v129, v46 + 16);
  v130 = v2;
  v131 = &off_10014E308;
  *&v129 = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1001103C0;
  v103 = v47;
  sub_100046A2C(&v129, v47 + 32);
  v48 = swift_allocObject();

  v50 = sub_100023268(v49, 6, v48);

  v127 = v18;
  v128 = &off_100151230;
  *&v126 = v50;
  v51 = swift_allocObject();
  sub_100046A2C(&v126, v51 + 16);
  v127 = v2;
  v128 = &off_10014E308;
  *&v126 = v51;
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1001103C0;
  v102 = v52;
  sub_100046A2C(&v126, v52 + 32);
  v53 = [objc_opt_self() currentDevice];
  v54 = [v53 sf_isInternalInstall];

  if (v54)
  {
    v55 = swift_allocObject();

    v57 = sub_100023268(v56, 7, v55);

    v124 = v18;
    v125 = &off_100151230;
    *&v123 = v57;
    v58 = swift_allocObject();
    sub_100046A2C(&v123, v58 + 16);
    v124 = v2;
    v125 = &off_10014E308;
    *&v123 = v58;
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1001103C0;
    sub_100046A2C(&v123, v59 + 32);
    sub_10004DED0(&qword_10015E980, &qword_100115C58);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1001103C0;
    *(v60 + 32) = v59;
    v61 = v60 + 32;
    v101 = sub_100022C64(v60, sub_100023C38, &qword_10015E990, &qword_100115C68);
    swift_setDeallocating();
    sub_1000068B0(v61, &qword_10015E988, &qword_100115C60);
    swift_deallocClassInstance();
  }

  else
  {
    v101 = _swiftEmptyArrayStorage;
  }

  v62 = sub_100023CA8();
  v124 = type metadata accessor for ConnectedHeadphonesSectionModelProvider(0);
  v125 = &off_100150F88;
  *&v123 = v62;
  v63 = swift_allocObject();
  sub_100046A2C(&v123, v63 + 16);
  v124 = v2;
  v125 = &off_10014E308;
  *&v123 = v63;
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v123, v100 + 32);
  v64 = sub_10009BFA8(v1);
  v65 = type metadata accessor for StaticPrimarySettingsListSectionProvider();
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1001157E0;
  *(v66 + 32) = 3;
  *(v66 + 40) = v64;
  v121 = v65;
  v122 = &off_10014E2E0;
  *&v120 = v66;
  v67 = swift_allocObject();
  sub_100046A2C(&v120, v67 + 16);
  v121 = v2;
  v122 = &off_10014E308;
  *&v120 = v67;
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v120, v99 + 32);
  v68 = sub_10009C690(v1);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1001157F0;
  *(v69 + 32) = 3;
  *(v69 + 40) = v68;
  v118 = v14;
  v119 = &off_10014E2B8;
  *&v117 = v69;
  v70 = swift_allocObject();
  sub_100046A2C(&v117, v70 + 16);
  v118 = v2;
  v119 = &off_10014E308;
  *&v117 = v70;
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v117, v98 + 32);
  v71 = sub_10009CE6C();
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_100115800;
  *(v72 + 32) = 3;
  *(v72 + 40) = v71;
  v115 = v65;
  v116 = &off_10014E2E0;
  *&v114 = v72;
  v73 = swift_allocObject();
  sub_100046A2C(&v114, v73 + 16);
  v115 = v2;
  v116 = &off_10014E308;
  *&v114 = v73;
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v114, v97 + 32);
  v74 = sub_10009D0B0(v1);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_100115810;
  *(v75 + 32) = 3;
  *(v75 + 40) = v74;
  v115 = v65;
  v116 = &off_10014E2E0;
  *&v114 = v75;
  v76 = swift_allocObject();
  sub_100046A2C(&v114, v76 + 16);
  v115 = v2;
  v116 = &off_10014E308;
  *&v114 = v76;
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v114, v77 + 32);
  v78 = sub_10009D3E0(v1);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_100115820;
  *(v79 + 32) = 259;
  *(v79 + 40) = v78;
  v115 = v65;
  v116 = &off_10014E2E0;
  *&v114 = v79;
  v80 = swift_allocObject();
  sub_100046A2C(&v114, v80 + 16);
  v115 = v2;
  v116 = &off_10014E308;
  *&v114 = v80;
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v114, v81 + 32);
  v115 = &type metadata for PrimarySettingsListItemIdentifier;
  v116 = &off_10014D978;
  v82 = swift_allocObject();
  *&v114 = v82;
  *(v82 + 16) = 45;
  *(v82 + 24) = 0;
  *(v82 + 32) = 0;
  *(v82 + 40) = 0;
  *(v82 + 48) = 6;
  sub_10004DED0(&qword_10015E968, &qword_100115C40);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v114, v83 + 32);
  sub_10004DED0(&qword_10015E970, &qword_100115C48);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_1001103C0;
  *(v84 + 32) = v83;
  v85 = v84 + 32;
  v86 = sub_100022C64(v84, sub_100022F00, &qword_10015E998, &qword_100115C70);
  swift_setDeallocating();
  sub_1000068B0(v85, &qword_10015E978, &qword_100115C50);
  swift_deallocClassInstance();
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_100115830;
  *(v87 + 32) = 3;
  *(v87 + 40) = v86;
  v115 = v65;
  v116 = &off_10014E2E0;
  *&v114 = v87;
  v88 = swift_allocObject();
  sub_100046A2C(&v114, v88 + 16);
  v115 = v2;
  v116 = &off_10014E308;
  *&v114 = v88;
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v114, v89 + 32);
  v90 = sub_10009D698(v1);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_100115840;
  *(v91 + 32) = 3;
  *(v91 + 40) = v90;
  v115 = v65;
  v116 = &off_10014E2E0;
  *&v114 = v91;
  v92 = swift_allocObject();
  sub_100046A2C(&v114, v92 + 16);
  v115 = v2;
  v116 = &off_10014E308;
  *&v114 = v92;
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v114, v93 + 32);
  sub_10004DED0(&qword_10015E980, &qword_100115C58);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_100115850;
  *(v94 + 32) = v113;
  *(v94 + 40) = v112;
  *(v94 + 48) = v111;
  *(v94 + 56) = v110;
  *(v94 + 64) = v109;
  *(v94 + 72) = v108;
  *(v94 + 80) = v107;
  *(v94 + 88) = v106;
  *(v94 + 96) = v105;
  *(v94 + 104) = v104;
  *(v94 + 112) = v103;
  *(v94 + 120) = v102;
  *(v94 + 128) = v101;
  *(v94 + 136) = v100;
  *(v94 + 144) = v99;
  *(v94 + 152) = v98;
  *(v94 + 160) = v97;
  *(v94 + 168) = v77;
  *(v94 + 176) = v81;
  *(v94 + 184) = v89;
  *(v94 + 192) = v93;
  v95 = sub_100022C64(v94, sub_100023C38, &qword_10015E990, &qword_100115C68);
  swift_setDeallocating();
  sub_10004DED0(&qword_10015E988, &qword_100115C60);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v95;
}

uint64_t sub_10009A8A4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  *&v18[0] = v2;
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = (v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
  v5 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 48);
  v18[2] = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 32);
  v18[3] = v5;
  v18[4] = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 64);
  v6 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 16);
  v18[0] = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
  v18[1] = v6;
  sub_100063D94(v18, &v13);
  v7 = sub_10006D57C(a1, v18);
  sub_100063DF0(v18);
  if (!v7)
  {
    *&v13 = "System State Snapshot Changed";
    *(&v13 + 1) = 29;
    LOBYTE(v14) = 2;
    PassthroughSubject.send(_:)();
  }

  v8 = v4[3];
  v15 = v4[2];
  v16 = v8;
  v17 = v4[4];
  v9 = v4[1];
  v13 = *v4;
  v14 = v9;
  v10 = *(a1 + 48);
  v4[2] = *(a1 + 32);
  v4[3] = v10;
  v4[4] = *(a1 + 64);
  v11 = *(a1 + 16);
  *v4 = *a1;
  v4[1] = v11;
  return sub_100063DF0(&v13);
}

uint64_t sub_10009A9F4@<X0>(uint64_t *a1@<X0>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  *&v13[0] = v4;
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = (v4 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
  v13[0] = *(v4 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
  v6 = *(v4 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 64);
  v8 = *(v4 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 16);
  v7 = *(v4 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 32);
  v13[3] = *(v4 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 48);
  v13[4] = v6;
  v13[1] = v8;
  v13[2] = v7;
  v9 = *(v4 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 48);
  a3[2] = *(v4 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 32);
  a3[3] = v9;
  a3[4] = v5[4];
  v10 = v5[1];
  *a3 = *v5;
  a3[1] = v10;
  return sub_100063D94(v13, &v12);
}

uint64_t sub_10009AADC(_OWORD *a1)
{
  v1 = a1[3];
  v5[2] = a1[2];
  v5[3] = v1;
  v5[4] = a1[4];
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  sub_100063D94(v5, &v4);
  return sub_10009AB30(v5);
}

uint64_t sub_10009AB30(unint64_t *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 32);
  v4 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 64);
  v11[3] = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 48);
  v11[4] = v4;
  v5 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
  v11[1] = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 16);
  v11[2] = v3;
  v11[0] = v5;
  sub_100063D94(v11, v10);
  v6 = sub_10006D57C(v11, a1);
  sub_100063DF0(v11);
  if (v6)
  {
    return sub_10009A8A4(a1, v7);
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v10[0] = v1;
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_100063DF0(a1);
}

uint64_t sub_10009AC8C@<X0>(uint64_t *a1@<X0>, void *a4@<X4>, uint64_t *a5@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = v7 + *a4;
  result = swift_unknownObjectWeakLoadStrong();
  v10 = *(v8 + 8);
  *a5 = result;
  a5[1] = v10;
  return result;
}

uint64_t sub_10009AD4C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_10009AE14()
{
  v0 = [objc_opt_self() sharedInstance];
  [v0 setLaunchHasCompleted];
}

uint64_t sub_10009AE74(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    PassthroughSubject.send(_:)();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10009AF2C();
  }

  return result;
}

uint64_t sub_10009AF2C()
{
  v0 = type metadata accessor for OSSignpostID();
  v23 = *(v0 - 8);
  v24 = v0;
  __chkstk_darwin(v0);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OSSignposter();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v11;

  sub_100094AF4(0, 0, v9, &unk_100115D60, v13);

  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v14 = sub_10000659C(v3, qword_100169718);
  (*(v4 + 16))(v6, v14, v3);
  static OSSignpostID.exclusive.getter();
  v15 = swift_slowAlloc();
  *v15 = 0;
  v16 = OSSignposter.logHandle.getter();
  v17 = static os_signpost_type_t.begin.getter();
  v18 = OSSignpostID.rawValue.getter();
  v22 = v3;
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v17, v18, "PrimarySettingsListDataModelSnapshotProviding.performPostApplicationLaunchSetup()", "", v15, 2u);
  sub_1000A2D88();
  v19 = static os_signpost_type_t.end.getter();
  v20 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v19, v20, "PrimarySettingsListDataModelSnapshotProviding.performPostApplicationLaunchSetup()", "", v15, 2u);

  (*(v23 + 8))(v2, v24);
  return (*(v4 + 8))(v6, v22);
}

void sub_10009B2E0(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 launchHasCompleted];

  if (v3)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      PassthroughSubject.send(_:)();
    }
  }
}

uint64_t sub_10009B3A4@<X0>(uint64_t *a3@<X8>)
{
  if (qword_10015AAC8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000659C(v4, qword_1001696D0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21[0] = v8;
    *v7 = 136446210;
    v9 = StaticString.description.getter();
    v11 = sub_100025CF0(v9, v10, v21);

    *(v7 + 4) = v11;
    sub_10000665C(v8);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Requesting new snapshot for data model due to invalidation.", v15, 2u);
    }

    v16 = sub_10001A468();
    v18 = v17;
    v20 = v19;

    *a3 = v16;
    a3[1] = v18;
    a3[2] = v20;
  }

  else
  {
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 1;
  }

  return result;
}

void *sub_10009B5D0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_cancellables;
  swift_beginAccess();
  v21 = v2;
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for AnyCancellable();
    sub_10000A520(&unk_10015D9E0, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    result = Set.Iterator.init(_cocoa:)();
    v3 = v23;
    v5 = v24;
    v6 = v25;
    v7 = v26;
    v8 = v27;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v5 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);

    v7 = 0;
  }

  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v7;
    v13 = v8;
    v14 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
LABEL_18:
      sub_1000813A0(v3);
      *(v1 + v21) = &_swiftEmptySetSingleton;

      sub_1000068B0(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingEngagementLinkData, &qword_10015EB40, &qword_1001161A0);
      sub_100032660(*(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingSelectionForSuccessfulPrimaryAppleAccountSignIn), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingSelectionForSuccessfulPrimaryAppleAccountSignIn + 8), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingSelectionForSuccessfulPrimaryAppleAccountSignIn + 16), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingSelectionForSuccessfulPrimaryAppleAccountSignIn + 24), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingSelectionForSuccessfulPrimaryAppleAccountSignIn + 32));
      sub_100032660(*(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 8), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 16), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 24), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 32));
      sub_100032660(*(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cellToScrollAndHighlight), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cellToScrollAndHighlight + 8), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cellToScrollAndHighlight + 16), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cellToScrollAndHighlight + 24), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cellToScrollAndHighlight + 32));

      sub_100032660(*(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__currentlyLoadingFollowUp), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__currentlyLoadingFollowUp + 8), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__currentlyLoadingFollowUp + 16), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__currentlyLoadingFollowUp + 24), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__currentlyLoadingFollowUp + 32));

      sub_100030AC8(*(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel + 8), *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel + 16));

      v17 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 48);
      v22[2] = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 32);
      v22[3] = v17;
      v22[4] = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 64);
      v18 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 16);
      v22[0] = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
      v22[1] = v18;
      sub_100063DF0(v22);
      sub_1000122B4(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__selectionDelegate);
      sub_1000122B4(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__updateDelegate);
      v19 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel___observationRegistrar;
      v20 = type metadata accessor for ObservationRegistrar();
      (*(*(v20 - 8) + 8))(v1 + v19, v20);
      return v1;
    }

    while (1)
    {
      AnyCancellable.cancel()();

      v7 = v14;
      v8 = v15;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for AnyCancellable();
        swift_dynamicCast();
        v14 = v7;
        v15 = v8;
        if (*&v22[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v6 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10009B9B4()
{
  sub_10009B5D0();

  return swift_deallocClassInstance();
}

void *sub_10009BA14(uint64_t a1)
{
  v1 = sub_10009BC40(a1);
  v2 = type metadata accessor for StaticPrimarySettingsListSectionProvider();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001157C0;
  *(v3 + 32) = 3;
  *(v3 + 40) = v1;
  v24 = v2;
  v25 = &off_10014E2E0;
  *&v23 = v3;
  sub_10004DED0(&qword_10015E9B8, &qword_100115C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001103C0;
  sub_100046A2C(&v23, inited + 32);
  v5 = type metadata accessor for CoreFollowUpSectionModelProvider(0);
  v6 = swift_allocObject();

  v8 = sub_100023268(v7, 0, v6);

  v21 = v5;
  v22 = &off_100151230;
  *&v20 = v8;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v20, v9 + 32);
  v10 = swift_allocObject();

  v12 = sub_100023268(v11, 1, v10);

  v18 = v5;
  v19 = &off_100151230;
  *&v17 = v12;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v17, v13 + 32);
  sub_10004DED0(&qword_10015E9C0, &qword_100115C98);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1001103E0;
  *(v14 + 32) = inited;
  *(v14 + 40) = v9;
  *(v14 + 48) = v13;
  v15 = sub_100022C64(v14, sub_1000235E8, &qword_10015E9D0, &qword_100115CA8);
  swift_setDeallocating();
  sub_10004DED0(&qword_10015E9C8, &qword_100115CA0);
  swift_arrayDestroy();
  return v15;
}

void *sub_10009BC40(uint64_t a1)
{
  v1 = type metadata accessor for PrimaryAppleAccountListItemProvider();
  v2 = swift_allocObject();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 6;
  v16 = v1;
  v17 = &off_100151D50;
  *&v15 = v2;
  sub_10004DED0(&qword_10015E968, &qword_100115C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001103C0;
  sub_100046A2C(&v15, inited + 32);
  v4 = type metadata accessor for FamilyListItemProvider(0);
  v5 = swift_allocObject();

  v7 = sub_100022B88(v6, v5);

  v13 = v4;
  v14 = &off_100151B58;
  *&v12 = v7;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v12, v8 + 32);
  sub_10004DED0(&qword_10015E970, &qword_100115C48);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1001103D0;
  *(v9 + 32) = inited;
  *(v9 + 40) = v8;
  v10 = sub_100022C64(v9, sub_100022F00, &qword_10015E998, &qword_100115C70);
  swift_setDeallocating();
  sub_10004DED0(&qword_10015E978, &qword_100115C50);
  swift_arrayDestroy();
  return v10;
}

void *sub_10009BDF0(uint64_t a1)
{
  v1 = type metadata accessor for ManagedAppleAccountSectionModelProvider();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1001157D0;
  *(v2 + 32) = 3;
  v16 = v1;
  v17 = &off_100151C70;
  *&v15 = v2;
  sub_10004DED0(&qword_10015E9B8, &qword_100115C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001103C0;
  sub_100046A2C(&v15, inited + 32);
  v4 = type metadata accessor for CoreFollowUpSectionModelProvider(0);
  v5 = swift_allocObject();

  v7 = sub_100023268(v6, 3, v5);

  v13 = v4;
  v14 = &off_100151230;
  *&v12 = v7;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v12, v8 + 32);
  sub_10004DED0(&qword_10015E9C0, &qword_100115C98);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1001103D0;
  *(v9 + 32) = inited;
  *(v9 + 40) = v8;
  v10 = sub_100022C64(v9, sub_1000235E8, &qword_10015E9D0, &qword_100115CA8);
  swift_setDeallocating();
  sub_10004DED0(&qword_10015E9C8, &qword_100115CA0);
  swift_arrayDestroy();
  return v10;
}

void *sub_10009BFA8(uint64_t a1)
{
  v2 = type metadata accessor for AirplaneModeListItemProvider();
  v3 = swift_allocObject();
  *(v3 + 16) = 2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 6;
  if (qword_10015AB58 != -1)
  {
    v49 = v3;
    swift_once();
    v3 = v49;
  }

  v4 = qword_100169810;
  *(v3 + 56) = qword_100169810;
  *(v3 + 64) = 0;
  v79 = v2;
  v80 = &off_100151640;
  *&v78 = v3;
  sub_10004DED0(&qword_10015E968, &qword_100115C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001103C0;
  v52 = inited;
  sub_100046A2C(&v78, inited + 32);
  v6 = type metadata accessor for WiFiListItemProvider();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 3;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 6;
  *(v7 + 72) = 0;
  *(v7 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 88) = &off_100150230;
  swift_unknownObjectWeakAssign();
  v76 = v6;
  v77 = &off_1001521A8;
  *&v75 = v7;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1001103C0;
  v51 = v8;
  sub_100046A2C(&v75, v8 + 32);
  v9 = type metadata accessor for EthernetListItemProvider();
  v10 = swift_allocObject();
  *(v10 + 16) = 4;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 48) = 6;
  *(v10 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + 64) = &off_100150230;
  *(v10 + 72) = 0;
  swift_unknownObjectWeakAssign();
  v74 = &off_1001519F0;
  v73 = v9;
  *&v72 = v10;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1001103C0;
  v50 = v11;
  sub_100046A2C(&v72, v11 + 32);
  v12 = type metadata accessor for BluetoothListItemProvider(0);
  v13 = swift_allocObject();
  v14 = v4;

  v16 = sub_10002437C(v15, v13);

  v71 = &off_100151720;
  v70 = v12;
  *&v69 = v16;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v69, v17 + 32);
  v18 = type metadata accessor for CellularDataListItemProvider();
  v19 = swift_allocObject();
  *(v19 + 16) = 6;
  *(v19 + 24) = 0;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  *(v19 + 48) = 6;
  v68 = &off_100151860;
  v67 = v18;
  *&v66 = v19;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v66, v20 + 32);
  v21 = type metadata accessor for PersonalHotspotListItemProvider();
  v22 = swift_allocObject();
  *(v22 + 16) = 7;
  *(v22 + 24) = 0;
  *(v22 + 32) = 0;
  *(v22 + 40) = 0;
  *(v22 + 48) = 6;
  v64 = v21;
  v65 = &off_100151D28;
  *&v63 = v22;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v63, v23 + 32);
  v61 = &type metadata for PrimarySettingsListItemIdentifier;
  v62 = &off_10014D978;
  v24 = swift_allocObject();
  *&v60 = v24;
  *(v24 + 16) = 30;
  *(v24 + 24) = 0;
  *(v24 + 32) = 0;
  *(v24 + 40) = 0;
  *(v24 + 48) = 6;
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v60, v25 + 32);
  v26 = type metadata accessor for VPNListItemProvider(0);
  v27 = swift_allocObject();

  v29 = sub_1000248B0(v28, v27);

  v58 = v26;
  v59 = &off_100151EE8;
  *&v57 = v29;
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v57, v30 + 32);
  v31 = [objc_opt_self() currentDevice];
  v32 = [v31 userInterfaceIdiom];

  if (v32 == 1)
  {
    v33 = type metadata accessor for ClassroomListItemProvider();
    v34 = swift_allocObject();
    v55 = v33;
    v56 = &off_100151950;
    *&v54 = sub_1000A423C(a1, v34);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1001103C0;
    sub_100046A2C(&v54, v35 + 32);
    sub_10004DED0(&qword_10015E970, &qword_100115C48);
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_1001103C0;
    *(v36 + 32) = v35;
    v37 = v36 + 32;
    v38 = sub_100022C64(v36, sub_100022F00, &qword_10015E998, &qword_100115C70);
    swift_setDeallocating();
    sub_1000068B0(v37, &qword_10015E978, &qword_100115C50);
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
  }

  v39 = type metadata accessor for SatelliteListItemProvider();
  v40 = objc_allocWithZone(v39);
  v41 = &v40[OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_id];
  *(v41 + 2) = 0;
  *(v41 + 3) = 0;
  *v41 = 10;
  *(v41 + 1) = 0;
  v41[32] = 6;
  *&v40[OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_invalidator + 8] = 0;
  v42 = swift_unknownObjectWeakInit();
  v43 = &v40[OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_satelliteConnectivityState];
  *v43 = 0;
  *(v43 + 1) = 0;
  v43[16] = 2;
  *&v40[OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_satelliteConnectivityStateProvider] = 0;
  *&v40[OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_updateTask] = 0;
  *(v42 + 8) = &off_100150230;
  swift_unknownObjectWeakAssign();
  v53.receiver = v40;
  v53.super_class = v39;
  v44 = objc_msgSendSuper2(&v53, "init");
  v55 = v39;
  v56 = &off_100151540;
  *&v54 = v44;
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v54, v45 + 32);
  sub_10004DED0(&qword_10015E970, &qword_100115C48);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_100115860;
  *(v46 + 32) = v52;
  *(v46 + 40) = v51;
  *(v46 + 48) = v50;
  *(v46 + 56) = v17;
  *(v46 + 64) = v20;
  *(v46 + 72) = v23;
  *(v46 + 80) = v25;
  *(v46 + 88) = v30;
  *(v46 + 96) = v38;
  *(v46 + 104) = v45;
  v47 = sub_100022C64(v46, sub_100022F00, &qword_10015E998, &qword_100115C70);
  swift_setDeallocating();
  sub_10004DED0(&qword_10015E978, &qword_100115C50);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v47;
}

void *sub_10009C690(uint64_t a1)
{
  v1 = type metadata accessor for GeneralSettingsListItemProvider(0);
  v2 = objc_allocWithZone(v1);

  v4 = sub_100024D8C(v3, v2);

  v23 = v1;
  v24 = &off_100151BD0;
  *&v22 = v4;
  sub_10004DED0(&qword_10015E968, &qword_100115C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001103C0;
  sub_100046A2C(&v22, inited + 32);
  v20 = &type metadata for PrimarySettingsListItemIdentifier;
  v21 = &off_10014D978;
  v6 = swift_allocObject();
  *&v19 = v6;
  *(v6 + 16) = 21;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 6;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v19, v7 + 32);
  sub_10004DED0(&qword_10015E970, &qword_100115C48);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1001103D0;
  *(v8 + 32) = inited;
  *(v8 + 40) = v7;
  v9 = sub_100022C64(v8, sub_100022F00, &qword_10015E998, &qword_100115C70);
  swift_setDeallocating();
  sub_10004DED0(&qword_10015E978, &qword_100115C50);
  swift_arrayDestroy();
  v10 = type metadata accessor for StaticPrimarySettingsListSectionProvider();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1001157F0;
  *(v11 + 32) = 3;
  *(v11 + 40) = v9;
  v23 = v10;
  v24 = &off_10014E2E0;
  *&v22 = v11;
  sub_10004DED0(&qword_10015E9B8, &qword_100115C90);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v22, v12 + 32);
  v13 = sub_10009C9A4();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001157F0;
  *(v14 + 32) = 259;
  *(v14 + 40) = v13;
  v20 = v10;
  v21 = &off_10014E2E0;
  *&v19 = v14;
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v19, v15 + 32);
  sub_10004DED0(&qword_10015E9C0, &qword_100115C98);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_1001103D0;
  *(v16 + 32) = v12;
  *(v16 + 40) = v15;
  v17 = sub_100022C64(v16, sub_1000235E8, &qword_10015E9D0, &qword_100115CA8);
  swift_setDeallocating();
  sub_10004DED0(&qword_10015E9C8, &qword_100115CA0);
  swift_arrayDestroy();
  return v17;
}

void *sub_10009C9A4()
{
  v57 = &type metadata for PrimarySettingsListItemIdentifier;
  v58 = &off_10014D978;
  v0 = swift_allocObject();
  *&v56 = v0;
  *(v0 + 16) = 17;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 6;
  sub_10004DED0(&qword_10015E968, &qword_100115C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001103C0;
  sub_100046A2C(&v56, inited + 32);
  v1 = type metadata accessor for CameraSettingsListItemProvider();
  v2 = swift_allocObject();
  *(v2 + 16) = 35;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 6;
  v54 = v1;
  v55 = &off_100151838;
  *&v53 = v2;
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v53, v24 + 32);
  v51 = &type metadata for PrimarySettingsListItemIdentifier;
  v52 = &off_10014D978;
  v3 = swift_allocObject();
  *&v50 = v3;
  *(v3 + 16) = 16;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 6;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v50, v23 + 32);
  v48 = &type metadata for PrimarySettingsListItemIdentifier;
  v49 = &off_10014D978;
  v4 = swift_allocObject();
  *&v47 = v4;
  *(v4 + 16) = 18;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 6;
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v47, v22 + 32);
  v45 = &type metadata for PrimarySettingsListItemIdentifier;
  v46 = &off_10014D978;
  v5 = swift_allocObject();
  *&v44 = v5;
  *(v5 + 16) = 19;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 6;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v44, v21 + 32);
  v42 = &type metadata for PrimarySettingsListItemIdentifier;
  v43 = &off_10014D978;
  v6 = swift_allocObject();
  *&v41 = v6;
  *(v6 + 16) = 20;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 6;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v41, v7 + 32);
  v39 = &type metadata for PrimarySettingsListItemIdentifier;
  v40 = &off_10014D978;
  v8 = swift_allocObject();
  *&v38 = v8;
  *(v8 + 16) = 26;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 6;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v38, v9 + 32);
  v36 = &type metadata for PrimarySettingsListItemIdentifier;
  v37 = &off_10014D978;
  v10 = swift_allocObject();
  *&v35 = v10;
  *(v10 + 16) = 25;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 48) = 6;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v35, v11 + 32);
  v33 = &type metadata for PrimarySettingsListItemIdentifier;
  v34 = &off_10014D978;
  v12 = swift_allocObject();
  *&v32 = v12;
  *(v12 + 16) = 24;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  *(v12 + 48) = 6;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v32, v13 + 32);
  v30 = &type metadata for PrimarySettingsListItemIdentifier;
  v31 = &off_10014D978;
  v14 = swift_allocObject();
  *&v29 = v14;
  *(v14 + 16) = 23;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  *(v14 + 48) = 6;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v29, v15 + 32);
  v27 = &type metadata for PrimarySettingsListItemIdentifier;
  v28 = &off_10014D978;
  v16 = swift_allocObject();
  *&v26 = v16;
  *(v16 + 16) = 22;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  *(v16 + 48) = 6;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v26, v17 + 32);
  sub_10004DED0(&qword_10015E970, &qword_100115C48);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10010FBE0;
  *(v18 + 32) = inited;
  *(v18 + 40) = v24;
  *(v18 + 48) = v23;
  *(v18 + 56) = v22;
  *(v18 + 64) = v21;
  *(v18 + 72) = v7;
  *(v18 + 80) = v9;
  *(v18 + 88) = v11;
  *(v18 + 96) = v13;
  *(v18 + 104) = v15;
  *(v18 + 112) = v17;
  v19 = sub_100022C64(v18, sub_100022F00, &qword_10015E998, &qword_100115C70);
  swift_setDeallocating();
  sub_10004DED0(&qword_10015E978, &qword_100115C50);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v19;
}

void *sub_10009CE6C()
{
  v21 = &type metadata for PrimarySettingsListItemIdentifier;
  v22 = &off_10014D978;
  v0 = swift_allocObject();
  *&v20 = v0;
  *(v0 + 16) = 11;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 6;
  sub_10004DED0(&qword_10015E968, &qword_100115C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001103C0;
  sub_100046A2C(&v20, inited + 32);
  v18 = &type metadata for PrimarySettingsListItemIdentifier;
  v19 = &off_10014D978;
  v2 = swift_allocObject();
  *&v17 = v2;
  *(v2 + 16) = 12;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 6;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v17, v3 + 32);
  v15 = &type metadata for PrimarySettingsListItemIdentifier;
  v16 = &off_10014D978;
  v4 = swift_allocObject();
  *&v14 = v4;
  *(v4 + 16) = 13;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 6;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v14, v5 + 32);
  v12 = &type metadata for PrimarySettingsListItemIdentifier;
  v13 = &off_10014D978;
  v6 = swift_allocObject();
  *&v11 = v6;
  *(v6 + 16) = 14;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 6;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v11, v7 + 32);
  sub_10004DED0(&qword_10015E970, &qword_100115C48);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1001103F0;
  *(v8 + 32) = inited;
  *(v8 + 40) = v3;
  *(v8 + 48) = v5;
  *(v8 + 56) = v7;
  v9 = sub_100022C64(v8, sub_100022F00, &qword_10015E998, &qword_100115C70);
  swift_setDeallocating();
  sub_10004DED0(&qword_10015E978, &qword_100115C50);
  swift_arrayDestroy();
  return v9;
}

void *sub_10009D0B0(uint64_t a1)
{
  v23 = &type metadata for PrimarySettingsListItemIdentifier;
  v24 = &off_10014D978;
  v1 = swift_allocObject();
  *&v22 = v1;
  *(v1 + 16) = 27;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 6;
  sub_10004DED0(&qword_10015E968, &qword_100115C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001103C0;
  sub_100046A2C(&v22, inited + 32);
  if ([objc_opt_self() deviceSupportsSOS])
  {
    v20 = &type metadata for PrimarySettingsListItemIdentifier;
    v21 = &off_10014D978;
    v3 = swift_allocObject();
    *&v19 = v3;
    *(v3 + 16) = 28;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 48) = 6;
    v4 = swift_initStackObject();
    *(v4 + 16) = xmmword_1001103C0;
    sub_100046A2C(&v19, v4 + 32);
    sub_10004DED0(&qword_10015E970, &qword_100115C48);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_1001103C0;
    *(v5 + 32) = v4;
    v6 = v5 + 32;
    v7 = sub_100022C64(v5, sub_100022F00, &qword_10015E998, &qword_100115C70);
    swift_setDeallocating();
    sub_1000068B0(v6, &qword_10015E978, &qword_100115C50);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = type metadata accessor for ExposureNotificationsItemProvider();
  v9 = swift_allocObject();
  *(v9 + 16) = 29;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 48) = 6;
  *(v9 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 80) = 0;
  *(v9 + 64) = &off_100150230;
  *(v9 + 72) = 0;
  swift_unknownObjectWeakAssign();
  v20 = v8;
  v21 = &off_100151A90;
  *&v19 = v9;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v19, v10 + 32);
  v17 = &type metadata for PrimarySettingsListItemIdentifier;
  v18 = &off_10014D978;
  v11 = swift_allocObject();
  *&v16 = v11;
  *(v11 + 16) = 31;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 6;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v16, v12 + 32);
  sub_10004DED0(&qword_10015E970, &qword_100115C48);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1001103F0;
  *(v13 + 32) = inited;
  *(v13 + 40) = v7;
  *(v13 + 48) = v10;
  *(v13 + 56) = v12;
  v14 = sub_100022C64(v13, sub_100022F00, &qword_10015E998, &qword_100115C70);
  swift_setDeallocating();
  sub_10004DED0(&qword_10015E978, &qword_100115C50);
  swift_arrayDestroy();
  return v14;
}

void *sub_10009D3E0(uint64_t a1)
{
  v27 = &type metadata for PrimarySettingsListItemIdentifier;
  v28 = &off_10014D978;
  v1 = swift_allocObject();
  *&v26 = v1;
  *(v1 + 16) = 36;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 6;
  sub_10004DED0(&qword_10015E968, &qword_100115C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001103C0;
  sub_100046A2C(&v26, inited + 32);
  v3 = type metadata accessor for iCloudListItemProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = 37;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 6;
  v24 = v3;
  v25 = &off_10014DBB8;
  *&v23 = v4;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v23, v5 + 32);
  v6 = type metadata accessor for WalletAndApplePayOrPaymentAndContactlessListItemProvider(0);
  v7 = swift_allocObject();

  v9 = sub_100025378(v8, v7);

  v21 = v6;
  v22 = &off_100151F60;
  *&v20 = v9;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v20, v10 + 32);
  v11 = type metadata accessor for ClassKitListItemProvider();
  v12 = swift_allocObject();
  *(v12 + 16) = 34;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  *(v12 + 48) = 6;
  *(v12 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 64) = &off_100150230;
  *(v12 + 72) = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakAssign();
  v18 = v11;
  v19 = &off_100151888;
  *&v17 = v12;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v17, v13 + 32);
  sub_10004DED0(&qword_10015E970, &qword_100115C48);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1001103F0;
  *(v14 + 32) = inited;
  *(v14 + 40) = v5;
  *(v14 + 48) = v10;
  *(v14 + 56) = v13;
  v15 = sub_100022C64(v14, sub_100022F00, &qword_10015E998, &qword_100115C70);
  swift_setDeallocating();
  sub_10004DED0(&qword_10015E978, &qword_100115C50);
  swift_arrayDestroy();
  return v15;
}

void *sub_10009D698(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 currentDevice];
  v4 = [v3 sf_isDeveloperModeEnabled];

  if (v4)
  {
    v90 = &type metadata for PrimarySettingsListItemIdentifier;
    v91 = &off_10014D978;
    v5 = swift_allocObject();
    *&v89 = v5;
    *(v5 + 16) = 38;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    *(v5 + 48) = 6;
    sub_10004DED0(&qword_10015E968, &qword_100115C40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001103C0;
    sub_100046A2C(&v89, inited + 32);
    sub_10004DED0(&qword_10015E970, &qword_100115C48);
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_1001103C0;
    *(v7 + 32) = inited;
    v8 = v7 + 32;
    v9 = sub_100022C64(v7, sub_100022F00, &qword_10015E998, &qword_100115C70);
    swift_setDeallocating();
    sub_1000068B0(v8, &qword_10015E978, &qword_100115C50);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = [v2 currentDevice];
  v11 = [v10 sf_isCarrierInstall];

  if (!v11)
  {
    goto LABEL_10;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v13 = result;
  cellularDataCapability = MobileGestalt_get_cellularDataCapability();

  if ((cellularDataCapability & 1) == 0)
  {
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v15 = result;
      telephonyCapability = MobileGestalt_get_telephonyCapability();

      if (telephonyCapability)
      {
        goto LABEL_9;
      }

LABEL_10:
      v74 = _swiftEmptyArrayStorage;
      goto LABEL_11;
    }

LABEL_16:
    __break(1u);
    return result;
  }

LABEL_9:
  v90 = &type metadata for PrimarySettingsListItemIdentifier;
  v91 = &off_10014D978;
  v17 = swift_allocObject();
  *&v89 = v17;
  *(v17 + 16) = 39;
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  *(v17 + 48) = 6;
  sub_10004DED0(&qword_10015E968, &qword_100115C40);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v89, v18 + 32);
  sub_10004DED0(&qword_10015E970, &qword_100115C48);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1001103C0;
  *(v19 + 32) = v18;
  v20 = v19 + 32;
  v74 = sub_100022C64(v19, sub_100022F00, &qword_10015E998, &qword_100115C70);
  swift_setDeallocating();
  sub_1000068B0(v20, &qword_10015E978, &qword_100115C50);
LABEL_11:
  v21 = [v2 currentDevice];
  v22 = [v21 sf_isInternalInstall];

  v75 = v9;
  if (v22)
  {
    v90 = &type metadata for PrimarySettingsListItemIdentifier;
    v91 = &off_10014D978;
    v23 = swift_allocObject();
    *&v89 = v23;
    *(v23 + 16) = 40;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0;
    *(v23 + 40) = 0;
    *(v23 + 48) = 6;
    sub_10004DED0(&qword_10015E968, &qword_100115C40);
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_1001103C0;
    sub_100046A2C(&v89, v24 + 32);
    sub_10004DED0(&qword_10015E970, &qword_100115C48);
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_1001103C0;
    *(v25 + 32) = v24;
    v26 = v25 + 32;
    v73 = sub_100022C64(v25, sub_100022F00, &qword_10015E998, &qword_100115C70);
    swift_setDeallocating();
    sub_1000068B0(v26, &qword_10015E978, &qword_100115C50);
  }

  else
  {
    v73 = _swiftEmptyArrayStorage;
  }

  v27 = objc_opt_self();
  v28 = [v27 standardUserDefaults];
  v29 = type metadata accessor for DefaultsObservingPrimarySettingsListItemProvider();
  v30 = objc_allocWithZone(v29);
  v31 = &v30[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_defaultsObserver];
  *v31 = 0u;
  v31[1] = 0u;
  v32 = &v30[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_id];
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  *v32 = 41;
  *(v32 + 1) = 0;
  v32[32] = 6;
  v33 = &v30[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_invalidator];
  *v33 = a1;
  v33[1] = &off_100150230;
  v34 = &v30[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_defaultsKey];
  *v34 = 0xD000000000000014;
  v34[1] = 0x80000001001224F0;
  *&v30[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_userDefaults] = v28;
  v30[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_shownWhen] = 1;

  v35 = v28;
  v36 = String._bridgeToObjectiveC()();
  v37 = [v35 BOOLForKey:v36];

  v30[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_shouldShow] = v37;
  v88.receiver = v30;
  v88.super_class = v29;
  v38 = objc_msgSendSuper2(&v88, "init");

  v90 = v29;
  v91 = &off_10014E218;
  *&v89 = v38;
  sub_10004DED0(&qword_10015E968, &qword_100115C40);
  v72 = swift_initStackObject();
  *(v72 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v89, v72 + 32);
  v39 = [v27 standardUserDefaults];
  v40 = objc_allocWithZone(v29);
  v41 = &v40[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_defaultsObserver];
  *v41 = 0u;
  v41[1] = 0u;
  v42 = &v40[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_id];
  *(v42 + 2) = 0;
  *(v42 + 3) = 0;
  *v42 = 42;
  *(v42 + 1) = 0;
  v42[32] = 6;
  v43 = &v40[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_invalidator];
  *v43 = a1;
  v43[1] = &off_100150230;
  v44 = &v40[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_defaultsKey];
  *v44 = 0xD00000000000001ALL;
  v44[1] = 0x8000000100122510;
  *&v40[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_userDefaults] = v39;
  v40[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_shownWhen] = 1;

  v45 = v39;
  v46 = String._bridgeToObjectiveC()();
  LOBYTE(v35) = [v45 BOOLForKey:v46];

  v40[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_shouldShow] = v35;
  v84.receiver = v40;
  v84.super_class = v29;
  v47 = objc_msgSendSuper2(&v84, "init");

  v86 = v29;
  v87 = &off_10014E218;
  *&v85 = v47;
  v71 = swift_initStackObject();
  *(v71 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v85, v71 + 32);
  v48 = [v27 standardUserDefaults];
  v49 = objc_allocWithZone(v29);
  v50 = &v49[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_defaultsObserver];
  *v50 = 0u;
  v50[1] = 0u;
  v51 = &v49[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_id];
  *(v51 + 2) = 0;
  *(v51 + 3) = 0;
  *v51 = 43;
  *(v51 + 1) = 0;
  v51[32] = 6;
  v52 = &v49[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_invalidator];
  *v52 = a1;
  v52[1] = &off_100150230;
  v53 = &v49[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_defaultsKey];
  *v53 = 0xD000000000000015;
  v53[1] = 0x8000000100122530;
  *&v49[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_userDefaults] = v48;
  v49[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_shownWhen] = 1;

  v54 = v48;
  v55 = String._bridgeToObjectiveC()();
  v56 = [v54 BOOLForKey:v55];

  v49[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_shouldShow] = v56;
  v80.receiver = v49;
  v80.super_class = v29;
  v57 = objc_msgSendSuper2(&v80, "init");

  v83 = &off_10014E218;
  v82 = v29;
  *&v81 = v57;
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v81, v58 + 32);
  v59 = [v27 standardUserDefaults];
  v60 = objc_allocWithZone(v29);
  v61 = &v60[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_defaultsObserver];
  *v61 = 0u;
  v61[1] = 0u;
  v62 = &v60[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_id];
  *(v62 + 2) = 0;
  *(v62 + 3) = 0;
  *v62 = 44;
  *(v62 + 1) = 0;
  v62[32] = 6;
  v63 = &v60[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_invalidator];
  *v63 = a1;
  v63[1] = &off_100150230;
  v64 = &v60[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_defaultsKey];
  *v64 = 0xD000000000000019;
  v64[1] = 0x8000000100122550;
  *&v60[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_userDefaults] = v59;
  v60[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_shownWhen] = 1;

  v65 = v59;
  v66 = String._bridgeToObjectiveC()();
  LOBYTE(v59) = [v65 BOOLForKey:v66];

  v60[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_shouldShow] = v59;
  v76.receiver = v60;
  v76.super_class = v29;
  v67 = objc_msgSendSuper2(&v76, "init");

  v79 = &off_10014E218;
  v78 = v29;
  *&v77 = v67;
  v68 = swift_initStackObject();
  *(v68 + 16) = xmmword_1001103C0;
  sub_100046A2C(&v77, v68 + 32);
  sub_10004DED0(&qword_10015E970, &qword_100115C48);
  v69 = swift_initStackObject();
  *(v69 + 16) = xmmword_100115870;
  *(v69 + 32) = v75;
  *(v69 + 40) = v74;
  *(v69 + 48) = v73;
  *(v69 + 56) = v72;
  *(v69 + 64) = v71;
  *(v69 + 72) = v58;
  *(v69 + 80) = v68;
  v70 = sub_100022C64(v69, sub_100022F00, &qword_10015E998, &qword_100115C70);
  swift_setDeallocating();
  sub_10004DED0(&qword_10015E978, &qword_100115C50);
  swift_arrayDestroy();
  return v70;
}

void sub_10009E130(void *a1, uint64_t a2)
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000659C(v3, qword_100169658);

  sub_100059CA0(a2, v17, &qword_10015E690, &qword_100115788);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  sub_1000068B0(a2, &qword_10015E690, &qword_100115788);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v6 = 136315650;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100025CF0(v7, v8, &v16);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_100025CF0(0xD000000000000024, 0x8000000100123F70, &v16);
    *(v6 + 22) = 2082;
    v10 = *(a2 + 32);
    if (v10 == 255)
    {
      v14 = 0xE300000000000000;
      v12 = 7104878;
    }

    else
    {
      v11 = *(a2 + 16);
      v17[0] = *a2;
      v17[1] = v11;
      v18 = v10;
      v12 = sub_100026A58();
      v14 = v13;
    }

    v15 = sub_100025CF0(v12, v14, &v16);

    *(v6 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "...Complete (%s.%s), identifier: '%{public}s'", v6, 0x20u);
    swift_arrayDestroy();
  }
}

void sub_10009E380(void *a1, uint64_t a2)
{
  v2 = a2;
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000659C(v3, qword_100169658);

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136315650;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100025CF0(v6, v7, &v13);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_100025CF0(0xD000000000000014, 0x8000000100123E70, &v13);
    *(v5 + 22) = 2082;
    v9 = sub_1000BBA68(v2);
    v11 = sub_100025CF0(v9, v10, &v13);

    *(v5 + 24) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v4, "...Complete (%s.%s), identifier: '%{public}s'", v5, 0x20u);
    swift_arrayDestroy();
  }
}

void sub_10009E578(void *a1)
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000659C(v1, qword_100169658);

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
    *(v3 + 14) = sub_100025CF0(0xD000000000000017, 0x8000000100123FA0, &v8);
    _os_log_impl(&_mh_execute_header, oslog, v2, "…Complete (%s.%s)", v3, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_10009E740(void *a1)
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000659C(v1, qword_100169658);

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
    *(v3 + 14) = sub_100025CF0(0xD000000000000041, 0x8000000100123E20, &v8);
    _os_log_impl(&_mh_execute_header, oslog, v2, "…Complete (%s.%s)", v3, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_10009E908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000659C(v8, qword_100169658);
  (*(v5 + 16))(v7, a3, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    sub_10000A520(&qword_10015E918, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_100025CF0(v13, v15, &v18);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Done opening URL: %s", v11, 0xCu);
    sub_10000665C(v12);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10009EB78(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_10009EC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[37] = a4;
  v5[38] = v4;
  v5[35] = a2;
  v5[36] = a3;
  v5[34] = a1;
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v5[39] = v6;
  v5[40] = *(v6 - 8);
  v5[41] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[42] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[43] = v8;
  v5[44] = v7;

  return _swift_task_switch(sub_10009ED20, v8, v7);
}

uint64_t sub_10009ED20()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[39];
  v4 = [objc_allocWithZone(FLTopLevelViewModel) initWithBundleIdentifier:FLFollowUpPreferencesBundleIdentifier clientIdentifier:0];
  v0[45] = v4;
  sub_100008294(0, &qword_10015C9D0, OS_dispatch_queue_ptr);
  (*(v2 + 104))(v1, enum case for DispatchQoS.QoSClass.userInteractive(_:), v3);
  v5 = static OS_dispatch_queue.global(qos:)();
  v0[46] = v5;
  (*(v2 + 8))(v1, v3);
  v0[2] = v0;
  v0[7] = v0 + 33;
  v0[3] = sub_10009EEF4;
  v6 = swift_continuation_init();
  v0[17] = sub_10004DED0(&unk_10015FA00, &qword_100115DA0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10009F7E8;
  v0[13] = &unk_1001503E8;
  v0[14] = v6;
  [v4 sapp_groupsWithQueue:v5 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10009EEF4()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);

  return _swift_task_switch(sub_10009EFFC, v2, v1);
}

id sub_10009EFFC()
{
  v75 = v0;
  v1 = *(v0 + 264);

  if (v1 >> 62)
  {
    goto LABEL_49;
  }

  v70 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v70)
  {
LABEL_50:

    if (qword_10015AAA0 == -1)
    {
      goto LABEL_51;
    }

    goto LABEL_55;
  }

LABEL_3:
  v2 = 0;
  v3 = v1 & 0xC000000000000001;
  v64 = v1 + 32;
  v65 = v1 & 0xFFFFFFFFFFFFFF8;
  v69 = v0;
  v66 = v1 & 0xC000000000000001;
  v67 = v1;
  while (1)
  {
    if (!v3)
    {
      if (v2 >= *(v65 + 16))
      {
        __break(1u);
LABEL_55:
        swift_once();
LABEL_51:
        v31 = type metadata accessor for Logger();
        sub_10000659C(v31, qword_100169658);

        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();

        v34 = os_log_type_enabled(v32, v33);
        v35 = *(v0 + 360);
        if (v34)
        {
          v37 = *(v0 + 272);
          v36 = *(v0 + 280);
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v74[0] = v39;
          *v38 = 136446210;
          *(v38 + 4) = sub_100025CF0(v37, v36, v74);
          _os_log_impl(&_mh_execute_header, v32, v33, "Could not resolve follow up item and group for item identifier: %{public}s", v38, 0xCu);
          sub_10000665C(v39);
        }

LABEL_74:

        v63 = *(v0 + 8);

        return v63();
      }

      v4 = swift_unknownObjectRetain();
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (!v5)
      {
        goto LABEL_11;
      }

LABEL_48:
      __break(1u);
LABEL_49:
      v70 = _CocoaArrayWrapper.endIndex.getter();
      if (!v70)
      {
        goto LABEL_50;
      }

      goto LABEL_3;
    }

    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v5 = __OFADD__(v2, 1);
    v6 = v2 + 1;
    if (v5)
    {
      goto LABEL_48;
    }

LABEL_11:
    v71 = v4;
    v1 = [v4 items];
    sub_100008294(0, &qword_10015F9A0, FLFollowUpItem_ptr);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v68 = v6;
    if (v7 >> 62)
    {
      break;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_13;
    }

LABEL_4:

    swift_unknownObjectRelease();
    v1 = v67;
    v2 = v68;
    v3 = v66;
    if (v68 == v70)
    {
      goto LABEL_50;
    }
  }

  v8 = _CocoaArrayWrapper.endIndex.getter();
  if (!v8)
  {
    goto LABEL_4;
  }

LABEL_13:
  v9 = 0;
  while (2)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v13 = [v10 uniqueIdentifier];
    if (!v13)
    {
LABEL_14:

      ++v9;
      if (v12 == v8)
      {
        goto LABEL_4;
      }

      continue;
    }

    break;
  }

  v14 = v13;
  v15 = *(v0 + 272);
  v72 = *(v0 + 280);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = v17;

  if (v16 != v15 || v1 != v72)
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_30;
    }

    goto LABEL_14;
  }

LABEL_30:

  v20 = [v11 actions];
  v21 = v71;
  if (v20)
  {
    v22 = v20;
    sub_100008294(0, &qword_10015E8F0, FLFollowUpAction_ptr);
    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v23 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
      if (v24)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
LABEL_33:
        v25 = 0;
        v1 = v23 & 0xC000000000000001;
        do
        {
          if (v1)
          {
            v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_47;
            }

            v26 = *(v23 + 8 * v25 + 32);
          }

          v27 = v26;
          v28 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_46;
          }

          v29 = *(v0 + 288);
          v30 = *(v0 + 296);
          v74[0] = v26;
          if (sub_10009F868(v74, v29, v30))
          {

            goto LABEL_58;
          }

          ++v25;
        }

        while (v28 != v24);
      }
    }

    v27 = 0;
LABEL_58:
    v21 = v71;
  }

  else
  {
    v27 = 0;
  }

  if (qword_10015AB20 != -1)
  {
    swift_once();
  }

  v40 = qword_10015E6F0;
  v41 = [v21 identifier];
  if (!v41)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = String._bridgeToObjectiveC()();
  }

  v42 = sub_1000620C8(v41, v40);

  if ((v42 & 1) != 0 || [v21 shouldCoalesceItems])
  {
    v73 = *(v0 + 360);

    v43 = [v21 identifier];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = [v21 accountID];
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    *(v0 + 224) = v44;
    *(v0 + 232) = v46;
    *(v0 + 240) = v48;
    *(v0 + 248) = v50;
    *(v0 + 256) = 0;
    sub_100097128((v0 + 224));

    swift_unknownObjectRelease();
    goto LABEL_74;
  }

  if (!v27)
  {
    v56 = *(v0 + 360);
    v57 = *(v69 + 280);
    v58 = *(v69 + 272);

    *(v69 + 144) = v58;
    *(v69 + 152) = v57;
    *(v69 + 168) = 0;
    *(v69 + 160) = 0;
    *(v69 + 176) = 1;
    sub_100097128((v69 + 144));

    goto LABEL_73;
  }

  v51 = [v27 identifier];
  if (v51)
  {
    v52 = v51;
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    goto LABEL_72;
  }

  result = [v27 label];
  if (result)
  {
    v52 = result;

    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v60;
LABEL_72:
    v56 = *(v0 + 360);
    v61 = *(v69 + 280);
    v62 = *(v69 + 272);

    *(v69 + 184) = v62;
    *(v69 + 192) = v61;
    *(v69 + 200) = v53;
    *(v69 + 208) = v55;
    *(v69 + 216) = 2;

    sub_100097128((v69 + 184));

LABEL_73:

    v0 = v69;
    swift_unknownObjectRelease();
    goto LABEL_74;
  }

  __break(1u);
  return result;
}

uint64_t sub_10009F7E8(uint64_t a1, uint64_t a2)
{
  v2 = *sub_100018544((a1 + 32), *(a1 + 56));
  sub_10004DED0(&unk_10015E8E0, &qword_100115AD0);
  **(*(v2 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v2);
}

uint64_t sub_10009F868(id *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a3)
  {
    v5 = *a1;
    v6 = [*a1 identifier];
    if (v6 || (v6 = [v5 label]) != 0)
    {
      v7 = v6;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      if (v8 == a2 && v10 == v3)
      {
        goto LABEL_21;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        goto LABEL_35;
      }
    }

    v13 = [v5 label];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      if (v15 == a2 && v17 == v3)
      {
        goto LABEL_21;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_35;
      }
    }

    v19 = [v5 identifier];
    if (v19 || (v19 = [v5 label]) != 0)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    sub_10002EAE0();
    v24 = StringProtocol.removingPercentEncoding.getter();
    if (v23)
    {
      if (v25)
      {
        if (v21 == v24 && v23 == v25)
        {

LABEL_21:

          LOBYTE(v3) = 1;
          return v3 & 1;
        }

        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v33)
        {
LABEL_35:
          LOBYTE(v3) = 1;
          return v3 & 1;
        }

LABEL_24:
        v26 = [v5 label];
        if (v26)
        {
          v27 = v26;
          v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v29;
        }

        else
        {
          v28 = 0;
          v30 = 0;
        }

        v31 = StringProtocol.removingPercentEncoding.getter();
        if (v30)
        {
          if (v32)
          {
            if (v28 == v31 && v30 == v32)
            {

              LOBYTE(v3) = 1;
            }

            else
            {
              LOBYTE(v3) = _stringCompareWithSmolCheck(_:_:expecting:)();
            }
          }

          else
          {
            LOBYTE(v3) = 0;
          }
        }

        else
        {
          if (!v32)
          {
            goto LABEL_35;
          }

          LOBYTE(v3) = 0;
        }

        return v3 & 1;
      }
    }

    else if (!v25)
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  return v3 & 1;
}

uint64_t sub_10009FB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 304) = a6;
  *(v8 + 312) = a7;
  *(v8 + 288) = a4;
  *(v8 + 296) = a5;
  v9 = *(a8 + 16);
  *(v8 + 320) = *a8;
  *(v8 + 336) = v9;
  *(v8 + 177) = *(a8 + 32);
  type metadata accessor for MainActor();
  *(v8 + 352) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 360) = v11;
  *(v8 + 368) = v10;

  return _swift_task_switch(sub_10009FC08, v11, v10);
}

uint64_t sub_10009FC08()
{
  v38 = v0;
  v1 = v0;
  v2 = v0 + 10;
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v3 = v1[38];
  v4 = type metadata accessor for Logger();
  v1[47] = sub_10000659C(v4, qword_100169658);
  v5 = v3;
  swift_unknownObjectRetain();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v6, v7))
  {
    v36 = v5;
    v9 = v1[36];
    v8 = v1[37];
    v10 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v10 = 136446722;
    v11 = [v9 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100025CF0(v12, v14, &v37);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2082;
    swift_beginAccess();
    v16 = *(v8 + 16);
    if (v16 && (v17 = [v16 uniqueIdentifier]) != 0)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v22 = v1[38];
    v1[10] = v19;
    v1[11] = v21;
    sub_10004DED0(&qword_10015E900, &qword_100114A50);
    v23 = String.init<A>(describing:)();
    v25 = sub_100025CF0(v23, v24, &v37);

    *(v10 + 14) = v25;
    *(v10 + 22) = 2082;
    v1[10] = v22;
    v5 = v36;
    v26 = v36;
    sub_10004DED0(&qword_10015E908, &unk_100115B10);
    v27 = String.init<A>(describing:)();
    v29 = sub_100025CF0(v27, v28, &v37);

    *(v10 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v6, v7, "Performing action on follow up group '%{public}s', item '%{public}s', action: %{public}s.", v10, 0x20u);
    swift_arrayDestroy();
  }

  v30 = v1[36];
  v31 = v1[37];
  v32 = [objc_allocWithZone(FLPreferencesController) init];
  v1[48] = v32;
  swift_beginAccess();
  v33 = *(v31 + 16);
  v1[49] = v33;
  v1[2] = v1;
  v1[7] = v1 + 34;
  v1[3] = sub_10009FFFC;
  v34 = swift_continuation_init();
  v1[17] = sub_10004DED0(&qword_10015E8F8, &unk_100115B00);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000A0918;
  v1[13] = &unk_1001502F8;
  v1[14] = v34;
  [v32 performPreferencesActionForGroup:v30 item:v33 action:v5 completion:v2];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_10009FFFC()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);

  return _swift_task_switch(sub_1000A0104, v2, v1);
}

uint64_t sub_1000A0104()
{
  v60 = v0;
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 304);

  v4 = *(v0 + 272);

  swift_unknownObjectRetain();

  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 288);
    v8 = *(v0 + 296);
    v10 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v10 = 136446722;
    v11 = [v9 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100025CF0(v12, v14, &v59);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2082;
    swift_beginAccess();
    v16 = *(v8 + 16);
    if (v16 && (v17 = [v16 uniqueIdentifier]) != 0)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v22 = *(v0 + 304);
    *(v0 + 272) = v19;
    *(v0 + 280) = v21;
    sub_10004DED0(&qword_10015E900, &qword_100114A50);
    v23 = String.init<A>(describing:)();
    v25 = sub_100025CF0(v23, v24, &v59);

    *(v10 + 14) = v25;
    *(v10 + 22) = 2082;
    *(v0 + 272) = v22;
    v26 = v22;
    sub_10004DED0(&qword_10015E908, &unk_100115B10);
    v27 = String.init<A>(describing:)();
    v29 = sub_100025CF0(v27, v28, &v59);

    *(v10 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v6, v7, "Requesting view controller to present on follow up group '%{public}s', item '%{public}s', action: %{public}s.", v10, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v30 = [v4 viewControllerToPresent];
  if (v30)
  {
    v31 = *(v0 + 312);
    v32 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingFollowUpController;
    v33 = *(v31 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingFollowUpController);
    *(v31 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingFollowUpController) = v30;
    v34 = v30;

    v35 = [v4 presentationStyle];
    if (v35 == 1)
    {
      sub_100098CC4(6);

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v40 = 136315394;
        v50 = _typeName(_:qualified:)();
        v52 = sub_100025CF0(v50, v51, &v59);

        *(v40 + 4) = v52;
        *(v40 + 12) = 2080;
        *(v40 + 14) = sub_100025CF0(0xD00000000000002FLL, 0x8000000100123EB0, &v59);
        v44 = "…Complete (%s.%s) presenting modal.";
        goto LABEL_19;
      }
    }

    else if (v35)
    {
      v53 = *(v31 + v32);
      *(v31 + v32) = 0;

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v40 = 136315394;
        v54 = _typeName(_:qualified:)();
        v56 = sub_100025CF0(v54, v55, &v59);

        *(v40 + 4) = v56;
        *(v40 + 12) = 2080;
        *(v40 + 14) = sub_100025CF0(0xD00000000000002FLL, 0x8000000100123EB0, &v59);
        v44 = "…Complete (%s.%s) unknown presentation style.";
        goto LABEL_19;
      }
    }

    else
    {
      v36 = *(v0 + 177);
      v37 = *(v0 + 336);
      *(v0 + 144) = *(v0 + 320);
      *(v0 + 160) = v37;
      *(v0 + 176) = v36;
      sub_10009698C(v0 + 144);

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v40 = 136315394;
        v41 = _typeName(_:qualified:)();
        v43 = sub_100025CF0(v41, v42, &v59);

        *(v40 + 4) = v43;
        *(v40 + 12) = 2080;
        *(v40 + 14) = sub_100025CF0(0xD00000000000002FLL, 0x8000000100123EB0, &v59);
        v44 = "…Complete (%s.%s) updated selection.";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v38, v39, v44, v40, 0x16u);
        swift_arrayDestroy();
      }
    }

    goto LABEL_21;
  }

  v38 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v38, v45))
  {
    v46 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v46 = 136315394;
    v47 = _typeName(_:qualified:)();
    v49 = sub_100025CF0(v47, v48, &v59);

    *(v46 + 4) = v49;
    *(v46 + 12) = 2080;
    *(v46 + 14) = sub_100025CF0(0xD00000000000002FLL, 0x8000000100123EB0, &v59);
    _os_log_impl(&_mh_execute_header, v38, v45, "…Complete (%s.%s) no view controller to present (likely action).", v46, 0x16u);
    swift_arrayDestroy();
  }

LABEL_21:

  *(v0 + 200) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 216) = -1;
  sub_100099214(v0 + 184, &OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__currentlyLoadingFollowUp, &unk_100115AA0, sub_1000A49E4);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_1000A0918(uint64_t a1, void *a2)
{
  v3 = sub_100018544((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

void sub_1000A097C(char a1, void *a2, uint64_t a3)
{
  if (qword_10015AAC8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000659C(v5, qword_1001696D0);

  sub_10002698C(a3, v15);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  sub_100026A04(a3);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v15[0] = swift_slowAlloc();
    *v8 = 136315906;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100025CF0(v9, v10, v15);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_100025CF0(0xD000000000000019, 0x8000000100124120, v15);
    *(v8 + 22) = 2082;
    v12 = sub_100026A58();
    v14 = sub_100025CF0(v12, v13, v15);

    *(v8 + 24) = v14;
    *(v8 + 32) = 1024;
    *(v8 + 34) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v6, v7, "…Complete (%s.%s), item: %{public}s, success: %{BOOL}d", v8, 0x26u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000A0B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[272] = a4;
  v5 = sub_10004DED0(&qword_10015EAD0, &unk_100113230);
  v4[273] = v5;
  v4[274] = *(v5 - 8);
  v4[275] = swift_task_alloc();
  v4[276] = sub_10004DED0(&qword_10015EAD8, &qword_100115D70);
  v4[277] = swift_task_alloc();
  v4[278] = sub_10004DED0(&qword_10015EAE0, &qword_100115D78);
  v4[279] = swift_task_alloc();
  v4[280] = type metadata accessor for MainActor();
  v4[281] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[282] = v7;
  v4[283] = v6;

  return _swift_task_switch(sub_1000A0D14, v7, v6);
}

uint64_t sub_1000A0D14()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 2232);
    v3 = *(v0 + 2224);
    v4 = *(v0 + 2216);
    v5 = *(v0 + 2200);
    v6 = *(v0 + 2192);
    v7 = *(v0 + 2184);
    v16 = *(v0 + 2208);
    *(v0 + 2272) = *(Strong + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_systemStateSnapshotProvider);

    sub_1000525A0(&qword_10015EAE8, &qword_10015EAD0, &unk_100113230, &protocol conformance descriptor for AsyncStream<A>);
    sub_1000A4DEC();
    AsyncSequence<>.removeDuplicates()();
    (*(v6 + 16))(v5, v4, v7);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    v8 = (v4 + *(v16 + 36));
    v9 = *v8;
    *(v0 + 2280) = *v8;
    v10 = v8[1];
    *(v0 + 2288) = v10;

    sub_1000068B0(v4, &qword_10015EAD8, &qword_100115D70);
    v11 = *(v3 + 40);
    *(v0 + 2148) = v11;
    v12 = (v2 + v11);
    v12[3] = 0u;
    v12[4] = 0u;
    v12[1] = 0u;
    v12[2] = 0u;
    *v12 = 0u;
    v13 = (v2 + *(v3 + 36));
    *v13 = v9;
    v13[1] = v10;
    swift_beginAccess();
    *(v0 + 2296) = static MainActor.shared.getter();

    return _swift_task_switch(sub_1000A0F7C, 0, 0);
  }

  else
  {

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1000A0F7C()
{
  v1 = (*(v0 + 2232) + *(v0 + 2148));
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  v6 = *(v1 + 2);
  *(v0 + 2016) = *(v1 + 1);
  *(v0 + 2064) = v5;
  *(v0 + 2048) = v4;
  *(v0 + 2032) = v6;
  if (v2)
  {
    *(v0 + 1136) = v3;
    *(v0 + 1144) = v2;
    v7 = *(v0 + 2016);
    v8 = *(v0 + 2032);
    *(v0 + 1152) = v7;
    *(v0 + 1168) = v8;
    v9 = *(v0 + 2048);
    v10 = *(v0 + 2064);
    *(v0 + 1184) = v9;
    *(v0 + 1200) = v10;
    *(v0 + 128) = v8;
    *(v0 + 144) = v9;
    *(v0 + 160) = v10;
    *(v0 + 96) = *(v0 + 1136);
    *(v0 + 112) = v7;
    sub_100063D94(v0 + 1136, v0 + 1216);
    v11 = sub_10004DED0(&qword_10015EAF8, &unk_100115D80);
    v12 = sub_1000525A0(&unk_10015EB00, &qword_10015EAF8, &unk_100115D80, &protocol conformance descriptor for AsyncStream<A>.Iterator);
    v13 = swift_task_alloc();
    *(v0 + 2320) = v13;
    *v13 = v0;
    v13[1] = sub_1000A1294;
    v14 = v0 + 1776;
  }

  else
  {
    v11 = sub_10004DED0(&qword_10015EAF8, &unk_100115D80);
    v12 = sub_1000525A0(&unk_10015EB00, &qword_10015EAF8, &unk_100115D80, &protocol conformance descriptor for AsyncStream<A>.Iterator);
    v15 = swift_task_alloc();
    *(v0 + 2304) = v15;
    *v15 = v0;
    v15[1] = sub_1000A1180;
    v14 = v0 + 1296;
  }

  return dispatch thunk of AsyncIteratorProtocol.next()(v14, v11, v12);
}

uint64_t sub_1000A1180()
{
  *(*v1 + 2312) = v0;

  if (v0)
  {
    v2 = sub_1000A2CF4;
  }

  else
  {
    v2 = sub_1000A234C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A1294()
{
  *(*v1 + 2328) = v0;

  if (v0)
  {
    v2 = sub_1000A1594;
  }

  else
  {
    v2 = sub_1000A13A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A13A8()
{
  v1 = (v0 + 1776);
  if (*(v0 + 1784))
  {
    v2 = *(v0 + 1792);
    *(v0 + 1696) = *v1;
    v3 = *(v0 + 1824);
    *(v0 + 1760) = *(v0 + 1840);
    v4 = *(v0 + 1808);
    *(v0 + 1744) = v3;
    *(v0 + 1728) = v4;
    v5 = *(v0 + 2280);
    *(v0 + 1712) = v2;
    v16 = (v5 + *v5);
    v6 = swift_task_alloc();
    *(v0 + 2336) = v6;
    *v6 = v0;
    v6[1] = sub_1000A1650;

    return v16(v0 + 96, v0 + 1696);
  }

  else
  {
    v8 = *(v0 + 2296);
    v9 = *(v0 + 144);
    *(v0 + 208) = *(v0 + 128);
    *(v0 + 224) = v9;
    *(v0 + 240) = *(v0 + 160);
    v10 = *(v0 + 112);
    *(v0 + 176) = *(v0 + 96);
    *(v0 + 192) = v10;
    sub_100063DF0(v0 + 176);
    v11 = *v1;
    *(v0 + 1952) = *(v0 + 1792);
    v12 = *(v0 + 1824);
    *(v0 + 1968) = *(v0 + 1808);
    *(v0 + 1984) = v12;
    *(v0 + 2000) = *(v0 + 1840);
    *(v0 + 1936) = v11;
    sub_1000068B0(v0 + 1936, &unk_10015EB10, &qword_100115D90);
    if (v8)
    {
      swift_getObjectType();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    return _swift_task_switch(sub_1000A1A0C, v13, v15);
  }
}

uint64_t sub_1000A1594()
{
  v1 = *(v0 + 96);
  *(v0 + 1872) = *(v0 + 112);
  v2 = *(v0 + 144);
  *(v0 + 1888) = *(v0 + 128);
  *(v0 + 1904) = v2;
  *(v0 + 1920) = *(v0 + 160);
  *(v0 + 1856) = v1;
  sub_100063DF0(v0 + 1856);
  *(v0 + 2400) = *(v0 + 2328);
  if (*(v0 + 2296))
  {
    swift_getObjectType();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  return _swift_task_switch(sub_1000A22C0, v3, v5);
}

uint64_t sub_1000A1650(char a1)
{
  *(*v1 + 2145) = a1;

  return _swift_task_switch(sub_1000A1750, 0, 0);
}

uint64_t sub_1000A1750()
{
  v1 = (v0 + 1696);
  if (*(v0 + 2145) == 1)
  {
    v2 = *(v0 + 1744);
    *(v0 + 48) = *(v0 + 1728);
    *(v0 + 64) = v2;
    *(v0 + 80) = *(v0 + 1760);
    v3 = *(v0 + 1712);
    *(v0 + 16) = *v1;
    *(v0 + 32) = v3;
    sub_100063DF0(v0 + 16);
    v4 = sub_10004DED0(&qword_10015EAF8, &unk_100115D80);
    v5 = sub_1000525A0(&unk_10015EB00, &qword_10015EAF8, &unk_100115D80, &protocol conformance descriptor for AsyncStream<A>.Iterator);
    v6 = swift_task_alloc();
    *(v0 + 2320) = v6;
    *v6 = v0;
    v6[1] = sub_1000A1294;

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 1776, v4, v5);
  }

  else
  {
    v7 = *(v0 + 96);
    *(v0 + 1472) = *(v0 + 112);
    v8 = *(v0 + 144);
    *(v0 + 1488) = *(v0 + 128);
    *(v0 + 1504) = v8;
    *(v0 + 1520) = *(v0 + 160);
    v9 = *(v0 + 2296);
    v10 = (*(v0 + 2232) + *(v0 + 2148));
    *(v0 + 1456) = v7;
    sub_100063DF0(v0 + 1456);
    *(v0 + 1536) = *v10;
    v11 = v10[3];
    v12 = v10[4];
    v13 = v10[2];
    *(v0 + 1552) = v10[1];
    *(v0 + 1600) = v12;
    *(v0 + 1584) = v11;
    *(v0 + 1568) = v13;
    sub_1000068B0(v0 + 1536, &unk_10015EB10, &qword_100115D90);
    v14 = *(v0 + 1760);
    *(v0 + 1664) = *(v0 + 1744);
    *(v0 + 1680) = v14;
    v15 = *(v0 + 1728);
    *(v0 + 1632) = *(v0 + 1712);
    *(v0 + 1648) = v15;
    *(v0 + 1616) = *v1;
    *(v0 + 2146) = *(v0 + 1616);
    *(v0 + 2147) = *(v0 + 1617);
    *(v0 + 2408) = *(v0 + 1618);
    *(v0 + 2344) = *(v0 + 1624);
    *(v0 + 2352) = *(v0 + 1632);
    *(v0 + 2368) = *(v0 + 1656);
    *(v0 + 2376) = *(v0 + 1664);
    *(v0 + 2409) = *(v0 + 1680);
    *(v0 + 2392) = *(v0 + 1688);
    memmove(v10, (v0 + 1696), 0x50uLL);
    *(v0 + 2410) = *(v0 + 1728);
    *(v0 + 2411) = *(v0 + 1729);
    *(v0 + 2412) = *(v0 + 1730);
    *(v0 + 2413) = *(v0 + 1731);
    *(v0 + 2414) = *(v0 + 1732);
    *(v0 + 2415) = *(v0 + 1733);
    *(v0 + 2416) = *(v0 + 1734);
    sub_100063D94(v0 + 1616, v0 + 1376);
    if (v9)
    {
      swift_getObjectType();
      v16 = dispatch thunk of Actor.unownedExecutor.getter();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    return _swift_task_switch(sub_1000A1B1C, v16, v18);
  }
}

uint64_t sub_1000A1A0C()
{

  v1 = *(v0 + 2264);
  v2 = *(v0 + 2256);

  return _swift_task_switch(sub_1000A1A74, v2, v1);
}

uint64_t sub_1000A1A74()
{
  sub_1000068B0(*(v0 + 2232), &qword_10015EAE0, &qword_100115D78);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A1B1C()
{

  v1 = *(v0 + 2264);
  v2 = *(v0 + 2256);

  return _swift_task_switch(sub_1000A1B84, v2, v1);
}

uint64_t sub_1000A1B84()
{
  v1 = *(v0 + 2416);
  v2 = *(v0 + 2415);
  v3 = *(v0 + 2414);
  v4 = *(v0 + 2413);
  v5 = *(v0 + 2412);
  v6 = *(v0 + 2411);
  v7 = *(v0 + 2410);
  v8 = *(v0 + 2392);
  v9 = *(v0 + 2409);
  v10 = *(v0 + 2384);
  v11 = *(v0 + 2376);
  v12 = *(v0 + 2368);
  v13 = *(v0 + 2360);
  v14 = *(v0 + 2352);
  v15 = *(v0 + 2344);
  v16 = *(v0 + 2408);
  v17 = *(v0 + 2147);
  v18 = *(v0 + 2146);
  *(v0 + 576) = v18;
  *(v0 + 577) = v17;
  *(v0 + 578) = v16;
  *(v0 + 584) = v15;
  v71 = v13;
  v72 = v14;
  *(v0 + 592) = v14;
  *(v0 + 600) = v13;
  v69 = v6;
  v70 = v7;
  *(v0 + 608) = v7;
  *(v0 + 609) = v6;
  v67 = v4;
  v68 = v5;
  *(v0 + 610) = v5;
  *(v0 + 611) = v4;
  v65 = v2;
  v66 = v3;
  *(v0 + 612) = v3;
  *(v0 + 613) = v2;
  v64 = v1;
  *(v0 + 614) = v1;
  v63 = v12;
  *(v0 + 616) = v12;
  *(v0 + 624) = v11;
  *(v0 + 632) = v10;
  *(v0 + 640) = v9;
  *(v0 + 648) = v8;
  v19 = *(v0 + 576);
  v20 = *(v0 + 592);
  v21 = *(v0 + 640);
  *(v0 + 944) = *(v0 + 624);
  *(v0 + 960) = v21;
  v22 = *(v0 + 608);
  *(v0 + 912) = v20;
  *(v0 + 928) = v22;
  *(v0 + 896) = v19;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_100063DF0(v0 + 576);
    goto LABEL_57;
  }

  v24 = Strong;
  v62 = v9;
  v73 = (v0 + 896);
  v25 = (Strong + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
  *(v0 + 656) = *(Strong + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
  v26 = v25[1];
  v27 = v25[2];
  v28 = v25[4];
  *(v0 + 704) = v25[3];
  *(v0 + 720) = v28;
  *(v0 + 672) = v26;
  *(v0 + 688) = v27;
  if (v18 != *(v0 + 656) || ((v17 ^ *(v0 + 657)) & 1) != 0 || ((v16 ^ *(v0 + 658)) & 1) != 0)
  {
    goto LABEL_56;
  }

  *&v61 = v10;
  *(&v61 + 1) = v11;
  v60 = v8;
  v29 = *(v0 + 672);
  v30 = *(v0 + 680);
  v31 = *(v0 + 664);
  sub_100063D94(v0 + 656, v0 + 736);
  if ((sub_1000459A0(v31, v15) & 1) == 0 || (sub_1000459A0(v29, v72) & 1) == 0 || (sub_1000459A0(v30, v71) & 1) == 0 || v70 != *(v0 + 688) || ((v69 ^ *(v0 + 689)) & 1) != 0 || ((v68 ^ *(v0 + 690)) & 1) != 0 || ((v67 ^ *(v0 + 691)) & 1) != 0 || ((v66 ^ *(v0 + 692)) & 1) != 0 || ((v65 ^ *(v0 + 693)) & 1) != 0 || *(v0 + 694) != v64 || (sub_1000459A0(*(v0 + 696), v63) & 1) == 0)
  {
    goto LABEL_55;
  }

  v32 = *(v0 + 704);
  v33 = *(v0 + 712);
  v34 = *(v0 + 720);
  v35 = *(v0 + 728);
  v36 = v34 >> 6;
  if (v34 >> 6 > 1)
  {
    if (v36 == 2)
    {
      if ((v62 & 0xC0) == 0x80 && __PAIR128__(v33, v32) == __PAIR128__(v61, *(&v61 + 1)))
      {
        goto LABEL_33;
      }
    }

    else if (v62 == 192 && v61 == 0)
    {
      goto LABEL_33;
    }

LABEL_55:
    sub_100063DF0(v0 + 656);
    goto LABEL_56;
  }

  if (v36)
  {
    if ((v62 & 0xC0) == 0x40 && v32 == *(&v61 + 1))
    {
      goto LABEL_33;
    }

    goto LABEL_55;
  }

  if (v62 >= 0x40)
  {
    goto LABEL_55;
  }

  if (__PAIR128__(v33, v32) != __PAIR128__(v61, *(&v61 + 1)))
  {
    v37 = *(v0 + 728);
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v35 = v37;
    if ((v38 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  if ((v34 ^ v62))
  {
    goto LABEL_55;
  }

LABEL_33:
  v39 = sub_10006C604(v35, v60);
  sub_100063DF0(v0 + 656);
  if ((v39 & 1) == 0)
  {
LABEL_56:
    swift_getKeyPath();
    v51 = swift_task_alloc();
    *(v51 + 16) = v24;
    *(v51 + 24) = v73;
    *(v0 + 2152) = v24;
    sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_100063DF0(v0 + 576);

    goto LABEL_57;
  }

  swift_getKeyPath();
  *(v0 + 2168) = v24;
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 816) = *v25;
  v40 = v25[1];
  v41 = v25[2];
  v42 = v25[4];
  *(v0 + 864) = v25[3];
  *(v0 + 880) = v42;
  *(v0 + 832) = v40;
  *(v0 + 848) = v41;
  if (v18 != *(v0 + 816) || ((v17 ^ *(v0 + 817)) & 1) != 0 || ((v16 ^ *(v0 + 818)) & 1) != 0)
  {
    goto LABEL_73;
  }

  v43 = *(v0 + 832);
  v44 = *(v0 + 840);
  v45 = *(v0 + 824);
  sub_100063D94(v0 + 816, v0 + 1056);
  if (sub_1000459A0(v15, v45) & 1) != 0 && (sub_1000459A0(v72, v43) & 1) != 0 && (sub_1000459A0(v71, v44) & 1) != 0 && v70 == *(v0 + 848) && ((v69 ^ *(v0 + 849)) & 1) == 0 && ((v68 ^ *(v0 + 850)) & 1) == 0 && ((v67 ^ *(v0 + 851)) & 1) == 0 && ((v66 ^ *(v0 + 852)) & 1) == 0 && ((v65 ^ *(v0 + 853)) & 1) == 0 && v64 == *(v0 + 854) && (sub_1000459A0(v63, *(v0 + 856)))
  {
    v46 = *(v0 + 864);
    v47 = *(v0 + 872);
    v48 = *(v0 + 880);
    v49 = *(v0 + 888);
    v50 = v62 >> 6;
    if (v62 >> 6 > 1)
    {
      if (v50 == 2)
      {
        if ((v48 & 0xC0) == 0x80 && v61 == __PAIR128__(v46, v47))
        {
          goto LABEL_70;
        }
      }

      else if (v48 >= 0xC0 && !(v47 | v46) && v48 == 192)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (!v50)
      {
        if (v48 >= 0x40 || v61 != __PAIR128__(v46, v47) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v48 ^ v62) & 1) != 0)
        {
          goto LABEL_72;
        }

LABEL_70:
        v52 = sub_10006C604(v60, v49);
        sub_100063DF0(v0 + 816);
        if (v52)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      }

      if ((v48 & 0xC0) == 0x40 && *(&v61 + 1) == v46)
      {
        goto LABEL_70;
      }
    }
  }

LABEL_72:
  sub_100063DF0(v0 + 816);
LABEL_73:
  *(v0 + 2128) = "System State Snapshot Changed";
  *(v0 + 2136) = 29;
  *(v0 + 2144) = 2;
  PassthroughSubject.send(_:)();
LABEL_74:
  *(v0 + 976) = *v25;
  v53 = v25[1];
  v54 = v25[2];
  v55 = v25[4];
  *(v0 + 1024) = v25[3];
  *(v0 + 1040) = v55;
  *(v0 + 992) = v53;
  *(v0 + 1008) = v54;
  v56 = *(v0 + 960);
  v58 = *(v0 + 912);
  v57 = *(v0 + 928);
  v25[3] = *(v0 + 944);
  v25[4] = v56;
  v25[1] = v58;
  v25[2] = v57;
  *v25 = *v73;
  sub_100063DF0(v0 + 976);

LABEL_57:
  *(v0 + 2296) = static MainActor.shared.getter();

  return _swift_task_switch(sub_1000A0F7C, 0, 0);
}

uint64_t sub_1000A22C0()
{
  *(v0 + 2160) = *(v0 + 2400);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1000A234C()
{
  v1 = *(v0 + 2296);
  v2 = (*(v0 + 2232) + *(v0 + 2148));
  v3 = *(v0 + 1312);
  v4 = *(v0 + 1344);
  *(v0 + 448) = *(v0 + 1328);
  *(v0 + 464) = v4;
  *(v0 + 480) = *(v0 + 1360);
  *(v0 + 416) = *(v0 + 1296);
  *(v0 + 432) = v3;
  v6 = v2[1];
  v5 = v2[2];
  v7 = v2[4];
  *(v0 + 384) = v2[3];
  *(v0 + 400) = v7;
  *(v0 + 352) = v6;
  *(v0 + 368) = v5;
  *(v0 + 336) = *v2;
  sub_1000068B0(v0 + 336, &unk_10015EB10, &qword_100115D90);
  *v2 = *(v0 + 416);
  v8 = *(v0 + 480);
  v10 = *(v0 + 432);
  v9 = *(v0 + 448);
  v2[3] = *(v0 + 464);
  v2[4] = v8;
  v2[1] = v10;
  v2[2] = v9;
  v11 = *(v0 + 464);
  *(v0 + 288) = *(v0 + 448);
  *(v0 + 304) = v11;
  *(v0 + 320) = *(v0 + 480);
  v12 = *(v0 + 432);
  *(v0 + 256) = *(v0 + 416);
  *(v0 + 272) = v12;
  sub_100059CA0(v0 + 256, v0 + 496, &unk_10015EB10, &qword_100115D90);
  if (v1)
  {
    swift_getObjectType();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  return _swift_task_switch(sub_1000A248C, v13, v15);
}

uint64_t sub_1000A248C()
{

  v1 = *(v0 + 2264);
  v2 = *(v0 + 2256);

  return _swift_task_switch(sub_1000A24F4, v2, v1);
}

uint64_t sub_1000A24F4(uint8x8_t a1)
{
  v2 = *(v1 + 264);
  if (v2)
  {
    v3 = (v1 + 896);
    v4 = *(v1 + 258);
    v5 = *(v1 + 257);
    v6 = *(v1 + 293);
    v7 = *(v1 + 292);
    v9 = *(v1 + 272);
    v8 = *(v1 + 280);
    v10 = *(v1 + 328);
    v11 = *(v1 + 320);
    v12 = *(v1 + 304);
    v13 = *(v1 + 312);
    v14 = *(v1 + 296);
    v15 = *(v1 + 294);
    v66 = *(v1 + 256);
    a1.i32[0] = *(v1 + 288);
    v72 = a1.i32[0];
    *(v1 + 576) = v66 & 1;
    *(v1 + 577) = v5 & 1;
    *(v1 + 578) = v4 & 1;
    *(v1 + 584) = v2;
    v74 = v8;
    v75 = v9;
    *(v1 + 592) = v9;
    *(v1 + 600) = v8;
    v16 = vmovl_u8(a1).u64[0] & 0xFF01FF01FF01FF01;
    *(v1 + 608) = vuzp1_s8(v16, v16).u32[0];
    v70 = v6;
    v71 = v7;
    *(v1 + 612) = v7 & 1;
    *(v1 + 613) = v6 & 1;
    v69 = v15;
    *(v1 + 614) = v15;
    v68 = v14;
    *(v1 + 616) = v14;
    *(v1 + 624) = v12;
    *(v1 + 632) = v13;
    v67 = v11;
    *(v1 + 640) = v11;
    *(v1 + 648) = v10;
    v17 = *(v1 + 576);
    v18 = *(v1 + 592);
    v19 = *(v1 + 640);
    *(v1 + 944) = *(v1 + 624);
    *(v1 + 960) = v19;
    v20 = *(v1 + 608);
    *(v1 + 912) = v18;
    *(v1 + 928) = v20;
    *(v1 + 896) = v17;
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      sub_100063DF0(v1 + 576);
LABEL_61:
      *(v1 + 2296) = static MainActor.shared.getter();

      return _swift_task_switch(sub_1000A0F7C, 0, 0);
    }

    v22 = Strong;
    *&v65 = v13;
    *(&v65 + 1) = v12;
    v64 = v10;
    v23 = (Strong + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
    *(v1 + 656) = *(Strong + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[4];
    *(v1 + 704) = v23[3];
    *(v1 + 720) = v26;
    *(v1 + 672) = v24;
    *(v1 + 688) = v25;
    if (*(v1 + 656) != (v66 & 1) || ((*(v1 + 657) ^ v5) & 1) != 0 || ((*(v1 + 658) ^ v4) & 1) != 0)
    {
      goto LABEL_60;
    }

    v27 = *(v1 + 672);
    v28 = *(v1 + 680);
    v29 = *(v1 + 664);
    sub_100063D94(v1 + 656, v1 + 736);
    if (sub_1000459A0(v29, v2) & 1) != 0 && (sub_1000459A0(v27, v75) & 1) != 0 && (sub_1000459A0(v28, v74))
    {
      v30 = v72;
      v31 = (v72 >> 8) & 1;
      v73 = v72 & 1;
      if (*(v1 + 688) == (v73 & 1) && ((*(v1 + 689) ^ v31) & 1) == 0)
      {
        v32 = HIBYTE(v30) & 1;
        v63 = BYTE2(v30) & 1;
        if ((*(v1 + 690) ^ v63) & 1) == 0 && ((*(v1 + 691) ^ v32) & 1) == 0 && ((*(v1 + 692) ^ v71) & 1) == 0 && ((*(v1 + 693) ^ v70) & 1) == 0 && *(v1 + 694) == v69 && (sub_1000459A0(*(v1 + 696), v68))
        {
          v33 = *(v1 + 704);
          v34 = *(v1 + 712);
          v35 = *(v1 + 720);
          v36 = *(v1 + 728);
          v37 = v35 >> 6;
          if (v35 >> 6 > 1)
          {
            if (v37 == 2)
            {
              if ((v67 & 0xC0) == 0x80 && __PAIR128__(v34, v33) == __PAIR128__(v65, *(&v65 + 1)))
              {
                goto LABEL_37;
              }
            }

            else if (v67 == 192 && v65 == 0)
            {
              goto LABEL_37;
            }
          }

          else
          {
            if (!v37)
            {
              if (v67 >= 0x40)
              {
                goto LABEL_59;
              }

              if (__PAIR128__(v34, v33) != __PAIR128__(v65, *(&v65 + 1)))
              {
                v61 = *(v1 + 728);
                v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v36 = v61;
                if ((v38 & 1) == 0)
                {
                  goto LABEL_59;
                }
              }

              if ((v35 ^ v67))
              {
                goto LABEL_59;
              }

LABEL_37:
              v41 = sub_10006C604(v36, v64);
              sub_100063DF0(v1 + 656);
              if (v41)
              {
                v62 = (v1 + 976);
                swift_getKeyPath();
                *(v1 + 2168) = v22;
                sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
                ObservationRegistrar.access<A, B>(_:keyPath:)();

                *(v1 + 816) = *v23;
                v42 = v23[1];
                v43 = v23[2];
                v44 = v23[4];
                *(v1 + 864) = v23[3];
                *(v1 + 880) = v44;
                *(v1 + 832) = v42;
                *(v1 + 848) = v43;
                if (*(v1 + 816) != (v66 & 1) || ((*(v1 + 817) ^ v5) & 1) != 0 || ((*(v1 + 818) ^ v4) & 1) != 0)
                {
                  goto LABEL_77;
                }

                v45 = *(v1 + 832);
                v46 = *(v1 + 840);
                v47 = *(v1 + 824);
                sub_100063D94(v1 + 816, v1 + 1056);
                if (sub_1000459A0(v2, v47) & 1) != 0 && (sub_1000459A0(v75, v45) & 1) != 0 && (sub_1000459A0(v74, v46) & 1) != 0 && *(v1 + 848) == (v73 & 1) && ((*(v1 + 849) ^ v31) & 1) == 0 && ((*(v1 + 850) ^ v63) & 1) == 0 && ((*(v1 + 851) ^ v32) & 1) == 0 && ((*(v1 + 852) ^ v71) & 1) == 0 && ((*(v1 + 853) ^ v70) & 1) == 0 && v69 == *(v1 + 854) && (sub_1000459A0(v68, *(v1 + 856)))
                {
                  v48 = *(v1 + 864);
                  v49 = *(v1 + 872);
                  v50 = *(v1 + 880);
                  v51 = *(v1 + 888);
                  v52 = v67 >> 6;
                  if (v67 >> 6 > 1)
                  {
                    if (v52 == 2)
                    {
                      if ((v50 & 0xC0) == 0x80 && v65 == __PAIR128__(v48, v49))
                      {
                        goto LABEL_74;
                      }
                    }

                    else if (v50 >= 0xC0 && !(v49 | v48) && v50 == 192)
                    {
                      goto LABEL_74;
                    }
                  }

                  else
                  {
                    if (!v52)
                    {
                      if (v50 >= 0x40 || v65 != __PAIR128__(v48, v49) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v50 ^ v67) & 1) != 0)
                      {
                        goto LABEL_76;
                      }

LABEL_74:
                      v54 = sub_10006C604(v64, v51);
                      sub_100063DF0(v1 + 816);
                      if (v54)
                      {
                        goto LABEL_78;
                      }

                      goto LABEL_77;
                    }

                    if ((v50 & 0xC0) == 0x40 && *(&v65 + 1) == v48)
                    {
                      goto LABEL_74;
                    }
                  }
                }

LABEL_76:
                sub_100063DF0(v1 + 816);
LABEL_77:
                *(v1 + 2128) = "System State Snapshot Changed";
                *(v1 + 2136) = 29;
                *(v1 + 2144) = 2;
                PassthroughSubject.send(_:)();
LABEL_78:
                *v62 = *v23;
                v55 = v23[1];
                v56 = v23[2];
                v57 = v23[4];
                *(v1 + 1024) = v23[3];
                *(v1 + 1040) = v57;
                *(v1 + 992) = v55;
                *(v1 + 1008) = v56;
                v58 = *(v1 + 960);
                v60 = *(v1 + 912);
                v59 = *(v1 + 928);
                v23[3] = *(v1 + 944);
                v23[4] = v58;
                v23[1] = v60;
                v23[2] = v59;
                *v23 = *v3;
                sub_100063DF0(v62);

                goto LABEL_61;
              }

LABEL_60:
              swift_getKeyPath();
              v53 = swift_task_alloc();
              *(v53 + 16) = v22;
              *(v53 + 24) = v3;
              *(v1 + 2152) = v22;
              sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
              ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
              sub_100063DF0(v1 + 576);

              goto LABEL_61;
            }

            if ((v67 & 0xC0) == 0x40 && v33 == *(&v65 + 1))
            {
              goto LABEL_37;
            }
          }
        }
      }
    }

LABEL_59:
    sub_100063DF0(v1 + 656);
    goto LABEL_60;
  }

  sub_1000068B0(*(v1 + 2232), &qword_10015EAE0, &qword_100115D78);

  v39 = *(v1 + 8);

  return v39();
}

uint64_t sub_1000A2CF4()
{
  v0[300] = v0[289];
  if (v0[287])
  {
    swift_getObjectType();
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
  }

  else
  {
    v1 = 0;
    v3 = 0;
  }

  return _swift_task_switch(sub_1000A22C0, v1, v3);
}

uint64_t sub_1000A2D88()
{
  v0 = sub_10001A920();
  v1 = v0[2];
  if (v1)
  {
    v2 = (v0 + 4);
    do
    {
      sub_10000B270(v2, v6);
      v3 = v7;
      v4 = v8;
      sub_100018544(v6, v7);
      sub_10005F30C(v3, v4);
      sub_10000665C(v6);
      v2 += 40;
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_1000A2E68(uint64_t a1, uint64_t a2)
{
  v113 = type metadata accessor for PrimarySettingsListItemModel(0);
  v4 = *(v113 - 8);
  v5 = __chkstk_darwin(v113);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v91 - v8;
  v107 = type metadata accessor for LocalizedStringResource();
  v10 = *(v107 - 8);
  __chkstk_darwin(v107);
  v104 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004DED0(&unk_10015FB70, &unk_100112010);
  __chkstk_darwin(v12 - 8);
  v14 = &v91 - v13;
  v106 = sub_10004DED0(&qword_10015E940, &unk_100113180);
  __chkstk_darwin(v106);
  v16 = &v91 - v15;
  v17 = type metadata accessor for PrimarySettingsListSectionModel(0);
  v18 = *(v17 - 8);
  v110 = v17;
  v111 = v18;
  v19 = __chkstk_darwin(v17);
  v114 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v112 = &v91 - v22;
  __chkstk_darwin(v21);
  v105 = &v91 - v23;
  v24 = sub_10004DED0(&qword_10015E948, &qword_100115C28);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v25);
  v108 = &v91 - v29;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v92 = v4;
  v30 = 0;
  v31 = *(a1 + 64);
  v94 = a1 + 64;
  v32 = 1 << *(a1 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v93 = (v32 + 63) >> 6;
  v99 = (v10 + 48);
  v95 = (v10 + 32);
  v96 = (v10 + 8);
  v101 = a2;
  v97 = v14;
  v35 = v112;
  v100 = v16;
  v103 = v27;
  v98 = a1;
  v109 = v7;
  while (v34)
  {
    v102 = (v34 - 1) & v34;
    v36 = __clz(__rbit64(v34)) | (v30 << 6);
LABEL_17:
    v41 = *(a1 + 48) + 24 * v36;
    v42 = *v41;
    v43 = *(v41 + 8);
    v44 = *(a1 + 56) + *(v111 + 72) * v36;
    v45 = *(v41 + 16);
    v46 = v105;
    sub_10002EA78(v44, v105, type metadata accessor for PrimarySettingsListSectionModel);
    v47 = sub_10004DED0(&unk_10015E950, &unk_100115C30);
    v48 = *(v47 + 48);
    v27 = v103;
    *v103 = v42;
    *(v27 + 1) = v43;
    v27[16] = v45;
    sub_1000A4C50(v46, &v27[v48], type metadata accessor for PrimarySettingsListSectionModel);
    (*(*(v47 - 8) + 56))(v27, 0, 1, v47);
    sub_100025974(v42, v43, v45);
LABEL_18:
    v49 = v101;
    v50 = v27;
    v51 = v108;
    sub_1000A4CB8(v50, v108, &qword_10015E948, &qword_100115C28);
    v52 = sub_10004DED0(&unk_10015E950, &unk_100115C30);
    result = (*(*(v52 - 8) + 48))(v51, 1, v52);
    if (result == 1)
    {
      return result;
    }

    v53 = *v51;
    v54 = *(v51 + 8);
    v55 = *(v51 + 16);
    sub_1000A4C50(v51 + *(v52 + 48), v35, type metadata accessor for PrimarySettingsListSectionModel);
    v56 = sub_10002F348(v53, v54, v55);
    v58 = v57;
    sub_100025CD8(v53, v54, v55);
    if ((v58 & 1) == 0)
    {
      goto LABEL_112;
    }

    v59 = v114;
    sub_10002EA78(*(v49 + 56) + *(v111 + 72) * v56, v114, type metadata accessor for PrimarySettingsListSectionModel);
    v60 = *v59;
    v61 = *v35;
    v62 = *(v35 + 8);
    v63 = *(v35 + 16);
    if (*(v59 + 16) <= 1u)
    {
      if (*(v59 + 16))
      {
        if (v63 != 1)
        {
          goto LABEL_111;
        }
      }

      else if (*(v35 + 16))
      {
        goto LABEL_111;
      }

LABEL_28:
      if ((v60 != v61 || *(v59 + 8) != v62) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_111;
      }

      goto LABEL_88;
    }

    if (*(v59 + 16) == 2)
    {
      if (v63 != 2)
      {
        goto LABEL_111;
      }

      goto LABEL_28;
    }

    switch(v60)
    {
      case 1:
        if (v63 != 3 || v61 != 1)
        {
          goto LABEL_111;
        }

        break;
      case 2:
        if (v63 != 3 || v61 != 2)
        {
          goto LABEL_111;
        }

        break;
      case 3:
        if (v63 != 3 || v61 != 3)
        {
          goto LABEL_111;
        }

        break;
      case 4:
        if (v63 != 3 || v61 != 4)
        {
          goto LABEL_111;
        }

        break;
      case 5:
        if (v63 != 3 || v61 != 5)
        {
          goto LABEL_111;
        }

        break;
      case 6:
        if (v63 != 3 || v61 != 6)
        {
          goto LABEL_111;
        }

        break;
      case 7:
        if (v63 != 3 || v61 != 7)
        {
          goto LABEL_111;
        }

        break;
      case 8:
        if (v63 != 3 || v61 != 8)
        {
          goto LABEL_111;
        }

        break;
      case 9:
        if (v63 != 3 || v61 != 9)
        {
          goto LABEL_111;
        }

        break;
      case 10:
        if (v63 != 3 || v61 != 10)
        {
          goto LABEL_111;
        }

        break;
      case 11:
        if (v63 != 3 || v61 != 11)
        {
          goto LABEL_111;
        }

        break;
      case 12:
        if (v63 != 3 || v61 != 12)
        {
          goto LABEL_111;
        }

        break;
      case 13:
        if (v63 != 3 || v61 != 13)
        {
          goto LABEL_111;
        }

        break;
      case 14:
        if (v63 != 3 || v61 != 14)
        {
          goto LABEL_111;
        }

        break;
      case 15:
        if (v63 != 3 || v61 != 15)
        {
          goto LABEL_111;
        }

        break;
      case 16:
        if (v63 != 3 || v61 != 16)
        {
          goto LABEL_111;
        }

        break;
      case 17:
        if (v63 != 3 || v61 != 17)
        {
          goto LABEL_111;
        }

        break;
      default:
        if (v63 != 3 || v62 | v61)
        {
          goto LABEL_111;
        }

        goto LABEL_88;
    }

    if (v62)
    {
      goto LABEL_111;
    }

LABEL_88:
    v65 = *(v114 + 32);
    v66 = *(v35 + 32);
    if (v65)
    {
      if (!v66 || (*(v114 + 24) != *(v35 + 24) || v65 != v66) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_111;
      }
    }

    else if (v66)
    {
      goto LABEL_111;
    }

    v67 = *(v110 + 24);
    v68 = *(v106 + 48);
    v69 = v100;
    sub_100059CA0(v114 + v67, v100, &unk_10015FB70, &unk_100112010);
    sub_100059CA0(v35 + v67, v69 + v68, &unk_10015FB70, &unk_100112010);
    v70 = *v99;
    v71 = v107;
    if ((*v99)(v69, 1, v107) == 1)
    {
      if (v70(v69 + v68, 1, v71) != 1)
      {
        goto LABEL_116;
      }

      sub_1000068B0(v69, &unk_10015FB70, &unk_100112010);
    }

    else
    {
      v72 = v97;
      sub_100059CA0(v69, v97, &unk_10015FB70, &unk_100112010);
      if (v70(v69 + v68, 1, v71) == 1)
      {
        (*v96)(v72, v71);
        v35 = v112;
LABEL_116:
        sub_1000068B0(v69, &qword_10015E940, &unk_100113180);
        goto LABEL_111;
      }

      v73 = v104;
      (*v95)(v104, v69 + v68, v71);
      sub_10000A520(&qword_10015BF48, &type metadata accessor for LocalizedStringResource, &protocol conformance descriptor for LocalizedStringResource);
      v74 = dispatch thunk of static Equatable.== infix(_:_:)();
      v75 = *v96;
      (*v96)(v73, v71);
      v75(v72, v71);
      sub_1000068B0(v69, &unk_10015FB70, &unk_100112010);
      v35 = v112;
      if ((v74 & 1) == 0)
      {
        goto LABEL_111;
      }
    }

    v76 = *(v110 + 28);
    v77 = *(v114 + v76);
    v78 = *(v35 + v76);
    v79 = *(v77 + 16);
    if (v79 != *(v78 + 16))
    {
      goto LABEL_111;
    }

    if (v79 && v77 != v78)
    {
      v80 = (*(v92 + 80) + 32) & ~*(v92 + 80);
      v81 = v77 + v80;
      v82 = v78 + v80;
      v83 = *(v92 + 72);
      while (1)
      {
        sub_10002EA78(v81, v9, type metadata accessor for PrimarySettingsListItemModel);
        v84 = v109;
        sub_10002EA78(v82, v109, type metadata accessor for PrimarySettingsListItemModel);
        v85 = *(v9 + 1);
        v115[0] = *v9;
        v115[1] = v85;
        v116 = v9[32];
        v86 = *(v84 + 16);
        v117[0] = *v84;
        v117[1] = v86;
        v118 = *(v84 + 32);
        if ((sub_10002BB48(v115, v117) & 1) == 0 || (sub_10003A2B4(&v9[*(v113 + 20)], v84 + *(v113 + 20)) & 1) == 0)
        {
          break;
        }

        v87 = *(v113 + 24);
        v88 = *&v9[v87];
        v89 = v84;
        v90 = *(v84 + v87);
        sub_10002E948(v89, type metadata accessor for PrimarySettingsListItemModel);
        sub_10002E948(v9, type metadata accessor for PrimarySettingsListItemModel);
        v35 = v112;
        if (v88 != v90)
        {
          goto LABEL_111;
        }

        v82 += v83;
        v81 += v83;
        if (!--v79)
        {
          goto LABEL_6;
        }
      }

      sub_10002E948(v84, type metadata accessor for PrimarySettingsListItemModel);
      sub_10002E948(v9, type metadata accessor for PrimarySettingsListItemModel);
LABEL_111:
      sub_10002E948(v114, type metadata accessor for PrimarySettingsListSectionModel);
LABEL_112:
      sub_10002E948(v35, type metadata accessor for PrimarySettingsListSectionModel);
      return 0;
    }

LABEL_6:
    sub_10002E948(v114, type metadata accessor for PrimarySettingsListSectionModel);
    result = sub_10002E948(v35, type metadata accessor for PrimarySettingsListSectionModel);
    a1 = v98;
    v27 = v103;
    v34 = v102;
  }

  if (v93 <= v30 + 1)
  {
    v37 = v30 + 1;
  }

  else
  {
    v37 = v93;
  }

  v38 = v37 - 1;
  while (1)
  {
    v39 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v39 >= v93)
    {
      v64 = sub_10004DED0(&unk_10015E950, &unk_100115C30);
      (*(*(v64 - 8) + 56))(v27, 1, 1, v64);
      v102 = 0;
      v30 = v38;
      goto LABEL_18;
    }

    v40 = *(v94 + 8 * v39);
    ++v30;
    if (v40)
    {
      v102 = (v40 - 1) & v40;
      v36 = __clz(__rbit64(v40)) | (v39 << 6);
      v30 = v39;
      goto LABEL_17;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1000A3B54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListItemModel(0);
  v69 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = (&v58 - v9);
  __chkstk_darwin(v8);
  v65 = &v58 - v11;
  v12 = sub_10004DED0(&qword_10015E928, &qword_100115C18);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v66 = &v58 - v17;
  if (a1 == a2)
  {
    return 1;
  }

  v18 = *(a1 + 16);
  v67 = a2;
  if (v18 != *(a2 + 16))
  {
    return 0;
  }

  v64 = v7;
  v19 = 0;
  v63 = a1;
  v20 = *(a1 + 64);
  v59 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v62 = v4;
  v61 = v10;
  v60 = v15;
  while (v23)
  {
    v68 = (v23 - 1) & v23;
    v25 = __clz(__rbit64(v23)) | (v19 << 6);
LABEL_16:
    v31 = *(v63 + 48) + 40 * v25;
    v32 = *v31;
    v33 = *(v31 + 8);
    v34 = *(v31 + 16);
    v35 = *(v31 + 24);
    v36 = *(v31 + 32);
    v37 = v65;
    sub_10002EA78(*(v63 + 56) + *(v69 + 72) * v25, v65, type metadata accessor for PrimarySettingsListItemModel);
    v38 = sub_10004DED0(&unk_10015E930, &qword_100115C20);
    v39 = *(v38 + 48);
    v40 = v60;
    *v60 = v32;
    v40[1] = v33;
    v40[2] = v34;
    v40[3] = v35;
    *(v40 + 32) = v36;
    v41 = v37;
    v15 = v40;
    sub_1000A4C50(v41, v40 + v39, type metadata accessor for PrimarySettingsListItemModel);
    (*(*(v38 - 8) + 56))(v15, 0, 1, v38);
    sub_100029920(v32, v33, v34, v35, v36);
    v4 = v62;
    v10 = v61;
    v28 = v67;
LABEL_17:
    v42 = v66;
    sub_1000A4CB8(v15, v66, &qword_10015E928, &qword_100115C18);
    v43 = sub_10004DED0(&unk_10015E930, &qword_100115C20);
    v44 = (*(*(v43 - 8) + 48))(v42, 1, v43);
    v45 = v44 == 1;
    if (v44 == 1)
    {
      return v45;
    }

    v46 = *(v43 + 48);
    v47 = *(v42 + 16);
    v74[0] = *v42;
    v74[1] = v47;
    v75 = *(v42 + 32);
    sub_1000A4C50(v42 + v46, v10, type metadata accessor for PrimarySettingsListItemModel);
    v48 = sub_100030300(v74);
    v50 = v49;
    sub_100026A04(v74);
    if ((v50 & 1) == 0)
    {
      goto LABEL_26;
    }

    v51 = v64;
    sub_10002EA78(*(v28 + 56) + *(v69 + 72) * v48, v64, type metadata accessor for PrimarySettingsListItemModel);
    v52 = *(v51 + 16);
    v70[0] = *v51;
    v70[1] = v52;
    v71 = *(v51 + 32);
    v53 = v10[1];
    v72[0] = *v10;
    v72[1] = v53;
    v73 = v10[2].i8[0];
    if ((sub_10002BB48(v70, v72) & 1) == 0 || (sub_10003A2B4((v51 + *(v4 + 20)), v10->i64 + *(v4 + 20)) & 1) == 0)
    {
      sub_10002E948(v51, type metadata accessor for PrimarySettingsListItemModel);
LABEL_26:
      sub_10002E948(v10, type metadata accessor for PrimarySettingsListItemModel);
      return 0;
    }

    v54 = *(v4 + 24);
    v55 = *(v51 + v54);
    v56 = *(v10->i64 + v54);
    sub_10002E948(v51, type metadata accessor for PrimarySettingsListItemModel);
    result = sub_10002E948(v10, type metadata accessor for PrimarySettingsListItemModel);
    v23 = v68;
    if (v55 != v56)
    {
      return v45;
    }
  }

  if (v24 <= v19 + 1)
  {
    v26 = v19 + 1;
  }

  else
  {
    v26 = v24;
  }

  v27 = v26 - 1;
  v28 = v67;
  while (1)
  {
    v29 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v29 >= v24)
    {
      v57 = sub_10004DED0(&unk_10015E930, &qword_100115C20);
      (*(*(v57 - 8) + 56))(v15, 1, 1, v57);
      v68 = 0;
      v19 = v27;
      goto LABEL_17;
    }

    v30 = *(v59 + 8 * v29);
    ++v19;
    if (v30)
    {
      v68 = (v30 - 1) & v30;
      v25 = __clz(__rbit64(v30)) | (v29 << 6);
      v19 = v29;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A4108(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_1000B8930(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A423C(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 9;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 6;
  *(a2 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = _swiftEmptyArrayStorage;
  *(a2 + 112) = &_swiftEmptySetSingleton;
  *(a2 + 64) = &off_100150230;
  *(a2 + 72) = 0;
  swift_unknownObjectWeakAssign();
  return a2;
}

void sub_1000A42BC()
{
  v0 = sub_10004DED0(&qword_10015E910, &unk_10010FC70);
  __chkstk_darwin(v0 - 8);
  v2 = &v34 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v41 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v34 - v8;
  __chkstk_darwin(v7);
  v11 = &v34 - v10;
  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1000068B0(v2, &qword_10015E910, &unk_10010FC70);
  }

  else
  {
    v38 = *(v4 + 32);
    v39 = v4 + 32;
    v38(v11, v2, v3);
    v40 = [objc_allocWithZone(_LSOpenConfiguration) init];
    [v40 setSensitive:1];
    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000659C(v12, qword_100169658);
    v37 = *(v4 + 16);
    v37(v9, v11, v3);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v36 = v4;
      v16 = v15;
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v16 = 136315138;
      sub_10000A520(&qword_10015E918, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v11;
      v19 = v18;
      v20 = *(v36 + 8);
      v20(v9, v3);
      v21 = sub_100025CF0(v17, v19, aBlock);
      v11 = v34;

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "Opening URL: %s", v16, 0xCu);
      sub_10000665C(v35);

      v4 = v36;

      v22 = v20;
    }

    else
    {

      v22 = *(v4 + 8);
      v22(v9, v3);
    }

    v23 = [objc_opt_self() defaultWorkspace];
    if (v23)
    {
      v25 = v23;
      URL._bridgeToObjectiveC()(v24);
      v27 = v26;
      v28 = v41;
      v37(v41, v11, v3);
      v29 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v30 = v11;
      v31 = swift_allocObject();
      v38((v31 + v29), v28, v3);
      aBlock[4] = sub_1000A4A08;
      aBlock[5] = v31;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009EB78;
      aBlock[3] = &unk_100150348;
      v32 = _Block_copy(aBlock);
      v33 = v40;

      [v25 openURL:v27 configuration:v33 completionHandler:v32];
      _Block_release(v32);

      v22(v30, v3);
    }

    else
    {
      v22(v11, v3);
    }
  }
}

uint64_t sub_1000A4854(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000A924;

  return sub_10009FB5C(a1, v4, v5, v6, v7, v8, v9, (v1 + 8));
}

uint64_t sub_1000A492C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000ACE4;

  return sub_100015138(a1, v4);
}

void sub_1000A4A08(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_10009E908(a1, a2, v6);
}

double sub_1000A4A88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000A4AA0()
{
  v1 = *(v0 + 24);
  sub_100059CA0(v1, v4, &qword_10015E690, &qword_100115788);
  return sub_10009884C(v1, v2);
}

uint64_t sub_1000A4B20()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__topLevelListManager) = *(v0 + 24);
}

void sub_1000A4B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v10;
  v13 = *(a1 + 32);
  sub_100059CA0(v12, v11, &qword_10015E690, &qword_100115788);
  sub_100099214(v12, a5, a6, a7);
}

uint64_t sub_1000A4C50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A4CB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10004DED0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000A4D38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_1000A0B94(a1, v4, v5, v6);
}

unint64_t sub_1000A4DEC()
{
  result = qword_10015EAF0;
  if (!qword_10015EAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015EAF0);
  }

  return result;
}

uint64_t sub_1000A4E40()
{
  v1 = *(v0 + 24);
  sub_100063D94(v1, &v4);
  return sub_10009A8A4(v1, v2);
}

uint64_t sub_1000A4E90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000ACE4;

  return sub_1000BA1B0(a1, v4);
}

uint64_t sub_1000A4F48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A924;

  return sub_1000BA1B0(a1, v4);
}

void sub_1000A5000(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingSelectionForSuccessfulPrimaryAppleAccountSignIn);
  v4 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingSelectionForSuccessfulPrimaryAppleAccountSignIn + 32);
  if (v4 == 255)
  {
    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000659C(v7, qword_100169658);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v10 = 136315650;
      v11 = _typeName(_:qualified:)();
      v13 = sub_100025CF0(v11, v12, &v14);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_100025CF0(0xD000000000000034, 0x80000001001240E0, &v14);
      *(v10 + 22) = 2082;
      *(v10 + 24) = sub_100025CF0(0xD000000000000013, 0x800000010011F040, &v14);
      _os_log_impl(&_mh_execute_header, v8, v9, "(%s.%s): Application is in an unexpected state (no pending selection when called). Falling back to %{public}s", v10, 0x20u);
      swift_arrayDestroy();
    }

    v5 = 0uLL;
    LOBYTE(v4) = 6;
    v6 = 0uLL;
  }

  else
  {
    v5 = *v3;
    v6 = v3[1];
  }

  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
}

uint64_t sub_1000A5248()
{

  sub_10002C5C0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 57, 7);
}

void sub_1000A52CC(void *a1, uint64_t a2, void (*a3)(uint64_t, __n128), uint64_t a4)
{
  if (!a2)
  {
    if (!a1)
    {
      goto LABEL_32;
    }

    v6 = a1;
    v7 = [v6 messageActions];
    if (v7)
    {
      v8 = v7;
      sub_100008294(0, &qword_10015EB50, AMSEngagementMessageEventServiceResponse_ptr);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v9 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_31;
        }
      }

      else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_38;
        }

        v10 = *(v9 + 32);
      }

      v11 = v10;

      v12 = [v11 placementsMap];

      if (v12)
      {
        sub_10004DED0(&qword_10015EB58, &qword_100115DE0);
        v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (!*(v13 + 16))
        {
          goto LABEL_31;
        }

        v14 = sub_1000B8930(0x536C6172656E6547, 0xEF73676E69747465);
        if ((v15 & 1) == 0)
        {
          goto LABEL_31;
        }

        v9 = *(*(v13 + 56) + 8 * v14);

        if (!(v9 >> 62))
        {
          if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          goto LABEL_31;
        }

LABEL_38:
        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_18:
          if ((v9 & 0xC000000000000001) != 0)
          {
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
            }

            v16 = *(v9 + 32);
          }

          v17 = v16;

          v18 = [v17 makeDialogRequest];
          if (v18)
          {
            v19 = v18;
            v29 = 0;
            v20 = [objc_opt_self() archivedDataWithRootObject:v18 requiringSecureCoding:1 error:&v29];
            v21 = v29;
            if (!v20)
            {
              v28 = v21;
              _convertNSErrorToError(_:)();

              swift_willThrow();
              if (!a3)
              {

                return;
              }

              (a3)(0);

LABEL_34:
              sub_100080CA4(a3, a4);
              return;
            }

            v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v24 = v23;

            v25 = [objc_opt_self() standardUserDefaults];
            isa = Data._bridgeToObjectiveC()().super.isa;
            v27 = String._bridgeToObjectiveC()();
            [v25 setObject:isa forKey:v27];

            byte_1001697D0 = 1;
            sub_1000A5750(v22, v24);
          }

          else
          {
          }

LABEL_32:
          if (!a3)
          {
            return;
          }

          (a3)(1);
          goto LABEL_34;
        }

LABEL_31:

        goto LABEL_32;
      }
    }

    goto LABEL_32;
  }

  if (a3)
  {

    (a3)(0);

    sub_100080CA4(a3, a4);
  }
}

uint64_t sub_1000A5750(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_1000A57A4(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = *(a1 + 16);
  *(v3 + 24) = *a1;
  *(v3 + 40) = v4;
  *(v3 + 56) = *(a1 + 32);

  sub_10002698C(a1, v16);
  v5 = sub_100010CD0();
  v6 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_viewControllerForPresentation;
  swift_beginAccess();
  v7 = *&v5[v6];
  if (!v7)
  {

    goto LABEL_6;
  }

  v8 = v7;

  v9 = [v8 presentedViewController];

  if (!v9)
  {
LABEL_6:
    sub_1000AC0B4(v1, a1);
    goto LABEL_7;
  }

  v10 = *(v1 + 24);
  v11 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_viewControllerForPresentation;
  swift_beginAccess();
  v12 = *(v10 + v11);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1000BB120;
    *(v13 + 24) = v3;
    v16[4] = sub_1000BA4BC;
    v16[5] = v13;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_10000411C;
    v16[3] = &unk_1001507A8;
    v14 = _Block_copy(v16);
    v15 = v12;

    [v15 dismissViewControllerAnimated:1 completion:v14];

    _Block_release(v14);

    return;
  }

LABEL_7:
}

void sub_1000A59A0(uint64_t a1)
{
  v2 = v1;
  v164 = type metadata accessor for SettingsAppDetailContent(0);
  v169 = *(v164 - 8);
  v4 = __chkstk_darwin(v164);
  v171 = &v159 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = v5;
  __chkstk_darwin(v4);
  v172 = &v159 - v6;
  v7 = type metadata accessor for SettingsURLDestination(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v173 = &v159 - v13;
  v14 = __chkstk_darwin(v12);
  v176 = &v159 - v15;
  v16 = __chkstk_darwin(v14);
  v166 = &v159 - v17;
  v18 = __chkstk_darwin(v16);
  v174 = &v159 - v19;
  v20 = __chkstk_darwin(v18);
  v168 = &v159 - v21;
  __chkstk_darwin(v20);
  v167 = &v159 - v22;
  v23 = sub_10004DED0(&qword_10015ED78, &qword_100115FB8);
  v24 = __chkstk_darwin(v23 - 8);
  v165 = &v159 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v177 = &v159 - v27;
  __chkstk_darwin(v26);
  v29 = &v159 - v28;
  v30 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  __chkstk_darwin(v30 - 8);
  v32 = &v159 - v31;
  v33 = type metadata accessor for SettingsURLDestination.Action(0);
  __chkstk_darwin(v33);
  v35 = &v159 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = v7;
  v36 = *(v7 + 20);
  v37 = a1;
  sub_10000822C(a1 + v36, v35, type metadata accessor for SettingsURLDestination.Action);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100046460(v35, type metadata accessor for SettingsURLDestination.Action);
    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_10000659C(v63, qword_100169658);
    sub_10000822C(a1, v11, type metadata accessor for SettingsURLDestination);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v64, v65))
    {

      v86 = type metadata accessor for SettingsURLDestination;
      v87 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
LABEL_18:
      sub_100046460(v87, v86);
      return;
    }

    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    aBlock[0] = v67;
    *v66 = 141558275;
    *(v66 + 4) = 1752392040;
    *(v66 + 12) = 2081;
    v68 = sub_1000F41C0();
    v70 = v69;
    sub_100046460(v11, type metadata accessor for SettingsURLDestination);
    v71 = sub_100025CF0(v68, v70, aBlock);

    *(v66 + 14) = v71;
    sub_10000665C(v67);

    goto LABEL_11;
  }

  v175 = v8;
  v38 = *(v35 + 1);
  v180 = *v35;
  v181 = v38;
  v163 = v35[32];
  v182 = v163;
  v39 = *(v35 + 1);
  v162 = *v35;
  v161 = v39;
  v40 = *(v35 + 3);
  v160 = *(v35 + 2);
  v41 = sub_100010CD0();
  sub_10001A1A0(v41, v42);
  v44 = v43;

  if (!*(v44 + 16) || (v45 = sub_100030300(&v180), (v46 & 1) == 0))
  {

    v72 = type metadata accessor for PrimarySettingsListItemModel(0);
    (*(*(v72 - 8) + 56))(v32, 1, 1, v72);
    sub_1000068B0(v32, &unk_10015EDB0, &unk_100111C70);
    if (v163 < 6)
    {
      goto LABEL_13;
    }

    if (v163 == 6)
    {
      v92 = v162 == 1 || v162 == 4 || (v162 - 7) < 2;
      if (v162 == 29 || (v162 & 0xFFFFFFFFFFFFFFFELL) == 32 || (v162 - 9) < 2)
      {
        v92 = 1;
      }

      if (v162 == 34)
      {
        v92 = 1;
      }

      if (!(v160 | v161 | v40) && v92)
      {
LABEL_13:
        if (qword_10015AAA0 != -1)
        {
          swift_once();
        }

        v73 = type metadata accessor for Logger();
        sub_10000659C(v73, qword_100169658);
        v74 = v176;
        sub_10000822C(v37, v176, type metadata accessor for SettingsURLDestination);
        sub_10002698C(&v180, aBlock);
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.default.getter();
        sub_100026A04(&v180);
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          aBlock[0] = swift_slowAlloc();
          *v77 = 141558531;
          *(v77 + 4) = 1752392040;
          *(v77 + 12) = 2081;
          v78 = sub_1000F41C0();
          v80 = v79;
          sub_100046460(v74, type metadata accessor for SettingsURLDestination);
          v81 = sub_100025CF0(v78, v80, aBlock);

          *(v77 + 14) = v81;
          *(v77 + 22) = 2080;
          v82 = sub_100026A58();
          v84 = v83;
          sub_100026A04(&v180);
          v85 = sub_100025CF0(v82, v84, aBlock);

          *(v77 + 24) = v85;
          _os_log_impl(&_mh_execute_header, v75, v76, "Destination '%{private,mask.hash}s' is for a selection not possible currently '%s' which may be loaded async, stashing as pending and returning.", v77, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
          sub_100026A04(&v180);

          sub_100046460(v74, type metadata accessor for SettingsURLDestination);
        }

        v88 = v175;
        v89 = v177;
        sub_10000822C(v37, v177, type metadata accessor for SettingsURLDestination);
        (*(v88 + 56))(v89, 0, 1, v178);
        goto LABEL_54;
      }
    }

    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v95 = type metadata accessor for Logger();
    sub_10000659C(v95, qword_100169658);
    v96 = v173;
    sub_10000822C(v37, v173, type metadata accessor for SettingsURLDestination);
    sub_10002698C(&v180, aBlock);
    v64 = Logger.logObject.getter();
    v97 = static os_log_type_t.default.getter();
    sub_100026A04(&v180);
    if (!os_log_type_enabled(v64, v97))
    {
      sub_100026A04(&v180);

      v125 = type metadata accessor for SettingsURLDestination;
LABEL_69:
      v86 = v125;
      v87 = v96;
      goto LABEL_18;
    }

    v98 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v98 = 141558531;
    *(v98 + 4) = 1752392040;
    *(v98 + 12) = 2081;
    v99 = sub_1000F41C0();
    v101 = v100;
    sub_100046460(v96, type metadata accessor for SettingsURLDestination);
    v102 = sub_100025CF0(v99, v101, aBlock);

    *(v98 + 14) = v102;
    *(v98 + 22) = 2080;
    v103 = sub_100026A58();
    v105 = v104;
    sub_100026A04(&v180);
    v106 = sub_100025CF0(v103, v105, aBlock);

    *(v98 + 24) = v106;
    _os_log_impl(&_mh_execute_header, v64, v97, "Destination '%{private,mask.hash}s' is for a selection not possible currently '%s' which doesn't have async loading, returning.", v98, 0x20u);
    swift_arrayDestroy();

LABEL_11:

    return;
  }

  v47 = v45;
  v159 = v40;
  v176 = v37;
  v173 = v2;
  v48 = *(v44 + 56);
  v49 = type metadata accessor for PrimarySettingsListItemModel(0);
  v50 = *(v49 - 8);
  v51 = v48 + *(v50 + 72) * v47;
  v2 = v173;
  sub_10000822C(v51, v32, type metadata accessor for PrimarySettingsListItemModel);

  (*(v50 + 56))(v32, 0, 1, v49);
  sub_1000068B0(v32, &unk_10015EDB0, &unk_100111C70);
  v52 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_currentlyInProgressURLDestination;
  swift_beginAccess();
  sub_100059CA0(v2 + v52, v29, &qword_10015ED78, &qword_100115FB8);
  v53 = *(v175 + 48);
  v54 = v178;
  if (v53(v29, 1, v178) != 1)
  {
    sub_100026A04(&v180);
    sub_1000068B0(v29, &qword_10015ED78, &qword_100115FB8);
    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v107 = type metadata accessor for Logger();
    sub_10000659C(v107, qword_100169658);
    v108 = v174;
    sub_10000822C(v176, v174, type metadata accessor for SettingsURLDestination);

    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v111 = 141558787;
      *(v111 + 4) = 1752392040;
      *(v111 + 12) = 2081;
      v112 = sub_1000F41C0();
      v113 = v108;
      v115 = v114;
      sub_100046460(v113, type metadata accessor for SettingsURLDestination);
      v116 = sub_100025CF0(v112, v115, aBlock);

      *(v111 + 14) = v116;
      *(v111 + 22) = 2160;
      *(v111 + 24) = 1752392040;
      *(v111 + 32) = 2081;
      v2 = v173;
      v117 = v165;
      sub_100059CA0(v173 + v52, v165, &qword_10015ED78, &qword_100115FB8);
      LODWORD(v116) = v53(v117, 1, v178);

      if (v116 == 1)
      {
        __break(1u);
        return;
      }

      v118 = v166;
      sub_100030854(v117, v166, type metadata accessor for SettingsURLDestination);
      v119 = sub_1000F41C0();
      v121 = v120;
      sub_100046460(v118, type metadata accessor for SettingsURLDestination);
      v122 = sub_100025CF0(v119, v121, aBlock);

      *(v111 + 34) = v122;
      _os_log_impl(&_mh_execute_header, v109, v110, "Received new destination request '%{private,mask.hash}s' while one is already in progress ('%{private,mask.hash}s'). Setting as next pending destination.", v111, 0x2Au);
      swift_arrayDestroy();

      v123 = v175;
      v54 = v178;
    }

    else
    {

      sub_100046460(v108, type metadata accessor for SettingsURLDestination);
      v123 = v175;
    }

    v89 = v177;
    sub_10000822C(v176, v177, type metadata accessor for SettingsURLDestination);
    (*(v123 + 56))(v89, 0, 1, v54);
LABEL_54:
    v124 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_pendingURLDestination;
    swift_beginAccess();
    sub_1000BB1A0(v89, v2 + v124, &qword_10015ED78, &qword_100115FB8);
    swift_endAccess();
    return;
  }

  v174 = v52;
  sub_1000068B0(v29, &qword_10015ED78, &qword_100115FB8);
  *&v183 = v162;
  *(&v183 + 1) = v161;
  v55 = v159;
  *&v184 = v160;
  *(&v184 + 1) = v159;
  v185 = v163;
  v56 = *(v2 + 24);
  swift_getKeyPath();
  v186.i64[0] = v56;

  sub_10002698C(&v180, aBlock);
  sub_100018684(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v57 = *(v56 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection);
  v58 = *(v56 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 8);
  v59 = *(v56 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 16);
  v60 = *(v56 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 24);
  v61 = *(v56 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 32);
  sub_100031DF8(v57, v58, v59, v60, *(v56 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 32));

  if (v61 == 255)
  {
    sub_10002698C(&v180, aBlock);
    sub_100032660(v162, v161, v160, v55, v163);
    v62 = 0;
  }

  else
  {
    v186.i64[0] = v57;
    v186.i64[1] = v58;
    v187 = v59;
    v188 = v60;
    v189 = v61;
    v62 = sub_10002BB48(v180.i64, &v186);
  }

  sub_100032660(v57, v58, v59, v60, v61);
  v126 = *(v175 + 56);
  v127 = v177;
  v126(v177, 1, 1, v54);
  v128 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_pendingURLDestination;
  swift_beginAccess();
  sub_1000BB1A0(v127, v2 + v128, &qword_10015ED78, &qword_100115FB8);
  swift_endAccess();
  sub_10000822C(v176, v127, type metadata accessor for SettingsURLDestination);
  v126(v127, 0, 1, v54);
  v129 = v174;
  swift_beginAccess();
  sub_10003BBC0(v127, v2 + v129, &qword_10015ED78, &qword_100115FB8);
  swift_endAccess();
  sub_1000A8CB0();
  sub_1000068B0(v127, &qword_10015ED78, &qword_100115FB8);
  if (v182 >= 3u)
  {
    LODWORD(v178) = v62 ^ 1;
    if (v62)
    {
      sub_100026A04(&v180);
      swift_getKeyPath();
      aBlock[0] = v2;
      sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v140 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
      swift_beginAccess();
      v96 = v172;
      sub_10000822C(v2 + v140, v172, type metadata accessor for SettingsAppDetailContent);
    }

    else
    {
      v141 = *(v164 + 20);

      v96 = v172;
      sub_10008F610(v142, (v172 + v141));

      v143 = v184;
      *v96 = v183;
      *(v96 + 16) = v143;
      *(v96 + 32) = v185;
    }

    v144 = v175;
    v145 = swift_allocObject();
    swift_weakInit();
    v146 = v171;
    sub_10000822C(v96, v171, type metadata accessor for SettingsAppDetailContent);
    v147 = v168;
    sub_10000822C(v176, v168, type metadata accessor for SettingsURLDestination);
    v148 = (*(v169 + 80) + 25) & ~*(v169 + 80);
    v149 = (v170 + *(v144 + 80) + v148) & ~*(v144 + 80);
    v150 = swift_allocObject();
    *(v150 + 16) = v145;
    *(v150 + 24) = v178 & 1;
    sub_100030854(v146, v150 + v148, type metadata accessor for SettingsAppDetailContent);
    sub_100030854(v147, v150 + v149, type metadata accessor for SettingsURLDestination);
    v151 = v150 + ((v9 + v149 + 7) & 0xFFFFFFFFFFFFFFF8);
    v152 = v181;
    *v151 = v180;
    *(v151 + 16) = v152;
    *(v151 + 32) = v182;
    v153 = *(v2 + 24);
    v154 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_viewControllerForPresentation;
    swift_beginAccess();
    v155 = *(v153 + v154);
    if (!v155)
    {

      sub_100046460(v96, type metadata accessor for SettingsAppDetailContent);
      swift_endAccess();

      return;
    }

    swift_endAccess();
    v156 = swift_allocObject();
    *(v156 + 16) = sub_1000BA4EC;
    *(v156 + 24) = v150;
    aBlock[4] = sub_1000BBA30;
    aBlock[5] = v156;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000411C;
    aBlock[3] = &unk_1001505F0;
    v157 = _Block_copy(aBlock);
    v158 = v155;

    [v158 dismissViewControllerAnimated:1 completion:v157];
    _Block_release(v157);

    v125 = type metadata accessor for SettingsAppDetailContent;
    goto LABEL_69;
  }

  sub_100026A04(&v180);
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v130 = type metadata accessor for Logger();
  sub_10000659C(v130, qword_100169658);
  v131 = v167;
  sub_10000822C(v176, v167, type metadata accessor for SettingsURLDestination);
  v132 = Logger.logObject.getter();
  v133 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    aBlock[0] = v135;
    *v134 = 141558275;
    *(v134 + 4) = 1752392040;
    *(v134 + 12) = 2081;
    v136 = sub_1000F41C0();
    v138 = v137;
    sub_100046460(v131, type metadata accessor for SettingsURLDestination);
    v139 = sub_100025CF0(v136, v138, aBlock);

    *(v134 + 14) = v139;
    _os_log_impl(&_mh_execute_header, v132, v133, "Destination's selection '%{private,mask.hash}s' is a CFU, setting selection and allowing it to handle needed actions.", v134, 0x16u);
    sub_10000665C(v135);
  }

  else
  {

    sub_100046460(v131, type metadata accessor for SettingsURLDestination);
  }

  sub_1000954AC(&v183);
}

void sub_1000A71BC(uint64_t a1)
{
  v3 = type metadata accessor for EngagementLinkData(0);
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  v5 = __chkstk_darwin(v3);
  v6 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v31 - v7;
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000659C(v9, qword_1001696A0);
  sub_10000822C(a1, v8, type metadata accessor for EngagementLinkData);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v31[1] = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v32 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = v14;
    aBlock[0] = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    v16 = URL.absoluteString.getter();
    v18 = v17;
    sub_100046460(v8, type metadata accessor for EngagementLinkData);
    v19 = sub_100025CF0(v16, v18, aBlock);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Will evaluate engagement link data for URL '%{private,mask.hash}s'", v13, 0x16u);
    sub_10000665C(v15);
    v6 = v32;
  }

  else
  {

    sub_100046460(v8, type metadata accessor for EngagementLinkData);
  }

  v20 = String._bridgeToObjectiveC()();
  v21 = String._bridgeToObjectiveC()();
  v22 = [objc_opt_self() bagForProfile:v20 profileVersion:v21];

  v23 = [objc_allocWithZone(AMSURLParser) initWithBag:v22];
  URL._bridgeToObjectiveC()(*(v3 + 24));
  v25 = v24;
  v26 = [v23 typeForURL:v24];

  v27 = swift_allocObject();
  swift_weakInit();
  sub_10000822C(a1, v6, type metadata accessor for EngagementLinkData);
  v28 = (*(v33 + 80) + 24) & ~*(v33 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  sub_100030854(v6, v29 + v28, type metadata accessor for EngagementLinkData);
  aBlock[4] = sub_1000BB12C;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B384C;
  aBlock[3] = &unk_1001507F8;
  v30 = _Block_copy(aBlock);

  [v26 addSuccessBlock:v30];
  _Block_release(v30);
}

uint64_t sub_1000A760C@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  v7 = v2;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  v5 = type metadata accessor for NavigationPath();
  return (*(*(v5 - 8) + 16))(a2, v7 + v4, v5);
}

uint64_t sub_1000A7704(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = *(a1 + 32);
  sub_100059CA0(v4, v3, &qword_10015E690, &qword_100115788);
  return sub_1000954AC(v4);
}

void sub_1000A7760(char a1)
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000659C(v3, qword_100169658);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109376;
    *(v6 + 4) = a1 & 1;
    *(v6 + 8) = 1024;
    swift_getKeyPath();
    sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v6 + 10) = *(v1 + 32);

    _os_log_impl(&_mh_execute_header, v4, v5, "Setting selectionClearsNavigationStackPath to %{BOOL}d from %{BOOL}d.", v6, 0xEu);
  }

  else
  {
  }
}

uint64_t sub_1000A791C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + 32);
}

uint64_t sub_1000A79BC@<X0>(uint64_t *a1@<X0>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v4 + 32);
  return result;
}

void sub_1000A7A8C(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  if (*(v2 + 32) == (a1 & 1))
  {
    sub_1000A7760(a1 & 1);
    *(v2 + 32) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000A7BA4(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPath();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_1000A7C70(v4);
}

uint64_t sub_1000A7C70(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NavigationPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_100018684(&qword_10015EDD0, &type metadata accessor for NavigationPath, &protocol conformance descriptor for NavigationPath);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(a1, v4);
}

uint64_t sub_1000A7EF0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  v5 = type metadata accessor for NavigationPath();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1000A7F8C@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  v6 = v2;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
  swift_beginAccess();
  return sub_10000822C(v6 + v4, a2, type metadata accessor for SettingsAppDetailContent);
}

uint64_t sub_1000A8068()
{
  v44 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
  __chkstk_darwin(v44);
  v45 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for SettingsURLDestination.Action(0);
  __chkstk_darwin(v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004DED0(&qword_10015ED78, &qword_100115FB8);
  v6 = __chkstk_darwin(v5 - 8);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v39 - v8;
  v10 = type metadata accessor for SettingsURLDestination(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v40 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v39 - v14;
  v16 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_currentlyInProgressURLDestination;
  swift_beginAccess();
  v41 = v16;
  sub_100059CA0(v0 + v16, v9, &qword_10015ED78, &qword_100115FB8);
  v42 = v11;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000068B0(v9, &qword_10015ED78, &qword_100115FB8);
  }

  sub_100030854(v9, v15, type metadata accessor for SettingsURLDestination);
  sub_10000822C(&v15[*(v10 + 20)], v4, type metadata accessor for SettingsURLDestination.Action);
  v18 = v15;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v4[32];
    sub_10002C5C0(*v4, *(v4 + 1), *(v4 + 2), *(v4 + 3), v4[32]);
    if (v19 <= 2)
    {
      swift_getKeyPath();
      v46[3] = v0;
      sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
      v20 = v0;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v21 = v0 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
      swift_beginAccess();
      v22 = type metadata accessor for SettingsAppDetailContent(0);
      v23 = v45;
      sub_10000822C(v21 + *(v22 + 20), v45, type metadata accessor for SettingsAppDetailContent.ContentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v24 = PreferencesControllerRepresentableModel.makeViewControllerIfNeeded()();
        sub_1000AFC44(v15, v24, 0);
      }

      else
      {
        sub_100046460(v23, type metadata accessor for SettingsAppDetailContent.ContentType);
        if (qword_10015AAA0 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_10000659C(v27, qword_100169658);
        v28 = v40;
        sub_10000822C(v15, v40, type metadata accessor for SettingsURLDestination);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v46[0] = v32;
          *v31 = 141558275;
          *(v31 + 4) = 1752392040;
          *(v31 + 12) = 2081;
          v33 = sub_1000F41C0();
          v35 = v34;
          sub_100046460(v28, type metadata accessor for SettingsURLDestination);
          v36 = sub_100025CF0(v33, v35, v46);

          *(v31 + 14) = v36;
          _os_log_impl(&_mh_execute_header, v29, v30, "No valid detail content for destination '%{private,mask.hash}s', bailing.", v31, 0x16u);
          sub_10000665C(v32);
        }

        else
        {

          sub_100046460(v28, type metadata accessor for SettingsURLDestination);
        }

        v37 = v43;
        (*(v42 + 56))(v43, 1, 1, v10);
        v38 = v41;
        swift_beginAccess();
        sub_10003BBC0(v37, v20 + v38, &qword_10015ED78, &qword_100115FB8);
        swift_endAccess();
        sub_1000A8CB0();
        sub_1000068B0(v37, &qword_10015ED78, &qword_100115FB8);
      }
    }

    v25 = type metadata accessor for SettingsURLDestination;
    v26 = v18;
  }

  else
  {
    sub_100046460(v15, type metadata accessor for SettingsURLDestination);
    v25 = type metadata accessor for SettingsURLDestination.Action;
    v26 = v4;
  }

  return sub_100046460(v26, v25);
}

uint64_t sub_1000A86E0@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
  swift_beginAccess();
  return sub_10000822C(v4 + v5, a3, type metadata accessor for SettingsAppDetailContent);
}

uint64_t sub_1000A87BC(uint64_t a1)
{
  v2 = type metadata accessor for SettingsAppDetailContent(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000822C(a1, v4, type metadata accessor for SettingsAppDetailContent);
  return sub_1000A885C(v4);
}

uint64_t sub_1000A885C(uint64_t a1)
{
  v3 = type metadata accessor for SettingsAppDetailContent(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = v1 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
  swift_beginAccess();
  sub_10000822C(v9, v8, type metadata accessor for SettingsAppDetailContent);
  v10 = sub_1000BAABC(v8, a1);
  sub_100046460(v8, type metadata accessor for SettingsAppDetailContent);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v13[-16] = v1;
    *&v13[-8] = a1;
    v14 = v1;
    sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_10000822C(a1, v6, type metadata accessor for SettingsAppDetailContent);
    swift_beginAccess();
    sub_1000BABF8(v6, v9);
    swift_endAccess();
    swift_getKeyPath();
    v14 = v1;
    sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v9 + 32) <= 2u)
    {
      sub_1000A8068();
    }

    sub_100046460(v6, type metadata accessor for SettingsAppDetailContent);
  }

  return sub_100046460(a1, type metadata accessor for SettingsAppDetailContent);
}

uint64_t sub_1000A8B38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsAppDetailContent(0);
  __chkstk_darwin(v4 - 8);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000822C(a2, v6, type metadata accessor for SettingsAppDetailContent);
  v7 = a1 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
  swift_beginAccess();
  sub_1000BABF8(v6, v7);
  swift_endAccess();
  swift_getKeyPath();
  v9[1] = a1;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v7 + 32) <= 2u)
  {
    sub_1000A8068();
  }

  return sub_100046460(v6, type metadata accessor for SettingsAppDetailContent);
}

uint64_t sub_1000A8CB0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v59 = *(v1 - 8);
  v60 = v1;
  __chkstk_darwin(v1);
  v57 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchQoS();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SettingsURLDestination(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v53 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v54 = &v51 - v8;
  v9 = sub_10004DED0(&qword_10015ED78, &qword_100115FB8);
  v10 = __chkstk_darwin(v9 - 8);
  v61 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v51 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v51 - v16;
  __chkstk_darwin(v15);
  v19 = &v51 - v18;
  v20 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_currentlyInProgressURLDestination;
  swift_beginAccess();
  sub_100059CA0(v0 + v20, v19, &qword_10015ED78, &qword_100115FB8);
  v21 = *(v5 + 48);
  v22 = v21(v19, 1, v4);
  v23 = v19;
  v24 = v0;
  sub_1000068B0(v23, &qword_10015ED78, &qword_100115FB8);
  if (v22 != 1)
  {
LABEL_4:
    sub_100059CA0(v0 + v20, v14, &qword_10015ED78, &qword_100115FB8);
    v25 = v21(v14, 1, v4);
    sub_1000068B0(v14, &qword_10015ED78, &qword_100115FB8);
    if (v25 != 1)
    {
      sub_10004DED0(&unk_10015ED48, &qword_100115FB0);
      sub_1000525A0(&qword_10015EDA8, &unk_10015ED48, &qword_100115FB0, &protocol conformance descriptor for PassthroughSubject<A, B>);
      Subject<>.send()();
    }

    goto LABEL_12;
  }

  sub_1000A94D8(v17);
  if (v21(v17, 1, v4) == 1)
  {
    sub_1000068B0(v17, &qword_10015ED78, &qword_100115FB8);
    goto LABEL_4;
  }

  v26 = v17;
  v27 = v54;
  sub_100030854(v26, v54, type metadata accessor for SettingsURLDestination);
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000659C(v28, qword_100169658);
  v29 = v53;
  sub_10000822C(v27, v53, type metadata accessor for SettingsURLDestination);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v52 = v21;
    v34 = v4;
    v35 = v0;
    v36 = v33;
    aBlock[0] = v33;
    *v32 = 136315138;
    v37 = sub_1000F41C0();
    v38 = v29;
    v40 = v39;
    sub_100046460(v38, type metadata accessor for SettingsURLDestination);
    v41 = sub_100025CF0(v37, v40, aBlock);

    *(v32 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v30, v31, "Found pending URL request '%s', queueing it up.", v32, 0xCu);
    sub_10000665C(v36);
    v24 = v35;
    v4 = v34;
    v21 = v52;

    v27 = v54;
  }

  else
  {

    sub_100046460(v29, type metadata accessor for SettingsURLDestination);
  }

  sub_1000A59A0(v27);
  sub_100046460(v27, type metadata accessor for SettingsURLDestination);
LABEL_12:
  v42 = v61;
  sub_100059CA0(v24 + v20, v61, &qword_10015ED78, &qword_100115FB8);
  v43 = v21(v42, 1, v4);
  result = sub_1000068B0(v42, &qword_10015ED78, &qword_100115FB8);
  if (v43 == 1)
  {
    sub_100008294(0, &qword_10015C9D0, OS_dispatch_queue_ptr);
    v45 = static OS_dispatch_queue.main.getter();
    v46 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1000BA4E4;
    aBlock[5] = v46;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000411C;
    aBlock[3] = &unk_100150578;
    v47 = _Block_copy(aBlock);

    v48 = v55;
    static DispatchQoS.unspecified.getter();
    v62 = _swiftEmptyArrayStorage;
    sub_100018684(&unk_10015ED90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10004DED0(&qword_10015D718, &qword_1001141C8);
    sub_1000525A0(&qword_10015EDA0, &qword_10015D718, &qword_1001141C8, &protocol conformance descriptor for [A]);
    v49 = v57;
    v50 = v60;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v47);

    (*(v59 + 8))(v49, v50);
    (*(v56 + 8))(v48, v58);
  }

  return result;
}

uint64_t sub_1000A94D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004DED0(&qword_10015ED78, &qword_100115FB8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v16[-v7];
  v9 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_pendingURLDestination;
  swift_beginAccess();
  sub_100059CA0(v1 + v9, v8, &qword_10015ED78, &qword_100115FB8);
  v10 = type metadata accessor for SettingsURLDestination(0);
  v11 = (*(v10 - 8) + 48);
  v12 = (*v11)(v8, 1, v10);
  v13 = (v11 + 1);
  if (v12 == 1)
  {
    sub_1000068B0(v8, &qword_10015ED78, &qword_100115FB8);
    return (*v13)(a1, 1, 1, v10);
  }

  else
  {
    sub_100030854(v8, a1, type metadata accessor for SettingsURLDestination);
    v15 = *v13;
    (*v13)(v6, 1, 1, v10);
    swift_beginAccess();
    sub_1000BB1A0(v6, v1 + v9, &qword_10015ED78, &qword_100115FB8);
    swift_endAccess();
    return v15(a1, 0, 1, v10);
  }
}

uint64_t sub_1000A96DC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000A9738(1, v2);
  }

  return result;
}

void sub_1000A9738(char a1, uint64_t a2)
{
  v4 = a1 & 1;
  swift_getKeyPath();
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 32) != v4)
  {
    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000659C(v5, qword_100169658);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109376;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v8 + 4) = *(v2 + 32);

      *(v8 + 8) = 1024;
      *(v8 + 10) = a1 & 1;
    }

    else
    {
    }

    v9 = a1 & 1;
    if (*(v2 + 32) == v9)
    {
      sub_1000A7760(v9);
      *(v2 + 32) = v9;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }
}

uint64_t sub_1000A99F4@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *a2;
  swift_beginAccess();
  return sub_100059CA0(v12 + v10, a5, a3, a4);
}

uint64_t sub_1000A9AD4@<X0>(uint64_t *a1@<X0>, uint64_t *a4@<X4>, uint64_t *a5@<X5>, uint64_t *a6@<X6>, uint64_t a7@<X8>)
{
  v11 = *a1;
  swift_getKeyPath();
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *a4;
  swift_beginAccess();
  return sub_100059CA0(v11 + v12, a7, a5, a6);
}

uint64_t sub_1000A9BB8()
{
  v1 = v0;
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004DED0(&qword_10015EF20, &unk_100116140);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = sub_10004DED0(&qword_10015EF28, &qword_100116590);
  v10 = __chkstk_darwin(v9 - 8);
  v24 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  swift_getKeyPath();
  v25 = v0;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__horizontalSizeClass;
  swift_beginAccess();
  (*(v3 + 104))(v13, enum case for UserInterfaceSizeClass.regular(_:), v2);
  (*(v3 + 56))(v13, 0, 1, v2);
  v15 = *(v6 + 56);
  sub_100059CA0(v1 + v14, v8, &qword_10015EF28, &qword_100116590);
  sub_100059CA0(v13, &v8[v15], &qword_10015EF28, &qword_100116590);
  v16 = *(v3 + 48);
  if (v16(v8, 1, v2) != 1)
  {
    v18 = v24;
    sub_100059CA0(v8, v24, &qword_10015EF28, &qword_100116590);
    if (v16(&v8[v15], 1, v2) != 1)
    {
      v19 = v23;
      (*(v3 + 32))(v23, &v8[v15], v2);
      sub_100018684(&qword_10015EF30, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v3 + 8);
      v20(v19, v2);
      sub_1000068B0(v13, &qword_10015EF28, &qword_100116590);
      v20(v18, v2);
      sub_1000068B0(v8, &qword_10015EF28, &qword_100116590);
      return v17 & 1;
    }

    sub_1000068B0(v13, &qword_10015EF28, &qword_100116590);
    (*(v3 + 8))(v18, v2);
    goto LABEL_6;
  }

  sub_1000068B0(v13, &qword_10015EF28, &qword_100116590);
  if (v16(&v8[v15], 1, v2) != 1)
  {
LABEL_6:
    sub_1000068B0(v8, &qword_10015EF20, &unk_100116140);
    v17 = 0;
    return v17 & 1;
  }

  sub_1000068B0(v8, &qword_10015EF28, &qword_100116590);
  v17 = 1;
  return v17 & 1;
}

void sub_1000AA050()
{
  v1 = v0;
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AA98 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000659C(v8, qword_100169640);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v2;
    v33[0] = v29;
    *v11 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = v3;
    v15 = sub_100025CF0(v12, v13, v33);

    *(v11 + 4) = v15;
    v3 = v14;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100025CF0(0xD00000000000001DLL, 0x80000001001245D0, v33);
    _os_log_impl(&_mh_execute_header, v9, v10, "Start (%s.%s)…", v11, 0x16u);
    swift_arrayDestroy();
    v2 = v30;
  }

  swift_getKeyPath();
  v33[0] = v1;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = v1 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
  swift_beginAccess();
  v17 = type metadata accessor for SettingsAppDetailContent(0);
  sub_10000822C(&v16[*(v17 + 20)], v7, type metadata accessor for SettingsAppDetailContent.ContentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v3;
      v22 = v21;
      *v20 = 141558275;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2113;
      v23 = PreferencesControllerRepresentableModel.makeViewControllerIfNeeded()();
      *(v20 + 14) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, "Calling will become active on %{private,mask.hash}@.", v20, 0x16u);
      sub_1000068B0(v22, &unk_10015F9C0, &unk_100115230);
      v3 = v30;
    }

    v24 = PreferencesControllerRepresentableModel.makeViewControllerIfNeeded()();
    if ([v24 respondsToSelector:"willBecomeActive"])
    {
      [v24 willBecomeActive];
    }

    else
    {
    }
  }

  else
  {
    sub_100046460(v7, type metadata accessor for SettingsAppDetailContent.ContentType);
  }

  swift_getKeyPath();
  v32 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  v26 = v1 + v25;
  v27 = v31;
  (*(v3 + 16))(v31, v26, v2);
  NavigationPath.withCollectionProxy(_:)();
  (*(v3 + 8))(v27, v2);
  sub_1000B42F8(v1);
}

void sub_1000AA5E4()
{
  v1 = v0;
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
  __chkstk_darwin(v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AA98 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000659C(v33, qword_100169640);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34 = v3;
    v37[0] = v11;
    *v10 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = sub_100025CF0(v12, v13, v37);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100025CF0(0xD000000000000020, 0x80000001001245F0, v37);
    _os_log_impl(&_mh_execute_header, v8, v9, "Start (%s.%s)…", v10, 0x16u);
    swift_arrayDestroy();
    v3 = v34;
  }

  swift_getKeyPath();
  v37[0] = v1;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = v1 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
  swift_beginAccess();
  v16 = type metadata accessor for SettingsAppDetailContent(0);
  sub_10000822C(&v15[*(v16 + 20)], v7, type metadata accessor for SettingsAppDetailContent.ContentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = PreferencesControllerRepresentableModel.makeViewControllerIfNeeded()();
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18 && (v19 = v18, [v18 shouldReloadSpecifiersOnResume]))
    {
      if (qword_10015AA80 != -1)
      {
        swift_once();
      }

      sub_10000659C(v33, qword_1001695F8);
      v20 = v17;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      v33 = v20;

      v23 = v21;
      if (os_log_type_enabled(v21, v22))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v34 = v3;
        v26 = v2;
        v27 = v25;
        *v24 = 141558275;
        *(v24 + 4) = 1752392040;
        *(v24 + 12) = 2113;
        *(v24 + 14) = v19;
        *v25 = v19;
        v28 = v33;
        _os_log_impl(&_mh_execute_header, v23, v22, "Reloading specifiers on resume for %{private,mask.hash}@.", v24, 0x16u);
        sub_1000068B0(v27, &unk_10015F9C0, &unk_100115230);
        v2 = v26;
        v3 = v34;
      }

      [v19 reloadSpecifiers];
    }

    else
    {
    }
  }

  else
  {
    sub_100046460(v7, type metadata accessor for SettingsAppDetailContent.ContentType);
  }

  swift_getKeyPath();
  v36 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  v30 = v1 + v29;
  v31 = v35;
  (*(v3 + 16))(v35, v30, v2);
  NavigationPath.withCollectionProxy(_:)();
  (*(v3 + 8))(v31, v2);
  sub_1000B44D4(v1);
}

void sub_1000AABD0()
{
  v1 = v0;
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
  __chkstk_darwin(v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AA98 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = sub_10000659C(v9, qword_100169640);

  v59 = v10;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  v60 = v5;
  v58 = v3;
  if (v13)
  {
    v14 = swift_slowAlloc();
    *&v64 = swift_slowAlloc();
    *v14 = 136315394;
    v15 = _typeName(_:qualified:)();
    v17 = sub_100025CF0(v15, v16, &v64);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_100025CF0(0xD00000000000001FLL, 0x8000000100124590, &v64);
    _os_log_impl(&_mh_execute_header, v11, v12, "Start (%s.%s)…", v14, 0x16u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  *&v64 = v1;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = &v1[OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent];
  swift_beginAccess();
  v19 = type metadata accessor for SettingsAppDetailContent(0);
  sub_10000822C(&v18[*(v19 + 20)], v8, type metadata accessor for SettingsAppDetailContent.ContentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = PreferencesControllerRepresentableModel.makeViewControllerIfNeeded()();
    v21 = [v20 canBeShownFromSuspendedState];

    if ((v21 & 1) == 0)
    {

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v62[0] = v60;
        *v33 = 136315138;
        LODWORD(v59) = v32;
        v34 = sub_100010CD0();
        swift_getKeyPath();
        *&v64 = v34;
        sub_100018684(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v35 = *&v34[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection];
        v36 = *&v34[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 8];
        v38 = *&v34[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 16];
        v37 = *&v34[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 24];
        v39 = v34[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 32];
        sub_100031DF8(v35, v36, v38, v37, v39);

        *&v64 = v35;
        *(&v64 + 1) = v36;
        *&v65 = v38;
        *(&v65 + 1) = v37;
        v66 = v39;
        sub_10004DED0(&qword_10015E690, &qword_100115788);
        v40 = String.init<A>(describing:)();
        v42 = sub_100025CF0(v40, v41, v62);

        *(v33 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v31, v59, "Root for currentSelection '%s' is a Preferences Controller that cannot be shown from a suspended state.", v33, 0xCu);
        sub_10000665C(v60);
      }

      v64 = 0u;
      v65 = 0u;
      v66 = 6;
      sub_1000A57A4(&v64);

      goto LABEL_27;
    }
  }

  else
  {
    sub_100046460(v8, type metadata accessor for SettingsAppDetailContent.ContentType);
  }

  swift_getKeyPath();
  *&v64 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  v23 = v58;
  v24 = v60;
  v25 = (*(v58 + 16))(v60, &v1[v22], v2);
  v63 = _swiftEmptyArrayStorage;
  __chkstk_darwin(v25);
  *(&v57 - 2) = &v63;
  NavigationPath.withCollectionProxy(_:)();
  v26 = v63[2];
  if (!v26)
  {
LABEL_13:
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "There are no controllers on the navigation path that cannot be shown from suspended state.", v30, 2u);
    }

LABEL_16:
    (*(v23 + 8))(v24, v2);
LABEL_27:
    sub_1000B38B4(v1);
    return;
  }

  v27 = 0;
  while (*(v63 + v27 + 32) == 1)
  {
    if (v26 == ++v27)
    {
      goto LABEL_13;
    }
  }

  if (!v27)
  {
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "First controller on the navigation path cannot be shown from suspended state.", v53, 2u);
    }

    v62[0] = 0;
    Transaction.disablesAnimations.setter();
    withTransaction<A>(_:_:)();

    goto LABEL_16;
  }

  v43 = NavigationPath.count.getter();
  v44 = v43 - v27;
  if (!__OFSUB__(v43, v27))
  {
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134349312;
      *(v47 + 4) = v44;
      *(v47 + 12) = 2050;
      swift_beginAccess();
      *(v47 + 14) = NavigationPath.count.getter();
      _os_log_impl(&_mh_execute_header, v45, v46, "Popping '%{public}ld' items from the navigation path (count is '%{public}ld').", v47, 0x16u);
    }

    v48 = v60;
    swift_beginAccess();
    v49 = NavigationPath.count.getter();
    if (v44 && v49 >= v44)
    {
      swift_beginAccess();
      NavigationPath.removeLast(_:)(v44);
      v50 = swift_endAccess();
      __chkstk_darwin(v50);
      *(&v57 - 2) = v1;
      *(&v57 - 1) = v48;
      v61 = 0;
      Transaction.disablesAnimations.setter();
      withTransaction<A>(_:_:)();

      (*(v23 + 8))(v48, v2);
    }

    else
    {
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 134349312;
        *(v56 + 4) = v44;
        *(v56 + 12) = 2050;
        *(v56 + 14) = NavigationPath.count.getter();
        _os_log_impl(&_mh_execute_header, v54, v55, "Unexpected number of items to pop '%{public}ld' when there are only '%{public}ld' items in the navigation path.", v56, 0x16u);
      }

      (*(v23 + 8))(v60, v2);
    }

    goto LABEL_27;
  }

  __break(1u);
}

uint64_t sub_1000AB624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = sub_10004DED0(a5, a6);
  __chkstk_darwin(v11 - 8);
  v13 = &v15 - v12;
  sub_100059CA0(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t sub_1000AB6D0(uint64_t a1)
{
  v1 = sub_10004DED0(&qword_10015ED78, &qword_100115FB8);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v27 - v5;
  v7 = type metadata accessor for SettingsURLDestination(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_currentlyInProgressURLDestination;
    swift_beginAccess();
    sub_100059CA0(v15 + v16, v6, &qword_10015ED78, &qword_100115FB8);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      return sub_1000068B0(v6, &qword_10015ED78, &qword_100115FB8);
    }

    else
    {
      sub_100030854(v6, v13, type metadata accessor for SettingsURLDestination);
      if (qword_10015AAA0 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000659C(v17, qword_100169658);
      sub_10000822C(v13, v11, type metadata accessor for SettingsURLDestination);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v28 = v20;
        v29 = swift_slowAlloc();
        v30[0] = v29;
        *v20 = 136446210;
        v27 = sub_1000F41C0();
        v22 = v21;
        sub_100046460(v11, type metadata accessor for SettingsURLDestination);
        v23 = sub_100025CF0(v27, v22, v30);

        v24 = v28;
        *(v28 + 1) = v23;
        _os_log_impl(&_mh_execute_header, v18, v19, "It has been 15 seconds since processing for %{public}s started. Assuming client controller didn't call completion. Cleaning up state so navigation isn't stuck.", v24, 0xCu);
        sub_10000665C(v29);
      }

      else
      {

        sub_100046460(v11, type metadata accessor for SettingsURLDestination);
      }

      v25 = *(v8 + 56);
      v25(v4, 1, 1, v7);
      v26 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_pendingURLDestination;
      swift_beginAccess();
      sub_1000BB1A0(v4, v15 + v26, &qword_10015ED78, &qword_100115FB8);
      swift_endAccess();
      v25(v4, 1, 1, v7);
      swift_beginAccess();
      sub_10003BBC0(v4, v15 + v16, &qword_10015ED78, &qword_100115FB8);
      swift_endAccess();
      sub_1000A8CB0();

      sub_1000068B0(v4, &qword_10015ED78, &qword_100115FB8);
      return sub_100046460(v13, type metadata accessor for SettingsURLDestination);
    }
  }

  return result;
}

uint64_t sub_1000ABB58()
{
  [objc_opt_self() registerApplicationURLStateProvider:0];

  v1 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  v2 = type metadata accessor for NavigationPath();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100046460(v0 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent, type metadata accessor for SettingsAppDetailContent);
  sub_1000068B0(v0 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_pendingURLDestination, &qword_10015ED78, &qword_100115FB8);
  sub_1000068B0(v0 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_currentlyInProgressURLDestination, &qword_10015ED78, &qword_100115FB8);

  sub_1000068B0(v0 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__horizontalSizeClass, &qword_10015EF28, &qword_100116590);
  sub_1000068B0(v0 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__scenePhase, &qword_10015EFB0, &qword_100116220);
  v3 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1000ABCF0()
{
  sub_1000ABB58();

  return swift_deallocClassInstance();
}

uint64_t sub_1000ABD50(uint64_t a1, char a2)
{
  v3 = type metadata accessor for NavigationPath();
  __chkstk_darwin(v3 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = sub_100010CD0();
    swift_getKeyPath();
    v23.i64[0] = v7;
    sub_100018684(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = *&v7[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection];
    v9 = *&v7[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 8];
    v10 = *&v7[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 16];
    v11 = *&v7[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 24];
    v12 = v7[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 32];
    sub_100031DF8(v8, v9, v10, v11, v7[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 32]);

    v13 = a2;
    v14 = qword_100116280[a2];
    v23 = v14;
    v24 = 0;
    v25 = 0;
    v26 = 6;
    if (v12 == 255)
    {
      sub_100032660(v8, v9, v10, v11, 0xFFu);
      sub_100032660(v14, 0, 0, 0, 6u);
    }

    else
    {
      v21[0] = v8;
      v21[1] = v9;
      v21[2] = v10;
      v21[3] = v11;
      v22 = v12;
      v15 = sub_10002BB48(v21, &v23);
      sub_10002C5C0(v14, 0, 0, 0, 6u);
      sub_100032660(v8, v9, v10, v11, v12);
      if (v15)
      {
        NavigationPath.init()();
        sub_1000A7C70(v5);
      }
    }

    v17 = qword_100116280[v13];
    v18 = 0;
    v19 = 0;
    v20 = 6;

    sub_1000954AC(&v17);
  }

  return result;
}

id sub_1000ABFB4(void *a1)
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169658);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Finish Setup Completion called, dismissing.", v5, 2u);
  }

  return [a1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_1000AC0B4(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v53 = a2[1];
  v51 = v3;
  v54 = a2;
  v52 = *(a2 + 32);
  v44 = type metadata accessor for SettingsAppDetailContent(0);
  v4 = __chkstk_darwin(v44);
  v46 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v4);
  v45 = &v40[-v7];
  __chkstk_darwin(v6);
  v47 = &v40[-v8];
  v49 = type metadata accessor for UserInterfaceSizeClass();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v42 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = (sub_10004DED0(&qword_10015EF20, &unk_100116140) - 8);
  __chkstk_darwin(v50);
  v11 = &v40[-v10];
  v12 = sub_10004DED0(&qword_10015EF28, &qword_100116590);
  v13 = __chkstk_darwin(v12 - 8);
  v43 = &v40[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v16 = &v40[-v15];
  v17 = sub_10004DED0(&qword_10015ED78, &qword_100115FB8);
  __chkstk_darwin(v17 - 8);
  v19 = &v40[-v18];
  v20 = type metadata accessor for SettingsURLDestination(0);
  v21 = *(*(v20 - 8) + 56);
  v21(v19, 1, 1, v20);
  v22 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_pendingURLDestination;
  swift_beginAccess();
  sub_1000BB1A0(v19, a1 + v22, &qword_10015ED78, &qword_100115FB8);
  swift_endAccess();
  v21(v19, 1, 1, v20);
  v23 = v48;
  v24 = v49;
  v25 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_currentlyInProgressURLDestination;
  swift_beginAccess();
  sub_10003BBC0(v19, a1 + v25, &qword_10015ED78, &qword_100115FB8);
  swift_endAccess();
  sub_1000A8CB0();
  sub_1000068B0(v19, &qword_10015ED78, &qword_100115FB8);
  sub_100010CD0();
  memset(v58, 0, sizeof(v58));
  v59 = -1;
  sub_1000954AC(v58);

  swift_getKeyPath();
  *&v56[0] = a1;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__horizontalSizeClass;
  swift_beginAccess();
  (*(v23 + 104))(v16, enum case for UserInterfaceSizeClass.regular(_:), v24);
  (*(v23 + 56))(v16, 0, 1, v24);
  v27 = *(v50 + 14);
  sub_100059CA0(a1 + v26, v11, &qword_10015EF28, &qword_100116590);
  sub_100059CA0(v16, &v11[v27], &qword_10015EF28, &qword_100116590);
  v28 = *(v23 + 48);
  if (v28(v11, 1, v24) == 1)
  {
    sub_1000068B0(v16, &qword_10015EF28, &qword_100116590);
    if (v28(&v11[v27], 1, v24) == 1)
    {
      sub_1000068B0(v11, &qword_10015EF28, &qword_100116590);
LABEL_16:
      sub_10003C054();
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  v50 = v16;
  v29 = v43;
  sub_100059CA0(v11, v43, &qword_10015EF28, &qword_100116590);
  if (v28(&v11[v27], 1, v24) == 1)
  {
    sub_1000068B0(v50, &qword_10015EF28, &qword_100116590);
    (*(v23 + 8))(v29, v24);
LABEL_6:
    sub_1000068B0(v11, &qword_10015EF20, &unk_100116140);
    goto LABEL_7;
  }

  v37 = v42;
  (*(v23 + 32))(v42, &v11[v27], v24);
  sub_100018684(&qword_10015EF30, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  v38 = *(v23 + 8);
  v38(v37, v24);
  sub_1000068B0(v50, &qword_10015EF28, &qword_100116590);
  v38(v29, v24);
  sub_1000068B0(v11, &qword_10015EF28, &qword_100116590);
  if (v41)
  {
    goto LABEL_16;
  }

LABEL_7:
  if (qword_10015AB18 != -1)
  {
    swift_once();
  }

  v30 = sub_10000659C(v44, qword_1001697A0);
  v31 = v47;
  sub_10000822C(v30, v47, type metadata accessor for SettingsAppDetailContent);
  v32 = a1 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
  swift_beginAccess();
  v33 = v45;
  sub_10000822C(v32, v45, type metadata accessor for SettingsAppDetailContent);
  v34 = sub_1000BAABC(v33, v31);
  sub_100046460(v33, type metadata accessor for SettingsAppDetailContent);
  if (v34)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v40[-16] = a1;
    *&v40[-8] = v31;
    *&v56[0] = a1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v36 = v46;
    sub_10000822C(v31, v46, type metadata accessor for SettingsAppDetailContent);
    swift_beginAccess();
    sub_1000BABF8(v36, v32);
    swift_endAccess();
    swift_getKeyPath();
    *&v56[0] = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v32 + 32) <= 2u)
    {
      sub_1000A8068();
    }

    sub_100046460(v46, type metadata accessor for SettingsAppDetailContent);
  }

  sub_100046460(v31, type metadata accessor for SettingsAppDetailContent);
LABEL_17:
  v56[0] = v51;
  v56[1] = v53;
  v57 = v52;

  sub_10002698C(v54, v55);
  sub_100095C68(v56);
}

uint64_t sub_1000ACA48(uint64_t a1, int a2, void (*a3)(void, void, void), uint64_t a4, uint64_t a5)
{
  v221 = a4;
  v226 = a3;
  LODWORD(v228) = a2;
  v5 = *a5;
  v210 = *(a5 + 16);
  v211 = v5;
  v223 = a5;
  v209 = *(a5 + 32);
  v225 = type metadata accessor for SettingsAppDetailContent(0);
  v215 = *(v225 - 8);
  v6 = __chkstk_darwin(v225);
  v224 = v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = v7;
  __chkstk_darwin(v6);
  v217 = v181 - v8;
  v9 = type metadata accessor for AnimationCompletionCriteria();
  v206 = *(v9 - 8);
  __chkstk_darwin(v9);
  v205 = v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SettingsURLDestination(0);
  v218 = *(v11 - 8);
  v12 = *(v218 + 64);
  v13 = __chkstk_darwin(v11);
  v222 = v181 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v214 = v181 - v15;
  v16 = __chkstk_darwin(v14);
  v198 = v181 - v17;
  __chkstk_darwin(v16);
  v197 = v181 - v18;
  v227 = type metadata accessor for URLQueryItem();
  v207 = *(v227 - 8);
  v19 = __chkstk_darwin(v227);
  v202 = v181 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v201 = v181 - v22;
  v23 = __chkstk_darwin(v21);
  v199 = v181 - v24;
  v25 = __chkstk_darwin(v23);
  v200 = v181 - v26;
  v27 = __chkstk_darwin(v25);
  v208 = v181 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = v181 - v30;
  __chkstk_darwin(v29);
  v203 = v181 - v32;
  v33 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
  v34 = __chkstk_darwin(v33);
  v213 = v181 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v38 = v181 - v37;
  __chkstk_darwin(v36);
  v40 = (v181 - v39);
  v220 = type metadata accessor for NavigationPath();
  v219 = *(v220 - 8);
  __chkstk_darwin(v220);
  v42 = v181 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v44 = result;
  v212 = v12;
  v204 = v42;
  v45 = v228;
  v193 = v9;
  if (v228)
  {
    goto LABEL_20;
  }

  swift_getKeyPath();
  v46 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel___observationRegistrar;
  *&v233 = v44;
  v47 = sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  v189 = v46;
  v188 = v47;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v48 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  v192 = v11;
  v49 = v219;
  v50 = *(v219 + 16);
  v187 = v48;
  v51 = v44 + v48;
  v52 = v204;
  v53 = v220;
  v186 = v219 + 16;
  v185 = v50;
  v50(v204, v51, v220);
  v54 = NavigationPath.isEmpty.getter();
  v55 = v49;
  v56 = v192;
  v57 = *(v55 + 8);
  v58 = v52;
  v45 = v228;
  v184 = v55 + 8;
  v183 = v57;
  v57(v58, v53);
  if (v54)
  {
    goto LABEL_20;
  }

  sub_10000822C(v226 + *(v225 + 20), v40, type metadata accessor for SettingsAppDetailContent.ContentType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100046460(v40, type metadata accessor for SettingsAppDetailContent.ContentType);
    goto LABEL_20;
  }

  v182 = v44;
  v181[1] = *v40;
  v59 = *(v221 + *(v56 + 24));
  v60 = *(v59 + 16);
  v61 = v227;
  if (!v60)
  {
LABEL_18:

    v44 = v182;
LABEL_19:
    v45 = v228;
LABEL_20:
    v76 = *(v225 + 20);
    v77 = v226;
    sub_10000822C(v226 + v76, v38, type metadata accessor for SettingsAppDetailContent.ContentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      sub_10004DED0(&unk_10015E300, &unk_100115600);

      v79 = type metadata accessor for SettingsPaneRecipe();
      (*(*(v79 - 8) + 8))(v38, v79);
      v80 = v44;
      sub_1000A9738((v45 & 1) == 0, v89);
      v90 = v212;
      v91 = v223;
    }

    else
    {
      sub_100046460(v38, type metadata accessor for SettingsAppDetailContent.ContentType);
      v80 = v44;
      sub_1000A9738(1, v81);
      v82 = v213;
      sub_10000822C(v77 + v76, v213, type metadata accessor for SettingsAppDetailContent.ContentType);
      v83 = swift_getEnumCaseMultiPayload();
      sub_100046460(v82, type metadata accessor for SettingsAppDetailContent.ContentType);
      if (v83 == 1 && (*(&v234 + 1) = &type metadata for SettingsAppFeatureFlags, v235 = sub_10000631C(), LOBYTE(v233) = 6, v84 = isFeatureEnabled(_:)(), sub_10000665C(&v233), (v84 & 1) != 0))
      {
        v90 = v212;
        v91 = v223;
        if (qword_10015AAA0 != -1)
        {
          swift_once();
        }

        v85 = type metadata accessor for Logger();
        sub_10000659C(v85, qword_100169658);
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&_mh_execute_header, v86, v87, "Skipping selection update as we're in strict navigation mode.", v88, 2u);
        }
      }

      else
      {
        sub_100010CD0();
        v233 = v211;
        v234 = v210;
        LOBYTE(v235) = v209;
        v91 = v223;
        sub_10002698C(v223, v236);
        sub_1000954AC(&v233);

        v90 = v212;
      }
    }

    v92 = sub_100010CD0();
    swift_getKeyPath();
    v236[0] = v92;
    sub_100018684(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v93 = v92[16];

    if (v93 == 1)
    {
      if (qword_10015AAA0 != -1)
      {
LABEL_93:
        swift_once();
      }

      v94 = type metadata accessor for Logger();
      sub_10000659C(v94, qword_100169658);
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&_mh_execute_header, v95, v96, "New selection was not selectable, ignoring URL", v97, 2u);
      }
    }

    else
    {
      LODWORD(v227) = EnumCaseMultiPayload;
      v98 = swift_allocObject();
      swift_weakInit();
      v99 = v77;
      v100 = v217;
      sub_10000822C(v99, v217, type metadata accessor for SettingsAppDetailContent);
      v101 = v214;
      sub_10000822C(v221, v214, type metadata accessor for SettingsURLDestination);
      sub_10000822C(v100, v224, type metadata accessor for SettingsAppDetailContent);
      sub_10000822C(v101, v222, type metadata accessor for SettingsURLDestination);
      v102 = (*(v215 + 80) + 24) & ~*(v215 + 80);
      v103 = (v216 + *(v218 + 80) + v102) & ~*(v218 + 80);
      v104 = v103 + v90;
      v105 = swift_allocObject();
      *(v105 + 16) = v98;
      sub_100030854(v100, v105 + v102, type metadata accessor for SettingsAppDetailContent);
      sub_100030854(v101, v105 + v103, type metadata accessor for SettingsURLDestination);
      v106 = v228;
      *(v105 + v104) = v228 & 1;
      v107 = v105 + (v104 & 0xFFFFFFFFFFFFFFF8);
      *(v107 + 40) = *(v91 + 32);
      v108 = *v91;
      *(v107 + 24) = *(v91 + 16);
      *(v107 + 8) = v108;
      if ((v106 & 1) != 0 || v227 == 2)
      {
        sub_10002698C(v91, v236);
      }

      else
      {
        swift_getKeyPath();
        v229 = v80;

        sub_10002698C(v91, v236);
        sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v112 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
        swift_beginAccess();
        v113 = v219;
        v114 = v204;
        v115 = v220;
        (*(v219 + 16))(v204, v80 + v112, v220);
        LOBYTE(v112) = NavigationPath.isEmpty.getter();
        (*(v113 + 8))(v114, v115);
        if ((v112 & 1) == 0)
        {

          sub_100046460(v222, type metadata accessor for SettingsURLDestination);
          sub_100046460(v224, type metadata accessor for SettingsAppDetailContent);
          v229 = 0;
          v116 = v205;
          static AnimationCompletionCriteria.logicallyComplete.getter();
          Transaction.addAnimationCompletion(criteria:_:)();
          (*(v206 + 8))(v116, v193);
          v117 = swift_allocObject();
          swift_weakInit();

          __chkstk_darwin(v118);
          v119 = v221;
          v181[-2] = v117;
          v181[-1] = v119;
          withTransaction<A>(_:_:)();
        }

        v106 = v228;
      }

      v109 = v106 & 1;
      v110 = v224;
      v111 = v222;
      sub_1000B1308(v98, v224, v222, v109, v91);

      sub_100046460(v111, type metadata accessor for SettingsURLDestination);
      return sub_100046460(v110, type metadata accessor for SettingsAppDetailContent);
    }
  }

  v62 = 0;
  v63 = v207;
  v196 = (v207 + 8);
  v195 = v207 + 16;
  while (1)
  {
    if (v62 >= *(v59 + 16))
    {
      __break(1u);
      goto LABEL_93;
    }

    v64 = *(v63 + 72);
    v191 = (*(v63 + 80) + 32) & ~*(v63 + 80);
    v194 = v64;
    v190 = *(v63 + 16);
    v190(v31, v59 + v191 + v64 * v62, v61);
    if (URLQueryItem.name.getter() == 1752457584 && v65 == 0xE400000000000000)
    {
      break;
    }

    v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v66)
    {
      goto LABEL_15;
    }

    ++v62;
    v61 = v227;
    (*v196)(v31, v227);
    if (v60 == v62)
    {
      goto LABEL_18;
    }
  }

LABEL_15:
  v69 = *(v63 + 32);
  v67 = v63 + 32;
  v68 = v69;
  v70 = v203;
  v71 = v227;
  v69(v203, v31, v227);
  v72 = URLQueryItem.value.getter();
  v74 = v73;
  v203 = *(v67 - 24);
  (v203)(v70, v71);
  if (!v74)
  {
    goto LABEL_18;
  }

  v181[0] = v67;
  *(&v234 + 1) = &type metadata for SettingsAppFeatureFlags;
  v235 = sub_10000631C();
  LOBYTE(v233) = 6;
  v75 = isFeatureEnabled(_:)();
  sub_10000665C(&v233);
  v44 = v182;
  if (v75)
  {

    goto LABEL_19;
  }

  if (qword_10015AAA0 != -1)
  {
    goto LABEL_96;
  }

  while (1)
  {
    v120 = type metadata accessor for Logger();
    sub_10000659C(v120, qword_100169658);
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&_mh_execute_header, v121, v122, "Navigation Stack is not empty.", v123, 2u);
    }

    v226 = v68;

    v124 = swift_allocObject();
    *(v124 + 16) = PreferencesControllerRepresentableModel.makeViewControllerIfNeeded()();
    v125 = (v124 + 16);

    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *v128 = 141558275;
      *(v128 + 4) = 1752392040;
      *(v128 + 12) = 2113;
      swift_beginAccess();
      v130 = *v125;
      *(v128 + 14) = *v125;
      *v129 = v130;
      v131 = v130;
      _os_log_impl(&_mh_execute_header, v126, v127, "Initial controllerToHandleURL is '%{private,mask.hash}@'", v128, 0x16u);
      sub_1000068B0(v129, &unk_10015F9C0, &unk_100115230);
    }

    v232 = -1;
    v132 = swift_allocObject();
    *&v233 = v72;
    *(&v233 + 1) = v74;
    v236[0] = 47;
    v236[1] = 0xE100000000000000;
    sub_10002EAE0();
    v133 = StringProtocol.components<A>(separatedBy:)();

    v134 = *(v133 + 16);
    v132[2] = v133;
    v225 = (v132 + 2);
    v132[3] = v133 + 32;
    v132[4] = 0;
    v132[5] = (2 * v134) | 1;
    swift_getKeyPath();
    *&v233 = v44;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v135 = v204;
    v136 = v220;
    v137 = v185(v204, v44 + v187, v220);
    __chkstk_darwin(v137);
    v181[-4] = v124;
    v181[-3] = v132;
    v228 = v132;
    v181[-2] = &v232;
    NavigationPath.withCollectionProxy(_:)();
    v183(v135, v136);
    v138 = v192;
    v224 = swift_allocBox();
    v140 = v139;
    sub_10000822C(v221, v139, type metadata accessor for SettingsURLDestination);
    v141 = *(v138 + 24);
    v72 = *(v140 + v141);
    v142 = *(v72 + 2);

    if (!v142)
    {
      break;
    }

    v222 = v141;
    v223 = v140;
    v143 = 0;
    v68 = 0xE400000000000000;
    v144 = v191;
    v145 = v227;
    v44 = v200;
    v146 = v190;
    while (1)
    {
      if (v143 >= *(v72 + 2))
      {
        __break(1u);
        goto LABEL_95;
      }

      v146(v208, &v72[v144], v145);
      if (URLQueryItem.name.getter() == 1752457584 && v147 == 0xE400000000000000)
      {
        break;
      }

      v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v145 = v227;
      (v203)(v208, v227);
      if (v74)
      {
        goto LABEL_58;
      }

      ++v143;
      v144 += v194;
      if (v142 == v143)
      {
        v74 = *(v72 + 2);
        v143 = v74;
        goto LABEL_59;
      }
    }

    v145 = v227;
    (v203)(v208, v227);
LABEL_58:
    v74 = v143 + 1;
    v148 = *(v72 + 2);
    if (v148 - 1 == v143)
    {
LABEL_59:
      v140 = v223;
      v141 = v222;
      goto LABEL_78;
    }

    v219 = v124;
    v149 = v194 + v144;
    v150 = (v207 + 40);
    while (v74 < v148)
    {
      v146(v44, &v72[v149], v145);
      if (URLQueryItem.name.getter() == 1752457584 && v151 == 0xE400000000000000)
      {

        v145 = v227;
        (v203)(v44, v227);
      }

      else
      {
        v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v145 = v227;
        result = (v203)(v44, v227);
        if ((v68 & 1) == 0)
        {
          if (v74 != v143)
          {
            if (v143 < 0)
            {
              goto LABEL_103;
            }

            v152 = *(v72 + 2);
            if (v143 >= v152)
            {
              goto LABEL_104;
            }

            v153 = v143 * v194;
            v154 = v227;
            v146 = v190;
            result = (v190)(v201, &v72[v191 + v143 * v194], v227);
            if (v74 >= v152)
            {
              goto LABEL_105;
            }

            v146(v202, &v72[v149], v154);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v72 = sub_1000BA188(v72);
            }

            v44 = v200;
            v68 = *v150;
            v155 = &v72[v191 + v153];
            v145 = v227;
            result = (*v150)(v155, v202, v227);
            if (v74 >= *(v72 + 2))
            {
              goto LABEL_106;
            }

            (v68)(&v72[v149], v201, v145);
          }

          ++v143;
        }
      }

      ++v74;
      v148 = *(v72 + 2);
      v149 += v194;
      if (v74 == v148)
      {
        v124 = v219;
        v140 = v223;
        v156 = &v237;
        v141 = v222;
        if (v74 < v143)
        {
          __break(1u);
        }

        else if ((v143 & 0x8000000000000000) == 0)
        {
          goto LABEL_78;
        }

        __break(1u);
        goto LABEL_99;
      }
    }

LABEL_95:
    __break(1u);
LABEL_96:
    swift_once();
  }

  v74 = 0;
  v143 = 0;
LABEL_78:
  v156 = v143 - v74;
  v145 = v143;
  if (__OFADD__(v74, v143 - v74))
  {
LABEL_99:
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v231 = v72;
    if (!isUniquelyReferenced_nonNull_native || v143 > *(v72 + 3) >> 1)
    {
      if (v74 <= v143)
      {
        v158 = v143;
      }

      else
      {
        v158 = v74;
      }

      v72 = sub_1000C4F50(isUniquelyReferenced_nonNull_native, v158, 1, v72);
      v231 = v72;
    }

    sub_1000BA974(v143, v74, 0);
    swift_beginAccess();
    v159 = *(v228 + 2);
    v233 = *(v228 + 1);
    v234 = v159;
    swift_unknownObjectRetain();
    sub_10004DED0(&qword_10015EEC8, &unk_1001160A0);
    sub_1000525A0(&unk_10015EED0, &qword_10015EEC8, &unk_1001160A0, &protocol conformance descriptor for ArraySlice<A>);
    BidirectionalCollection<>.joined(separator:)();
    swift_unknownObjectRelease();
    v74 = v199;
    URLQueryItem.init(name:value:)();

    v145 = *(v72 + 2);
    v156 = *(v72 + 3);
    v143 = v145 + 1;
    if (v145 < v156 >> 1)
    {
      goto LABEL_86;
    }
  }

  v72 = sub_1000C4F50((v156 > 1), v143, 1, v72);
LABEL_86:
  *(v72 + 2) = v143;
  v226(&v72[v191 + v145 * v194], v74, v227);
  *(v140 + v141) = v72;

  swift_getKeyPath();
  v160 = v182;
  *&v233 = v182;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v161 = v160 + v187;
  v162 = v204;
  v163 = v220;
  v185(v204, v161, v220);
  v164 = NavigationPath.count.getter();
  result = (v183)(v162, v163);
  v165 = v232 + 1;
  if (__OFADD__(v232, 1))
  {
    __break(1u);
  }

  else
  {
    v227 = v164 - v165;
    if (!__OFSUB__(v164, v165))
    {
      v166 = v124;
      v167 = swift_allocObject();
      v168 = v182;
      swift_weakInit();
      v169 = v197;
      sub_10000822C(v221, v197, type metadata accessor for SettingsURLDestination);
      v170 = v198;
      sub_10000822C(v169, v198, type metadata accessor for SettingsURLDestination);
      v171 = (*(v218 + 80) + 24) & ~*(v218 + 80);
      v172 = (v212 + v171 + 7) & 0xFFFFFFFFFFFFFFF8;
      v173 = swift_allocObject();
      *(v173 + 16) = v167;
      sub_100030854(v169, v173 + v171, type metadata accessor for SettingsURLDestination);
      v174 = v224;
      *(v173 + v172) = v224;
      *(v173 + ((v172 + 15) & 0xFFFFFFFFFFFFFFF8)) = v166;

      if (v227 <= 0)
      {

        sub_1000AF878(v167, v170, v174, v166);

        sub_100046460(v170, type metadata accessor for SettingsURLDestination);
      }

      else
      {

        sub_100046460(v170, type metadata accessor for SettingsURLDestination);
        *&v233 = 0;
        v175 = v205;
        static AnimationCompletionCriteria.logicallyComplete.getter();
        Transaction.addAnimationCompletion(criteria:_:)();
        (*(v206 + 8))(v175, v193);
        swift_getKeyPath();
        v230 = v168;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v176 = v204;
        v177 = v220;
        v185(v204, v168 + v187, v220);
        NavigationPath.count.getter();
        v183(v176, v177);
        v178 = v227;
        Transaction.disablesAnimations.setter();
        v179 = swift_allocObject();
        swift_weakInit();

        __chkstk_darwin(v180);
        v181[-2] = v179;
        v181[-1] = v178;
        withTransaction<A>(_:_:)();
      }
    }
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
  return result;
}

uint64_t sub_1000AEA14(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v107 = a4;
  *&v116 = a2;
  v6 = sub_10004DED0(&qword_10015EEE0, &qword_1001160B0);
  __chkstk_darwin(v6 - 8);
  v112 = &v103 - v7;
  v119 = type metadata accessor for PreferencesControllerRecipe();
  v8 = *(v119 - 8);
  __chkstk_darwin(v119);
  v118 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NavigationPath.CollectionProxy();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004DED0(&qword_10015EEE8, &qword_1001160B8);
  __chkstk_darwin(v14 - 8);
  v16 = &v103 - v15;
  v17 = sub_10004DED0(&qword_10015EEF0, &qword_1001160C0);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v103 - v19;
  (*(v11 + 16))(v16, a1, v10);
  (*(v11 + 32))(v13, v16, v10);
  sub_100018684(&qword_10015EEF8, &type metadata accessor for NavigationPath.CollectionProxy, &protocol conformance descriptor for NavigationPath.CollectionProxy);
  dispatch thunk of Sequence.makeIterator()();
  v21 = *(v18 + 44);
  v22 = v116;
  v23 = a3;
  v104 = v21;
  *&v20[v21] = 0;
  v113 = *(sub_10004DED0(&qword_10015EF00, &qword_1001160C8) + 36);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v24 = sub_100018684(&qword_10015EF08, &type metadata accessor for NavigationPath.CollectionProxy, &protocol conformance descriptor for NavigationPath.CollectionProxy);
  v117 = 0;
  v110 = (v8 + 32);
  v111 = (v8 + 56);
  v109 = (v8 + 8);
  *&v25 = 136315651;
  v103 = v25;
  v108 = a3;
  v105 = v24;
  v106 = v10;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v20[v113] == v122[0])
    {
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = v117;
    }

    else
    {
      v30 = dispatch thunk of Collection.subscript.read();
      sub_10000B270(v31, v123);
      v30(v122, 0);
      dispatch thunk of Collection.formIndex(after:)();
      sub_100046A2C(v123, v124);
      v32 = v117;
      *&v123[0] = v117;
      sub_100046A2C(v124, v123 + 8);
      v33 = __OFADD__(v32, 1);
      v29 = v32 + 1;
      if (v33)
      {
        goto LABEL_58;
      }

      *&v20[v104] = v29;
      v26 = v123[0];
      v27 = v123[1];
      v28 = v123[2];
    }

    v125[0] = v26;
    v125[1] = v27;
    v125[2] = v28;
    if (!v28)
    {
      goto LABEL_51;
    }

    v116 = v26;
    sub_100046A2C((v125 + 8), v123);
    sub_10000B270(v123, v124);
    sub_10004DED0(&qword_10015EF10, &qword_1001160D0);
    v34 = v112;
    v35 = swift_dynamicCast();
    v36 = *v111;
    if ((v35 & 1) == 0)
    {
      v36(v34, 1, 1, v119);
      sub_1000068B0(v34, &qword_10015EEE0, &qword_1001160B0);
      goto LABEL_46;
    }

    v37 = v119;
    v36(v34, 0, 1, v119);
    (*v110)(v118, v34, v37);
    v38 = PreferencesControllerRecipe.viewControllerIfLoaded.getter();
    if (!v38)
    {
      goto LABEL_33;
    }

    v39 = v38;
    v40 = [v38 specifier];
    if (!v40 || (v41 = v40, v42 = [v40 identifier], v41, !v42))
    {

LABEL_33:
      (*v109)(v118, v119);
LABEL_46:
      if (qword_10015AAA0 != -1)
      {
        goto LABEL_60;
      }

      goto LABEL_47;
    }

    v115 = v39;
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = v23[4];
    v47 = v23[5] >> 1;
    if (v46 == v47)
    {
      goto LABEL_35;
    }

    if (v46 >= v47)
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      swift_once();
LABEL_47:
      v90 = type metadata accessor for Logger();
      sub_10000659C(v90, qword_100169658);
      sub_10000B270(v123, v124);

      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = v22;
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v120 = v96;
        *v93 = 141558787;
        *(v93 + 4) = 1752392040;
        *(v93 + 12) = 2081;
        sub_10000B270(v124, v122);
        v97 = String.init<A>(describing:)();
        v99 = v98;
        sub_10000665C(v124);
        v100 = sub_100025CF0(v97, v99, &v120);

        *(v93 + 14) = v100;
        *(v93 + 22) = 2160;
        *(v93 + 24) = 1752392040;
        *(v93 + 32) = 2113;
        swift_beginAccess();
        v101 = *(v94 + 16);
        *(v93 + 34) = v101;
        *v95 = v101;
        v102 = v101;
        _os_log_impl(&_mh_execute_header, v91, v92, "Item '%{private,mask.hash}s' not valid, controllerToHandleURL is '%{private,mask.hash}@'", v93, 0x2Au);
        sub_1000068B0(v95, &unk_10015F9C0, &unk_100115230);

        sub_10000665C(v96);
      }

      else
      {

        sub_10000665C(v124);
      }

      sub_10000665C(v123);
LABEL_51:
      v89 = v20;
      return sub_1000068B0(v89, &qword_10015EEF0, &qword_1001160C0);
    }

    v48 = String._bridgeToObjectiveC()();

    v49 = SFObjectAndOffsetForURLPair();

    v50 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v120 = 0x7463656A626FLL;
    v121 = 0xE600000000000000;
    AnyHashable.init<A>(_:)();
    if (!*(v50 + 16))
    {
      break;
    }

    v51 = sub_100017DC0(v124);
    if ((v52 & 1) == 0)
    {
      break;
    }

    sub_10001EE30(*(v50 + 56) + 32 * v51, v122);
    sub_100017E04(v124);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_35;
    }

    v54 = v120;
    v53 = v121;
    if ((v120 != v43 || v121 != v45) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {

      v23 = v108;
      goto LABEL_35;
    }

    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_10000659C(v55, qword_100169658);

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();

    v58 = os_log_type_enabled(v56, v57);
    v117 = v29;
    if (v58)
    {
      v59 = swift_slowAlloc();
      v60 = v20;
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v124[0] = v62;
      *v59 = v103;
      v63 = sub_100025CF0(v54, v53, v124);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2160;
      *(v59 + 14) = 1752392040;
      *(v59 + 22) = 2113;
      v64 = *(v22 + 16);
      *(v59 + 24) = v64;
      *v61 = v64;
      v65 = v64;
      _os_log_impl(&_mh_execute_header, v56, v57, "Identifier '%s' is a match to path component, new controllerToHandleURL is '%{private,mask.hash}@'", v59, 0x20u);
      sub_1000068B0(v61, &unk_10015F9C0, &unk_100115230);
      v20 = v60;

      sub_10000665C(v62);
    }

    else
    {
    }

    v23 = v108;
    v66 = v108[4];
    v67 = v108[5];
    v68 = v67 >> 1;
    if (__OFSUB__(v67 >> 1, v66))
    {
      goto LABEL_54;
    }

    v69 = v108[4];
    if (v67 >> 1 != v66)
    {
      v69 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        goto LABEL_59;
      }

      if (v68 < v69)
      {
        goto LABEL_55;
      }

      if (v69 < v66)
      {
        goto LABEL_56;
      }
    }

    if (v68 < v66)
    {
      goto LABEL_57;
    }

    v70 = *v109;
    v114 = *(v108 + 1);
    swift_unknownObjectRetain();
    v70(v118, v119);
    sub_10000665C(v123);
    *(v23 + 1) = v114;
    v23[4] = v69;
    v23[5] = v67;
    swift_unknownObjectRelease();
    v71 = *(v22 + 16);
    *(v22 + 16) = v115;

    *v107 = v116;
  }

  sub_100017E04(v124);
LABEL_35:
  v117 = v20;
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  sub_10000659C(v72, qword_100169658);

  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = v23;
    v76 = swift_slowAlloc();
    *&v116 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    *v76 = 136315907;
    v77 = sub_100025CF0(v43, v45, &v120);

    *(v76 + 4) = v77;
    *(v76 + 12) = 2080;
    swift_beginAccess();
    v78 = 0;
    result = 0;
    v80 = v75[4];
    v81 = v75[5] >> 1;
    v82 = v115;
    if (v80 != v81)
    {
      if (v80 >= v81)
      {
        __break(1u);
        return result;
      }

      v78 = *(v108[3] + 16 * v80);
    }

    v122[0] = v78;
    v122[1] = result;
    sub_10004DED0(&qword_10015E900, &qword_100114A50);
    v83 = String.init<A>(describing:)();
    v85 = sub_100025CF0(v83, v84, &v120);

    *(v76 + 14) = v85;
    *(v76 + 22) = 2160;
    *(v76 + 24) = 1752392040;
    *(v76 + 32) = 2113;
    swift_beginAccess();
    v86 = *(v22 + 16);
    *(v76 + 34) = v86;
    v87 = v116;
    *v116 = v86;
    v88 = v86;
    _os_log_impl(&_mh_execute_header, v73, v74, "Identifier '%s' does not match '%s,  controllerToHandleURL is '%{private,mask.hash}@'", v76, 0x2Au);
    sub_1000068B0(v87, &unk_10015F9C0, &unk_100115230);

    swift_arrayDestroy();
  }

  else
  {
  }

  (*v109)(v118, v119);
  sub_10000665C(v123);
  v89 = v117;
  return sub_1000068B0(v89, &qword_10015EEF0, &qword_1001160C0);
}