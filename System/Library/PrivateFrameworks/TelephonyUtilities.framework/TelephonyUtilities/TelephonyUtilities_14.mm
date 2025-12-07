void sub_1002D7FC4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v6 = [objc_allocWithZone(UNMutableNotificationContent) init];
  v7 = String._bridgeToObjectiveC()();
  [v6 setCategoryIdentifier:v7];

  sub_10031E958(0xD000000000000027, 0x8000000100566470);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057D690;
  v9 = *(v4 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeHandleName);

  v10 = [a3 handle];
  v11 = v9();
  v13 = v12;

  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100009D88();
  *(v8 + 32) = v11;
  *(v8 + 40) = v13;
  String.init(format:_:)();

  v14 = String._bridgeToObjectiveC()();

  [v6 setBody:v14];

  v16 = *(v4 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeConversationName);
  v15 = *(v4 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeConversationName + 8);

  v16(a2);

  sub_10000D6CC();
  String._bridgeToObjectiveC()();
  sub_100007770();

  [v6 setTitle:v15];

  v17 = sub_1002CECB8();
  sub_1004554A0(v17, v18, v6);
  sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
  v19 = sub_1002CD0F4(a3);
  v21 = v20;
  v22 = v6;
  v24 = sub_10044F628(v19, v21, v22, 0);
  [v24 setDestinations:3];
  sub_1002CE7A4(v24);
}

void sub_1002D8304()
{
  sub_100005EF4();
  v1 = v0;
  v51 = type metadata accessor for UUID();
  sub_100007FEC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100007FDC();
  v50 = v6 - v5;
  v7 = [*(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_conversationManager) activeConversations];
  sub_1000112D0();
  sub_100006AF0(v8, v9, v10);
  sub_1000112D0();
  sub_10000CE3C(v11, v12, v13);
  sub_100022DF0();
  v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v14 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100022DF0();
    Set.Iterator.init(_cocoa:)();
    v15 = v58;
    v16 = v59;
    v18 = v60;
    v17 = v61;
    v19 = v62;
  }

  else
  {
    sub_1000052DC();
    v16 = v14 + 56;
    v18 = ~v20;
    sub_1000082B4();
    v19 = v21 & v22;

    v17 = 0;
    v15 = v14;
  }

  v48 = v18;
  v23 = (v18 + 64) >> 6;
  v49 = (v3 + 8);
  v55 = v15;
  v52 = v1;
  if (v15 < 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v24 = v17;
    v25 = v17;
    if (!v19)
    {
      break;
    }

LABEL_9:
    sub_100007C8C();
    v28 = v27 & v26;
    sub_10003DB58();
    v30 = v29;
    if (!v30)
    {
LABEL_25:
      sub_100022DDC(v55);

      v45 = sub_10000C56C();
      v47 = [v45 v46];
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10001E550();
      sub_100005F0C();

      if (!v47)
      {
        *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_facetimeIsShowingOnScreen) = 0;
      }

      sub_100005EDC();
      return;
    }

    while (1)
    {
      v56 = v28;
      sub_1002CC954(v30);
      if (v31)
      {
        if (qword_1006A0B70 != -1)
        {
          sub_100008288();
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        sub_1000075F0(v32, qword_1006BA6D0);
        v33 = v30;
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v54 = sub_100005274();
          v57 = sub_100005E84();
          *v54 = 136315138;
          v53 = v34;
          v36 = [v33 UUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          sub_10000A034();
          sub_10000EDB0(&qword_1006A25E0, v37, &protocol conformance descriptor for UUID);
          v38 = dispatch thunk of CustomStringConvertible.description.getter();
          (*v49)(v50, v51);
          v39 = sub_100005ED0();
          sub_10002741C(v39, v40, v41);
          sub_10000667C();

          *(v54 + 4) = v38;
          _os_log_impl(&_mh_execute_header, v53, v35, "In response to conversations changed, we determined that we should post an invite notification for conversation UUID %s", v54, 0xCu);
          sub_100009B7C(v57);
          sub_100005F40(v57);
          v1 = v52;
          sub_100005F40(v54);
        }

        else
        {
        }

        sub_1002CD2AC(v33);
      }

      if ([v30 state])
      {
        v42 = *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification);
        if (v42)
        {
          v43 = *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification + 8);

          v44 = sub_100022CB0();
          v42(v44);
          sub_1000051F8(v42, v43);
        }
      }

      v17 = v25;
      v19 = v56;
      if ((v55 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      if (__CocoaSet.Iterator.next()())
      {
        swift_dynamicCast();
        v30 = v57;
        v25 = v17;
        v28 = v19;
        if (v57)
        {
          continue;
        }
      }

      goto LABEL_25;
    }
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v23)
    {
      goto LABEL_25;
    }

    ++v24;
    if (*(v16 + 8 * v25))
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1002D8860()
{
  sub_100005EF4();
  v3 = v2;
  v4 = type metadata accessor for UUID();
  sub_100007FEC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100007FDC();
  sub_10001C9C4();
  v8 = type metadata accessor for URL();
  sub_100007FEC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100007FDC();
  v14 = v13 - v12;
  v213 = [v3 handoffEligibility];
  if (v213)
  {
    v208 = 0;
    v206 = v14;
    v207 = v10;
    v211 = v3;
    v203 = v1;
    v201 = v4;
    v210 = v0;
    v15 = [*(v0 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_conversationManager) activeConversations];
    v16 = sub_100006AF0(0, &unk_1006A0C80, TUConversation_ptr);
    sub_10000CE3C(&unk_1006A3BB8, &unk_1006A0C80, TUConversation_ptr);
    sub_100005F0C();
    sub_100022DF0();
    v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v200 = v6;
    v202 = v8;
    v212 = v16;
    if ((v17 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_100022DF0();
      Set.Iterator.init(_cocoa:)();
      v18 = v219[0];
      v19 = v219[1];
      v20 = v219[2];
      v21 = v219[3];
      v22 = v219[4];
    }

    else
    {
      sub_1000052DC();
      v19 = v17 + 56;
      v20 = ~v39;
      sub_1000082B4();
      v22 = v40 & v41;

      v21 = 0;
      v18 = v17;
    }

    v209 = v20;
    v42 = (v20 + 64) >> 6;
    v43 = &selRef_setWindowed_;
    if (v18 < 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v44 = v21;
    v45 = v21;
    if (!v22)
    {
      do
      {
        v45 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_93;
        }

        if (v45 >= v42)
        {
          goto LABEL_21;
        }

        ++v44;
      }

      while (!*(v19 + 8 * v45));
    }

    sub_100007C8C();
    v48 = v47 & v46;
    sub_10003DB58();
    v20 = v49;
    if (v20)
    {
      while (![v20 state])
      {

        v21 = v45;
        v22 = v48;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_10;
        }

LABEL_16:
        v50 = __CocoaSet.Iterator.next()();
        if (v50)
        {
          *&v216 = v50;
          swift_dynamicCast();
          v20 = v218[0];
          v45 = v21;
          v48 = v22;
          if (v218[0])
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      sub_100027E68();

      if (qword_1006A0B70 != -1)
      {
        sub_100008288();
        swift_once();
      }

      v177 = type metadata accessor for Logger();
      sub_1000075F0(v177, qword_1006BA6D0);
      v178 = v211;
      v179 = Logger.logObject.getter();
      v180 = static os_log_type_t.default.getter();

      v181 = v203;
      if (os_log_type_enabled(v179, v180))
      {
        v182 = sub_100005274();
        v183 = sub_100005E84();
        v218[0] = v183;
        *v182 = 136315138;
        v184 = [v178 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10000A034();
        sub_10000EDB0(v185, v186, &protocol conformance descriptor for UUID);
        v187 = dispatch thunk of CustomStringConvertible.description.getter();
        v189 = v188;
        (*(v200 + 8))(v181, v201);
        sub_10002741C(v187, v189, v218);
        sub_100007770();

        *(v182 + 4) = v187;
        sub_1002DB898(&_mh_execute_header, v190, v191, "Not posting user notification for handoff eligible conversation %s because there's already a local non-waiting conversation");
        sub_100009B7C(v183);
        sub_100005F40(v183);
        sub_100008AE8();
      }

      goto LABEL_86;
    }

LABEL_21:
    sub_100027E68();

    v51 = [objc_allocWithZone(FTNUServiceNames) init];
    v52 = [v211 avMode];
    v53 = &selRef_faceTimeVideoServiceName;
    if (v52 != 2)
    {
      v53 = &selRef_faceTimeAudioServiceName;
    }

    v54 = [v51 *v53];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v58 = [objc_allocWithZone(UNMutableNotificationContent) init];
    v209 = "andoff-eligibility";
    sub_100022CB0();
    v59 = String._bridgeToObjectiveC()();
    [v58 setCategoryIdentifier:v59];

    v61 = *(v210 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeConversationName);
    v60 = *(v210 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeConversationName + 8);

    v61(v211);

    sub_10000D6CC();
    String._bridgeToObjectiveC()();
    sub_100007770();

    v212 = v58;
    [v58 setTitle:v60];

    v62 = sub_1002DB3E8(v213, &selRef_localizedDeviceCategory);
    if (v63)
    {
      v64 = v62;
      v65 = v63;
      v218[0] = v55;
      v218[1] = v57;

      v66 = v218;
      v67._countAndFlagsBits = 2108704;
      v67._object = 0xE300000000000000;
      String.append(_:)(v67);
      v68._countAndFlagsBits = v64;
      v68._object = v65;
      String.append(_:)(v68);

      String._bridgeToObjectiveC()();
      sub_100005EC4();
    }

    else
    {
      sub_100007764();
      v66 = String._bridgeToObjectiveC()();
    }

    [v212 setSubtitle:v66];

    v69 = String._bridgeToObjectiveC()();
    v70 = TUStringKeyForProduct();

    if (v70)
    {

      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      v74 = sub_10031E958(v71, v73);

      sub_100006B30();
      String._bridgeToObjectiveC()();
      sub_100005F0C();

      [v212 setBody:v74];

      v75 = sub_1002CECB8();
      sub_1004554A0(v75, v76, v212);
      AnyHashable.init<A>(_:)();
      v77 = [objc_opt_self() tu_conversationHandoffDynamicIdentifierForEligibility:v213];
      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v79;

      v217 = &type metadata for String;
      *&v216 = v78;
      *(&v216 + 1) = v45;
      v80 = [v212 userInfo];
      v81 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (&type metadata for String)
      {
        sub_10003EBF0(&v216, v215);
        swift_isUniquelyReferenced_nonNull_native();
        v214 = v81;
        sub_100378C74(v215, v218);
        sub_100006780(v218);
      }

      else
      {
        sub_100009A04(&v216, &unk_1006A2D10, &unk_10057D940);
        sub_1000067D4();
        if (v82)
        {
          sub_100005F0C();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v214 = v81;
          v45 = v81[3];
          sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
          _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v45);
          sub_100006780(v81[6] + 40 * v80);
          sub_10003EBF0((v81[7] + 32 * v80), v215);
          sub_100006B30();
          _NativeDictionary._delete(at:)();
        }

        else
        {
          memset(v215, 0, sizeof(v215));
        }

        sub_100006780(v218);
        sub_100009A04(v215, &unk_1006A2D10, &unk_10057D940);
      }

      Dictionary._bridgeToObjectiveC()();
      sub_100005F0C();

      [v212 setUserInfo:v80];

      [v212 setInterruptionLevel:0];
      v86 = [v211 remoteMembers];
      sub_10000D310();
      sub_100006AF0(v87, v88, v89);
      sub_10000D310();
      sub_10000CE3C(v90, v91, v92);
      v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v205 = v51;
      if ((v20 & 0xC000000000000001) == 0)
      {
        v118 = *(v20 + 32);
        v119 = ((1 << v118) + 63) >> 6;
        if ((v118 & 0x3Fu) > 0xD)
        {

          if (!swift_stdlib_isStackAllocationSafe())
          {
            swift_slowAlloc();

            v192 = sub_100007764();
            v18 = sub_1002DB174(v192, v193, v20, v194, 0);
            swift_bridgeObjectRelease_n();
            sub_100008AE8();
LABEL_59:
            v117 = v212;
LABEL_80:
            sub_1002CAAC4(v18);
            sub_10000667C();

            sub_100420F48(v20, v117);
            v146 = [objc_opt_self() sharedInstance];
            v147 = [v146 conversationManager];

            v43 = v213;
            v148 = [v147 joinRequestForApplicableConversationWithHandoffEligibility:v213];

            v45 = v211;
            v149 = v207;
            v150 = v206;
            if (v148)
            {
              v151 = [v148 URL];
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              URL._bridgeToObjectiveC()(v152);
              v154 = v153;
              (*(v149 + 8))(v150, v202);
              [v117 setDefaultActionURL:v154];
            }

            sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
            v18 = v117;
            v155 = sub_100022CB0();
            v20 = sub_10044F628(v155, v156, v18, 0);
            if (qword_1006A0B70 == -1)
            {
              goto LABEL_83;
            }

            goto LABEL_95;
          }
        }

        v195[1] = v195;
        __chkstk_darwin(v93);
        v196 = v119;
        v197 = (v195 - ((8 * v119 + 15) & 0x3FFFFFFFFFFFFFF0));
        sub_100396044(0, v119, v197);
        v198 = 0;
        v120 = 0;
        v43 = (v20 + 56);
        sub_100007990();
        v18 = v122 & v121;
        v124 = (v123 + 63) >> 6;
        v125 = &selRef_fetchCurrentProcessStatesForBundleIdentifier_;
        v204 = v20;
        while (v18)
        {
          v126 = __clz(__rbit64(v18));
          v18 &= v18 - 1;
          v127 = v126 | (v120 << 6);
          v128 = &selRef_unsignedIntValue;
LABEL_69:
          v133 = *(v20 + 48);
          v199 = v127;
          v134 = *(v133 + 8 * v127);
          v135 = [v134 v125[120]];
          v136 = v125;
          v137 = [v135 v128[160]];

          v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v138 = v128;
          v140 = v139;

          v141 = HIBYTE(v140) & 0xF;
          if ((v140 & 0x2000000000000000) == 0)
          {
            v141 = v45 & 0xFFFFFFFFFFFFLL;
          }

          if (v141)
          {
            v142 = [v134 v136[120]];
            v45 = [v142 v138[160]];

            v125 = v136;
            if (!v45)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v45 = String._bridgeToObjectiveC()();
            }

            v143 = [v45 destinationIdIsTemporary];

            v20 = v204;
            if ((v143 & 1) == 0)
            {
              *(v197 + ((v199 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v199;
              if (__OFADD__(v198++, 1))
              {
                __break(1u);
              }
            }
          }

          else
          {

            v125 = v136;
            v20 = v204;
          }
        }

        v129 = v120;
        v117 = v212;
        v128 = &selRef_unsignedIntValue;
        while (1)
        {
          v120 = v129 + 1;
          if (__OFADD__(v129, 1))
          {
            break;
          }

          if (v120 >= v124)
          {
            sub_1003EB35C(v197, v196, v198, v20);
            v18 = v145;
            goto LABEL_80;
          }

          ++v129;
          if (v43[v120])
          {
            sub_100007C8C();
            v18 = v131 & v130;
            v127 = v132 | (v120 << 6);
            goto LABEL_69;
          }
        }

LABEL_94:
        __break(1u);
LABEL_95:
        sub_100008288();
        swift_once();
LABEL_83:
        v157 = type metadata accessor for Logger();
        sub_10000AF9C(v157, qword_1006BA6D0);
        v158 = v20;
        v159 = v45;
        v160 = Logger.logObject.getter();
        v161 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v160, v161))
        {
          v162 = sub_100007C08();
          v163 = sub_10000777C();
          v212 = sub_100005E84();
          v218[0] = v212;
          *v162 = 138412546;
          *(v162 + 4) = v158;
          *v163 = v158;
          *(v162 + 12) = 2080;
          v164 = v158;
          v165 = [v159 UUID];
          v166 = v18;
          v167 = v203;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          sub_10000A034();
          sub_10000EDB0(v168, v169, &protocol conformance descriptor for UUID);
          v170 = v201;
          v171 = dispatch thunk of CustomStringConvertible.description.getter();
          v173 = v172;
          v174 = v167;
          v18 = v166;
          (*(v200 + 8))(v174, v170);
          v175 = sub_10002741C(v171, v173, v218);

          *(v162 + 14) = v175;
          _os_log_impl(&_mh_execute_header, v160, v161, "Posting notification request %@ for handoff eligible conversation UUID %s nearby", v162, 0x16u);
          sub_100009A04(v163, &unk_1006A2630, &qword_10057CB40);
          sub_100005F40(v163);
          v176 = v212;
          sub_100009B7C(v212);
          v43 = v213;
          sub_100005F40(v176);
          sub_100008AE8();
        }

        [v158 setDestinations:6];
        sub_1002CE7A4(v158);

        goto LABEL_86;
      }

      v18 = &_swiftEmptySetSingleton;
      v218[0] = &_swiftEmptySetSingleton;
      v94 = __CocoaSet.makeIterator()();
      v43 = &selRef_fetchCurrentProcessStatesForBundleIdentifier_;
      while (1)
      {
        while (1)
        {
          v20 = v94;
          v95 = __CocoaSet.Iterator.next()();
          if (!v95)
          {

            goto LABEL_59;
          }

          *&v215[0] = v95;
          swift_dynamicCast();
          v96 = v216;
          v97 = [v216 handle];
          v45 = [v97 value];

          v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v100 = v99;

          v101 = HIBYTE(v100) & 0xF;
          if ((v100 & 0x2000000000000000) == 0)
          {
            v101 = v98 & 0xFFFFFFFFFFFFLL;
          }

          if (v101)
          {
            v102 = [v96 handle];
            v103 = [v102 value];

            if (!v103)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              String._bridgeToObjectiveC()();
              sub_100005EC4();
            }

            v104 = [v103 destinationIdIsTemporary];

            if ((v104 & 1) == 0)
            {
              break;
            }
          }
        }

        v105 = v216;
        v106 = *(v18 + 16);
        if (*(v18 + 24) <= v106)
        {
          sub_100396BE4(v106 + 1);
        }

        v18 = v218[0];
        v20 = v105;
        v107 = NSObject._rawHashValue(seed:)(*(v218[0] + 40));
        v108 = v18 + 56;
        v109 = -1 << *(v18 + 32);
        v110 = v107 & ~v109;
        v111 = v110 >> 6;
        if (((-1 << v110) & ~*(v18 + 56 + 8 * (v110 >> 6))) == 0)
        {
          break;
        }

        v112 = __clz(__rbit64((-1 << v110) & ~*(v18 + 56 + 8 * (v110 >> 6)))) | v110 & 0x7FFFFFFFFFFFFFC0;
LABEL_57:
        *(v108 + ((v112 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v112;
        *(*(v18 + 48) + 8 * v112) = v105;
        ++*(v18 + 16);
      }

      v113 = 0;
      v114 = (63 - v109) >> 6;
      while (++v111 != v114 || (v113 & 1) == 0)
      {
        v115 = v111 == v114;
        if (v111 == v114)
        {
          v111 = 0;
        }

        v113 |= v115;
        v116 = *(v108 + 8 * v111);
        if (v116 != -1)
        {
          v112 = __clz(__rbit64(~v116)) + (v111 << 6);
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    __break(1u);

    swift_bridgeObjectRelease_n();
    sub_100008AE8();
    __break(1u);
  }

  else
  {
    if (qword_1006A0B70 != -1)
    {
      sub_100008288();
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000075F0(v23, qword_1006BA6D0);
    v24 = v3;
    v213 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    v26 = sub_10000C56C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = sub_100005274();
      v29 = sub_100005E84();
      v219[0] = v29;
      *v28 = 136315138;
      v30 = [v24 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000A034();
      sub_10000EDB0(v31, v32, &protocol conformance descriptor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v36 = sub_10003A58C();
      v37(v36);
      v38 = sub_10002741C(v33, v35, v219);

      *(v28 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v213, v25, "Not posting handoff nearby notification for conversation %s because it did not have handoff eligibility", v28, 0xCu);
      sub_100009B7C(v29);
      sub_100008AE8();
      sub_100005F40(v28);

LABEL_86:
      sub_100005EDC();
      return;
    }

    sub_10000C56C();
    sub_100005EDC();
  }
}

uint64_t sub_1002D9CDC(id *a1)
{
  v1 = *a1;
  v2 = [*a1 handle];
  v3 = [v2 value];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    return 0;
  }

  v8 = [v1 handle];
  v9 = [v8 value];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = [v9 destinationIdIsTemporary];

  return v10 ^ 1;
}

void sub_1002D9DF8()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  type metadata accessor for UUID();
  sub_100007FEC();
  __chkstk_darwin(v4);
  sub_100007FDC();
  sub_100007654();
  if (qword_1006A0B70 != -1)
  {
    sub_100008288();
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000075F0(v5, qword_1006BA6D0);
  v6 = v3;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_100005274();
    v10 = sub_10000777C();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "Handoff eligibility changed for %@", v9, 0xCu);
    sub_100009A04(v10, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40(v10);
    sub_100005F40(v9);
  }

  v12 = [v6 handoffEligibility];
  if (v12)
  {

    sub_100005EDC();

    sub_1002D8860();
  }

  else
  {
    v14 = v6;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = sub_100005274();
      v18 = sub_100005E84();
      v32 = v18;
      *v17 = 136315138;
      v19 = [v14 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000A034();
      sub_10000EDB0(v20, v21, &protocol conformance descriptor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      v25 = sub_10000F2EC();
      v26(v25);
      v27 = sub_10002741C(v22, v24, &v32);

      *(v17 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v15, v16, "Removing handoff eligible nearby notification for conversation UUID %s", v17, 0xCu);
      sub_100009B7C(v18);
      sub_100005F40(v18);
      sub_100005F40(v17);
    }

    v28 = *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification);
    if (v28)
    {

      v29 = sub_100022CB0();
      v28(v29);
      v30 = sub_100006B30();
      sub_1000051F8(v30, v31);
    }

    sub_100005EDC();
  }
}

void sub_1002DA198()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for UUID();
  sub_100007FEC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100007FDC();
  v12 = v11 - v10;
  if (qword_1006A0B70 != -1)
  {
    sub_100008288();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000AF9C(v13, qword_1006BA6D0);
  v14 = v3;
  v15 = v5;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v37 = v1;
    v18 = sub_100007C08();
    v38 = swift_slowAlloc();
    *v18 = 136315394;
    v19 = [v14 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000A034();
    sub_10000EDB0(v20, v21, &protocol conformance descriptor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v17;
    v23 = *(v8 + 8);
    v23(v12, v6);
    v24 = sub_100005ED0();
    sub_10002741C(v24, v25, v26);
    sub_10000667C();

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v27 = [v15 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v23(v12, v6);
    v29 = sub_100006B30();
    sub_10002741C(v29, v30, v31);
    sub_100005F0C();

    *(v18 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v16, v36, "Replacing handoff eligible nearby notification from old conversation UUID %s to new conversation UUID %s", v18, 0x16u);
    swift_arrayDestroy();
    sub_100005F40(v38);
    v32 = v18;
    v1 = v37;
    sub_100005F40(v32);
  }

  v33 = *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification);
  if (v33)
  {
    v34 = *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification + 8);

    v35 = sub_100022CB0();
    v33(v35);
    sub_1000051F8(v33, v34);
  }

  sub_1002D8860();
  sub_100005EDC();
}

unint64_t sub_1002DA540(uint64_t a1)
{
  v1 = a1;
  sub_10000D5F8();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();

  return sub_1002DAA44(v1, v2);
}

void sub_1002DA5A4()
{
  sub_1000066C8();
  type metadata accessor for Locale();
  sub_10000EDB0(&qword_1006A3C30, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
  sub_10000C3E4();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_1000515FC();
  sub_100025DBC();
}

uint64_t sub_1002DA6A0()
{
  sub_10000D5F8();
  Hasher._combine(_:)(0);
  Hasher._finalize()();
  return sub_1002DAAA4();
}

uint64_t sub_1002DA6EC()
{
  sub_10000D5F8();
  String.hash(into:)();
  Hasher._finalize()();
  return sub_1002DAAA4();
}

unint64_t sub_1002DA750(uint64_t a1)
{
  v1 = a1;
  sub_10000D5F8();
  sub_100434BAC(v1);
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1002DAB30(v1, v2);
}

uint64_t sub_1002DA7D0()
{
  sub_10002F5E8();
  Hasher._combine(_:)(v0);
  Hasher._finalize()();
  sub_10004A0C4();
  return sub_1002DAADC();
}

unint64_t sub_1002DA824()
{
  sub_10002F5E8();
  type metadata accessor for UUID();
  sub_10000A034();
  sub_10000EDB0(v0, v1, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for SharePlayAvailabilityManager.CallAndHandle(0);
  NSObject.hash(into:)();
  Hasher._finalize()();
  v2 = sub_10004A0C4();

  return sub_1002DAD6C(v2, v3);
}

void sub_1002DA91C()
{
  v0 = sub_100016F64();
  NSObject._rawHashValue(seed:)(v0);
  sub_1000515FC();
  sub_100037318();
}

unint64_t sub_1002DA960(char a1)
{
  v3 = sub_10046B444(*(v1 + 40), a1 & 1);

  return sub_1002DAF04(a1 & 1, v3);
}

unint64_t sub_1002DA9A4()
{
  sub_10002F5E8();
  type metadata accessor for CFString(0);
  sub_10000EDB0(&qword_1006A3BF8, type metadata accessor for CFString, &unk_10057C800);
  _CFObject.hash(into:)();
  Hasher._finalize()();
  v0 = sub_10004A0C4();

  return sub_1002DB048(v0, v1);
}

unint64_t sub_1002DAA44(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t sub_1002DAADC()
{
  sub_100049FB4();
  while (((v5 << v2) & *(v3 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0 && *(*(v0 + 48) + 8 * v2) != v1)
  {
    v2 = (v2 + 1) & v4;
  }

  return sub_10003EB44(v2);
}

unint64_t sub_1002DAB30(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEA00000000004D56;
      v8 = 0x4C746C7561666564;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD00000000000001ALL;
          v7 = 0x8000000100561300;
          break;
        case 2:
          v8 = 0xD000000000000015;
          v7 = 0x8000000100561320;
          break;
        case 3:
          v8 = 0xD000000000000018;
          v7 = 0x8000000100561340;
          break;
        case 4:
          v8 = 0xD000000000000010;
          v7 = 0x8000000100561360;
          break;
        case 5:
          v8 = 0xD000000000000011;
          v7 = 0x8000000100561380;
          break;
        default:
          break;
      }

      v9 = 0x4C746C7561666564;
      v10 = 0xEA00000000004D56;
      switch(a1)
      {
        case 1:
          v9 = 0xD00000000000001ALL;
          v10 = 0x8000000100561300;
          break;
        case 2:
          v9 = 0xD000000000000015;
          v10 = 0x8000000100561320;
          break;
        case 3:
          v9 = 0xD000000000000018;
          v10 = 0x8000000100561340;
          break;
        case 4:
          v9 = 0xD000000000000010;
          v10 = 0x8000000100561360;
          break;
        case 5:
          v9 = 0xD000000000000011;
          v10 = 0x8000000100561380;
          break;
        default:
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_1002DAD6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for SharePlayAvailabilityManager.CallAndHandle(0);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v3 + 32);
  v10 = a2 & ~v9;
  if ((*(v3 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    while (1)
    {
      sub_1002DB7F0(*(v3 + 48) + v12 * v10, v8, type metadata accessor for SharePlayAvailabilityManager.CallAndHandle);
      if (static UUID.== infix(_:_:)())
      {
        sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
        if (static NSObject.== infix(_:_:)())
        {
          break;
        }
      }

      sub_1002DB508(v8);
      v10 = (v10 + 1) & v11;
      if (((*(v3 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return v10;
      }
    }

    sub_1002DB508(v8);
  }

  return v10;
}

unint64_t sub_1002DAF04(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x656E6F6850;
    }

    else
    {
      v6 = 0x656D695465636146;
    }

    if (a1)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE800000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x656E6F6850 : 0x656D695465636146;
      v9 = *(*(v2 + 48) + v4) ? 0xE500000000000000 : 0xE800000000000000;
      if (v8 == v6 && v9 == v7)
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

unint64_t sub_1002DB048(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    v7 = *(*(v3 + 48) + 8 * i);
    type metadata accessor for CFString(0);
    sub_10000EDB0(&qword_1006A3BF8, type metadata accessor for CFString, &unk_10057C800);
    v8 = v7;
    v9 = static _CFObject.== infix(_:_:)();

    if (v9)
    {
      break;
    }
  }

  return i;
}

void *sub_1002DB174(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_10039BA6C(v9, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

void sub_1002DB204(uint64_t a1, void *a2)
{
  sub_100006AF0(0, &qword_1006A2680, TUConversationInvitationPreference_ptr);
  sub_10000CE3C(&qword_1006A2688, &qword_1006A2680, TUConversationInvitationPreference_ptr);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [a2 setInvitationPreferences:isa];
}

uint64_t sub_1002DB2BC(void *a1)
{
  v2 = [a1 linkName];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1002DB32C(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setActiveParticipantHandles:isa];
}

id sub_1002DB398(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 faceTimeAppViewLinkDetailsURLForPseudonym:v4];

  return v5;
}

uint64_t sub_1002DB3E8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    sub_10001E3EC();
  }

  return sub_100006B30();
}

Swift::Int sub_1002DB440(uint64_t a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

uint64_t sub_1002DB484(uint64_t a1, uint64_t a2)
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

uint64_t sub_1002DB508(uint64_t a1)
{
  v2 = type metadata accessor for SharePlayAvailabilityManager.CallAndHandle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002DB564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayAvailabilityManager.CallAndHandle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002DB5C8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_1002DB698()
{
  type metadata accessor for Notification();
  sub_100008070();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return _swift_deallocObject(v0);
}

uint64_t sub_1002DB744(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for Notification() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_1002DB7F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100008070();
  v4 = sub_100006B30();
  v5(v4);
  return a2;
}

void sub_1002DB898(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1002DB8B8(uint64_t a1)
{

  return sub_100022DDC(a1);
}

id sub_1002DB8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1003890FC(a1, a2, a3, a4, 0);
}

uint64_t sub_1002DB8F0(void *a1)
{
  v57 = type metadata accessor for URL();
  sub_100007FEC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000F4E8();
  v49 = v5;
  __chkstk_darwin(v6);
  v8 = &v45 - v7;
  v9 = type metadata accessor for InterventionRequest();
  sub_100007FEC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10000F4E8();
  v55 = v13;
  v15 = __chkstk_darwin(v14);
  v17 = &v45 - v16;
  __chkstk_darwin(v15);
  v19 = &v45 - v18;
  v21 = a1[3];
  v20 = a1[4];
  v22 = sub_100009B14(a1, v21);
  v23 = *(v20 + 32);
  v50 = v22;
  v51 = v23;
  v53 = v20;
  v54 = v21;
  v52 = v20 + 32;
  v23(v21, v20);
  if (qword_1006A0B88 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000AF9C(v24, qword_1006BA718);
  v25 = *(v11 + 16);
  v56 = v19;
  v25(v17, v19, v9);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v45 = v28;
    v48 = swift_slowAlloc();
    v58 = v48;
    *v28 = 136315138;
    v47 = v27;
    InterventionRequest.url.getter();
    v29 = *(v3 + 16);
    v46 = v26;
    v29(v49, v8, v57);
    sub_100007624();
    v30 = String.init<A>(reflecting:)();
    v32 = v31;
    v33 = sub_100007624();
    v34(v33);
    v35 = sub_10000A04C();
    v21(v35);
    v36 = sub_10002741C(v30, v32, &v58);

    v37 = v45;
    *(v45 + 1) = v36;
    v38 = v46;
    _os_log_impl(&_mh_execute_header, v46, v47, "Presenting intervention %s", v37, 0xCu);
    sub_100009B7C(v48);
  }

  else
  {

    v39 = sub_10000A04C();
    v21(v39);
  }

  v40 = v55;
  v51(v54, v53);
  InterventionRequest.url.getter();
  (v21)(v40, v9);
  URL._bridgeToObjectiveC()(v41);
  v43 = v42;
  (*(v3 + 8))(v8, v57);
  TUOpenURL();

  return (v21)(v56, v9);
}

id sub_1002DBCFC()
{
  v0 = [objc_allocWithZone(CSDInterventionProvider) init];
  v1 = type metadata accessor for DialingInterventionController();
  v2 = objc_allocWithZone(v1);
  v6[3] = sub_100006AF0(0, &qword_1006A3CD8, off_100616640);
  v6[4] = &off_100624FF8;
  v6[0] = v0;
  sub_100009AB0(v6, v2 + OBJC_IVAR___CSDDialingInterventionController_interventionProvider);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, "init");
  sub_100009B7C(v6);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

id DialingInterventionController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DialingInterventionController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_1002DBEE0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100620550, v2);

  return v3 != 0;
}

BOOL sub_1002DBF58@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002DBEE0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002DBF8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002DBF28();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1002DBFB4@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for SoundDescriptor(0);
  __chkstk_darwin(v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([a1 isPTT] & 1) != 0 || (objc_msgSend(a1, "status") != 6 ? (v12 = (*&a2 & 0x10000) == 0) : (v12 = 1), v12))
  {
    v13 = type metadata accessor for SoundDescriptorAction(0);

    return sub_10000AF74(a3, 1, 1, v13);
  }

  else
  {
    v15 = [a1 isUplinkMuted];
    v16 = [a1 provider];
    v17 = [a1 isVideo];
    v18 = [a1 soundRegion];
    v19 = *(v9 + 32);
    v20 = type metadata accessor for UUID();
    sub_10000AF74(&v11[v19], 1, 1, v20);
    v21 = 10;
    if (!v15)
    {
      v21 = 11;
    }

    *v11 = v21;
    *(v11 + 1) = v16;
    v11[16] = v17;
    *(v11 + 3) = v18;
    v11[*(v9 + 36)] = 0;
    UUID.init()();
    type metadata accessor for UUID();
    sub_10000AF74(v8, 0, 1, v20);
    sub_100298328(v8, &v11[*(v9 + 32)]);
    sub_100044148(v11, a3, type metadata accessor for SoundDescriptor);
    v22 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
    sub_10000AF74(a3, 0, 2, v22);
    v23 = type metadata accessor for SoundDescriptorAction(0);
    sub_10000AF74(a3, 0, 1, v23);
    return sub_10004426C(v11, type metadata accessor for SoundDescriptor);
  }
}

uint64_t sub_1002DC264@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for SoundDescriptor(0);
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([*(v3 + 32) sharePlaySFXViaInCallServiceEnabled] & 1) == 0 && (a2 & 0x40000) != 0)
  {
    v15 = [a1 provider];
    v16 = [a1 isVideo];
    v17 = [a1 soundRegion];
    v18 = *(v10 + 32);
    v19 = type metadata accessor for UUID();
    sub_10000AF74(&v12[v18], 1, 1, v19);
    *v12 = 13;
    *(v12 + 1) = v15;
    v12[16] = v16;
    *(v12 + 3) = v17;
    v12[*(v10 + 36)] = 0;
    UUID.init()();
    sub_10000AF74(v9, 0, 1, v19);
    sub_100298328(v9, &v12[v18]);
    sub_100044148(v12, a3, type metadata accessor for SoundDescriptor);
    v20 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
    sub_10000AF74(a3, 0, 2, v20);
    v21 = type metadata accessor for SoundDescriptorAction(0);
    sub_10000AF74(a3, 0, 1, v21);
    return sub_10004426C(v12, type metadata accessor for SoundDescriptor);
  }

  else
  {
    v13 = type metadata accessor for SoundDescriptorAction(0);

    return sub_10000AF74(a3, 1, 1, v13);
  }
}

uint64_t sub_1002DC4D0@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  if ((a1 & 0x80000) != 0)
  {
    sub_1002DCC50();
  }

  v3 = type metadata accessor for SoundDescriptorAction(0);

  return sub_10000AF74(a2, 1, 1, v3);
}

uint64_t sub_1002DC520@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for SoundDescriptor(0);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x100000) != 0)
  {
    v14 = [a1 provider];
    v15 = [a1 isVideo];
    v16 = [a1 soundRegion];
    v17 = *(v9 + 32);
    v18 = type metadata accessor for UUID();
    sub_10000AF74(&v11[v17], 1, 1, v18);
    *v11 = 15;
    *(v11 + 1) = v14;
    v11[16] = v15;
    *(v11 + 3) = v16;
    v11[*(v9 + 36)] = 0;
    UUID.init()();
    sub_10000AF74(v8, 0, 1, v18);
    sub_100298328(v8, &v11[v17]);
    sub_100044148(v11, a3, type metadata accessor for SoundDescriptor);
    v19 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
    sub_10000AF74(a3, 0, 2, v19);
    v20 = type metadata accessor for SoundDescriptorAction(0);
    sub_10000AF74(a3, 0, 1, v20);
    return sub_10004426C(v11, type metadata accessor for SoundDescriptor);
  }

  else
  {
    v12 = type metadata accessor for SoundDescriptorAction(0);

    return sub_10000AF74(a3, 1, 1, v12);
  }
}

uint64_t sub_1002DC778@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for SoundDescriptor(0);
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([*(v3 + 32) sharePlaySFXViaInCallServiceEnabled] & 1) == 0 && (a2 & 0x200000) != 0)
  {
    v15 = [a1 provider];
    v16 = [a1 isVideo];
    v17 = [a1 soundRegion];
    v18 = *(v10 + 32);
    v19 = type metadata accessor for UUID();
    sub_10000AF74(&v12[v18], 1, 1, v19);
    *v12 = 16;
    *(v12 + 1) = v15;
    v12[16] = v16;
    *(v12 + 3) = v17;
    v12[*(v10 + 36)] = 0;
    UUID.init()();
    sub_10000AF74(v9, 0, 1, v19);
    sub_100298328(v9, &v12[v18]);
    sub_100044148(v12, a3, type metadata accessor for SoundDescriptor);
    v20 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
    sub_10000AF74(a3, 0, 2, v20);
    v21 = type metadata accessor for SoundDescriptorAction(0);
    sub_10000AF74(a3, 0, 1, v21);
    return sub_10004426C(v12, type metadata accessor for SoundDescriptor);
  }

  else
  {
    v13 = type metadata accessor for SoundDescriptorAction(0);

    return sub_10000AF74(a3, 1, 1, v13);
  }
}

uint64_t sub_1002DC9E4@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for SoundDescriptor(0);
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([*(v3 + 32) sharePlaySFXViaInCallServiceEnabled] & 1) == 0 && (a2 & 0x400000) != 0)
  {
    v15 = [a1 provider];
    v16 = [a1 isVideo];
    v17 = [a1 soundRegion];
    v18 = *(v10 + 32);
    v19 = type metadata accessor for UUID();
    sub_10000AF74(&v12[v18], 1, 1, v19);
    *v12 = 17;
    *(v12 + 1) = v15;
    v12[16] = v16;
    *(v12 + 3) = v17;
    v12[*(v10 + 36)] = 0;
    UUID.init()();
    sub_10000AF74(v9, 0, 1, v19);
    sub_100298328(v9, &v12[v18]);
    sub_100044148(v12, a3, type metadata accessor for SoundDescriptor);
    v20 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
    sub_10000AF74(a3, 0, 2, v20);
    v21 = type metadata accessor for SoundDescriptorAction(0);
    sub_10000AF74(a3, 0, 1, v21);
    return sub_10004426C(v12, type metadata accessor for SoundDescriptor);
  }

  else
  {
    v13 = type metadata accessor for SoundDescriptorAction(0);

    return sub_10000AF74(a3, 1, 1, v13);
  }
}

void sub_1002DCC50()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v42 - v8;
  __chkstk_darwin(v7);
  v11 = v42 - v10;
  swift_beginAccess();
  v12 = sub_1002CB6C8(*(v1 + 48));
  swift_endAccess();
  if (v12)
  {

    goto LABEL_12;
  }

  v13 = TUBundle();
  if (!v13)
  {
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = sub_1003A14F4(0x6A2D656D2D74656CLL, 0xEB000000006E696FLL, 6709603, 0xE300000000000000, v13);

  if (v15)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v11, v9, v2);
    v16 = objc_opt_self();
    v17 = [v16 sharedInstance];
    v43[0] = 0;
    v18 = [v17 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeDefault options:2 error:v43];

    if (v18)
    {
      v19 = v43[0];
      v20 = [v16 sharedInstance];
      v43[0] = 0;
      v21 = [v20 setActive:1 error:v43];

      v22 = v43[0];
      if (v21)
      {
        (*(v3 + 16))(v6, v11, v2);
        v23 = objc_allocWithZone(AVAudioPlayer);
        v24 = v22;
        v37 = sub_10039F99C(v6);
        v38 = swift_beginAccess();
        if (v37)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v42[0] = *(v1 + 48);
          sub_100378EF0(v37);
          *(v1 + 48) = v42[0];
        }

        else
        {
        }

        swift_endAccess();
        swift_beginAccess();
        v39 = sub_1002CB6C8(*(v1 + 48));
        if (v39)
        {
          v40 = v39;
          swift_endAccess();
          LODWORD(v41) = 1.0;
          [v40 setVolume:v41];
        }

        else
        {
          swift_endAccess();
        }

        goto LABEL_11;
      }

      v27 = v43[0];
      v26 = _convertNSErrorToError(_:)();
    }

    else
    {
      v25 = v43[0];
      v26 = _convertNSErrorToError(_:)();
    }

    v28 = swift_willThrow();
    v29 = sub_100010B20(v28);
    v30 = static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_10057D6A0;
    *(v31 + 56) = &type metadata for String;
    v32 = sub_100009D88();
    *(v31 + 64) = v32;
    *(v31 + 32) = 0x6A2D656D2D74656CLL;
    *(v31 + 40) = 0xEB000000006E696FLL;
    v43[0] = v26;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v33 = String.init<A>(reflecting:)();
    *(v31 + 96) = &type metadata for String;
    *(v31 + 104) = v32;
    *(v31 + 72) = v33;
    *(v31 + 80) = v34;
    os_log(_:dso:log:type:_:)("Error creating audio player for %@ sound: %@", 44, 2, &_mh_execute_header, v29, v30, v31);

LABEL_11:
    (*(v3 + 8))(v11, v2);
  }

LABEL_12:
  swift_beginAccess();
  v35 = sub_1002CB6C8(*(v1 + 48));
  if (v35)
  {
    v36 = v35;
    swift_endAccess();
    [v36 play];
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_1002DD174()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1002DD1AC()
{
  sub_1002DD174();

  return _swift_deallocClassInstance(v0, 56, 7);
}

_BYTE *storeEnumTagSinglePayload for SoundDescriptorActionResolver.Sound(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
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
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1002DD2B4()
{
  result = qword_1006A3DB0;
  if (!qword_1006A3DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3DB0);
  }

  return result;
}

unint64_t sub_1002DD344()
{
  result = qword_1006A2660;
  if (!qword_1006A2660)
  {
    sub_100006AF0(255, &qword_1006A3DE0, TUConversationMember_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2660);
  }

  return result;
}

uint64_t sub_1002DD3AC()
{
  v1 = type metadata accessor for UUID();
  __chkstk_darwin(v1 - 8);
  v2 = [v0 accountUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = [v0 localizedServiceName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return CellularService.init(_:_:)();
}

char *sub_1002DD48C()
{
  v0 = type metadata accessor for NSFastEnumerationIterator();
  v22 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSOrderedSet.makeIterator()();
  v25 = sub_1002DE3F0(&qword_1006A3ED0, 255, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
  v26 = _swiftEmptyArrayStorage;
  v23 = v2;
  v24 = v0;
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v31)
    {
      break;
    }

    sub_10003EBF0(&v30, v29);
    v3 = type metadata accessor for CellularService();
    v27 = &v21;
    v4 = *(v3 - 8);
    v5 = *(v4 + 64);
    __chkstk_darwin(v3);
    v6 = sub_10026D814(&qword_1006A3ED8, &unk_10057EC98);
    __chkstk_darwin(v6 - 8);
    v8 = &v21 - v7;
    sub_100006A94(v29, v28);
    sub_1002DE1F8();
    if (swift_dynamicCast())
    {
      v9 = v32;
      sub_1002DD3AC();

      v10 = v8;
      v11 = 0;
    }

    else
    {
      v10 = v8;
      v11 = 1;
    }

    sub_10000AF74(v10, v11, 1, v3);
    sub_100009B7C(v29);
    if (sub_100015468(v8, 1, v3) == 1)
    {
      sub_1000099A4(v8, &qword_1006A3ED8, &unk_10057EC98);
    }

    else
    {
      v12 = *(v4 + 32);
      v13 = v12(&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v3);
      __chkstk_darwin(v13);
      v14 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
      v12(v14, v14, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100470198(0, *(v26 + 2) + 1, 1, v26);
        v26 = v18;
      }

      v16 = *(v26 + 2);
      v15 = *(v26 + 3);
      if (v16 >= v15 >> 1)
      {
        sub_100470198(v15 > 1, v16 + 1, 1, v26);
        v26 = v19;
      }

      v17 = v26;
      *(v26 + 2) = v16 + 1;
      v12(&v17[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16], v14, v3);
      v2 = v23;
      v0 = v24;
    }
  }

  (*(v22 + 8))(v2, v0);
  return v26;
}

uint64_t sub_1002DD874(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = [a1 URL];
  if (v9)
  {
    v10 = v9;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v8, v6, v2);
    URL._bridgeToObjectiveC()(v11);
    v13 = v12;
    TUOpenURL();

    return (*(v3 + 8))(v8, v2);
  }

  else
  {
    sub_1002DE23C();
    swift_allocError();
    *v15 = 0xD000000000000040;
    v15[1] = 0x80000001005667D0;
    return swift_willThrow();
  }
}

char *sub_1002DDA04()
{
  v3[3] = &type metadata for URLDialer;
  v3[4] = &off_100625358;
  v0 = objc_allocWithZone(type metadata accessor for ConversationDialingServer());
  sub_10001BDB8(v3, &type metadata for URLDialer);
  v1 = sub_1002DE290(v0);
  sub_100009B7C(v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v1;
}

uint64_t sub_1002DDAB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 56) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  v6 = type metadata accessor for UUID();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1002DDB78, 0, 0);
}

