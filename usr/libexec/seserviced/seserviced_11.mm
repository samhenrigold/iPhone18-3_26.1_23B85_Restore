void sub_1000F6AA4(Swift::UInt a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v63 = a2;
  v64 = a5;
  v62 = a4;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if (v15)
  {
    if (*(v6 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
    {
      if (!a3)
      {
        v52 = OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryScanRequests;
        swift_beginAccess();
        if (!*(*(v6 + v52) + 16) || (sub_10008C9C8(a1), (v53 & 1) == 0))
        {
          swift_endAccess();
          return;
        }

        swift_endAccess();
        swift_beginAccess();
        sub_1000C57E8(0, 0, 0, 0, a1);
        goto LABEL_40;
      }

      v16 = OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryScanRequests;
      swift_beginAccess();
      v17 = *(v6 + v16);
      if (*(v17 + 16) && (v18 = sub_10008C9C8(a1), (v19 & 1) != 0))
      {
        v20 = *(v17 + 56) + 32 * v18;
        v22 = *v20;
        v21 = *(v20 + 8);
        v23 = *(v20 + 16);
        v24 = *(v20 + 24);
        sub_100113C1C(v63, a3, v62, v64);
        swift_bridgeObjectRetain_n();

        swift_endAccess();
        sub_100113BD8(v22, v21, v23, v24);
      }

      else
      {
        swift_endAccess();

        v22 = 0;
        v21 = 0;
      }

      swift_beginAccess();
      v28 = *(v6 + v16);
      if (*(v28 + 16) && (v29 = sub_10008C9C8(a1), (v30 & 1) != 0))
      {
        v31 = *(v28 + 56) + 32 * v29;
        v32 = *v31;
        v33 = *(v31 + 8);
        v34 = *(v31 + 16);
        v35 = v22;
        v36 = *(v31 + 24);

        swift_endAccess();
        v37 = v36;
        v22 = v35;
        v38 = v34;
        sub_100113BD8(v32, v33, v34, v37);
        v39 = 1;
      }

      else
      {
        swift_endAccess();
        v38 = 0;
        v39 = 0;
      }

      swift_beginAccess();
      v40 = *(v6 + v16);
      if (*(v40 + 16) && (v41 = sub_10008C9C8(a1), (v42 & 1) != 0))
      {
        v43 = *(v40 + 56) + 32 * v41;
        v60 = v38;
        v61 = a1;
        v38 = v22;
        v44 = *v43;
        v45 = *(v43 + 8);
        v46 = v39;
        v47 = *(v43 + 16);
        v48 = *(v43 + 24);

        swift_bridgeObjectRetain_n();
        swift_endAccess();
        v49 = v45;
        v22 = v38;
        v50 = v47;
        v39 = v46;
        LODWORD(v38) = v60;
        a1 = v61;
        sub_100113BD8(v44, v49, v50, v48);
        if (!v21)
        {
          goto LABEL_38;
        }
      }

      else
      {
        swift_endAccess();
        v48 = 0;
        if (!v21)
        {
LABEL_38:

LABEL_39:
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v65 = *(v6 + v16);
          *(v6 + v16) = 0x8000000000000000;
          sub_100315784(v63, a3, v62, v64, a1, isUniquelyReferenced_nonNull_native);
          *(v6 + v16) = v65;
LABEL_40:
          swift_endAccess();
          sub_1000F7014();
          return;
        }
      }

      if (v22 == v63 && v21 == a3)
      {

        if (v38 == v62)
        {
          v51 = v39;
        }

        else
        {
          v51 = 0;
        }

        if ((v51 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v39 & v54) != 1 || v38 != v62)
        {
          goto LABEL_38;
        }
      }

      if (v48)
      {
        v55 = v64;

        v57 = sub_1002249A8(v56, v55);

        swift_bridgeObjectRelease_n();
        if (v57)
        {

          return;
        }
      }

      goto LABEL_39;
    }

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Not running", v27, 2u);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000F7014()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 1);
  __chkstk_darwin(v1);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
LABEL_20:
    swift_once();
  }

  v5 = qword_10051B7F0;
  *v4 = qword_10051B7F0;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  v7 = *(v2 + 8);
  v2 += 8;
  v7(v4, v1);
  if (v5)
  {
    v4 = OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryScanRequests;
    swift_beginAccess();
    v8 = 0;
    v1 = 0;
    v9 = *(v4 + v0);
    v10 = 1 << *(v9 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v9 + 64);
    v13 = (v10 + 63) >> 6;
    do
    {
      if (!v12)
      {
        while (1)
        {
          v14 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v14 >= v13)
          {
            goto LABEL_15;
          }

          v12 = *(v9 + 64 + 8 * v14);
          ++v8;
          if (v12)
          {
            v8 = v14;
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_20;
      }

      v14 = v8;
LABEL_12:
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v16 = *(*(*(v9 + 56) + ((v14 << 11) | (32 * v15)) + 24) + 16);
      v17 = __OFADD__(v1, v16);
      v1 += v16;
    }

    while (!v17);
    __break(1u);
LABEL_15:
    v22 = 0;
    v21 = _swiftEmptyArrayStorage;
    v0 = v0;

    sub_100113EC4(v18, &v22, v1, &v21);

    v1 = [objc_allocWithZone(CBDiscovery) init];
    [v1 setBleRSSIThresholdHint:v22];
    [v1 setDiscoveryFlags:0x2000000];
    if (v21 >> 62)
    {
      goto LABEL_22;
    }

    if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_22:
  if (_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_17:
    [v1 addDiscoveryType:27];
    sub_10009393C(0, &qword_100503F68, CBServiceUUIDParamInfo_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v1 setServiceUUIDs:isa];
  }

LABEL_18:
  sub_1000F733C(*&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryScanEventName], *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryScanEventName + 8], v1);
}

uint64_t sub_1000F733C(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v13 = [a3 xpcSubscriberRepresentation];
    v14 = XPC_BOOL_TRUE.getter();
    xpc_dictionary_set_value(v13, "keepAlive", v14);
    swift_unknownObjectRelease();
    String.utf8CString.getter();
    swift_unknownObjectRetain();
    xpc_set_event();

    v15 = _CFXPCCreateCFObjectFromXPCObject();
    result = swift_unknownObjectRelease();
    if (v15)
    {
      v26 = v15;
      sub_100068FC4(&qword_100503F60, &qword_10040B2D8);
      if (swift_dynamicCast())
      {

        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.info.getter();

        if (!os_log_type_enabled(v16, v17))
        {

          goto LABEL_12;
        }

        v18 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v18 = 136315650;
        *(v18 + 4) = sub_1002FFA0C(0xD00000000000001DLL, 0x80000001004632F0, &v26);
        *(v18 + 12) = 2080;
        *(v18 + 14) = sub_1002FFA0C(a1, a2, &v26);
        *(v18 + 22) = 2080;
        v19 = Dictionary.description.getter();
        v21 = v20;

        v22 = sub_1002FFA0C(v19, v21, &v26);

        *(v18 + 24) = v22;
        _os_log_impl(&_mh_execute_header, v16, v17, "Launch event %s %s configured with %s", v18, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        v16 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v16, v23))
        {
LABEL_12:

          return swift_unknownObjectRelease();
        }

        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v16, v23, "Failed to convert discovery XPC object to Dictionary", v24, 2u);
      }

      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1000F7750(void **a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t **a7)
{
  v114 = a7;
  v116 = a6;
  v11 = type metadata accessor for UUID();
  v115 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = [a2 retrievePairingInfoForPeripheral:{v15, v12}];
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v117 = 0xD000000000000016;
  v118 = 0x8000000100463250;
  AnyHashable.init<A>(_:)();
  if (!*(v17 + 16))
  {
    goto LABEL_22;
  }

  v18 = sub_10008CA7C(v120);
  if ((v19 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_1000754F0(*(v17 + 56) + 32 * v18, v119);
  sub_100092F28(v120);
  if (swift_dynamicCast())
  {
    v20 = v117;
    v21 = v118;
    v22 = v118 >> 62;
    if ((v118 >> 62) > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_60;
      }

      v24 = *(v117 + 16);
      v23 = *(v117 + 24);
      v25 = __OFSUB__(v23, v24);
      v26 = v23 - v24;
      if (!v25)
      {
        if (v26 != 6)
        {
          goto LABEL_60;
        }

        goto LABEL_14;
      }

      __break(1u);
    }

    else
    {
      if (!v22)
      {
        if (BYTE6(v118) != 6)
        {
          goto LABEL_60;
        }

LABEL_14:
        v113 = v117;
        v117 = 0xD000000000000011;
        v118 = 0x8000000100463270;
        AnyHashable.init<A>(_:)();
        if (!*(v17 + 16) || (v112 = v21, v27 = sub_10008CA7C(v120), v21 = v112, (v28 & 1) == 0))
        {
          v33 = v113;
          v34 = v21;
          goto LABEL_21;
        }

        sub_1000754F0(*(v17 + 56) + 32 * v27, v119);
        sub_100092F28(v120);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_59;
        }

        v29 = v117;
        v30 = v118;
        v31 = v118 >> 62;
        if ((v118 >> 62) > 1)
        {
          if (v31 != 2)
          {
            v51 = v117;
            v52 = v113;
            v53 = v118;
            goto LABEL_42;
          }

          v44 = *(v117 + 16);
          v43 = *(v117 + 24);
          v25 = __OFSUB__(v43, v44);
          v32 = v43 - v44;
          if (!v25)
          {
LABEL_33:
            if (v32 != 16)
            {
LABEL_58:
              sub_10006A178(v29, v30);
LABEL_59:
              v20 = v113;
              goto LABEL_60;
            }

            v110 = v29;
            v111 = v30;
            v117 = 0xD000000000000016;
            v118 = 0x8000000100463290;
            AnyHashable.init<A>(_:)();
            if (!*(v17 + 16) || (v45 = sub_10008CA7C(v120), v21 = v112, (v46 & 1) == 0))
            {
              sub_10006A178(v113, v21);
              v33 = v110;
              v34 = v111;
              goto LABEL_21;
            }

            sub_1000754F0(*(v17 + 56) + 32 * v45, v119);
            sub_100092F28(v120);
            if ((swift_dynamicCast() & 1) == 0)
            {
LABEL_57:
              v29 = v110;
              v30 = v111;
              goto LABEL_58;
            }

            v47 = v117;
            v48 = v118;
            v49 = v118 >> 62;
            if ((v118 >> 62) <= 1)
            {
              if (!v49)
              {
                v50 = BYTE6(v118);
LABEL_49:
                if (v50 == 6)
                {
                  v108 = v47;
                  v109 = v48;
                  v117 = 0xD000000000000012;
                  v118 = 0x80000001004632B0;
                  AnyHashable.init<A>(_:)();
                  if (*(v17 + 16))
                  {
                    v21 = v17;
                    v57 = sub_10008CA7C(v120);
                    if (v58)
                    {
                      sub_1000754F0(*(v17 + 56) + 32 * v57, v119);
                      sub_100092F28(v120);
                      if ((swift_dynamicCast() & 1) == 0)
                      {
LABEL_81:
                        sub_10006A178(v108, v109);
                        sub_10006A178(v110, v111);
                        v54 = v112;
                        v20 = v113;
                        goto LABEL_61;
                      }

                      v107 = v117;
                      v106 = v118;
                      v26 = v118 >> 62;
                      if ((v118 >> 62) <= 1)
                      {
                        if (!v26)
                        {
                          v59 = BYTE6(v106);
LABEL_72:
                          if (v59 != 16)
                          {
                            goto LABEL_79;
                          }

                          v117 = 0xD000000000000011;
                          v118 = 0x80000001004632D0;
                          AnyHashable.init<A>(_:)();
                          if (*(v17 + 16))
                          {
                            v21 = v17;
                            v62 = sub_10008CA7C(v120);
                            if (v63)
                            {
                              sub_1000754F0(*(v17 + 56) + 32 * v62, v119);
                              sub_100092F28(v120);
                              if (swift_dynamicCast())
                              {
                                v102 = v117;
                                v101 = v118;
                                v32 = v118 >> 62;
                                if ((v118 >> 62) <= 1)
                                {
                                  if (!v32)
                                  {
                                    v64 = BYTE6(v101);
LABEL_91:
                                    if (v64 == 16)
                                    {

                                      v69 = *a4;
                                      v70 = a4[1];
                                      v72 = v112;
                                      v71 = v113;
                                      *a4 = v113;
                                      a4[1] = v72;
                                      sub_100069E2C(v71, v72);
                                      sub_10006A2D0(v69, v70);
                                      a4 = *a5;
                                      v21 = *(a5 + 8);
                                      v73 = v110;
                                      v74 = v111;
                                      *a5 = v110;
                                      *(a5 + 8) = v74;
                                      sub_100069E2C(v73, v74);
                                      sub_10006A2D0(a4, v21);
                                      if ((v116 & 0xC000000000000001) != 0)
                                      {
                                        swift_unknownObjectRetain();
                                        a4 = __CocoaSet.makeIterator()();
                                        v21 = type metadata accessor for Peer(0);
                                        sub_1001081DC(&qword_100503F20, 255, type metadata accessor for Peer, &unk_1004109B0);
                                        Set.Iterator.init(_cocoa:)();
                                        v116 = v120[0];
                                        v105 = v120[1];
                                        v100[0] = v120[2];
                                        v103 = v120[3];
                                        v104 = v120[4];
                                      }

                                      else
                                      {
                                        v75 = -1 << *(v116 + 32);
                                        v76 = *(v116 + 56);
                                        v105 = v116 + 56;
                                        v100[0] = ~v75;
                                        v77 = -v75;
                                        if (v77 < 64)
                                        {
                                          v78 = ~(-1 << v77);
                                        }

                                        else
                                        {
                                          v78 = -1;
                                        }

                                        v104 = v78 & v76;

                                        v103 = 0;
                                      }

                                      v79 = (v100[0] + 64) >> 6;
                                      v80 = v115 + 8;
                                      for (i = &v121; ; i = &v123)
                                      {
                                        *(i - 32) = v80;
                                        if (v116 < 0)
                                        {
                                          v85 = __CocoaSet.Iterator.next()();
                                          if (!v85)
                                          {
                                            goto LABEL_113;
                                          }

                                          v117 = v85;
                                          type metadata accessor for Peer(0);
                                          swift_dynamicCast();
                                          v21 = v119[0];
                                          v82 = v103;
                                          v115 = v104;
                                        }

                                        else
                                        {
                                          v82 = v103;
                                          v83 = v103;
                                          for (j = v104; !j; ++v83)
                                          {
                                            v82 = v83 + 1;
                                            if (__OFADD__(v83, 1))
                                            {
                                              goto LABEL_121;
                                            }

                                            if (v82 >= v79)
                                            {
                                              v104 = 0;
                                              goto LABEL_113;
                                            }

                                            j = *(v105 + 8 * v82);
                                          }

                                          v115 = (j - 1) & j;
                                          v21 = *(*(v116 + 48) + ((v82 << 9) | (8 * __clz(__rbit64(j)))));
                                        }

                                        if (!v21)
                                        {
LABEL_113:
                                          sub_100093854(v116);
                                          v35 = Logger.logObject.getter();
                                          v87 = static os_log_type_t.error.getter();
                                          if (os_log_type_enabled(v35, v87))
                                          {
                                            v88 = swift_slowAlloc();
                                            *v88 = 0;
                                            _os_log_impl(&_mh_execute_header, v35, v87, "Got invalid peripheral", v88, 2u);
                                          }

                                          sub_10006A178(v113, v112);
                                          sub_10006A178(v110, v111);
                                          sub_10006A178(v108, v109);
                                          sub_10006A178(v107, v106);
                                          sub_10006A178(v102, v101);
                                          goto LABEL_26;
                                        }

                                        a4 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
                                        v86 = [v15 identifier];
                                        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                                        LOBYTE(v86) = static UUID.== infix(_:_:)();
                                        (*v100[1])(v14, v11);
                                        if (v86)
                                        {
                                          break;
                                        }

                                        v103 = v82;
                                        v80 = v115;
                                      }

                                      sub_100093854(v116);
                                      v89 = v114;
                                      a4 = *v114;
                                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                                      *v89 = a4;
                                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                                      {
                                        goto LABEL_124;
                                      }

                                      goto LABEL_117;
                                    }

                                    sub_10006A178(v107, v106);
                                    v65 = v102;
                                    v66 = &v122;
                                    goto LABEL_80;
                                  }

                                  goto LABEL_89;
                                }

LABEL_85:
                                if (v32 != 2)
                                {
                                  sub_10006A178(v107, v106);
                                  sub_10006A178(v108, v109);
                                  sub_10006A178(v110, v111);
                                  sub_10006A178(v113, v112);
                                  v20 = v102;
                                  v54 = v101;
                                  goto LABEL_61;
                                }

                                v68 = *(v102 + 16);
                                v67 = *(v102 + 24);
                                v25 = __OFSUB__(v67, v68);
                                v64 = v67 - v68;
                                if (!v25)
                                {
                                  goto LABEL_91;
                                }

                                __break(1u);
LABEL_89:
                                LODWORD(v64) = HIDWORD(v102) - v102;
                                if (!__OFSUB__(HIDWORD(v102), v102))
                                {
                                  v64 = v64;
                                  goto LABEL_91;
                                }

LABEL_123:
                                __break(1u);
LABEL_124:
                                a4 = sub_10012EF2C(0, a4[2] + 1, 1, a4);
                                *v114 = a4;
LABEL_117:
                                v92 = a4[2];
                                v91 = a4[3];
                                if (v92 >= v91 >> 1)
                                {
                                  v99 = sub_10012EF2C((v91 > 1), v92 + 1, 1, a4);
                                  *v114 = v99;
                                }

                                sub_10006A178(v110, v111);
                                sub_10006A178(v113, v112);
                                v93 = *v114;
                                v93[2] = v92 + 1;
                                v94 = &v93[7 * v92];
                                v95 = v108;
                                v96 = v109;
                                v94[4] = v21;
                                v94[5] = v95;
                                v97 = v102;
                                v94[6] = v96;
                                v94[7] = v97;
                                v98 = v107;
                                v94[8] = v101;
                                v94[9] = v98;
                                v94[10] = v106;
                                return;
                              }

LABEL_79:
                              v65 = v107;
                              v66 = &v124;
LABEL_80:
                              sub_10006A178(v65, *(v66 - 32));
                              goto LABEL_81;
                            }
                          }

                          sub_10006A178(v113, v112);
                          sub_10006A178(v110, v111);
                          sub_10006A178(v108, v109);
                          v33 = v107;
                          v34 = v106;
                          goto LABEL_21;
                        }

                        goto LABEL_70;
                      }

LABEL_66:
                      if (v26 != 2)
                      {
                        sub_10006A178(v108, v109);
                        sub_10006A178(v110, v111);
                        sub_10006A178(v113, v112);
                        v20 = v107;
                        v54 = v106;
                        goto LABEL_61;
                      }

                      v61 = *(v107 + 16);
                      v60 = *(v107 + 24);
                      v25 = __OFSUB__(v60, v61);
                      v59 = v60 - v61;
                      if (!v25)
                      {
                        goto LABEL_72;
                      }

                      __break(1u);
LABEL_70:
                      LODWORD(v59) = HIDWORD(v107) - v107;
                      if (!__OFSUB__(HIDWORD(v107), v107))
                      {
                        v59 = v59;
                        goto LABEL_72;
                      }

LABEL_122:
                      __break(1u);
                      goto LABEL_123;
                    }
                  }

                  sub_10006A178(v113, v112);
                  sub_10006A178(v110, v111);
                  v33 = v108;
                  v34 = v109;
LABEL_21:
                  sub_10006A178(v33, v34);
LABEL_22:
                  sub_100092F28(v120);
                  goto LABEL_23;
                }

                sub_10006A178(v47, v48);
                goto LABEL_57;
              }

LABEL_47:
              LODWORD(v50) = HIDWORD(v47) - v47;
              if (__OFSUB__(HIDWORD(v47), v47))
              {
                __break(1u);
LABEL_121:
                __break(1u);
                goto LABEL_122;
              }

              v50 = v50;
              goto LABEL_49;
            }

            if (v49 == 2)
            {
              v56 = *(v117 + 16);
              v55 = *(v117 + 24);
              v25 = __OFSUB__(v55, v56);
              v50 = v55 - v56;
              if (!v25)
              {
                goto LABEL_49;
              }

              __break(1u);
              goto LABEL_47;
            }

            v51 = v117;
            v53 = v118;
            sub_10006A178(v110, v111);
            v52 = v113;
LABEL_42:
            sub_10006A178(v52, v21);
            v20 = v51;
            v54 = v53;
LABEL_61:
            sub_10006A178(v20, v54);
            goto LABEL_23;
          }

          __break(1u);
        }

        else if (!v31)
        {
          v32 = BYTE6(v118);
          goto LABEL_33;
        }

        LODWORD(v32) = HIDWORD(v29) - v29;
        if (__OFSUB__(HIDWORD(v29), v29))
        {
          __break(1u);
          goto LABEL_85;
        }

        v32 = v32;
        goto LABEL_33;
      }

      LODWORD(v26) = HIDWORD(v117) - v117;
      if (!__OFSUB__(HIDWORD(v117), v117))
      {
        if (v26 == 6)
        {
          goto LABEL_14;
        }

LABEL_60:
        v54 = v21;
        goto LABEL_61;
      }
    }

    __break(1u);
    goto LABEL_66;
  }

LABEL_23:

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v120[0] = v38;
    *v37 = 136315138;
    v39 = Dictionary.description.getter();
    v41 = v40;

    v42 = sub_1002FFA0C(v39, v41, v120);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v35, v36, "Got invalid pairing info %s", v37, 0xCu);
    sub_1000752F4(v38);
  }

  else
  {
  }

LABEL_26:
}

