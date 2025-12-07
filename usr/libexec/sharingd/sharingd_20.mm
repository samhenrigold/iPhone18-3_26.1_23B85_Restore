uint64_t sub_1003880C8()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
  }

  v4 = *(v0 + 112);
  *(v0 + 64) = *(v0 + 96);
  *(v0 + 80) = v4;
  if (*(v0 + 88))
  {
    if (swift_dynamicCast())
    {
      v5 = *(v0 + 168);
      sub_100026AC0(*(v0 + 128), *(v0 + 136));
      *(v5 + 64) = 1;
      goto LABEL_13;
    }
  }

  else
  {
    sub_100005508(v0 + 64, &unk_1009746F0, &qword_1007F90B0);
  }

  if (qword_100973620 != -1)
  {
    swift_once();
  }

  sub_10000C4AC(*(v0 + 264), qword_100978850);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Contact history token nil - skipping db drop", v8, 2u);
  }

LABEL_13:
  v9 = *(v0 + 176);

  return _swift_task_switch(sub_100389CB0, v9, 0);
}

uint64_t sub_1003882C8()
{
  v2 = v0[21];
  v1 = v0[22];

  v0[37] = sub_100384C28(v3, v2, sub_100325FD0, sub_100325FD0);

  v0[38] = sub_100384C28(v4, v2, sub_100326A24, sub_100326A24);

  return _swift_task_switch(sub_1003883BC, v1, 0);
}

uint64_t sub_1003883BC()
{

  v1 = v0[1];
  v2 = v0[37];
  v3 = v0[38];

  return v1(v2, v3);
}

uint64_t sub_100388428(uint64_t a1)
{
  *(v1 + 80) = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;
  *(v1 + 88) = static AirDropActor.shared;

  return _swift_task_switch(sub_1003884F4, v2, 0);
}

uint64_t sub_1003884F4()
{
  if (qword_1009735E8 != -1)
  {
    swift_once();
  }

  v0 = static IDMSActor.shared;

  return _swift_task_switch(sub_1003885B8, v0, 0);
}

uint64_t sub_1003885B8()
{
  v1 = v0[11];
  v0[12] = sub_100326E88();
  v0[13] = v2;

  return _swift_task_switch(sub_100388658, v1, 0);
}

uint64_t sub_100388658()
{
  v176 = v0;
  v1 = v0[12];
  if (*(v1 + 16) || *(v0[13] + 16))
  {
    v162 = [objc_allocWithZone(CNContactStore) init];
    sub_10028088C(&qword_100974F70, &unk_100804260);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1007FDA40;
    *(v2 + 32) = CNContactIdentifierKey;
    *(v2 + 40) = CNContactEmailAddressesKey;
    *(v2 + 48) = CNContactPhoneNumbersKey;
    v3 = v1 + 56;
    v4 = -1;
    v5 = -1 << *(v1 + 32);
    if (-v5 < 64)
    {
      v4 = ~(-1 << -v5);
    }

    v6 = v4 & *(v1 + 56);
    v7 = (63 - v5) >> 6;
    v8 = CNContactIdentifierKey;
    v9 = CNContactEmailAddressesKey;
    v10 = CNContactPhoneNumbersKey;

    v11 = 0;
    v173 = v0;
    v158 = v1 + 56;
    v155 = v1;
    v163 = v7;
    if (!v6)
    {
      while (1)
      {
LABEL_9:
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v12 >= v7)
        {
          break;
        }

        v6 = *(v3 + 8 * v12);
        ++v11;
        if (v6)
        {
          v11 = v12;
          goto LABEL_13;
        }
      }

      v42 = v0[13];

      v43 = v42 + 56;
      v44 = -1;
      v45 = -1 << *(v42 + 32);
      if (-v45 < 64)
      {
        v44 = ~(-1 << -v45);
      }

      v46 = v44 & *(v42 + 56);
      v47 = (63 - v45) >> 6;

      v48 = 0;
      v152 = v42;
      v156 = v42 + 56;
      v159 = v47;
      if (!v46)
      {
        while (1)
        {
LABEL_33:
          v49 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            goto LABEL_127;
          }

          if (v49 >= v47)
          {
            break;
          }

          v46 = *(v43 + 8 * v49);
          ++v48;
          if (v46)
          {
            v48 = v49;
            goto LABEL_37;
          }
        }

        if (qword_1009736B8 == -1)
        {
LABEL_52:
          v80 = type metadata accessor for Logger();
          sub_10000C4AC(v80, qword_10097A860);
          v81 = &_swiftEmptySetSingleton;

          v82 = Logger.logObject.getter();
          v83 = static os_log_type_t.default.getter();
          v84 = &_swiftEmptySetSingleton & 0xC000000000000001;
          if (os_log_type_enabled(v82, v83))
          {
            v85 = swift_slowAlloc();
            *v85 = 134217984;
            if (v84)
            {
              v86 = __CocoaSet.count.getter();
            }

            else
            {
              v86 = *(&_swiftEmptySetSingleton + 2);
            }

            *(v85 + 4) = v86;

            _os_log_impl(&_mh_execute_header, v82, v83, "Found %ld total contacts matching retry handles", v85, 0xCu);
          }

          else
          {
          }

          v174 = &_swiftEmptySetSingleton;
          v175[0] = &_swiftEmptySetSingleton;
          if (v84)
          {
            __CocoaSet.makeIterator()();
            sub_100389A64();
            sub_100389AB0(&qword_100975090, sub_100389A64, &protocol conformance descriptor for NSObject);
            Set.Iterator.init(_cocoa:)();
            v81 = v0[2];
            v87 = v0[3];
            v88 = v0[4];
            v89 = v0[5];
            v90 = v0[6];
          }

          else
          {
            v89 = 0;
            v87 = &_swiftEmptySetSingleton + 56;
            v91 = -1 << *(&_swiftEmptySetSingleton + 32);
            v92 = ~v91;
            v93 = -v91;
            if (v93 < 64)
            {
              v94 = ~(-1 << v93);
            }

            else
            {
              v94 = -1;
            }

            v90 = v94 & *(&_swiftEmptySetSingleton + 7);
            v88 = v92;
          }

          v95 = 0;
          v96 = (v88 + 64) >> 6;
          v153 = v87;
          v154 = v81;
          for (i = v96; ; v96 = i)
          {
            if (v81 < 0)
            {
              v108 = __CocoaSet.Iterator.next()();
              if (!v108 || (v0[9] = v108, sub_100389A64(), swift_dynamicCast(), v107 = v0[7], j = v89, v106 = v90, !v107))
              {
LABEL_113:

                sub_100027D64(v81);
                v143 = v174;
                v144 = v175[0];
                goto LABEL_114;
              }
            }

            else
            {
              v103 = v89;
              v104 = v90;
              for (j = v89; !v104; ++v103)
              {
                j = v103 + 1;
                if (__OFADD__(v103, 1))
                {
                  goto LABEL_128;
                }

                if (j >= v96)
                {
                  goto LABEL_113;
                }

                v104 = *&v87[8 * j];
              }

              v106 = (v104 - 1) & v104;
              v107 = *(*(v81 + 48) + ((j << 9) | (8 * __clz(__rbit64(v104)))));
              if (!v107)
              {
                goto LABEL_113;
              }
            }

            v160 = j;
            v165 = v107;
            v109 = [v107 emailAddresses];
            sub_10028088C(&qword_10097A210, &qword_1007FDB90);
            v110 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v111 = v110;
            if (v110 >> 62)
            {
              v142 = v110;
              v0 = _CocoaArrayWrapper.endIndex.getter();
              v111 = v142;
            }

            else
            {
              v0 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v157 = v106;
            v161 = v95;
            if (v0)
            {
              v112 = 0;
              v171 = v111 & 0xC000000000000001;
              v113 = v111 & 0xFFFFFFFFFFFFFF8;
              v114 = _swiftEmptyArrayStorage;
              v115 = v111;
              while (1)
              {
                if (v171)
                {
                  v116 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v112 >= *(v113 + 16))
                  {
                    goto LABEL_123;
                  }

                  v116 = *(v111 + 8 * v112 + 32);
                }

                v117 = v116;
                v118 = (v112 + 1);
                if (__OFADD__(v112, 1))
                {
                  break;
                }

                v119 = String.init(_:)([v116 value]);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v114 = sub_10028E1C8(0, *(v114 + 2) + 1, 1, v114);
                }

                v121 = *(v114 + 2);
                v120 = *(v114 + 3);
                if (v121 >= v120 >> 1)
                {
                  v114 = sub_10028E1C8((v120 > 1), v121 + 1, 1, v114);
                }

                *(v114 + 2) = v121 + 1;
                *&v114[16 * v121 + 32] = v119;
                ++v112;
                v111 = v115;
                if (v118 == v0)
                {
                  goto LABEL_92;
                }
              }

              __break(1u);
LABEL_123:
              __break(1u);
              goto LABEL_124;
            }

            v114 = _swiftEmptyArrayStorage;
LABEL_92:

            v122 = [v165 phoneNumbers];
            v123 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (v123 >> 62)
            {
              v172 = v123 & 0xFFFFFFFFFFFFFF8;
              v124 = _CocoaArrayWrapper.endIndex.getter();
              if (v124)
              {
LABEL_94:
                v125 = 0;
                v0 = (v123 & 0xC000000000000001);
                v168 = _swiftEmptyArrayStorage;
LABEL_95:
                v126 = v125;
                while (1)
                {
                  if (v0)
                  {
                    v127 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (v126 >= *(v172 + 16))
                    {
                      goto LABEL_125;
                    }

                    v127 = *(v123 + 8 * v126 + 32);
                  }

                  v128 = v127;
                  v125 = v126 + 1;
                  if (__OFADD__(v126, 1))
                  {
                    break;
                  }

                  v129 = [v127 value];
                  v130 = [v129 stringValue];

                  v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v133 = v132;

                  v173[7] = v131;
                  v173[8] = v133;
                  String.init<A>(_:)();
                  v134 = String._bridgeToObjectiveC()();

                  v135 = sub_1001F26EC(v134);

                  if (v135)
                  {
                    v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v138 = v137;

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v168 = sub_10028E1C8(0, *(v168 + 2) + 1, 1, v168);
                    }

                    v140 = *(v168 + 2);
                    v139 = *(v168 + 3);
                    if (v140 >= v139 >> 1)
                    {
                      v168 = sub_10028E1C8((v139 > 1), v140 + 1, 1, v168);
                    }

                    *(v168 + 2) = v140 + 1;
                    v141 = &v168[16 * v140];
                    *(v141 + 4) = v136;
                    *(v141 + 5) = v138;
                    if (v125 != v124)
                    {
                      goto LABEL_95;
                    }

                    goto LABEL_66;
                  }

                  ++v126;
                  if (v125 == v124)
                  {
                    goto LABEL_66;
                  }
                }

LABEL_124:
                __break(1u);
LABEL_125:
                __break(1u);
                goto LABEL_126;
              }
            }

            else
            {
              v172 = v123 & 0xFFFFFFFFFFFFFF8;
              v124 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v124)
              {
                goto LABEL_94;
              }
            }

            v168 = _swiftEmptyArrayStorage;
LABEL_66:
            v0 = v173;
            v98 = v173[12];
            v97 = v173[13];

            v99 = [v165 identifier];
            v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v102 = v101;

            v95 = v161;
            sub_10038491C(v114, v98, &v174, v100, v102);

            sub_10038491C(v168, v97, v175, v100, v102);
            swift_bridgeObjectRelease_n();

            v90 = v157;
            v89 = v160;
            v87 = v153;
            v81 = v154;
          }
        }

LABEL_129:
        swift_once();
        goto LABEL_52;
      }

LABEL_37:
      while (1)
      {
        v50 = __clz(__rbit64(v46));
        v46 &= v46 - 1;
        v51 = (*(v42 + 48) + ((v48 << 10) | (16 * v50)));
        v52 = *v51;
        v53 = v51[1];
        v54 = objc_allocWithZone(CNPhoneNumber);

        v164 = v52;
        v55 = String._bridgeToObjectiveC()();
        v56 = [v54 initWithStringValue:v55];

        v170 = v56;
        v57 = [objc_opt_self() predicateForContactsMatchingPhoneNumber:v56];
        sub_10028088C(&unk_10097A940, &unk_100807F40);
        isa = Array._bridgeToObjectiveC()().super.isa;
        v0[7] = 0;
        v167 = v57;
        v59 = [v162 unifiedContactsMatchingPredicate:v57 keysToFetch:isa error:v0 + 7];

        v60 = v0[7];
        if (!v59)
        {
          break;
        }

        sub_100389A64();
        v61 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v60;

        sub_10057EBEC(v63);

        if (qword_1009736B8 != -1)
        {
          swift_once();
        }

        v64 = type metadata accessor for Logger();
        sub_10000C4AC(v64, qword_10097A860);

        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v175[0] = v68;
          *v67 = 134218242;
          if (v61 >> 62)
          {
            v69 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v69 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v67 + 4) = v69;

          *(v67 + 12) = 2080;
          v70 = sub_10000C4E4(v164, v53, v175);

          *(v67 + 14) = v70;
          _os_log_impl(&_mh_execute_header, v65, v66, "Found %ld contacts for phone: %s", v67, 0x16u);
          sub_10000C60C(v68);

          v0 = v173;
          v42 = v152;
LABEL_32:
          v43 = v156;
          v47 = v159;
          if (!v46)
          {
            goto LABEL_33;
          }
        }

        else
        {
          swift_bridgeObjectRelease_n();

          v47 = v159;
          if (!v46)
          {
            goto LABEL_33;
          }
        }
      }

      v71 = v60;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1009736B8 != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      sub_10000C4AC(v72, qword_10097A860);

      swift_errorRetain();
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v175[0] = v77;
        *v75 = 136315394;
        v78 = sub_10000C4E4(v164, v53, v175);

        *(v75 + 4) = v78;
        *(v75 + 12) = 2112;
        swift_errorRetain();
        v79 = _swift_stdlib_bridgeErrorToNSError();
        *(v75 + 14) = v79;
        *v76 = v79;
        _os_log_impl(&_mh_execute_header, v73, v74, "Failed to fetch contacts for phone %s: %@", v75, 0x16u);
        sub_100005508(v76, &qword_100975400, &qword_1007F65D0);
        v0 = v173;

        sub_10000C60C(v77);
        v42 = v152;
      }

      else
      {
      }

      goto LABEL_32;
    }

LABEL_13:
    while (1)
    {
      v13 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v14 = (*(v1 + 48) + ((v11 << 10) | (16 * v13)));
      v15 = *v14;
      v16 = v14[1];
      v17 = objc_opt_self();

      v166 = v15;
      v18 = String._bridgeToObjectiveC()();
      v19 = [v17 predicateForContactsMatchingEmailAddress:v18];

      sub_10028088C(&unk_10097A940, &unk_100807F40);
      v20 = Array._bridgeToObjectiveC()().super.isa;
      v0[7] = 0;
      v169 = v19;
      v21 = [v162 unifiedContactsMatchingPredicate:v19 keysToFetch:v20 error:v0 + 7];

      v22 = v0[7];
      if (!v21)
      {
        break;
      }

      sub_100389A64();
      v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v22;

      sub_10057EBEC(v25);

      if (qword_1009736B8 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10000C4AC(v26, qword_10097A860);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v175[0] = v30;
        *v29 = 134218242;
        if (v23 >> 62)
        {
          v31 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v31 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v29 + 4) = v31;

        *(v29 + 12) = 2080;
        v32 = sub_10000C4E4(v166, v16, v175);

        *(v29 + 14) = v32;
        _os_log_impl(&_mh_execute_header, v27, v28, "Found %ld contacts for email: %s", v29, 0x16u);
        sub_10000C60C(v30);

        v0 = v173;
        v1 = v155;
LABEL_8:
        v3 = v158;
        v7 = v163;
        if (!v6)
        {
          goto LABEL_9;
        }
      }

      else
      {
        swift_bridgeObjectRelease_n();

        v7 = v163;
        if (!v6)
        {
          goto LABEL_9;
        }
      }
    }

    v33 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000C4AC(v34, qword_10097A860);

    swift_errorRetain();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v175[0] = v39;
      *v37 = 136315394;
      v40 = sub_10000C4E4(v166, v16, v175);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2112;
      swift_errorRetain();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v41;
      *v38 = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to fetch contacts for email %s: %@", v37, 0x16u);
      sub_100005508(v38, &qword_100975400, &qword_1007F65D0);
      v0 = v173;

      sub_10000C60C(v39);
      v1 = v155;
    }

    else
    {
    }

    goto LABEL_8;
  }

  if (qword_1009736B8 != -1)
  {
    swift_once();
  }

  v147 = type metadata accessor for Logger();
  sub_10000C4AC(v147, qword_10097A860);
  v148 = Logger.logObject.getter();
  v149 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v148, v149))
  {
    v150 = swift_slowAlloc();
    *v150 = 0;
    _os_log_impl(&_mh_execute_header, v148, v149, "No handles need retry", v150, 2u);
  }

  v143 = &_swiftEmptySetSingleton;
  v144 = &_swiftEmptySetSingleton;
LABEL_114:
  v145 = v0[1];

  return v145(v143, v144);
}

unint64_t sub_100389A64()
{
  result = qword_100975088;
  if (!qword_100975088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100975088);
  }

  return result;
}

uint64_t sub_100389AB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100389AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_100389B48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_100383918(a1, v4, v5, v6);
}

uint64_t initializeBufferWithCopyOfBuffer for IDMSServiceError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IDMSServiceError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IDMSServiceError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_100389C60(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100389C7C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_100389D4C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009A08E8);
  sub_10000C4AC(v0, qword_1009A08E8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100389DCC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009A0900);
  sub_10000C4AC(v0, qword_1009A0900);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100389E50()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009A0918);
  sub_10000C4AC(v0, qword_1009A0918);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100389ED0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009A0930);
  sub_10000C4AC(v0, qword_1009A0930);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100389FA8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009A0978);
  sub_10000C4AC(v0, qword_1009A0978);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10038A028()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009A0990);
  sub_10000C4AC(v0, qword_1009A0990);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10038A0A8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009A09A8);
  sub_10000C4AC(v0, qword_1009A09A8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10038A128()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009A09C0);
  sub_10000C4AC(v0, qword_1009A09C0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10038A1A8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009A09D8);
  sub_10000C4AC(v0, qword_1009A09D8);
  return Logger.init(subsystem:category:)();
}

id sub_10038A2CC(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for Logger();
  sub_100282710(v5, a2);
  sub_10000C4AC(v5, a2);
  result = a3();
  if (result)
  {
    return Logger.init(_:)();
  }

  __break(1u);
  return result;
}

uint64_t sub_10038A3A0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_100282710(v5, a2);
  sub_10000C4AC(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10038A418()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097A968);
  v1 = sub_10000C4AC(v0, qword_10097A968);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_10038A4E0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a6;
  v61 = a1;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v59 - v16;
  v6[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_requestArmingUI] = 0;
  v6[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_armingUITransportType] = 3;
  v18 = &v6[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_passcode];
  *v18 = a4;
  v18[1] = a5;
  v63 = a3;
  sub_1002A9938(a3, &v66);
  v19 = *(v12 + 16);
  v62 = a2;
  v20 = a2;
  v21 = v11;
  v19(v17, v20, v11);
  type metadata accessor for SDAuthenticationAKSPairingSession(0);
  v22 = swift_allocObject();
  *(v22 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_aksSession) = 0;
  v23 = objc_opt_self();

  result = [v23 sharedManager];
  if (result)
  {
    v25 = result;

    *(v22 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_aksManager) = v25;
    *(v22 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_role) = 0;
    sub_1000121F8(&v66, v22 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_peerDevice);
    (*(v12 + 32))(v22 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_sessionID, v17, v21);
    v26 = v60;
    *(v22 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_type) = v60;
    *&v6[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_aksPairingSession] = v22;
    v27 = v62;
    v19(v15, v62, v21);
    v28 = &v6[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate];
    *v28 = 0u;
    *(v28 + 1) = 0u;
    *(v28 + 4) = 0;
    v29 = &v6[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice];
    *v29 = 0u;
    *(v29 + 1) = 0u;
    *(v29 + 4) = 0;
    *&v6[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_responseTimer] = 0;
    v30 = v61;
    *&v6[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue] = v61;
    v19(&v6[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID], v15, v21);
    *&v6[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type] = v26;
    v31 = type metadata accessor for SDAuthenticationSession(0);
    v65.receiver = v6;
    v65.super_class = v31;
    v61 = v30;
    v32 = objc_msgSendSuper2(&v65, "init");
    v33 = *(v12 + 8);
    v60 = v21;
    v34 = v21;
    v35 = v33;
    v33(v15, v34);
    v36 = v63;
    sub_1002A9938(v63, &v66);
    v37 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
    swift_beginAccess();
    v38 = v32;
    sub_1002AF74C(&v66, v32 + v37);
    swift_endAccess();
    v39 = v12 + 8;
    if (qword_100973778 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000C4AC(v40, qword_10097A968);
    sub_1002A9938(v36, &v66);
    v41 = v38;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v59[1] = v39;
      v45 = v44;
      v64[0] = swift_slowAlloc();
      *v45 = 136315650;
      v46 = UUID.uuidString.getter();
      v48 = sub_10000C4E4(v46, v47, v64);

      *(v45 + 4) = v48;
      *(v45 + 12) = 2080;
      v49 = v67;
      v50 = v68;
      sub_10002CDC0(&v66, v67);
      v51 = (*(v50 + 8))(v49, v50);
      if (v52)
      {
        v53 = v51;
      }

      else
      {
        v53 = 0xD000000000000015;
      }

      if (v52)
      {
        v54 = v52;
      }

      else
      {
        v54 = 0x8000000100789F30;
      }

      sub_10000C60C(&v66);
      v55 = sub_10000C4E4(v53, v54, v64);

      *(v45 + 14) = v55;
      *(v45 + 22) = 2080;
      v56 = sub_100027340();
      v58 = sub_10000C4E4(v56, v57, v64);

      *(v45 + 24) = v58;
      _os_log_impl(&_mh_execute_header, v42, v43, "Begin SDAuthenticationPairingLockSession %s for device: %s with %s", v45, 0x20u);
      swift_arrayDestroy();

      sub_10000C60C(v63);
      v35(v62, v60);
    }

    else
    {

      sub_10000C60C(v36);
      v35(v27, v60);
      sub_10000C60C(&v66);
    }

    return v41;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10038AAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[31] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[32] = v5;
  v4[33] = *(v5 - 8);
  v4[34] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[35] = v6;
  v4[36] = *(v6 - 8);
  v4[37] = swift_task_alloc();

  return _swift_task_switch(sub_10038ABE4, 0, 0);
}