uint64_t sub_1002DDB78()
{
  v1 = *(v0 + 56);
  v2 = sub_1002DE4D4();
  [v2 setShowUIPrompt:(v1 & 1) == 0];
  sub_10026D814(&qword_1006A3ED8, &unk_10057EC98);
  v3 = swift_task_alloc();
  StartCellularConversationAction.cellularService.getter();
  v4 = type metadata accessor for CellularService();
  if (sub_100015468(v3, 1, v4) == 1)
  {
    sub_1000099A4(v3, &qword_1006A3ED8, &unk_10057EC98);

    isa = 0;
  }

  else
  {
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    v8 = *(v0 + 32);
    CellularService.id.getter();
    (*(*(v4 - 8) + 8))(v3, v4);

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v6, v8);
  }

  [v2 setLocalSenderIdentityAccountUUID:isa];

  if (qword_1006A0B80 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000AF9C(v9, qword_1006BA700);
  v10 = v2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 56);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412546;
    *(v14 + 4) = v10;
    *v15 = v10;
    *(v14 + 12) = 1024;
    *(v14 + 14) = v13;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "Asked to dial %@ %{BOOL}d", v14, 0x12u);
    sub_1000099A4(v15, &unk_1006A2630, &qword_10057CB40);
  }

  v17 = *(v0 + 24);

  sub_100009B14((v17 + OBJC_IVAR____TtC13callservicesd25ConversationDialingServer_dialer), *(v17 + OBJC_IVAR____TtC13callservicesd25ConversationDialingServer_dialer + 24));
  sub_1002DD874(v10);

  v18 = *(v0 + 8);

  return v18();
}

id sub_1002DDEAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationDialingServer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002DDF60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1002DE008;

  return sub_1002DDAB4(a1, v8, v9, a4);
}

uint64_t sub_1002DE008()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_1002DE120()
{
  v1 = [*(v0 + 16) telephonyProvider];
  v2 = [v1 prioritizedSenderIdentities];

  v3 = sub_1002DD48C();
  return v3;
}

uint64_t sub_1002DE19C()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

unint64_t sub_1002DE1F8()
{
  result = qword_1006A2B98;
  if (!qword_1006A2B98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A2B98);
  }

  return result;
}

unint64_t sub_1002DE23C()
{
  result = qword_1006A3EE0;
  if (!qword_1006A3EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3EE0);
  }

  return result;
}