void sub_1000F8460(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1000F84D8()
{

  sub_1000752F4((v0 + 40));

  sub_10006A2D0(*(v0 + 104), *(v0 + 112));

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1000F8548()
{
  sub_1000F84D8();

  return swift_deallocClassInstance();
}

Swift::Int sub_1000F8578()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  Hasher.init(_seed:)();
  v6 = [*(v5 + 24) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v2 + 8))(v4, v1);
  return Hasher._finalize()();
}

uint64_t sub_1000F86C0(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(*v1 + 24) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v3 + 8))(v6, v2);
}

Swift::Int sub_1000F87FC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  Hasher.init(_seed:)();
  v6 = [*(v5 + 24) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v2 + 8))(v4, v1);
  return Hasher._finalize()();
}

uint64_t sub_1000F8950(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_10009393C(0, &qword_100502D20, NSObject_ptr);
  v4 = *(v3 + 24);
  v5 = *(v2 + 24);
  v6 = v4;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t *sub_1000F89E4()
{

  sub_1000B2A4C(v0[23], v0[24]);
  sub_1000B2A4C(v0[25], v0[26]);
  return v0;
}

uint64_t sub_1000F8A64()
{
  sub_1000F89E4();

  return swift_deallocClassInstance();
}

uint64_t sub_1000F8A98()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_1000F8AE4()
{
  v1 = *(*v0 + 120);

  return v1;
}

uint64_t sub_1000F8B18()
{
  v1 = *(*v0 + 136);

  return v1;
}

uint64_t sub_1000F8B4C()
{
  v1 = *(*v0 + 152);

  return v1;
}

uint64_t sub_1000F8B80()
{
  v1 = *(*v0 + 168);

  return v1;
}

uint64_t sub_1000F8BB4()
{
  v1 = *(*v0 + 184);
  sub_100113B54(v1, *(*v0 + 192));
  return v1;
}

uint64_t sub_1000F8BEC()
{
  v1 = *(*v0 + 200);
  sub_100113B54(v1, *(*v0 + 208));
  return v1;
}

Swift::Int sub_1000F8C24()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000F8C78()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000F8CBC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000F8CE8()
{

  sub_1000B2A4C(*(v0 + 152), *(v0 + 160));
  sub_1000B2A4C(*(v0 + 168), *(v0 + 176));
  return v0;
}

uint64_t sub_1000F8D58()
{
  sub_1000F8CE8();

  return swift_deallocClassInstance();
}

uint64_t sub_1000F8D8C()
{
  v1 = *(*v0 + 24);

  return v1;
}

uint64_t sub_1000F8DCC()
{
  v1 = *(*v0 + 88);

  return v1;
}

uint64_t sub_1000F8E00()
{
  v1 = *(*v0 + 104);

  return v1;
}

uint64_t sub_1000F8E34()
{
  v1 = *(*v0 + 152);
  sub_100113B54(v1, *(*v0 + 160));
  return v1;
}

uint64_t sub_1000F8E6C()
{
  v1 = *(*v0 + 168);
  sub_100113B54(v1, *(*v0 + 176));
  return v1;
}

Swift::Int sub_1000F8EA4()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000F8F50(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1000F8FE4()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000F90B4()
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000F9108()
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000F92A0(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1000F93E0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v107 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = (v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DispatchQoS();
  i = *(v7 - 8);
  __chkstk_darwin(v7);
  v111 = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_104;
  }

  while (1)
  {
    v14 = qword_10051B7F0;
    *v13 = qword_10051B7F0;
    v15 = *(v11 + 104);
    v104 = enum case for DispatchPredicate.onQueue(_:);
    v105 = v11 + 104;
    v103 = v15;
    v15(v13);
    v108 = v14;
    LOBYTE(v14) = _dispatchPreconditionTest(_:)();
    v16 = *(v11 + 8);
    v106 = v11 + 8;
    v102 = v16;
    v16(v13, v10);
    if ((v14 & 1) == 0)
    {
      __break(1u);
LABEL_106:
      swift_once();
LABEL_57:
      sub_1000FA438(1);
      v11 = v111;
      v2 = v112;
      v17 = v97;
      i = &selRef_mockFleetIntermediateCert;
      goto LABEL_77;
    }

    v101 = v10;
    v10 = OBJC_IVAR____TtC10seserviced6DSKBLE_logger;
    if (!*(v2 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
    {
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "Not running", v49, 2u);
      }

      return;
    }

    v109 = i;
    v110 = v6;
    v17 = a1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    v20 = os_log_type_enabled(v18, v19);
    i = &selRef_mockFleetIntermediateCert;
    v100 = v4;
    v99 = v7;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315138;
      v23 = [v17 state];
      v24 = 0xE700000000000000;
      v25 = 0x6E776F6E6B6E75;
      v26 = 0x4F64657265776F70;
      v27 = 0xEA00000000006666;
      v28 = 0x4F64657265776F70;
      v29 = 0xE90000000000006ELL;
      v30 = 0x7463697274736572;
      v31 = 0xEA00000000006465;
      if (v23 != 10)
      {
        v30 = 0x6E776F6E6B6E75;
        v31 = 0xE700000000000000;
      }

      if (v23 != 5)
      {
        v28 = v30;
        v29 = v31;
      }

      if (v23 != 4)
      {
        v26 = v28;
        v27 = v29;
      }

      if (v23 == 3)
      {
        v25 = 0x726F687475616E75;
        v24 = 0xEC00000064657A69;
      }

      if (v23 == 2)
      {
        v25 = 0x726F707075736E75;
        v24 = 0xEB00000000646574;
      }

      if (v23 == 1)
      {
        v25 = 0x6E69747465736572;
        v24 = 0xE900000000000067;
      }

      v32 = v23 <= 3;
      if (v23 <= 3)
      {
        v33 = v25;
      }

      else
      {
        v33 = v26;
      }

      if (v32)
      {
        v7 = v24;
      }

      else
      {
        v7 = v27;
      }

      v34 = v17;
      v35 = v10;
      v36 = v2;
      v37 = sub_1002FFA0C(v33, v7, aBlock);

      *(v21 + 4) = v37;
      v2 = v36;
      v10 = v35;
      v17 = v34;
      i = &selRef_mockFleetIntermediateCert;
      _os_log_impl(&_mh_execute_header, v18, v19, "Central manager changed state to %s", v21, 0xCu);
      sub_1000752F4(v22);
    }

    v38 = OBJC_IVAR____TtC10seserviced6DSKBLE_centralState;
    v39 = *(v2 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState);
    v40 = [v17 state];
    *(v2 + v38) = v40;
    v11 = v111;
    v112 = v2;
    if (v40 == 10 || v40 == 5)
    {
      if (v39 == 5 || v39 == 10)
      {
        goto LABEL_77;
      }

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Central is powered on", v43, 2u);
      }

      v98 = v10;

      sub_1000EE338();
      v44 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectionRequests;
      swift_beginAccess();
      v4 = *(v2 + v44);
      v97 = v17;
      if ((v4 & 0xC000000000000001) != 0)
      {

        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for DSKBLE.BLEConnectionRequest();
        sub_1001081DC(&unk_100503E70, v45, type metadata accessor for DSKBLE.BLEConnectionRequest, &unk_10040B110);
        Set.Iterator.init(_cocoa:)();
        v10 = v115;
        a1 = v116;
        v46 = v117;
        v13 = v118;
        v11 = v119;
      }

      else
      {
        v56 = -1 << *(v4 + 32);
        a1 = v4 + 56;
        v46 = ~v56;
        v57 = -v56;
        if (v57 < 64)
        {
          v58 = ~(-1 << v57);
        }

        else
        {
          v58 = -1;
        }

        v11 = v58 & *(v4 + 56);
        swift_bridgeObjectRetain_n();
        v13 = 0;
        v10 = v4;
      }

      v106 = v46;
      v6 = ((v46 + 64) >> 6);
      if (v10 < 0)
      {
        goto LABEL_52;
      }

      while (1)
      {
        v59 = v13;
        v60 = v11;
        v2 = v13;
        if (!v11)
        {
          break;
        }

LABEL_50:
        v7 = (v60 - 1) & v60;
        i = *(*(v10 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v60)))));

        if (!i)
        {
LABEL_56:
          sub_100093854(v10);

          if (qword_100501968 == -1)
          {
            goto LABEL_57;
          }

          goto LABEL_106;
        }

        while (1)
        {
          sub_1000EA4CC(i, 0);

          v13 = v2;
          v11 = v7;
          if ((v10 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_52:
          v61 = __CocoaSet.Iterator.next()();
          if (v61)
          {
            v120 = v61;
            type metadata accessor for DSKBLE.BLEConnectionRequest();
            swift_dynamicCast();
            i = aBlock[0];
            v2 = v13;
            v7 = v11;
            if (aBlock[0])
            {
              continue;
            }
          }

          goto LABEL_56;
        }
      }

      while (1)
      {
        v2 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          break;
        }

        if (v2 >= v6)
        {
          goto LABEL_56;
        }

        v60 = *(a1 + 8 * v2);
        v59 = (v59 + 1);
        if (v60)
        {
          goto LABEL_50;
        }
      }

LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    if (v39 != 10 && v39 != 5)
    {
      goto LABEL_77;
    }

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Central is powered off", v52, 2u);
    }

    v53 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v54 = *(v2 + v53);
    v98 = v10;
    v97 = v17;
    v96[2] = v54;
    if ((v54 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
      Set.Iterator.init(_cocoa:)();
      a1 = v115;
      v4 = v116;
      v55 = v117;
      i = v118;
      v7 = v119;
    }

    else
    {
      v62 = -1 << *(v54 + 32);
      v4 = v54 + 56;
      v55 = ~v62;
      v63 = -v62;
      v64 = v63 < 64 ? ~(-1 << v63) : -1;
      v7 = v64 & *(v54 + 56);
      a1 = v54;
      swift_bridgeObjectRetain_n();
      i = 0;
    }

    v96[1] = v55;
    v6 = ((v55 + 64) >> 6);
    if (a1 < 0)
    {
      break;
    }

LABEL_63:
    v65 = i;
    v66 = v7;
    v2 = i;
    if (v7)
    {
LABEL_67:
      v10 = (v66 - 1) & v66;
      v11 = *(*(a1 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v66)))));

      if (v11)
      {
        goto LABEL_71;
      }

      goto LABEL_73;
    }

    while (1)
    {
      v2 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      if (v2 >= v6)
      {
        goto LABEL_73;
      }

      v66 = *(v4 + 8 * v2);
      v65 = (v65 + 1);
      if (v66)
      {
        goto LABEL_67;
      }
    }

LABEL_103:
    __break(1u);
LABEL_104:
    swift_once();
  }

  while (1)
  {
    v67 = __CocoaSet.Iterator.next()();
    if (!v67)
    {
      break;
    }

    v120 = v67;
    type metadata accessor for DSKBLE.BLEPeripheral();
    swift_dynamicCast();
    v11 = aBlock[0];
    v2 = i;
    v10 = v7;
    if (!aBlock[0])
    {
      break;
    }

LABEL_71:
    v68 = *(v11 + 24);
    sub_1000EF594(v68, 0);

    i = v2;
    v7 = v10;
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_63;
    }
  }

LABEL_73:
  sub_100093854(a1);

  if (qword_100501968 != -1)
  {
    swift_once();
  }

  v69 = qword_10051B290;
  v70 = v108;
  *v13 = v108;
  v71 = v101;
  v103(v13, v104, v101);
  v72 = v70;
  LOBYTE(v70) = _dispatchPreconditionTest(_:)();
  v102(v13, v71);
  v11 = v111;
  v2 = v112;
  v17 = v97;
  i = &selRef_mockFleetIntermediateCert;
  if ((v70 & 1) == 0)
  {
    __break(1u);
    return;
  }

  *(v69 + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_isCentralManagerPoweredOn) = 0;
LABEL_77:
  v73 = [v17 i[453]];
  v74 = v110;
  v75 = v109;
  if (v73 != 1)
  {
    goto LABEL_98;
  }

  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&_mh_execute_header, v76, v77, "Detected possible BT crash", v78, 2u);
  }

  v79 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectionRequests;
  swift_beginAccess();
  v4 = *(v2 + v79);
  if ((v4 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for DSKBLE.BLEConnectionRequest();
    sub_1001081DC(&unk_100503E70, v80, type metadata accessor for DSKBLE.BLEConnectionRequest, &unk_10040B110);
    Set.Iterator.init(_cocoa:)();
    v10 = v120;
    a1 = v121;
    v11 = v122;
    v2 = v123;
    v7 = v124;
  }

  else
  {
    v81 = -1 << *(v4 + 32);
    a1 = v4 + 56;
    v11 = ~v81;
    v82 = -v81;
    if (v82 < 64)
    {
      v83 = ~(-1 << v82);
    }

    else
    {
      v83 = -1;
    }

    v7 = v83 & *(v4 + 56);
    swift_bridgeObjectRetain_n();
    v2 = 0;
    v10 = v4;
  }

  v6 = ((v11 + 64) >> 6);
  for (i = &type metadata for Swift.AnyObject; v10 < 0; v7 = v13)
  {
    v88 = __CocoaSet.Iterator.next()();
    if (!v88)
    {
      goto LABEL_97;
    }

    aBlock[6] = v88;
    type metadata accessor for DSKBLE.BLEConnectionRequest();
    swift_dynamicCast();
    v87 = aBlock[0];
    v86 = v2;
    v13 = v7;
    if (!aBlock[0])
    {
      goto LABEL_97;
    }

LABEL_95:
    v89 = *(v87 + 56);
    *(v87 + 56) = 0;

    v2 = v86;
  }

  v84 = v2;
  v85 = v7;
  v86 = v2;
  if (!v7)
  {
    while (1)
    {
      v86 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        break;
      }

      if (v86 >= v6)
      {
        goto LABEL_97;
      }

      v85 = *(a1 + 8 * v86);
      ++v84;
      if (v85)
      {
        goto LABEL_91;
      }
    }

    __break(1u);
    goto LABEL_102;
  }

LABEL_91:
  v13 = ((v85 - 1) & v85);

  if (v87)
  {
    goto LABEL_95;
  }

LABEL_97:
  sub_100093854(v10);

  v74 = v110;
  v75 = v109;
  v11 = v111;
  v2 = v112;
LABEL_98:
  v90 = OBJC_IVAR____TtC10seserviced6DSKBLE_closuresOnCentralState;
  swift_beginAccess();
  if (*(*(v2 + v90) + 16))
  {
    v91 = swift_allocObject();
    *(v91 + 16) = v2;
    aBlock[4] = sub_10011F40C;
    aBlock[5] = v91;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100080830;
    aBlock[3] = &unk_1004C78E0;
    v92 = _Block_copy(aBlock);
    v93 = v2;
    static DispatchQoS.unspecified.getter();
    v113 = _swiftEmptyArrayStorage;
    sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v94 = v11;
    sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
    sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
    v95 = v100;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v92);
    (*(v107 + 8))(v74, v95);
    (v75[1])(v94, v99);
  }
}

uint64_t sub_1000FA438(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v23 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v22 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v1[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_isCentralManagerPoweredOn] = a1 & 1;
    if ((a1 & 1) == 0)
    {
      return result;
    }

    v15 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_unpairingRequests;
    swift_beginAccess();
    v16 = *&v1[v15];
    if (!(v16 >> 62))
    {
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingRequests;
  swift_beginAccess();
  v18 = *&v1[v17];
  if (v18 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

LABEL_9:
  v19 = swift_allocObject();
  *(v19 + 16) = v1;
  aBlock[4] = sub_10011F748;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C7930;
  v20 = _Block_copy(aBlock);
  v21 = v1;
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v24 + 8))(v5, v3);
  (*(v23 + 8))(v8, v6);
}