uint64_t sub_10038ABE4()
{
  v37 = v0;
  v1 = *(v0 + 248);
  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type) == 8)
  {
    sub_10038BAA8(0, 0xF000000000000000);
    v7 = v6;
    v35 = v8;
    v9 = *(v0 + 248);
    v10 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
    swift_beginAccess();
    sub_10000FF90(v9 + v10, v0 + 104, &qword_100982080, &unk_1007FDD30);
    if (*(v0 + 128))
    {
      v11 = *(v0 + 296);
      v12 = *(v0 + 272);
      v33 = *(v0 + 288);
      v34 = *(v0 + 280);
      v13 = *(v0 + 256);
      v14 = *(v0 + 264);
      v15 = *(v0 + 248);
      sub_1000121F8((v0 + 104), v0 + 64);
      sub_1002A9938(v0 + 64, v0 + 144);
      v16 = swift_allocObject();
      v16[2] = v15;
      v16[3] = v7;
      v16[4] = v35;
      sub_1000121F8((v0 + 144), (v16 + 5));
      *(v0 + 48) = sub_1003900E0;
      *(v0 + 56) = v16;
      *(v0 + 16) = _NSConcreteStackBlock;
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_100011678;
      *(v0 + 40) = &unk_1008DDC28;
      v17 = _Block_copy((v0 + 16));
      v18 = v15;
      sub_100294008(v7, v35);
      static DispatchQoS.unspecified.getter();
      *(v0 + 240) = _swiftEmptyArrayStorage;
      sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
      sub_100013EB8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v17);
      sub_10028BCC0(0, 0xF000000000000000);
      sub_100026AC0(v7, v35);
      (*(v14 + 8))(v12, v13);
      (*(v33 + 8))(v11, v34);
      sub_10000C60C((v0 + 64));
    }

    else
    {
      sub_100005508(v0 + 104, &qword_100982080, &unk_1007FDD30);
      v20 = sub_100010F88(10, 0xD000000000000021, 0x800000010078DD80);
      v22 = v21;
      if (qword_100973778 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_10000C4AC(v23, qword_10097A968);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v36 = v27;
        *v26 = 136315138;
        v28 = sub_1000116BC(v20, v22);
        v30 = sub_10000C4E4(v28, v29, &v36);

        *(v26 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v24, v25, "%s", v26, 0xCu);
        sub_10000C60C(v27);
      }

      sub_1000115C8();
      v31 = swift_allocError();
      *v32 = v20;
      *(v32 + 8) = v22;
      swift_willThrow();
      sub_100026AC0(v7, v35);
      sub_10028BCC0(0, 0xF000000000000000);
      *(v0 + 224) = v31;
      swift_errorRetain();
      sub_10028088C(&unk_10097A930, &unk_1007F9050);
      if (swift_dynamicCast())
      {

        sub_10038C344(*(v0 + 208), *(v0 + 216));
      }

      else
      {

        *(v0 + 232) = v31;
        swift_errorRetain();
        type metadata accessor for SFAuthenticationErrorCode(0);
        if (swift_dynamicCast())
        {

          v4 = sub_100010F88(*(v0 + 344), 0, 0xE000000000000000);
        }

        else
        {

          v4 = sub_100010F88(10, 0, 0xE000000000000000);
        }

        sub_10038C344(v4, v5);
      }
    }

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    *(v0 + 304) = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_aksPairingSession);

    v2 = swift_task_alloc();
    *(v0 + 312) = v2;
    *v2 = v0;
    v2[1] = sub_10038B228;

    return sub_100678A54();
  }
}

uint64_t sub_10038B228(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 320) = v2;

  if (v2)
  {
    v7 = sub_10038B914;
  }

  else
  {

    *(v6 + 328) = a2;
    *(v6 + 336) = a1;
    v7 = sub_10038B364;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10038B364()
{
  v38 = v0;
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  sub_10038BAA8(v1, v2);
  v6 = v3;
  if (!v3)
  {
    v35 = v4;
    v36 = v5;
    v9 = *(v0 + 248);
    v10 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
    swift_beginAccess();
    sub_10000FF90(v9 + v10, v0 + 104, &qword_100982080, &unk_1007FDD30);
    if (*(v0 + 128))
    {
      v11 = *(v0 + 296);
      v12 = *(v0 + 272);
      v33 = *(v0 + 288);
      v34 = *(v0 + 280);
      v32 = *(v0 + 264);
      v31 = *(v0 + 256);
      v13 = *(v0 + 248);
      sub_1000121F8((v0 + 104), v0 + 64);
      sub_1002A9938(v0 + 64, v0 + 144);
      v14 = swift_allocObject();
      v14[2] = v13;
      v14[3] = v35;
      v14[4] = v36;
      sub_1000121F8((v0 + 144), (v14 + 5));
      *(v0 + 48) = sub_1003900E0;
      *(v0 + 56) = v14;
      *(v0 + 16) = _NSConcreteStackBlock;
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_100011678;
      *(v0 + 40) = &unk_1008DDC28;
      v15 = _Block_copy((v0 + 16));
      v16 = v13;
      sub_100294008(v35, v36);
      static DispatchQoS.unspecified.getter();
      *(v0 + 240) = _swiftEmptyArrayStorage;
      sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
      sub_100013EB8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v15);
      sub_10028BCC0(v1, v2);
      sub_100026AC0(v35, v36);
      (*(v32 + 8))(v12, v31);
      (*(v33 + 8))(v11, v34);
      sub_10000C60C((v0 + 64));

      goto LABEL_11;
    }

    sub_100005508(v0 + 104, &qword_100982080, &unk_1007FDD30);
    v19 = sub_100010F88(10, 0xD000000000000021, 0x800000010078DD80);
    v21 = v20;
    if (qword_100973778 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_10097A968);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37 = v26;
      *v25 = 136315138;
      v27 = sub_1000116BC(v19, v21);
      v29 = sub_10000C4E4(v27, v28, &v37);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s", v25, 0xCu);
      sub_10000C60C(v26);
    }

    sub_1000115C8();
    v6 = swift_allocError();
    *v30 = v19;
    *(v30 + 8) = v21;
    swift_willThrow();
    sub_100026AC0(v35, v36);
  }

  sub_10028BCC0(v1, v2);
  *(v0 + 224) = v6;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {

    sub_10038C344(*(v0 + 208), *(v0 + 216));
  }

  else
  {

    *(v0 + 232) = v6;
    swift_errorRetain();
    type metadata accessor for SFAuthenticationErrorCode(0);
    if (swift_dynamicCast())
    {

      v7 = sub_100010F88(*(v0 + 344), 0, 0xE000000000000000);
    }

    else
    {

      v7 = sub_100010F88(10, 0, 0xE000000000000000);
    }

    sub_10038C344(v7, v8);
  }

LABEL_11:

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10038B914()
{

  v1 = *(v0 + 320);
  *(v0 + 224) = v1;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {

    sub_10038C344(*(v0 + 208), *(v0 + 216));
  }

  else
  {

    *(v0 + 232) = v1;
    swift_errorRetain();
    type metadata accessor for SFAuthenticationErrorCode(0);
    if (swift_dynamicCast())
    {

      v2 = sub_100010F88(*(v0 + 344), 0, 0xE000000000000000);
    }

    else
    {

      v2 = sub_100010F88(10, 0, 0xE000000000000000);
    }

    sub_10038C344(v2, v3);
  }

  v4 = *(v0 + 8);

  return v4();
}

void sub_10038BAA8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = [objc_allocWithZone(SDAuthenticationPairingRequest) init];
  v6 = v5;
  if (v5)
  {
    [v5 setVersion:1];
    v7 = v6;
    UUID.uuidString.getter();
    v8 = String._bridgeToObjectiveC()();

    [v7 setSessionID:v8];

    v9 = v7;
    if (a2 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
    }

    [v9 setLongTermKey:isa];

    if (HIDWORD(*(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type)))
    {
      __break(1u);
      return;
    }

    [v9 setType:?];
  }

  if (qword_100973778 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_10097A968);
  v12 = v6;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v6;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "Generated pairing request %@", v15, 0xCu);
    sub_100005508(v16, &qword_100975400, &qword_1007F65D0);
  }

  if (v6 && (v18 = [v12 data]) != 0)
  {
    v19 = v18;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v20 = sub_100010F88(10, 0xD000000000000020, 0x800000010078DDB0);
    v22 = v21;

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136315138;
      v27 = sub_1000116BC(v20, v22);
      v29 = sub_10000C4E4(v27, v28, &v31);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s", v25, 0xCu);
      sub_10000C60C(v26);
    }

    sub_1000115C8();
    swift_allocError();
    *v30 = v20;
    *(v30 + 8) = v22;
    swift_willThrow();
  }
}

uint64_t sub_10038BE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(a1 + v8, &v29, &qword_10097A9C8, &unk_1007FDD40);
  if (v30)
  {
    sub_1000121F8(&v29, v31);
    if (qword_100973778 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_10097A968);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Sending authentication pairing request", v12, 2u);
    }

    sub_10002CDC0(v31, v31[3]);
    if (*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_requestArmingUI) == 1)
    {
      v13 = *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_armingUITransportType);
    }

    else
    {
      v13 = sub_1004FE08C(*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type));
    }

    if (qword_100973C48 != -1)
    {
      swift_once();
    }

    sub_10000C4AC(v9, qword_1009895D8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v27 = a2;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v29 = v21;
      *v20 = 136315138;
      v28 = a3;
      if (v13 <= 2u)
      {
        v23 = 0xEB0000000074656ELL;
        v22 = a4;
        if (v13)
        {
          if (v13 == 1)
          {
            v23 = 0xE800000000000000;
            v24 = 0x6C61636F4C736469;
          }

          else
          {
            v24 = 0x7265746E49736469;
          }
        }

        else
        {
          v23 = 0xEB00000000746E65;
          v24 = 0x674179627261656ELL;
        }
      }

      else
      {
        v22 = a4;
        if (v13 > 4u)
        {
          if (v13 == 5)
          {
            v23 = 0x80000001007888E0;
            v24 = 0xD000000000000010;
          }

          else
          {
            v23 = 0xED000068746F6F74;
            v24 = 0x65756C4265726F63;
          }
        }

        else if (v13 == 3)
        {
          v23 = 0xE900000000000054;
          v24 = 0x4274726F70706172;
        }

        else
        {
          v23 = 0xEB000000004C4457;
          v24 = 0x4174726F70706172;
        }
      }

      v25 = sub_10000C4E4(v24, v23, &v29);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Using transport type %s", v20, 0xCu);
      sub_10000C60C(v21);

      a4 = v22;
      a2 = v27;
      a3 = v28;
    }

    else
    {
    }

    sub_1005CCC7C(a2, a3, a4, 3u, v13);
    sub_10000C60C(v31);
  }

  else
  {
    sub_100005508(&v29, &qword_10097A9C8, &unk_1007FDD40);
    if (qword_100973778 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000C4AC(v14, qword_10097A968);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Warning: No delegate to send response to", v17, 2u);
    }
  }

  return sub_1004FD4B0(0, 1);
}

uint64_t sub_10038C344(int a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  *(v13 + 32) = a2;
  aBlock[4] = sub_1003900F0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008DDC78;
  v14 = _Block_copy(aBlock);
  v15 = v2;

  static DispatchQoS.unspecified.getter();
  v17[1] = _swiftEmptyArrayStorage;
  sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

void sub_10038C600(void *a1)
{
  v2 = v1;
  if (qword_100973778 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_10000C4AC(v4, qword_10097A968);
  v6 = a1;
  v171 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "Handling authentication pairing response: %@", v9, 0xCu);
    sub_100005508(v10, &qword_100975400, &qword_1007F65D0);
  }

  sub_1004FDD9C();
  if ([v6 hasErrorCode])
  {
    v12 = [v6 errorCode];
    _StringGuts.grow(_:)(32);

    v180 = 0xD00000000000001ELL;
    v181 = 0x800000010078DE50;
    v13 = SFAuthenticationErrorCodeToString();
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    v18 = 0xD00000000000001ELL;
    v19 = 0x800000010078DE50;
    v20 = v12;
LABEL_64:
    v91 = sub_100010F88(v20, v18, v19);
    v93 = v92;
    sub_1000115C8();
    v94 = swift_allocError();
    *v95 = v91;
    *(v95 + 8) = v93;
    swift_willThrow();
LABEL_65:
    *&v174 = v94;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    if (swift_dynamicCast())
    {

      sub_10038C344(v177, *(&v177 + 1));
    }

    else
    {

      *&v177 = v94;
      swift_errorRetain();
      type metadata accessor for SFAuthenticationErrorCode(0);
      if (swift_dynamicCast())
      {

        v96 = sub_100010F88(v174, 0, 0xE000000000000000);
      }

      else
      {

        v96 = sub_100010F88(10, 0, 0xE000000000000000);
      }

      sub_10038C344(v96, v97);
    }

    return;
  }

  v21 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  if (*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type) == 8)
  {
    v22 = [objc_opt_self() sharedTransport];
    if (!v22)
    {
      __break(1u);
      return;
    }

    v23 = v22;
    v24 = [v22 enabledAutoUnlockDevices];

    if (v24)
    {
      v159 = v6;
      v160 = v21;
      v157 = v4;
      v25 = sub_1000276B4(0, &qword_100974F60, SFAutoUnlockDevice_ptr);
      v26 = sub_10002764C();
      v27 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v161 = v25;
      v162 = v27;
      if ((v27 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        v29 = v180;
        v28 = v181;
        v30 = v182;
        v31 = v183;
        v32 = v184;
      }

      else
      {
        v29 = v162;
        v35 = -1 << *(v162 + 32);
        v28 = (v162 + 56);
        v26 = ~v35;
        v36 = -v35;
        if (v36 < 64)
        {
          v37 = ~(-1 << v36);
        }

        else
        {
          v37 = -1;
        }

        v32 = (v37 & *(v162 + 56));

        v30 = v26;
        v31 = 0;
      }

      v158 = v30;
      v165 = (v30 + 64) >> 6;
      v38 = &unk_1007FDD30;
      v170 = v2;
      v163 = v28;
      isa = v29;
      while (1)
      {
        v39 = v32;
        v40 = v31;
        if (v29 < 0)
        {
          v44 = __CocoaSet.Iterator.next()();
          if (!v44 || (v176[0] = v44, swift_dynamicCast(), v43 = v177, v172 = v39, !v177))
          {
LABEL_47:
            sub_100027D64(v29);

            *&v177 = 0;
            *(&v177 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(26);
            v174 = v177;
            v59._countAndFlagsBits = 0xD000000000000018;
            v59._object = 0x800000010078DE30;
            String.append(_:)(v59);
            v60 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
            swift_beginAccess();
            sub_10000FF90(v2 + v60, &v177, &qword_100982080, &unk_1007FDD30);
            v61 = v178;
            if (v178)
            {
              v62 = v179;
              v63 = sub_10002CDC0(&v177, v178);
              v64 = *(v61 - 8);
              __chkstk_darwin(v63);
              v66 = &v156 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v64 + 16))(v66);
              sub_100005508(&v177, &qword_100982080, &unk_1007FDD30);
              v67 = (*(v62 + 8))(v61, v62);
              v69 = v68;
              (*(v64 + 8))(v66, v61);
            }

            else
            {
              sub_100005508(&v177, &qword_100982080, &unk_1007FDD30);
              v67 = 0;
              v69 = 0;
            }

            *&v177 = v67;
            *(&v177 + 1) = v69;
            DefaultStringInterpolation.appendInterpolation<A>(_:)();

            v19 = *(&v174 + 1);
            v18 = v174;
            v20 = 33;
            goto LABEL_64;
          }
        }

        else
        {
          v41 = v31;
          v42 = v32;
          if (!v32)
          {
            while (1)
            {
              v31 = v41 + 1;
              if (__OFADD__(v41, 1))
              {
                break;
              }

              if (v31 >= v165)
              {
                goto LABEL_47;
              }

              v42 = v28[v31];
              ++v41;
              if (v42)
              {
                goto LABEL_29;
              }
            }

            __break(1u);
LABEL_104:
            v118 = 0xEB0000000074656ELL;
            if (v41)
            {
              if (v41 == 1)
              {
                v118 = 0xE800000000000000;
                v153 = 0x6C61636F4C736469;
              }

              else
              {
                v153 = 0x7265746E49736469;
              }
            }

            else
            {
              v118 = 0xEB00000000746E65;
              v153 = 0x674179627261656ELL;
            }

            goto LABEL_113;
          }

LABEL_29:
          v172 = ((v42 - 1) & v42);
          v43 = *(*(v29 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v42)))));
          if (!v43)
          {
            goto LABEL_47;
          }
        }

        v45 = [v43 uniqueID];
        v167 = v40;
        if (v45)
        {
          v46 = v45;
          v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v49 = v48;
        }

        else
        {
          v47 = 0;
          v49 = 0;
        }

        v166 = v39;
        v26 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
        swift_beginAccess();
        sub_10000FF90(v2 + v26, &v177, &qword_100982080, &unk_1007FDD30);
        v50 = v178;
        if (!v178)
        {
          break;
        }

        v164 = v47;
        v51 = v179;
        v52 = sub_10002CDC0(&v177, v178);
        v169 = &v156;
        v53 = *(v50 - 8);
        __chkstk_darwin(v52);
        v26 = &v156 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v53 + 16))(v26);
        sub_100005508(&v177, &qword_100982080, &unk_1007FDD30);
        v55 = (*(v51 + 8))(v50, v51);
        v57 = v56;
        (*(v53 + 8))(v26, v50);
        if (v49)
        {
          v2 = v170;
          v28 = v163;
          if (!v57)
          {
            goto LABEL_46;
          }

          if (v164 == v55 && v49 == v57)
          {

LABEL_52:

            v29 = isa;
LABEL_53:
            sub_100027D64(v29);

            v4 = v157;
            v6 = v159;
            v21 = v160;
            goto LABEL_54;
          }

          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v29 = isa;
          v38 = &unk_1007FDD30;
          v32 = v172;
          if (v26)
          {
            goto LABEL_53;
          }
        }

        else
        {

          v2 = v170;
          v28 = v163;
          v29 = isa;
          v38 = &unk_1007FDD30;
          v32 = v172;
          if (!v57)
          {
            goto LABEL_53;
          }

LABEL_23:
        }
      }

      sub_100005508(&v177, &qword_100982080, &unk_1007FDD30);
      v2 = v170;
      if (!v49)
      {
        goto LABEL_52;
      }

LABEL_46:

      v29 = isa;
      v38 = &unk_1007FDD30;
      v32 = v172;
      goto LABEL_23;
    }

    v172 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v172, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v172, v33, "No devices enabled to unlock this device", v34, 2u);
    }
  }

  else
  {
LABEL_54:
    v70 = [v6 token];
    if (!v70)
    {
      v18 = 0x20676E697373694DLL;
      v19 = 0xED00006E656B6F74;
      v20 = 10;
      goto LABEL_64;
    }

    v160 = v21;
    v71 = v70;
    v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v6;
    v31 = v73;

    v159 = v72;
    if ([v72 hasLongTermKey] && *(v2 + v160) != 8 && (v74 = objc_msgSend(v159, "longTermKey")) != 0)
    {
      v75 = v74;
      v76 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      v79 = [objc_opt_self() sharedManager];
      v172 = v78;
      v169 = v76;
      v170 = v2;
      v157 = v4;
      if (v79)
      {
        v80 = v79;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v81 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
        swift_beginAccess();
        sub_10000FF90(v2 + v81, &v177, &qword_100982080, &unk_1007FDD30);
        v82 = v178;
        v166 = v31;
        if (v178)
        {
          v83 = v179;
          v84 = sub_10002CDC0(&v177, v178);
          v167 = &v156;
          v85 = *(v82 - 8);
          __chkstk_darwin(v84);
          v87 = &v156 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v85 + 16))(v87);
          sub_100005508(&v177, &qword_100982080, &unk_1007FDD30);
          (*(v83 + 8))(v82, v83);
          v89 = v88;
          (*(v85 + 8))(v87, v82);
          if (v89)
          {
            v90 = String._bridgeToObjectiveC()();
          }

          else
          {
            v90 = 0;
          }

          v76 = v169;
          v2 = v170;
        }

        else
        {
          sub_100005508(&v177, &qword_100982080, &unk_1007FDD30);
          v90 = 0;
        }

        v78 = v172;
        v127 = v80;
        v128 = v80;
        v129 = isa;
        [v127 signAndStoreRemoteLTK:isa forDeviceID:v90];

        v31 = v166;
      }

      v130 = v76;
      v131 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_aksPairingSession);
      isa = *(v131 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_aksManager);

      sub_100294008(v130, v78);
      sub_100294008(v40, v31);
      v132.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v134 = *(v131 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_peerDevice + 24);
      v133 = *(v131 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_peerDevice + 32);
      v135 = sub_10002CDC0((v131 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_peerDevice), v134);
      v167 = &v156;
      v136 = *(v134 - 8);
      __chkstk_darwin(v135);
      v138 = &v156 - v137;
      (*(v136 + 16))(&v156 - v137);
      (*(v133 + 8))(v134, v133);
      v140 = v139;
      (*(v136 + 8))(v138, v134);
      if (v140)
      {
        v141 = String._bridgeToObjectiveC()();
      }

      else
      {
        v141 = 0;
      }

      [(objc_class *)isa signAndStoreRemoteLTK:v132.super.isa forDeviceID:v141];

      sub_10067A2BC();
      v2 = v170;
      v4 = v157;
      sub_10067A7F8(v40, v31);
      v99 = v142;
      v143 = v169;
      v144 = v172;
      sub_100026AC0(v169, v172);

      sub_100026AC0(v40, v31);
      v100 = v143;
      v101 = v144;
    }

    else
    {
      sub_100294008(v40, v31);

      sub_10067B040();
      sub_10067A7F8(v40, v31);
      v99 = v98;

      v100 = v40;
      v101 = v31;
    }

    sub_100026AC0(v100, v101);
    if ([v159 hasRequestArmingUI])
    {
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        *v104 = 0;
        _os_log_impl(&_mh_execute_header, v102, v103, "Got request to show arming UI on successful registration", v104, 2u);
      }

      v105 = [v159 requestArmingUI];
      *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_requestArmingUI) = v105;
    }

    v170 = v2;
    v106 = [objc_allocWithZone(SDAuthenticationPairingCreateSecret) init];
    if (!v106)
    {
      v119 = sub_100010F88(10, 0xD00000000000002FLL, 0x800000010078DDE0);
      v121 = v120;
      sub_1000115C8();
      v94 = swift_allocError();
      *v122 = v119;
      *(v122 + 8) = v121;
      swift_willThrow();
      sub_100026AC0(v40, v31);

      goto LABEL_65;
    }

    v28 = v106;
    v107 = v170;
    UUID.uuidString.getter();
    v108 = String._bridgeToObjectiveC()();

    [v28 setSessionID:v108];

    [v28 setToken:v99];
    v109 = [v28 data];
    if (!v109)
    {
      v123 = sub_100010F88(10, 0xD000000000000020, 0x800000010078DDB0);
      v125 = v124;
      sub_1000115C8();
      v94 = swift_allocError();
      *v126 = v123;
      *(v126 + 8) = v125;
      swift_willThrow();
      sub_100026AC0(v40, v31);

      goto LABEL_65;
    }

    v172 = v99;
    v157 = v4;
    v110 = v109;
    v169 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v171 = v111;

    v112 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
    swift_beginAccess();
    sub_10000FF90(v107 + v112, v176, &qword_100982080, &unk_1007FDD30);
    *&v174 = 0;
    *(&v174 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    *&v174 = 0xD00000000000001CLL;
    *(&v174 + 1) = 0x800000010078DE10;
    type metadata accessor for UUID();
    sub_10001432C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v113._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v113);

    v114 = v174;
    sub_10000FF90(v176, &v174, &qword_100982080, &unk_1007FDD30);
    if (!v175)
    {
      sub_100005508(&v174, &qword_100982080, &unk_1007FDD30);
      v145 = sub_100010F88(10, v114, *(&v114 + 1));
      v147 = v146;
      sub_1000115C8();
      v94 = swift_allocError();
      *v148 = v145;
      *(v148 + 8) = v147;
      swift_willThrow();
      sub_100026AC0(v169, v171);

      sub_100026AC0(v40, v31);
      sub_100005508(v176, &qword_100982080, &unk_1007FDD30);
      goto LABEL_65;
    }

    sub_100005508(v176, &qword_100982080, &unk_1007FDD30);

    sub_1000121F8(&v174, &v177);
    v115 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
    swift_beginAccess();
    sub_10000FF90(v107 + v115, v176, &qword_10097A9C8, &unk_1007FDD40);
    if (v176[3])
    {
      sub_1002A9938(v176, &v174);
      sub_100005508(v176, &qword_10097A9C8, &unk_1007FDD40);
      v116 = sub_10002CDC0(&v174, v175);
      v117 = v172;
      if (*(v107 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_requestArmingUI) == 1)
      {
        LODWORD(v118) = *(v107 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_armingUITransportType);
      }

      else
      {
        LODWORD(v118) = sub_1004FE08C(*(v107 + v160));
      }

      v151 = v157;
      v152 = *v116;
      if (qword_100973C48 != -1)
      {
        v155 = v157;
        swift_once();
        v151 = v155;
      }

      sub_10000C4AC(v151, qword_1009895D8);
      v26 = Logger.logObject.getter();
      LOBYTE(v38) = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v38))
      {
        v167 = v152;
        v29 = swift_slowAlloc();
        v2 = swift_slowAlloc();
        v173[0] = v2;
        *v29 = 136315138;
        LODWORD(v41) = v118;
        LODWORD(isa) = v118;
        if (v118 <= 2u)
        {
          goto LABEL_104;
        }

        if (v118 > 4u)
        {
          if (v118 == 5)
          {
            v118 = 0x80000001007888E0;
            v153 = 0xD000000000000010;
          }

          else
          {
            v118 = 0xED000068746F6F74;
            v153 = 0x65756C4265726F63;
          }
        }

        else if (v118 == 3)
        {
          v118 = 0xE900000000000054;
          v153 = 0x4274726F70706172;
        }

        else
        {
          v118 = 0xEB000000004C4457;
          v153 = 0x4174726F70706172;
        }

LABEL_113:
        v154 = sub_10000C4E4(v153, v118, v173);

        *(v29 + 4) = v154;
        _os_log_impl(&_mh_execute_header, v26, v38, "Using transport type %s", v29, 0xCu);
        sub_10000C60C(v2);

        v117 = v172;
        LOBYTE(v118) = isa;
      }

      else
      {
      }

      v150 = v169;
      v149 = v171;
      sub_1005CCC7C(v169, v171, &v177, 6u, v118);
      sub_10000C60C(&v174);
    }

    else
    {
      sub_100005508(v176, &qword_10097A9C8, &unk_1007FDD40);
      v149 = v171;
      v117 = v172;
      v150 = v169;
    }

    sub_1004FD4B0(0, 1);
    sub_100026AC0(v150, v149);

    sub_100026AC0(v40, v31);
    sub_10000C60C(&v177);
  }
}