char *sub_1002DE290(char *a1)
{
  v9[3] = &type metadata for URLDialer;
  v9[4] = &off_100625358;
  *&a1[OBJC_IVAR____TtC13callservicesd25ConversationDialingServer_dialingService] = 0;
  sub_100009AB0(v9, &a1[OBJC_IVAR____TtC13callservicesd25ConversationDialingServer_dialer]);
  type metadata accessor for AccountProvider();
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_allocWithZone(TUCallProviderManager) init];
  *&a1[OBJC_IVAR____TtC13callservicesd25ConversationDialingServer_accountProvider] = v2;
  v3 = type metadata accessor for ConversationDialingServer();
  v8.receiver = a1;
  v8.super_class = v3;
  v4 = objc_msgSendSuper2(&v8, "init");
  sub_1002DE3F0(&qword_1006A3EE8, v5, type metadata accessor for ConversationDialingServer, &unk_10057EC68);
  type metadata accessor for ConversationDialingService();
  swift_allocObject();
  v6 = v4;
  *&v6[OBJC_IVAR____TtC13callservicesd25ConversationDialingServer_dialingService] = ConversationDialingService.init(server:)();

  ConversationDialingService.start()();

  sub_100009B7C(v9);
  return v6;
}

uint64_t sub_1002DE3F0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1002DE448(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002DE488(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id sub_1002DE4D4()
{
  type metadata accessor for UUID();
  sub_100007FEC();
  v44 = v1;
  v45 = v0;
  __chkstk_darwin(v0);
  v43 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = [objc_allocWithZone(TUCallProviderManager) init];
  v4 = [v3 telephonyProvider];

  v5 = [objc_allocWithZone(TUDialRequest) initWithProvider:v4];
  v52 = v5;

  [v5 setPreferDefaultApp:0];
  v50 = type metadata accessor for Handle();
  sub_100007FEC();
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  v51 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v42 - v51;
  StartCellularConversationAction.handle.getter();
  v48 = sub_1002DE970();
  v12 = type metadata accessor for Handle.Kind();
  sub_100007FEC();
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v17);
  v49 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_10000A6A8();
  sub_1002E5170();
  v47 = *(v14 + 8);
  v47(v4, v12);
  Handle.value.getter();
  v18 = sub_10000A078();
  v20 = sub_100389560(v18, v19);
  v21 = Handle.displayName.getter();
  sub_1002DE9B4(v21, v22, v20);
  v23 = v7 + 8;
  v24 = *(v7 + 8);
  v46 = v23;
  v25 = v50;
  v24(v11, v50);
  v26 = v52;
  [v52 setHandle:v20];

  __chkstk_darwin([v26 setOriginatingUIType:45]);
  v27 = &v42 - v51;
  started = StartCellularConversationAction.handle.getter();
  __chkstk_darwin(started);
  sub_10000A6A8();
  sub_1002E5170();
  v47(v20, v12);
  Handle.value.getter();
  v29 = sub_10000A078();
  v31 = sub_100389560(v29, v30);
  v32 = Handle.displayName.getter();
  sub_1002DE9B4(v32, v33, v31);
  v24(v27, v25);
  v34 = v52;
  [v52 setHandle:v31];

  v35 = sub_10026D814(&qword_1006A3ED8, &unk_10057EC98);
  __chkstk_darwin(v35 - 8);
  v37 = &v42 - v36;
  StartCellularConversationAction.cellularService.getter();
  v38 = type metadata accessor for CellularService();
  if (sub_100015468(v37, 1, v38) == 1)
  {
    sub_1002DEA18(v37);
    isa = 0;
  }

  else
  {
    v40 = v43;
    CellularService.id.getter();
    (*(*(v38 - 8) + 8))(v37, v38);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v44 + 8))(v40, v45);
  }

  [v34 setLocalSenderIdentityAccountUUID:isa];

  return v34;
}

unint64_t sub_1002DE970()
{
  result = qword_1006A2640;
  if (!qword_1006A2640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A2640);
  }

  return result;
}

void sub_1002DE9B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setSiriDisplayName:v4];
}

uint64_t sub_1002DEA18(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006A3ED8, &unk_10057EC98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002DEA80()
{
  type metadata accessor for AudioFileManager(0);
  v0 = swift_allocObject();
  result = sub_1002E1040();
  qword_1006BA1D8 = v0;
  return result;
}

uint64_t sub_1002DEAC0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1002DEAE4, 0, 0);
}

uint64_t sub_1002DEAE4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1002DEBF8;

  return sub_100289A80();
}

uint64_t sub_1002DEBF8()
{
  sub_100006810();
  v2 = *v1;
  sub_100007BC8();
  *v3 = v2;
  v4 = *v1;
  sub_100007BC8();
  *v5 = v4;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002DED24, 0, 0);
  }

  else
  {

    sub_100009EF4();

    return v6();
  }
}

uint64_t sub_1002DED24()
{
  sub_100006810();

  sub_100009EF4();

  return v0();
}

uint64_t sub_1002DED80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[23] = a2;
  v3[24] = a3;
  v3[22] = a1;
  sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v3[25] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return _swift_task_switch(sub_1002DEEF0, 0, 0);
}

uint64_t sub_1002DEEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v90 = v12;
  if (qword_1006A0AF8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  *(v12 + 280) = sub_10000AF9C(v13, qword_1006BA568);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v12 + 184);
  if (v16)
  {
    sub_100007BFC();
    v18 = swift_slowAlloc();
    *v18 = 134349056;
    *(v18 + 4) = *(v17 + 16);

    _os_log_impl(&_mh_execute_header, v14, v15, "Concatenating %{public}ld audio files", v18, 0xCu);
    sub_100005F64();
  }

  else
  {
  }

  v20 = *(v12 + 200);
  v19 = *(v12 + 208);
  sub_1002E8B38(*(v12 + 184), v20);
  if (sub_100015468(v20, 1, v19) == 1)
  {
    sub_1002E1320(*(v12 + 200));
  }

  else
  {
    v21 = *(v12 + 184);
    v22 = *(*(v12 + 216) + 32);
    v22(*(v12 + 272), *(v12 + 200), *(v12 + 208));
    if (*(v21 + 16) == 1)
    {
      v22(*(v12 + 176), *(v12 + 272), *(v12 + 208));
      sub_100018F34();

      sub_100009EF4();
      goto LABEL_20;
    }

    (*(*(v12 + 216) + 8))(*(v12 + 272), *(v12 + 208));
  }

  v23 = [objc_allocWithZone(AVMutableComposition) init];
  *(v12 + 288) = v23;
  *(v12 + 296) = AVMediaTypeAudio;
  v24 = [v23 addMutableTrackWithMediaType:? preferredTrackID:?];
  *(v12 + 304) = v24;
  if (!v24)
  {
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      *swift_slowAlloc() = 0;
      sub_100010254();
      _os_log_impl(v49, v50, v51, v52, v53, 2u);
      sub_100006868();
    }

    type metadata accessor for AudioFileManagerError(0);
    sub_10000A090();
    v56 = sub_1002E13EC(v54, v55);
    sub_1000068E0(v56);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_19;
  }

  v25 = *(v12 + 216);
  v26 = *(v12 + 184);
  timescale = kCMTimeZero.timescale;
  flags = kCMTimeZero.flags;
  *(v12 + 640) = timescale;
  *(v12 + 644) = flags;
  epoch = kCMTimeZero.epoch;
  *(v12 + 312) = kCMTimeZero.value;
  *(v12 + 320) = epoch;
  v30 = *(v26 + 16);
  *(v12 + 344) = epoch;
  *(v12 + 352) = 0;
  *(v12 + 652) = flags;
  *(v12 + 648) = timescale;
  *(v12 + 328) = v30;
  *(v12 + 336) = kCMTimeZero.value;
  if (v30)
  {
    v87 = *(v12 + 296);
    v32 = *(v12 + 256);
    v31 = *(v12 + 264);
    v33 = *(v12 + 208);
    v35 = *(v25 + 16);
    v34 = v25 + 16;
    v36 = (*(v34 + 64) + 32) & ~*(v34 + 64);
    *(v12 + 384) = v35;
    *(v12 + 392) = v34 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v35(v31, v26 + v36, v33);
    sub_1002E13A8();
    v37 = sub_100005F80();
    (v35)(v37);
    v38 = sub_1004630C0(v32);
    *(v12 + 400) = v38;
    *(v12 + 16) = v12;
    *(v12 + 56) = v12 + 144;
    *(v12 + 24) = sub_1002DF6BC;
    swift_continuation_init();
    *(v12 + 136) = sub_10026D814(&qword_1006A3FD0, &unk_10057ED80);
    sub_10000E630();
    *(v12 + 88) = 1107296256;
    sub_100018124(&unk_100625390);
    [v38 loadTracksWithMediaType:v87 completionHandler:?];
    sub_10000D3E8();

    return _swift_continuation_await(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
  }

  v59 = *(v12 + 288);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  objc_allocWithZone(AVAssetExportSession);
  v60 = sub_100469E18(v59);
  *(v12 + 360) = v60;
  if (!v60)
  {
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      sub_10000F590(&_mh_execute_header, v76, v77, "Failed to create an export session");
      sub_100005F40(v75);
    }

    v23 = *(v12 + 304);
    v78 = *(v12 + 288);

    type metadata accessor for AudioFileManagerError(0);
    sub_10000A090();
    v81 = sub_1002E13EC(v79, v80);
    sub_1000068E0(v81);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

LABEL_19:
    sub_10000F570(*(v12 + 272));

    sub_100009EF4();
LABEL_20:
    sub_10000D3E8();

    __asm { BRAA            X1, X16 }
  }

  sub_10000D704();
  v61 = sub_100015CEC();
  v62(v61);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v63, v64))
  {
    sub_100007BFC();
    v65 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v89 = v88;
    *v65 = 136446210;
    sub_1000082E0();
    sub_1002E13EC(v66, v67);
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v70 = v69;
    v71 = sub_100008B04();
    v64(v71);
    v72 = sub_10002741C(v68, v70, &v89);

    *(v65 + 4) = v72;
    sub_1002E14AC(&_mh_execute_header, "Exporting concatenated audio file to url %{public}s", v64);
    sub_100009B7C(v88);
    sub_100005F40(v88);
    sub_100005F64();
  }

  else
  {

    v82 = sub_100008B04();
    v64(v82);
  }

  *(v12 + 448) = v64;
  v83 = swift_task_alloc();
  *(v12 + 456) = v83;
  *v83 = v12;
  sub_1000150F8(v83);
  sub_10000C6F0(v84);
  sub_10000D3E8();

  return AVAssetExportSession.export(to:as:isolation:)();
}

uint64_t sub_1002DF6BC()
{
  sub_100006810();
  sub_100007BC8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 408) = v4;
  if (v4)
  {
    v5 = sub_1002E0714;
  }

  else
  {
    v5 = sub_1002DF7F0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002DF7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_10000C1D0();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[18];
  if (v25 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v25 & 0xC000000000000001) != 0)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v26 = *(v25 + 32);
    }

    v22[52] = v26;

    sub_10026D814(&qword_1006A3FD8, &unk_10057ED90);
    v22[53] = static AVPartialAsyncProperty<A>.duration.getter();
    v27 = swift_task_alloc();
    v22[54] = v27;
    *v27 = v22;
    v27[1] = sub_1002DFB34;
    sub_100017C90();

    return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
  }

  v37 = v22[48];
  v36 = v22[49];
  v38 = v22[33];
  v39 = v22[26];

  type metadata accessor for AudioFileManagerError(0);
  sub_10000A090();
  sub_1002E13EC(v40, v41);
  sub_100007694();
  v42 = swift_allocError();
  v44 = v43;
  v37(v43, v38, v39);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_10000F2F8();
  v45 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100005F94();
  if (sub_10000F96C())
  {
    sub_100007BFC();
    swift_slowAlloc();
    v44 = sub_10000681C();
    a11 = v44;
    *v39 = 136446210;
    v22[19] = v42;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v46 = String.init<A>(reflecting:)();
    v36 = v47;
    sub_10002741C(v46, v47, &a11);
    sub_100018F58();
    *(v39 + 4) = v37;
    sub_100010254();
    _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
    sub_100009B7C(v44);
    sub_100005F64();
    sub_100006868();
  }

  sub_10000A6C8();
  v53 = sub_10000FD84();
  v54(v53);
  sub_10000F570(v22[34]);

  sub_100009EF4();
  sub_100017C90();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1002DFB34()
{
  sub_100007BC8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 440) = v0;

  if (v0)
  {
    v4 = sub_1002E08AC;
  }

  else
  {
    v4 = sub_1002DFC90;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002DFC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v99 = v12;
  *(v12 + 160) = 0;
  v13 = *(v12 + 648);
  *(v12 + 480) = *(v12 + 640);
  v14 = *(v12 + 416);
  v16 = *(v12 + 336);
  v15 = *(v12 + 344);
  v17 = *(v12 + 320);
  v18 = *(v12 + 304);
  v19 = *(v12 + 520);
  v20 = *(v12 + 528);
  v21 = *(v12 + 532);
  v22 = *(v12 + 536);
  *(v12 + 472) = *(v12 + 312);
  *(v12 + 488) = v17;
  *(v12 + 496) = v19;
  *(v12 + 504) = v20;
  *(v12 + 508) = v21;
  *(v12 + 512) = v22;
  *(v12 + 544) = v16;
  *(v12 + 552) = v13;
  *(v12 + 560) = v15;
  v23 = [v18 insertTimeRange:v12 + 472 ofTrack:v14 atTime:v12 + 544 error:{v12 + 160, a7, a8}];
  v24 = *(v12 + 160);
  if ((v23 & 1) == 0)
  {
    v48 = *(v12 + 416);
    v49 = v24;
    v50 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10000F2F8();
    v51 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100005F94();
    if (sub_10000F96C())
    {
      sub_100007BFC();
      swift_slowAlloc();
      v48 = sub_10000681C();
      v98 = v48;
      *(v12 + 160) = 136446210;
      *(v12 + 152) = v50;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v52 = String.init<A>(reflecting:)();
      v20 = v53;
      sub_10002741C(v52, v53, &v98);
      sub_100018F58();
      *(v12 + 164) = v21;
      sub_100010254();
      _os_log_impl(v54, v55, v56, v57, v58, 0xCu);
      sub_100009B7C(v48);
      sub_100005F64();
      sub_100006868();
    }

    sub_10000A6C8();
    v59 = sub_10000FD84();
    v60(v59);
    goto LABEL_9;
  }

  v25 = *(v12 + 416);
  v27 = *(v12 + 336);
  v26 = *(v12 + 344);
  v95 = *(v12 + 264);
  v28 = *(v12 + 216);
  v93 = *(v12 + 400);
  v94 = *(v12 + 208);
  v29 = v24;
  *(v12 + 568) = v27;
  *(v12 + 576) = *(v12 + 648);
  *(v12 + 584) = v26;
  *(v12 + 592) = v19;
  *(v12 + 600) = v20;
  *(v12 + 604) = v21;
  *(v12 + 608) = v22;
  CMTimeAdd((v12 + 616), (v12 + 568), (v12 + 592));
  v30 = *(v12 + 616);
  v31 = *(v12 + 632);
  v32 = *(v12 + 624);

  (*(v28 + 8))(v95, v94);
  v33 = *(v12 + 352) + 1;
  *(v12 + 344) = v31;
  *(v12 + 352) = v33;
  *(v12 + 648) = v32;
  *(v12 + 336) = v30;
  if (v33 == *(v12 + 328))
  {
    v34 = *(v12 + 288);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    objc_allocWithZone(AVAssetExportSession);
    v35 = sub_100469E18(v34);
    *(v12 + 360) = v35;
    if (v35)
    {
      sub_10000D704();
      v36 = sub_100015CEC();
      v37(v36);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        sub_100007BFC();
        v40 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v98 = v96;
        *v40 = 136446210;
        sub_1000082E0();
        sub_1002E13EC(v41, v42);
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = v44;
        v46 = sub_100008B04();
        v39(v46);
        v47 = sub_10002741C(v43, v45, &v98);

        *(v40 + 4) = v47;
        sub_1002E14AC(&_mh_execute_header, "Exporting concatenated audio file to url %{public}s", v39);
        sub_100009B7C(v96);
        sub_100005F40(v96);
        sub_100005F64();
      }

      else
      {

        v88 = sub_100008B04();
        v39(v88);
      }

      *(v12 + 448) = v39;
      v89 = swift_task_alloc();
      *(v12 + 456) = v89;
      *v89 = v12;
      sub_1000150F8(v89);
      sub_10000C6F0(v90);
      sub_10001ABA0();

      return AVAssetExportSession.export(to:as:isolation:)();
    }

    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      sub_10000F590(&_mh_execute_header, v82, v83, "Failed to create an export session");
      sub_100005F40(v81);
    }

    v84 = *(v12 + 304);
    v85 = *(v12 + 288);

    type metadata accessor for AudioFileManagerError(0);
    sub_10000A090();
    sub_1002E13EC(v86, v87);
    sub_100007694();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

LABEL_9:
    sub_10000F570(*(v12 + 272));

    sub_100009EF4();
    sub_10001ABA0();

    __asm { BRAA            X1, X16 }
  }

  v97 = *(v12 + 296);
  v64 = *(v12 + 256);
  v63 = *(v12 + 264);
  v66 = *(v12 + 208);
  v65 = *(v12 + 216);
  v67 = *(v65 + 16);
  v65 += 16;
  v68 = *(v12 + 184) + ((*(v65 + 64) + 32) & ~*(v65 + 64)) + *(v65 + 56) * v33;
  *(v12 + 384) = v67;
  *(v12 + 392) = v65 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v67(v63, v68, v66);
  sub_1002E13A8();
  v69 = sub_100005F80();
  (v67)(v69);
  v70 = sub_1004630C0(v64);
  *(v12 + 400) = v70;
  *(v12 + 16) = v12;
  *(v12 + 56) = v12 + 144;
  *(v12 + 24) = sub_1002DF6BC;
  swift_continuation_init();
  *(v12 + 136) = sub_10026D814(&qword_1006A3FD0, &unk_10057ED80);
  sub_10000E630();
  *(v12 + 88) = 1107296256;
  sub_100018124(&unk_100625390);
  [v70 loadTracksWithMediaType:v97 completionHandler:?];
  sub_10001ABA0();

  return _swift_continuation_await(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12);
}

uint64_t sub_1002E037C()
{
  sub_100006810();
  sub_100007BC8();
  *v3 = v2;
  v4 = *v1;
  sub_100007BC8();
  *v5 = v4;
  *(v6 + 464) = v0;

  if (v0)
  {
    v7 = sub_1002E0A44;
  }

  else
  {
    v7 = sub_1002E04B0;
  }

  return _swift_task_switch(v7, 0, 0);
}

void sub_1002E04B0()
{
  (*(v0 + 368))(*(v0 + 232), *(v0 + 248), *(v0 + 208));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 448);
  v5 = *(v0 + 360);
  v6 = *(v0 + 304);
  v7 = *(v0 + 232);
  v9 = *(v0 + 208);
  v8 = *(v0 + 216);
  if (v3)
  {
    sub_100007BFC();
    v22 = v10;
    swift_slowAlloc();
    v21 = v5;
    v11 = sub_10000681C();
    v23 = v11;
    *v8 = 136446210;
    sub_1000082E0();
    sub_1002E13EC(v12, v13);
    v20 = v6;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v4(v7, v9);
    v17 = sub_10002741C(v14, v16, &v23);

    *(v8 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v1, v2, "Successfully exported concatenated audio file to url %{public}s", v8, 0xCu);
    sub_100009B7C(v11);
    sub_100005F40(v11);
    sub_100006868();
  }

  else
  {

    v4(v7, v9);
  }

  (*(*(v0 + 216) + 32))(*(v0 + 176), *(v0 + 248), *(v0 + 208));
  sub_100018F34();

  sub_100009EF4();
  sub_10000D3E8();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1002E0714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10000C1D0();
  a21 = v27;
  a22 = v28;
  a20 = v22;
  swift_willThrow();
  sub_10000F2F8();
  v29 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100005F94();
  if (sub_10000F96C())
  {
    sub_100007BFC();
    swift_slowAlloc();
    v24 = sub_10000681C();
    a11 = v24;
    sub_10002F608(4.8751e-34);
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v30 = String.init<A>(reflecting:)();
    v25 = v31;
    sub_10002741C(v30, v31, &a11);
    sub_100018F58();
    *(v23 + 4) = v26;
    sub_100010254();
    _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
    sub_100009B7C(v24);
    sub_100005F64();
    sub_100006868();
  }

  sub_10000A6C8();
  v37 = sub_10000FD84();
  v38(v37);
  sub_10000F570(*(v22 + 272));

  sub_100009EF4();
  sub_100017C90();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1002E08AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10000C1D0();
  a21 = v27;
  a22 = v28;
  a20 = v22;

  sub_10000F2F8();
  v29 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100005F94();
  if (sub_10000F96C())
  {
    sub_100007BFC();
    swift_slowAlloc();
    v24 = sub_10000681C();
    a11 = v24;
    sub_10002F608(4.8751e-34);
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v30 = String.init<A>(reflecting:)();
    v25 = v31;
    sub_10002741C(v30, v31, &a11);
    sub_100018F58();
    *(v23 + 4) = v26;
    sub_100010254();
    _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
    sub_100009B7C(v24);
    sub_100005F64();
    sub_100006868();
  }

  sub_10000A6C8();
  v37 = sub_10000FD84();
  v38(v37);
  sub_10000F570(*(v22 + 272));

  sub_100009EF4();
  sub_100017C90();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1002E0A44()
{
  v29 = v0;
  (*(v0 + 368))(*(v0 + 224), *(v0 + 248), *(v0 + 208));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 464);
    v4 = *(v0 + 224);
    v5 = *(v0 + 208);
    v27 = *(v0 + 448);
    v6 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v6 = 136446466;
    sub_1000082E0();
    sub_1002E13EC(v7, v8);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v27(v4, v5);
    v12 = sub_10002741C(v9, v11, &v28);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2082;
    *(v0 + 168) = v3;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    sub_100007694();
    v13 = String.init<A>(reflecting:)();
    v15 = sub_10002741C(v13, v14, &v28);

    *(v6 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error exporting concatenated audio file to URL %{public}s with error %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    sub_100005F64();
    sub_100006868();
  }

  else
  {
    v16 = *(v0 + 448);
    v17 = *(v0 + 224);
    v18 = *(v0 + 208);

    v16(v17, v18);
  }

  v19 = *(v0 + 448);
  v20 = *(v0 + 360);
  v21 = *(v0 + 304);
  v22 = *(v0 + 288);
  v23 = *(v0 + 248);
  v24 = *(v0 + 208);
  swift_willThrow();

  v19(v23, v24);
  sub_10000F570(*(v0 + 272));

  sub_100009EF4();

  return v25();
}

uint64_t sub_1002E0D34()
{
  v0 = type metadata accessor for URL();
  sub_100007FEC();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  sub_100007FEC();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v18 = 0xD000000000000013;
  v19 = 0x8000000100566860;
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v8 + 8))(v11, v6);
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 1630825774;
  v16._object = 0xE400000000000000;
  String.append(_:)(v16);
  static URL.temporaryDirectory.getter();
  URL.appendingPathComponent(_:)();

  return (*(v2 + 8))(v5, v0);
}