uint64_t sub_1000FA8C4(uint64_t result)
{
  v1 = result;
  v2 = *(result + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState);
  if (v2 <= 0xA && ((1 << v2) & 0x430) != 0)
  {
    v42 = OBJC_IVAR____TtC10seserviced6DSKBLE_centralState;
    v4 = OBJC_IVAR____TtC10seserviced6DSKBLE_closuresOnCentralState;
    result = swift_beginAccess();
    v5 = 0;
    v6 = *(v1 + v4);
    v7 = *(v6 + 16);
LABEL_6:
    v8 = (v6 + 32 + 24 * v5);
    while (v7 != v5)
    {
      if (v5 >= *(v6 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      ++v5;
      v9 = v8 + 24;
      v10 = *v8;
      v8 += 24;
      if ((v10 & 1) == 0)
      {
        v12 = *(v9 - 2);
        v11 = *(v9 - 1);

        result = swift_isUniquelyReferenced_nonNull_native();
        v40 = v12;
        if ((result & 1) == 0)
        {
          result = sub_10019F574(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v14 = _swiftEmptyArrayStorage[2];
        v13 = _swiftEmptyArrayStorage[3];
        if (v14 >= v13 >> 1)
        {
          result = sub_10019F574((v13 > 1), v14 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v14 + 1;
        v15 = &_swiftEmptyArrayStorage[3 * v14];
        *(v15 + 32) = 0;
        v15[5] = v40;
        v15[6] = v11;
        goto LABEL_6;
      }
    }

    result = sub_100110E54((v1 + v4));
    v16 = *(*(v1 + v4) + 16);
    if (v16 < result)
    {
      goto LABEL_46;
    }

    sub_1001A2334(result, v16);
    result = swift_endAccess();
    v17 = _swiftEmptyArrayStorage[2];
    if (!v17)
    {
LABEL_20:

      v2 = *(v1 + v42);
      goto LABEL_21;
    }

    v18 = 0;
    v19 = &_swiftEmptyArrayStorage[6];
    while (v18 < _swiftEmptyArrayStorage[2])
    {
      ++v18;
      v20 = *(v19 - 1);

      v20(v21);

      v19 += 3;
      if (v17 == v18)
      {
        goto LABEL_20;
      }
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_21:
  if (v2 == 10 || v2 == 5)
  {
    v23 = OBJC_IVAR____TtC10seserviced6DSKBLE_closuresOnCentralState;
    result = swift_beginAccess();
    v24 = 0;
    v25 = *(v1 + v23);
    v26 = *(v25 + 16);
LABEL_27:
    v27 = (v25 + 32 + 24 * v24);
    while (v26 != v24)
    {
      if (v24 >= *(v25 + 16))
      {
        goto LABEL_43;
      }

      ++v24;
      v28 = v27 + 24;
      v29 = *v27;
      v27 += 24;
      if (v29 == 1)
      {
        v30 = *(v28 - 1);
        v41 = *(v28 - 2);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10019F574(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v32 = _swiftEmptyArrayStorage[2];
        v31 = _swiftEmptyArrayStorage[3];
        if (v32 >= v31 >> 1)
        {
          result = sub_10019F574((v31 > 1), v32 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v32 + 1;
        v33 = &_swiftEmptyArrayStorage[3 * v32];
        *(v33 + 32) = 1;
        v33[5] = v41;
        v33[6] = v30;
        goto LABEL_27;
      }
    }

    result = sub_100110FE4((v1 + v23));
    v34 = *(*(v1 + v23) + 16);
    if (v34 < result)
    {
LABEL_47:
      __break(1u);
      return result;
    }

    sub_1001A2334(result, v34);
    result = swift_endAccess();
    v35 = _swiftEmptyArrayStorage[2];
    if (!v35)
    {
    }

    v36 = 0;
    v37 = &_swiftEmptyArrayStorage[6];
    while (v36 < _swiftEmptyArrayStorage[2])
    {
      ++v36;
      v38 = *(v37 - 1);

      v38(v39);

      v37 += 3;
      if (v35 == v36)
      {
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  return result;
}

void (*sub_1000FAEBC(void (*result)(void, uint64_t), uint64_t a2, uint64_t a3))(void, uint64_t)
{
  v3 = *(a3 + 168);
  if (v3 == 2)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = *(a3 + 16);

    v4(v3 & 1, v5);
  }

  return result;
}

void sub_1000FB01C(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(id, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6(v11, a5);
}

void sub_1000FB0B4(void *a1, uint64_t *a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_59;
  }

  if (*(v2 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
  {
    v140 = a2;
    v148 = a1;
    v141 = v8;
    v143 = v6;
    v15 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v146 = v2;
    v16 = *(v2 + v15);
    v142 = v5;
    v145 = v16;
    if ((v16 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
      Set.Iterator.init(_cocoa:)();
      v17 = v151;
      v18 = v152;
      v19 = v153;
      v20 = v154;
      v21 = v155;
    }

    else
    {
      v25 = -1 << *(v16 + 32);
      v17 = v16;
      v18 = (v16 + 56);
      v19 = ~v25;
      v26 = -v25;
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      else
      {
        v27 = -1;
      }

      v21 = (v27 & *(v16 + 56));
      swift_bridgeObjectRetain_n();
      v20 = 0;
    }

    v144 = v19;
    v28 = (v19 + 64) >> 6;
    if (v17 < 0)
    {
      goto LABEL_21;
    }

LABEL_15:
    v29 = v20;
    v30 = v21;
    v31 = v20;
    if (v21)
    {
LABEL_19:
      v32 = (v30 - 1) & v30;
      v33 = *(*(v17 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));

      if (v33)
      {
        while (1)
        {
          v147 = v21;
          v35 = v17;
          v36 = sub_10009393C(0, &qword_100502D20, NSObject_ptr);
          v37 = *(v33 + 24);
          v38 = static NSObject.== infix(_:_:)();

          if (v38)
          {
            break;
          }

          v20 = v31;
          v21 = v32;
          v17 = v35;
          if ((v35 & 0x8000000000000000) == 0)
          {
            goto LABEL_15;
          }

LABEL_21:
          v34 = __CocoaSet.Iterator.next()();
          if (v34)
          {
            v149 = v34;
            type metadata accessor for DSKBLE.BLEPeripheral();
            swift_dynamicCast();
            v33 = v150[0];
            v31 = v20;
            v32 = v21;
            if (v150[0])
            {
              continue;
            }
          }

          goto LABEL_26;
        }

        v138 = v36;
        v139 = v33;
        sub_100093854(v35);

        if (v140)
        {
          swift_errorRetain();
          v51 = v148;
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v150[0] = swift_slowAlloc();
            *v54 = 136315394;
            v55 = [v51 identifier];
            v56 = v141;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v57 = v142;
            v58 = dispatch thunk of CustomStringConvertible.description.getter();
            v60 = v59;
            (*(v143 + 8))(v56, v57);
            v61 = sub_1002FFA0C(v58, v60, v150);

            *(v54 + 4) = v61;
            *(v54 + 12) = 2080;
            swift_getErrorValue();
            v62 = Error.localizedDescription.getter();
            v64 = sub_1002FFA0C(v62, v63, v150);

            *(v54 + 14) = v64;
            _os_log_impl(&_mh_execute_header, v52, v53, "Error while discovering services for %s %s", v54, 0x16u);
            swift_arrayDestroy();
          }

          sub_1000EF154(v51);
        }

        else
        {
          v65 = v148;
          v66 = [v148 services];
          v67 = v139;
          if (v66)
          {
            v68 = v66;
            sub_10009393C(0, &unk_100503EE0, CBService_ptr);
            v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            swift_beginAccess();
            v69 = v67[8];
            v70 = v67[9];
            v71 = sub_1000752B0(v67 + 5, v69);
            v72 = *(v69 - 8);
            v73 = __chkstk_darwin(v71);
            v75 = &v138 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v72 + 16))(v75, v73);
            (*(v70 + 8))(v69, v70);
            (*(v72 + 8))(v75, v69);
            v76 = String._bridgeToObjectiveC()();

            v77 = objc_opt_self();
            v147 = [v77 UUIDWithString:v76];

            v144 = v77;
            if (v6 >> 62)
            {
              goto LABEL_61;
            }

            for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
            {
              v79 = 0;
              while (1)
              {
                if ((v6 & 0xC000000000000001) != 0)
                {
                  v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v79 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_60;
                  }

                  v80 = *(v6 + 8 * v79 + 32);
                }

                v18 = v80;
                v81 = v79 + 1;
                if (__OFADD__(v79, 1))
                {
                  break;
                }

                v82 = [v80 UUID];
                v83 = static NSObject.== infix(_:_:)();

                if (v83)
                {

                  v119 = v139;
                  *(v139 + 32) = 2;
                  v121 = v119[8];
                  v120 = v119[9];
                  v122 = sub_1000752B0(v119 + 5, v121);
                  v123 = *(v121 - 8);
                  v124 = __chkstk_darwin(v122);
                  v126 = &v138 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
                  (*(v123 + 16))(v126, v124);
                  v127 = (*(v120 + 16))(v121, v120);
                  (*(v123 + 8))(v126, v121);
                  v128 = *(v127 + 16);
                  if (v128)
                  {
                    v140 = &v138;
                    v149 = _swiftEmptyArrayStorage;
                    specialized ContiguousArray.reserveCapacity(_:)();
                    v146 = *(v143 + 16);
                    v129 = (*(v143 + 80) + 32) & ~*(v143 + 80);
                    v138 = v127;
                    v130 = v127 + v129;
                    v145 = *(v143 + 72);
                    v143 += 16;
                    v131 = (v143 - 8);
                    v132 = v142;
                    v133 = v141;
                    v134 = v144;
                    do
                    {
                      v146(v133, v130, v132);
                      isa = UUID._bridgeToObjectiveC()().super.isa;
                      v136 = [v134 UUIDWithNSUUID:{isa, v138}];

                      (*v131)(v133, v132);
                      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      specialized ContiguousArray._endMutation()();
                      v130 += v145;
                      --v128;
                    }

                    while (v128);
                  }

                  goto LABEL_57;
                }

                ++v79;
                if (v81 == i)
                {
                  goto LABEL_46;
                }
              }

LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              ;
            }

LABEL_46:

            v84 = v148;
            v85 = v139;

            v86 = Logger.logObject.getter();
            v87 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v86, v87))
            {
              v88 = swift_slowAlloc();
              v148 = swift_slowAlloc();
              v149 = v148;
              *v88 = 136315394;
              v89 = v85[8];
              v90 = v85[9];
              v91 = sub_1000752B0(v85 + 5, v89);
              v92 = *(v89 - 8);
              v93 = __chkstk_darwin(v91);
              v95 = &v138 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v92 + 16))(v95, v93);
              v96 = (*(v90 + 8))(v89, v90);
              v98 = v97;
              (*(v92 + 8))(v95, v89);
              v99 = sub_1002FFA0C(v96, v98, &v149);

              *(v88 + 4) = v99;
              *(v88 + 12) = 2080;
              v100 = [v84 identifier];
              v101 = v141;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v102 = v142;
              v103 = dispatch thunk of CustomStringConvertible.description.getter();
              v105 = v104;
              (*(v143 + 8))(v101, v102);
              v106 = sub_1002FFA0C(v103, v105, &v149);

              *(v88 + 14) = v106;
              _os_log_impl(&_mh_execute_header, v86, v87, "Target service UUID %s missing from %s", v88, 0x16u);
              swift_arrayDestroy();
            }

            sub_1000EF154(v84);
          }

          else
          {
            v107 = v65;
            v108 = Logger.logObject.getter();
            v109 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v108, v109))
            {
              v110 = swift_slowAlloc();
              v111 = swift_slowAlloc();
              v150[0] = v111;
              *v110 = 136315138;
              v112 = [v107 identifier];
              v113 = v141;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v114 = v142;
              v115 = dispatch thunk of CustomStringConvertible.description.getter();
              v117 = v116;
              (*(v143 + 8))(v113, v114);
              v118 = sub_1002FFA0C(v115, v117, v150);

              *(v110 + 4) = v118;
              _os_log_impl(&_mh_execute_header, v108, v109, "No services discovered for %s", v110, 0xCu);
              sub_1000752F4(v111);
            }

            sub_1000EF154(v107);
          }
        }
      }

      else
      {
LABEL_26:
        sub_100093854(v17);

        v39 = v148;
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v150[0] = v43;
          *v42 = 136315138;
          v44 = [v39 identifier];
          v45 = v141;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v46 = v142;
          v47 = dispatch thunk of CustomStringConvertible.description.getter();
          v49 = v48;
          (*(v143 + 8))(v45, v46);
          v50 = sub_1002FFA0C(v47, v49, v150);

          *(v42 + 4) = v50;
          _os_log_impl(&_mh_execute_header, v40, v41, "Discovered services for unknown peripheral %s", v42, 0xCu);
          sub_1000752F4(v43);
        }

        sub_1000EF154(v39);
      }
    }

    else
    {
      while (1)
      {
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v31 >= v28)
        {
          goto LABEL_26;
        }

        v30 = *(v18 + v31);
        ++v29;
        if (v30)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_57:

      sub_10009393C(0, &qword_100503EB0, CBUUID_ptr);
      v137 = Array._bridgeToObjectiveC()().super.isa;

      [v148 discoverCharacteristics:v137 forService:v18];
    }
  }

  else
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Not running", v24, 2u);
    }
  }
}

void sub_1000FC354(void *a1, unint64_t a2, void **a3)
{
  v180 = a1;
  v175 = type metadata accessor for DispatchWorkItemFlags();
  v174 = *(v175 - 1);
  __chkstk_darwin(v175);
  v172 = &v159 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for DispatchQoS();
  v171 = *(v173 - 8);
  __chkstk_darwin(v173);
  v170 = &v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for DispatchTime();
  v169 = *(v176 - 8);
  __chkstk_darwin(v176);
  v166 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v168 = &v159 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  i = type metadata accessor for DispatchPredicate();
  v16 = *(i - 8);
  __chkstk_darwin(i);
  v18 = (&v159 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v19 = qword_10051B7F0;
    *v18 = qword_10051B7F0;
    (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), i);
    v167 = v19;
    LOBYTE(v19) = _dispatchPreconditionTest(_:)();
    (*(v16 + 8))(v18, i);
    if ((v19 & 1) == 0)
    {
      __break(1u);
      goto LABEL_70;
    }

    if (!*(v3 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
    {
      break;
    }

    v162 = a3;
    v165 = v14;
    v164 = v12;
    v163 = v11;
    v20 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v179 = v3;
    v21 = *(v3 + v20);
    v161 = a2;
    v178 = v21;
    if ((v21 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      v3 = type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
      Set.Iterator.init(_cocoa:)();
      v12 = v190;
      v18 = v191;
      v22 = v192;
      v14 = v193;
      v16 = v194;
    }

    else
    {
      v26 = -1 << *(v21 + 32);
      v18 = (v21 + 56);
      v3 = ~v26;
      v27 = -v26;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v16 = v28 & *(v21 + 56);
      v12 = v21;
      swift_bridgeObjectRetain_n();
      v22 = v3;
      v14 = 0;
    }

    v177 = v22;
    for (i = (v22 + 8) >> 6; (v12 & 0x8000000000000000) != 0; v16 = a2)
    {
      v31 = __CocoaSet.Iterator.next()();
      if (!v31)
      {
        goto LABEL_25;
      }

      v189[4] = v31;
      type metadata accessor for DSKBLE.BLEPeripheral();
      swift_dynamicCast();
      a3 = aBlock;
      v11 = v14;
      a2 = v16;
      if (!aBlock)
      {
        goto LABEL_25;
      }

LABEL_22:
      sub_10009393C(0, &qword_100502D20, NSObject_ptr);
      v32 = a3[3];
      v3 = static NSObject.== infix(_:_:)();

      if (v3)
      {
        v160 = a3;
        sub_100093854(v12);

        if (v162)
        {
          swift_errorRetain();
          v45 = v180;
          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.error.getter();

          v48 = os_log_type_enabled(v46, v47);
          v49 = v165;
          if (v48)
          {
            v50 = swift_slowAlloc();
            v178 = v45;
            v51 = v50;
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            aBlock = v53;
            *v51 = 136315394;
            v54 = [v178 identifier];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v55 = v163;
            v56 = dispatch thunk of CustomStringConvertible.description.getter();
            v58 = v57;
            (*(v164 + 8))(v49, v55);
            v59 = sub_1002FFA0C(v56, v58, &aBlock);

            *(v51 + 4) = v59;
            *(v51 + 12) = 2112;
            swift_errorRetain();
            v60 = _swift_stdlib_bridgeErrorToNSError();
            *(v51 + 14) = v60;
            *v52 = v60;
            _os_log_impl(&_mh_execute_header, v46, v47, "Failed to discover characteristics for %s error %@", v51, 0x16u);
            sub_100075768(v52, &unk_100503F70, &unk_10040B2E0);

            sub_1000752F4(v53);

            v45 = v178;
          }

          v61 = v160;
          v62 = v160[10];
          if (v62 > 2)
          {
            v87 = Logger.logObject.getter();
            v88 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v87, v88))
            {
              v89 = swift_slowAlloc();
              *v89 = 0;
              _os_log_impl(&_mh_execute_header, v87, v88, "Retries exhausted for discovering characteristics", v89, 2u);
            }

            sub_1000EF154(v45);
          }

          else
          {
            v160[10] = (v62 + 1);

            v63 = Logger.logObject.getter();
            v64 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v63, v64))
            {
              v65 = swift_slowAlloc();
              *v65 = 134217984;
              *(v65 + 4) = v61[10];

              _os_log_impl(&_mh_execute_header, v63, v64, "Retry %ld for discovering characteristics", v65, 0xCu);
            }

            else
            {
            }

            v90 = v164;
            swift_beginAccess();
            v92 = v61[8];
            v91 = v61[9];
            v93 = sub_1000752B0(v61 + 5, v92);
            v94 = *(v92 - 8);
            v95 = __chkstk_darwin(v93);
            v97 = &v159 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v94 + 16))(v97, v95);
            v98 = v91[2](v92, v91);
            (*(v94 + 8))(v97, v92);
            v99 = *(v98 + 16);
            if (v99)
            {
              v177 = &v159;
              v178 = v45;
              aBlock = _swiftEmptyArrayStorage;
              specialized ContiguousArray.reserveCapacity(_:)();
              v180 = objc_opt_self();
              v101 = *(v90 + 16);
              v100 = v90 + 16;
              v179 = v101;
              v102 = (*(v100 + 64) + 32) & ~*(v100 + 64);
              v164 = v98;
              v103 = v98 + v102;
              v104 = *(v100 + 56);
              v105 = v163;
              v106 = v165;
              do
              {
                v179(v106, v103, v105);
                isa = UUID._bridgeToObjectiveC()().super.isa;
                v108 = [v180 UUIDWithNSUUID:isa];

                (*(v100 - 8))(v106, v105);
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
                v103 += v104;
                --v99;
              }

              while (v99);

              v109 = aBlock;
              v45 = v178;
            }

            else
            {

              v109 = _swiftEmptyArrayStorage;
            }

            v124 = v166;
            static DispatchTime.now()();
            v125 = v168;
            + infix(_:_:)();
            v180 = *(v169 + 8);
            (v180)(v124, v176);
            v126 = swift_allocObject();
            v126[2] = v45;
            v126[3] = v109;
            v127 = v161;
            v126[4] = v161;
            v185 = sub_10011F2F8;
            v186 = v126;
            aBlock = _NSConcreteStackBlock;
            v182 = 1107296256;
            v183 = sub_100080830;
            v184 = &unk_1004C77F0;
            v128 = _Block_copy(&aBlock);
            v129 = v45;
            v130 = v127;
            v131 = v170;
            static DispatchQoS.unspecified.getter();
            v189[0] = _swiftEmptyArrayStorage;
            sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
            sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
            v132 = v172;
            v133 = v175;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
            _Block_release(v128);

            (*(v174 + 8))(v132, v133);
            (*(v171 + 8))(v131, v173);
            (v180)(v125, v176);
          }
        }

        else
        {
          v66 = [v161 characteristics];
          if (v66)
          {
            v67 = v66;
            v176 = sub_10009393C(0, &qword_100503668, CBCharacteristic_ptr);
            a2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v12 = v160;
            v160[10] = 0;
            *(v12 + 32) = 3;
            swift_beginAccess();
            v69 = *(v12 + 64);
            v68 = *(v12 + 72);
            v70 = sub_1000752B0((v12 + 40), v69);
            v71 = *(v69 - 8);
            v72 = __chkstk_darwin(v70);
            v74 = &v159 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v71 + 16))(v74, v72);
            v75 = (*(v68 + 16))(v69, v68);
            (*(v71 + 8))(v74, v69);
            v76 = *(v75 + 16);
            v77 = v164;
            v178 = a2;
            if (v76)
            {
              v175 = &v159;
              aBlock = _swiftEmptyArrayStorage;
              specialized ContiguousArray.reserveCapacity(_:)();
              v179 = objc_opt_self();
              v79 = *(v77 + 16);
              v78 = v77 + 16;
              v177 = v79;
              v80 = (*(v78 + 64) + 32) & ~*(v78 + 64);
              v174 = v75;
              v81 = v75 + v80;
              v82 = *(v78 + 56);
              v83 = v163;
              v84 = v165;
              do
              {
                (v177)(v84, v81, v83);
                v85 = UUID._bridgeToObjectiveC()().super.isa;
                v86 = [v179 UUIDWithNSUUID:v85];

                (*(v78 - 8))(v84, v83);
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
                v81 += v82;
                --v76;
              }

              while (v76);

              v179 = aBlock;
              v12 = v160;
              a2 = v178;
            }

            else
            {

              v179 = _swiftEmptyArrayStorage;
            }

            aBlock = _swiftEmptyArrayStorage;
            if (a2 >> 62)
            {
              goto LABEL_72;
            }

            for (j = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
            {
              v135 = 0;
              v12 = a2 & 0xC000000000000001;
              v136 = a2 & 0xFFFFFFFFFFFFFF8;
              while (1)
              {
                if (v12)
                {
                  v137 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v135 >= *(v136 + 16))
                  {
                    goto LABEL_71;
                  }

                  v137 = *(a2 + 8 * v135 + 32);
                }

                v138 = v137;
                v139 = v135 + 1;
                if (__OFADD__(v135, 1))
                {
                  break;
                }

                v140 = [v137 UUID];
                v189[0] = v140;
                __chkstk_darwin(v140);
                *(&v159 - 2) = v189;
                v141 = sub_1002FB068(sub_10011F21C, (&v159 - 4), v179);

                if ((v141 & 1) != 0 && ([v138 properties] & 2) != 0)
                {
                  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  specialized ContiguousArray._endMutation()();
                }

                else
                {
                }

                a2 = v178;
                ++v135;
                if (v139 == j)
                {
                  v142 = aBlock;
                  v12 = v160;
                  goto LABEL_74;
                }
              }

LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
LABEL_72:
              ;
            }

            v142 = _swiftEmptyArrayStorage;
LABEL_74:

            v143 = sub_1000E1FA8(v142);

            swift_beginAccess();
            *(v12 + 88) = v143;

            if ((v143 & 0xC000000000000001) != 0)
            {
              swift_unknownObjectRetain();
              __CocoaSet.makeIterator()();
              sub_10011F248();
              Set.Iterator.init(_cocoa:)();
              v144 = aBlock;
              v145 = v182;
              v146 = v183;
              v147 = v184;
              v148 = v185;
            }

            else
            {
              v149 = -1 << *(v143 + 32);
              v145 = (v143 + 56);
              v146 = ~v149;
              v150 = -v149;
              if (v150 < 64)
              {
                v151 = ~(-1 << v150);
              }

              else
              {
                v151 = -1;
              }

              v148 = v151 & *(v143 + 56);

              v147 = 0;
              v144 = v143;
            }

            v179 = v146;
            v152 = (v146 + 64) >> 6;
            if (v144 < 0)
            {
              goto LABEL_86;
            }

LABEL_81:
            v153 = v147;
            v154 = v148;
            v155 = v147;
            if (v148)
            {
LABEL_85:
              v156 = (v154 - 1) & v154;
              v157 = *(*(v144 + 48) + ((v155 << 9) | (8 * __clz(__rbit64(v154)))));
              while (v157)
              {
                [v180 readValueForCharacteristic:v157];

                v147 = v155;
                v148 = v156;
                if ((v144 & 0x8000000000000000) == 0)
                {
                  goto LABEL_81;
                }

LABEL_86:
                v158 = __CocoaSet.Iterator.next()();
                if (!v158)
                {
                  break;
                }

                v187 = v158;
                swift_dynamicCast();
                v157 = v188;
                v155 = v147;
                v156 = v148;
              }

LABEL_91:
              sub_100093854(v144);
            }

            else
            {
              while (1)
              {
                v155 = v153 + 1;
                if (__OFADD__(v153, 1))
                {
                  break;
                }

                if (v155 >= v152)
                {
                  goto LABEL_91;
                }

                v154 = v145[v155];
                ++v153;
                if (v154)
                {
                  goto LABEL_85;
                }
              }

              __break(1u);
            }
          }

          else
          {
            v110 = v180;
            v111 = Logger.logObject.getter();
            v112 = static os_log_type_t.error.getter();

            v113 = os_log_type_enabled(v111, v112);
            v114 = v164;
            if (v113)
            {
              v115 = swift_slowAlloc();
              v116 = swift_slowAlloc();
              aBlock = v116;
              *v115 = 136315138;
              v117 = [v110 identifier];
              v118 = v165;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v119 = v163;
              v120 = dispatch thunk of CustomStringConvertible.description.getter();
              v122 = v121;
              (*(v114 + 8))(v118, v119);
              v123 = sub_1002FFA0C(v120, v122, &aBlock);

              *(v115 + 4) = v123;
              _os_log_impl(&_mh_execute_header, v111, v112, "No characteristics discovered for %s", v115, 0xCu);
              sub_1000752F4(v116);
            }

            sub_1000EF154(v110);
          }
        }

        return;
      }

      v14 = v11;
    }

    v29 = v14;
    v30 = v16;
    v11 = v14;
    if (v16)
    {
LABEL_18:
      a2 = (v30 - 1) & v30;
      a3 = *(*(v12 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v30)))));

      if (a3)
      {
        goto LABEL_22;
      }