uint64_t sub_10038DD6C(void *a1)
{
  if (qword_100973778 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_10097A968);
  v4 = a1;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33[0] = v10;
    *v8 = 138412546;
    *(v8 + 4) = v4;
    *v9 = v4;
    *(v8 + 12) = 2080;
    v11 = v4;
    v12 = UUID.uuidString.getter();
    v14 = sub_10000C4E4(v12, v13, v33);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Received authentication pairing create record: %@ for sessionID %s", v8, 0x16u);
    sub_100005508(v9, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v10);
  }

  sub_1004FDD9C();
  v15 = [v4 token];
  if (v15)
  {
    v16 = v15;
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = [v4 requestArmingUI];
    v5[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_requestArmingUI] = v20;
    v21 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
    if (*&v5[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type] == 8)
    {
      sub_10038EA00(v17, v19);
    }

    else
    {
      sub_10038E22C(v17, v19);
    }

    if (*&v5[v21] == 5)
    {
      LOBYTE(v33[0]) = 1;
      sub_10038ED2C(0x100000000uLL);
    }

    v30 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
    swift_beginAccess();
    sub_10000FF90(&v5[v30], v33, &qword_10097A9C8, &unk_1007FDD40);
    if (v33[3])
    {
      sub_1002A9938(v33, v32);
      sub_100005508(v33, &qword_10097A9C8, &unk_1007FDD40);
      v31 = sub_10002CDC0(v32, v32[3]);
      sub_1004DC544(v5, *v31);
      sub_100026AC0(v17, v19);
      return sub_10000C60C(v32);
    }

    else
    {
      sub_100026AC0(v17, v19);
      return sub_100005508(v33, &qword_10097A9C8, &unk_1007FDD40);
    }
  }

  else
  {
    v22 = sub_100010F88(10, 0xD00000000000002BLL, 0x800000010078DE70);
    v24 = v23;
    sub_1000115C8();
    v25 = swift_allocError();
    *v26 = v22;
    *(v26 + 8) = v24;
    swift_willThrow();
    v32[0] = v25;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    if (swift_dynamicCast())
    {

      sub_10038C344(v33[0], v33[1]);
    }

    else
    {

      v33[0] = v25;
      swift_errorRetain();
      type metadata accessor for SFAuthenticationErrorCode(0);
      if (swift_dynamicCast())
      {

        v28 = sub_100010F88(LODWORD(v32[0]), 0, 0xE000000000000000);
      }

      else
      {

        v28 = sub_100010F88(10, 0, 0xE000000000000000);
      }

      sub_10038C344(v28, v29);
    }
  }
}

void sub_10038E22C(uint64_t a1, id *a2)
{
  v4 = v3;
  v5 = v2;
  v8 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v11 = *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_passcode);
  v12 = *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_passcode + 8);

  sub_100678E2C(a1, a2, v11, v12);

  if (!v4)
  {
    v13 = [objc_opt_self() sharedTransport];
    if (!v13)
    {
      __break(1u);
      return;
    }

    v14 = v13;
    v15 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
    swift_beginAccess();
    sub_10000FF90(v5 + v15, &v56, &qword_100982080, &unk_1007FDD30);
    if (v58)
    {
      sub_10028088C(&unk_100985A70, &unk_10080CDC0);
      sub_1000276B4(0, &qword_10097F0C0, IDSDevice_ptr);
      if (swift_dynamicCast())
      {
        v16 = v54;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      sub_100005508(&v56, &qword_100982080, &unk_1007FDD30);
      v16 = 0;
    }

    v17 = [v14 autoUnlockDeviceForIDSDevice:v16 cloudPaired:0 cached:0];

    v56 = 0;
    v57 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);
    v54 = v56;
    v55 = v57;
    v18._countAndFlagsBits = 0x6369766544534449;
    v18._object = 0xED00002044492065;
    String.append(_:)(v18);
    sub_10000FF90(v5 + v15, &v56, &qword_100982080, &unk_1007FDD30);
    v19 = v58;
    if (v58)
    {
      v20 = v59;
      v21 = sub_10002CDC0(&v56, v58);
      v22 = *(v19 - 8);
      __chkstk_darwin(v21);
      v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v24);
      sub_100005508(&v56, &qword_100982080, &unk_1007FDD30);
      v25 = (*(v20 + 8))(v19, v20);
      v27 = v26;
      (*(v22 + 8))(v24, v19);
    }

    else
    {
      sub_100005508(&v56, &qword_100982080, &unk_1007FDD30);
      v25 = 0;
      v27 = 0;
    }

    v56 = v25;
    v57 = v27;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();

    v28._countAndFlagsBits = 0x756F6620746F6E20;
    v28._object = 0xEB000000002E646ELL;
    String.append(_:)(v28);
    if (!v17)
    {
      v39 = sub_100010F88(10, v54, v55);
      v41 = v40;
      sub_1000115C8();
      swift_allocError();
      *v42 = v39;
      *(v42 + 8) = v41;
      swift_willThrow();
      return;
    }

    if ([v17 unlockEnabled])
    {
      v29 = [v17 bluetoothID];
      if (v29)
      {
        v30 = v29;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v31 = type metadata accessor for UUID();
        (*(*(v31 - 8) + 56))(v10, 0, 1, v31);
        sub_100005508(v10, &unk_100976120, &qword_1007F9260);
        if (qword_100973778 != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        sub_10000C4AC(v32, qword_10097A968);
        v33 = v17;
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *v36 = 138412290;
          *(v36 + 4) = v33;
          *v37 = v17;
          v38 = v33;
          _os_log_impl(&_mh_execute_header, v34, v35, "Enabled for device: %@", v36, 0xCu);
          sub_100005508(v37, &qword_100975400, &qword_1007F65D0);
        }

        if (qword_100973C50 != -1)
        {
          swift_once();
        }

        if (qword_1009A10A8)
        {
          sub_10069579C();
        }

LABEL_29:

        return;
      }

      v43 = type metadata accessor for UUID();
      (*(*(v43 - 8) + 56))(v10, 1, 1, v43);
      sub_100005508(v10, &unk_100976120, &qword_1007F9260);
    }

    if (qword_100973778 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_10000C4AC(v44, qword_10097A968);
    v33 = v17;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      *(v47 + 4) = v33;
      *v48 = v17;
      v49 = v33;
      _os_log_impl(&_mh_execute_header, v45, v46, "Device not enabled: %@", v47, 0xCu);
      sub_100005508(v48, &qword_100975400, &qword_1007F65D0);
    }

    v50 = sub_100010F88(10, 0xD000000000000032, 0x800000010078DEA0);
    v52 = v51;
    sub_1000115C8();
    swift_allocError();
    *v53 = v50;
    *(v53 + 8) = v52;
    swift_willThrow();
    goto LABEL_29;
  }
}

void sub_10038EA00(uint64_t a1, unint64_t a2)
{
  v4 = v2;

  v7 = sub_1006794BC(a1, a2);

  if (!v3)
  {

    if (qword_100973778 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_10097A968);
    v9 = v4;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_11;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136315138;
    v14 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
    swift_beginAccess();
    sub_10000FF90(v9 + v14, v28, &qword_100982080, &unk_1007FDD30);
    v15 = v29;
    if (v29)
    {
      v16 = v30;
      v17 = sub_10002CDC0(v28, v29);
      v26 = &v26;
      v27 = v13;
      v18 = *(v15 - 8);
      __chkstk_darwin(v17);
      v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v20);
      sub_100005508(v28, &qword_100982080, &unk_1007FDD30);
      v21 = (*(v16 + 8))(v15, v16);
      v23 = v22;
      (*(v18 + 8))(v20, v15);
      v13 = v27;
      if (v23)
      {
        v24 = v21;
LABEL_10:
        v25 = sub_10000C4E4(v24, v23, &v31);

        *(v12 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v10, v11, "Finalized Registration for device %s", v12, 0xCu);
        sub_10000C60C(v13);

LABEL_11:

        return;
      }
    }

    else
    {
      sub_100005508(v28, &qword_100982080, &unk_1007FDD30);
    }

    v23 = 0xE90000000000003ELL;
    v24 = 0x676E697373696D3CLL;
    goto LABEL_10;
  }
}

void sub_10038ED2C(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v5 + 8);
  v10 = (v5 + 8);
  v11(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_43:
    swift_once();
    goto LABEL_21;
  }

  v12 = [objc_allocWithZone(SDAuthenticationConfirmation) init];
  v10 = v12;
  if (v12)
  {
    [v12 setVersion:1];
    v13 = v10;
    UUID.uuidString.getter();
    v14 = String._bridgeToObjectiveC()();

    [v13 setSessionID:v14];

    [v13 setSuccess:HIDWORD(a1) & 1];
    if ((a1 & 0x100000000) == 0)
    {
      [v13 setErrorCode:a1];
    }

    v15 = [v13 data];
    if (v15)
    {
      v16 = v15;
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      if (qword_100973778 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000C4AC(v20, qword_10097A968);
      v21 = v13;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        *(v24 + 4) = v21;
        *v25 = v10;
        v26 = v21;
        _os_log_impl(&_mh_execute_header, v22, v23, "Sending confirmation: %@", v24, 0xCu);
        sub_100005508(v25, &qword_100975400, &qword_1007F65D0);
      }

      v27 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
      swift_beginAccess();
      sub_10000FF90(v2 + v27, &v48, &qword_100982080, &unk_1007FDD30);
      if (v49)
      {
        sub_1000121F8(&v48, v50);
        v28 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
        swift_beginAccess();
        sub_10000FF90(v2 + v28, &v48, &qword_10097A9C8, &unk_1007FDD40);
        if (v49)
        {
          sub_1002A9938(&v48, v47);
          sub_100005508(&v48, &qword_10097A9C8, &unk_1007FDD40);
          v29 = *sub_10002CDC0(v47, v47[3]);
          v30 = sub_1004FE08C(*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type));
          if (qword_100973C48 != -1)
          {
            swift_once();
          }

          sub_10000C4AC(v20, qword_1009895D8);
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v46 = v34;
            *v33 = 136315138;
            v45 = v29;
            if (v30 <= 2u)
            {
              v35 = 0xEB0000000074656ELL;
              if (v30)
              {
                if (v30 == 1)
                {
                  v35 = 0xE800000000000000;
                  v36 = 0x6C61636F4C736469;
                }

                else
                {
                  v36 = 0x7265746E49736469;
                }
              }

              else
              {
                v35 = 0xEB00000000746E65;
                v36 = 0x674179627261656ELL;
              }
            }

            else if (v30 > 4u)
            {
              if (v30 == 5)
              {
                v35 = 0x80000001007888E0;
                v36 = 0xD000000000000010;
              }

              else
              {
                v35 = 0xED000068746F6F74;
                v36 = 0x65756C4265726F63;
              }
            }

            else if (v30 == 3)
            {
              v35 = 0xE900000000000054;
              v36 = 0x4274726F70706172;
            }

            else
            {
              v35 = 0xEB000000004C4457;
              v36 = 0x4174726F70706172;
            }

            v44 = sub_10000C4E4(v36, v35, &v46);

            *(v33 + 4) = v44;
            _os_log_impl(&_mh_execute_header, v31, v32, "Using transport type %s", v33, 0xCu);
            sub_10000C60C(v34);
          }

          else
          {
          }

          sub_1005CCC7C(v17, v19, v50, 2u, v30);
          sub_100026AC0(v17, v19);

          sub_10000C60C(v50);
          v42 = v47;
          goto LABEL_41;
        }

        sub_10000C60C(v50);

        sub_100026AC0(v17, v19);
        v43 = &v48;
      }

      else
      {
        sub_100005508(&v48, &qword_100982080, &unk_1007FDD30);
        v41 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
        swift_beginAccess();
        sub_10000FF90(v2 + v41, v50, &qword_10097A9C8, &unk_1007FDD40);
        if (v50[3])
        {
          sub_1002A9938(v50, &v48);
          sub_100005508(v50, &qword_10097A9C8, &unk_1007FDD40);
          sub_10002CDC0(&v48, v49);
          sub_1006D3874(v17, v19, 2u, *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type));

          sub_100026AC0(v17, v19);
          v42 = &v48;
LABEL_41:
          sub_10000C60C(v42);
          return;
        }

        sub_100026AC0(v17, v19);
        v43 = v50;
      }

      sub_100005508(v43, &qword_10097A9C8, &unk_1007FDD40);
      return;
    }
  }

  else
  {
    [0 setSuccess:HIDWORD(a1) & 1];
  }

  if (qword_100973778 != -1)
  {
    goto LABEL_43;
  }

LABEL_21:
  v37 = type metadata accessor for Logger();
  sub_10000C4AC(v37, qword_10097A968);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Error converting confirmation to data", v40, 2u);
  }
}

uint64_t sub_10038F574()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (qword_100973778 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_10097A968);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    type metadata accessor for UUID();
    sub_10001432C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = sub_10000C4E4(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Response timer fired for %s", v11, 0xCu);
    sub_10000C60C(v12);
  }

  v16 = sub_100010F88(12, 0xD000000000000026, 0x800000010078DEE0);
  sub_10038C344(v16, v17);

  return sub_1004FDD9C();
}

uint64_t sub_10038F83C(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v7 = *&a1[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type];
  v8 = SFDeviceClassCodeGet();
  v9 = sub_100027628(v7);
  v10 = sub_10000EF9C(8u, v9);

  if (v10)
  {
    if (!SFDeviceIsRealityDevice())
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = sub_100027628(v7);
    v12 = sub_10000EF9C(v8, v11);

    if (!v12)
    {
      goto LABEL_6;
    }
  }

  if (*&a1[v6] != 8)
  {
    goto LABEL_36;
  }

LABEL_6:
  v13 = [objc_allocWithZone(SDAuthenticationPairingResponse) init];
  v14 = v13;
  if (v13)
  {
    [v13 setVersion:1];
    v15 = v14;
    UUID.uuidString.getter();
    v16 = String._bridgeToObjectiveC()();

    [v15 setSessionID:v16];

    [v15 setErrorCode:a2];
    v17 = [v15 data];
    if (v17)
    {
      v18 = v17;
      v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
      swift_beginAccess();
      sub_10000FF90(&a1[v22], &v52, &qword_100982080, &unk_1007FDD30);
      if (v53)
      {
        sub_1000121F8(&v52, v54);
        v23 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
        swift_beginAccess();
        sub_10000FF90(&a1[v23], &v52, &qword_10097A9C8, &unk_1007FDD40);
        if (v53)
        {
          sub_1002A9938(&v52, v51);
          sub_100005508(&v52, &qword_10097A9C8, &unk_1007FDD40);
          sub_10002CDC0(v51, v51[3]);
          v24 = sub_1004FE08C(*&a1[v6]);
          if (qword_100973C48 != -1)
          {
            swift_once();
          }

          v25 = type metadata accessor for Logger();
          sub_10000C4AC(v25, qword_1009895D8);
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v26, v27))
          {
            v49 = v27;
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v50 = v29;
            buf = v28;
            *v28 = 136315138;
            v48 = v24;
            v46 = v29;
            if (v24 <= 2u)
            {
              v31 = 0xEB0000000074656ELL;
              if (v24)
              {
                v30 = v49;
                if (v24 == 1)
                {
                  v31 = 0xE800000000000000;
                  v32 = 0x6C61636F4C736469;
                }

                else
                {
                  v32 = 0x7265746E49736469;
                }
              }

              else
              {
                v31 = 0xEB00000000746E65;
                v32 = 0x674179627261656ELL;
                v30 = v49;
              }
            }

            else if (v24 > 4u)
            {
              v30 = v49;
              if (v24 == 5)
              {
                v31 = 0x80000001007888E0;
                v32 = 0xD000000000000010;
              }

              else
              {
                v31 = 0xED000068746F6F74;
                v32 = 0x65756C4265726F63;
              }
            }

            else
            {
              v30 = v49;
              if (v24 == 3)
              {
                v31 = 0xE900000000000054;
                v32 = 0x4274726F70706172;
              }

              else
              {
                v31 = 0xEB000000004C4457;
                v32 = 0x4174726F70706172;
              }
            }

            v40 = sub_10000C4E4(v32, v31, &v50);

            *(buf + 4) = v40;
            _os_log_impl(&_mh_execute_header, v26, v30, "Using transport type %s", buf, 0xCu);
            sub_10000C60C(v46);

            v24 = v48;
          }

          else
          {
          }

          sub_1005CCC7C(v19, v21, v54, 4u, v24);
          sub_100026AC0(v19, v21);

          sub_10000C60C(v54);
          sub_10000C60C(v51);
        }

        else
        {
          sub_10000C60C(v54);

          sub_100026AC0(v19, v21);
          sub_100005508(&v52, &qword_10097A9C8, &unk_1007FDD40);
        }

        goto LABEL_36;
      }

      sub_100026AC0(v19, v21);
      sub_100005508(&v52, &qword_100982080, &unk_1007FDD30);
    }
  }

  if (qword_100973778 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000C4AC(v33, qword_10097A968);
  v34 = v14;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    *(v37 + 4) = v34;
    *v38 = v14;
    v39 = v34;
    _os_log_impl(&_mh_execute_header, v35, v36, "Could not convert response to data: %@", v37, 0xCu);
    sub_100005508(v38, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

LABEL_36:
  v41 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(&a1[v41], v54, &qword_10097A9C8, &unk_1007FDD40);
  if (!v54[3])
  {
    return sub_100005508(v54, &qword_10097A9C8, &unk_1007FDD40);
  }

  sub_1002A9938(v54, &v52);
  sub_100005508(v54, &qword_10097A9C8, &unk_1007FDD40);
  v42 = sub_10002CDC0(&v52, v53);
  v43 = sub_1000116BC(a2, a3);
  sub_10045D928(a1, a2, v43, v44, *v42);

  return sub_10000C60C(&v52);
}

uint64_t sub_10038FF6C()
{
}

uint64_t type metadata accessor for SDAuthenticationPairingLockSession(uint64_t a1)
{
  result = qword_10097A9B8;
  if (!qword_10097A9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100390108()
{

  sub_100016C08(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication19VolumeUnlockManager_lastCarPlaySessionEndDate);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t _s19VolumeUnlockManagerCMa(uint64_t a1)
{
  result = qword_10097AA00;
  if (!qword_10097AA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003901B4(uint64_t a1)
{
  sub_1002A6BEC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10039026C(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
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

      v9 = (a1)(v12);

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

void sub_100390318(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for SDAirDropSendConnection(0);
    sub_10039132C();
    Set.Iterator.init(_cocoa:)();
    v5 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v25;
    v9 = v26;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v21 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v27 = v17;
        v18 = a1(&v27);

        if (v4)
        {
          v19 = v21;
          goto LABEL_24;
        }

        v5 = v21;
        if (v18)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_20;
        }

        type metadata accessor for SDAirDropSendConnection(0);
        swift_dynamicCast();
        v17 = v27;
        v15 = v8;
        v16 = v9;
        if (!v27)
        {
          goto LABEL_21;
        }
      }

      v19 = v21;
LABEL_24:
      sub_100027D64(v19);
    }

    else
    {
LABEL_21:
      v5 = v21;
LABEL_20:
      sub_100027D64(v5);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100390544(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_10039066C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097AAF8);
  v1 = sub_10000C4AC(v0, qword_10097AAF8);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100390734(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10002CDC0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_100389A64();
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_100390814(uint64_t *a1, void *a2)
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

uint64_t sub_10039086C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  return _swift_task_switch(sub_100390890, 0, 0);
}

uint64_t sub_100390890()
{
  v1 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[23] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1003909DC;
  v3 = swift_continuation_init();
  v0[17] = sub_10028088C(&qword_10097AB10, &qword_100805450);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100390734;
  v0[13] = &unk_1008DDCA0;
  v0[14] = v3;
  [v1 contactsWithData:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1003909DC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_100391248;
  }

  else
  {
    v2 = sub_100390AEC;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100390AEC()
{
  v3 = v1 + 144;
  v2 = *(v1 + 144);
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_27:
    v20 = *(v1 + 184);

    if (qword_100973780 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000C4AC(v21, qword_10097AAF8);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to extract contact from vCardData", v24, 2u);
    }

    goto LABEL_32;
  }

LABEL_26:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_27;
  }

LABEL_3:
  v61 = v3;
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;
  v62 = v1;

  v6 = [v5 emailAddresses];
  v0 = sub_10028088C(&qword_10097A210, &qword_1007FDB90);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1 = v7 & 0xFFFFFFFFFFFFFF8;
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v63 = v5;
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_35:
    v65 = _swiftEmptyArrayStorage;
    goto LABEL_36;
  }

  v8 = _CocoaArrayWrapper.endIndex.getter();
  v63 = v5;
  if (!v8)
  {
    goto LABEL_35;
  }

LABEL_8:
  v2 = 0;
  v3 = v7 & 0xC000000000000001;
  v65 = _swiftEmptyArrayStorage;
  do
  {
    v9 = v2;
    while (1)
    {
      if (v3)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v2 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v12 = [v10 value];
      v13 = CUNormalizeEmailAddress();

      if (v13)
      {
        break;
      }

      ++v9;
      if (v2 == v8)
      {
        goto LABEL_36;
      }
    }

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v65 = sub_10028E1C8(0, *(v65 + 2) + 1, 1, v65);
    }

    v18 = *(v65 + 2);
    v17 = *(v65 + 3);
    if (v18 >= v17 >> 1)
    {
      v65 = sub_10028E1C8((v17 > 1), v18 + 1, 1, v65);
    }

    *(v65 + 2) = v18 + 1;
    v19 = &v65[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v16;
  }

  while (v2 != v8);
LABEL_36:

  v27 = [v63 phoneNumbers];
  v0 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (!(v0 >> 62))
  {
    v28 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_38;
    }

LABEL_60:
    v64 = _swiftEmptyArrayStorage;
    goto LABEL_61;
  }

LABEL_59:
  v28 = _CocoaArrayWrapper.endIndex.getter();
  if (!v28)
  {
    goto LABEL_60;
  }

LABEL_38:
  v29 = 0;
  v64 = _swiftEmptyArrayStorage;
  do
  {
    v30 = v29;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v30 >= *(v2 + 16))
        {
          goto LABEL_57;
        }

        v31 = *(v0 + 8 * v30 + 32);
      }

      v32 = v31;
      v29 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v33 = [v31 value];
      v34 = [v33 stringValue];

      if (!v34)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = String._bridgeToObjectiveC()();
      }

      v35 = CUNormalizePhoneNumber();

      if (v35)
      {
        break;
      }

      ++v30;
      if (v29 == v28)
      {
        goto LABEL_61;
      }
    }

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = sub_10028E1C8(0, *(v64 + 2) + 1, 1, v64);
    }

    v40 = *(v64 + 2);
    v39 = *(v64 + 3);
    if (v40 >= v39 >> 1)
    {
      v64 = sub_10028E1C8((v39 > 1), v40 + 1, 1, v64);
    }

    *(v64 + 2) = v40 + 1;
    v41 = &v64[16 * v40];
    *(v41 + 4) = v36;
    *(v41 + 5) = v38;
  }

  while (v29 != v28);
LABEL_61:
  v1 = v62;
  v42 = v62[22];

  if (v42)
  {

    v43 = String._bridgeToObjectiveC()();
    v44 = CUNormalizeEmailAddress();

    if (v44)
    {
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      v62[10] = v45;
      v62[11] = v47;
      v48 = swift_task_alloc();
      *(v48 + 16) = v61 - 64;
      v49 = sub_10039026C(sub_1003912B8, v48, v65);

      if (v49)
      {
LABEL_66:

        v25 = v62[21];
        v26 = v62[22];
        goto LABEL_74;
      }

      v50 = String._bridgeToObjectiveC()();
      v51 = CUNormalizePhoneNumber();

      if (v51)
      {
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        v62[10] = v52;
        v62[11] = v54;
        v55 = swift_task_alloc();
        *(v55 + 16) = v61 - 64;
        v56 = sub_10039026C(sub_1003913A0, v55, v64);

        if (v56)
        {
          goto LABEL_66;
        }

        goto LABEL_68;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_68:
  if (*(v64 + 2) != 1 && *(v65 + 2))
  {
    v57 = *(v65 + 4);
    v58 = *(v65 + 5);

    v26 = v58;
LABEL_73:
    v25 = v57;
    goto LABEL_74;
  }

  if (*(v64 + 2))
  {
    v57 = *(v64 + 4);
    v59 = *(v64 + 5);

    v26 = v59;
    goto LABEL_73;
  }

LABEL_32:
  v25 = 0;
  v26 = 0;
LABEL_74:
  v60 = *(v1 + 8);

  v60(v25, v26);
}

uint64_t sub_100391248(uint64_t a1)
{
  v2 = *(v1 + 184);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1003912D4(uint64_t *a1)
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

unint64_t sub_10039132C()
{
  result = qword_10097AB18;
  if (!qword_10097AB18)
  {
    type metadata accessor for SDAirDropSendConnection(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097AB18);
  }

  return result;
}

uint64_t sub_1003913BC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDrop.TransferType();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_100391510, v5, 0);
}

void sub_100391510(uint64_t a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[7];
  SFAirDropReceive.AskRequest.type.getter();
  v5 = SFAirDrop.TransferType.isLinks.getter();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    v6 = v1[5];
    v7 = v1[3];
    v8 = SFAirDropReceive.AskRequest.urlItems.getter();
    v9 = 0;
    v10 = v8 + 56;
    v11 = -1;
    v12 = -1 << *(v8 + 32);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v13 = v11 & *(v8 + 56);
    v14 = (63 - v12) >> 6;
    v23 = v8;
    while (v13)
    {
      v15 = v9;
LABEL_11:
      v16 = v1[6];
      v17 = v1[4];
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v6 + 16))(v16, *(v23 + 48) + *(v6 + 72) * (v18 | (v15 << 6)), v17);
      v19 = sub_1003D9F30(&off_1008D6F68);
      (*(v6 + 8))(v16, v17);
      v20 = *(v7 + 16);
      *(v7 + 16) = v19;

      if (!*(v7 + 16))
      {

        sub_10032B298(&unk_1008D6F88);
        goto LABEL_13;
      }
    }

    while (1)
    {
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v15 >= v14)
      {
        sub_10032B298(&unk_1008D6F88);

        v21 = 1;
        goto LABEL_15;
      }

      v13 = *(v10 + 8 * v15);
      ++v9;
      if (v13)
      {
        v9 = v15;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v21 = 0;
LABEL_15:

    v22 = v1[1];

    v22(v21);
  }
}