uint64_t sub_1002E0F24()
{
  sub_10028D1D8(v0 + OBJC_IVAR____TtC13callservicesd16AudioFileManager_serialQueue);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_1002E0FB0(uint64_t a1)
{
  sub_10028BCA0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002E1040()
{
  v1 = sub_10026D814(&qword_1006A3FB8, &qword_100583110);
  sub_100007FEC();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  v7 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  v10 = OBJC_IVAR____TtC13callservicesd16AudioFileManager_serialQueue;
  v11 = type metadata accessor for TaskPriority();
  sub_10000AF74(v9, 1, 1, v11);
  (*(v3 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v1);
  AsyncSerialQueue.init(priority:bufferingPolicy:)(v9, v6, v0 + v10);
  return v0;
}

uint64_t sub_1002E118C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1002E1238;

  return sub_1002DED80(a1, v5, v4);
}

uint64_t sub_1002E1238()
{
  sub_100006810();
  v1 = *v0;
  sub_100007BC8();
  *v2 = v1;

  sub_100009EF4();

  return v3();
}

uint64_t sub_1002E1320(uint64_t a1)
{
  v2 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002E13A8()
{
  result = qword_1006A3FC8;
  if (!qword_1006A3FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A3FC8);
  }

  return result;
}

uint64_t sub_1002E13EC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_100007694();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1002E1438(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Status(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1002E14AC(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0xCu);
}

id sub_1002E14CC()
{
  type metadata accessor for FaceTimeLivePhotosIDSService();
  result = sub_1003A03A0();
  qword_1006A4088 = result;
  return result;
}

id sub_1002E153C()
{
  if (qword_1006A07C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1006A4088;

  return v1;
}

id sub_1002E1598(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = String._bridgeToObjectiveC()();

  v10.receiver = v4;
  v10.super_class = type metadata accessor for FaceTimeLivePhotosIDSService();
  v8 = objc_msgSendSuper2(&v10, "initWithName:service:queryController:", v7, a3, a4);

  return v8;
}

id sub_1002E168C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FaceTimeLivePhotosIDSService();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1002E16E8(char a1)
{
  if (a1)
  {
    return 0x656E6F6850;
  }

  else
  {
    return 0x656D695465636146;
  }
}

uint64_t sub_1002E172C(Swift::String string)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&off_100620588, v3);
  sub_10000667C();

  if (v1 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v1)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002E17A0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002E172C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002E17D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002E16E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1002E1814()
{
  v1 = [v0 userInfo];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000082F8();
  v16[0] = v3;
  v16[1] = v2;
  AnyHashable.init<A>(_:)();
  sub_100006600();

  sub_100006780(v15);
  if (v16[3])
  {
    v4 = sub_10026D814(&unk_1006A3C60, &unk_10057D910);
    if (sub_10000E980(v4, v5, v6, v7, v8, v9, v10, v11, v13, v15[0], v15[1], v15[2], v15[3], v15[4], v16[0]))
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10004975C(v16);
    return 0;
  }
}

id sub_1002E1924(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    Array._bridgeToObjectiveC()();
    sub_10000667C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1002E1994()
{
  v1 = [v0 userInfo];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000082F8();
  v16[0] = v3;
  v16[1] = v2;
  AnyHashable.init<A>(_:)();
  sub_100006600();

  sub_100006780(v15);
  if (v16[3])
  {
    v4 = sub_10026D814(&unk_1006A3C60, &unk_10057D910);
    if (sub_10000E980(v4, v5, v6, v7, v8, v9, v10, v11, v13, v15[0], v15[1], v15[2], v15[3], v15[4], v16[0]))
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10004975C(v16);
    return 0;
  }
}

uint64_t sub_1002E1AA4()
{
  v1 = [v0 userInfo];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000F5D0();
  v7[0] = v3;
  v7[1] = v2;
  AnyHashable.init<A>(_:)();
  sub_100006600();

  sub_100006780(v6);
  if (v7[3])
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10004975C(v7);
    return 0;
  }
}

id sub_1002E1BB4(void *a1)
{
  v2 = a1;
  v3 = sub_10000667C();
  v4 = sub_1002E1DEC(v3);

  if (v4)
  {
    Array._bridgeToObjectiveC()();
    sub_10000667C();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_1002E1C38(uint64_t a1)
{
  v2 = v1;
  sub_1000082F8();
  *&v40 = v5;
  *(&v40 + 1) = v4;
  AnyHashable.init<A>(_:)();
  if (a1)
  {
    v6 = sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  }

  else
  {
    v6 = 0;
    *(&v40 + 1) = 0;
    v41 = 0;
  }

  *&v40 = a1;
  v42 = v6;
  v7 = [v2 userInfo];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6)
  {
    sub_10003EBF0(&v40, v39);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000A0A8(isUniquelyReferenced_nonNull_native, v9, v10, v11, v12);
    sub_100006780(v43);
  }

  else
  {
    sub_10004975C(&v40);
    sub_1000067D4();
    if (v13)
    {
      sub_100010264();
      swift_isUniquelyReferenced_nonNull_native();
      sub_10001511C();
      v14 = sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
      v22 = sub_10000A6F0(v14, v15, v16, v17, v18, v19, v20, v21, v35, v37);
      v30 = sub_10000F5B0(v22, v23, v24, v25, v26, v27, v28, v29, v36, v38);
      v32 = sub_10000E64C(v30, v31);
      sub_10001711C(v32, v33, &type metadata for AnyHashable);
    }

    else
    {
      memset(v39, 0, sizeof(v39));
    }

    sub_100006780(v43);
    sub_10004975C(v39);
  }

  Dictionary._bridgeToObjectiveC()();
  sub_100010264();

  sub_10000F5E4(v34, "setUserInfo:");
}

uint64_t sub_1002E1DEC(SEL *a1)
{
  v5.super_class = UNMutableNotificationContent;
  v1 = objc_msgSendSuper2(&v5, *a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1002E1E70(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  a4(v6);
}

void sub_1002E1EF4(uint64_t a1)
{
  v2 = v1;
  sub_1000082F8();
  *&v40 = v5;
  *(&v40 + 1) = v4;
  AnyHashable.init<A>(_:)();
  if (a1)
  {
    v6 = sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  }

  else
  {
    v6 = 0;
    *(&v40 + 1) = 0;
    v41 = 0;
  }

  *&v40 = a1;
  v42 = v6;
  v7 = [v2 userInfo];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6)
  {
    sub_10003EBF0(&v40, v39);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000A0A8(isUniquelyReferenced_nonNull_native, v9, v10, v11, v12);
    sub_100006780(v43);
  }

  else
  {
    sub_10004975C(&v40);
    sub_1000067D4();
    if (v13)
    {
      sub_100010264();
      swift_isUniquelyReferenced_nonNull_native();
      sub_10001511C();
      v14 = sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
      v22 = sub_10000A6F0(v14, v15, v16, v17, v18, v19, v20, v21, v35, v37);
      v30 = sub_10000F5B0(v22, v23, v24, v25, v26, v27, v28, v29, v36, v38);
      v32 = sub_10000E64C(v30, v31);
      sub_10001711C(v32, v33, &type metadata for AnyHashable);
    }

    else
    {
      memset(v39, 0, sizeof(v39));
    }

    sub_100006780(v43);
    sub_10004975C(v39);
  }

  Dictionary._bridgeToObjectiveC()();
  sub_100010264();

  sub_10000F5E4(v34, "setUserInfo:");
}

id sub_1002E20B4(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7)
  {
    String._bridgeToObjectiveC()();
    sub_10000667C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1002E2130()
{
  v4.super_class = UNMutableNotificationContent;
  v0 = objc_msgSendSuper2(&v4, "notificationProviderIdentifier");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void sub_1002E222C(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_10000F5D0();
  *&v43 = v7;
  *(&v43 + 1) = v6;
  AnyHashable.init<A>(_:)();
  if (a2)
  {
    v8 = &type metadata for String;
    v9 = a2;
  }

  else
  {
    a1 = 0;
    v9 = 0;
    v8 = 0;
    v44 = 0;
  }

  *&v43 = a1;
  *(&v43 + 1) = v9;
  v45 = v8;
  v10 = [v3 userInfo];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (a2)
  {
    sub_10003EBF0(&v43, v42);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000A0A8(isUniquelyReferenced_nonNull_native, v12, v13, v14, v15);
    sub_100006780(v46);
  }

  else
  {
    sub_10004975C(&v43);
    sub_1000067D4();
    if (v16)
    {
      sub_100010264();
      swift_isUniquelyReferenced_nonNull_native();
      sub_10001511C();
      v17 = sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
      v25 = sub_10000A6F0(v17, v18, v19, v20, v21, v22, v23, v24, v38, v40);
      v33 = sub_10000F5B0(v25, v26, v27, v28, v29, v30, v31, v32, v39, v41);
      v35 = sub_10000E64C(v33, v34);
      sub_10001711C(v35, v36, &type metadata for AnyHashable);
    }

    else
    {
      memset(v42, 0, sizeof(v42));
    }

    sub_100006780(v46);
    sub_10004975C(v42);
  }

  Dictionary._bridgeToObjectiveC()();
  sub_100010264();

  sub_10000F5E4(v37, "setUserInfo:");
}

id sub_1002E23D4(void *a1)
{
  v3 = [v1 content];
  [v3 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006AF0(0, &unk_1006A40C0, UNMutableNotificationContent_ptr);
  if (!swift_dynamicCast())
  {
    goto LABEL_11;
  }

  v4 = sub_1002E2AF8([v1 content], &selRef_remoteParticipantHandles);
  if (!v4)
  {

LABEL_11:
    v11 = v1;
    return v1;
  }

  v5 = v4;
  v6 = sub_1002E2AF8([v1 content], &selRef_activeParticipantHandles);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (!v7[2])
  {
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = String._bridgeToObjectiveC()();
  v10 = [a1 filterStatusForAddresses:isa withBundleIdentifier:v9];

  if (v10 == 3)
  {

    return 0;
  }

  else
  {
    [v25 setShouldIgnoreDowntime:v10 == 0];
    if (v5[2] != 1)
    {
      goto LABEL_19;
    }

    v14 = v5[4];
    v13 = v5[5];

    v15 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v15 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v16 = String._bridgeToObjectiveC()();
      v17 = String._bridgeToObjectiveC()();
      v18 = sub_1002E2B58(v16, v14, v13, v17, a1);

      if (v18)
      {
        v19 = String._bridgeToObjectiveC()();
        sub_10000F5E4(v19, "setThreadIdentifier:");
      }
    }

    else
    {
LABEL_19:
    }

    sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
    v20 = [v1 identifier];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = v25;
    v1 = sub_1002E2718(v21, v23, v24, [v1 trigger], objc_msgSend(v1, "destinations"));
  }

  return v1;
}

id sub_1002E2718(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = String._bridgeToObjectiveC()();

  v9 = [swift_getObjCClassFromMetadata() requestWithIdentifier:v8 content:a3 trigger:a4 destinations:a5];

  return v9;
}

uint64_t sub_1002E27A4()
{
  v1 = [v0 notification];
  v2 = [v1 request];

  v3 = [v2 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_1002E283C()
{
  v1 = [v0 notification];
  v2 = [v1 request];

  v3 = [v2 content];
  v4 = [v3 userInfo];

  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t sub_1002E2924()
{
  v1 = [v0 actionIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

_BYTE *storeEnumTagSinglePayload for NotificationType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1002E2AA4()
{
  result = qword_1006A40B8;
  if (!qword_1006A40B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A40B8);
  }

  return result;
}

uint64_t sub_1002E2AF8(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

id sub_1002E2B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = String._bridgeToObjectiveC()();

  v9 = [a5 isUnknownAddress:a1 normalizedAddress:v8 forBundleIdentifier:a4];

  return v9;
}

id sub_1002E2BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000A710(a1, a2, a3);
  v3 = String._bridgeToObjectiveC()();
  String.utf8CString.getter();
  v4 = CUTWeakLinkSymbol();

  if (v4)
  {
    v6 = *v4;

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002E2C4C()
{
  v0 = sub_1002E2BD4(0xD000000000000020, 0x8000000100566F00, 0x707845616964654DLL);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  qword_1006BA1E0 = v1;
  *algn_1006BA1E8 = v3;
}

void sub_1002E2CCC()
{
  v0 = sub_1002E2BD4(0xD00000000000001CLL, 0x8000000100566F30, 0x707845616964654DLL);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  qword_1006BA1F0 = v1;
  *algn_1006BA1F8 = v3;
}

void sub_1002E2D4C()
{
  v0 = sub_1002E2BD4(0xD000000000000021, 0x8000000100566ED0, 0x707845616964654DLL);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  qword_1006BA200 = v1;
  *algn_1006BA208 = v3;
}

void sub_1002E2DCC()
{
  v0 = sub_1002E2BD4(0xD000000000000028, 0x8000000100566EA0, 0x707845616964654DLL);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  qword_1006BA210 = v1;
  *algn_1006BA218 = v3;
}

void sub_1002E2E4C()
{
  v0 = sub_1002E2BD4(0xD000000000000026, 0x8000000100566E70, 0x707845616964654DLL);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  qword_1006BA220 = v1;
  *algn_1006BA228 = v3;
}

void sub_1002E2ECC()
{
  v0 = sub_1002E2BD4(0xD00000000000002FLL, 0x8000000100566D80, 0x707845616964654DLL);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  qword_1006BA230 = v1;
  *algn_1006BA238 = v3;
}

void sub_1002E2F4C()
{
  v0 = sub_1002E2BD4(0xD00000000000002DLL, 0x8000000100566D50, 0x707845616964654DLL);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  qword_1006BA240 = v1;
  *algn_1006BA248 = v3;
}

void sub_1002E2FCC()
{
  v0 = sub_1002E2BD4(0xD000000000000029, 0x8000000100566DB0, 0x707845616964654DLL);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  qword_1006BA250 = v1;
  *algn_1006BA258 = v3;
}

void sub_1002E304C()
{
  sub_10000830C();
  v2 = sub_1002E2BD4(0xD000000000000032, v0, v1);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  qword_1006BA260 = v3;
  *algn_1006BA268 = v5;
}

void sub_1002E30A8()
{
  sub_10000830C();
  v2 = sub_1002E2BD4(0xD000000000000042, v0, v1);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  qword_1006BA270 = v3;
  *algn_1006BA278 = v5;
}

id sub_1002E3104(uint64_t a1, id a2)
{
  result = [a2 sessionBasedMutingEnabled];
  if (result)
  {
    if ((*(a1 + 154) & 1) != 0 || (v4 = objc_opt_self(), result = [v4 isMicrophoneMuted], v5 = *(a1 + 153), result == v5))
    {
      v13 = sub_100010B20(result);
      v14 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v15 = sub_100009F00(v14);
      *(v15 + 16) = xmmword_10057D690;
      v16 = *(a1 + 153);
      *(v15 + 56) = &type metadata for Bool;
      *(v15 + 64) = &protocol witness table for Bool;
      *(v15 + 32) = v16;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Not setting microphoneMuted on AVAudioClient as mute state (%d) should already be reflected on audio session", v17);
    }

    else
    {
      v6 = sub_100010B20(result);
      v7 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v8 = sub_100009F00(v7);
      *(v8 + 16) = xmmword_10057D690;
      v9 = String.init<A>(reflecting:)();
      v11 = v10;
      *(v8 + 56) = &type metadata for String;
      *(v8 + 64) = sub_100009D88();
      *(v8 + 32) = v9;
      *(v8 + 40) = v11;
      v12 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Setting microphoneMuted on AVAudioClient: %@", 44, 2, &_mh_execute_header, v6, v12, v8);

      return [v4 setMicrophoneMuted:v5];
    }
  }

  return result;
}

void *sub_1002E32EC(uint64_t a1)
{
  v2 = v1;
  v4 = 0xD000000000000045;
  v5 = _swiftEmptyDictionarySingleton;
  if (*(a1 + 152))
  {
    goto LABEL_7;
  }

  v6 = *(a1 + 148);
  v7 = sub_100010B20(a1);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057D6A0;
  *&v73 = *v2;
  sub_10026D814(&qword_1006A41C8, &unk_10057F008);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100009D88();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for Int32;
  *(v8 + 104) = &protocol witness table for Int32;
  *(v8 + 72) = v6;
  v12 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("%@: Phone call subtype is: %d", 29, 2, &_mh_execute_header, v7, v12, v8);

  v5 = _swiftEmptyDictionarySingleton;
  if ((v6 - 1) < 2)
  {
    *(&v74 + 1) = &type metadata for Bool;
    LOBYTE(v73) = 0;
    goto LABEL_6;
  }

  if ((v6 - 3) < 2)
  {
    *(&v74 + 1) = &type metadata for Bool;
    LOBYTE(v73) = 1;
LABEL_6:
    sub_10003EBF0(&v73, v72);
    swift_isUniquelyReferenced_nonNull_native();
    v76 = _swiftEmptyDictionarySingleton;
    sub_100040430();
    v5 = v76;
    goto LABEL_7;
  }

  if (!v6)
  {
LABEL_7:
    v13 = sub_1002E3FC4(a1);
    v2 = &type metadata for Int;
    *(&v74 + 1) = &type metadata for Int;
    *&v73 = v13;
    sub_10003EBF0(&v73, v72);
    swift_isUniquelyReferenced_nonNull_native();
    v76 = v5;
    sub_100040430();
    v14 = v76;
    v15 = *(a1 + 53);
    *(&v74 + 1) = &type metadata for Bool;
    LOBYTE(v73) = v15;
    sub_10003EBF0(&v73, v72);
    swift_isUniquelyReferenced_nonNull_native();
    v76 = v14;
    sub_100040430();
    v4 = v76;
    if (qword_1006A07D8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_49;
  }

  type metadata accessor for TUTelephonyCallSubType(0);
  LODWORD(v73) = v6;
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
LABEL_49:
  swift_once();
LABEL_8:
  v17 = qword_1006BA1F0;
  v16 = *algn_1006BA1F8;
  v18 = *(a1 + 16);
  v76 = v18;
  if (v18)
  {
    type metadata accessor for Mode(0);
    *(&v74 + 1) = v19;
    *&v73 = v18;
    sub_10003EBF0(&v73, v72);

    sub_1002E4CF4(&v76, &v75, &qword_1006A9E80);
    swift_isUniquelyReferenced_nonNull_native();
    v75 = _swiftEmptyDictionarySingleton;
    sub_100040430();

    v20 = v75;
  }

  else
  {
    v73 = 0u;
    v74 = 0u;

    sub_1002E4CF4(&v76, v72, &qword_1006A9E80);
    sub_1000099A4(&v73, &unk_1006A2D10, &unk_10057D940);
    v20 = _swiftEmptyDictionarySingleton;
    v21 = sub_100005208(v17, v16);
    if (v22)
    {
      v23 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = _swiftEmptyDictionarySingleton;
      v25 = _swiftEmptyDictionarySingleton[3];
      sub_10026D814(&qword_1006A39C0, &qword_10057E8C0);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25);
      v20 = v75;

      sub_10003EBF0((v20[7] + 32 * v23), v72);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      memset(v72, 0, sizeof(v72));
    }

    sub_1000099A4(v72, &unk_1006A2D10, &unk_10057D940);
  }

  if (qword_1006A07D0 != -1)
  {
    swift_once();
  }

  v75 = *(a1 + 8);
  v26 = v75;
  type metadata accessor for Category(0);
  *(&v74 + 1) = v27;
  *&v73 = v26;
  sub_10003EBF0(&v73, v72);

  sub_1002E4D50(&v75, &v71);
  swift_isUniquelyReferenced_nonNull_native();
  v71 = v20;
  sub_100040430();

  v28 = v71;
  if (qword_1006A07E0 != -1)
  {
    swift_once();
  }

  v29 = 10;
  if (!*(a1 + 50))
  {
    v29 = 0;
  }

  *(&v74 + 1) = v2;
  *&v73 = v29;
  sub_10003EBF0(&v73, v72);

  swift_isUniquelyReferenced_nonNull_native();
  v71 = v28;
  sub_100040430();

  v30 = v71;
  if (qword_1006A07E8 != -1)
  {
    swift_once();
  }

  v32 = qword_1006BA210;
  v31 = *algn_1006BA218;
  v33 = *(a1 + 40);
  if (v33 == 1)
  {

    v34 = sub_100005208(v32, v31);
    if (v35)
    {
      v36 = v34;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      *&v72[0] = v30;
      v38 = v30[3];
      sub_10026D814(&qword_1006A39C0, &qword_10057E8C0);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v37, v38);
      v30 = *&v72[0];

      sub_10003EBF0((v30[7] + 32 * v36), &v73);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v73 = 0u;
      v74 = 0u;
    }

    sub_1000099A4(&v73, &unk_1006A2D10, &unk_10057D940);
  }

  else
  {
    v39 = *(a1 + 32);
    v40 = *(a1 + 24) & 1 | (*(a1 + 28) << 32);
    v41 = v4;
    if (*(a1 + 49))
    {
      v42 = 256;
    }

    else
    {
      v42 = 0;
    }

    v43 = v42 & 0xFFFE | *(a1 + 48) & 1;

    v44 = v43;
    v4 = v41;
    v45 = sub_100048CB4(v40, v39, v33, v44);
    *(&v74 + 1) = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
    *&v73 = v45;
    sub_10003EBF0(&v73, v72);
    swift_isUniquelyReferenced_nonNull_native();
    v71 = v30;
    sub_100040430();

    v30 = v71;
  }

  if (qword_1006A07F0 != -1)
  {
    swift_once();
  }

  v46 = *(a1 + 52);
  *(&v74 + 1) = &type metadata for Bool;
  LOBYTE(v73) = v46;
  sub_10003EBF0(&v73, v72);

  swift_isUniquelyReferenced_nonNull_native();
  v71 = v30;
  sub_100040430();

  v47 = v71;
  if (qword_1006A0810 != -1)
  {
    swift_once();
  }

  v48 = objc_allocWithZone(NSNumber);

  v49 = [v48 initWithBool:1];
  v50 = sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  *(&v74 + 1) = v50;
  *&v73 = v49;
  sub_10003EBF0(&v73, v72);
  swift_isUniquelyReferenced_nonNull_native();
  v71 = v47;
  sub_100040430();

  v51 = v71;
  if (qword_1006A0818 != -1)
  {
    swift_once();
  }

  v52 = objc_allocWithZone(NSNumber);

  v53 = [v52 initWithBool:1];
  *(&v74 + 1) = v50;
  *&v73 = v53;
  sub_10003EBF0(&v73, v72);
  swift_isUniquelyReferenced_nonNull_native();
  v71 = v51;
  sub_100040430();

  v54 = v71;
  v55 = sub_1002E2BD4(0xD00000000000002CLL, 0x8000000100566C80, 0x707845616964654DLL);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v56 = [objc_allocWithZone(NSNumber) initWithBool:*(a1 + 57)];
  *(&v74 + 1) = v50;
  *&v73 = v56;
  sub_10003EBF0(&v73, v72);
  swift_isUniquelyReferenced_nonNull_native();
  v71 = v54;
  sub_100040430();

  v57 = v71;
  if ((*(a1 + 120) & 1) == 0)
  {
    v58 = *(a1 + 136);
    if (v58)
    {
      v59 = *(a1 + 128);
      v60 = qword_1006A0808;

      if (v60 != -1)
      {
        swift_once();
      }

      v70 = v4;
      sub_10026D814(&unk_1006A41B0, &unk_10057EFF8);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_10057D690;
      sub_10026D814(&unk_1006A39A0, &unk_10057D700);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_10057D6A0;
      v63 = qword_1006A07F8;

      if (v63 != -1)
      {
        swift_once();
      }

      v64 = *algn_1006BA238;
      *(v62 + 32) = qword_1006BA230;
      *(v62 + 40) = v64;
      v65 = objc_opt_self();

      v66 = *(a1 + 104);
      v73 = *(a1 + 88);
      v74 = v66;
      v67 = [v65 tu_dataForAuditToken:&v73];
      *(v62 + 72) = sub_100006AF0(0, &qword_1006A41C0, NSData_ptr);
      *(v62 + 48) = v67;
      if (qword_1006A0800 != -1)
      {
        swift_once();
      }

      v68 = *algn_1006BA248;
      *(v62 + 80) = qword_1006BA240;
      *(v62 + 88) = v68;
      *(v62 + 120) = &type metadata for String;
      *(v62 + 96) = v59;
      *(v62 + 104) = v58;

      *(v61 + 32) = Dictionary.init(dictionaryLiteral:)();
      *(&v74 + 1) = sub_10026D814(&qword_1006AA7C0, &unk_100586600);
      *&v73 = v61;
      sub_10003EBF0(&v73, v72);
      swift_isUniquelyReferenced_nonNull_native();
      v71 = v57;
      sub_100040430();

      v4 = v70;
      v57 = v71;
    }
  }

  *(&v74 + 1) = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
  *&v73 = v57;
  sub_10003EBF0(&v73, v72);
  swift_isUniquelyReferenced_nonNull_native();
  v71 = v4;
  sub_100040430();
  return v71;
}

uint64_t sub_1002E3FC4(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 < 5)
  {
    return qword_10057F018[v1];
  }

  type metadata accessor for CSDAudioInterruptionOperationMode(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_1002E4028(uint64_t a1)
{
  v3 = *(v1 + 24);

  v3(a1);
}

void sub_1002E407C(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = sub_1002E32EC(__src);
  v3 = sub_100010B20(v2);
  v4 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v5 = sub_100009F00(v4);
  *(v5 + 16) = xmmword_10057D690;
  *(v5 + 56) = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
  *(v5 + 64) = sub_1002E4C04();
  *(v5 + 32) = v2;

  v6 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Setting audio session properties: %@", 36, 2, &_mh_execute_header, v3, v6, v5);

  v7 = objc_opt_self();
  sub_10003E7C0();
  v9 = v8;

  sub_1002E4C68(v9, v7);
  v11 = sub_100010B20(v10);
  v12 = v4;
  v13 = sub_100009F00(v4);
  *(v13 + 16) = xmmword_10057D690;
  __srca[0] = *(__src + 55);
  v14 = __srca[0];
  v15 = String.init<A>(reflecting:)();
  v17 = v16;
  *(v13 + 56) = &type metadata for String;
  v18 = sub_100009D88();
  *(v13 + 64) = v18;
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  v19 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Setting audio mixing: %@", 24, 2, &_mh_execute_header, v11, v19, v13);

  v20 = v14;
  v21 = v12;
  v22 = sub_100010B20([v7 setMixingVoiceWithMediaEnabled:v20]);
  v23 = sub_100009F00(v12);
  *(v23 + 16) = xmmword_10057D690;
  __srca[0] = *(__src + 58);
  v24 = String.init<A>(reflecting:)();
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = v18;
  v25 = v18;
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  v27 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Setting mode to A2DP: %@", 24, 2, &_mh_execute_header, v22, v27, v23);

  v28 = sub_1002E4028(__src);
  v29 = sub_100010B20(v28);
  v30 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Starting audio session", 22, 2, &_mh_execute_header, v29, v30, _swiftEmptyArrayStorage);

  v31 = *(__src + 56);
  if (v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = dispatch_semaphore_create(0);
  }

  v33 = swift_allocObject();
  sub_1002BA0C4(__srca);
  memcpy((v33 + 16), __srca, 0xA8uLL);
  v34 = swift_allocObject();
  memcpy(v34 + 2, __src, 0xA8uLL);
  v34[23] = v33;
  v34[24] = v32;
  aBlock[4] = sub_1002E4CE8;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003541FC;
  aBlock[3] = &unk_1006254F8;
  v35 = _Block_copy(aBlock);

  sub_100042F60(__src, v49);
  v36 = v32;

  [v7 startAudioSessionWithCompletionHandler:v35];
  _Block_release(v35);
  if (v32)
  {
    v37 = v36;
    OS_dispatch_semaphore.wait()();
  }

  swift_beginAccess();
  memcpy(aBlock, (v33 + 16), sizeof(aBlock));
  memcpy(v49, (v44 + 40), sizeof(v49));
  memcpy((v44 + 40), (v33 + 16), 0xA8uLL);
  sub_1002E4CF4(aBlock, v47, &unk_1006A41A0);
  v38 = sub_1000099A4(v49, &unk_1006A41A0, &qword_10057EFE0);
  if (v31)
  {
    v39 = sub_100010B20(v38);
    v40 = sub_100009F00(v21);
    *(v40 + 16) = xmmword_10057D690;
    memcpy(v47, __src, sizeof(v47));
    sub_100042F60(__src, v46);
    v41 = String.init<A>(reflecting:)();
    *(v40 + 56) = &type metadata for String;
    *(v40 + 64) = v25;
    *(v40 + 32) = v41;
    *(v40 + 40) = v42;
    v43 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Setting descriptor to be active since it requested an expedited activation: %@", 78, 2, &_mh_execute_header, v39, v43, v40);

    memcpy(v46, __dst, sizeof(v46));
    ScreenSharingActivityManager.carPlayDidDisconnect()();
    memcpy(v47, (v44 + 40), sizeof(v47));
    memcpy((v44 + 40), v46, 0xA8uLL);
    sub_1000099A4(v47, &unk_1006A41A0, &qword_10057EFE0);
    sub_100042F60(__src, v45);
  }

  else
  {
  }
}

uint64_t sub_1002E4610(char a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (!a2)
  {
    if (a1)
    {
      goto LABEL_17;
    }

LABEL_14:

    goto LABEL_15;
  }

  v10 = _convertErrorToNSError(_:)();
  v11 = [v10 code];

  v12 = _convertErrorToNSError(_:)();
  v13 = [v12 domain];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (a1)
  {
    goto LABEL_17;
  }

  if (v11 != 32025)
  {
    goto LABEL_14;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v16)
  {
    goto LABEL_14;
  }

  if (v14 != v17 || v16 != v18)
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_18;
    }

LABEL_15:
    v22 = sub_100010B20(v21);
    v23 = static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_10057D690;
    v25 = sub_1002910C8(a2);
    v27 = v26;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = sub_100009D88();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    os_log(_:dso:log:type:_:)("Failed to start audio session: %@", 33, 2, &_mh_execute_header, v22, v23, v24);

    sub_1002BA0C4(v35);
    goto LABEL_19;
  }

LABEL_17:

LABEL_18:
  v28 = sub_100010B20(v21);
  v29 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Successfully started audio session", 34, 2, &_mh_execute_header, v28, v29, _swiftEmptyArrayStorage);

  memcpy(__srca, __dst, sizeof(__srca));
  ScreenSharingActivityManager.carPlayDidDisconnect()();
  v30 = objc_opt_self();
  sub_100042F60(__src, v33);
  v31 = [v30 defaultCenter];
  [v31 postNotificationName:TUCallAudioStackReadyNotification object:0];

  memcpy(v35, __srca, sizeof(v35));
LABEL_19:
  swift_beginAccess();
  memcpy(__srca, (a4 + 16), sizeof(__srca));
  memcpy((a4 + 16), v35, 0xA8uLL);
  sub_1002E4CF4(v35, v33, &unk_1006A41A0);
  sub_1000099A4(__srca, &unk_1006A41A0, &qword_10057EFE0);
  if (a5)
  {
    OS_dispatch_semaphore.signal()();
  }

  return sub_1000099A4(v35, &unk_1006A41A0, &qword_10057EFE0);
}

uint64_t sub_1002E4970(uint64_t a1)
{
  v2 = sub_100010B20(a1);
  v3 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Setting audio mixing: false", 27, 2, &_mh_execute_header, v2, v3, _swiftEmptyArrayStorage);

  v4 = objc_opt_self();
  v5 = sub_100010B20([v4 setMixingVoiceWithMediaEnabled:0]);
  v6 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Stopping audio session", 22, 2, &_mh_execute_header, v5, v6, _swiftEmptyArrayStorage);

  [v4 stopAudioSession];
  [v4 resetAudioSessionOutputPortOverride];
  sub_1002BA0C4(v8);
  memcpy(__dst, (v1 + 40), sizeof(__dst));
  memcpy((v1 + 40), v8, 0xA8uLL);
  return sub_1000099A4(__dst, &unk_1006A41A0, &qword_10057EFE0);
}

uint64_t sub_1002E4AAC(uint64_t a1)
{
  v2 = sub_100010B20(a1);
  v3 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Resetting state", 15, 2, &_mh_execute_header, v2, v3, _swiftEmptyArrayStorage);

  sub_1002BA0C4(__src);
  memcpy(__dst, (v1 + 40), 0xA8uLL);
  memcpy((v1 + 40), __src, 0xA8uLL);
  return sub_1000099A4(__dst, &unk_1006A41A0, &qword_10057EFE0);
}

void *sub_1002E4B54()
{
  swift_unknownObjectRelease();

  memcpy(__dst, (v0 + 40), sizeof(__dst));
  sub_1000099A4(__dst, &unk_1006A41A0, &qword_10057EFE0);
  return v0;
}

uint64_t sub_1002E4BAC()
{
  sub_1002E4B54();

  return _swift_deallocClassInstance(v0, 208, 7);
}

unint64_t sub_1002E4C04()
{
  result = qword_1006A3980;
  if (!qword_1006A3980)
  {
    sub_10026DCB4(&unk_1006A2A00, &unk_10057D710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3980);
  }

  return result;
}

void sub_1002E4C68(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setAudioSessionProperties:isa];
}

uint64_t sub_1002E4CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000A710(a1, a2, a3);
  v7 = sub_10026D814(v5, v6);
  (*(*(v7 - 8) + 16))(v3, v4, v7);
  return v3;
}

uint64_t sub_1002E4D50(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Category(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1002E4DB4()
{
  type metadata accessor for FaceTimeMultiwayIDSService();
  result = sub_1003A03A0();
  qword_1006A41D0 = result;
  return result;
}

id sub_1002E4E24()
{
  if (qword_1006A0820 != -1)
  {
    swift_once();
  }

  v1 = qword_1006A41D0;

  return v1;
}

id sub_1002E4E80(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = String._bridgeToObjectiveC()();

  v10.receiver = v4;
  v10.super_class = type metadata accessor for FaceTimeMultiwayIDSService();
  v8 = objc_msgSendSuper2(&v10, "initWithName:service:queryController:", v7, a3, a4);

  return v8;
}

id sub_1002E4F74(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FaceTimeMultiwayIDSService();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1002E4FD0()
{
  v1 = type metadata accessor for Handle.Kind();
  sub_100007FEC();
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v6);
  v7 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin([v0 type]);
  v9 = &enum case for Handle.Kind.generic(_:);
  if (v8 == 2)
  {
    v9 = &enum case for Handle.Kind.phoneNumber(_:);
  }

  if (v8 == 3)
  {
    v9 = &enum case for Handle.Kind.emailAddress(_:);
  }

  (*(v3 + 104))(&v13 - v7, *v9, v1);
  (*(v3 + 32))(&v13 - v7, &v13 - v7, v1);
  sub_10005104C(v0);
  if (!v10)
  {
    v11 = [v0 value];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return Handle.init(type:value:displayName:)();
}

uint64_t sub_1002E5170()
{
  v1 = v0;
  v2 = type metadata accessor for Handle.Kind();
  sub_100007FEC();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v2);
  v8 = (*(v4 + 88))(v7, v2);
  if (!&enum case for Handle.Kind.generic(_:) || v8 != enum case for Handle.Kind.generic(_:))
  {
    if (&enum case for Handle.Kind.phoneNumber(_:) && v8 == enum case for Handle.Kind.phoneNumber(_:))
    {
      return 2;
    }

    if (&enum case for Handle.Kind.emailAddress(_:) && v8 == enum case for Handle.Kind.emailAddress(_:))
    {
      return 3;
    }

    (*(v4 + 8))(v7, v2);
  }

  return 1;
}

void sub_1002E52B8()
{
  sub_100005EF4();
  v1 = type metadata accessor for Locale();
  sub_100007FEC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100007BAC();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  v11 = type metadata accessor for LanguageManager();
  sub_100007FEC();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100007FDC();
  sub_10000F9FC();
  [objc_allocWithZone(TUFeatureFlags) init];
  LanguageManager.init(featureFlags:)();
  v15 = TUBundle();
  if (v15)
  {
    v16 = v15;
    sub_10001813C();
    v17._countAndFlagsBits = 0xD00000000000001FLL;
    v19 = LanguageManager.localizedString(forKey:table:bundle:languageCode:)(v17, v18, v16, 0);

    v55 = v7;
    if (v19.value._object)
    {
      v20 = v10;
      v53 = v3;
      if (qword_1006A0B40 != -1)
      {
        sub_1000080FC(&qword_1006A0B40);
      }

      v21 = type metadata accessor for Logger();
      sub_1000075F0(v21, qword_1006BA640);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = v1;
        v25 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v56[1] = v19.value._object;
        v57 = v50;
        *v25 = 136315394;
        countAndFlagsBits = v19.value._countAndFlagsBits;
        v56[0] = v19.value._countAndFlagsBits;

        v26 = String.init<A>(reflecting:)();
        v51 = v13;
        v28 = sub_10002741C(v26, v27, &v57);
        v54 = v11;
        v29 = v28;

        *(v25 + 4) = v29;
        *(v25 + 12) = 2080;
        static Locale.current.getter();
        v30 = v53;
        (v53[2])(v55, v20, v24);
        v31 = String.init<A>(reflecting:)();
        v33 = v32;
        (v30[1])(v20, v24);
        v34 = sub_10002741C(v31, v33, &v57);

        *(v25 + 14) = v34;
        _os_log_impl(&_mh_execute_header, v22, v23, "startDisclosureUtterance:%s locale: %s", v25, 0x16u);
        v35 = v50;
        swift_arrayDestroy();
        sub_100005F40(v35);
        sub_100005F40(v25);

        (*(v51 + 8))(v0, v54);
LABEL_12:
        sub_100005EDC();
        return;
      }
    }

    else
    {
      if (qword_1006A0B40 != -1)
      {
        sub_1000080FC(&qword_1006A0B40);
      }

      v36 = type metadata accessor for Logger();
      sub_1000075F0(v36, qword_1006BA640);
      v22 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (sub_10000BB44(v37))
      {
        v38 = sub_100005274();
        countAndFlagsBits = v38;
        v53 = sub_100005E84();
        v56[0] = v53;
        *v38 = 136315138;
        static Locale.current.getter();
        (*(v3 + 16))(v55, v10, v1);
        v39 = String.init<A>(reflecting:)();
        v54 = v11;
        v40 = v3;
        v41 = v39;
        v42 = v10;
        v43 = v13;
        v45 = v44;
        (*(v40 + 8))(v42, v1);
        v46 = sub_10002741C(v41, v45, v56);

        v47 = countAndFlagsBits;
        *(countAndFlagsBits + 4) = v46;
        _os_log_impl(&_mh_execute_header, v22, v37, "Unable to localize start disclosure for locale %s. Not creating an outgoing message", v47, 0xCu);
        v48 = v53;
        sub_100009B7C(v53);
        sub_100005F40(v48);
        sub_100005F40(v47);

        (*(v43 + 8))(v0, v54);
        goto LABEL_12;
      }
    }

    (*(v13 + 8))(v0, v11);
    goto LABEL_12;
  }

  __break(1u);
}

void sub_1002E57C8()
{
  sub_100005EF4();
  v0 = type metadata accessor for Locale();
  sub_100007FEC();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100007BAC();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  type metadata accessor for LanguageManager();
  sub_100007FEC();
  __chkstk_darwin(v10);
  sub_100007FDC();
  sub_10000F9FC();
  [objc_allocWithZone(TUFeatureFlags) init];
  LanguageManager.init(featureFlags:)();
  v11 = TUBundle();
  if (v11)
  {
    v12 = v11;
    sub_10001813C();
    v13._countAndFlagsBits = 0xD00000000000001DLL;
    object = LanguageManager.localizedString(forKey:table:bundle:languageCode:)(v13, v14, v12, 0).value._object;

    if (object)
    {
      v16 = sub_100006884();
      v17(v16);
    }

    else
    {
      if (qword_1006A0B40 != -1)
      {
        sub_1000080FC(&qword_1006A0B40);
      }

      v18 = type metadata accessor for Logger();
      sub_1000075F0(v18, qword_1006BA640);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (sub_10000BB44(v20))
      {
        v21 = sub_100005274();
        v32 = v20;
        v22 = v21;
        v31 = sub_100005E84();
        v33 = v31;
        *v22 = 136315138;
        static Locale.current.getter();
        (*(v2 + 16))(v6, v9, v0);
        v23 = String.init<A>(reflecting:)();
        v24 = v2;
        v26 = v25;
        (*(v24 + 8))(v9, v0);
        v27 = sub_10002741C(v23, v26, &v33);

        *(v22 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v19, v32, "Unable to localize start disclosure for locale %s. Not creating an outgoing message", v22, 0xCu);
        sub_100009B7C(v31);
        sub_100008AE8();
        sub_100005F40(v22);
      }

      v28 = sub_100006884();
      v29(v28);
    }

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

void sub_1002E5AB4()
{
  sub_100005EF4();
  v72 = v0;
  v71 = v1;
  type metadata accessor for Locale();
  sub_100007FEC();
  v77 = v2;
  v78 = v3;
  __chkstk_darwin(v2);
  sub_100007BAC();
  v75 = (v4 - v5);
  __chkstk_darwin(v6);
  v76 = &v63 - v7;
  v74 = type metadata accessor for LanguageManager();
  sub_100007FEC();
  v69 = v8;
  __chkstk_darwin(v9);
  sub_100007FDC();
  v73 = v11 - v10;
  v65 = type metadata accessor for URL();
  sub_100007FEC();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100007FDC();
  v70 = (v16 - v15);
  sub_1002E52B8();
  v18 = v17;
  v20 = v19;
  v21 = objc_opt_self();
  v22 = [v21 tu_defaults];
  v23 = sub_10026D814(&qword_1006A4390, &qword_10057F110);
  sub_100015D0C();
  v24 = swift_allocObject();
  v24[2] = 0xD000000000000021;
  v24[3] = 0x8000000100567100;
  v24[4] = v18;
  v24[5] = v20;
  v25 = v24;
  v24[6] = v22;
  sub_1002E57C8();
  v27 = v26;
  v29 = v28;
  v30 = [v21 tu_defaults];
  v68 = v23;
  sub_100015D0C();
  v31 = swift_allocObject();
  v31[2] = 0xD00000000000001FLL;
  v31[3] = 0x8000000100567130;
  v31[4] = v27;
  v31[5] = v29;
  v32 = v31;
  v31[6] = v30;
  if (qword_1006A0C58 != -1)
  {
    swift_once();
  }

  v33 = v65;
  v34 = sub_10000AF9C(v65, qword_1006BAA60);
  v35 = v70;
  (*(v13 + 16))(v70, v34, v33);
  v36 = [v21 tu_defaults];
  v37 = type metadata accessor for FileChecksum(0);
  sub_100015D0C();
  swift_allocObject();
  v38 = sub_1003FCFE8(0xD00000000000001ALL, 0x8000000100567150, v35, v36);
  if (v38)
  {
    v39 = &off_10062EC60;
  }

  else
  {
    v37 = 0;
    v39 = 0;
    v82 = 0;
    v83 = 0;
  }

  v81 = v38;
  v84 = v37;
  v85 = v39;
  v70 = v38;

  v40 = sub_1002E624C();
  type metadata accessor for DisclosureUtilities();
  v41 = swift_allocObject();
  type metadata accessor for DisclosureDataSource(0);
  v42 = swift_allocObject();
  v80[3] = v68;
  v80[4] = &off_10062EC60;
  v79[4] = &off_10062EC60;
  v80[0] = v25;
  v79[3] = v68;
  v79[0] = v32;
  v43 = objc_allocWithZone(TUFeatureFlags);
  v67 = v25;

  v66 = v32;

  v44 = v71;
  v45 = v72;
  [v43 init];
  LanguageManager.init(featureFlags:)();
  *(v42 + 2) = v45;
  *(v42 + 3) = v40;
  *(v42 + 4) = &off_100621DD8;
  *&v42[OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_speechAssetManager] = v44;
  sub_1002E86CC(&v81, &v42[OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_startDisclosureBeepChecksum]);
  sub_100009AB0(v80, &v42[OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_startDisclosureUtteranceChecksum]);
  sub_100009AB0(v79, &v42[OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_endDisclosureUtteranceChecksum]);
  *&v42[OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_disclosureUtilities] = v41;
  v46 = swift_allocObject();
  swift_weakInit();
  v40[12] = sub_1002E873C;
  v40[13] = v46;
  swift_unknownObjectRetain_n();
  v47 = v44;
  v48 = v45;
  v72 = v48;

  swift_unknownObjectRelease();

  v49 = *&v47[OBJC_IVAR___CSDSpeechAssetManager_delegates];
  v71 = v47;
  [v49 addObject:v42];
  sub_1002E6380();
  sub_1002E7308();

  swift_unknownObjectRelease();

  sub_100009A5C(&v81, &qword_1006A4398, &qword_10057F118);
  sub_100009B7C(v79);
  sub_100009B7C(v80);
  v50 = OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_languageManager;
  v51 = v69;
  v63 = *(v69 + 16);
  v53 = v73;
  v52 = v74;
  v63(v73, &v42[OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_languageManager], v74);

  v54 = v76;
  static Locale.current.getter();
  v68 = LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
  v64 = v55;
  v65 = v56;
  v57 = v77;
  v58 = *(v78 + 8);
  v78 += 8;
  v58(v54, v77);
  v59 = *(v51 + 8);
  v59(v53, v52);
  v63(v53, &v42[v50], v52);
  v60 = v75;
  static Locale.current.getter();
  LanguageManager.mappedASRLocale(for:useCase:)();
  v58(v60, v57);
  v59(v53, v52);
  v61 = *&v42[OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_speechAssetManager];

  v81 = Locale.identifier.getter();
  v82 = v62;
  v83 = v68;
  v84 = v64;
  v85 = v65;
  sub_100299234();

  v58(v54, v77);
  sub_100005EDC();
}

id sub_1002E624C()
{
  v0 = [objc_allocWithZone(type metadata accessor for DaemonSession()) init];
  type metadata accessor for SiriSpeechSynthesizer(0);
  v1 = swift_allocObject();
  v2 = sub_1002E8744(v0, 0, v1);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v4 = result;
    type metadata accessor for SiriSpeechService();
    v5 = swift_allocObject();
    return sub_1002E88C0(v2, sub_10027124C, 0, v4, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002E631C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1002E6380();
    sub_1002E7308();
  }

  return result;
}

void sub_1002E6380()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Locale();
  sub_100007FEC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100007BAC();
  __chkstk_darwin(v8);
  v10 = &v91 - v9;
  sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  sub_100006688();
  __chkstk_darwin(v11);
  v13 = &v91 - v12;
  v14 = type metadata accessor for URL();
  sub_100007FEC();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100007BAC();
  v103 = (v18 - v19);
  __chkstk_darwin(v20);
  v22 = &v91 - v21;
  v102 = type metadata accessor for DisclosureDataSource(0);
  sub_1002E52B8();
  if (v24)
  {
    v96 = v23;
    v97 = v22;
    v98 = v24;
    sub_100009AB0(v1 + OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_startDisclosureUtteranceChecksum, v111);
    v25 = v112;
    v26 = v113;
    sub_100009B14(v111, v112);
    sub_1000112FC();
    if ((v27(v25, v26) & 1) == 0)
    {
      sub_1002E86CC(v1 + OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_startDisclosureBeepChecksum, &v108);
      v28 = v109;
      if (v109)
      {
        v29 = v110;
        sub_100009B14(&v108, v109);
        sub_1000112FC();
        v31 = v30(v28, v29);
        sub_100009B7C(&v108);
        if ((v31 & 1) == 0 && (v3 & 1) == 0)
        {
          sub_100010270();
          sub_1002E7A58();
          if (v32)
          {

            if (qword_1006A0B40 != -1)
            {
              sub_1000080FC(&qword_1006A0B40);
            }

            v33 = type metadata accessor for Logger();
            sub_1000075F0(v33, qword_1006BA640);
            v34 = Logger.logObject.getter();
            v35 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v34, v35))
            {
              *sub_100006DC4() = 0;
              sub_100008A90(&_mh_execute_header, v36, v37, "Not regenerating start recording disclosure");
              sub_10000E668();
            }

LABEL_30:
            sub_100009B7C(v111);
            goto LABEL_31;
          }

          v31 = 0;
        }

LABEL_21:
        if (qword_1006A0B40 != -1)
        {
          sub_1000080FC(&qword_1006A0B40);
        }

        HIDWORD(v93) = v31;
        v50 = type metadata accessor for Logger();
        sub_1000075F0(v50, qword_1006BA640);
        sub_10000D724();

        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.info.getter();

        v53 = os_log_type_enabled(v51, v52);
        v101 = v3;
        v95 = v14;
        v94 = v16;
        if (v53)
        {
          LODWORD(v92) = v52;
          v54 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v107 = v91;
          *v54 = 136315906;
          v56 = v109;
          v55 = v110;
          sub_100009B14(&v108, v109);
          sub_1000112FC();
          LOBYTE(v104[0]) = v57(v56, v55) & 1;
          v58 = String.init<A>(reflecting:)();
          v60 = sub_100017CAC(v58, v59);

          *(v54 + 4) = v60;
          *(v54 + 12) = 2080;
          sub_1002E86CC(v1 + OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_startDisclosureBeepChecksum, v104);
          v61 = v105;
          v62 = v13;
          if (v105)
          {
            v63 = v106;
            sub_100009B14(v104, v105);
            sub_1000112FC();
            LOBYTE(v63) = v64(v61, v63);
            sub_100009B7C(v104);
            LOBYTE(v104[0]) = v63 & 1;
            v65 = String.init<A>(reflecting:)();
            v67 = v66;
          }

          else
          {
            sub_100009A5C(v104, &qword_1006A4398, &qword_10057F118);
            v67 = 0xE300000000000000;
            v65 = 7104878;
          }

          v68 = sub_10002741C(v65, v67, &v107);

          *(v54 + 14) = v68;
          *(v54 + 22) = 2080;
          sub_100010270();
          sub_1002E7A58();
          LOBYTE(v104[0]) = v69 & 1;
          v70 = String.init<A>(reflecting:)();
          v72 = sub_10002741C(v70, v71, &v107);

          *(v54 + 24) = v72;
          *(v54 + 32) = 2080;
          LOBYTE(v104[0]) = v101 & 1;
          v73 = String.init<A>(reflecting:)();
          v75 = sub_10002741C(v73, v74, &v107);

          *(v54 + 34) = v75;
          _os_log_impl(&_mh_execute_header, v51, v92, "Regenerating start disclosure because startDisclosureUtterance:%s beep: %s fileExists:%s force: %s", v54, 0x2Au);
          v76 = v91;
          swift_arrayDestroy();
          sub_100005F40(v76);
          sub_10000E668();
        }

        else
        {
          v62 = v13;

          sub_100009B7C(&v108);
        }

        v77 = v1[2];
        v92 = "stopRecordingDisclosure";

        v91 = v77;
        v78 = v97;
        sub_1002E6CA4();
        static Locale.current.getter();
        sub_10000AF74(v62, 0, 1, v4);
        v80 = v1[3];
        v79 = v1[4];
        swift_unknownObjectRetain();
        v81 = v103;
        sub_1002E6CA4();
        sub_10000D724();
        v82 = swift_allocObject();
        v83 = v96;
        v82[2] = v1;
        v82[3] = v83;
        v84 = v98;
        v82[4] = v98;
        sub_10002F0C8(&v108, (v82 + 5));

        BYTE1(v89) = BYTE4(v93) & 1;
        LOBYTE(v89) = v101 & 1;
        v88 = v79;
        v85 = v91;
        sub_100463470(v91, v83, v84, 0xD000000000000018, v92 | 0x8000000000000000, v78, v62, v80, v88, v81, v89, sub_1002E8B1C, v82, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v102, v103);

        swift_unknownObjectRelease();

        v86 = *(v94 + 8);
        v87 = v95;
        v86(v81, v95);
        sub_100009A5C(v62, &qword_1006A5360, &qword_10057CB80);
        v86(v78, v87);
        goto LABEL_30;
      }

      sub_100009A5C(&v108, &qword_1006A4398, &qword_10057F118);
    }

    v31 = 1;
    goto LABEL_21;
  }

  if (qword_1006A0B40 != -1)
  {
    sub_1000080FC(&qword_1006A0B40);
  }

  v38 = type metadata accessor for Logger();
  sub_1000075F0(v38, qword_1006BA640);
  v103 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v103, v39))
  {
    v40 = sub_100005274();
    v41 = sub_100005E84();
    v111[0] = v41;
    *v40 = 136315138;
    static Locale.current.getter();
    v42 = sub_100006884();
    v43(v42);
    v44 = String.init<A>(reflecting:)();
    v46 = v45;
    (*(v6 + 8))(v10, v4);
    v47 = sub_10002741C(v44, v46, v111);

    *(v40 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v103, v39, "Unable to localize start disclosure for locale %s. Not creating start recording disclosure", v40, 0xCu);
    sub_100009B7C(v41);
    sub_100005F40(v41);
    sub_100008AE8();

LABEL_31:
    sub_100005EDC();
    return;
  }

  sub_100005EDC();
}

uint64_t sub_1002E6CA4()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0828 != -1)
  {
    swift_once();
  }

  v4 = sub_10000AF9C(v0, qword_1006A4200);
  (*(v1 + 16))(v3, v4, v0);
  URL.appendingPathComponent(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002E6DE4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a6;
  v46 = a3;
  v47 = a4;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v40 - v14;
  __chkstk_darwin(v13);
  v17 = &v40 - v16;
  v43 = type metadata accessor for DisclosureDataSource(0);
  sub_1002E6CA4();
  URL.deletingLastPathComponent()();
  v18 = *(v9 + 8);
  v18(v12, v8);
  v44 = "StopDisclosure.caf";
  URL.appendingPathComponent(_:)();
  v18(v15, v8);
  v19 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v20 = String._bridgeToObjectiveC()();

  v21 = [v19 fileExistsAtPath:v20];

  v22 = v21 ^ 1;
  if ((a1 & 1) != 0 || v22)
  {
    if (qword_1006A0B50 != -1)
    {
      swift_once();
    }

    v42 = a5;
    v23 = type metadata accessor for Logger();
    sub_10000AF9C(v23, qword_1006BA670);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      HIDWORD(v40) = v25;
      v27 = v26;
      v41 = swift_slowAlloc();
      *&v49[0] = v41;
      *v27 = 136315394;
      HIBYTE(v48) = a1 & 1;
      v28 = String.init<A>(reflecting:)();
      v30 = sub_10002741C(v28, v29, v49);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2080;
      HIBYTE(v48) = v22;
      v31 = String.init<A>(reflecting:)();
      v33 = sub_10002741C(v31, v32, v49);

      *(v27 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v24, BYTE4(v40), "wroteNewFile (%s or disclosureWithEndtone doesn't exist %s. Creating new disclosure with endtone.", v27, 0x16u);
      swift_arrayDestroy();
    }

    v34 = v46;

    sub_1002E6CA4();
    v35 = *(v34 + 16);
    sub_100009AB0(v45, v49);
    v36 = swift_allocObject();
    sub_10002F0C8(v49, v36 + 16);
    *(v36 + 56) = v34;
    v37 = v35;

    sub_100464E90(v47, v42, v15, 0xD00000000000001BLL, v44 | 0x8000000000000000, 1, v37, sub_1002E8B2C, v36, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, *&v49[0], *(&v49[0] + 1));

    v18(v15, v8);
  }

  return (v18)(v17, v8);
}

uint64_t sub_1002E7238(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2[3];
  v5 = a2[4];
  sub_100009B14(a2, v4);
  (*(v5 + 16))(v4, v5);
  sub_1002E86CC(a3 + OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_startDisclosureBeepChecksum, v9);
  v6 = v10;
  if (!v10)
  {
    return sub_100009A5C(v9, &qword_1006A4398, &qword_10057F118);
  }

  v7 = v11;
  sub_100009B14(v9, v10);
  (*(v7 + 16))(v6, v7);
  return sub_100009B7C(v9);
}

void sub_1002E7308()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Locale();
  sub_100007FEC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100007FDC();
  v10 = v9 - v8;
  sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  sub_100006688();
  __chkstk_darwin(v11);
  v13 = &v79 - v12;
  v14 = type metadata accessor for URL();
  sub_100007FEC();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100007BAC();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v23 = &v79 - v22;
  type metadata accessor for DisclosureDataSource(0);
  sub_1002E57C8();
  if (v25)
  {
    v84 = v24;
    v85 = v13;
    v86 = v16;
    v87 = v25;
    v82 = v23;
    v83 = v20;
    v26 = v3;
    sub_100009AB0(v1 + OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_endDisclosureUtteranceChecksum, v93);
    v27 = v94;
    v28 = v95;
    sub_100009B14(v93, v94);
    sub_1000112FC();
    if ((v29(v27, v28) & 1) != 0 || (v26 & 1) != 0 || (sub_10000F5FC(), sub_1002E7A58(), (v30 & 1) == 0))
    {
      if (qword_1006A0B40 != -1)
      {
        sub_1000080FC(&qword_1006A0B40);
      }

      v81 = v14;
      v36 = type metadata accessor for Logger();
      sub_1000075F0(v36, qword_1006BA640);
      sub_10000D724();

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.info.getter();

      v39 = os_log_type_enabled(v37, v38);
      HIDWORD(v80) = v26;
      if (v39)
      {
        v40 = sub_100005E84();
        v89 = swift_slowAlloc();
        *v40 = 136315650;
        LODWORD(v79) = v38;
        v42 = v91;
        v41 = v92;
        sub_100009B14(&v90, v91);
        sub_1000112FC();
        HIBYTE(v88) = v43(v42, v41) & 1;
        v44 = String.init<A>(reflecting:)();
        v46 = sub_100017CAC(v44, v45);

        *(v40 + 4) = v46;
        *(v40 + 12) = 2080;
        sub_10000F5FC();
        sub_1002E7A58();
        HIBYTE(v88) = v47 & 1;
        v48 = String.init<A>(reflecting:)();
        v50 = sub_10002741C(v48, v49, &v89);

        *(v40 + 14) = v50;
        *(v40 + 22) = 2080;
        HIBYTE(v88) = v26 & 1;
        v51 = String.init<A>(reflecting:)();
        v53 = sub_10002741C(v51, v52, &v89);

        *(v40 + 24) = v53;
        _os_log_impl(&_mh_execute_header, v37, v79, "Regenerating stop recording disclosure because endDisclosureUtteranceChanged:%s fileExists:%s force:%s", v40, 0x20u);
        swift_arrayDestroy();
        sub_10000E668();
        sub_100005F40(v40);
      }

      else
      {

        sub_100009B7C(&v90);
      }

      v62 = v1[2];
      v79 = "StartDisclosureWithTone.m4a";

      v63 = v62;
      v64 = v82;
      sub_1002E7C7C();
      v65 = v85;
      static Locale.current.getter();
      sub_10000AF74(v65, 0, 1, v4);
      v67 = v1[3];
      v66 = v1[4];
      swift_unknownObjectRetain();
      v68 = v83;
      sub_1002E7C7C();
      v69 = v94;
      v70 = v95;
      sub_100009B14(v93, v94);
      sub_1000112FC();
      LOBYTE(v62) = v71(v69, v70);
      sub_10000D724();
      sub_100015D0C();
      v72 = swift_allocObject();
      sub_10002F0C8(&v90, v72 + 16);
      BYTE1(v77) = v62 & 1;
      LOBYTE(v77) = BYTE4(v80) & 1;
      sub_100463470(v63, v84, v87, 0xD000000000000017, v79 | 0x8000000000000000, v64, v65, v67, v66, v68, v77, sub_1002E8B14, v72, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, BYTE1(v87), v88, v89);

      swift_unknownObjectRelease();

      v73 = *(v86 + 8);
      v74 = v81;
      v73(v68, v81);
      sub_100009A5C(v65, &qword_1006A5360, &qword_10057CB80);
      v73(v64, v74);
    }

    else
    {

      if (qword_1006A0B40 != -1)
      {
        sub_1000080FC(&qword_1006A0B40);
      }

      v31 = type metadata accessor for Logger();
      sub_1000075F0(v31, qword_1006BA640);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v32, v33))
      {
        *sub_100006DC4() = 0;
        sub_100008A90(&_mh_execute_header, v34, v35, "Not regenerating stop recording disclosure");
        sub_10000E668();
      }
    }

    sub_100009B7C(v93);
    goto LABEL_21;
  }

  if (qword_1006A0B40 != -1)
  {
    sub_1000080FC(&qword_1006A0B40);
  }

  v54 = type metadata accessor for Logger();
  sub_1000075F0(v54, qword_1006BA640);
  v87 = Logger.logObject.getter();
  v55 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v87, v55))
  {
    v56 = sub_100005274();
    v57 = sub_100005E84();
    v93[0] = v57;
    *v56 = 136315138;
    static Locale.current.getter();
    sub_1002E8ABC();
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    (*(v6 + 8))(v10, v4);
    v61 = sub_10002741C(v58, v60, v93);

    *(v56 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v87, v55, "Unable to localize end recording disclosure for locale %s. Not creating end recording disclosure", v56, 0xCu);
    sub_100009B7C(v57);
    sub_100008AE8();
    sub_10000E668();

LABEL_21:
    sub_100005EDC();
    return;
  }

  sub_100005EDC();
}