LABEL_25:
      sub_100093854(v12);

      v33 = v180;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        aBlock = v37;
        *v36 = 136315138;
        v38 = [v33 identifier];
        v39 = v165;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v40 = v163;
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v43 = v42;
        (*(v164 + 8))(v39, v40);
        v44 = sub_1002FFA0C(v41, v43, &aBlock);

        *(v36 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v34, v35, "Discovered characteristics for unknown peripheral %s", v36, 0xCu);
        sub_1000752F4(v37);
      }

      sub_1000EF154(v33);
      return;
    }

    while (1)
    {
      v11 = (v29 + 1);
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v11 >= i)
      {
        goto LABEL_25;
      }

      v30 = v18[v11];
      ++v29;
      if (v30)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Not running", v25, 2u);
  }
}

void sub_1000FDC28(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10009393C(0, &qword_100503EB0, CBUUID_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a1 discoverCharacteristics:isa forService:a3];
}

void sub_1000FDCCC(void *a1, void *a2, uint64_t a3)
{
  v207 = a2;
  v209 = a1;
  v5 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v5 - 8);
  v7 = &v183 - v6;
  v199 = type metadata accessor for DispatchWorkItemFlags();
  v198 = *(v199 - 8);
  __chkstk_darwin(v199);
  v196 = &v183 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for DispatchQoS();
  v195 = *(v197 - 8);
  __chkstk_darwin(v197);
  v194 = &v183 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for DispatchTime();
  v193 = *(v200 - 8);
  __chkstk_darwin(v200);
  v190 = &v183 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v192 = &v183 - v12;
  v205 = type metadata accessor for UUID();
  v13 = *(v205 - 8);
  __chkstk_darwin(v205);
  v201 = &v183 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v183 - v16;
  __chkstk_darwin(v18);
  v20 = &v183 - v19;
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = (&v183 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v25 = qword_10051B7F0;
  *v24 = qword_10051B7F0;
  (*(v22 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v21);
  v191 = v25;
  v26 = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v24, v21);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    return;
  }

  if (!*(v3 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Not running", v36, 2u);
    }

    goto LABEL_9;
  }

  v188 = a3;
  v185 = v7;
  v189 = v20;
  v206 = v13;
  v27 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
  swift_beginAccess();
  v204 = v3;
  v28 = *(v3 + v27);
  v186 = v17;
  v203 = v28;
  if ((v28 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for DSKBLE.BLEPeripheral();
    sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
    Set.Iterator.init(_cocoa:)();
    v29 = v214;
    v30 = v215;
    v31 = v216;
    v32 = v217;
    v33 = v218;
  }

  else
  {
    v37 = -1 << *(v28 + 32);
    v30 = v28 + 56;
    v31 = ~v37;
    v38 = -v37;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    else
    {
      v39 = -1;
    }

    v33 = (v39 & *(v28 + 56));
    v29 = v28;
    swift_bridgeObjectRetain_n();
    v32 = 0;
  }

  v202 = v31;
  v40 = (v31 + 64) >> 6;
  if (v29 < 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  v41 = v32;
  v42 = v33;
  v43 = v32;
  if (!v33)
  {
    while (1)
    {
      v43 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v43 >= v40)
      {
        goto LABEL_26;
      }

      v42 = *(v30 + 8 * v43);
      ++v41;
      if (v42)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_65;
  }

LABEL_19:
  v44 = (v42 - 1) & v42;
  v26 = *(*(v29 + 48) + ((v43 << 9) | (8 * __clz(__rbit64(v42)))));

  if (!v26)
  {
LABEL_26:
    sub_100093854(v29);

    v49 = v209;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      aBlock[0] = v53;
      *v52 = 136315138;
      v54 = [v49 identifier];
      v55 = v189;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v56 = v205;
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      (*(v206 + 8))(v55, v56);
      v60 = sub_1002FFA0C(v57, v59, aBlock);

      *(v52 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v50, v51, "Read characteristic for unknown peripheral %s", v52, 0xCu);
      sub_1000752F4(v53);
    }

    sub_1000EF154(v49);
    return;
  }

  while (1)
  {
    v208 = v33;
    v13 = v29;
    v46 = sub_10009393C(0, &qword_100502D20, NSObject_ptr);
    v47 = *(v26 + 24);
    v48 = static NSObject.== infix(_:_:)();

    if (v48)
    {
      break;
    }

    v32 = v43;
    v33 = v44;
    v29 = v13;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_21:
    v45 = __CocoaSet.Iterator.next()();
    if (v45)
    {
      v213 = v45;
      type metadata accessor for DSKBLE.BLEPeripheral();
      swift_dynamicCast();
      v26 = aBlock[0];
      v43 = v32;
      v44 = v33;
      if (aBlock[0])
      {
        continue;
      }
    }

    goto LABEL_26;
  }

  v187 = v46;
  v184 = v26;
  sub_100093854(v13);

  v61 = v207;
  if (v188)
  {
    v62 = OBJC_IVAR____TtC10seserviced6DSKBLE_logger;
    swift_errorRetain();
    v63 = v61;
    v64 = v209;
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v208 = v64;
      v68 = v67;
      v69 = swift_slowAlloc();
      v203 = v62;
      v70 = v69;
      v202 = swift_slowAlloc();
      aBlock[0] = v202;
      *v68 = 138412802;
      v71 = [v63 UUID];
      *(v68 + 4) = v71;
      *v70 = v71;
      *(v68 + 12) = 2080;
      v72 = [v208 identifier];
      v73 = v189;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v74 = v205;
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v63;
      v78 = v77;
      (*(v206 + 8))(v73, v74);
      v79 = sub_1002FFA0C(v75, v78, aBlock);
      v63 = v76;

      *(v68 + 14) = v79;
      *(v68 + 22) = 2112;
      swift_errorRetain();
      v80 = _swift_stdlib_bridgeErrorToNSError();
      *(v68 + 24) = v80;
      v70[1] = v80;
      _os_log_impl(&_mh_execute_header, v65, v66, "Failed to read characteristic %@ for %s error %@", v68, 0x20u);
      sub_100068FC4(&unk_100503F70, &unk_10040B2E0);
      swift_arrayDestroy();

      sub_1000752F4(v202);

      v64 = v208;
    }

    v81 = v184;
    v82 = v184[10];
    if (v82 < 3)
    {
      v184[10] = v82 + 1;

      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 134217984;
        *(v85 + 4) = v81[10];

        _os_log_impl(&_mh_execute_header, v83, v84, "Retry %ld for reading characteristic", v85, 0xCu);
      }

      else
      {
      }

      v148 = v199;
      v149 = v198;
      v150 = v190;
      static DispatchTime.now()();
      v151 = v192;
      + infix(_:_:)();
      v209 = *(v193 + 8);
      (v209)(v150, v200);
      v152 = swift_allocObject();
      *(v152 + 16) = v64;
      *(v152 + 24) = v63;
      aBlock[4] = sub_10011F20C;
      aBlock[5] = v152;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100080830;
      aBlock[3] = &unk_1004C77A0;
      v153 = _Block_copy(aBlock);
      v154 = v63;
      v155 = v64;
      v156 = v194;
      static DispatchQoS.unspecified.getter();
      v213 = _swiftEmptyArrayStorage;
      sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
      sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
      v157 = v196;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v153);

      (*(v149 + 8))(v157, v148);
      (*(v195 + 8))(v156, v197);
      (v209)(v151, v200);

      return;
    }
  }

  v86 = v184;
  v184[10] = 0;
  swift_beginAccess();
  v88 = v86[8];
  v87 = v86[9];
  v89 = sub_1000752B0(v86 + 5, v88);
  v208 = &v183;
  v90 = *(v88 - 8);
  v91 = __chkstk_darwin(v89);
  v93 = &v183 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v90 + 16))(v93, v91);
  v94 = (*(v87 + 16))(v88, v87);
  (*(v90 + 8))(v93, v88);
  v95 = *(v94 + 16);
  v13 = v206;
  v96 = v205;
  v97 = v201;
  if (v95)
  {
    v98 = 0;
    v99 = (v206 + 8);
    while (v98 < *(v94 + 16))
    {
      (*(v13 + 16))(v97, v94 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v98, v96);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v101 = [objc_opt_self() UUIDWithNSUUID:isa];

      v102 = [v207 UUID];
      LOBYTE(isa) = static NSObject.== infix(_:_:)();

      if (isa)
      {

        v13 = v206;
        v104 = v185;
        (*(v206 + 32))(v185, v97, v96);
        v103 = 0;
        goto LABEL_43;
      }

      ++v98;
      (*v99)(v97, v96);
      v13 = v206;
      if (v95 == v98)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_78;
  }

LABEL_41:

  v103 = 1;
  v104 = v185;
LABEL_43:
  (*(v13 + 56))(v104, v103, 1, v96);
  v105 = (*(v13 + 48))(v104, 1, v96);
  v106 = v186;
  v107 = v207;
  if (v105 == 1)
  {
    sub_100075768(v104, &unk_10050BE80, &unk_10040B360);
    v108 = v107;
    v109 = v209;
    v34 = Logger.logObject.getter();
    v110 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v113 = v13;
      v114 = swift_slowAlloc();
      v213 = v114;
      *v111 = 138412546;
      v115 = [v108 UUID];
      *(v111 + 4) = v115;
      *v112 = v115;
      *(v111 + 12) = 2080;
      v116 = [v109 identifier];
      v117 = v189;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v118 = v205;
      v119 = dispatch thunk of CustomStringConvertible.description.getter();
      v121 = v120;
      (*(v113 + 8))(v117, v118);
      v122 = sub_1002FFA0C(v119, v121, &v213);

      *(v111 + 14) = v122;
      _os_log_impl(&_mh_execute_header, v34, v110, "Ignoring read characteristic which was not requested %@ for %s", v111, 0x16u);
      sub_100075768(v112, &unk_100503F70, &unk_10040B2E0);

      sub_1000752F4(v114);
    }

LABEL_9:

    return;
  }

  (*(v13 + 32))(v186, v104, v96);
  v123 = v184;
  swift_beginAccess();
  if (*(v123[12] + 16))
  {

    sub_10008C808(v106);
    v125 = v124;

    if (v125)
    {
      v126 = v107;
      v29 = v209;
      v26 = Logger.logObject.getter();
      v127 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v127))
      {
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v209 = swift_slowAlloc();
        v212 = v209;
        *v128 = 138412546;
        v130 = [v126 UUID];
        *(v128 + 4) = v130;
        *v129 = v130;
        *(v128 + 12) = 2080;
        v131 = [v29 identifier];
        v132 = v189;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v133 = v205;
        v134 = dispatch thunk of CustomStringConvertible.description.getter();
        v136 = v135;
        (*(v206 + 8))(v132, v133);
        v137 = sub_1002FFA0C(v134, v136, &v212);

        *(v128 + 14) = v137;
        _os_log_impl(&_mh_execute_header, v26, v127, "Read characteristic %@ multiple times for %s", v128, 0x16u);
        sub_100075768(v129, &unk_100503F70, &unk_10040B2E0);

        sub_1000752F4(v209);
        v13 = v206;

LABEL_66:
        sub_1000EF154(v29);

        (*(v13 + 8))(v186, v133);
        return;
      }