uint64_t sub_100391720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = *(a1 + 16);
  v35 = *(v2 + 16);
  v12 = v35;
  v33 = a1;
  v34 = v11;
  if (v11)
  {
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v38 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v15 = a1 + v38;
    v16 = *(v13 + 56);
    v41 = (v13 + 16);
    v42 = v14;
    v37 = (v13 - 8);
    v17 = _swiftEmptyArrayStorage;
    v39 = v8;
    v40 = v13;
    v14(v10, a1 + v38, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v37)(v10, v4);
      }

      else
      {
        v18 = *v41;
        (*v41)(v8, v10, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v17[2] + 1, 1);
          v17 = v43;
        }

        v21 = v17[2];
        v20 = v17[3];
        if (v21 >= v20 >> 1)
        {
          sub_10028FAB4((v20 > 1), v21 + 1, 1);
          v17 = v43;
        }

        v17[2] = v21 + 1;
        v22 = v17 + v38 + v21 * v16;
        v8 = v39;
        v18(v22, v39, v4);
      }

      v15 += v16;
      if (!--v11)
      {
        break;
      }

      v42(v10, v15, v4);
    }
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v23 = v17[2];
  if (v23)
  {
    if (v23 != v34)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_10097B528);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Asked to view mixed files and links, only viewing links", v27, 2u);
      }
    }

    v43 = 0;
    v28 = swift_allocObject();
    v29 = v35;
    *(v28 + 16) = v17;
    *(v28 + 24) = v29;
  }

  else
  {

    v43 = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = v35;
    *(v30 + 24) = 1;
    *(v30 + 32) = v33;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_100391B8C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerPodcastsLinks();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_100391BC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_1003913BC(a1);
}

void sub_100391C84(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = 0xD000000000000019;
  v5 = inited + 32;
  *(inited + 40) = 0x800000010078E010;
  *(inited + 48) = v3;
  sub_1003D8D18(inited, v2);
  swift_setDeallocating();
  sub_1003470A0(v5);
  v6 = String._bridgeToObjectiveC()();
  v7 = SFLocalizedStringForKey();

  if (v7)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007F5670;
    *(v8 + 56) = &type metadata for Int;
    *(v8 + 64) = &protocol witness table for Int;
    *(v8 + 32) = v3;
    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    __break(1u);
  }
}

void *sub_100391DFC(uint64_t a1)
{
  v35 = type metadata accessor for UUID();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v27 = v1;
    v39 = _swiftEmptyArrayStorage;
    sub_10028FBDC(0, v5, 0);
    v38 = v39;
    v7 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 72;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = UUID.description.getter();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = v38[2];
      v17 = v38[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_10028FBDC((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      v16[2] = v18 + 1;
      v19 = &v16[2 * v18];
      v19[4] = v37;
      v19[5] = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_10000CDD4(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_10000CDD4(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100392104(uint64_t a1, uint64_t a2)
{
  v302 = a2;
  v3 = sub_10028088C(&qword_100974CE0, &qword_1007F8240);
  v287 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v292 = &v286 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v291 = &v286 - v6;
  v308 = sub_10028088C(&qword_10097AD38, &unk_1007FDF90);
  __chkstk_darwin(v308);
  v8 = &v286 - v7;
  v9 = sub_10028088C(&qword_100974CE8, &qword_1007F8248);
  v10 = __chkstk_darwin(v9 - 8);
  v286 = &v286 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v340 = &v286 - v13;
  __chkstk_darwin(v12);
  v321 = &v286 - v14;
  v333 = sub_10028088C(&qword_10097AD40, &unk_1007FDFA0);
  v15 = __chkstk_darwin(v333);
  v17 = &v286 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v311 = (&v286 - v19);
  __chkstk_darwin(v18);
  v312 = &v286 - v20;
  v21 = type metadata accessor for SFNWInterfaceType();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v334 = &v286 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v323 = &v286 - v26;
  v27 = __chkstk_darwin(v25);
  v293 = &v286 - v28;
  __chkstk_darwin(v27);
  v297 = &v286 - v29;
  v30 = sub_10028088C(&qword_100977DC0, &unk_1007FB320);
  v31 = __chkstk_darwin(v30 - 8);
  v305 = &v286 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v300 = &v286 - v34;
  v35 = __chkstk_darwin(v33);
  v314 = &v286 - v36;
  v37 = __chkstk_darwin(v35);
  v332 = &v286 - v38;
  v39 = __chkstk_darwin(v37);
  v288 = &v286 - v40;
  v41 = __chkstk_darwin(v39);
  v294 = &v286 - v42;
  v43 = __chkstk_darwin(v41);
  v303 = &v286 - v44;
  v45 = __chkstk_darwin(v43);
  v290 = &v286 - v46;
  v47 = __chkstk_darwin(v45);
  v299 = &v286 - v48;
  __chkstk_darwin(v47);
  v304 = &v286 - v49;
  v337 = type metadata accessor for UUID();
  v50 = *(v337 - 8);
  v51 = __chkstk_darwin(v337);
  v331 = (&v286 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = __chkstk_darwin(v51);
  v317 = &v286 - v54;
  v55 = __chkstk_darwin(v53);
  v329 = (&v286 - v56);
  __chkstk_darwin(v55);
  v324 = (&v286 - v57);
  v338 = sub_10028088C(&qword_10097AD48, &unk_1007FDFB0);
  v58 = __chkstk_darwin(v338);
  i = &v286 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __chkstk_darwin(v58);
  v315 = &v286 - v61;
  __chkstk_darwin(v60);
  v318 = (&v286 - v62);
  v316 = sub_100281500(_swiftEmptyArrayStorage);
  v63 = a1 + 64;
  v64 = 1 << *(a1 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & *(a1 + 64);
  v67 = (v64 + 63) >> 6;
  v319 = (v22 + 48);
  v341 = v22 + 32;
  v336 = (v22 + 56);
  v322 = v50 + 16;
  v327 = v50;
  v330 = (v50 + 8);
  v289 = v22 + 40;
  v301 = a1;

  v68 = 0;
  v328 = v3;
  v69 = v21;
  v335 = v21;
  v339 = v22;
  v307 = v8;
  v70 = v340;
  v295 = v17;
  v298 = v63;
  v296 = v67;
LABEL_8:
  if (v66)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v75 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
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

    if (v75 >= v67)
    {
      break;
    }

    v66 = *(v63 + 8 * v75);
    ++v68;
    if (v66)
    {
      v68 = v75;
LABEL_13:
      v76 = __clz(__rbit64(v66)) | (v68 << 6);
      v77 = v301;
      v78 = *(v301 + 48);
      v325 = type metadata accessor for SFAirDrop.TransferIdentifier();
      v79 = *(v325 - 1);
      v80 = v318;
      (*(v79 + 16))(v318, v78 + *(v79 + 72) * v76, v325);
      v81 = *(v77 + 56);
      v82 = type metadata accessor for SFAirDropSend.Transfer();
      v83 = *(v82 - 8);
      (*(v83 + 16))(v80 + *(v338 + 48), v81 + *(v83 + 72) * v76, v82);
      v84 = v315;
      sub_10000FF90(v80, v315, &qword_10097AD48, &unk_1007FDFB0);
      SFAirDrop.TransferIdentifier.id.getter();
      v85 = *(v79 + 8);
      v313 = v79 + 8;
      v85(v84, v325);
      v86 = v80;
      v87 = i;
      sub_10000FF90(v86, i, &qword_10097AD48, &unk_1007FDFB0);
      v88 = *(v338 + 48);
      v89 = v299;
      SFAirDropSend.Transfer.activeInterfaceType.getter();
      v90 = *(v83 + 8);
      v310 = v82;
      v309 = v83 + 8;
      v306 = v90;
      (v90)(v87 + v88, v82);
      v91 = *v319;
      v92 = v335;
      if ((*v319)(v89, 1, v335) == 1)
      {
        v93 = *v336;
        (*v336)(v304, 1, 1, v92);
        if (v91(v89, 1, v92) != 1)
        {
          sub_100005508(v89, &qword_100977DC0, &unk_1007FB320);
        }

        v92 = v335;
        v94 = v304;
      }

      else
      {
        v94 = v304;
        (*v341)(v304, v89, v92);
        v93 = *v336;
        (*v336)(v94, 0, 1, v92);
      }

      v63 = v298;
      v85(i, v325);
      if (v91(v94, 1, v92) == 1)
      {
        sub_100005508(v94, &qword_100977DC0, &unk_1007FB320);
        v95 = v324;
        v96 = v316;
        v97 = sub_10000EBD4(v324);
        if (v98)
        {
          v99 = v97;
          v325 = v93;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v343 = v96;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1002CFC48();
            v96 = v343;
          }

          v101 = *(v327 + 8);
          v102 = v337;
          v101(*(v96 + 48) + *(v327 + 72) * v99, v337);
          v71 = v290;
          v103 = v335;
          (*(v339 + 32))(v290, *(v96 + 56) + *(v339 + 72) * v99, v335);
          v316 = v96;
          sub_1002D4E48(v99, v96);
          v101(v324, v102);
          sub_100005508(v318, &qword_10097AD48, &unk_1007FDFB0);
          v70 = v340;
          (v325)(v71, 0, 1, v103);
        }

        else
        {
          (*v330)(v95, v337);
          sub_100005508(v318, &qword_10097AD48, &unk_1007FDFB0);
          v70 = v340;
          v71 = v290;
          v93(v290, 1, 1, v335);
        }

        v72 = v71;
        v73 = &qword_100977DC0;
        v74 = &unk_1007FB320;
LABEL_6:
        sub_100005508(v72, v73, v74);
        goto LABEL_7;
      }

      v104 = *v341;
      (*v341)(v297, v94, v92);
      v105 = v316;
      v69 = swift_isUniquelyReferenced_nonNull_native();
      v343 = v105;
      v106 = v324;
      v107 = sub_10000EBD4(v324);
      v109 = *(v105 + 16);
      v110 = (v108 & 1) == 0;
      v111 = __OFADD__(v109, v110);
      v112 = v109 + v110;
      if (v111)
      {
        goto LABEL_133;
      }

      v113 = v108;
      if (*(v105 + 24) >= v112)
      {
        if ((v69 & 1) == 0)
        {
          v122 = v107;
          sub_1002CFC48();
          v107 = v122;
        }
      }

      else
      {
        sub_100574574(v112, v69);
        v107 = sub_10000EBD4(v106);
        if ((v113 & 1) != (v114 & 1))
        {
LABEL_138:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);

          __break(1u);
          return result;
        }
      }

      v70 = v340;
      v115 = v343;
      v316 = v343;
      if (v113)
      {
        (*(v339 + 40))(v343[7] + *(v339 + 72) * v107, v297, v335);
        (*v330)(v324, v337);
        v72 = v318;
        v73 = &qword_10097AD48;
        v74 = &unk_1007FDFB0;
        goto LABEL_6;
      }

      v343[(v107 >> 6) + 8] |= 1 << v107;
      v116 = v327;
      v117 = v107;
      v69 = v324;
      v118 = v337;
      (*(v327 + 16))(*(v115 + 48) + *(v327 + 72) * v107, v324, v337);
      v104((*(v316 + 56) + *(v339 + 72) * v117), v297, v335);
      v119 = v316;
      (*(v116 + 8))(v69, v118);
      sub_100005508(v318, &qword_10097AD48, &unk_1007FDFB0);
      v120 = *(v119 + 16);
      v111 = __OFADD__(v120, 1);
      v121 = v120 + 1;
      if (v111)
      {
        goto LABEL_135;
      }

      *(v119 + 16) = v121;
LABEL_7:
      v67 = v296;
      v66 &= v66 - 1;
      (v306)(&v315[*(v338 + 48)], v310);
      v69 = v335;
      goto LABEL_8;
    }
  }

  v313 = sub_100281500(_swiftEmptyArrayStorage);
  v123 = (v302 + 64);
  v124 = 1 << *(v302 + 32);
  v125 = -1;
  if (v124 < 64)
  {
    v125 = ~(-1 << v124);
  }

  v126 = v125 & *(v302 + 64);
  v127 = (v124 + 63) >> 6;

  v128 = 0;
  v315 = v123;
  v310 = v127;
LABEL_40:
  if (v126)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v133 = v128 + 1;
    if (__OFADD__(v128, 1))
    {
      goto LABEL_131;
    }

    if (v133 >= v127)
    {
      break;
    }

    v126 = *&v123[8 * v133];
    ++v128;
    if (v126)
    {
      v128 = v133;
LABEL_45:
      v134 = __clz(__rbit64(v126)) | (v128 << 6);
      v135 = v302;
      v136 = *(v302 + 48);
      v338 = type metadata accessor for SFAirDrop.TransferIdentifier();
      v137 = *(v338 - 8);
      v138 = v312;
      (*(v137 + 16))(v312, v136 + *(v137 + 72) * v134, v338);
      v139 = *(v135 + 56);
      v140 = type metadata accessor for SFAirDropReceive.Transfer();
      v141 = *(v140 - 1);
      (*(v141 + 16))(v138 + *(v333 + 48), v139 + *(v141 + 72) * v134, v140);
      v142 = v311;
      sub_10000FF90(v138, v311, &qword_10097AD40, &unk_1007FDFA0);
      SFAirDrop.TransferIdentifier.id.getter();
      v143 = *(v137 + 8);
      v325 = (v137 + 8);
      v143(v142, v338);
      v144 = v295;
      sub_10000FF90(v138, v295, &qword_10097AD40, &unk_1007FDFA0);
      v145 = *(v333 + 48);
      v146 = v294;
      SFAirDropReceive.Transfer.activeInterfaceType.getter();
      v147 = *(v141 + 8);
      v324 = v140;
      i = v141 + 8;
      v318 = v147;
      (v147)(v144 + v145, v140);
      v148 = *v319;
      v149 = v335;
      if ((*v319)(v146, 1, v335) == 1)
      {
        v150 = *v336;
        (*v336)(v303, 1, 1, v149);
        if (v148(v146, 1, v149) != 1)
        {
          sub_100005508(v146, &qword_100977DC0, &unk_1007FB320);
        }

        v149 = v335;
        v151 = v303;
      }

      else
      {
        v151 = v303;
        (*v341)(v303, v146, v149);
        v150 = *v336;
        (*v336)(v151, 0, 1, v149);
      }

      v143(v144, v338);
      if (v148(v151, 1, v149) != 1)
      {
        v163 = *v341;
        (*v341)(v293, v151, v149);
        v164 = v313;
        v69 = swift_isUniquelyReferenced_nonNull_native();
        v343 = v164;
        v165 = sub_10000EBD4(v329);
        v167 = *(v164 + 16);
        v168 = (v166 & 1) == 0;
        v111 = __OFADD__(v167, v168);
        v169 = v167 + v168;
        if (!v111)
        {
          v170 = v166;
          if (*(v164 + 24) >= v169)
          {
            if ((v69 & 1) == 0)
            {
              v179 = v165;
              sub_1002CFC48();
              v165 = v179;
            }
          }

          else
          {
            sub_100574574(v169, v69);
            v165 = sub_10000EBD4(v329);
            if ((v170 & 1) != (v171 & 1))
            {
              goto LABEL_138;
            }
          }

          v70 = v340;
          v172 = v343;
          v313 = v343;
          if (v170)
          {
            (*(v339 + 40))(v343[7] + *(v339 + 72) * v165, v293, v335);
            (*v330)(v329, v337);
            v130 = v312;
            v131 = &qword_10097AD40;
            v132 = &unk_1007FDFA0;
            goto LABEL_38;
          }

          v69 = v340;
          v343[(v165 >> 6) + 8] |= 1 << v165;
          v173 = v327;
          v174 = v165;
          v175 = v329;
          v176 = v337;
          (*(v327 + 16))(*(v172 + 48) + *(v327 + 72) * v165, v329, v337);
          v163((*(v313 + 56) + *(v339 + 72) * v174), v293, v335);
          (*(v173 + 8))(v175, v176);
          sub_100005508(v312, &qword_10097AD40, &unk_1007FDFA0);
          v177 = *(v313 + 16);
          v111 = __OFADD__(v177, 1);
          v178 = v177 + 1;
          if (!v111)
          {
            *(v313 + 16) = v178;
            v70 = v69;
            goto LABEL_39;
          }

LABEL_136:
          __break(1u);
LABEL_137:
          swift_once();
          goto LABEL_115;
        }

LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
        goto LABEL_136;
      }

      sub_100005508(v151, &qword_100977DC0, &unk_1007FB320);
      v152 = v329;
      v153 = v313;
      v154 = sub_10000EBD4(v329);
      if (v155)
      {
        v156 = v154;
        v338 = v150;
        v157 = swift_isUniquelyReferenced_nonNull_native();
        v343 = v153;
        v158 = v340;
        v159 = v153;
        if ((v157 & 1) == 0)
        {
          sub_1002CFC48();
          v159 = v343;
        }

        v160 = *(v327 + 8);
        v161 = v337;
        v160(*(v159 + 48) + *(v327 + 72) * v156, v337);
        v129 = v288;
        v162 = v335;
        (*(v339 + 32))(v288, *(v159 + 56) + *(v339 + 72) * v156, v335);
        v313 = v159;
        sub_1002D4E48(v156, v159);
        v160(v329, v161);
        sub_100005508(v312, &qword_10097AD40, &unk_1007FDFA0);
        v70 = v158;
        (v338)(v129, 0, 1, v162);
      }

      else
      {
        (*v330)(v152, v337);
        sub_100005508(v312, &qword_10097AD40, &unk_1007FDFA0);
        v70 = v340;
        v129 = v288;
        v150(v288, 1, 1, v335);
      }

      v130 = v129;
      v131 = &qword_100977DC0;
      v132 = &unk_1007FB320;
LABEL_38:
      sub_100005508(v130, v131, v132);
LABEL_39:
      v123 = v315;
      v127 = v310;
      v126 &= v126 - 1;
      (v318)(v311 + *(v333 + 48), v324);
      v69 = v335;
      goto LABEL_40;
    }
  }

  v180 = v316;

  v181 = v313;

  v182 = swift_isUniquelyReferenced_nonNull_native();
  v343 = v180;
  sub_10039C1A4(v181, sub_10039A428, 0, v182, &v343);
  v304 = 0;

  v183 = (v343 + 8);
  v184 = 1 << *(v343 + 32);
  v185 = -1;
  if (v184 < 64)
  {
    v185 = ~(-1 << v184);
  }

  v186 = v185 & v343[8];
  v312 = (v184 + 63) >> 6;
  v333 = v339 + 16;
  v338 = v327 + 32;
  v324 = (v287 + 56);
  v325 = (v287 + 48);
  v329 = (v339 + 8);
  v306 = @"InterfaceChanged";
  v318 = v343;

  v187 = 0;
  v188 = v337;
  v189 = v69;
  for (i = v183; ; v183 = i)
  {
    if (!v186)
    {
      if (v312 <= v187 + 1)
      {
        v194 = v187 + 1;
      }

      else
      {
        v194 = v312;
      }

      v195 = v194 - 1;
      while (1)
      {
        v193 = v187 + 1;
        if (__OFADD__(v187, 1))
        {
          break;
        }

        if (v193 >= v312)
        {
          v186 = 0;
          v209 = 1;
          v187 = v195;
          v205 = v328;
          goto LABEL_83;
        }

        v186 = *(v183 + 8 * v193);
        ++v187;
        if (v186)
        {
          v192 = v189;
          v187 = v193;
          goto LABEL_82;
        }
      }

      __break(1u);
      goto LABEL_130;
    }

    v192 = v189;
    v193 = v187;
LABEL_82:
    v196 = __clz(__rbit64(v186));
    v186 &= v186 - 1;
    v197 = v196 | (v193 << 6);
    v198 = v318;
    v199 = v327;
    v200 = v317;
    (*(v327 + 16))(v317, v318[6] + *(v327 + 72) * v197, v188);
    v201 = *(v198 + 56);
    v202 = v339;
    v203 = v188;
    v204 = v323;
    (*(v339 + 16))(v323, v201 + *(v339 + 72) * v197, v192);
    v205 = v328;
    v206 = *(v328 + 48);
    v207 = *(v199 + 32);
    v70 = v340;
    v207(v340, v200, v203);
    v208 = *(v202 + 32);
    v189 = v192;
    v208(v70 + v206, v204, v192);
    v209 = 0;
LABEL_83:
    v210 = *v324;
    (*v324)(v70, v209, 1, v205);
    v211 = v321;
    sub_10002C4E4(v70, v321, &qword_100974CE8, &qword_1007F8248);
    v69 = *v325;
    if ((*v325)(v211, 1, v205) == 1)
    {
      break;
    }

    v212 = *(v205 + 48);
    v188 = v337;
    v213 = v331;
    (*v338)(v331, v211, v337);
    v214 = *v341;
    v215 = v334;
    (*v341)(v334, v211 + v212, v189);
    v216 = *(v326 + 64);
    if (!*(v216 + 16))
    {
      goto LABEL_69;
    }

    v217 = sub_10000EBD4(v213);
    if ((v218 & 1) == 0)
    {

LABEL_69:
      (*v329)(v215, v189);
      (*v330)(v213, v188);
      v190 = v332;
      (*v336)(v332, 1, 1, v189);
      v191 = v190;
LABEL_70:
      sub_100005508(v191, &qword_100977DC0, &unk_1007FB320);
      goto LABEL_71;
    }

    v311 = v214;
    v219 = *(v216 + 56);
    v220 = v189;
    v309 = *(v339 + 72);
    v221 = *(v339 + 16);
    v222 = v339;
    v223 = v332;
    v221(v332, v219 + v309 * v217, v220);

    v224 = v220;
    v225 = *(v222 + 56);
    (v225)(v223, 0, 1, v220);
    v226 = v314;
    v310 = v221;
    v221(v314, v215, v224);
    v315 = v225;
    (v225)(v226, 0, 1, v224);
    v227 = v307;
    v228 = *(v308 + 48);
    v69 = &unk_1007FB320;
    sub_10000FF90(v223, v307, &qword_100977DC0, &unk_1007FB320);
    sub_10000FF90(v226, v227 + v228, &qword_100977DC0, &unk_1007FB320);
    v229 = *(v339 + 48);
    if (v229(v227, 1, v224) == 1)
    {
      sub_100005508(v226, &qword_100977DC0, &unk_1007FB320);
      if (v229(v227 + v228, 1, v224) == 1)
      {
        sub_100005508(v332, &qword_100977DC0, &unk_1007FB320);
        v189 = v335;
        (*v329)(v334, v335);
        v188 = v337;
        (*v330)(v331, v337);
        v191 = v227;
        goto LABEL_70;
      }

      goto LABEL_92;
    }

    v230 = v300;
    sub_10000FF90(v227, v300, &qword_100977DC0, &unk_1007FB320);
    if (v229(v227 + v228, 1, v224) == 1)
    {
      sub_100005508(v314, &qword_100977DC0, &unk_1007FB320);
      (*v329)(v230, v224);
LABEL_92:
      sub_100005508(v227, &qword_10097AD38, &unk_1007FDF90);
      goto LABEL_93;
    }

    v237 = v323;
    v311(v323, v227 + v228, v224);
    sub_10039C658(&qword_10097AD50, &type metadata accessor for SFNWInterfaceType, &protocol conformance descriptor for SFNWInterfaceType);
    LODWORD(v311) = dispatch thunk of static Equatable.== infix(_:_:)();
    v69 = *v329;
    (*v329)(v237, v224);
    sub_100005508(v314, &qword_100977DC0, &unk_1007FB320);
    (v69)(v230, v224);
    sub_100005508(v227, &qword_100977DC0, &unk_1007FB320);
    v188 = v337;
    v238 = v334;
    if (v311)
    {
      sub_100005508(v332, &qword_100977DC0, &unk_1007FB320);
      v189 = v335;
      (v69)(v238, v335);
      (*v330)(v331, v188);
      goto LABEL_71;
    }

LABEL_93:
    v231 = v316;
    if (*(v316 + 16))
    {
      v232 = v331;
      v233 = sub_10000EBD4(v331);
      if (v234)
      {
        v310(v305, *(v231 + 56) + v233 * v309, v335);
        v235 = 0;
        v236 = &off_1008CE3B8;
      }

      else
      {
        v235 = 1;
        v236 = &off_1008CE3C0;
      }
    }

    else
    {
      v235 = 1;
      v236 = &off_1008CE3C0;
      v232 = v331;
    }

    v239 = v305;
    v240 = v335;
    (v315)(v305, v235, 1, v335);
    sub_100005508(v239, &qword_100977DC0, &unk_1007FB320);
    v69 = *v236;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v242 = v334;
    SFNWInterfaceType.description.getter();
    v243 = String._bridgeToObjectiveC()();

    sub_100086E1C(v69, v306, isa, v243, 0.0);

    v189 = v240;
    sub_100005508(v332, &qword_100977DC0, &unk_1007FB320);
    (*v329)(v242, v240);
    v188 = v337;
    (*v330)(v232, v337);
LABEL_71:
    v70 = v340;
  }

  v245 = v304;
  v246 = sub_10039A508(v244);
  v331 = v245;
  v332 = v246;

  v247 = *(v326 + 64);
  v248 = (v247 + 64);
  v249 = 1 << *(v247 + 32);
  v250 = -1;
  if (v249 < 64)
  {
    v250 = ~(-1 << v249);
  }

  v251 = v250 & *(v247 + 64);
  v252 = (v249 + 63) >> 6;
  LODWORD(v340) = enum case for SFNWInterfaceType.cellular(_:);
  v338 = v339 + 104;
  v341 = v247;
  swift_bridgeObjectRetain_n();
  v253 = 0;
  v336 = v248;
  v334 = v252;
  v254 = v335;
  if (!v251)
  {
LABEL_105:
    while (1)
    {
      v255 = v253 + 1;
      if (__OFADD__(v253, 1))
      {
        goto LABEL_132;
      }

      if (v255 >= v252)
      {

        v264 = v286;
        v265 = v286;
        v266 = 1;
        goto LABEL_112;
      }

      v251 = v248[v255];
      ++v253;
      if (v251)
      {
        goto LABEL_108;
      }
    }
  }

  while (1)
  {
    v255 = v253;
LABEL_108:
    v256 = __clz(__rbit64(v251)) | (v255 << 6);
    v257 = v341;
    v258 = v291;
    (*(v327 + 16))(v291, *(v341 + 48) + *(v327 + 72) * v256, v337);
    v259 = v339;
    (*(v339 + 16))(&v258[*(v328 + 48)], *(v257 + 56) + *(v339 + 72) * v256, v254);
    v260 = v258;
    v261 = v292;
    sub_10002C4E4(v260, v292, &qword_100974CE0, &qword_1007F8240);
    v262 = *(v259 + 104);
    v263 = v323;
    v262(v323, v340, v254);
    LOBYTE(v256) = static SFNWInterfaceType.== infix(_:_:)();
    (*(v339 + 8))(v263, v254);
    if (v256)
    {
      break;
    }

    v251 &= v251 - 1;
    sub_100005508(v261, &qword_100974CE0, &qword_1007F8240);
    v253 = v255;
    v248 = v336;
    v252 = v334;
    if (!v251)
    {
      goto LABEL_105;
    }
  }

  v285 = v261;
  v264 = v286;
  sub_10002C4E4(v285, v286, &qword_100974CE0, &qword_1007F8240);
  v265 = v264;
  v266 = 0;
LABEL_112:
  v267 = v328;
  v210(v265, v266, 1, v328);

  v268 = (v69)(v264, 1, v267);
  sub_100005508(v264, &qword_100974CE8, &qword_1007F8248);
  v69 = v332;
  if (*(v332 + 2))
  {
    if (v268 != 1)
    {

      goto LABEL_127;
    }

    if (qword_100973628 != -1)
    {
      goto LABEL_137;
    }

LABEL_115:
    v269 = type metadata accessor for Logger();
    sub_10000C4AC(v269, qword_100978DC0);

    v270 = Logger.logObject.getter();
    v271 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v270, v271))
    {
      v272 = swift_slowAlloc();
      v273 = swift_slowAlloc();
      v343 = v273;
      *v272 = 136315138;
      v274 = sub_100391DFC(v69);

      v342 = v274;
      sub_10028088C(&unk_100976C20, &unk_1007F9D80);
      sub_100011630(&qword_10097F070, &unk_100976C20, &unk_1007F9D80, &protocol conformance descriptor for [A]);
      v275 = BidirectionalCollection<>.joined(separator:)();
      v277 = v276;

      v278 = sub_10000C4E4(v275, v277, &v343);

      *(v272 + 4) = v278;
      _os_log_impl(&_mh_execute_header, v270, v271, "Transfers using cellular: %s", v272, 0xCu);
      sub_10000C60C(v273);
    }

    else
    {
    }

    v283 = 1;
  }

  else
  {

    if (v268 == 1)
    {
      goto LABEL_127;
    }

    if (qword_100973628 != -1)
    {
      swift_once();
    }

    v279 = type metadata accessor for Logger();
    sub_10000C4AC(v279, qword_100978DC0);
    v280 = Logger.logObject.getter();
    v281 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v280, v281))
    {
      v282 = swift_slowAlloc();
      *v282 = 0;
      _os_log_impl(&_mh_execute_header, v280, v281, "Transfers stopped using cellular", v282, 2u);
    }

    v283 = 0;
  }

  sub_100637614(v283);
LABEL_127:
  *(v326 + 64) = v318;
}