void sub_1002E7A58()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for URL();
  sub_100007FEC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100007FDC();
  v10 = v9 - v8;
  if (qword_1006A0B40 != -1)
  {
    sub_1000080FC(&qword_1006A0B40);
  }

  v11 = type metadata accessor for Logger();
  sub_1000075F0(v11, qword_1006BA640);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v21 = v1;
    v14 = sub_100005274();
    v15 = sub_100005E84();
    v22 = v15;
    *v14 = 136315138;
    v16 = type metadata accessor for DisclosureDataSource(0);
    v3(v16);
    URL.path.getter();
    (*(v6 + 8))(v10, v4);
    v17 = String.init<A>(reflecting:)();
    v19 = sub_10002741C(v17, v18, &v22);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, v21, v14, 0xCu);
    sub_100009B7C(v15);
    sub_100005F40(v15);
    sub_100005F40(v14);
  }

  type metadata accessor for DisclosureDataSource(0);
  v20 = swift_unknownObjectRetain();
  v3(v20);
  sub_100272258();
  swift_unknownObjectRelease();
  (*(v6 + 8))(v10, v4);
  sub_100005EDC();
}

uint64_t sub_1002E7C7C()
{
  v0 = type metadata accessor for URL();
  sub_100007FEC();
  __chkstk_darwin(v1);
  sub_100007FDC();
  sub_10000F9FC();
  if (qword_1006A0828 != -1)
  {
    sub_100017138(&qword_1006A0828);
  }

  sub_10000AF9C(v0, qword_1006A4200);
  v2 = sub_100035A20();
  v3(v2);
  URL.appendingPathComponent(_:)();
  v4 = sub_100006884();
  return v5(v4);
}