LABEL_65:

      v133 = v205;
      goto LABEL_66;
    }
  }

  v138 = [v107 value];
  if (v138)
  {
    v139 = v138;
    v140 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v142 = v141;

    swift_beginAccess();
    sub_100069E2C(v140, v142);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v211 = v123[12];
    v123[12] = 0x8000000000000000;
    sub_100315A7C(v140, v142, v106, isUniquelyReferenced_nonNull_native);
    v123[12] = v211;
    swift_endAccess();
    v144 = v140;
    v107 = v207;
    sub_10006A178(v144, v142);
  }

  swift_beginAccess();
  v145 = sub_10010E5EC(v107, &qword_100503668, CBCharacteristic_ptr, &unk_100504050, &qword_10040AA20);
  swift_endAccess();

  v146 = v123[11];
  if ((v146 & 0xC000000000000001) != 0)
  {

    v147 = __CocoaSet.count.getter();
  }

  else
  {
    v147 = *(v146 + 16);
  }

  if (v147)
  {

    v158 = Logger.logObject.getter();
    v159 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      *v160 = 134217984;
      v161 = v123[11];
      if ((v161 & 0xC000000000000001) != 0)
      {

        v162 = __CocoaSet.count.getter();
      }

      else
      {
        v162 = *(v161 + 16);
      }

      *(v160 + 4) = v162;

      _os_log_impl(&_mh_execute_header, v158, v159, "Waiting to read %ld remaining characteristics", v160, 0xCu);

      v13 = v206;
    }

    else
    {
    }

    (*(v13 + 8))(v106, v205);
  }

  else
  {
    v163 = v123[12];
    v123[12] = _swiftEmptyDictionarySingleton;
    v164 = v123[8];
    v165 = v123[9];
    v166 = sub_1000752B0(v123 + 5, v164);
    v167 = *(v164 - 8);
    v168 = __chkstk_darwin(v166);
    v170 = &v183 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v167 + 16))(v170, v168);
    v171 = (*(v165 + 80))(v164, v165);
    (*(v167 + 8))(v170, v164);
    v172 = v123[2];

    v173 = v171(v163, v172);

    *(v123 + 60) = v173;
    *(v123 + 122) = 0;
    v174 = v123;
    if (!*(v123[12] + 16))
    {
      v123[12] = _swiftEmptyDictionarySingleton;

      *(v123 + 32) = 5;
      v181 = v206;
      v182 = v186;
      if ((*(v123 + 122) & 1) == 0)
      {
        [v123[3] openL2CAPChannel:*(v123 + 60)];

        (*(v181 + 8))(v182, v205);
        return;
      }

      goto LABEL_79;
    }

    v175 = Logger.logObject.getter();
    v176 = static os_log_type_t.info.getter();
    v177 = os_log_type_enabled(v175, v176);
    v178 = v206;
    v179 = v186;
    if (v177)
    {
      v180 = swift_slowAlloc();
      *v180 = 134217984;
      *(v180 + 4) = *(v174[12] + 16);

      _os_log_impl(&_mh_execute_header, v175, v176, "Waiting for acknowledgement of written characteristics pending %ld", v180, 0xCu);
    }

    else
    {
    }

    (*(v178 + 8))(v179, v205);
  }
}

void sub_1000FF920(void *a1, void *a2, uint64_t a3)
{
  v209 = a2;
  v211 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v198 = *(v5 - 8);
  __chkstk_darwin(v5);
  v196 = &v186 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for DispatchQoS();
  v195 = *(v197 - 8);
  __chkstk_darwin(v197);
  v194 = &v186 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for DispatchTime();
  v201 = *(v200 - 8);
  __chkstk_darwin(v200);
  v192 = &v186 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v199 = &v186 - v10;
  v11 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v11 - 8);
  v202 = &v186 - v12;
  v207 = type metadata accessor for UUID();
  v13 = *(v207 - 8);
  __chkstk_darwin(v207);
  v15 = &v186 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v203 = &v186 - v17;
  v191 = v18;
  __chkstk_darwin(v19);
  v21 = &v186 - v20;
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = (&v186 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v26 = qword_10051B7F0;
  *v25 = qword_10051B7F0;
  (*(v23 + 104))(v25, enum case for DispatchPredicate.onQueue(_:), v22);
  v193 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  (*(v23 + 8))(v25, v22);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  if (!*&v3[OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager])
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Not running", v36, 2u);
LABEL_27:
    }

LABEL_28:

    return;
  }

  v187 = v5;
  v190 = v15;
  v188 = v21;
  v208 = v13;
  v27 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
  swift_beginAccess();
  v206 = v3;
  v28 = *&v3[v27];
  v189 = a3;
  v205 = v28;
  if ((v28 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for DSKBLE.BLEPeripheral();
    sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
    Set.Iterator.init(_cocoa:)();
    v29 = v215;
    v30 = v216;
    v31 = v217;
    v32 = v218;
    v33 = v219;
  }

  else
  {
    v37 = -1 << *(v28 + 32);
    v30 = v28 + 56;
    v31 = ~v37;
    v38 = -v37;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    else
    {
      v39 = -1;
    }

    v33 = v39 & *(v28 + 56);
    v29 = v28;
    swift_bridgeObjectRetain_n();
    v32 = 0;
  }

  v204 = v31;
  v40 = (v31 + 64) >> 6;
  if (v29 < 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  v41 = v32;
  v42 = v33;
  v43 = v32;
  if (!v33)
  {
    while (1)
    {
      v43 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v43 >= v40)
      {
        goto LABEL_25;
      }

      v42 = *(v30 + 8 * v43);
      ++v41;
      if (v42)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

LABEL_18:
  v44 = (v42 - 1) & v42;
  v45 = *(*(v29 + 48) + ((v43 << 9) | (8 * __clz(__rbit64(v42)))));

  if (!v45)
  {
LABEL_25:
    sub_100093854(v29);

    v50 = v209;
    v51 = v211;
    v34 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      aBlock[0] = v55;
      *v53 = 138412546;
      v56 = [v50 UUID];
      *(v53 + 4) = v56;
      *v54 = v56;
      *(v53 + 12) = 2080;
      v57 = [v51 identifier];
      v58 = v190;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v59 = v207;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      (*(v208 + 8))(v58, v59);
      v63 = sub_1002FFA0C(v60, v62, aBlock);

      *(v53 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v34, v52, "Characteristic %@ written for disconnected/unknown peripheral %s", v53, 0x16u);
      sub_100075768(v54, &unk_100503F70, &unk_10040B2E0);

      sub_1000752F4(v55);

      goto LABEL_27;
    }

    goto LABEL_28;
  }

  while (1)
  {
    v47 = v29;
    v48 = sub_10009393C(0, &qword_100502D20, NSObject_ptr);
    v49 = *(v45 + 24);
    v210 = v48;
    v31 = static NSObject.== infix(_:_:)();

    if (v31)
    {
      break;
    }

    v32 = v43;
    v33 = v44;
    v29 = v47;
    if ((v47 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_20:
    v46 = __CocoaSet.Iterator.next()();
    if (v46)
    {
      v214 = v46;
      type metadata accessor for DSKBLE.BLEPeripheral();
      swift_dynamicCast();
      v45 = aBlock[0];
      v43 = v32;
      v44 = v33;
      if (aBlock[0])
      {
        continue;
      }
    }

    goto LABEL_25;
  }

  sub_100093854(v47);

  swift_beginAccess();
  v64 = *(v45 + 64);
  v65 = *(v45 + 72);
  v204 = v45;
  v66 = sub_1000752B0((v45 + 40), v64);
  v186 = &v186;
  v67 = *(v64 - 8);
  v68 = __chkstk_darwin(v66);
  v70 = &v186 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v67 + 16))(v70, v68);
  v71 = (*(v65 + 16))(v64, v65);
  (*(v67 + 8))(v70, v64);
  v72 = *(v71 + 16);
  v73 = v207;
  v74 = v203;
  if (v72)
  {
    v75 = 0;
    v205 = (v208 + 16);
    v76 = (v208 + 8);
    while (v75 < *(v71 + 16))
    {
      (*(v208 + 16))(v74, v71 + ((*(v208 + 80) + 32) & ~*(v208 + 80)) + *(v208 + 72) * v75, v73);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v78 = [objc_opt_self() UUIDWithNSUUID:{isa, v186}];

      v79 = [v209 UUID];
      LOBYTE(isa) = static NSObject.== infix(_:_:)();

      if (isa)
      {

        v81 = v208;
        v82 = v202;
        (*(v208 + 32))(v202, v74, v73);
        v80 = 0;
        goto LABEL_36;
      }

      ++v75;
      (*v76)(v74, v73);
      if (v72 == v75)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_66;
  }

LABEL_34:

  v80 = 1;
  v81 = v208;
  v82 = v202;
LABEL_36:
  (*(v81 + 56))(v82, v80, 1, v73);
  v83 = (*(v81 + 48))(v82, 1, v73);
  v84 = v189;
  if (v83 == 1)
  {
    sub_100075768(v82, &unk_10050BE80, &unk_10040B360);
    v85 = v209;
    v86 = v211;
    v34 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v87))
    {
      v88 = v73;
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      aBlock[0] = v91;
      *v89 = 138412546;
      v92 = [v85 UUID];
      *(v89 + 4) = v92;
      *v90 = v92;
      *(v89 + 12) = 2080;
      v93 = [v86 identifier];
      v94 = v190;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v95 = v88;
      v96 = dispatch thunk of CustomStringConvertible.description.getter();
      v98 = v97;
      (*(v81 + 8))(v94, v95);
      v99 = sub_1002FFA0C(v96, v98, aBlock);

      *(v89 + 14) = v99;
      _os_log_impl(&_mh_execute_header, v34, v87, "Unknown characteristic %@ for %s", v89, 0x16u);
      sub_100075768(v90, &unk_100503F70, &unk_10040B2E0);

      sub_1000752F4(v91);
    }

    goto LABEL_28;
  }

  v100 = *(v81 + 32);
  v100(v188, v82, v73);
  if (!v84)
  {
    *(v204 + 80) = 0;
    v126 = v209;
    v127 = v211;
    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v128, v129))
    {
      v130 = v73;
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      aBlock[0] = v133;
      *v131 = 138412546;
      v134 = [v126 UUID];
      *(v131 + 4) = v134;
      *v132 = v134;
      *(v131 + 12) = 2080;
      v135 = [v127 identifier];
      v136 = v190;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v137 = dispatch thunk of CustomStringConvertible.description.getter();
      v139 = v138;
      v30 = v208;
      (*(v208 + 8))(v136, v130);
      v140 = sub_1002FFA0C(v137, v139, aBlock);

      *(v131 + 14) = v140;
      _os_log_impl(&_mh_execute_header, v128, v129, "Characteristic %@ written for %s", v131, 0x16u);
      sub_100075768(v132, &unk_100503F70, &unk_10040B2E0);

      sub_1000752F4(v133);
    }

    else
    {

      v30 = v208;
    }

    v43 = v188;
    v144 = v204;
    swift_beginAccess();
    sub_100145508(v43, &v213);
    v31 = v144;
    sub_10006A2D0(v213, *(&v213 + 1));
    swift_endAccess();
    if (*(*(v144 + 96) + 16))
    {
      (*(v30 + 8))(v43, v207);

      return;
    }

LABEL_61:
    *(v31 + 96) = _swiftEmptyDictionarySingleton;

    *(v31 + 32) = 5;
    v185 = v207;
    if ((*(v31 + 122) & 1) == 0)
    {
      [*(v31 + 24) openL2CAPChannel:*(v31 + 120)];

      (*(v30 + 8))(v43, v185);
      return;
    }

    goto LABEL_67;
  }

  v205 = v100;
  v101 = OBJC_IVAR____TtC10seserviced6DSKBLE_logger;
  swift_errorRetain();
  v102 = v209;
  v103 = v211;
  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.error.getter();

  v106 = os_log_type_enabled(v104, v105);
  v210 = v102;
  if (v106)
  {
    v107 = swift_slowAlloc();
    v211 = v101;
    v108 = v107;
    v109 = swift_slowAlloc();
    v209 = swift_slowAlloc();
    aBlock[0] = v209;
    *v108 = 138412802;
    v110 = [v102 UUID];
    *(v108 + 4) = v110;
    *v109 = v110;
    *(v108 + 12) = 2080;
    v111 = [v103 identifier];
    v112 = v190;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v113 = v103;
    v114 = v207;
    v115 = dispatch thunk of CustomStringConvertible.description.getter();
    v117 = v116;
    v118 = v114;
    v103 = v113;
    (*(v208 + 8))(v112, v118);
    v119 = sub_1002FFA0C(v115, v117, aBlock);

    *(v108 + 14) = v119;
    *(v108 + 22) = 2112;
    swift_errorRetain();
    v120 = _swift_stdlib_bridgeErrorToNSError();
    *(v108 + 24) = v120;
    v109[1] = v120;
    _os_log_impl(&_mh_execute_header, v104, v105, "Failed to write characteristic %@ for %s error %@", v108, 0x20u);
    sub_100068FC4(&unk_100503F70, &unk_10040B2E0);
    swift_arrayDestroy();

    sub_1000752F4(v209);
  }

  v121 = v204;
  v122 = *(v204 + 80);
  if (v122 > 2)
  {
    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      *v143 = 0;
      _os_log_impl(&_mh_execute_header, v141, v142, "Retries exhausted for writing characteristics", v143, 2u);
    }

    sub_1000EF154(v103);

    (*(v208 + 8))(v188, v207);
  }

  else
  {
    *(v204 + 80) = v122 + 1;

    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 134217984;
      *(v125 + 4) = *(v121 + 80);

      _os_log_impl(&_mh_execute_header, v123, v124, "Retry %ld for writing characteristics", v125, 0xCu);
    }

    else
    {
    }

    swift_beginAccess();
    v145 = *(v121 + 96);
    if (*(v145 + 16) && (v146 = sub_10008C808(v188), (v147 & 1) != 0))
    {
      v148 = *(v145 + 56) + 16 * v146;
      v209 = *v148;
      v149 = v209;
      v210 = v103;
      v150 = *(v148 + 8);
      swift_endAccess();
      sub_100069E2C(v149, v150);
      v151 = v192;
      static DispatchTime.now()();
      + infix(_:_:)();
      v152 = *(v201 + 8);
      v201 += 8;
      v211 = v152;
      (v152)(v151, v200);
      v153 = v208;
      v154 = v190;
      v155 = v207;
      (*(v208 + 16))(v190, v188, v207);
      v156 = (*(v153 + 80) + 24) & ~*(v153 + 80);
      v157 = (v191 + v156 + 7) & 0xFFFFFFFFFFFFFFF8;
      v158 = swift_allocObject();
      v159 = v206;
      *(v158 + 16) = v206;
      v205(v158 + v156, v154, v155);
      v160 = (v158 + v157);
      v161 = v209;
      *v160 = v209;
      v160[1] = v150;
      v162 = v210;
      *(v158 + ((v157 + 23) & 0xFFFFFFFFFFFFFFF8)) = v210;
      aBlock[4] = sub_10011F12C;
      aBlock[5] = v158;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100080830;
      aBlock[3] = &unk_1004C7750;
      v163 = _Block_copy(aBlock);
      v164 = v162;
      sub_100069E2C(v161, v150);
      v165 = v159;
      v166 = v194;
      static DispatchQoS.unspecified.getter();
      *&v213 = _swiftEmptyArrayStorage;
      sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
      sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
      v167 = v196;
      v168 = v187;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v169 = v199;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v163);
      sub_10006A178(v161, v150);

      (*(v198 + 8))(v167, v168);
      (*(v195 + 8))(v166, v197);
      (v211)(v169, v200);
      (*(v153 + 8))(v188, v207);
    }

    else
    {
      swift_endAccess();
      v170 = v210;
      v171 = v103;
      v172 = Logger.logObject.getter();
      v173 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v172, v173))
      {
        v174 = swift_slowAlloc();
        v175 = swift_slowAlloc();
        v211 = swift_slowAlloc();
        aBlock[0] = v211;
        *v174 = 138412546;
        v176 = [v170 UUID];
        *(v174 + 4) = v176;
        *v175 = v176;
        *(v174 + 12) = 2080;
        v177 = [v171 identifier];
        v178 = v190;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v179 = v207;
        v180 = dispatch thunk of CustomStringConvertible.description.getter();
        v182 = v181;
        v183 = v208;
        (*(v208 + 8))(v178, v179);
        v184 = sub_1002FFA0C(v180, v182, aBlock);

        *(v174 + 14) = v184;
        _os_log_impl(&_mh_execute_header, v172, v173, "Missing value for %@ for %s", v174, 0x16u);
        sub_100075768(v175, &unk_100503F70, &unk_10040B2E0);

        sub_1000752F4(v211);
      }

      else
      {

        v183 = v208;
        v179 = v207;
      }

      sub_1000EF154(v171);

      (*(v183 + 8))(v188, v179);
    }
  }
}

uint64_t sub_100101484(uint64_t a1, NSObject *a2, uint64_t a3, unint64_t a4, void *a5)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a5 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000F4EB4(a2, a3, a4, v13);
  return (*(v10 + 8))(v13, v9);
}