uint64_t sub_10039461C(uint64_t a1, uint64_t a2)
{
  v302 = a2;
  v3 = sub_10028088C(&qword_100974CE0, &qword_1007F8240);
  v287 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v292 = &v286 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v291 = &v286 - v6;
  v308 = sub_10028088C(&qword_10097AD38, &unk_1007FDF90);
  __chkstk_darwin(v308);
  v8 = &v286 - v7;
  v9 = sub_10028088C(&qword_100974CE8, &qword_1007F8248);
  v10 = __chkstk_darwin(v9 - 8);
  v286 = &v286 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v340 = &v286 - v13;
  __chkstk_darwin(v12);
  v321 = &v286 - v14;
  v333 = sub_10028088C(&qword_10097AD40, &unk_1007FDFA0);
  v15 = __chkstk_darwin(v333);
  v17 = &v286 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v311 = (&v286 - v19);
  __chkstk_darwin(v18);
  v312 = &v286 - v20;
  v21 = type metadata accessor for SFNWInterfaceType();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v334 = &v286 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v323 = &v286 - v26;
  v27 = __chkstk_darwin(v25);
  v293 = &v286 - v28;
  __chkstk_darwin(v27);
  v297 = &v286 - v29;
  v30 = sub_10028088C(&qword_100977DC0, &unk_1007FB320);
  v31 = __chkstk_darwin(v30 - 8);
  v305 = &v286 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v300 = &v286 - v34;
  v35 = __chkstk_darwin(v33);
  v314 = &v286 - v36;
  v37 = __chkstk_darwin(v35);
  v332 = &v286 - v38;
  v39 = __chkstk_darwin(v37);
  v288 = &v286 - v40;
  v41 = __chkstk_darwin(v39);
  v294 = &v286 - v42;
  v43 = __chkstk_darwin(v41);
  v303 = &v286 - v44;
  v45 = __chkstk_darwin(v43);
  v290 = &v286 - v46;
  v47 = __chkstk_darwin(v45);
  v299 = &v286 - v48;
  __chkstk_darwin(v47);
  v304 = &v286 - v49;
  v337 = type metadata accessor for UUID();
  v50 = *(v337 - 8);
  v51 = __chkstk_darwin(v337);
  v331 = (&v286 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = __chkstk_darwin(v51);
  v317 = &v286 - v54;
  v55 = __chkstk_darwin(v53);
  v329 = (&v286 - v56);
  __chkstk_darwin(v55);
  v324 = (&v286 - v57);
  v338 = sub_10028088C(&qword_10097AD48, &unk_1007FDFB0);
  v58 = __chkstk_darwin(v338);
  i = &v286 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __chkstk_darwin(v58);
  v315 = &v286 - v61;
  __chkstk_darwin(v60);
  v318 = (&v286 - v62);
  v316 = sub_100281500(_swiftEmptyArrayStorage);
  v63 = a1 + 64;
  v64 = 1 << *(a1 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & *(a1 + 64);
  v67 = (v64 + 63) >> 6;
  v319 = (v22 + 48);
  v341 = v22 + 32;
  v336 = (v22 + 56);
  v322 = v50 + 16;
  v327 = v50;
  v330 = (v50 + 8);
  v289 = v22 + 40;
  v301 = a1;

  v68 = 0;
  v328 = v3;
  v69 = v21;
  v335 = v21;
  v339 = v22;
  v307 = v8;
  v70 = v340;
  v295 = v17;
  v298 = v63;
  v296 = v67;
LABEL_8:
  if (v66)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v75 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
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

    if (v75 >= v67)
    {
      break;
    }

    v66 = *(v63 + 8 * v75);
    ++v68;
    if (v66)
    {
      v68 = v75;
LABEL_13:
      v76 = __clz(__rbit64(v66)) | (v68 << 6);
      v77 = v301;
      v78 = *(v301 + 48);
      v325 = type metadata accessor for SFAirDrop.TransferIdentifier();
      v79 = *(v325 - 1);
      v80 = v318;
      (*(v79 + 16))(v318, v78 + *(v79 + 72) * v76, v325);
      v81 = *(v77 + 56);
      v82 = type metadata accessor for SFAirDropSend.Transfer();
      v83 = *(v82 - 8);
      (*(v83 + 16))(v80 + *(v338 + 48), v81 + *(v83 + 72) * v76, v82);
      v84 = v315;
      sub_10000FF90(v80, v315, &qword_10097AD48, &unk_1007FDFB0);
      SFAirDrop.TransferIdentifier.id.getter();
      v85 = *(v79 + 8);
      v313 = v79 + 8;
      v85(v84, v325);
      v86 = v80;
      v87 = i;
      sub_10000FF90(v86, i, &qword_10097AD48, &unk_1007FDFB0);
      v88 = *(v338 + 48);
      v89 = v299;
      SFAirDropSend.Transfer.activeInterfaceType.getter();
      v90 = *(v83 + 8);
      v310 = v82;
      v309 = v83 + 8;
      v306 = v90;
      (v90)(v87 + v88, v82);
      v91 = *v319;
      v92 = v335;
      if ((*v319)(v89, 1, v335) == 1)
      {
        v93 = *v336;
        (*v336)(v304, 1, 1, v92);
        if (v91(v89, 1, v92) != 1)
        {
          sub_100005508(v89, &qword_100977DC0, &unk_1007FB320);
        }

        v92 = v335;
        v94 = v304;
      }

      else
      {
        v94 = v304;
        (*v341)(v304, v89, v92);
        v93 = *v336;
        (*v336)(v94, 0, 1, v92);
      }

      v63 = v298;
      v85(i, v325);
      if (v91(v94, 1, v92) == 1)
      {
        sub_100005508(v94, &qword_100977DC0, &unk_1007FB320);
        v95 = v324;
        v96 = v316;
        v97 = sub_10000EBD4(v324);
        if (v98)
        {
          v99 = v97;
          v325 = v93;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v343 = v96;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1002CFC48();
            v96 = v343;
          }

          v101 = *(v327 + 8);
          v102 = v337;
          v101(*(v96 + 48) + *(v327 + 72) * v99, v337);
          v71 = v290;
          v103 = v335;
          (*(v339 + 32))(v290, *(v96 + 56) + *(v339 + 72) * v99, v335);
          v316 = v96;
          sub_1002D4E48(v99, v96);
          v101(v324, v102);
          sub_100005508(v318, &qword_10097AD48, &unk_1007FDFB0);
          v70 = v340;
          (v325)(v71, 0, 1, v103);
        }

        else
        {
          (*v330)(v95, v337);
          sub_100005508(v318, &qword_10097AD48, &unk_1007FDFB0);
          v70 = v340;
          v71 = v290;
          v93(v290, 1, 1, v335);
        }

        v72 = v71;
        v73 = &qword_100977DC0;
        v74 = &unk_1007FB320;
LABEL_6:
        sub_100005508(v72, v73, v74);
        goto LABEL_7;
      }

      v104 = *v341;
      (*v341)(v297, v94, v92);
      v105 = v316;
      v69 = swift_isUniquelyReferenced_nonNull_native();
      v343 = v105;
      v106 = v324;
      v107 = sub_10000EBD4(v324);
      v109 = *(v105 + 16);
      v110 = (v108 & 1) == 0;
      v111 = __OFADD__(v109, v110);
      v112 = v109 + v110;
      if (v111)
      {
        goto LABEL_133;
      }

      v113 = v108;
      if (*(v105 + 24) >= v112)
      {
        if ((v69 & 1) == 0)
        {
          v122 = v107;
          sub_1002CFC48();
          v107 = v122;
        }
      }

      else
      {
        sub_100574574(v112, v69);
        v107 = sub_10000EBD4(v106);
        if ((v113 & 1) != (v114 & 1))
        {
LABEL_138:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);

          __break(1u);
          return result;
        }
      }

      v70 = v340;
      v115 = v343;
      v316 = v343;
      if (v113)
      {
        (*(v339 + 40))(v343[7] + *(v339 + 72) * v107, v297, v335);
        (*v330)(v324, v337);
        v72 = v318;
        v73 = &qword_10097AD48;
        v74 = &unk_1007FDFB0;
        goto LABEL_6;
      }

      v343[(v107 >> 6) + 8] |= 1 << v107;
      v116 = v327;
      v117 = v107;
      v69 = v324;
      v118 = v337;
      (*(v327 + 16))(*(v115 + 48) + *(v327 + 72) * v107, v324, v337);
      v104((*(v316 + 56) + *(v339 + 72) * v117), v297, v335);
      v119 = v316;
      (*(v116 + 8))(v69, v118);
      sub_100005508(v318, &qword_10097AD48, &unk_1007FDFB0);
      v120 = *(v119 + 16);
      v111 = __OFADD__(v120, 1);
      v121 = v120 + 1;
      if (v111)
      {
        goto LABEL_135;
      }

      *(v119 + 16) = v121;
LABEL_7:
      v67 = v296;
      v66 &= v66 - 1;
      (v306)(&v315[*(v338 + 48)], v310);
      v69 = v335;
      goto LABEL_8;
    }
  }

  v313 = sub_100281500(_swiftEmptyArrayStorage);
  v123 = (v302 + 64);
  v124 = 1 << *(v302 + 32);
  v125 = -1;
  if (v124 < 64)
  {
    v125 = ~(-1 << v124);
  }

  v126 = v125 & *(v302 + 64);
  v127 = (v124 + 63) >> 6;

  v128 = 0;
  v315 = v123;
  v310 = v127;