uint64_t sub_1002E7D80(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    v3 = a3[3];
    v4 = a3[4];
    sub_100009B14(a3, v3);
    return (*(v4 + 16))(v3, v4);
  }

  return result;
}

uint64_t sub_1002E7DDC()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_languageManager;
  type metadata accessor for LanguageManager();
  sub_1000080D0();
  (*(v2 + 8))(v0 + v1);

  sub_100009B7C((v0 + OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_startDisclosureUtteranceChecksum));
  sub_100009A5C(v0 + OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_startDisclosureBeepChecksum, &qword_1006A4398, &qword_10057F118);
  sub_100009B7C((v0 + OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_endDisclosureUtteranceChecksum));
  return v0;
}

uint64_t sub_1002E7EA0()
{
  sub_1002E7DDC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for DisclosureDataSource(uint64_t a1)
{
  result = qword_1006A4258;
  if (!qword_1006A4258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002E7F4C(uint64_t a1)
{
  result = type metadata accessor for LanguageManager();
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

void sub_1002E8018()
{
  if (qword_1006A0B40 != -1)
  {
    sub_1000080FC(&qword_1006A0B40);
  }

  v0 = type metadata accessor for Logger();
  sub_1000075F0(v0, qword_1006BA640);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_10000BB44(v2))
  {
    *sub_100006DC4() = 0;
    sub_100005FAC(&_mh_execute_header, v3, v4, "locale changed- checking if we should regenerate recording disclosures");
    sub_100008AE8();
  }

  sub_1002E6380();

  sub_1002E7308();
}

void sub_1002E81BC()
{
  if (qword_1006A0B40 != -1)
  {
    sub_1000080FC(&qword_1006A0B40);
  }

  v0 = type metadata accessor for Logger();
  sub_1000075F0(v0, qword_1006BA640);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_10000BB44(v2))
  {
    *sub_100006DC4() = 0;
    sub_100005FAC(&_mh_execute_header, v3, v4, "assets changed- checking if we should regenerate recording disclosures");
    sub_100008AE8();
  }

  sub_1002E6380();

  sub_1002E7308();
}

uint64_t sub_1002E82CC()
{
  v0 = type metadata accessor for URL();
  sub_100007FEC();
  __chkstk_darwin(v1);
  sub_100007FDC();
  sub_10000F9FC();
  if (qword_1006A0828 != -1)
  {
    sub_100017138(&qword_1006A0828);
  }

  sub_10000AF9C(v0, qword_1006A4200);
  v2 = sub_100035A20();
  v3(v2);
  URL.appendingPathComponent(_:)();
  v4 = sub_100006884();
  return v5(v4);
}

uint64_t sub_1002E83D0()
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v0._countAndFlagsBits = 0x6E6974656572472FLL;
  v0._object = 0xEA00000000007367;
  String.append(_:)(v0);

  return v2;
}

uint64_t sub_1002E8440()
{
  v0 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = [objc_opt_self() defaultManager];
  v4 = [v3 URLsForDirectory:5 inDomains:1];

  v5 = type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1002E8B38(v6, v2);

  result = sub_100015468(v2, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    sub_1002E83D0();
    URL.appendingPathComponent(_:isDirectory:)();

    return (*(*(v5 - 8) + 8))(v2, v5);
  }

  return result;
}

uint64_t sub_1002E85A4()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002861B8(v2, qword_1006A4200);
  sub_10000AF9C(v0, qword_1006A4200);
  type metadata accessor for DisclosureDataSource(0);
  sub_1002E8440();
  URL.appendingPathComponent(_:)();
  return (*(v1 + 8))(v4, v0);
}

void *sub_1002E86B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t sub_1002E86CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A4398, &qword_10057F118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E8744(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = sub_10026D814(&qword_1006A3FB8, &qword_100583110);
  sub_100007FEC();
  v8 = v7;
  sub_100006688();
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100006688();
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  v15 = OBJC_IVAR____TtC13callservicesd21SiriSpeechSynthesizer_queue;
  v16 = type metadata accessor for TaskPriority();
  sub_10000AF74(v14, 1, 1, v16);
  (*(v8 + 104))(v11, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v6);
  AsyncSerialQueue.init(priority:bufferingPolicy:)(v14, v11, a3 + v15);
  *(a3 + 16) = a1;
  *(a3 + 24) = &off_100622278;
  *(a3 + 32) = v4;
  swift_unknownObjectRetain();
  dispatch thunk of DaemonSession.keepActive.setter();

  return a3;
}

uint64_t sub_1002E88C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = type metadata accessor for Locale();
  sub_100007FEC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100007FDC();
  v16 = v15 - v14;
  *(a5 + 16) = 0xD000000000000029;
  *(a5 + 24) = 0x8000000100567170;
  *(a5 + 32) = [objc_opt_self() defaultManager];
  *(a5 + 80) = 0;
  *(a5 + 84) = 0;
  *(a5 + 88) = 0;
  *(a5 + 96) = sub_100271E98;
  *(a5 + 104) = 0;
  *(a5 + 56) = a1;
  *(a5 + 64) = &off_1006222B0;
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  *(a5 + 72) = a4;

  v17 = a4;
  static Locale.current.getter();
  v18 = sub_10027128C(v16, 0, 0);
  (*(v12 + 8))(v16, v10);
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10057CA80;
  *(v19 + 32) = v18;
  swift_unknownObjectRetain();
  v20 = v18;
  sub_10028A7A0(v19);
  swift_unknownObjectRelease();

  sub_100271C00();

  return a5;
}

unint64_t sub_1002E8ABC()
{
  result = qword_1006A3448;
  if (!qword_1006A3448)
  {
    type metadata accessor for Locale();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3448);
  }

  return result;
}

uint64_t sub_1002E8B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for URL();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_10000AF74(a2, v7, 1, v6);
}

uint64_t sub_1002E8C5C(uint64_t a1)
{
  result = sub_1000057CC();
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1004596E8(result, v3, 0, a1);
  }
}

uint64_t sub_1002E8D54(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void *a4)
{
  v7 = a2();
  v9 = v8;
  v11 = v10;
  v12 = sub_1002E93F8(a1);
  v14 = v13;
  v16 = v15;
  v17 = sub_1002E96D0(v7, v9, v11 & 1, v12, v13, v15 & 1);
  sub_100010000(v12, v14, v16 & 1);
  v18 = sub_10000F614();
  if (v17)
  {
    sub_100010000(v18, v19, v20);
    return 0;
  }

  else
  {
    sub_10001E594(v18, v19, v20, a1, a3, a4);
    v21 = v22;
    v23 = sub_10000F614();
    sub_100010000(v23, v24, v25);
  }

  return v21;
}

id sub_1002E8E2C(unint64_t a1)
{
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  sub_10039C390(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    return specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    return *(a1 + 32);
  }
}

uint64_t sub_1002E8ED4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  result = a2();
  if (v7)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v6)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return a3();
  }
}

uint64_t CSDCall.spamModel(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1002E9188();
  v25 = v11;
  v26 = v10;
  v12 = sub_1002E9294();
  if (!v12)
  {
    v13 = [v3 remoteParticipantHandles];
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    sub_1002E932C();
    v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000A0CC();
    v12 = sub_1002E8D54(v14, v15, &qword_1006A2640, TUHandle_ptr);
  }

  v16 = [v3 callUUID];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  [v3 callDuration];
  Date.init(timeIntervalSinceNow:)();
  Date.timeIntervalSince1970.getter();
  v21 = v20;
  (*(v7 + 8))(v9, v6);
  v29 = 0;
  v22 = v25;
  *a3 = v26;
  *(a3 + 8) = v22;
  *(a3 + 16) = v27;
  *(a3 + 24) = a2;
  *(a3 + 32) = v12;
  *(a3 + 40) = v17;
  *(a3 + 48) = v19;
  *(a3 + 56) = v21;
  *(a3 + 64) = 0;
  *(a3 + 65) = *v28;
  *(a3 + 68) = *&v28[3];
  *(a3 + 72) = 0xD000000000000019;
  *(a3 + 80) = 0x8000000100567280;
}

unint64_t sub_1002E9188()
{
  v1 = [v0 remoteParticipantHandles];
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_1002E932C();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = sub_10001E550();

  v3 = [v0 provider];
  v4 = [v3 isFaceTimeProvider];

  v5 = 0x656D697465636166;
  if (v2 == 1)
  {
    v5 = 0xD000000000000013;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

id sub_1002E9294()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 activeConversationForCall:v0];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 initiator];

  return v3;
}

unint64_t sub_1002E932C()
{
  result = qword_1006A3C50;
  if (!qword_1006A3C50)
  {
    sub_100006AF0(255, &qword_1006A2640, TUHandle_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3C50);
  }

  return result;
}

uint64_t sub_1002E93F8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.endIndex.getter();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