void sub_1001015CC(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(id, id, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6(v10, v11, a5);
}

void sub_100101668(void *a1, void *a2, int64_t a3)
{
  v71 = a2;
  v75 = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v13 = qword_10051B7F0;
    *v12 = qword_10051B7F0;
    (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
    v14 = v13;
    LOBYTE(v13) = _dispatchPreconditionTest(_:)();
    (*(v10 + 8))(v12, v9);
    if ((v13 & 1) == 0)
    {
      __break(1u);
      goto LABEL_45;
    }

    if (!*(v3 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
    {
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Not running", v21, 2u);
      }

      return;
    }

    v66 = v14;
    v68 = v8;
    v69 = v6;
    v70 = v5;
    v15 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v74 = v3;
    v16 = *(v3 + v15);
    v67 = a3;
    v73 = v16;
    if ((v16 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
      Set.Iterator.init(_cocoa:)();
      v10 = v78;
      v17 = v79;
      v3 = v80;
      v18 = v81;
      v12 = v82;
    }

    else
    {
      v22 = -1 << *(v16 + 32);
      v17 = v16 + 56;
      v3 = ~v22;
      v23 = -v22;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v12 = (v24 & *(v16 + 56));
      v10 = v16;
      swift_bridgeObjectRetain_n();
      v18 = 0;
    }

    v72 = v3;
    a3 = (v3 + 64) >> 6;
    if (v10 < 0)
    {
      while (1)
      {
        v27 = __CocoaSet.Iterator.next()();
        if (!v27)
        {
          goto LABEL_25;
        }

        v76 = v27;
        type metadata accessor for DSKBLE.BLEPeripheral();
        swift_dynamicCast();
        v5 = v77;
        v9 = v18;
        v8 = v12;
        if (!v77)
        {
          goto LABEL_25;
        }

LABEL_22:
        sub_10009393C(0, &qword_100502D20, NSObject_ptr);
        v6 = *(v5 + 24);
        v3 = static NSObject.== infix(_:_:)();

        if (v3)
        {
          break;
        }

        v18 = v9;
        v12 = v8;
        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_14;
        }
      }

      sub_100093854(v10);

      if (v67)
      {
        swift_errorRetain();
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v77 = v43;
          *v42 = 136315138;
          swift_getErrorValue();
          v44 = Error.localizedDescription.getter();
          v46 = sub_1002FFA0C(v44, v45, &v77);

          *(v42 + 4) = v46;
          _os_log_impl(&_mh_execute_header, v40, v41, "Failed to open channel error %s", v42, 0xCu);
          sub_1000752F4(v43);
        }

        sub_1000EF154(v75);

LABEL_32:

        return;
      }

      v47 = v74;
      v48 = v71;
      if (!v71)
      {
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&_mh_execute_header, v62, v63, "Opened channel is null", v64, 2u);
        }

        sub_1000EF154(v75);
        goto LABEL_32;
      }

      *(v5 + 32) = 6;
      v49 = *(v5 + 128);
      *(v5 + 128) = v48;
      v50 = v48;

      v51 = [v50 inputStream];
      if (v51)
      {
        v52 = v51;
        [v51 setDelegate:v47];

        v53 = [v50 outputStream];
        v54 = v66;
        if (v53)
        {
          v55 = v53;
          [v53 setDelegate:v47];

          v56 = [v50 inputStream];
          CFReadStreamSetDispatchQueue(v56, v54);

          v57 = [v50 outputStream];
          CFWriteStreamSetDispatchQueue(v57, v54);

          v58 = [v50 inputStream];
          if (v58)
          {
            v59 = v58;
            [v58 open];

            v60 = [v50 outputStream];
            if (v60)
            {
              v61 = v60;
              [v60 open];

              return;
            }

            goto LABEL_48;
          }

LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          return;
        }

LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_14:
    v25 = v18;
    v26 = v12;
    v9 = v18;
    if (v12)
    {
      break;
    }

    while (1)
    {
      v9 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v9 >= a3)
      {
        goto LABEL_25;
      }

      v26 = *(v17 + 8 * v9);
      ++v25;
      if (v26)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_43:
    swift_once();
  }

LABEL_18:
  v8 = ((v26 - 1) & v26);
  v5 = *(*(v10 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v26)))));

  if (v5)
  {
    goto LABEL_22;
  }

LABEL_25:
  sub_100093854(v10);

  v28 = v75;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v77 = v32;
    *v31 = 136315138;
    v33 = [v28 identifier];
    v34 = v68;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v35 = v70;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    (v69)[1](v34, v35);
    v39 = sub_1002FFA0C(v36, v38, &v77);

    *(v31 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v29, v30, "Channel open for disconnected/unknown peripheral %s", v31, 0xCu);
    sub_1000752F4(v32);
  }

  sub_1000EF154(v28);
}

void sub_100102044(void *a1, uint64_t a2)
{
  v125 = a2;
  v129 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v124 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for UUID();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v15 = qword_10051B7F0;
  *v14 = qword_10051B7F0;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v123 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if (!*(v2 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v23, v24))
    {
LABEL_42:

      return;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Not running";
LABEL_41:
    _os_log_impl(&_mh_execute_header, v23, v24, v26, v25, 2u);

    goto LABEL_42;
  }

  v16 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
  swift_beginAccess();
  v128 = v2;
  v17 = *(v2 + v16);
  v119 = v3;
  v118 = v7;
  v127 = v17;
  if ((v17 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for DSKBLE.BLEPeripheral();
    sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
    Set.Iterator.init(_cocoa:)();
    v19 = v139;
    v18 = v140;
    v20 = v141;
    v21 = v142;
    v22 = v143;
  }

  else
  {
    v27 = -1 << *(v17 + 32);
    v18 = (v17 + 56);
    v20 = ~v27;
    v28 = -v27;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v22 = v29 & *(v17 + 56);
    v19 = v17;
    swift_bridgeObjectRetain_n();
    v21 = 0;
  }

  v115 = v8;
  v116 = v6;
  v117 = v4;
  v126 = v20;
  v30 = (v20 + 64) >> 6;
  while (1)
  {
    v31 = v22;
    if (v19 < 0)
    {
      v35 = __CocoaSet.Iterator.next()();
      if (v35)
      {
        v138 = v35;
        type metadata accessor for DSKBLE.BLEPeripheral();
        swift_dynamicCast();
        v34 = aBlock;
        if (aBlock)
        {
          goto LABEL_24;
        }
      }

LABEL_39:
      sub_100093854(v19);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v23, v24))
      {
        goto LABEL_42;
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "Received stream event for disconnected/unknown peripheral";
      goto LABEL_41;
    }

    v32 = v21;
    v33 = v22;
    if (!v22)
    {
      while (1)
      {
        v21 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v21 >= v30)
        {
          goto LABEL_39;
        }

        v33 = v18[v21];
        ++v32;
        if (v33)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

LABEL_20:
    v22 = (v33 - 1) & v33;
    v34 = *(*(v19 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v33)))));

    if (!v34)
    {
      goto LABEL_39;
    }

LABEL_24:
    v36 = *(v34 + 128);
    if (v36)
    {
      v37 = [v36 inputStream];
      v130 = v34;
      if (v37)
      {
        v6 = v37;
        sub_10009393C(0, &qword_100504030, NSStream_ptr);
        v38 = v129;
        v39 = static NSObject.== infix(_:_:)();

        v34 = v130;
        if (v39)
        {
          break;
        }
      }

      v40 = *(v34 + 128);
      if (v40)
      {
        v41 = [v40 outputStream];
        if (v41)
        {
          v6 = v41;
          sub_10009393C(0, &qword_100504030, NSStream_ptr);
          v42 = v129;
          v43 = static NSObject.== infix(_:_:)();

          v34 = v130;
          if (v43)
          {
            break;
          }
        }
      }
    }
  }

  sub_100093854(v19);

  LOBYTE(v22) = v125;
  if ((v125 & 8) != 0)
  {
    v53 = [v129 streamError];
    if (v53)
    {
      v54 = v53;
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *v57 = 138412290;
        v59 = v54;
        v60 = _swift_stdlib_bridgeErrorToNSError();
        *(v57 + 4) = v60;
        *v58 = v60;
        _os_log_impl(&_mh_execute_header, v55, v56, "Stream error %@", v57, 0xCu);
        sub_100075768(v58, &unk_100503F70, &unk_10040B2E0);

        v55 = v59;
      }

      else
      {
      }

      v34 = v130;
      goto LABEL_53;
    }

    v55 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      v63 = "Stream unknown error";
      goto LABEL_50;
    }

LABEL_53:

    v23 = *(v34 + 24);
    sub_1000EF154(v23);
LABEL_54:

    goto LABEL_42;
  }

  v21 = v129;
  if ((v125 & 0x10) != 0)
  {
    v55 = Logger.logObject.getter();
    v61 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v55, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      v63 = "Stream ended";
LABEL_50:
      _os_log_impl(&_mh_execute_header, v55, v61, v63, v62, 2u);
      v34 = v130;

      goto LABEL_53;
    }

    goto LABEL_53;
  }

  v31 = v119;
  v6 = v118;
  if ((v125 & 1) == 0)
  {
    goto LABEL_70;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass() || (v44 = *(v130 + 128)) == 0)
  {
LABEL_57:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v64 = *(v130 + 128);
      if (v64)
      {
        v65 = v21;
        v66 = [v64 outputStream];
        if (v66)
        {
          v67 = v66;
          sub_10009393C(0, &qword_100504038, NSOutputStream_ptr);
          v68 = v65;
          v69 = static NSObject.== infix(_:_:)();

          if (v69)
          {
            v49 = Logger.logObject.getter();
            v50 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              *v51 = 0;
              v52 = "Output stream is now open";
LABEL_63:
              _os_log_impl(&_mh_execute_header, v49, v50, v52, v51, 2u);
            }

            goto LABEL_64;
          }
        }

        goto LABEL_65;
      }
    }

    goto LABEL_66;
  }

  v18 = v21;
  v45 = [v44 inputStream];
  if (!v45 || (v46 = v45, sub_10009393C(0, &unk_100504040, NSInputStream_ptr), v47 = v18, v48 = static NSObject.== infix(_:_:)(), v46, v47, (v48 & 1) == 0))
  {
LABEL_56:

    goto LABEL_57;
  }

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = "Input stream is now open";
    goto LABEL_63;
  }

LABEL_64:

LABEL_65:
LABEL_66:
  v34 = v130;
  v70 = *(v130 + 32);
  if (v70 == 7)
  {
    *(v130 + 32) = 8;
    v71 = *(v34 + 16);

    v72 = v120;
    UUID.init()();
    v73 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
    swift_beginAccess();
    (*(v121 + 40))(v71 + v73, v72, v122);
    swift_endAccess();
    *(v71 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) = 1;
    v74 = swift_allocObject();
    *(v74 + 16) = v130;
    *(v74 + 24) = v71;
    v136 = sub_10011F030;
    v137 = v74;
    aBlock = _NSConcreteStackBlock;
    v133 = 1107296256;
    v134 = sub_100080830;
    v135 = &unk_1004C7700;
    v75 = _Block_copy(&aBlock);

    v76 = v124;
    static DispatchQoS.unspecified.getter();
    v138 = _swiftEmptyArrayStorage;
    sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
    sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
    v77 = v116;
    LOBYTE(v22) = v125;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    v78 = v75;
    v34 = v130;
    _Block_release(v78);

    (*(v117 + 8))(v77, v31);
    v79 = v76;
    v6 = v118;
    (*(v115 + 8))(v79, v118);
  }

  else if (v70 == 6)
  {
    *(v130 + 32) = 7;
  }

LABEL_70:
  if ((v22 & 4) != 0)
  {
    sub_1000F22EC(v34);
  }

  if ((v22 & 2) == 0)
  {

    return;
  }

  objc_opt_self();
  v80 = swift_dynamicCastObjCClass();
  if (!v80)
  {
    v23 = Logger.logObject.getter();
    v101 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&_mh_execute_header, v23, v101, "Unexpected stream", v102, 2u);
    }

    goto LABEL_54;
  }

  v81 = v80;
  swift_beginAccess();
  v82 = *(v34 + 136);
  v83 = v34;
  v84 = *(v82 + 2);
  swift_beginAccess();
  v85 = v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v83 + 136) = v82;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v82 = sub_10012F1C4(0, v84, 0, v82);
  }

  v87 = v130;
  *(v130 + 136) = v82;

  v88 = [v81 read:v82 + 32 maxLength:v84];
  swift_endAccess();

  if (v88 < 1)
  {
  }

  else
  {
    v129 = v85;
    v89 = v6;
    v90 = sub_1001E0BBC((*(v87 + 136) + 32), v88);
    v92 = v91;
    sub_100069E2C(v90, v91);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.info.getter();
    sub_10006A178(v90, v92);
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      aBlock = v128;
      *v95 = 136315138;
      v131 = sub_100288788(v90, v92);
      v96 = v89;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v97 = BidirectionalCollection<>.joined(separator:)();
      v99 = v98;

      v100 = sub_1002FFA0C(v97, v99, &aBlock);

      *(v95 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v93, v94, ">>> Received %s", v95, 0xCu);
      sub_1000752F4(v128);
    }

    else
    {

      v96 = v89;
    }

    v103 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v105 = v130;
    v106 = v121;
    v107 = v120;
    v108 = v122;
    (*(v121 + 16))(v120, *(v130 + 16) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v122);
    v109 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v106 + 8))(v107, v108);
    [v103 bleLogMessageReceived:isa peerUUID:v109];

    v110 = swift_allocObject();
    v110[2] = v105;
    v110[3] = v90;
    v110[4] = v92;
    v136 = sub_10011EFD4;
    v137 = v110;
    aBlock = _NSConcreteStackBlock;
    v133 = 1107296256;
    v134 = sub_100080830;
    v135 = &unk_1004C76B0;
    v111 = _Block_copy(&aBlock);

    sub_100069E2C(v90, v92);
    v112 = v124;
    static DispatchQoS.unspecified.getter();
    v131 = _swiftEmptyArrayStorage;
    sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
    sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
    v113 = v116;
    v114 = v119;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v111);

    sub_10006A178(v90, v92);
    (*(v117 + 8))(v113, v114);
    (*(v115 + 8))(v112, v96);
  }
}

uint64_t sub_100103398(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1[8];
  v5 = a1[9];
  v6 = sub_1000752B0(a1 + 5, v4);
  v7 = *(v4 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = (*(v5 + 88))(v4, v5);
  (*(v7 + 8))(v10, v4);
  v11(0, a2);
}

uint64_t sub_1001034DC(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = a1[8];
  v7 = a1[9];
  v8 = sub_1000752B0(a1 + 5, v6);
  v9 = *(v6 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v10);
  v13 = (*(v7 + 96))(v6, v7);
  (*(v9 + 8))(v12, v6);
  v14 = a1[2];

  v13(a2, a3, v14);
}

void sub_1001036EC(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v13 = *(v3 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
    if (v13)
    {
      v14 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
      v15 = swift_beginAccess();
      v16 = *(v3 + v14);
      __chkstk_darwin(v15);
      *(&v22 - 2) = a1;

      v17 = v13;
      v18 = sub_1000E3ABC(a2, (&v22 - 4), v16);

      if (v18)
      {
        [v17 setDesiredConnectionLatency:a3 forPeripheral:v18[3]];
      }

      else
      {
      }
    }

    else
    {
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Not running", v21, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100103978(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, *(*a1 + 16) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v3, v5);
  v8 = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v7, v3);
  return v8 & 1;
}

id sub_100103AB0(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  result = [objc_allocWithZone(a2(0)) init];
  *a3 = result;
  return result;
}

id sub_100103AF0()
{
  ObjectType = swift_getObjectType();
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *&v0[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingRequests] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_unpairingRequests] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentPairingRequest] = 0;
  *&v0[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentUnpairingRequest] = 0;
  v0[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_isCentralManagerPoweredOn] = 0;
  *&v0[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingAgent] = 0;
  v0[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_state] = 0;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v9, "init");
  v3 = qword_100501D90;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v8[4] = sub_10011EF00;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100193978;
  v8[3] = &unk_1004C7660;
  v6 = _Block_copy(v8);

  os_state_add_handler();
  _Block_release(v6);

  return v4;
}