LABEL_40:
  if (v126)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v133 = v128 + 1;
    if (__OFADD__(v128, 1))
    {
      goto LABEL_131;
    }

    if (v133 >= v127)
    {
      break;
    }

    v126 = *&v123[8 * v133];
    ++v128;
    if (v126)
    {
      v128 = v133;
LABEL_45:
      v134 = __clz(__rbit64(v126)) | (v128 << 6);
      v135 = v302;
      v136 = *(v302 + 48);
      v338 = type metadata accessor for SFAirDrop.TransferIdentifier();
      v137 = *(v338 - 8);
      v138 = v312;
      (*(v137 + 16))(v312, v136 + *(v137 + 72) * v134, v338);
      v139 = *(v135 + 56);
      v140 = type metadata accessor for SFAirDropReceive.Transfer();
      v141 = *(v140 - 1);
      (*(v141 + 16))(v138 + *(v333 + 48), v139 + *(v141 + 72) * v134, v140);
      v142 = v311;
      sub_10000FF90(v138, v311, &qword_10097AD40, &unk_1007FDFA0);
      SFAirDrop.TransferIdentifier.id.getter();
      v143 = *(v137 + 8);
      v325 = (v137 + 8);
      v143(v142, v338);
      v144 = v295;
      sub_10000FF90(v138, v295, &qword_10097AD40, &unk_1007FDFA0);
      v145 = *(v333 + 48);
      v146 = v294;
      SFAirDropReceive.Transfer.activeInterfaceType.getter();
      v147 = *(v141 + 8);
      v324 = v140;
      i = v141 + 8;
      v318 = v147;
      (v147)(v144 + v145, v140);
      v148 = *v319;
      v149 = v335;
      if ((*v319)(v146, 1, v335) == 1)
      {
        v150 = *v336;
        (*v336)(v303, 1, 1, v149);
        if (v148(v146, 1, v149) != 1)
        {
          sub_100005508(v146, &qword_100977DC0, &unk_1007FB320);
        }

        v149 = v335;
        v151 = v303;
      }

      else
      {
        v151 = v303;
        (*v341)(v303, v146, v149);
        v150 = *v336;
        (*v336)(v151, 0, 1, v149);
      }

      v143(v144, v338);
      if (v148(v151, 1, v149) != 1)
      {
        v163 = *v341;
        (*v341)(v293, v151, v149);
        v164 = v313;
        v69 = swift_isUniquelyReferenced_nonNull_native();
        v343 = v164;
        v165 = sub_10000EBD4(v329);
        v167 = *(v164 + 16);
        v168 = (v166 & 1) == 0;
        v111 = __OFADD__(v167, v168);
        v169 = v167 + v168;
        if (!v111)
        {
          v170 = v166;
          if (*(v164 + 24) >= v169)
          {
            if ((v69 & 1) == 0)
            {
              v179 = v165;
              sub_1002CFC48();
              v165 = v179;
            }
          }

          else
          {
            sub_100574574(v169, v69);
            v165 = sub_10000EBD4(v329);
            if ((v170 & 1) != (v171 & 1))
            {
              goto LABEL_138;
            }
          }

          v70 = v340;
          v172 = v343;
          v313 = v343;
          if (v170)
          {
            (*(v339 + 40))(v343[7] + *(v339 + 72) * v165, v293, v335);
            (*v330)(v329, v337);
            v130 = v312;
            v131 = &qword_10097AD40;
            v132 = &unk_1007FDFA0;
            goto LABEL_38;
          }

          v69 = v340;
          v343[(v165 >> 6) + 8] |= 1 << v165;
          v173 = v327;
          v174 = v165;
          v175 = v329;
          v176 = v337;
          (*(v327 + 16))(*(v172 + 48) + *(v327 + 72) * v165, v329, v337);
          v163((*(v313 + 56) + *(v339 + 72) * v174), v293, v335);
          (*(v173 + 8))(v175, v176);
          sub_100005508(v312, &qword_10097AD40, &unk_1007FDFA0);
          v177 = *(v313 + 16);
          v111 = __OFADD__(v177, 1);
          v178 = v177 + 1;
          if (!v111)
          {
            *(v313 + 16) = v178;
            v70 = v69;
            goto LABEL_39;
          }

LABEL_136:
          __break(1u);
LABEL_137:
          swift_once();
          goto LABEL_115;
        }

LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
        goto LABEL_136;
      }

      sub_100005508(v151, &qword_100977DC0, &unk_1007FB320);
      v152 = v329;
      v153 = v313;
      v154 = sub_10000EBD4(v329);
      if (v155)
      {
        v156 = v154;
        v338 = v150;
        v157 = swift_isUniquelyReferenced_nonNull_native();
        v343 = v153;
        v158 = v340;
        v159 = v153;
        if ((v157 & 1) == 0)
        {
          sub_1002CFC48();
          v159 = v343;
        }

        v160 = *(v327 + 8);
        v161 = v337;
        v160(*(v159 + 48) + *(v327 + 72) * v156, v337);
        v129 = v288;
        v162 = v335;
        (*(v339 + 32))(v288, *(v159 + 56) + *(v339 + 72) * v156, v335);
        v313 = v159;
        sub_1002D4E48(v156, v159);
        v160(v329, v161);
        sub_100005508(v312, &qword_10097AD40, &unk_1007FDFA0);
        v70 = v158;
        (v338)(v129, 0, 1, v162);
      }

      else
      {
        (*v330)(v152, v337);
        sub_100005508(v312, &qword_10097AD40, &unk_1007FDFA0);
        v70 = v340;
        v129 = v288;
        v150(v288, 1, 1, v335);
      }

      v130 = v129;
      v131 = &qword_100977DC0;
      v132 = &unk_1007FB320;
LABEL_38:
      sub_100005508(v130, v131, v132);
LABEL_39:
      v123 = v315;
      v127 = v310;
      v126 &= v126 - 1;
      (v318)(v311 + *(v333 + 48), v324);
      v69 = v335;
      goto LABEL_40;
    }
  }

  v180 = v316;

  v181 = v313;

  v182 = swift_isUniquelyReferenced_nonNull_native();
  v343 = v180;
  sub_10039C1A4(v181, sub_10039A428, 0, v182, &v343);
  v304 = 0;

  v183 = (v343 + 8);
  v184 = 1 << *(v343 + 32);
  v185 = -1;
  if (v184 < 64)
  {
    v185 = ~(-1 << v184);
  }

  v186 = v185 & v343[8];
  v312 = (v184 + 63) >> 6;
  v333 = v339 + 16;
  v338 = v327 + 32;
  v324 = (v287 + 56);
  v325 = (v287 + 48);
  v329 = (v339 + 8);
  v306 = @"InterfaceChanged";
  v318 = v343;

  v187 = 0;
  v188 = v337;
  v189 = v69;
  for (i = v183; ; v183 = i)
  {
    if (!v186)
    {
      if (v312 <= v187 + 1)
      {
        v194 = v187 + 1;
      }

      else
      {
        v194 = v312;
      }

      v195 = v194 - 1;
      while (1)
      {
        v193 = v187 + 1;
        if (__OFADD__(v187, 1))
        {
          break;
        }

        if (v193 >= v312)
        {
          v186 = 0;
          v209 = 1;
          v187 = v195;
          v205 = v328;
          goto LABEL_83;
        }

        v186 = *(v183 + 8 * v193);
        ++v187;
        if (v186)
        {
          v192 = v189;
          v187 = v193;
          goto LABEL_82;
        }
      }

      __break(1u);
      goto LABEL_130;
    }

    v192 = v189;
    v193 = v187;
LABEL_82:
    v196 = __clz(__rbit64(v186));
    v186 &= v186 - 1;
    v197 = v196 | (v193 << 6);
    v198 = v318;
    v199 = v327;
    v200 = v317;
    (*(v327 + 16))(v317, v318[6] + *(v327 + 72) * v197, v188);
    v201 = *(v198 + 56);
    v202 = v339;
    v203 = v188;
    v204 = v323;
    (*(v339 + 16))(v323, v201 + *(v339 + 72) * v197, v192);
    v205 = v328;
    v206 = *(v328 + 48);
    v207 = *(v199 + 32);
    v70 = v340;
    v207(v340, v200, v203);
    v208 = *(v202 + 32);
    v189 = v192;
    v208(v70 + v206, v204, v192);
    v209 = 0;
LABEL_83:
    v210 = *v324;
    (*v324)(v70, v209, 1, v205);
    v211 = v321;
    sub_10002C4E4(v70, v321, &qword_100974CE8, &qword_1007F8248);
    v69 = *v325;
    if ((*v325)(v211, 1, v205) == 1)
    {
      break;
    }

    v212 = *(v205 + 48);
    v188 = v337;
    v213 = v331;
    (*v338)(v331, v211, v337);
    v214 = *v341;
    v215 = v334;
    (*v341)(v334, v211 + v212, v189);
    v216 = *(v326 + 160);
    if (!*(v216 + 16))
    {
      goto LABEL_69;
    }

    v217 = sub_10000EBD4(v213);
    if ((v218 & 1) == 0)
    {

LABEL_69:
      (*v329)(v215, v189);
      (*v330)(v213, v188);
      v190 = v332;
      (*v336)(v332, 1, 1, v189);
      v191 = v190;
LABEL_70:
      sub_100005508(v191, &qword_100977DC0, &unk_1007FB320);
      goto LABEL_71;
    }

    v311 = v214;
    v219 = *(v216 + 56);
    v220 = v189;
    v309 = *(v339 + 72);
    v221 = *(v339 + 16);
    v222 = v339;
    v223 = v332;
    v221(v332, v219 + v309 * v217, v220);

    v224 = v220;
    v225 = *(v222 + 56);
    (v225)(v223, 0, 1, v220);
    v226 = v314;
    v310 = v221;
    v221(v314, v215, v224);
    v315 = v225;
    (v225)(v226, 0, 1, v224);
    v227 = v307;
    v228 = *(v308 + 48);
    v69 = &unk_1007FB320;
    sub_10000FF90(v223, v307, &qword_100977DC0, &unk_1007FB320);
    sub_10000FF90(v226, v227 + v228, &qword_100977DC0, &unk_1007FB320);
    v229 = *(v339 + 48);
    if (v229(v227, 1, v224) == 1)
    {
      sub_100005508(v226, &qword_100977DC0, &unk_1007FB320);
      if (v229(v227 + v228, 1, v224) == 1)
      {
        sub_100005508(v332, &qword_100977DC0, &unk_1007FB320);
        v189 = v335;
        (*v329)(v334, v335);
        v188 = v337;
        (*v330)(v331, v337);
        v191 = v227;
        goto LABEL_70;
      }

      goto LABEL_92;
    }

    v230 = v300;
    sub_10000FF90(v227, v300, &qword_100977DC0, &unk_1007FB320);
    if (v229(v227 + v228, 1, v224) == 1)
    {
      sub_100005508(v314, &qword_100977DC0, &unk_1007FB320);
      (*v329)(v230, v224);
LABEL_92:
      sub_100005508(v227, &qword_10097AD38, &unk_1007FDF90);
      goto LABEL_93;
    }

    v237 = v323;
    v311(v323, v227 + v228, v224);
    sub_10039C658(&qword_10097AD50, &type metadata accessor for SFNWInterfaceType, &protocol conformance descriptor for SFNWInterfaceType);
    LODWORD(v311) = dispatch thunk of static Equatable.== infix(_:_:)();
    v69 = *v329;
    (*v329)(v237, v224);
    sub_100005508(v314, &qword_100977DC0, &unk_1007FB320);
    (v69)(v230, v224);
    sub_100005508(v227, &qword_100977DC0, &unk_1007FB320);
    v188 = v337;
    v238 = v334;
    if (v311)
    {
      sub_100005508(v332, &qword_100977DC0, &unk_1007FB320);
      v189 = v335;
      (v69)(v238, v335);
      (*v330)(v331, v188);
      goto LABEL_71;
    }

LABEL_93:
    v231 = v316;
    if (*(v316 + 16))
    {
      v232 = v331;
      v233 = sub_10000EBD4(v331);
      if (v234)
      {
        v310(v305, *(v231 + 56) + v233 * v309, v335);
        v235 = 0;
        v236 = &off_1008CE3B8;
      }

      else
      {
        v235 = 1;
        v236 = &off_1008CE3C0;
      }
    }

    else
    {
      v235 = 1;
      v236 = &off_1008CE3C0;
      v232 = v331;
    }

    v239 = v305;
    v240 = v335;
    (v315)(v305, v235, 1, v335);
    sub_100005508(v239, &qword_100977DC0, &unk_1007FB320);
    v69 = *v236;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v242 = v334;
    SFNWInterfaceType.description.getter();
    v243 = String._bridgeToObjectiveC()();

    sub_100086E1C(v69, v306, isa, v243, 0.0);

    v189 = v240;
    sub_100005508(v332, &qword_100977DC0, &unk_1007FB320);
    (*v329)(v242, v240);
    v188 = v337;
    (*v330)(v232, v337);
LABEL_71:
    v70 = v340;
  }

  v245 = v304;
  v246 = sub_10039A508(v244);
  v331 = v245;
  v332 = v246;

  v247 = *(v326 + 160);
  v248 = (v247 + 64);
  v249 = 1 << *(v247 + 32);
  v250 = -1;
  if (v249 < 64)
  {
    v250 = ~(-1 << v249);
  }

  v251 = v250 & *(v247 + 64);
  v252 = (v249 + 63) >> 6;
  LODWORD(v340) = enum case for SFNWInterfaceType.cellular(_:);
  v338 = v339 + 104;
  v341 = v247;
  swift_bridgeObjectRetain_n();
  v253 = 0;
  v336 = v248;
  v334 = v252;
  v254 = v335;
  if (!v251)
  {
LABEL_105:
    while (1)
    {
      v255 = v253 + 1;
      if (__OFADD__(v253, 1))
      {
        goto LABEL_132;
      }

      if (v255 >= v252)
      {

        v264 = v286;
        v265 = v286;
        v266 = 1;
        goto LABEL_112;
      }

      v251 = v248[v255];
      ++v253;
      if (v251)
      {
        goto LABEL_108;
      }
    }
  }

  while (1)
  {
    v255 = v253;
LABEL_108:
    v256 = __clz(__rbit64(v251)) | (v255 << 6);
    v257 = v341;
    v258 = v291;
    (*(v327 + 16))(v291, *(v341 + 48) + *(v327 + 72) * v256, v337);
    v259 = v339;
    (*(v339 + 16))(&v258[*(v328 + 48)], *(v257 + 56) + *(v339 + 72) * v256, v254);
    v260 = v258;
    v261 = v292;
    sub_10002C4E4(v260, v292, &qword_100974CE0, &qword_1007F8240);
    v262 = *(v259 + 104);
    v263 = v323;
    v262(v323, v340, v254);
    LOBYTE(v256) = static SFNWInterfaceType.== infix(_:_:)();
    (*(v339 + 8))(v263, v254);
    if (v256)
    {
      break;
    }

    v251 &= v251 - 1;
    sub_100005508(v261, &qword_100974CE0, &qword_1007F8240);
    v253 = v255;
    v248 = v336;
    v252 = v334;
    if (!v251)
    {
      goto LABEL_105;
    }
  }

  v285 = v261;
  v264 = v286;
  sub_10002C4E4(v285, v286, &qword_100974CE0, &qword_1007F8240);
  v265 = v264;
  v266 = 0;
LABEL_112:
  v267 = v328;
  v210(v265, v266, 1, v328);

  v268 = (v69)(v264, 1, v267);
  sub_100005508(v264, &qword_100974CE8, &qword_1007F8248);
  v69 = v332;
  if (*(v332 + 2))
  {
    if (v268 != 1)
    {

      goto LABEL_127;
    }

    if (qword_100973628 != -1)
    {
      goto LABEL_137;
    }

LABEL_115:
    v269 = type metadata accessor for Logger();
    sub_10000C4AC(v269, qword_100978DC0);

    v270 = Logger.logObject.getter();
    v271 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v270, v271))
    {
      v272 = swift_slowAlloc();
      v273 = swift_slowAlloc();
      v343 = v273;
      *v272 = 136315138;
      v274 = sub_100391DFC(v69);

      v342 = v274;
      sub_10028088C(&unk_100976C20, &unk_1007F9D80);
      sub_100011630(&qword_10097F070, &unk_100976C20, &unk_1007F9D80, &protocol conformance descriptor for [A]);
      v275 = BidirectionalCollection<>.joined(separator:)();
      v277 = v276;

      v278 = sub_10000C4E4(v275, v277, &v343);

      *(v272 + 4) = v278;
      _os_log_impl(&_mh_execute_header, v270, v271, "Transfers using cellular: %s", v272, 0xCu);
      sub_10000C60C(v273);
    }

    else
    {
    }

    v283 = 1;
  }

  else
  {

    if (v268 == 1)
    {
      goto LABEL_127;
    }

    if (qword_100973628 != -1)
    {
      swift_once();
    }

    v279 = type metadata accessor for Logger();
    sub_10000C4AC(v279, qword_100978DC0);
    v280 = Logger.logObject.getter();
    v281 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v280, v281))
    {
      v282 = swift_slowAlloc();
      *v282 = 0;
      _os_log_impl(&_mh_execute_header, v280, v281, "Transfers stopped using cellular", v282, 2u);
    }

    v283 = 0;
  }

  sub_100637614(v283);
LABEL_127:
  *(v326 + 160) = v318;
}

uint64_t sub_100396B34()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097ABF8);
  v1 = sub_10000C4AC(v0, qword_10097ABF8);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100396BFC()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  if (qword_100973788 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_10097ABF8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "SDAirDropReceiveService start", v8, 2u);
  }

  *(v1[5] + 24) = &off_1008DDDA0;
  swift_unknownObjectWeakAssign();
  sub_10039C9A8();
  v9 = v1[12];
  v10 = v1[13];
  sub_10002CDC0(v1 + 9, v9);
  (*(v10 + 32))(v9, v10);
  sub_10027F290();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = qword_1009735E0;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = static AirDropActor.shared;
  v14 = sub_10039C658(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = v1;

  sub_1002B281C(0, 0, v4, &unk_1007FDF68, v15);

  sub_100637614(0);
  v1[20] = &_swiftEmptyDictionarySingleton;

  swift_beginAccess();
  v16 = v1[17];
  if (v16)
  {
    v17 = v1[18];
    sub_10002F5B4((v1 + 14), v1[17]);
    v18 = *(v17 + 16);
    v19 = swift_unknownObjectRetain();
    v18(v19, &off_1008DDD90, v16, v17);
  }

  return swift_endAccess();
}

void sub_100396F18()
{
  if (qword_100973788 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_10097ABF8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "SDAirDropReceiveService stop", v3, 2u);
  }

  sub_10039CBE4();
}

uint64_t sub_100396FFC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Logger();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_10028088C(&qword_10097AD68, &unk_1007FDFE0);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropReceive.Transfer();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v2[15] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003971E8, v6, 0);
}

uint64_t sub_1003971E8()
{
  v50 = v0;
  if (qword_100973788 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[3];
  sub_10000C4AC(v0[5], qword_10097ABF8);
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[12];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v49[0] = v12;
    *v11 = 136315138;
    sub_10039C658(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_10000C4E4(v13, v15, v49);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Canceling receive transfer %s", v11, 0xCu);
    sub_10000C60C(v12);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  CurrentValueSubject.value.getter();
  v17 = v0[2];
  if (!*(v17 + 16) || (v18 = sub_100570848(v0[3]), (v19 & 1) == 0))
  {
    v25 = SFAirDrop.TransferIdentifier.stringValue.getter();
    sub_10054141C(8, v25, v26);

    v27 = static String._fromSubstring(_:)();
    v29 = v28;

    v49[0] = 0x2E706F7244726941;
    v49[1] = 0xE800000000000000;
    v30._countAndFlagsBits = v27;
    v30._object = v29;
    String.append(_:)(v30);

    Logger.init(subsystem:category:)();

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = v0[6];
      v48 = v0[7];
      v34 = v0[5];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v49[0] = v36;
      *v35 = 136315138;
      sub_10039C658(&qword_10097F350, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
      v37 = Dictionary.Keys.description.getter();
      v39 = v38;

      v40 = sub_10000C4E4(v37, v39, v49);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v31, v32, "No receive transfer to cancel. Current transfer IDs: %s", v35, 0xCu);
      sub_10000C60C(v36);

      (*(v33 + 8))(v48, v34);
    }

    else
    {
      v42 = v0[6];
      v41 = v0[7];
      v43 = v0[5];

      (*(v42 + 8))(v41, v43);
    }

    v44 = type metadata accessor for SFAirDropReceive.Failure();
    sub_10039C658(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v44 - 8) + 104))(v45, enum case for SFAirDropReceive.Failure.badRequest(_:), v44);
    swift_willThrow();

    v24 = v0[1];
    goto LABEL_14;
  }

  v20 = v0[8];
  (*(v0[10] + 16))(v0[11], *(v17 + 56) + *(v0[10] + 72) * v18, v0[9]);

  SFAirDropReceive.Transfer.cancelAction.getter();
  v21 = type metadata accessor for SFAirDrop.DeclineAction();
  v0[16] = v21;
  v22 = *(v21 - 8);
  v0[17] = v22;
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    v23 = v0[8];
    (*(v0[10] + 8))(v0[11], v0[9]);
    sub_100005508(v23, &qword_10097AD68, &unk_1007FDFE0);

    v24 = v0[1];
LABEL_14:

    return v24();
  }

  v47 = swift_task_alloc();
  v0[18] = v47;
  *v47 = v0;
  v47[1] = sub_1003978C0;

  return SFAirDrop.DeclineAction.decline()();
}

uint64_t sub_1003978C0()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = v2[15];
    v4 = sub_100397A9C;
  }

  else
  {
    v5 = v2[15];
    (*(v2[17] + 8))(v2[8], v2[16]);
    v4 = sub_1003979F8;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003979F8()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100397A9C()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[8];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100397B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_10028088C(&qword_10097AD18, &unk_1007FDF70);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = sub_10028088C(&qword_10097AD20, &qword_100806FA0);
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v4[10] = static AirDropActor.shared;

  return _swift_task_switch(sub_100397CCC, v7, 0);
}

uint64_t sub_100397CCC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v0[2] = *(v0[3] + 48);
  sub_10028088C(&qword_10097AD28, &unk_1007FDF80);
  sub_100011630(&qword_10097AD30, &qword_10097AD28, &unk_1007FDF80, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  Publisher<>.values.getter();
  AsyncPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = sub_10039C658(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v0[11] = v4;
  v5 = v0[10];
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_100397E6C;

  return sub_1004C4C2C(v5, v4);
}

uint64_t sub_100397E6C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 104) = a1;

  if (!v1)
  {
    v5 = *(v3 + 80);

    return _swift_task_switch(sub_100397F80, v5, 0);
  }

  return result;
}

uint64_t sub_100397F80()
{
  v19 = v0;
  v1 = v0[13];
  if (v1)
  {
    if (qword_100973788 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_10097ABF8);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v18 = v6;
      *v5 = 136315138;
      type metadata accessor for SFAirDrop.TransferIdentifier();
      type metadata accessor for SFAirDropReceive.Transfer();
      sub_10039C658(&qword_10097F350, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
      v7 = Dictionary.description.getter();
      v9 = sub_10000C4E4(v7, v8, &v18);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Receive transfers updates in daemon: %s", v5, 0xCu);
      sub_10000C60C(v6);
    }

    v10 = v0[3];
    sub_10039461C(&_swiftEmptyDictionarySingleton, v1);
    v11 = v10[12];
    v12 = v10[13];
    sub_10002CDC0(v10 + 9, v11);
    (*(v12 + 72))(v1, v11, v12);

    v13 = v0[10];
    v14 = v0[11];
    v15 = swift_task_alloc();
    v0[12] = v15;
    *v15 = v0;
    v15[1] = sub_100397E6C;

    return sub_1004C4C2C(v13, v14);
  }

  else
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100398280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[25] = a2;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4[28] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v4[29] = v5;
  v6 = *(v5 - 8);
  v4[30] = v6;
  v4[31] = *(v6 + 64);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDropReceive.AskRequest();
  v4[34] = v7;
  v4[35] = *(v7 - 8);
  v4[36] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDrop.DisplayPriority();
  v4[37] = v8;
  v4[38] = *(v8 - 8);
  v4[39] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v4[40] = v9;
  v4[41] = *(v9 - 8);
  v4[42] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropReceive.Transfer();
  v4[43] = v10;
  v11 = *(v10 - 8);
  v4[44] = v11;
  v4[45] = *(v11 + 64);
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v4[50] = v12;
  v4[51] = *(v12 - 8);
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  sub_10028088C(&unk_1009762C0, &unk_1007F9430);
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v13 = sub_10028088C(&qword_10097AD08, &unk_1007FDF48);
  v4[59] = v13;
  v4[60] = *(v13 - 8);
  v4[61] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v14 = static AirDropActor.shared;
  v4[62] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003986A0, v14, 0);
}