uint64_t sub_1002E9474(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1002E94F0()
{
  sub_100018168();
  if (!v5)
  {
    if (v4)
    {
      sub_100008B14();
      v30 = __CocoaSet.element(at:)();
      v6 = type metadata accessor for ActivitySession();
      sub_100008338(v6, v7, v8, v6, v9, v10, v11, v12, v30, v31);
      swift_dynamicCast();
      sub_100008348();
      return;
    }

    goto LABEL_23;
  }

  if (v4)
  {
    type metadata accessor for ActivitySession();
    sub_100008B14();
    if (__CocoaSet.Index.age.getter() == *(v0 + 36))
    {
      sub_100008B14();
      v13 = __CocoaSet.Index.element.getter();
      sub_100008338(v13, v14, v15, v16, v17, v18, v19, v20, v13, v31);
      swift_dynamicCast();
      v3 = v32;
      NSObject._rawHashValue(seed:)(*(v0 + 40));
      sub_10001512C();
      while (1)
      {
        sub_100010288();
        if ((v21 & 1) == 0)
        {
          goto LABEL_22;
        }

        v22 = *(*(v0 + 48) + 8 * v2);
        v23 = static NSObject.== infix(_:_:)();

        if (v23)
        {
          goto LABEL_15;
        }
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (v2 < 0 || (sub_100017158(), v24 ^ v25 | v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_10000E684();
  if ((v26 & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(v0 + 36) != v1)
  {
    __break(1u);
LABEL_15:
  }

  sub_100008348();

  v29 = v27;
}

uint64_t sub_1002E96D0(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
      return static __CocoaSet.Index.== infix(_:_:)();
    }
  }

  else if ((a6 & 1) == 0)
  {
    if (a2 == a5)
    {
      return result == a4;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002E9704(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

Swift::Int sub_1002E9784(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10026D814(&qword_1006A4468, &unk_10057F1B0);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
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

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 7);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:

    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v11 = -1 << *(v2 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    if (((-1 << v12) & ~*&v7[8 * (v12 >> 6)]) == 0)
    {
      v15 = 0;
      v16 = (63 - v11) >> 6;
      while (++v13 != v16 || (v15 & 1) == 0)
      {
        v17 = v13 == v16;
        if (v13 == v16)
        {
          v13 = 0;
        }

        v15 |= v17;
        v18 = *&v7[8 * v13];
        if (v18 != -1)
        {
          v14 = __clz(__rbit64(~v18)) + (v13 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v14 = __clz(__rbit64((-1 << v12) & ~*&v7[8 * (v12 >> 6)])) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *&v7[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
    v5 &= v5 - 1;
    v19 = v2[6] + 40 * v14;
    *(v19 + 32) = v22;
    *v19 = v20;
    *(v19 + 16) = v21;
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1002E99B4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC13callservicesd33ConversationLinkSyncIDSInteractor_service) devices];
  sub_1002EAEC8();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002E9A28(v2);
  v4 = v3;

  return v4;
}

void sub_1002E9A28(uint64_t a1)
{
  v2 = sub_10000B6F4(a1);
  if (v2)
  {
    v3 = v2;
    sub_10039A2E0(0, v2 & ~(v2 >> 63), 0);
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
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v6 = *(a1 + 8 * v4 + 32);
        }

        v7 = v6;
        v8 = IDSCopyIDForDevice();
        if (!v8)
        {
          goto LABEL_19;
        }

        v9 = v8;
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        v14 = _swiftEmptyArrayStorage[2];
        v13 = _swiftEmptyArrayStorage[3];
        if (v14 >= v13 >> 1)
        {
          sub_10039A2E0(v13 > 1, v14 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v14 + 1;
        v15 = &_swiftEmptyArrayStorage[2 * v14];
        v15[4] = v10;
        v15[5] = v12;
        ++v4;
        if (v5 == v3)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_13:

    sub_10001E78C(_swiftEmptyArrayStorage);
  }
}

void *sub_1002E9B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(v3 + OBJC_IVAR____TtC13callservicesd33ConversationLinkSyncIDSInteractor_service) service];
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1002E9784(a3);
  v7 = Set._bridgeToObjectiveC()().super.isa;

  sub_10026D814(&qword_1006A4458, &unk_100588070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20[1] = v9;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  Dictionary.init(dictionaryLiteral:)();
  v10 = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = 0;
  v20[0] = 0;
  v11 = [v5 sendData:isa toDestinations:v7 priority:300 options:v10 identifier:v20 error:&v19];
  swift_unknownObjectRelease();

  v13 = v19;
  v12 = v20[0];
  if (!v11)
  {
    v15 = v19;
    v16 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_6:
    swift_willThrow();

    return v12;
  }

  if (!v20[0])
  {
    sub_1002EAE74();
    swift_allocError();
    v17 = v13;
    goto LABEL_6;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  return v12;
}

void sub_1002E9DDC(void *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = sub_1004229E0(a2);
    if (v4)
    {
      sub_1002E9A28(v4);
      v6 = v5;

      v7 = OBJC_IVAR____TtC13callservicesd33ConversationLinkSyncIDSInteractor_knownDestinations;
      v8 = *(v2 + OBJC_IVAR____TtC13callservicesd33ConversationLinkSyncIDSInteractor_knownDestinations);

      sub_1002F5440(v9, v6);
      v11 = v10;

      if (v11)
      {

        if (qword_1006A0B20 != -1)
        {
          sub_100008228(&qword_1006A0B20);
        }

        v12 = type metadata accessor for Logger();
        sub_10000AF9C(v12, qword_1006BA5E0);
        v13 = a1;
        oslog = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(oslog, v14))
        {
          sub_100005274();
          v15 = sub_100007974();
          *v8 = 138412290;
          *(v8 + 4) = v13;
          *v15 = a1;
          v16 = v13;
          _os_log_impl(&_mh_execute_header, oslog, v14, "ConversationLinkSync: Ignoring devicesChanged signal from IDSService because destinations are the same {service:%@}", v8, 0xCu);
          sub_10028CA5C(v15);
          sub_100005F40(v15);
          sub_100005F40(v8);
        }
      }

      else
      {
        *(v2 + v7) = v6;

        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1003F72B4(v2, v6);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_1002EA084(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (a2)
    {
      sub_1003F28CC(*(a2 + 16) != 0);

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1002EADAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationLinkSyncIDSInteractor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002EAE60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100290AC4(a1, a2);
  }

  return a1;
}

unint64_t sub_1002EAE74()
{
  result = qword_1006A4460;
  if (!qword_1006A4460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A4460);
  }

  return result;
}

unint64_t sub_1002EAEC8()
{
  result = qword_1006A4470;
  if (!qword_1006A4470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A4470);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConversationLinkSyncIDSInteractor.IDSInteractorError(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
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
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1002EAFBC()
{
  result = qword_1006A4478;
  if (!qword_1006A4478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A4478);
  }

  return result;
}

void sub_1002EB010()
{
  sub_100005EF4();
  v1 = v0;
  v20 = v2;
  v21 = v3;
  v5 = v4;
  v6 = type metadata accessor for UUID();
  sub_100007FEC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100007FDC();
  v12 = v11 - v10;
  *&v1[OBJC_IVAR___CSDSimulatedAVCSession_participants] = _swiftEmptyDictionarySingleton;
  swift_unknownObjectWeakInit();
  v13 = &v1[OBJC_IVAR___CSDSimulatedAVCSession_sessionIdentifier];
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v8 + 8))(v12, v6);
  *v13 = v14;
  v13[1] = v16;
  v1[OBJC_IVAR___CSDSimulatedAVCSession_isVideo] = 1;
  v1[OBJC_IVAR___CSDSimulatedAVCSession_isAudioReady] = 1;
  v1[OBJC_IVAR___CSDSimulatedAVCSession_isUplinkMuted] = 0;
  v1[OBJC_IVAR___CSDSimulatedAVCSession_isAudioEnabled] = 1;
  v17 = OBJC_IVAR___CSDSimulatedAVCSession_isVideoEnabled;
  v1[OBJC_IVAR___CSDSimulatedAVCSession_isVideoEnabled] = 1;
  v1[OBJC_IVAR___CSDSimulatedAVCSession_isVideoPaused] = 0;
  v1[OBJC_IVAR___CSDSimulatedAVCSession_isAudioPaused] = 0;
  v18 = OBJC_IVAR___CSDSimulatedAVCSession_isOneToOneModeEnabled;
  v1[OBJC_IVAR___CSDSimulatedAVCSession_isOneToOneModeEnabled] = 0;
  v1[OBJC_IVAR___CSDSimulatedAVCSession_isRelaying] = 0;
  v1[OBJC_IVAR___CSDSimulatedAVCSession_isScreening] = 0;
  *&v1[OBJC_IVAR___CSDSimulatedAVCSession_presentationState] = 0;
  v19 = &v1[OBJC_IVAR___CSDSimulatedAVCSession_presentationRect];
  *v19 = 0u;
  v19[1] = 0u;
  swift_unknownObjectWeakAssign();
  *&v1[OBJC_IVAR___CSDSimulatedAVCSession_queue] = v5;
  v1[v17] = v20;
  v1[v18] = v21;
  v22.receiver = v1;
  v22.super_class = type metadata accessor for SimulatedAVCSession();
  objc_msgSendSuper2(&v22, "init");
  swift_unknownObjectRelease();
  sub_100005EDC();
}

uint64_t sub_1002EB310()
{
  v1 = *(v0 + OBJC_IVAR___CSDSimulatedAVCSession_sessionIdentifier);

  return v1;
}

void sub_1002EB850(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR___CSDSimulatedAVCSession_presentationRect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

uint64_t sub_1002EB8B4(uint64_t a1)
{
  v3 = OBJC_IVAR___CSDSimulatedAVCSession_participants;
  swift_beginAccess();
  if (*(*(v1 + v3) + 16))
  {
    sub_1002DA664(a1);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_1002EB958()
{
  sub_100005EF4();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v11);
  sub_100007FDC();
  sub_100007CD8();
  sub_100007FEC();
  v32 = v13;
  v33 = v12;
  __chkstk_darwin(v12);
  sub_100007FDC();
  v15 = sub_100015D18(v14);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10057CA70;
  *(v16 + 56) = sub_1002ECA10();
  sub_10000E9BC();
  *(v16 + 64) = sub_10000EDF8(v17, v18, &protocol conformance descriptor for NSObject);
  *(v16 + 32) = v10;
  *(v16 + 96) = &type metadata for Bool;
  *(v16 + 104) = &protocol witness table for Bool;
  *(v16 + 72) = v8;
  *(v16 + 136) = &type metadata for Bool;
  *(v16 + 144) = &protocol witness table for Bool;
  *(v16 + 112) = v6;
  *(v16 + 176) = &type metadata for Bool;
  *(v16 + 184) = &protocol witness table for Bool;
  *(v16 + 152) = v4;
  v19 = v10;
  v20 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Add participant %@ videoEnabled %d audioPaused %d screenEnabled %d", 66, 2, &_mh_execute_header, v15, v20, v16);

  [v19 identifier];
  v21 = OBJC_IVAR___CSDSimulatedAVCSession_participants;
  swift_beginAccess();
  v22 = v19;
  swift_isUniquelyReferenced_nonNull_native();
  v35 = *&v2[v21];
  sub_1003790C0();
  *&v2[v21] = v35;
  swift_endAccess();
  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  *(v23 + 24) = v22;
  v34[4] = sub_1002ECA5C;
  v34[5] = v23;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 1107296256;
  sub_10000E698();
  v34[2] = v24;
  v34[3] = &unk_100625790;
  v25 = _Block_copy(v34);
  v26 = v22;
  v27 = v2;
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_100008360();
  sub_10000EDF8(v28, v29, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  v30 = sub_100007764();
  v31(v30);
  (*(v32 + 8))(v1, v33);

  sub_100005EDC();
}

void *sub_1002EBCE8(uint64_t a1, void *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result addedRemoteParticipantWithIdentifier:objc_msgSend(a2 updatedAudioEnabled:"identifier") updatedVideoEnabled:1 streamToken:1 screenToken:0 captionsToken:{0, 0}];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002EBE00()
{
  sub_100005EF4();
  v2 = v0;
  v4 = v3;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v5);
  sub_100007FDC();
  v27 = sub_100007CD8();
  sub_100007FEC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100007FDC();
  v10 = sub_100015D18(v9);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10057D690;
  *(v11 + 56) = sub_1002ECA10();
  sub_10000E9BC();
  *(v11 + 64) = sub_10000EDF8(v12, v13, &protocol conformance descriptor for NSObject);
  *(v11 + 32) = v4;
  v14 = v4;
  v15 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Remove participant %@", 21, 2, &_mh_execute_header, v10, v15, v11);

  v16 = [v14 identifier];
  swift_beginAccess();
  v17 = sub_100383CA0(v16);
  swift_endAccess();

  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  *(v18 + 24) = v14;
  v28[4] = sub_1002ECA54;
  v28[5] = v18;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 1107296256;
  sub_10000E698();
  v28[2] = v19;
  v28[3] = &unk_100625740;
  v20 = _Block_copy(v28);
  v21 = v14;
  v22 = v2;
  static DispatchQoS.unspecified.getter();
  sub_100008360();
  sub_10000EDF8(v23, v24, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  v25 = sub_100007764();
  v26(v25);
  (*(v7 + 8))(v1, v27);

  sub_100005EDC();
}

void *sub_1002EC128(uint64_t a1, void *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result removedRemoteParticipantWithIdentifier:objc_msgSend(a2 didSucceed:{"identifier"), 1}];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002EC258()
{
  sub_100005EF4();
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v2);
  sub_100007FDC();
  v3 = sub_100007CD8();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v8 = sub_100015D18(v7);
  v9 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Start simulated AVCSession", 26, 2, &_mh_execute_header, v8, v9, _swiftEmptyArrayStorage);

  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  sub_10000A0F0(v10);
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v18[2] = v11;
  v18[3] = &unk_1006256F0;
  v12 = _Block_copy(v18);
  v13 = v0;
  static DispatchQoS.unspecified.getter();
  sub_100008360();
  sub_10000EDF8(v14, v15, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  v16 = sub_100007764();
  v17(v16);
  (*(v5 + 8))(v1, v3);

  sub_100005EDC();
}

void *sub_1002EC490(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result session:a1 didStart:1 error:0];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002EC598()
{
  sub_100005EF4();
  v3 = v2;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v4);
  sub_100007FDC();
  v23 = sub_100007CD8();
  sub_100007FEC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100007FDC();
  v9 = sub_100015D18(v8);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10057D690;
  v11 = sub_1002910C8(v3);
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_100009D88();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v14 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Stop simulated AVCSession with error %@", 39, 2, &_mh_execute_header, v9, v14, v10);

  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  sub_10000A0F0(v15);
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v24[2] = v16;
  v24[3] = &unk_1006256A0;
  v17 = _Block_copy(v24);
  v18 = v0;
  static DispatchQoS.unspecified.getter();
  sub_100008360();
  sub_10000EDF8(v19, v20, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  v21 = sub_100007764();
  v22(v21);
  (*(v6 + 8))(v1, v23);

  sub_100005EDC();
}

void *sub_1002EC834(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result session:a1 didStopWithError:0];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1002EC938(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SimulatedAVCSession();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1002ECA10()
{
  result = qword_1006A4530;
  if (!qword_1006A4530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A4530);
  }

  return result;
}

uint64_t sub_1002ECA78()
{
  sub_100010060();
  swift_unknownObjectWeakInit();
  v7 = v0;
  v2 = (v1 + OBJC_IVAR___CSDConversationManagerDataSourceObserverStorage_observers);
  v3 = v0;
  os_unfair_lock_lock(v2);
  sub_1002EE374(v6, &v5);
  sub_100381DC0();
  os_unfair_lock_unlock(v2);
  return sub_1002EE3AC(v6);
}

void *sub_1002ECB80@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  v3 = (v1 + OBJC_IVAR___CSDConversationManagerDataSourceObserverStorage_observers);
  os_unfair_lock_lock(v3);

  swift_getAtKeyPath();

  os_unfair_lock_unlock(v3);

  a1[3] = sub_10026D814(&qword_1006A4580, &qword_10057F3A8);
  a1[4] = sub_1002EE2D4();
  result = swift_allocObject();
  *a1 = result;
  result[2] = v5;
  result[3] = sub_1002ECCCC;
  result[4] = 0;
  result[5] = sub_1002EE338;
  result[6] = 0;
  result[7] = sub_1002EE344;
  result[8] = 0;
  return result;
}

uint64_t sub_1002ECC88(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

id sub_1002ECCCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  v5 = result;
  if (result)
  {
    v6 = *(a1 + 8);
    result = v6;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

id sub_1002ECD5C()
{
  sub_1002ECB80(v11);
  v0 = [objc_allocWithZone(NSMapTable) init];
  v1 = sub_100009B14(v11, v11[3]);
  __chkstk_darwin(v1);
  (*(v3 + 16))(&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1002A1D5C(v8);
  dispatch thunk of Sequence.makeIterator()();
  while (1)
  {
    sub_10001BDB8(v8, AssociatedTypeWitness);
    dispatch thunk of IteratorProtocol.next()();
    if (!v6)
    {
      break;
    }

    v4 = v7;
    [v0 setObject:v7 forKey:v6];
    swift_unknownObjectRelease();
  }

  sub_100009B7C(v8);
  sub_100009B7C(v11);
  return v0;
}

uint64_t sub_1002ECF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  if (a1)
  {
    sub_100010060();
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v6[13] = v7;
  v6[14] = v9;

  return _swift_task_switch(sub_1002ECFB8, v7, v9);
}

uint64_t sub_1002ECFB8()
{
  v1 = *(v0 + 72);
  sub_1002ECB80((v0 + 16));
  v2 = *(v0 + 40);
  v3 = sub_100009B14((v0 + 16), v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v6 = swift_task_alloc();
  *(v6 + 16) = v1;
  v7 = swift_task_alloc();
  *(v7 + 16) = sub_1002EDCD4;
  *(v7 + 24) = v6;
  v8 = Sequence.filter(_:)();
  *(v0 + 120) = v8;

  sub_100009B7C((v0 + 16));
  v9 = v8[2];
  if (v9 < 2)
  {
    if (v9)
    {
      v11 = v8[4];
      *(v0 + 152) = v11;
      v12 = v8[5];
      *(v0 + 160) = v12;
      swift_unknownObjectRetain();
      v13 = v12;
      v22 = *(v0 + 80);

      v14 = sub_1002EDD40();
      v15 = swift_task_alloc();
      *(v0 + 168) = v15;
      *(v15 + 16) = v22;
      *(v15 + 32) = v11;
      v16 = v13;
      v17 = swift_task_alloc();
      *(v0 + 176) = v17;
      *v17 = v0;
      v17[1] = sub_1002ED588;
      v18 = *(v0 + 56);
      v19 = *(v0 + 64);

      return __ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lF(v17, v13, v14, v18, v19, &unk_10057F328, v15, &type metadata for () + 1);
    }

    else
    {

      sub_100009EF4();

      return v20();
    }
  }

  else
  {
    v10 = swift_allocObject();
    *(v0 + 128) = v10;
    *(v10 + 16) = *(v0 + 80);

    return _swift_task_switch(sub_1002ED2D0, 0, 0);
  }
}

uint64_t sub_1002ED2D0()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = swift_task_alloc();
  v0[17] = v3;
  v3[2] = v2;
  v3[3] = sub_1002EDE54;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_1002ED3C4;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_1002ED3C4()
{
  sub_100006810();
  sub_100005F18();
  v1 = *v0;
  sub_100008060();
  *v2 = v1;

  return _swift_task_switch(sub_1002ED4E8, 0, 0);
}

uint64_t sub_1002ED500()
{
  sub_100006810();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_100009EF4();

    return v2();
  }

  return result;
}

uint64_t sub_1002ED588()
{
  sub_100006810();
  sub_100005F18();
  v3 = v2;
  v4 = *v1;
  sub_100008060();
  *v5 = v4;

  if (!v0)
  {

    v7 = *(v3 + 104);
    v8 = *(v3 + 112);

    return _swift_task_switch(sub_1002ED694, v7, v8);
  }

  return result;
}

uint64_t sub_1002ED694()
{
  sub_100006810();

  swift_unknownObjectRelease();
  sub_100009EF4();

  return v1();
}

uint64_t sub_1002ED6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  sub_10026D814(&qword_1006A5310, &qword_10057D580);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();

  return _swift_task_switch(sub_1002ED7A0, 0, 0);
}

uint64_t sub_1002ED7A0()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (v2)
  {
    v24 = **(v0 + 104);
    v23 = type metadata accessor for TaskPriority();
    v3 = (v1 + 40);
    do
    {
      v26 = v2;
      v5 = *(v0 + 136);
      v4 = *(v0 + 144);
      v7 = *(v0 + 120);
      v6 = *(v0 + 128);
      v8 = *(v3 - 1);
      v9 = *v3;
      v25 = v3;
      sub_10000AF74(v4, 1, 1, v23);
      v10 = swift_allocObject();
      v10[2] = 0;
      v10[3] = 0;
      v10[4] = v7;
      v10[5] = v6;
      v10[6] = v8;
      sub_1002EE1BC(v4, v5);
      LODWORD(v7) = sub_100015468(v5, 1, v23);
      swift_unknownObjectRetain_n();
      v11 = v9;

      v12 = *(v0 + 136);
      if (v7 == 1)
      {
        sub_1000099A4(*(v0 + 136), &qword_1006A5310, &qword_10057D580);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(*(v23 - 8) + 8))(v12, v23);
      }

      if (v10[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v13 = dispatch thunk of Actor.unownedExecutor.getter();
        v15 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = 0;
        v15 = 0;
      }

      v16 = sub_1002EDD40();
      v17 = swift_allocObject();
      *(v17 + 16) = &unk_10057F358;
      *(v17 + 24) = v10;
      v18 = v11;

      if (v15 | v13)
      {
        v19 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v13;
        *(v0 + 40) = v15;
      }

      else
      {
        v19 = 0;
      }

      v20 = *(v0 + 144);
      *(v0 + 80) = 1;
      *(v0 + 88) = v19;
      *(v0 + 96) = v24;
      *(v0 + 48) = 6;
      *(v0 + 56) = v0 + 80;
      *(v0 + 64) = v18;
      *(v0 + 72) = v16;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_1000099A4(v20, &qword_1006A5310, &qword_10057D580);
      v3 = v25 + 2;
      --v2;
    }

    while (v26 != 1);
  }

  sub_100009EF4();

  return v21();
}

uint64_t sub_1002EDAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  return _swift_task_switch(sub_1002EDAD8, 0, 0);
}

uint64_t sub_1002EDAD8()
{
  sub_100006810();
  (*(v0 + 16))(*(v0 + 32));
  sub_100009EF4();

  return v1();
}

uint64_t sub_1002EDB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return _swift_task_switch(sub_1002EDB5C, 0, 0);
}

uint64_t sub_1002EDB5C()
{
  sub_100006810();
  (*(v0 + 16))(*(v0 + 32));
  sub_100009EF4();

  return v1();
}

id sub_1002EDBC0()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR___CSDConversationManagerDataSourceObserverStorage_observers];
  v3 = Dictionary.init(dictionaryLiteral:)();
  *v2 = 0;
  *(v2 + 1) = v3;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t sub_1002EDCD4(void *a1)
{
  if (*(v1 + 16))
  {
    return [a1 respondsToSelector:?];
  }

  else
  {
    return 1;
  }
}

unint64_t sub_1002EDD40()
{
  result = qword_1006A4578;
  if (!qword_1006A4578)
  {
    sub_1002A8914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A4578);
  }

  return result;
}

uint64_t sub_1002EDD98()
{
  sub_100010060();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  v6 = sub_100008A48(v5);
  *v6 = v7;
  v6[1] = sub_100035FE4;

  return sub_1002EDB38(v1, v2, v3, v4);
}

uint64_t sub_1002EDE7C()
{
  sub_100010060();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = sub_100008A48(v6);
  *v7 = v8;
  v7[1] = sub_100035FE4;

  return sub_1002ED6F4(v2, v0, v3, v4, v5);
}

uint64_t sub_1002EDF38(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1002EE020;

  return v4();
}

uint64_t sub_1002EE020()
{
  sub_100006810();
  sub_100005F18();
  v1 = *v0;
  sub_100008060();
  *v2 = v1;

  sub_100009EF4();

  return v3();
}

uint64_t sub_1002EE104()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_100008A48(v6);
  *v7 = v8;
  v7[1] = sub_100035FE0;

  return sub_1002EDAB4(v1, v2, v3, v4, v5);
}

uint64_t sub_1002EE1BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002EE22C()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_100008A48(v2);
  *v3 = v4;
  v3[1] = sub_100035FE0;

  return sub_1002EDF38(v1);
}

unint64_t sub_1002EE2D4()
{
  result = qword_1006A4588;
  if (!qword_1006A4588)
  {
    sub_10026DCB4(&qword_1006A4580, &qword_10057F3A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A4588);
  }

  return result;
}

uint64_t sub_1002EE344@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100349788(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1002EE3DC()
{
  v15 = _typeName(_:qualified:)();
  v16 = v1;
  v2._countAndFlagsBits = 40;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  _StringGuts.grow(_:)(16);

  strcpy(&v14, "audioSession=");
  HIWORD(v14._object) = -4864;
  v3 = *(v0 + 24);
  swift_unknownObjectRetain();
  sub_10026D814(&unk_1006A4680, &unk_10057F488);
  v4._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v4);

  sub_100008384();
  String.append(_:)(v14);

  v14._countAndFlagsBits = 0x3D6C61636F6CLL;
  v14._object = 0xE600000000000000;
  v5 = *(v0 + 32);
  if (v5)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  sub_100008384();
  String.append(_:)(v14);

  if ((v5 & 1) == 0)
  {
    _StringGuts.grow(_:)(18);

    v14._countAndFlagsBits = 0x7365536F69647561;
    v14._object = 0xEF3D44496E6F6973;
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(ObjectType, v3);
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    sub_100008384();
    v11._countAndFlagsBits = 0x7365536F69647561;
    v11._object = 0xEF3D44496E6F6973;
    String.append(_:)(v11);
  }

  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  return v15;
}

unint64_t sub_1002EE62C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v8 = a2;
  v9 = result;
  v11 = *(v4 + 48);
  v10 = *(v4 + 56);
  v12 = *(v5 + 64);
  v13 = *(v5 + 72);
  if (v12 == 1)
  {
    if (a3 == 1)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (a3 == 1)
  {
LABEL_5:
    v39[0] = v11;
    v39[1] = v10;
    v39[2] = v12;
    v40 = v13;
    v41 = result;
    v42 = a2;
    v43 = a3;
    v44 = a4;
    sub_1002F145C(result, a2, a3);
    sub_1002F145C(v11, v10, v12);
    v14 = sub_1000099A4(v39, &unk_1006A4690, &unk_10057F498);
    if (a3 == 1)
    {
      v36 = _swiftEmptyDictionarySingleton;
LABEL_19:
      v38 = v8;
      v19 = sub_100010B20(v14);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10057D6A0;
      v21 = sub_100048C4C(v9, v8, a3, v6);
      v23 = v22;
      *(v20 + 56) = &type metadata for String;
      v24 = sub_100009D88();
      *(v20 + 64) = v24;
      *(v20 + 32) = v21;
      *(v20 + 40) = v23;
      v39[0] = v5;

      v25 = String.init<A>(reflecting:)();
      *(v20 + 96) = &type metadata for String;
      *(v20 + 104) = v24;
      *(v20 + 72) = v25;
      *(v20 + 80) = v26;
      v27 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Setting audio activation context: %@ for provider %@", 52, 2, &_mh_execute_header, v19, v27, v20);

      v28 = *(v5 + 24);
      ObjectType = swift_getObjectType();
      (*(v28 + 56))(v36, ObjectType, v28);

      v37 = sub_100010B20(v30);
      v31 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Successfully set audio activation context", 41, 2, &_mh_execute_header, v37, v31, _swiftEmptyArrayStorage);

      v32 = *(v5 + 48);
      v33 = *(v5 + 56);
      v34 = *(v5 + 64);
      *(v5 + 48) = v9;
      *(v5 + 56) = v38;
      *(v5 + 64) = a3;
      *(v5 + 72) = v6;
      return sub_1002F1470(v32, v33, v34);
    }

    v15 = v8;
    v16 = HIDWORD(v9);
LABEL_18:

    v18 = v9 & 1 | (v16 << 32);
    v8 = v15;
    v36 = sub_100048CB4(v18, v15, a3, v6 & 0x101);
    v14 = sub_1002F1470(v9, v15, a3);
    goto LABEL_19;
  }

  v15 = a2;
  v16 = HIDWORD(result);
  if (HIDWORD(result) != HIDWORD(v11) || ((v11 ^ result) & 1) != 0)
  {
    goto LABEL_18;
  }

  if (v12)
  {
    if (!a3)
    {
      goto LABEL_18;
    }

    if (v10 != a2 || v12 != a3)
    {
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_18;
      }

      result = v9;
      a2 = v15;
    }

    v35 = a3;
  }

  else
  {
    if (a3)
    {
      goto LABEL_18;
    }

    v35 = 0;
  }

  return sub_1002F1470(result, a2, v35);
}

uint64_t sub_1002EEACC(void *__src, char a2)
{
  v3 = v2;
  v4 = __src;
  memcpy(__dst, __src, 0xA8uLL);
  v114 = sub_100043014(__dst);
  memcpy(v122, v4, sizeof(v122));
  v5 = sub_100043014(v122);
  v6 = &_s10Foundation3URLVMa_ptr_0;
  __srca = v4;
  if (v5 != 1)
  {
    v7 = v122[17];
    if (v122[17])
    {
      v8 = v122[16];

      sub_100017840();
      v9 = v5;
      v10 = *(v5 + 16);
      if (v10 >= *(v5 + 24) >> 1)
      {
        sub_100017840();
        v9 = v5;
      }

      v9[2] = v10 + 1;
      v11 = &v9[2 * v10];
      v11[4] = v8;
      v11[5] = v7;
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    v12 = sub_100010B20(v5);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10057D690;
    v121[0] = v9;

    sub_10026D814(&unk_1006A3C60, &unk_10057D910);
    v14 = String.init<A>(reflecting:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100009D88();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v17 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Requesting audio session be attributed to %@", 44, 2, &_mh_execute_header, v12, v17, v13);

    v18 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v18 + 64))(v9, ObjectType, v18);

    LOBYTE(v120[0]) = BYTE1(__dst[7]);
    if (__dst[15])
    {
      v4 = __srca;
      v6 = &_s10Foundation3URLVMa_ptr_0;
    }

    else
    {
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
      if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
      {
        sub_1002F14C8(__srca, v121);

        v27 = 0;
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_1002F14C8(__srca, v121);

        v27 = 0;
        if ((v25 & 1) == 0 && LOBYTE(v120[0]))
        {
          v28 = sub_100010B20(v26);
          v29 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("Requesting audio session enable audio during Wombat", 51, 2, &_mh_execute_header, v28, v29, _swiftEmptyArrayStorage);

          v27 = 1;
        }
      }

      v30 = sub_1002E2BD4(0xD00000000000002CLL, 0x8000000100566C80, 0x707845616964654DLL);
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = [objc_allocWithZone(NSNumber) initWithBool:v27];
      (*(v18 + 72))(v31, v33, v34, ObjectType, v18);
      v6 = &_s10Foundation3URLVMa_ptr_0;
      v4 = __srca;
      sub_1000099A4(__srca, &unk_1006A41A0, &qword_10057EFE0);
    }
  }

  if ([*(v3 + 40) sharePlayInCallsEnabled])
  {
    memcpy(v121, v4, sizeof(v121));
    if (sub_100043014(v121) == 1)
    {
      goto LABEL_20;
    }

    v119[0] = HIBYTE(__dst[6]);
    LOBYTE(v120[0]) = BYTE6(__dst[6]);
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;
    if (v43 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v45 == v46)
    {

      goto LABEL_43;
    }

    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v48)
    {
      goto LABEL_43;
    }

    if (v120[0])
    {
      v113 = v119[0];
      if (qword_1006A0B30 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_10000AF9C(v49, qword_1006BA610);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 67109120;
        *(v52 + 4) = 1;
        _os_log_impl(&_mh_execute_header, v50, v51, "Setting IsSharePlayCapableCallSession (%{BOOL}d)", v52, 8u);
      }

      v53 = *(v3 + 24);
      v54 = swift_getObjectType();
      v55 = [objc_allocWithZone(v6[59]) initWithBool:1];
      v56 = *(v53 + 72);
      v56(0xD00000000000001DLL, 0x8000000100567E60, v55, v54, v53);

      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 67109120;
        *(v59 + 4) = v113;
        _os_log_impl(&_mh_execute_header, v57, v58, "Setting IsExpanseCallSession (%{BOOL}d)", v59, 8u);
      }

      v60 = [objc_allocWithZone(NSNumber) initWithBool:v113];
      v56(0xD000000000000014, 0x8000000100567E40, v60, v54, v53);

      goto LABEL_42;
    }

    if (!v119[0])
    {
LABEL_20:
      if (qword_1006A0B30 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_10000AF9C(v35, qword_1006BA610);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 67109120;
        _os_log_impl(&_mh_execute_header, v36, v37, "Setting IsExpanseCallSession (%{BOOL}d)", v38, 8u);
      }

      v39 = *(v3 + 24);
      v40 = swift_getObjectType();
      v41 = [objc_allocWithZone(v6[59]) initWithBool:0];
      v42 = *(v39 + 72);
      v42(0xD000000000000014, 0x8000000100567E40, v41, v40, v39);

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v64 = swift_slowAlloc();
        *v64 = 67109120;
        _os_log_impl(&_mh_execute_header, v61, v62, "Setting IsSharePlayCapableCallSession (%{BOOL}d)", v64, 8u);
      }

      v65 = [objc_allocWithZone(NSNumber) initWithBool:0];
      v42(0xD00000000000001DLL, 0x8000000100567E60, v65, v40, v39);

LABEL_42:
      v6 = &_s10Foundation3URLVMa_ptr_0;
      goto LABEL_43;
    }

    if (qword_1006A0B30 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    sub_10000AF9C(v79, qword_1006BA610);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "Detected inconsistent state where wantsSharePlayCapableCall=false but wantsSharePlayCapableCall=true, setting neither", v82, 2u);
    }
  }

LABEL_43:
  v66 = *(v3 + 24);
  v67 = swift_getObjectType();
  if (qword_1006A0810 != -1)
  {
    swift_once();
  }

  v69 = qword_1006BA260;
  v68 = *algn_1006BA268;
  v70 = [objc_allocWithZone(v6[59]) initWithBool:1];
  v71 = v69;
  v72 = *(v66 + 72);
  v72(v71, v68, v70, v67, v66);
  v110 = v67;
  v73 = v66;

  if (qword_1006A0818 != -1)
  {
    swift_once();
  }

  v74 = qword_1006BA270;
  v75 = *algn_1006BA278;
  v76 = [objc_allocWithZone(v6[59]) initWithBool:1];
  v72(v74, v75, v76, v110, v66);

  memcpy(v120, __srca, sizeof(v120));
  if (sub_100043014(v120) != 1)
  {
    v77 = *(v66 + 80);
    v78 = BYTE3(v120[6]);
    memcpy(v119, __dst, sizeof(v119));
    sub_100042F60(v119, v118);
    v77(v78 & 1, v110, v66);
    sub_1000099A4(__srca, &unk_1006A41A0, &qword_10057EFE0);
  }

  v83 = sub_1002EFE00(__srca);
  v84 = a2 & 1;
  v112 = sub_100010B20(v83);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_10057DDF0;
  LOBYTE(v118[0]) = v114 == 0;
  v86 = String.init<A>(reflecting:)();
  v88 = v87;
  *(v85 + 56) = &type metadata for String;
  v89 = sub_100009D88();
  *(v85 + 32) = v86;
  *(v85 + 40) = v88;
  *(v85 + 96) = &type metadata for UInt;
  *(v85 + 104) = &protocol witness table for UInt;
  *(v85 + 64) = v89;
  *(v85 + 72) = v84;
  v118[0] = v3;

  v90 = String.init<A>(reflecting:)();
  *(v85 + 136) = &type metadata for String;
  *(v85 + 144) = v89;
  *(v85 + 112) = v90;
  *(v85 + 120) = v91;
  memcpy(v119, (v3 + 80), sizeof(v119));
  if (sub_100043014(v119) == 1)
  {
    v92 = 0;
  }

  else
  {
    v92 = *(v3 + 88);
    v93 = v92;
  }

  v94 = sub_100291088(v92);
  v96 = v95;

  *(v85 + 176) = &type metadata for String;
  *(v85 + 184) = v89;
  *(v85 + 152) = v94;
  *(v85 + 160) = v96;
  memcpy(v118, (v3 + 80), 0xA8uLL);
  if (sub_100043014(v118) == 1)
  {
    v97 = 0;
  }

  else
  {
    v97 = *(v3 + 96);
    v98 = v97;
  }

  v99 = sub_100048C34(v97);
  v101 = v100;

  *(v85 + 216) = &type metadata for String;
  *(v85 + 224) = v89;
  *(v85 + 192) = v99;
  *(v85 + 200) = v101;
  v102 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Setting audio active: %@ options: %ld for provider %@ category %@ mode %@", 73, 2, &_mh_execute_header, v112, v102, v85);

  (*(v73 + 88))(v114 == 0, v84, v110, v73);
  memcpy(v117, (v3 + 80), sizeof(v117));
  memcpy((v3 + 80), __srca, 0xA8uLL);
  sub_1002F14C8(__srca, v116);
  v103 = sub_1000099A4(v117, &unk_1006A41A0, &qword_10057EFE0);
  v104 = sub_100010B20(v103);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_10057D6A0;
  v116[0] = v114 == 0;
  v106 = String.init<A>(reflecting:)();
  *(v105 + 56) = &type metadata for String;
  *(v105 + 64) = v89;
  *(v105 + 32) = v106;
  *(v105 + 40) = v107;
  *(v105 + 96) = &type metadata for UInt;
  *(v105 + 104) = &protocol witness table for UInt;
  *(v105 + 72) = v84;
  v108 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Successfully set audio active: %@ options: %ld", 46, 2, &_mh_execute_header, v104, v108, v105);
}

id sub_1002EFE00(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = [*(v1 + 40) sessionBasedMutingEnabled];
  if (result)
  {
    memcpy(v21, __src, sizeof(v21));
    result = sub_100043014(v21);
    if (result != 1)
    {
      v4 = v21[153];
      if (v21[154])
      {
        memcpy(v20, __dst, sizeof(v20));
        v5 = sub_100042F60(v20, v19);
      }

      else
      {
        v6 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        v8 = *(v6 + 32);
        memcpy(v20, __dst, sizeof(v20));
        sub_100042F60(v20, v19);
        v5 = v8(ObjectType, v6);
        if ((v5 ^ v4))
        {
          v23 = sub_100010B20(v5);
          sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
          v9 = swift_allocObject();
          *(v9 + 16) = xmmword_10057D690;
          v10 = v4 & 1;
          v19[0] = v4 & 1;
          v11 = String.init<A>(reflecting:)();
          v13 = v12;
          *(v9 + 56) = &type metadata for String;
          *(v9 + 64) = sub_100009D88();
          *(v9 + 32) = v11;
          *(v9 + 40) = v13;
          v14 = static os_log_type_t.default.getter();
          v15 = v23;
          os_log(_:dso:log:type:_:)("Activating audioSession with muteSessionInput %@", 48, 2, &_mh_execute_header, v23, v14, v9);

          (*(v6 + 48))(v10, ObjectType, v6);
          return sub_1000099A4(__src, &unk_1006A41A0, &qword_10057EFE0);
        }
      }

      v16 = sub_100010B20(v5);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_10057D690;
      *(v17 + 56) = &type metadata for Bool;
      *(v17 + 64) = &protocol witness table for Bool;
      *(v17 + 32) = v4;
      static os_log_type_t.default.getter();
      sub_100008378();
      os_log(_:dso:log:type:_:)(v18);
      sub_1000099A4(__src, &unk_1006A41A0, &qword_10057EFE0);
    }
  }

  return result;
}

uint64_t sub_1002F00B0(NSString **__src)
{
  v2 = v1;
  memcpy(__dst, __src, sizeof(__dst));
  sub_10001514C(__srca);
  sub_10001514C(v35);
  if (sub_100043014(v35) != 1)
  {
    v4 = v35[50];
    memcpy(v32, __srca, sizeof(v32));
    sub_100042F60(v32, v31);
    if (v4 != sub_1002F0484())
    {
      sub_1002F04D8(v4);
    }

    sub_1000099A4(__srca, &unk_1006A41A0, &qword_10057EFE0);
  }

  v5 = sub_10000F624();
  sub_1002F145C(v5, v6, v7);
  v8 = sub_10000F624();
  v12 = sub_1002EE62C(v8, v9, v10, v11);
  if (__src[19])
  {
    goto LABEL_12;
  }

  v13 = *(__src + 37);
  v14 = sub_100010B20(v12);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10057D6A0;
  v16 = *v2;
  *v32 = *v2;
  sub_10026D814(&qword_1006A46A0, &qword_10057F4A8);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v15 + 56) = &type metadata for String;
  v20 = sub_100009D88();
  *(v15 + 64) = v20;
  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  *(v15 + 96) = &type metadata for Int32;
  *(v15 + 104) = &protocol witness table for Int32;
  *(v15 + 72) = v13;
  static os_log_type_t.default.getter();
  sub_100008378();
  os_log(_:dso:log:type:_:)(v21);

  if ((v13 - 1) < 2)
  {
    *&v32[24] = &type metadata for Bool;
    v32[0] = 0;
    goto LABEL_10;
  }

  if ((v13 - 3) < 2)
  {
    *&v32[24] = &type metadata for Bool;
    v32[0] = 1;
LABEL_10:
    sub_10003EBF0(v32, v31);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100040430();
LABEL_11:
    v22 = objc_opt_self();
    sub_10003E7C0();
    sub_1002E4C68(v23, v22);
    v25 = sub_100010B20(v24);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10057D6A0;
    *v32 = v16;
    v27 = String.init<A>(describing:)();
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = v20;
    *(v26 + 32) = v27;
    *(v26 + 40) = v28;
    *(v26 + 96) = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
    *(v26 + 104) = sub_1002E4C04();
    *(v26 + 72) = _swiftEmptyDictionarySingleton;
    v29 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("%@: Setting audio session properties: %@", 40, 2, &_mh_execute_header, v25, v29, v26);

LABEL_12:
    sub_1002F09EC(__src[1], __src[2]);
    sub_1002F04D8(*(__src + 50));
    memcpy(v31, __dst, sizeof(v31));
    ScreenSharingActivityManager.carPlayDidDisconnect()();
    memcpy(v32, v31, sizeof(v32));
    return sub_1002EEACC(v32, 0);
  }

  if (!v13)
  {
    goto LABEL_11;
  }

  type metadata accessor for TUTelephonyCallSubType(0);
  *v32 = v13;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

BOOL sub_1002F0484()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 40))(ObjectType, v1) == 10;
}

void sub_1002F04D8(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1002F0484();
  if ((a1 & 1) != v5)
  {
    if (a1)
    {
      v6 = 10;
    }

    else
    {
      v6 = 0;
    }

    if (*(v1 + 32) == 1)
    {
      v7 = sub_100010B20(v5);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_10057CA70;
      *(v8 + 56) = &type metadata for Int;
      *(v8 + 64) = &protocol witness table for Int;
      *(v8 + 32) = v6;
      v38[0] = v2;

      v9 = String.init<A>(reflecting:)();
      v11 = v10;
      *(v8 + 96) = &type metadata for String;
      v12 = sub_100009D88();
      *(v8 + 104) = v12;
      *(v8 + 72) = v9;
      *(v8 + 80) = v11;
      memcpy(__dst, v2 + 10, 0xA8uLL);
      if (sub_100043014(__dst) == 1)
      {
        v13 = 0;
      }

      else
      {
        v13 = v2[11];
        v24 = v13;
      }

      v25 = sub_100291088(v13);
      v27 = v26;

      *(v8 + 136) = &type metadata for String;
      *(v8 + 144) = v12;
      *(v8 + 112) = v25;
      *(v8 + 120) = v27;
      memcpy(v38, v2 + 10, sizeof(v38));
      if (sub_100043014(v38) == 1)
      {
        v28 = 0;
      }

      else
      {
        v28 = v2[12];
        v29 = v28;
      }

      v30 = sub_100048C34(v28);
      v32 = v31;

      *(v8 + 176) = &type metadata for String;
      *(v8 + 184) = v12;
      *(v8 + 152) = v30;
      *(v8 + 160) = v32;
      static os_log_type_t.default.getter();
      sub_100008378();
      os_log(_:dso:log:type:_:)(v33, v4);

      v34 = v2[3];
      ObjectType = swift_getObjectType();
      v36 = (*(v34 + 104))(v6, ObjectType, v34);
      v23 = sub_100010B20(v36);
      static os_log_type_t.default.getter();
    }

    else
    {
      v14 = sub_100010B20(v5);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_10057D6A0;
      *(v15 + 56) = &type metadata for Int;
      *(v15 + 64) = &protocol witness table for Int;
      *(v15 + 32) = v6;
      __dst[0] = v2;

      v16 = String.init<A>(reflecting:)();
      v18 = v17;
      *(v15 + 96) = &type metadata for String;
      *(v15 + 104) = sub_100009D88();
      *(v15 + 72) = v16;
      *(v15 + 80) = v18;
      static os_log_type_t.default.getter();
      sub_100008378();
      os_log(_:dso:log:type:_:)(v19);

      v20 = v2[3];
      v21 = swift_getObjectType();
      v22 = (*(v20 + 112))(v6, v21, v20);
      v23 = sub_100010B20(v22);
      static os_log_type_t.default.getter();
    }

    sub_100008378();
    os_log(_:dso:log:type:_:)(v37);
  }
}

void sub_1002F09EC(NSString *a1, NSString *a2)
{
  if (*(v2 + 32) == 1)
  {
    if (a2)
    {
      v40 = a2;
    }

    else
    {
      v40 = AVAudioSessionModeDefault;
    }

    v5 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 8);
    v8 = a2;
    v9 = v7(ObjectType, v5);
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
    {
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v17 = (*(v5 + 16))(ObjectType, v5);
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
    if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
    {
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {
LABEL_20:
        v39 = sub_100010B20(v16);
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_10057E830;
        type metadata accessor for Category(0);
        v38 = a1;
        v25 = String.init<A>(reflecting:)();
        v27 = v26;
        *(v24 + 56) = &type metadata for String;
        v28 = sub_100009D88();
        *(v24 + 64) = v28;
        *(v24 + 32) = v25;
        *(v24 + 40) = v27;
        type metadata accessor for Mode(0);
        v29 = v40;
        v30 = String.init<A>(reflecting:)();
        *(v24 + 96) = &type metadata for String;
        *(v24 + 104) = v28;
        *(v24 + 72) = v30;
        *(v24 + 80) = v31;

        v32 = String.init<A>(reflecting:)();
        *(v24 + 136) = &type metadata for String;
        *(v24 + 144) = v28;
        *(v24 + 112) = v32;
        *(v24 + 120) = v33;
        v34 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Setting audio category: %@ mode: %@ for provider %@", 51, 2, &_mh_execute_header, v39, v34, v24);

        v35 = sub_100350834(v38, v29, ObjectType, v5);
        v36 = sub_100010B20(v35);
        v37 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Successfully set audio mode", 27, 2, &_mh_execute_header, v36, v37, _swiftEmptyArrayStorage);

        return;
      }
    }
  }
}

uint64_t sub_1002F0ED0(char a1)
{
  v2 = v1;
  sub_1002BA0C4(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1002EEACC(__dst, a1);
  if (qword_1006A0B30 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA610);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Setting kMXSessionProperty_PrefersNoInterruptionsDuringRemoteDeviceControl=false", v7, 2u);
  }

  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  if (qword_1006A0818 != -1)
  {
    swift_once();
  }

  v10 = qword_1006BA270;
  v11 = *algn_1006BA278;
  v12 = [objc_allocWithZone(NSNumber) initWithBool:0];
  (*(v8 + 72))(v10, v11, v12, ObjectType, v8);

  if ((*(v2 + 32) & 1) == 0)
  {
    sub_1002F04D8(0);
  }

  v13 = sub_10000A744();
  sub_1002EE62C(v13, v14, v15, v16);
  return (*(v8 + 120))(0, ObjectType, v8);
}

uint64_t sub_1002F12D8(uint64_t a1)
{
  v2 = sub_100010B20(a1);
  v3 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Resetting state", 15, 2, &_mh_execute_header, v2, v3, _swiftEmptyArrayStorage);

  v4 = sub_10000A744();
  sub_1002EE62C(v4, v5, v6, v7);
  sub_1002BA0C4(__src);
  sub_10001514C(v10);
  memcpy((v1 + 80), __src, 0xA8uLL);
  return sub_1000099A4(v10, &unk_1006A41A0, &qword_10057EFE0);
}

uint64_t *sub_1002F1380()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1002F1470(v0[6], v0[7], v0[8]);
  sub_10001514C(v2);
  sub_1000099A4(v2, &unk_1006A41A0, &qword_10057EFE0);
  return v0;
}

uint64_t sub_1002F13E0()
{
  sub_1002F1380();

  return _swift_deallocClassInstance(v0, 248, 7);
}

uint64_t sub_1002F145C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1002F1470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_1002F1484()
{
  result = qword_1006A2B90;
  if (!qword_1006A2B90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A2B90);
  }

  return result;
}