void *sub_100103CBC()
{
  v1 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingRequests;
  swift_beginAccess();
  v72 = v0;
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_42;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v4 = _swiftEmptyArrayStorage;
    v5 = &type metadata for String;
    if (!v3)
    {
      break;
    }

    *&v76[0] = _swiftEmptyArrayStorage;
    v6 = v2;

    result = sub_10019F4C4(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
LABEL_45:
      __break(1u);
      return result;
    }

    v4 = *&v76[0];
    sub_100068FC4(&unk_100504000, &unk_10040B350);
    v8 = v6;
    v9 = 0;
    v73 = v3;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v8 + 8 * v9 + 32);
      }

      v79[0] = 0xD000000000000010;
      v79[1] = 0x8000000100463370;
      v79[2] = UUID.uuidString.getter();
      v79[3] = v11;
      v12 = v5;
      v79[5] = v5;
      v80[0] = 1936154996;
      v80[1] = 0xE400000000000000;
      v13 = *(v10 + 40);
      v80[5] = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      v80[2] = v13;
      v14 = static _DictionaryStorage.allocate(capacity:)();

      sub_10011EF24(v79, &v77);
      v15 = v77;
      v2 = sub_10008C908(v77, *(&v77 + 1));
      if (v16)
      {
        break;
      }

      *(v14 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v2;
      *(v14[6] + 16 * v2) = v15;
      v2 = sub_100075D50(v78, (v14[7] + 32 * v2));
      v17 = v14[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_39;
      }

      v14[2] = v19;
      sub_10011EF24(v80, &v77);
      v20 = v77;
      v2 = sub_10008C908(v77, *(&v77 + 1));
      if (v21)
      {
        break;
      }

      *(v14 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v2;
      *(v14[6] + 16 * v2) = v20;
      v2 = sub_100075D50(v78, (v14[7] + 32 * v2));
      v22 = v14[2];
      v18 = __OFADD__(v22, 1);
      v23 = v22 + 1;
      if (v18)
      {
        goto LABEL_39;
      }

      v14[2] = v23;

      sub_100068FC4(&qword_100507D30, &unk_100409C90);
      swift_arrayDestroy();

      *&v76[0] = v4;
      v25 = v4[2];
      v24 = v4[3];
      if (v25 >= v24 >> 1)
      {
        sub_10019F4C4((v24 > 1), v25 + 1, 1);
        v4 = *&v76[0];
      }

      ++v9;
      v4[2] = v25 + 1;
      v4[v25 + 4] = v14;
      v8 = v6;
      v5 = v12;
      if (v73 == v9)
      {

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    v70 = v2;
    v3 = _CocoaArrayWrapper.endIndex.getter();
    v2 = v70;
  }

LABEL_17:
  *(&v78[0] + 1) = sub_100068FC4(&unk_100503EC0, &unk_100417130);
  *&v77 = v4;
  sub_100075D50(&v77, v76);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v76, 0x52676E6972696170, 0xEF73747365757165, isUniquelyReferenced_nonNull_native);
  v27 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_unpairingRequests;
  swift_beginAccess();
  v28 = *(v72 + v27);
  if (v28 >> 62)
  {
    v71 = *(v72 + v27);
    v29 = _CocoaArrayWrapper.endIndex.getter();
    v28 = v71;
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = 0xEE00726569666974;
  v31 = _swiftEmptyArrayStorage;
  if (v29)
  {
    *&v77 = _swiftEmptyArrayStorage;
    v32 = v28;

    result = sub_10019F464(0, v29 & ~(v29 >> 63), 0);
    if (v29 < 0)
    {
      goto LABEL_45;
    }

    v31 = v77;
    sub_100068FC4(&qword_100502C10, &unk_100409CD0);
    v33 = 0;
    v75 = v32 & 0xC000000000000001;
    v74 = v29;
    while (1)
    {
      if (v75)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v34 = UUID.uuidString.getter();
      v36 = v35;
      v37 = static _DictionaryStorage.allocate(capacity:)();

      v38 = sub_10008C908(0x6E65644972656570, v30);
      v40 = v39;

      if (v40)
      {
        goto LABEL_40;
      }

      v37[(v38 >> 6) + 8] |= 1 << v38;
      v41 = (v37[6] + 16 * v38);
      *v41 = 0x6E65644972656570;
      v41[1] = v30;
      v42 = (v37[7] + 16 * v38);
      *v42 = v34;
      v42[1] = v36;

      v43 = v37[2];
      v18 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v18)
      {
        goto LABEL_41;
      }

      v45 = v30;
      v37[2] = v44;
      *&v77 = v31;
      v47 = v31[2];
      v46 = v31[3];
      if (v47 >= v46 >> 1)
      {
        sub_10019F464((v46 > 1), v47 + 1, 1);
        v31 = v77;
      }

      ++v33;
      v31[2] = v47 + 1;
      v31[v47 + 4] = v37;
      v30 = v45;
      if (v74 == v33)
      {

        v5 = &type metadata for String;
        break;
      }
    }
  }

  *(&v78[0] + 1) = sub_100068FC4(&unk_100504010, &unk_100409CB0);
  *&v77 = v31;
  sub_100075D50(&v77, v76);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v76, 0xD000000000000011, 0x8000000100463090, v48);
  v49 = *(v72 + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentPairingRequest);
  if (v49)
  {
    sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_100409900;
    *(v50 + 32) = 0xD000000000000010;
    *(v50 + 40) = 0x8000000100463370;

    *(v50 + 48) = UUID.uuidString.getter();
    *(v50 + 56) = v51;
    *(v50 + 72) = v5;
    *(v50 + 80) = 1936154996;
    *(v50 + 88) = 0xE400000000000000;
    v52 = *(v49 + 40);
    *(v50 + 120) = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    *(v50 + 96) = v52;

    v53 = sub_10008FFDC(v50);
    swift_setDeallocating();
    sub_100068FC4(&qword_100507D30, &unk_100409C90);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(&v78[0] + 1) = sub_100068FC4(&qword_100505FD0, &qword_10040B550);
    *&v77 = v53;
    sub_100075D50(&v77, v76);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    sub_100315178(v76, 0xD000000000000015, 0x80000001004630B0, v54);
  }

  else
  {
    *(&v78[0] + 1) = v5;
    *&v77 = 1701736302;
    *(&v77 + 1) = 0xE400000000000000;
    sub_100075D50(&v77, v76);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    sub_100315178(v76, 0xD000000000000015, 0x80000001004630B0, v55);
  }

  if (*(v72 + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentUnpairingRequest))
  {
    sub_100068FC4(&unk_100507CD0, &unk_100414C50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004098F0;
    *(inited + 32) = 0x6E65644972656570;
    *(inited + 40) = v30;

    *(inited + 48) = UUID.uuidString.getter();
    *(inited + 56) = v57;
    v58 = sub_1000910F0(inited);
    swift_setDeallocating();
    sub_100075768(inited + 32, &unk_100504020, &qword_100409CC0);
    *(&v78[0] + 1) = sub_100068FC4(&qword_100502600, &unk_100417140);
    *&v77 = v58;
    sub_100075D50(&v77, v76);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    sub_100315178(v76, 0xD000000000000017, 0x80000001004630D0, v59);
  }

  else
  {
    *(&v78[0] + 1) = v5;
    *&v77 = 1701736302;
    *(&v77 + 1) = 0xE400000000000000;
    sub_100075D50(&v77, v76);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    sub_100315178(v76, 0xD000000000000017, 0x80000001004630D0, v60);
  }

  v61 = *(v72 + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_isCentralManagerPoweredOn);
  *(&v78[0] + 1) = &type metadata for Bool;
  LOBYTE(v77) = v61;
  sub_100075D50(&v77, v76);
  v62 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v76, 0xD000000000000019, 0x80000001004630F0, v62);
  v63 = *(v72 + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingAgent) != 0;
  *(&v78[0] + 1) = &type metadata for Bool;
  LOBYTE(v77) = v63;
  sub_100075D50(&v77, v76);
  v64 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v76, 0x41676E6972696170, 0xEC000000746E6567, v64);
  LOBYTE(v77) = *(v72 + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_state);
  v65 = String.init<A>(describing:)();
  *(&v78[0] + 1) = v5;
  *&v77 = v65;
  *(&v77 + 1) = v66;
  sub_100075D50(&v77, v76);
  v67 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v76, 0x6574617473, 0xE500000000000000, v67);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v69 = sub_100015DA0("dskblepairing.state", isa);

  return v69;
}

void sub_1001047D0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v208 = *(v2 - 8);
  __chkstk_darwin(v2);
  v204 = (&v187 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for DispatchQoS();
  v207 = *(v4 - 8);
  __chkstk_darwin(v4);
  v205 = &v187 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v203 = &v187 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v187 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if (v15)
  {
    v206 = v4;
    if (qword_100501960 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v16 = qword_10051B288;
  v17 = *(qword_10051B288 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
  if (!v17)
  {
    return;
  }

  v201 = v14;
  v200 = v2;
  v18 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_logger;
  v19 = v1;
  v20 = v17;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v202 = v7;
    v199 = v6;
    v23 = v19;
    v24 = v18;
    v25 = v20;
    v26 = swift_slowAlloc();
    *v26 = 134218240;
    v27 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingRequests;
    swift_beginAccess();
    v28 = *(&v23->isa + v27);
    if (v28 >> 62)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v29;
    *(v26 + 12) = 2048;
    v30 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_unpairingRequests;
    swift_beginAccess();
    v31 = *(&v23->isa + v30);
    if (v31 >> 62)
    {
      v32 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v25;
    *(v26 + 14) = v32;

    _os_log_impl(&_mh_execute_header, v21, v22, "Trying to process a pending queued request (pairing %ld unpairing %ld)", v26, 0x16u);

    v18 = v24;
    v19 = v23;
    v6 = v199;
    v7 = v202;
  }

  else
  {

    v21 = v19;
  }

  if (*(&v19->isa + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_isCentralManagerPoweredOn) != 1)
  {
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_22;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "Central manager is not running";
    goto LABEL_21;
  }

  if (*(&v19->isa + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_state) || *(&v19->isa + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentPairingRequest) || *(&v19->isa + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentUnpairingRequest))
  {
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_22;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "A request is in progress";
    goto LABEL_21;
  }

  v197 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentPairingRequest;
  v193 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentUnpairingRequest;
  v194 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_state;
  v37 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_unpairingRequests;
  swift_beginAccess();
  v38 = *(&v19->isa + v37);
  if (v38 >> 62)
  {
    goto LABEL_55;
  }

  if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_56;
  }

  while (2)
  {
    v195 = v18;
    v191 = v37;
    if ((v38 & 0xC000000000000001) != 0)
    {
LABEL_95:

      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_106:
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_58;
        }

        goto LABEL_107;
      }

      v18 = *(v38 + 32);
    }

    sub_100068FC4(&qword_100503F10, &qword_10040A008);
    v39 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1004098F0;
    v16 = v7 + 16;
    v41 = *(v7 + 16);
    v188 = OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_peerIdentifier;
    v197 = v18;
    v189 = v41;
    v41((v40 + v39), &v18[OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_peerIdentifier], v6);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v43 = [v20 retrievePeripheralsWithIdentifiers:isa];

    sub_10009393C(0, &qword_100503F18, CBPeripheral_ptr);
    v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v196 = v20;
    v190 = v7 + 16;
    v192 = v19;
    if (v38 >> 62)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
      if (v19)
      {
        goto LABEL_32;
      }

LABEL_97:

      v150 = v197;

      v151 = Logger.logObject.getter();
      v152 = static os_log_type_t.info.getter();

      v153 = os_log_type_enabled(v151, v152);
      v154 = v192;
      if (v153)
      {
        v155 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        aBlock = v156;
        *v155 = 136315138;
        v157 = v150 + v188;
        v158 = v203;
        v189(v203, v157, v6);
        sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v159 = dispatch thunk of CustomStringConvertible.description.getter();
        v161 = v160;
        (*(v7 + 8))(v158, v6);
        v162 = sub_1002FFA0C(v159, v161, &aBlock);

        *(v155 + 4) = v162;
        _os_log_impl(&_mh_execute_header, v151, v152, "No paired peripheral found for %s", v155, 0xCu);
        sub_1000752F4(v156);
      }

      v163 = v207;
      v164 = v191;
      swift_beginAccess();
      v165 = *(&v154->isa + v164);
      v166 = v165 >> 62;
      v167 = v208;
      if (v165 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_122:
          __break(1u);
          return;
        }

        v170 = _CocoaArrayWrapper.endIndex.getter();
        v167 = v208;
        v163 = v207;
        if (v170)
        {
LABEL_101:
          if ((v165 & 0xC000000000000001) == 0)
          {
            v168 = v165 & 0xFFFFFFFFFFFFFF8;
            if (!*((v165 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_121:
              __break(1u);
              goto LABEL_122;
            }

            if (!v166)
            {
              goto LABEL_104;
            }

            goto LABEL_114;
          }

LABEL_113:
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          swift_unknownObjectRelease();
          v168 = v165 & 0xFFFFFFFFFFFFFF8;
          if (!v166)
          {
LABEL_104:
            v169 = *(v168 + 16);
            goto LABEL_115;
          }

LABEL_114:
          v169 = _CocoaArrayWrapper.endIndex.getter();
LABEL_115:
          v171 = v197;
          if (v169)
          {
            sub_1001A16AC(0, 1);
            swift_endAccess();
            v172 = v171 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_onUnpairingCompleted;
            v173 = *(v171 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_onUnpairingCompleted);
            v174 = &unk_100408000;
            v175 = v200;
            v176 = v204;
            v177 = v205;
            if (v173)
            {
              v178 = *(v172 + 8);
              v179 = swift_allocObject();
              v179[2] = v173;
              v179[3] = v178;
              v179[4] = v197;
              v214 = sub_10011F738;
              v215 = v179;
              aBlock = _NSConcreteStackBlock;
              v211 = 1107296256;
              v212 = sub_100080830;
              v213 = &unk_1004C7278;
              v203 = _Block_copy(&aBlock);
              v202 = v178;
              sub_100113B54(v173, v178);

              sub_100113B54(v173, v178);
              static DispatchQoS.unspecified.getter();
              v216 = _swiftEmptyArrayStorage;
              sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
              sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
              v180 = v207;
              sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v181 = v154;
              v182 = v203;
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              v174 = &unk_100408000;
              v183 = v182;
              v154 = v181;
              v163 = v180;
              _Block_release(v183);
              v167 = v208;
              sub_1000B2A4C(v173, v202);
              (v167)[1](v176, v175);
              (v163[1])(v177, v206);
            }

            v184 = swift_allocObject();
            *(v184 + 16) = v154;
            v214 = sub_10011F748;
            v215 = v184;
            aBlock = _NSConcreteStackBlock;
            v211 = v174[386];
            v212 = sub_100080830;
            v213 = &unk_1004C7228;
            v185 = _Block_copy(&aBlock);
            v186 = v154;
            static DispatchQoS.unspecified.getter();
            v216 = _swiftEmptyArrayStorage;
            sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
            sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v185);

            (v167)[1](v176, v175);
            (v163[1])(v177, v206);
            goto LABEL_119;
          }

          goto LABEL_121;
        }

        __break(1u);
      }

      else if (*((v165 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_101;
      }

      __break(1u);
      goto LABEL_113;
    }

    v19 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_97;
    }

LABEL_32:
    v37 = 0;
    v44 = v197 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_tag;
    v199 = v38 & 0xC000000000000001;
    v198 = v38 & 0xFFFFFFFFFFFFFF8;
    v202 = v7;
    while (v199)
    {
      v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v20 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
LABEL_42:
        __break(1u);
LABEL_43:
        v208 = v18;

        v20 = v196;
        v49 = [v196 sharedPairingAgent];
        if (v49)
        {
          v50 = v49;
          v51 = v192;
          v52 = v197;
          *(&v192->isa + v193) = v197;

          *(&v51->isa + v194) = 3;
          v53 = *(&v51->isa + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingAgent);
          *(&v51->isa + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingAgent) = v50;
          v54 = v50;

          [(objc_class *)v54 setDelegate:v51];

          v55 = Logger.logObject.getter();
          v56 = v52;
          v57 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v55, v57))
          {
            v58 = swift_slowAlloc();
            v207 = v54;
            v59 = v58;
            v60 = swift_slowAlloc();
            aBlock = v60;
            *v59 = 136315138;
            v61 = v203;
            v189(v203, v56 + v188, v6);
            sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v62 = v20;
            v63 = dispatch thunk of CustomStringConvertible.description.getter();
            v65 = v64;
            (*(v202 + 8))(v61, v6);
            v66 = v63;
            v20 = v62;
            v67 = sub_1002FFA0C(v66, v65, &aBlock);

            *(v59 + 4) = v67;
            _os_log_impl(&_mh_execute_header, v55, v57, "Requesting unpairing for peripheral %s", v59, 0xCu);
            sub_1000752F4(v60);

            v54 = v207;
          }

          v68 = v208;
          [(objc_class *)v54 unpairPeer:v208];

          return;
        }

        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&_mh_execute_header, v69, v70, "Failed to retrieve shared pairing agent", v71, 2u);
        }

        goto LABEL_23;
      }

LABEL_36:
      v16 = v38;
      v18 = v45;
      if (!*(v44 + 8))
      {
        goto LABEL_43;
      }

      v46 = v44;
      v47 = String._bridgeToObjectiveC()();
      v48 = [v18 hasTag:v47];

      if (v48)
      {
        goto LABEL_43;
      }

      v44 = v46;

      ++v37;
      v38 = v16;
      v7 = v202;
      if (v20 == v19)
      {
        goto LABEL_97;
      }
    }

    if (v37 < *(v198 + 16))
    {
      v45 = *(v38 + 8 * v37 + 32);
      v20 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        goto LABEL_42;
      }

      goto LABEL_36;
    }

    __break(1u);
LABEL_55:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      continue;
    }

    break;
  }

LABEL_56:
  v72 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingRequests;
  swift_beginAccess();
  v73 = *(&v19->isa + v72);
  if (v73 >> 62)
  {
    goto LABEL_106;
  }

  if (!*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_107:
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v33, v34))
    {
LABEL_22:

LABEL_23:
      return;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "No requests pending";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v33, v34, v36, v35, 2u);

    goto LABEL_22;
  }

LABEL_58:
  v195 = v18;
  swift_beginAccess();
  sub_1000E39E4();
  v202 = v74;
  swift_endAccess();
  v75 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
  swift_beginAccess();
  v76 = *(v16 + v75);
  v196 = v20;
  v193 = v76;
  if ((v76 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for DSKBLE.BLEPeripheral();
    sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
    Set.Iterator.init(_cocoa:)();
    v6 = v216;
    v77 = v217;
    v79 = v218;
    v78 = v219;
    v7 = v220;
  }

  else
  {
    v80 = -1 << *(v76 + 32);
    v77 = v76 + 56;
    v79 = ~v80;
    v81 = -v80;
    if (v81 < 64)
    {
      v82 = ~(-1 << v81);
    }

    else
    {
      v82 = -1;
    }

    v7 = v82 & *(v76 + 56);
    v6 = v76;
    swift_bridgeObjectRetain_n();
    v78 = 0;
  }

  v191 = v79;
  v83 = (v79 + 64) >> 6;
  v84 = v78;
  if (v6 < 0)
  {
LABEL_65:
    v85 = __CocoaSet.Iterator.next()();
    if (v85)
    {
      v209 = v85;
      type metadata accessor for DSKBLE.BLEPeripheral();
      swift_dynamicCast();
      v86 = aBlock;
      v20 = v84;
      v87 = v7;
      goto LABEL_72;
    }

LABEL_76:
    sub_100093854(v6);

    v92 = v202;

    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();

    v95 = os_log_type_enabled(v93, v94);
    v96 = v205;
    if (v95)
    {
      v97 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      v98 = aBlock;
      *v97 = 136315138;

      v99 = UUID.uuidString.getter();
      v101 = v100;

      v102 = sub_1002FFA0C(v99, v101, &aBlock);

      *(v97 + 4) = v102;
      _os_log_impl(&_mh_execute_header, v93, v94, "Peripheral not connected %s", v97, 0xCu);
      sub_1000752F4(v98);
      v96 = v205;
    }

    v103 = v204;
    v214 = sub_100113B64;
    v215 = v92;
    aBlock = _NSConcreteStackBlock;
    v211 = 1107296256;
    v204 = &v212;
    v212 = sub_100080830;
    v213 = &unk_1004C72A0;
    v104 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v209 = _swiftEmptyArrayStorage;
    v203 = sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v199 = sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
    sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
    v105 = v200;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v104);
    v208 = *(v208 + 1);
    (v208)(v103, v105);
    v207 = v207[1];
    v106 = v206;
    (v207)(v96, v206);

    v107 = swift_allocObject();
    *(v107 + 16) = v19;
    v214 = sub_10011F748;
    v215 = v107;
    aBlock = _NSConcreteStackBlock;
    v211 = 1107296256;
    v212 = sub_100080830;
    v213 = &unk_1004C72F0;
    v108 = _Block_copy(&aBlock);
    v109 = v19;
    static DispatchQoS.unspecified.getter();
    v209 = _swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v108);

    (v208)(v103, v105);
    (v207)(v96, v106);
  }

  else
  {
    while (1)
    {
      v88 = v84;
      v89 = v7;
      v20 = v84;
      if (!v7)
      {
        while (1)
        {
          v20 = v88 + 1;
          if (__OFADD__(v88, 1))
          {
            break;
          }

          if (v20 >= v83)
          {
            goto LABEL_76;
          }

          v89 = *(v77 + 8 * v20);
          ++v88;
          if (v89)
          {
            goto LABEL_71;
          }
        }

        __break(1u);
        goto LABEL_95;
      }

LABEL_71:
      v87 = (v89 - 1) & v89;

LABEL_72:
      if (!v86)
      {
        goto LABEL_76;
      }

      v198 = v84;
      v199 = v7;
      v90 = v86;
      v203 = *(v202 + 32);

      v91 = static UUID.== infix(_:_:)();

      if (v91)
      {
        break;
      }

      v84 = v20;
      v7 = v87;
      if (v6 < 0)
      {
        goto LABEL_65;
      }
    }

    v208 = v90;
    sub_100093854(v6);

    v110 = v196;
    v111 = [v196 sharedPairingAgent];
    if (v111)
    {
      v112 = *(&v19->isa + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingAgent);
      *(&v19->isa + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingAgent) = v111;
      v113 = v111;

      [(objc_class *)v113 setDelegate:v19];
      v114 = v208;
      [(objc_class *)v113 setOOBPairingEnabled:1 forPeer:*(v208 + 3)];
      v115 = v114[14];
      if (v115 >> 60 != 15)
      {
        v116 = v114[13];
        v117 = v114[3];
        sub_100069E2C(v116, v115);
        v118 = [(objc_class *)v113 retrieveOOBDataForPeer:v117];
        if (v118)
        {
          v207 = v116;
          v119 = v118;
          v206 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v205 = v120;

          v121 = v202;
          *(&v19->isa + v197) = v202;

          *(&v19->isa + v194) = 1;

          v122 = Logger.logObject.getter();
          v123 = static os_log_type_t.info.getter();
          v124 = v121;

          if (os_log_type_enabled(v122, v123))
          {
            v125 = swift_slowAlloc();
            v126 = swift_slowAlloc();
            aBlock = v126;
            *v125 = 136315138;

            v127 = UUID.uuidString.getter();
            v129 = v128;

            v130 = sub_1002FFA0C(v127, v129, &aBlock);

            *(v125 + 4) = v130;
            _os_log_impl(&_mh_execute_header, v122, v123, "Pairing started for %s", v125, 0xCu);
            sub_1000752F4(v126);
          }

          v131 = *(v124 + 48);
          v132 = *(v124 + 32);

          v133 = v207;
          v134 = v206;
          v135 = v205;
          v131(v207, v115, v206, v205, v132);

          sub_10006A178(v134, v135);
          sub_10006A2D0(v133, v115);

LABEL_93:

          return;
        }

        sub_10006A2D0(v116, v115);
      }

      v145 = Logger.logObject.getter();
      v146 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        *v147 = 0;
        _os_log_impl(&_mh_execute_header, v145, v146, "Failed to retrieve OOB data", v147, 2u);
      }

      sub_1000E1E2C();
      v148 = swift_allocError();
      *v149 = 2;
      sub_100106638(v148);

      goto LABEL_93;
    }

    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.error.getter();
    v138 = os_log_type_enabled(v136, v137);
    v139 = v202;
    if (v138)
    {
      v140 = swift_slowAlloc();
      *v140 = 0;
      _os_log_impl(&_mh_execute_header, v136, v137, "Failed to retrieve shared pairing agent", v140, 2u);
    }

    v141 = *(v139 + 64);
    sub_1000E1E2C();
    v142 = swift_allocError();
    *v143 = 2;
    v144 = *(v139 + 32);

    v141(v142, v144);
  }