uint64_t sub_1003986A0()
{
  sub_10028088C(&qword_10097AD00, &qword_1007FDF30);
  SFNoThrowAsyncSequence.makeAsyncIterator()();
  v0[63] = sub_10039C658(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  swift_beginAccess();
  v1 = sub_100011630(&qword_10097AD10, &qword_10097AD08, &unk_1007FDF48, &protocol conformance descriptor for SFNoThrowAsyncSequence<A>.AsyncIterator);
  v2 = swift_task_alloc();
  v0[64] = v2;
  *v2 = v0;
  v2[1] = sub_1003987F0;
  v3 = v0[58];
  v4 = v0[59];

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, v1);
}

uint64_t sub_1003987F0()
{
  v2 = *v1;
  *(v2 + 520) = v0;

  v3 = *(v2 + 496);
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

    v7 = sub_10039948C;
  }

  else
  {
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

    v7 = sub_100398988;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1003989A4()
{
  v96 = v0;
  v1 = v0[58];
  v2 = v0[43];
  v3 = v0[44];
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    (*(v0[60] + 8))(v0[61], v0[59]);
    if (qword_100973788 != -1)
    {
      swift_once();
    }

    v5 = v0[55];
    v6 = v0[50];
    v7 = v0[51];
    v8 = v0[26];
    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_10097ABF8);
    v10 = *(v7 + 16);
    v0[66] = v10;
    v0[67] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v5, v8, v6);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[55];
    v15 = v0[50];
    v16 = v0[51];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v95 = v18;
      *v17 = 136315138;
      sub_10039C658(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v16 + 8))(v14, v15);
      v22 = sub_10000C4E4(v19, v21, &v95);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v11, v12, "SDAirDropReceiveService.transfers REMOVE {id: %s}", v17, 0xCu);
      sub_10000C60C(v18);
    }

    else
    {

      (*(v16 + 8))(v14, v15);
    }

    v0[72] = *(v0[27] + 48);
    CurrentValueSubject.value.getter();
    v51 = v0[24];
    if (*(v51 + 16) && (v52 = sub_100570848(v0[26]), (v53 & 1) != 0))
    {
      v54 = v0[46];
      v55 = v0[43];
      v56 = v0[44];
      v57 = v0[27];
      v58 = *(v56 + 16);
      v56 += 16;
      v59 = *(v51 + 56) + *(v56 + 56) * v52;
      v0[73] = v58;
      v0[74] = v56 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v58(v54, v59, v55);

      if (*(v57 + 136))
      {
        sub_1002A9938(v0[27] + 112, (v0 + 2));
        v60 = v0[5];
        v61 = v0[6];
        sub_10002CDC0(v0 + 2, v60);
        v94 = (*(v61 + 40) + **(v61 + 40));
        v62 = swift_task_alloc();
        v0[75] = v62;
        *v62 = v0;
        v62[1] = sub_100399C68;
        v63 = v0[46];

        return v94(v63, v60, v61);
      }

      else
      {
        SFAirDropReceive.Transfer.askRequest.getter();
        v82 = swift_task_alloc();
        v0[76] = v82;
        *v82 = v0;
        v82[1] = sub_100399E2C;
        v83 = v0[36];

        return sub_10047D484(v83);
      }
    }

    else
    {

      v65 = v0[1];

      return v65();
    }
  }

  else
  {
    v93 = v4;
    v89 = *(v3 + 32);
    v89(v0[49], v1, v2);
    if (qword_100973788 != -1)
    {
      swift_once();
    }

    v23 = v0[54];
    v24 = v0[50];
    v25 = v0[51];
    v26 = v0[48];
    v27 = v0[49];
    v28 = v0[43];
    v29 = v0[44];
    v30 = v0[26];
    v31 = type metadata accessor for Logger();
    sub_10000C4AC(v31, qword_10097ABF8);
    v92 = *(v25 + 16);
    v92(v23, v30, v24);
    v91 = *(v29 + 16);
    v91(v26, v27, v28);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[54];
    v36 = v0[50];
    v37 = v0[51];
    v38 = v0[48];
    v40 = v0[43];
    v39 = v0[44];
    if (v34)
    {
      v87 = v0[41];
      v85 = v0[42];
      v86 = v0[40];
      v88 = v33;
      v41 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v41 = 136315394;
      sub_10039C658(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v40;
      v44 = v43;
      v90 = *(v37 + 8);
      v90(v35, v36);
      v45 = sub_10000C4E4(v42, v44, &v95);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      SFAirDropReceive.Transfer.state.getter();
      sub_10039C658(&unk_1009892B0, &type metadata accessor for SFAirDropReceive.Transfer.State, &protocol conformance descriptor for SFAirDropReceive.Transfer.State);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      (*(v87 + 8))(v85, v86);
      v49 = *(v39 + 8);
      v49(v38, v84);
      v50 = sub_10000C4E4(v46, v48, &v95);

      *(v41 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v32, v88, "SDAirDropReceiveService.transfers UPDATE {id: %s, state: %s}", v41, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v49 = *(v39 + 8);
      v49(v38, v40);
      v90 = *(v37 + 8);
      v90(v35, v36);
    }

    v0[68] = v49;
    v66 = v0[57];
    v67 = v0[49];
    v69 = v0[43];
    v68 = v0[44];
    v92(v0[53], v0[26], v0[50]);
    v91(v66, v67, v69);
    (*(v68 + 56))(v66, 0, 1, v69);
    v70 = CurrentValueSubject.value.modify();
    v72 = v71;
    if (v93(v66, 1, v69) == 1)
    {
      v73 = v0[56];
      v74 = v0[53];
      v75 = v0[50];
      sub_100005508(v0[57], &unk_1009762C0, &unk_1007F9430);
      sub_1002D2F14(v74, v73);
      v90(v74, v75);
      sub_100005508(v73, &unk_1009762C0, &unk_1007F9430);
    }

    else
    {
      v76 = v0[53];
      v77 = v0[50];
      v78 = v0[47];
      v89(v78, v0[57], v0[43]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = *v72;
      *v72 = 0x8000000000000000;
      sub_100579950(v78, v76, isUniquelyReferenced_nonNull_native);
      v90(v76, v77);
      *v72 = v95;
    }

    v70();
    v80 = swift_task_alloc();
    v0[69] = v80;
    *v80 = v0;
    v80[1] = sub_100399518;
    v81 = v0[49];

    return sub_100362C20(v81);
  }
}

uint64_t sub_10039948C()
{
  *(v0 + 184) = *(v0 + 520);
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100399518()
{
  v1 = *(*v0 + 496);

  return _swift_task_switch(sub_100399628, v1, 0);
}

uint64_t sub_100399628()
{
  v1 = v0[27];
  if (*(v1 + 136))
  {
    sub_1002A9938(v1 + 112, (v0 + 7));
    v2 = v0[10];
    v3 = v0[11];
    sub_10002CDC0(v0 + 7, v2);
    v9 = (*(v3 + 32) + **(v3 + 32));
    v4 = swift_task_alloc();
    v0[70] = v4;
    *v4 = v0;
    v4[1] = sub_1003997E0;
    v5 = v0[49];

    return v9(v5, v2, v3);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[71] = v7;
    *v7 = v0;
    v7[1] = sub_100399994;
    v8 = v0[49];

    return sub_10047CDB4(v8);
  }
}

uint64_t sub_1003997E0()
{
  v1 = *(*v0 + 496);

  return _swift_task_switch(sub_1003998F0, v1, 0);
}

uint64_t sub_1003998F0()
{
  sub_10000C60C(v0 + 7);
  v1 = swift_task_alloc();
  v0[71] = v1;
  *v1 = v0;
  v1[1] = sub_100399994;
  v2 = v0[49];

  return sub_10047CDB4(v2);
}

uint64_t sub_100399994()
{
  v1 = *(*v0 + 496);

  return _swift_task_switch(sub_100399AA4, v1, 0);
}

uint64_t sub_100399AA4()
{
  v1 = v0[49];
  v16 = v0[43];
  v17 = v0[68];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[39];
  v5 = v0[38];
  v14 = v0[37];
  v15 = v0[40];
  v6 = v0[27];
  v7 = v6[12];
  v8 = v6[13];
  sub_10002CDC0(v6 + 9, v7);
  SFAirDropReceive.Transfer.state.getter();
  SFAirDropReceive.Transfer.displayPriority.getter();
  (*(v8 + 56))(v2, v4, v7, v8);
  (*(v5 + 8))(v4, v14);
  (*(v3 + 8))(v2, v15);
  sub_10055D668(v1);
  v17(v1, v16);
  v9 = sub_100011630(&qword_10097AD10, &qword_10097AD08, &unk_1007FDF48, &protocol conformance descriptor for SFNoThrowAsyncSequence<A>.AsyncIterator);
  v10 = swift_task_alloc();
  v0[64] = v10;
  *v10 = v0;
  v10[1] = sub_1003987F0;
  v11 = v0[58];
  v12 = v0[59];

  return dispatch thunk of AsyncIteratorProtocol.next()(v11, v12, v9);
}

uint64_t sub_100399C68()
{
  v1 = *(*v0 + 496);

  return _swift_task_switch(sub_100399D78, v1, 0);
}

uint64_t sub_100399D78()
{
  sub_10000C60C(v0 + 2);
  SFAirDropReceive.Transfer.askRequest.getter();
  v1 = swift_task_alloc();
  v0[76] = v1;
  *v1 = v0;
  v1[1] = sub_100399E2C;
  v2 = v0[36];

  return sub_10047D484(v2);
}

uint64_t sub_100399E2C()
{
  v1 = *(*v0 + 496);
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 280);
  v4 = *(*v0 + 272);

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100399F98, v1, 0);
}

uint64_t sub_100399F98()
{
  v17 = v0[73];
  v24 = v0[66];
  v25 = v0[56];
  v22 = v0[52];
  v23 = v0[50];
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[44];
  v4 = v0[43];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[30];
  v18 = v0[45];
  v8 = v0[28];
  v16 = v0[29];
  v19 = v5;
  v20 = v0[26];
  v21 = v2;
  SFAirDropReceive.Transfer.receiveID.getter();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v17(v1, v2, v4);
  (*(v7 + 16))(v6, v5, v16);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = (v18 + *(v7 + 80) + v10) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v10, v1, v4);
  (*(v7 + 32))(v12 + v11, v6, v16);
  static Task<>.noThrow(priority:operation:)();

  sub_100005508(v8, &qword_100976160, &qword_1007F8770);
  (*(v7 + 8))(v19, v16);
  v24(v22, v20, v23);
  (*(v3 + 56))(v25, 1, 1, v4);
  v13 = CurrentValueSubject.value.modify();
  sub_1002B059C(v25, v22);
  v13(v0 + 12, 0);
  (*(v3 + 8))(v21, v4);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10039A350()
{

  sub_1002A6694(v0 + 56);
  sub_10000C60C((v0 + 72));
  sub_100005508(v0 + 112, &qword_10097AD60, &qword_1007FDFD0);

  return v0;
}

uint64_t sub_10039A3D0()
{
  sub_10039A350();

  return swift_deallocClassInstance();
}

uint64_t sub_10039A428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_10028088C(&qword_100974CE0, &qword_1007F8240) + 48);
  v5 = *(sub_10028088C(&qword_1009746D8, &qword_1007F65B8) + 48);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = type metadata accessor for SFNWInterfaceType();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2 + v5, a1 + v4, v7);
}

void *sub_10039A508(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_10039A668(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_10039AABC(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_10039A668(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v37 = a1;
  v52 = sub_10028088C(&qword_100974CE0, &qword_1007F8240);
  __chkstk_darwin(v52);
  v51 = &v35 - v4;
  v49 = type metadata accessor for SFNWInterfaceType();
  v5 = *(v49 - 8);
  v6 = __chkstk_darwin(v49);
  v48 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v59 = &v35 - v8;
  v58 = type metadata accessor for UUID();
  result = __chkstk_darwin(v58);
  v56 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v53 = a3;
  v13 = *(a3 + 64);
  v40 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v38 = 0;
  v39 = (v14 + 63) >> 6;
  v46 = v5 + 16;
  v47 = v10 + 16;
  v45 = enum case for SFNWInterfaceType.cellular(_:);
  v50 = v5;
  v43 = v5 + 8;
  v44 = v5 + 104;
  v57 = v10;
  v42 = v10 + 8;
  v17 = v5;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v55 = (v16 - 1) & v16;
LABEL_11:
    v21 = v18 | (v12 << 6);
    v22 = v53;
    v23 = v56;
    v24 = *(v57 + 16);
    v24(v56, v53[6] + *(v57 + 72) * v21, v58);
    v25 = v22[7];
    v26 = *(v17 + 72);
    v41 = v21;
    v54 = *(v17 + 16);
    v27 = v59;
    v28 = v49;
    v54(v59, v25 + v26 * v21, v49);
    v29 = v51;
    v30 = v23;
    v31 = v58;
    v24(v51, v30, v58);
    v54((v29 + *(v52 + 48)), v27, v28);
    v32 = v48;
    (*(v17 + 104))(v48, v45, v28);
    LOBYTE(v24) = static SFNWInterfaceType.== infix(_:_:)();
    v33 = *(v17 + 8);
    v33(v32, v28);
    sub_100005508(v29, &qword_100974CE0, &qword_1007F8240);
    v33(v59, v28);
    result = (*(v57 + 8))(v56, v31);
    v16 = v55;
    if (v24)
    {
      *(v37 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
        return sub_1006203D0(v37, v36, v38, v53);
      }
    }
  }

  v19 = v12;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v12 >= v39)
    {
      return sub_1006203D0(v37, v36, v38, v53);
    }

    v20 = *(v40 + 8 * v12);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v55 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_10039AABC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_10039A668(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_10039AB34(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = type metadata accessor for SFAirDropReceive.AskRequest();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v5 = sub_10028088C(&qword_10097AD00, &qword_1007FDF30);
  v3[20] = v5;
  v6 = *(v5 - 8);
  v3[21] = v6;
  v3[22] = *(v6 + 64);
  v3[23] = swift_task_alloc();
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3[24] = swift_task_alloc();
  sub_10028088C(&unk_1009762C0, &unk_1007F9430);
  v3[25] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v3[28] = *(v8 + 64);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropReceive.Transfer();
  v3[31] = v9;
  v3[32] = *(v9 - 8);
  v3[33] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v10 = static AirDropActor.shared;
  v3[34] = static AirDropActor.shared;

  return _swift_task_switch(sub_10039ADE0, v10, 0);
}

uint64_t sub_10039ADE0()
{
  v31 = v0;
  if (qword_100973788 != -1)
  {
    swift_once();
  }

  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = v0[14];
  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_10097ABF8);
  v6 = *(v2 + 16);
  v0[35] = v6;
  v0[36] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[32];
  v10 = v0[33];
  v12 = v0[31];
  if (v9)
  {
    v13 = v0[30];
    v26 = v0[31];
    v15 = v0[26];
    v14 = v0[27];
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v16 = 136315138;
    v27 = v8;
    SFAirDropReceive.Transfer.id.getter();
    sub_10039C658(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v26);
    v20 = sub_10000C4E4(v17, v19, &v30);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v7, v27, "SDAirDropReceiveService.transfers ADD {id: %s}", v16, 0xCu);
    sub_10000C60C(v28);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v21 = v0[16];
  v22 = v21[12];
  v23 = v21[13];
  sub_10002CDC0(v21 + 9, v22);
  v29 = (*(v23 + 40) + **(v23 + 40));
  v24 = swift_task_alloc();
  v0[37] = v24;
  *v24 = v0;
  v24[1] = sub_10039B124;

  return v29(v22, v23);
}

uint64_t sub_10039B124()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {
    v6 = *(v2 + 272);

    return _swift_task_switch(sub_10039B2C4, v6, 0);
  }
}

uint64_t sub_10039B2C4()
{
  v1 = v0[16];
  swift_beginAccess();
  if (*(v1 + 136))
  {
    sub_1002A9938(v1 + 112, (v0 + 2));
    v2 = v0[5];
    v3 = v0[6];
    sub_10002CDC0(v0 + 2, v2);
    SFAirDropReceive.Transfer.id.getter();
    v31 = (*(v3 + 48) + **(v3 + 48));
    v4 = swift_task_alloc();
    v0[38] = v4;
    *v4 = v0;
    v4[1] = sub_10039B758;
    v5 = v0[30];

    return v31(v5, v2, v3);
  }

  else
  {
    v20 = v0[35];
    v8 = v0[31];
    v7 = v0[32];
    v9 = v0[30];
    v29 = v0[28];
    v25 = v0[27];
    v10 = v0[25];
    v26 = v0[26];
    v27 = v0[29];
    v32 = v0[24];
    v11 = v0[21];
    v28 = v0[22];
    v22 = v0[20];
    v23 = v0[23];
    v30 = v0[16];
    v21 = v0[15];
    v12 = v0[14];
    SFAirDropReceive.Transfer.id.getter();
    v20(v10, v12, v8);
    (*(v7 + 56))(v10, 0, 1, v8);
    v13 = CurrentValueSubject.value.modify();
    sub_1002B059C(v10, v9);
    v13(v0 + 7, 0);
    v24 = v9;
    SFAirDropReceive.Transfer.id.getter();
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v32, 1, 1, v14);
    (*(v11 + 16))(v23, v21, v22);
    (*(v25 + 16))(v27, v9, v26);
    v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v16 = (v28 + *(v25 + 80) + v15) & ~*(v25 + 80);
    v17 = swift_allocObject();
    (*(v11 + 32))(v17 + v15, v23, v22);
    (*(v25 + 32))(v17 + v16, v27, v26);
    *(v17 + ((v29 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;

    static Task<>.noThrow(priority:operation:)();

    sub_100005508(v32, &qword_100976160, &qword_1007F8770);
    (*(v25 + 8))(v24, v26);
    SFAirDropReceive.Transfer.askRequest.getter();
    v18 = swift_task_alloc();
    v0[39] = v18;
    *v18 = v0;
    v18[1] = sub_10039BC14;
    v19 = v0[19];

    return sub_10047DA70(v19);
  }
}

uint64_t sub_10039B758()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 216);
  v4 = *(*v0 + 208);

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10039B8C4, v1, 0);
}

uint64_t sub_10039B8C4()
{
  sub_10000C60C(v0 + 2);
  v15 = v0[35];
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v24 = v0[28];
  v20 = v0[27];
  v4 = v0[25];
  v21 = v0[26];
  v22 = v0[29];
  v26 = v0[24];
  v5 = v0[21];
  v23 = v0[22];
  v17 = v0[20];
  v18 = v0[23];
  v25 = v0[16];
  v16 = v0[15];
  v6 = v0[14];
  SFAirDropReceive.Transfer.id.getter();
  v15(v4, v6, v2);
  (*(v1 + 56))(v4, 0, 1, v2);
  v7 = CurrentValueSubject.value.modify();
  sub_1002B059C(v4, v3);
  v7(v0 + 7, 0);
  v19 = v3;
  SFAirDropReceive.Transfer.id.getter();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v26, 1, 1, v8);
  (*(v5 + 16))(v18, v16, v17);
  (*(v20 + 16))(v22, v3, v21);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = (v23 + *(v20 + 80) + v9) & ~*(v20 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v9, v18, v17);
  (*(v20 + 32))(v11 + v10, v22, v21);
  *(v11 + ((v24 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;

  static Task<>.noThrow(priority:operation:)();

  sub_100005508(v26, &qword_100976160, &qword_1007F8770);
  (*(v20 + 8))(v19, v21);
  SFAirDropReceive.Transfer.askRequest.getter();
  v12 = swift_task_alloc();
  v0[39] = v12;
  *v12 = v0;
  v12[1] = sub_10039BC14;
  v13 = v0[19];

  return sub_10047DA70(v13);
}

uint64_t sub_10039BC14()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4(1);
}

uint64_t sub_10039BE34(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10028088C(&qword_10097AD00, &qword_1007FDF30) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SFAirDrop.TransferIdentifier() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100005C04;

  return sub_100398280(a1, v1 + v6, v1 + v9, v10);
}

uint64_t sub_10039BFB4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SFAirDropReceive.Transfer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100005C00;

  return sub_1003D4704(a1, v1 + v6, v1 + v9);
}

uint64_t sub_10039C0F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_100397B5C(a1, v4, v5, v6);
}

uint64_t sub_10039C1A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v67 = a5;
  v9 = type metadata accessor for SFNWInterfaceType();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v54 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v59 = v49 - v13;
  v58 = type metadata accessor for UUID();
  v14 = *(v58 - 8);
  __chkstk_darwin(v58);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10028088C(&qword_10097AD58, &unk_1007FDFC0);
  __chkstk_darwin(v17 - 8);
  v19 = v49 - v18;
  v20 = -1 << *(a1 + 32);
  v21 = ~v20;
  v22 = *(a1 + 64);
  v23 = -v20;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v60 = a1;
  v61 = a1 + 64;
  v62 = v21;
  v63 = 0;
  v56 = (v10 + 32);
  v57 = (v14 + 32);
  v64 = v24 & v22;
  v65 = a2;
  v66 = a3;
  v51 = v10 + 8;
  v52 = v10 + 16;
  v53 = v14;
  v55 = v10;
  v49[3] = v10 + 40;
  v50 = (v14 + 8);

  v49[1] = a3;

  while (1)
  {
    sub_100286FFC(v19);
    v28 = sub_10028088C(&qword_1009746D8, &qword_1007F65B8);
    if ((*(*(v28 - 8) + 48))(v19, 1, v28) == 1)
    {
      sub_100027D64(v60);
    }

    v29 = a4;
    v30 = *(v28 + 48);
    v31 = *v57;
    (*v57)(v16, v19, v58);
    v32 = *v56;
    v33 = v9;
    (*v56)(v59, &v19[v30], v9);
    v34 = *v67;
    v36 = sub_10000EBD4(v16);
    v37 = v34[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      break;
    }

    v40 = v35;
    if (v34[3] >= v39)
    {
      if ((v29 & 1) == 0)
      {
        sub_1002CFC48();
      }
    }

    else
    {
      sub_100574574(v39, v29 & 1);
      v41 = sub_10000EBD4(v16);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_19;
      }

      v36 = v41;
    }

    v43 = *v67;
    if (v40)
    {
      v26 = v54;
      v25 = v55;
      v27 = *(v55 + 72) * v36;
      v9 = v33;
      (*(v55 + 16))(v54, v43[7] + v27, v33);
      (*(v25 + 8))(v59, v33);
      (*v50)(v16, v58);
      (*(v25 + 40))(v43[7] + v27, v26, v33);
      a4 = 1;
    }

    else
    {
      v43[(v36 >> 6) + 8] |= 1 << v36;
      v31((v43[6] + *(v53 + 72) * v36), v16, v58);
      v44 = v43[7] + *(v55 + 72) * v36;
      v9 = v33;
      v32(v44, v59, v33);
      v45 = v43[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_18;
      }

      v43[2] = v47;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10039C658(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10039C6BC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097AD70);
  v1 = sub_10000C4AC(v0, qword_10097AD70);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10039C784()
{
  v1 = 0x2072756F6A6E6F42;
  if (*v0 != 1)
  {
    v1 = 0x656946207261654ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

unint64_t sub_10039C7F8()
{
  result = qword_10097AD88;
  if (!qword_10097AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097AD88);
  }

  return result;
}

BOOL sub_10039C864(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for NWListener.State();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v3 + *a3))
  {
    return 0;
  }

  NWListener.state.getter();

  v9 = (*(v6 + 88))(v8, v5);
  if (v9 != enum case for NWListener.State.failed(_:) && v9 == enum case for NWListener.State.cancelled(_:))
  {
    return 1;
  }

  v11 = v9 == enum case for NWListener.State.failed(_:);
  (*(v6 + 8))(v8, v5);
  return v11;
}