uint64_t sub_1002F14C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A41A0, &qword_10057EFE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1002F1538(uint64_t a1)
{
  v3 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000083A0();
  (*(*(v4 - 8) + 16))(v1, a1, v4);
  sub_10000AF74(v1, 0, 1, v4);
  v5 = objc_allocWithZone(type metadata accessor for ActivitySessionCreationRequestResult(0));
  return sub_1002F176C(0, 0, v1);
}

id sub_1002F1618(void *a1)
{
  v3 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000083A0();
  sub_10000AF74(v1, 1, 1, v4);
  v5 = objc_allocWithZone(type metadata accessor for ActivitySessionCreationRequestResult(0));
  v6 = a1;
  return sub_1002F176C(1, a1, v1);
}

id sub_1002F16C4()
{
  v0 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for UUID();
  sub_10000AF74(v2, 1, 1, v3);
  v4 = objc_allocWithZone(type metadata accessor for ActivitySessionCreationRequestResult(0));
  return sub_1002F176C(2, 0, v2);
}

id sub_1002F176C(char a1, uint64_t a2, uint64_t a3)
{
  v3[OBJC_IVAR___CSDActivitySessionCreationRequestResult_status] = a1;
  *&v3[OBJC_IVAR___CSDActivitySessionCreationRequestResult_activitySession] = a2;
  sub_1002A5F90(a3, &v3[OBJC_IVAR___CSDActivitySessionCreationRequestResult_joinedConversationUUID]);
  v7.receiver = v3;
  v7.super_class = type metadata accessor for ActivitySessionCreationRequestResult(0);
  v5 = objc_msgSendSuper2(&v7, "init");
  sub_10001D334(a3);
  return v5;
}

callservicesd::InjectionMode_optional __swiftcall InjectionMode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

callservicesd::InjectionMode_optional sub_1002F1858@<W0>(Swift::Int *a1@<X0>, callservicesd::InjectionMode_optional *a2@<X8>)
{
  result.value = InjectionMode.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1002F1884@<X0>(uint64_t *a1@<X8>)
{
  result = InjectionMode.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

id sub_1002F18C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySessionCreationRequestResult(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ActivitySessionCreationRequestResult(uint64_t a1)
{
  result = qword_1006A46E0;
  if (!qword_1006A46E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002F1998(uint64_t a1)
{
  sub_100296D6C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for ActivitySessionCreationRequestResult.Status(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}