LABEL_119:
}

uint64_t sub_100106638(uint64_t a1)
{
  v56 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v53 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v52 = *(v4 - 8);
  __chkstk_darwin(v4);
  v51 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v10 = qword_10051B7F0;
    *v9 = qword_10051B7F0;
    (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
    v50 = v10;
    LOBYTE(v10) = _dispatchPreconditionTest(_:)();
    (*(v7 + 8))(v9, v6);
    if ((v10 & 1) == 0)
    {
      __break(1u);
LABEL_37:
      swift_once();
      goto LABEL_6;
    }

    v11 = v54;
    if (!v56)
    {
      goto LABEL_26;
    }

    v12 = *&v54[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentPairingRequest];
    if (!v12)
    {
      goto LABEL_26;
    }

    v13 = swift_allocObject();
    v14 = v56;
    *(v13 + 16) = v12;
    *(v13 + 24) = v14;
    v62 = sub_100113BA8;
    v63 = v13;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_100080830;
    v61 = &unk_1004C7390;
    v15 = _Block_copy(&aBlock);
    swift_errorRetain();

    swift_errorRetain();
    v55 = v12;

    v16 = v51;
    static DispatchQoS.unspecified.getter();
    v64 = _swiftEmptyArrayStorage;
    sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
    sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
    v17 = v53;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);
    (*(v2 + 8))(v17, v1);
    (*(v52 + 8))(v16, v4);

    if (qword_100501960 != -1)
    {
      goto LABEL_37;
    }

LABEL_6:
    v46 = v4;
    v48 = v1;
    v18 = qword_10051B288;
    v19 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v20 = *(v18 + v19);
    v47 = v2;
    v45[2] = v20;
    if ((v20 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
      Set.Iterator.init(_cocoa:)();
      v7 = v64;
      v21 = v65;
      v9 = v66;
      v2 = v67;
      v4 = v68;
    }

    else
    {
      v22 = -1 << *(v20 + 32);
      v21 = (v20 + 56);
      v9 = ~v22;
      v23 = -v22;
      v24 = v23 < 64 ? ~(-1 << v23) : -1;
      v4 = v24 & *(v20 + 56);
      v7 = v20;
      swift_bridgeObjectRetain_n();
      v2 = 0;
    }

    v45[1] = v9;
    v25 = (v9 + 64) >> 6;
    if (v7 < 0)
    {
      break;
    }

LABEL_13:
    v26 = v2;
    v27 = v4;
    v6 = v2;
    if (v4)
    {
LABEL_17:
      v1 = (v27 - 1) & v27;

      if (v28)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    while (1)
    {
      v6 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v6 >= v25)
      {
        goto LABEL_24;
      }

      v27 = v21[v6];
      ++v26;
      if (v27)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_35:
    swift_once();
  }

  while (1)
  {
    v29 = __CocoaSet.Iterator.next()();
    if (!v29)
    {
      break;
    }

    v57 = v29;
    type metadata accessor for DSKBLE.BLEPeripheral();
    swift_dynamicCast();
    v28 = aBlock;
    v6 = v2;
    v1 = v4;
    if (!aBlock)
    {
      break;
    }

LABEL_21:
    v9 = v21;
    v49 = v4;
    v30 = v28;

    v31 = static UUID.== infix(_:_:)();

    if (v31)
    {
      sub_100093854(v7);

      v11 = v54;
      v41 = *&v54[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingAgent];
      if (v41)
      {
        v42 = *(v30 + 24);
        v43 = v41;
        v44 = v42;
        [v43 setOOBPairingEnabled:0 forPeer:v44];

        v11 = v54;
      }

      else
      {
      }

      v1 = v48;
      v2 = v47;
      v4 = v46;
      goto LABEL_25;
    }

    v2 = v6;
    v4 = v1;
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }
  }

LABEL_24:
  sub_100093854(v7);

  v1 = v48;
  v2 = v47;
  v4 = v46;
  v11 = v54;
LABEL_25:

LABEL_26:
  *&v11[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentPairingRequest] = 0;

  *&v11[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentUnpairingRequest] = 0;

  v32 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingAgent;
  v33 = *&v11[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingAgent];
  if (v33)
  {
    [v33 setDelegate:0];
    v34 = *&v11[v32];
  }

  else
  {
    v34 = 0;
  }

  *&v11[v32] = 0;

  v11[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_state] = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = v11;
  v62 = sub_100113B6C;
  v63 = v35;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_100080830;
  v61 = &unk_1004C7340;
  v36 = _Block_copy(&aBlock);
  v37 = v11;
  v38 = v51;
  static DispatchQoS.unspecified.getter();
  v57 = _swiftEmptyArrayStorage;
  sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
  v39 = v53;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);
  (*(v2 + 8))(v39, v1);
  (*(v52 + 8))(v38, v4);
}

uint64_t sub_100106FF8(uint64_t a1)
{
  v2 = *(a1 + 64);
  sub_1000E1E2C();
  v3 = swift_allocError();
  *v4 = 4;
  v2(v3, *(a1 + 32));
}

void sub_10010706C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void *a5)
{
  v49 = a2;
  v50 = a3;
  v51 = type metadata accessor for UUID();
  v7 = *(v51 - 8);
  __chkstk_darwin(v51);
  v52 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v13 = qword_10051B7F0;
    *v12 = qword_10051B7F0;
    v10[13](v12, enum case for DispatchPredicate.onQueue(_:), v9);
    v14 = v13;
    LOBYTE(v13) = _dispatchPreconditionTest(_:)();
    (v10[1])(v12, v9);
    if (v13)
    {
      if (qword_100501960 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_4:
    v15 = *(qword_10051B288 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
    if (!v15)
    {
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Failed to retrieve central manager", v27, 2u);
      }

      return;
    }

    v10 = v15;
    v16 = [v10 sharedPairingAgent];
    if (!v16)
    {
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Failed to retrieve shared pairing agent", v33, 2u);
      }

      return;
    }

    v17 = v16;
    v18 = [v16 retrievePairedPeers];
    if (!v18 || (v19 = v18, v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v19, v12 = sub_1000F1970(v20), , !v12))
    {
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Failed to retrieve paired peers", v30, 2u);
      }

      return;
    }

    v45 = v17;
    v46 = a5;
    v47 = a4;
    v48 = v10;
    v53 = _swiftEmptyArrayStorage;
    v21 = v12 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a4 = v52;
    if (!v21)
    {
      break;
    }

    v9 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v23 = *(v12 + 8 * v9 + 32);
      }

      a5 = v23;
      a4 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v24 = String._bridgeToObjectiveC()();
      v10 = [a5 hasTag:v24];

      if (v10)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v10 = v53[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v9;
      v22 = a4 == v21;
      a4 = v52;
      if (v22)
      {
        v34 = v53;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

  v34 = _swiftEmptyArrayStorage;
LABEL_32:

  if ((v34 & 0x8000000000000000) == 0 && (v34 & 0x4000000000000000) == 0)
  {
    v35 = *(v34 + 16);
    if (v35)
    {
      goto LABEL_35;
    }

LABEL_51:

    v37 = _swiftEmptyArrayStorage;
LABEL_52:
    v43 = sub_1000E0348(v37);

    v47(v43);

    return;
  }

  v35 = _CocoaArrayWrapper.endIndex.getter();
  if (!v35)
  {
    goto LABEL_51;
  }

LABEL_35:
  v53 = _swiftEmptyArrayStorage;
  sub_10019F420(0, v35 & ~(v35 >> 63), 0);
  if ((v35 & 0x8000000000000000) == 0)
  {
    v36 = 0;
    v37 = v53;
    do
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v38 = *(v34 + 8 * v36 + 32);
      }

      v39 = v38;
      v40 = [v38 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v53 = v37;
      v42 = v37[2];
      v41 = v37[3];
      if (v42 >= v41 >> 1)
      {
        sub_10019F420((v41 > 1), v42 + 1, 1);
        v37 = v53;
      }

      ++v36;
      v37[2] = v42 + 1;
      (*(v7 + 32))(v37 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v42, a4, v51);
    }

    while (v35 != v36);

    goto LABEL_52;
  }

  __break(1u);
}

uint64_t sub_100107708()
{
  sub_10006A2D0(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_100107760()
{
  v1 = OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_peerIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1000B2A4C(*(v0 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_onUnpairingCompleted), *(v0 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_onUnpairingCompleted + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_10010790C(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100107A18(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t getEnumTagSinglePayload for Peer.PeerType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Peer.PeerType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100107E6C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100107E78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100107ECC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_100107F40()
{
  result = qword_100503E00;
  if (!qword_100503E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100503E00);
  }

  return result;
}

unint64_t sub_100107F98()
{
  result = qword_100503E08;
  if (!qword_100503E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100503E08);
  }

  return result;
}

unint64_t sub_100107FF0()
{
  result = qword_100503E10;
  if (!qword_100503E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100503E10);
  }

  return result;
}

unint64_t sub_100108048()
{
  result = qword_100503E18;
  if (!qword_100503E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100503E18);
  }

  return result;
}

unint64_t sub_1001080A0()
{
  result = qword_100503E20;
  if (!qword_100503E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100503E20);
  }

  return result;
}

unint64_t sub_1001080F8()
{
  result = qword_100503E28;
  if (!qword_100503E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100503E28);
  }

  return result;
}

uint64_t sub_1001081DC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1001082A0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

Swift::Int sub_10010837C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    sub_100068FC4(a3, a4);
    v10 = static _SetStorage.convert(_:capacity:)();
    v23 = v10;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_10009393C(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_10010BC14(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = NSObject._rawHashValue(seed:)(*(v23 + 40));
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v10;
}

Swift::Int sub_10010857C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100068FC4(&unk_100507CE0, &unk_10040B260);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for Peer(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100109BDC(v9 + 1);
        }

        v2 = v15;
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        result = Hasher._finalize()();
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

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1001087D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100068FC4(&unk_100507CF0, &qword_10040B270);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for DSKBLE.BLEScanRequest();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10010A5C0(v9 + 1, &unk_100507CF0, &qword_10040B270, &String.hash(into:));
        }

        v2 = v15;
        Hasher.init(_seed:)();
        String.hash(into:)();
        result = Hasher._finalize()();
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

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100108A00(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100068FC4(&unk_100503F40, &unk_1004101B0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    for (; __CocoaSet.Iterator.next()(); ++*(v2 + 16))
    {
      sub_100068FC4(&unk_100503FA0, &unk_10040B2F0);
      swift_dynamicCast();
      v9 = *(v2 + 16);
      if (*(v2 + 24) <= v9)
      {
        sub_100109E88(v9 + 1);
        v2 = v15;
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v14 + 16));
      result = Hasher._finalize()();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
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
      *(*(v2 + 48) + 8 * v8) = v14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100108C0C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100068FC4(&qword_100503640, &qword_10040AA00);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for DSKExpress.ExpressKey();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10010A5C0(v9 + 1, &qword_100503640, &qword_10040AA00, &Data.hash(into:));
        }

        v2 = v15;
        Hasher.init(_seed:)();
        Data.hash(into:)();
        result = Hasher._finalize()();
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

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100108E38(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100068FC4(&unk_100503E80, &unk_10040B250);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for DSKBLE.BLEConnectionRequest();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10010A814(v9 + 1);
        }

        v2 = v15;
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        result = Hasher._finalize()();
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

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100109094(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_100068FC4(&qword_100503678, &qword_10040AA28);
    v7 = static _SetStorage.convert(_:capacity:)();
    v25 = v7;
    __CocoaSet.makeIterator()();
    v8 = __CocoaSet.Iterator.next()();
    if (v8)
    {
      v9 = v8;
      type metadata accessor for DSKBLE.BLEPeripheral();
      v10 = v9;
      do
      {
        v24[1] = v10;
        swift_dynamicCast();
        v19 = *(v7 + 16);
        if (*(v7 + 24) <= v19)
        {
          sub_10010ACF0(v19 + 1);
        }

        v11 = v24[10];
        v7 = v25;
        Hasher.init(_seed:)();
        v12 = [*(v11 + 24) identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        (*(v4 + 8))(v6, v3);
        result = Hasher._finalize()();
        v14 = v7 + 56;
        v15 = -1 << *(v7 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v7 + 56 + 8 * (v16 >> 6))) != 0)
        {
          v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 56 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = 0;
          v21 = (63 - v15) >> 6;
          do
          {
            if (++v17 == v21 && (v20 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v22 = v17 == v21;
            if (v17 == v21)
            {
              v17 = 0;
            }

            v20 |= v22;
            v23 = *(v14 + 8 * v17);
          }

          while (v23 == -1);
          v18 = __clz(__rbit64(~v23)) + (v17 << 6);
        }

        *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v7 + 48) + 8 * v18) = v11;
        ++*(v7 + 16);
        v10 = __CocoaSet.Iterator.next()();
      }

      while (v10);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v7;
}

Swift::Int sub_1001093E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    sub_100068FC4(a3, a4);
    v8 = static _SetStorage.convert(_:capacity:)();
    v21 = v8;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          sub_10010BC14(v15 + 1, a3, a4);
        }

        v8 = v21;
        result = NSObject._rawHashValue(seed:)(*(v21 + 40));
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v8;
}

uint64_t sub_1001095F0(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for UUID();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100068FC4(&unk_100503F30, &unk_10040B2B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int sub_10010998C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100068FC4(&qword_100503620, &unk_10040B2C0);
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
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

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100109BDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100068FC4(&unk_100507CE0, &unk_10040B260);
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
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

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100109E88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100068FC4(&unk_100503F40, &unk_1004101B0);
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v17 + 16));
      result = Hasher._finalize()();
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

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_10010A0D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100068FC4(&unk_100503EF0, &unk_10040B280);
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
      Data.hash(into:)();
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

Swift::Int sub_10010A338(uint64_t a1)
{
  v2 = *v1;
  sub_100068FC4(&qword_100503618, &unk_10040B290);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 32 * (v14 | (v5 << 6)));
      v26 = *v17;
      v27 = v17[1];
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v18 = -1 << *(v4 + 32);
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

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 32 * v12);
      *v13 = v26;
      v13[1] = v27;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

Swift::Int sub_10010A5C0(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, void, void))
{
  v5 = v4;
  v6 = *v4;
  sub_100068FC4(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v6 + 48) + 8 * (v17 | (v9 << 6)));
      Hasher.init(_seed:)();
      a4(v30, *(v20 + 16), *(v20 + 24));
      result = Hasher._finalize()();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v5 = v4;
    *(v6 + 16) = 0;
  }

  *v5 = v8;
  return result;
}

Swift::Int sub_10010A814(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100068FC4(&unk_100503E80, &unk_10040B250);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v26 = v3;
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
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
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
      v3 = v26;
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
      bzero(v7, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10010AAC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100068FC4(&qword_100503F90, &qword_10040A9F8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      v17 = *(*(v3 + 48) + 2 * (v14 | (v6 << 6)));
      result = static Hasher._hash(seed:bytes:count:)();
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
      *(*(v5 + 48) + 2 * v13) = v17;
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_10010ACF0(uint64_t a1)
{
  v2 = v1;
  v35 = type metadata accessor for UUID();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100068FC4(&qword_100503678, &qword_10040AA28);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v1;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v32 = (v3 + 8);
    v33 = v5;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      Hasher.init(_seed:)();
      v20 = [*(v19 + 24) identifier];
      v21 = v34;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = v35;
      dispatch thunk of Hashable.hash(into:)();
      (*v32)(v21, v22);
      result = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        v5 = v33;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      v5 = v33;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v30 = 1 << *(v5 + 32);
    if (v30 >= 64)
    {
      bzero(v9, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int sub_10010B074(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100068FC4(&qword_100503648, &qword_10040AA08);
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

Swift::Int sub_10010B2D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100068FC4(&qword_100503658, &qword_10040AA18);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
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
      v18 = (*(v3 + 48) + 40 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v31 = v18[4];
      v32 = v18[3];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
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
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 40 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v32;
      v14[4] = v31;
      ++*(v5 + 16);
      v3 = v30;
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
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}