void sub_10039C9A8()
{
  v1 = v0;
  if (qword_100973798 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097AD90);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    v9 = sub_10039CD88(v6, v7, v8, *(v1 + 56));
    v11 = sub_10000C4E4(v9, v10, &v20);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "SDAirDropReceiveStateMachineAdaptor start {pipeline: %s}", v5, 0xCu);
    sub_10000C60C(v6);
  }

  v12 = *(v1 + 40);
  v14 = *(v1 + 48);
  v13 = *(v1 + 56);
  if (v13 < 0)
  {
    v17 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    swift_unknownObjectWeakLoadStrong();
    v12[3] = *(v1 + 24);
    swift_unknownObjectWeakAssign();

    v19 = v14;
    v18 = v17;
    swift_unknownObjectRelease();
    sub_1003590E8();
    [v19 activate];
  }

  else
  {
    v15 = *(v1 + 32);
    v16 = v12;
    v19 = v14;
    [v19 activate];
    [v15 start];
    [v16 activate];
  }
}

void sub_10039CBE4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  if (v3 < 0)
  {
    v6 = (v3 & 0x7FFFFFFFFFFFFFFFLL);

    v5 = v2;
    v7 = v6;
    [v5 invalidate];
    sub_1002D8D00();
  }

  else
  {
    v4 = *(v0 + 32);
    v5 = v1;
    v7 = v2;
    [v5 invalidate];
    [v4 stop];
    [v7 invalidate];
  }
}

uint64_t sub_10039CCC0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097AD90);
  v1 = sub_10000C4AC(v0, qword_10097AD90);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_10039CD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10039D0AC();
  v5 = static NSUserDefaults.airdrop.getter();
  _StringGuts.grow(_:)(66);
  v6._countAndFlagsBits = 0xD000000000000020;
  v6._object = 0x800000010078E110;
  String.append(_:)(v6);
  v7 = SFAirDropUserDefaults.privateContactDiscoveryEnabled.getter();
  v8 = (v7 & 1) == 0;
  if (v7)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v8)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  v11 = v10;
  String.append(_:)(*&v9);

  v12._object = 0x800000010078E140;
  v12._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v12);
  v13 = SFAirDropUserDefaults.systemLevelProgressEnabled.getter();
  v14 = (v13 & 1) == 0;
  if (v13)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v14)
  {
    v16 = 0xE500000000000000;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  v17 = v16;
  String.append(_:)(*&v15);

  if (a4 < 0)
  {
    _StringGuts.grow(_:)(41);

    v18 = 0xD000000000000026;
  }

  else
  {
    _StringGuts.grow(_:)(36);

    v18 = 0xD000000000000021;
  }

  v22 = v18;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 93;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);

  return v22;
}

uint64_t sub_10039CF50()
{
  sub_10004C60C(v0 + 16);
  sub_10039D0F8(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_10039CFC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 32))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 24) >> 57) >> 6) | (2 * ((*(a1 + 24) >> 57) & 0x38 | *(a1 + 24) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10039D020(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_10039D0AC()
{
  result = qword_100974730;
  if (!qword_100974730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100974730);
  }

  return result;
}

void sub_10039D0F8(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 < 0)
  {
    v5 = (a4 & 0x7FFFFFFFFFFFFFFFLL);

    a2 = a3;
    a3 = v5;
  }

  else
  {
  }
}

uint64_t sub_10039D160()
{

  sub_10039D590(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication16IndividualVolume_dependencies);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10039D1F0(uint64_t a1)
{
  result = _s18VolumeDependenciesVMa(319);
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

uint64_t sub_10039D318(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = sub_10039D3CC();
    if (v3 <= 0x3F)
    {
      result = sub_10039D430();
      if (v4 <= 0x3F)
      {
        result = _s22VolumeUnlockLocalCacheCMa();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_10039D3CC()
{
  result = qword_10097B090;
  if (!qword_10097B090)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10097B090);
  }

  return result;
}

unint64_t sub_10039D430()
{
  result = qword_10097B098;
  if (!qword_10097B098)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10097B098);
  }

  return result;
}

unint64_t sub_10039D484()
{
  result = qword_10097B0D8;
  if (!qword_10097B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097B0D8);
  }

  return result;
}

uint64_t sub_10039D4E4(void *a1, void *a2)
{
  v4 = a1[14] == a2[14] && a1[15] == a2[15];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[16] == a2[16] && a1[17] == a2[17];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[18] == a2[18] && a1[19] == a2[19])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10039D590(uint64_t a1)
{
  v2 = _s18VolumeDependenciesVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10039D5EC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097B0E0);
  v1 = sub_10000C4AC(v0, qword_10097B0E0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10039D70C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SDAirDropiOSNotificationManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10039D774(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAirDropiOSNotificationManager_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_10039D7C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005C04;

  return sub_10039EC30(a1);
}

uint64_t sub_10039D86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_10028088C(&qword_100974F18, &qword_1007F8330);
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = sub_10028088C(&qword_100974EB0, &qword_1007FE410);
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v7 = sub_10028088C(&qword_100975358, &unk_1007F8590);
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDrop.DeclineAction();
  v3[21] = v8;
  v3[22] = *(v8 - 8);
  v3[23] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v9 = static AirDropActor.shared;
  v3[24] = static AirDropActor.shared;

  return _swift_task_switch(sub_10039DB30, v9, 0);
}

uint64_t sub_10039DB30()
{
  v77 = v0;
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  SFAirDrop.PermissionRequest.style.getter();
  if ((*(v2 + 88))(v1, v3) != enum case for SFAirDrop.PermissionRequest.Style.alert<A>(_:))
  {
    (*(v0[19] + 8))(v0[20], v0[18]);

    v13 = v0[1];

    return v13();
  }

  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[3];
  (*(v0[19] + 96))(v7, v0[18]);

  v9 = *(v7 + 32);
  v10 = sub_10028088C(&qword_100975360, &unk_100801D40);
  (*(v5 + 32))(v4, v7 + *(v10 + 80), v6);
  v11 = SFAirDrop.DeclineAction.id.getter();
  v71 = v8;
  if (v8)
  {
    if (v11 == v0[2] && v0[3] == v12)
    {

LABEL_11:

      v16 = swift_task_alloc();
      v0[25] = v16;
      *v16 = v0;
      v17 = sub_10039E370;
LABEL_43:
      v16[1] = v17;

      return SFAirDrop.DeclineAction.decline()();
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v18 = *(v9 + 16);
  if (v18)
  {
    v19 = v0[15];
    v22 = *(v19 + 16);
    v20 = v19 + 16;
    v21 = v22;
    v23 = v9 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v24 = *(v20 + 56);
    v74 = (v20 + 72);
    v75 = (v20 + 16);
    v73 = enum case for SFAirDrop.AcceptAction.single<A>(_:);
    v66 = (v20 + 80);
    v67 = (v20 - 8);
    v70 = v0[9];
    v72 = (v70 + 32);
    v25 = _swiftEmptyArrayStorage;
    v68 = v24;
    v69 = v22;
    do
    {
      v27 = v0[16];
      v26 = v0[17];
      v28 = v0[14];
      v21(v26, v23, v28);
      (*v75)(v27, v26, v28);
      v29 = (*v74)(v27, v28);
      v30 = v0[16];
      v31 = v0[14];
      if (v29 == v73)
      {
        v32 = v20;
        v33 = v0[11];
        v34 = v0[8];
        (*v66)(v0[16], v31);
        v35 = *(sub_10028088C(&qword_10097B140, &qword_1007FE418) + 48);
        v36 = *v72;
        (*v72)(v33, v30, v34);
        v37 = type metadata accessor for UUID();
        (*(*(v37 - 8) + 8))(v30 + v35, v37);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_10028EC78(0, v25[2] + 1, 1, v25);
        }

        v39 = v25[2];
        v38 = v25[3];
        v20 = v32;
        if (v39 >= v38 >> 1)
        {
          v25 = sub_10028EC78((v38 > 1), v39 + 1, 1, v25);
        }

        v21 = v69;
        v40 = v0[11];
        v41 = v0[8];
        v25[2] = v39 + 1;
        v36(v25 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v39, v40, v41);
        v24 = v68;
      }

      else
      {
        (*v67)(v0[16], v31);
      }

      v23 += v24;
      --v18;
    }

    while (v18);

    v42 = v25[2];
    if (!v42)
    {
      goto LABEL_36;
    }
  }

  else
  {

    v25 = _swiftEmptyArrayStorage;
    v42 = _swiftEmptyArrayStorage[2];
    if (!v42)
    {
LABEL_36:

      if (qword_1009737A0 != -1)
      {
LABEL_51:
        swift_once();
      }

      v50 = v0[3];
      v51 = type metadata accessor for Logger();
      sub_10000C4AC(v51, qword_10097B0E0);

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = v0[2];
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v76 = v56;
        *v55 = 136315138;
        if (v71)
        {
          v57 = v50;
        }

        else
        {
          v54 = 0xD000000000000015;
          v57 = 0x8000000100789F30;
        }

        v58 = sub_10000C4E4(v54, v57, &v76);

        *(v55 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v52, v53, "Chosen action from alert (%s) did not match any actions in permission request. Canceling AirDrop", v55, 0xCu);
        sub_10000C60C(v56);
      }

      v16 = swift_task_alloc();
      v0[29] = v16;
      *v16 = v0;
      v17 = sub_10039E814;
      goto LABEL_43;
    }
  }

  v43 = 0;
  v44 = v0[9];
  v45 = v25 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
  while (1)
  {
    if (v43 >= v25[2])
    {
      __break(1u);
      goto LABEL_51;
    }

    (*(v44 + 16))(v0[10], &v45[*(v44 + 72) * v43], v0[8]);
    v46 = SFAirDrop.AcceptAction.Single.id.getter();
    if (!v71)
    {

      goto LABEL_27;
    }

    if (v46 == v0[2] && v0[3] == v47)
    {
      break;
    }

    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v49)
    {
      goto LABEL_47;
    }

LABEL_27:
    ++v43;
    (*(v44 + 8))(v0[10], v0[8]);
    if (v42 == v43)
    {
      goto LABEL_36;
    }
  }

LABEL_47:

  v59 = v0[12];
  v60 = v0[13];
  v61 = v0[8];
  v62 = *(v0[9] + 32);
  v62(v59, v0[10], v61);
  v62(v60, v59, v61);
  SFAirDrop.AcceptAction.Single.defaultAnswer.getter();
  v63 = swift_task_alloc();
  v0[27] = v63;
  *v63 = v0;
  v63[1] = sub_10039E584;
  v65 = v0[7];
  v64 = v0[8];

  return SFAirDrop.AcceptAction.Single.accept(with:)(v65, v64);
}

uint64_t sub_10039E370()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = sub_10039E940;
  }

  else
  {
    v4 = sub_10039E49C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10039E49C()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10039E584()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 224) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 192);
  if (v0)
  {
    v7 = sub_10039EA30;
  }

  else
  {
    v7 = sub_10039E70C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10039E70C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  (*(v0[9] + 8))(v0[13], v0[8]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10039E814()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = sub_10039EB40;
  }

  else
  {
    v4 = sub_10039E49C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10039E940()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10039EA30()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  (*(v0[9] + 8))(v0[13], v0[8]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10039EB40()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10039EC30(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for SFInterventionResponse();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_10028088C(&qword_10097B128, &unk_1007FE3D8);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for SFInterventionWorkflow();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = sub_10028088C(&qword_100975358, &unk_1007F8590);
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();
  sub_10028088C(&qword_10097B130, &qword_1007FE3E8);
  v1[15] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v1[16] = v6;
  v1[17] = *(v6 - 8);
  v1[18] = swift_task_alloc();
  v7 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  v1[19] = v7;
  v1[20] = *(v7 - 8);
  v1[21] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v1[22] = static AirDropActor.shared;

  return _swift_task_switch(sub_10039EF54, v8, 0);
}

uint64_t sub_10039EF54(uint64_t a1)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  v5 = *(v1 + 136);
  v4 = *(v1 + 144);
  v7 = *(v1 + 120);
  v6 = *(v1 + 128);
  SFAirDropReceive.Transfer.state.getter();
  SFAirDropReceive.Transfer.State.permissionRequest.getter();
  (*(v5 + 8))(v4, v6);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    sub_100005508(*(v1 + 120), &qword_10097B130, &qword_1007FE3E8);
LABEL_5:

    v8 = *(v1 + 8);

    return v8();
  }

  (*(*(v1 + 160) + 32))(*(v1 + 168), *(v1 + 120), *(v1 + 152));
  if (SFAirDrop.PermissionRequest.isAnswered.getter())
  {
    (*(*(v1 + 160) + 8))(*(v1 + 168), *(v1 + 152));
    goto LABEL_5;
  }

  v11 = *(v1 + 104);
  v10 = *(v1 + 112);
  v12 = *(v1 + 96);
  SFAirDrop.PermissionRequest.style.getter();
  v13 = (*(v11 + 88))(v10, v12);
  if (v13 == enum case for SFAirDrop.PermissionRequest.Style.intervention<A>(_:))
  {
    v14 = *(v1 + 112);
    v15 = *(v1 + 88);
    v16 = *(v1 + 72);
    v17 = *(v1 + 80);
    v19 = *(v1 + 56);
    v18 = *(v1 + 64);
    v20 = *(v1 + 48);
    (*(*(v1 + 104) + 96))(v14, *(v1 + 96));
    v21 = *(sub_10028088C(&qword_10097B138, &qword_1007FE3F8) + 48);
    (*(v17 + 32))(v15, v14, v16);
    (*(v19 + 32))(v18, v14 + v21, v20);
    if (qword_1009737A0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_10097B0E0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Showing intervention permission request", v25, 2u);
    }

    *(v1 + 224) = [objc_allocWithZone(type metadata accessor for SDAirDropUserSafetyInterventionAlert()) init];
    v26 = swift_task_alloc();
    *(v1 + 232) = v26;
    *v26 = v1;
    v26[1] = sub_10039FD64;
    v27 = *(v1 + 88);
    v28 = *(v1 + 40);

    return sub_1004B1884(v28, v27);
  }

  else
  {
    if (v13 != enum case for SFAirDrop.PermissionRequest.Style.alert<A>(_:))
    {
      v36 = *(v1 + 104);
      v35 = *(v1 + 112);
      v37 = *(v1 + 96);
      (*(*(v1 + 160) + 8))(*(v1 + 168), *(v1 + 152));
      (*(v36 + 8))(v35, v37);
      goto LABEL_5;
    }

    (*(*(v1 + 104) + 96))(*(v1 + 112), *(v1 + 96));

    if (qword_1009737A0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000C4AC(v29, qword_10097B0E0);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Showing alert permission request", v32, 2u);
    }

    *(v1 + 264) = *(sub_10028088C(&qword_100975360, &unk_100801D40) + 80);
    v33 = swift_task_alloc();
    *(v1 + 184) = v33;
    *v33 = v1;
    v33[1] = sub_10039F4CC;
    v34 = *(v1 + 168);

    return sub_1002943BC(v34);
  }
}

uint64_t sub_10039F4CC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 192) = v2;

  if (v2)
  {
    v8 = v6[22];

    return _swift_task_switch(sub_10039F7B0, v8, 0);
  }

  else
  {
    v6[25] = a2;
    v9 = swift_task_alloc();
    v6[26] = v9;
    *v9 = v7;
    v9[1] = sub_10039F668;
    v10 = v6[21];

    return sub_10039D86C(a1, a2, v10);
  }
}

uint64_t sub_10039F668()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 176);
  if (v0)
  {
    v4 = sub_10039FB10;
  }

  else
  {
    v4 = sub_10039FA04;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10039F7B0()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 112);
  v3 = type metadata accessor for SFAirDrop.DeclineAction();
  (*(*(v3 - 8) + 8))(v2 + v1, v3);
  if (qword_1009737A0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097B0E0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 160);
  v8 = *(v0 + 168);
  v10 = *(v0 + 152);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to show alert or intervention: %@", v11, 0xCu);
    sub_100005508(v12, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  (*(v9 + 8))(v8, v10);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10039FA04()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 112);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  v3 = type metadata accessor for SFAirDrop.DeclineAction();
  (*(*(v3 - 8) + 8))(v2 + v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10039FB10()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 112);
  v3 = type metadata accessor for SFAirDrop.DeclineAction();
  (*(*(v3 - 8) + 8))(v2 + v1, v3);
  if (qword_1009737A0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097B0E0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 160);
  v8 = *(v0 + 168);
  v10 = *(v0 + 152);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to show alert or intervention: %@", v11, 0xCu);
    sub_100005508(v12, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  (*(v9 + 8))(v8, v10);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10039FD64()
{
  v2 = *(*v1 + 224);
  v3 = *v1;
  v3[30] = v0;

  if (v0)
  {
    v4 = v3[22];

    return _swift_task_switch(sub_1003A0164, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[31] = v5;
    *v5 = v3;
    v5[1] = sub_10039FF00;
    v6 = v3[6];
    v7 = v3[5];

    return SFAirDrop.PermissionRequest.InterventionAction.respond(with:)(v7, v6);
  }
}

uint64_t sub_10039FF00()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 176);
  if (v0)
  {
    v4 = sub_1003A03AC;
  }

  else
  {
    v4 = sub_1003A002C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003A002C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[6];
  v9 = v0[7];
  (*(v0[4] + 8))(v0[5], v0[3]);
  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003A0164()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v2 + 8))(v1, v3);
  if (qword_1009737A0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097B0E0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[19];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to show alert or intervention: %@", v11, 0xCu);
    sub_100005508(v12, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  (*(v9 + 8))(v8, v10);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003A03AC()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  (*(v0[4] + 8))(v0[5], v0[3]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  if (qword_1009737A0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_10097B0E0);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[20];
  v11 = v0[21];
  v13 = v0[19];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to show alert or intervention: %@", v14, 0xCu);
    sub_100005508(v15, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  (*(v12 + 8))(v11, v13);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1003A0614@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10028088C(&qword_10097B1A0, &qword_1007FE498);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner____lazy_storage___senderContact;
  swift_beginAccess();
  sub_10000FF90(v1 + v9, v8, &qword_10097B1A0, &qword_1007FE498);
  v10 = sub_10028088C(&qword_10097B198, &qword_1007FE450);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_10002C4E4(v8, a1, &qword_10097B198, &qword_1007FE450);
  }

  sub_100005508(v8, &qword_10097B1A0, &qword_1007FE498);
  sub_1004E5AD8(a1);
  sub_10000FF90(a1, v6, &qword_10097B198, &qword_1007FE450);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10000C788(v6, v1 + v9, &qword_10097B1A0, &qword_1007FE498);
  return swift_endAccess();
}

uint64_t sub_1003A0838(uint64_t a1)
{
  v2[120] = v1;
  v2[119] = a1;
  v3 = type metadata accessor for SFAirDrop.NetworkMetrics();
  v2[121] = v3;
  v2[122] = *(v3 - 8);
  v2[123] = swift_task_alloc();
  v2[124] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDrop.DeviceRelationship();
  v2[125] = v4;
  v2[126] = *(v4 - 8);
  v2[127] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[128] = v5;
  v2[129] = *(v5 - 8);
  v2[130] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult();
  v2[131] = v6;
  v2[132] = *(v6 - 8);
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();
  sub_10028088C(&qword_100977BB0, &qword_1007FADE0);
  v2[135] = swift_task_alloc();
  v2[136] = swift_task_alloc();
  sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v2[137] = swift_task_alloc();
  v2[138] = swift_task_alloc();
  sub_10028088C(&qword_10097B1A8, &unk_1007FE4B0);
  v2[139] = swift_task_alloc();
  v2[140] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDropSend.Request();
  v2[141] = v7;
  v2[142] = *(v7 - 8);
  v2[143] = swift_task_alloc();
  sub_10028088C(&qword_100977DC0, &unk_1007FB320);
  v2[144] = swift_task_alloc();
  v2[145] = swift_task_alloc();
  v2[146] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDropSend.Transfer.State();
  v2[147] = v8;
  v2[148] = *(v8 - 8);
  v2[149] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDrop.TransferType();
  v2[150] = v9;
  v2[151] = *(v9 - 8);
  v2[152] = swift_task_alloc();
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2[153] = swift_task_alloc();
  sub_10028088C(&qword_10097B1B0, &unk_10080DD40);
  v2[154] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v2[155] = v10;
  v2[156] = *(v10 - 8);
  v2[157] = swift_task_alloc();
  v11 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[158] = v11;
  v2[159] = *(v11 - 8);
  v2[160] = swift_task_alloc();
  v2[161] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
  v2[162] = v12;
  v2[163] = *(v12 - 8);
  v2[164] = swift_task_alloc();
  v13 = type metadata accessor for CancellationError();
  v2[165] = v13;
  v2[166] = *(v13 - 8);
  v2[167] = swift_task_alloc();
  v14 = type metadata accessor for SFAirDropSend.Failure();
  v2[168] = v14;
  v2[169] = *(v14 - 8);
  v2[170] = swift_task_alloc();
  v2[171] = swift_task_alloc();
  v2[172] = swift_task_alloc();
  sub_10028088C(&qword_10097B1B8, &qword_1007FE4C0);
  v2[173] = swift_task_alloc();
  sub_10028088C(&qword_10097B1C0, &qword_1007FE4C8);
  v2[174] = swift_task_alloc();
  v2[175] = swift_task_alloc();
  v15 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v2[176] = v15;
  v2[177] = *(v15 - 8);
  v2[178] = swift_task_alloc();
  v2[179] = swift_task_alloc();
  v2[180] = swift_task_alloc();
  v2[181] = swift_task_alloc();
  _s10AskRequestVMa(0);
  v2[182] = swift_task_alloc();
  v2[183] = swift_task_alloc();
  v16 = type metadata accessor for SFAirDropSend.Transfer();
  v2[184] = v16;
  v2[185] = *(v16 - 8);
  v2[186] = swift_task_alloc();
  v2[187] = swift_task_alloc();
  v2[188] = swift_task_alloc();
  v2[189] = swift_task_alloc();
  v2[190] = swift_task_alloc();
  v2[191] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v17 = static AirDropActor.shared;
  v2[192] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003A10C0, v17, 0);
}