void sub_10011DF34(char *a1)
{
  v2 = v1;
  v110 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v110 - 8);
  __chkstk_darwin(v110);
  v109 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v108 = *(v6 - 8);
  __chkstk_darwin(v6);
  v107 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v116 = *(v8 - 8);
  __chkstk_darwin(v8);
  v111 = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v115 = v96 - v11;
  __chkstk_darwin(v12);
  v117 = v96 - v13;
  __chkstk_darwin(v14);
  v113 = v96 - v15;
  __chkstk_darwin(v16);
  v18 = v96 - v17;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v23 = qword_10051B7F0;
    *v22 = qword_10051B7F0;
    (*(v20 + 13))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
    v106 = v23;
    LOBYTE(v23) = _dispatchPreconditionTest(_:)();
    v24 = *(v20 + 1);
    v20 += 8;
    v24(v22, v19);
    if ((v23 & 1) == 0)
    {
      __break(1u);
LABEL_49:
      swift_once();
      goto LABEL_12;
    }

    v118 = v8;
    v104 = v6;
    v105 = v4;
    v25 = a1;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v114 = v2;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = 136315138;
      v112 = a1;
      if (!a1)
      {
        goto LABEL_62;
      }

      v30 = v29;

      v31 = [v25 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = v118;
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v25;
      v36 = v35;
      (*(v116 + 8))(v18, v32);
      v37 = sub_1002FFA0C(v33, v36, aBlock);
      v25 = v34;

      *(v28 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v26, v27, "Peripheral unpaired successfully %s", v28, 0xCu);
      sub_1000752F4(v30);

      v2 = v114;
      a1 = v112;
    }

    else
    {
    }

    v38 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_state;
    if (v2[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_state] != 3)
    {
      break;
    }

    v22 = *&v2[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentUnpairingRequest];
    v39 = v118;
    v40 = v116;
    if (!v22)
    {
      goto LABEL_18;
    }

    v114 = v2;
    v41 = *(v116 + 16);
    v20 = v113;
    v103 = v116 + 16;
    v102 = v41;
    v41(v113, v22 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_peerIdentifier, v118);
    if (!a1)
    {
      goto LABEL_63;
    }

    v112 = v25;
    v42 = [v25 identifier];
    v43 = v117;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v42) = static UUID.== infix(_:_:)();
    v2 = *(v40 + 8);
    (v2)(v43, v39);
    v113 = (v40 + 8);
    v101 = v2;
    (v2)(v20, v39);
    if ((v42 & 1) == 0)
    {

      v25 = v112;
LABEL_18:
      v56 = v25;
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v57, v58))
      {

        return;
      }

      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      aBlock[0] = v60;
      *v59 = 136315138;
      if (a1)
      {
        v61 = v60;

        v62 = [v56 identifier];
        v63 = v111;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v64 = dispatch thunk of CustomStringConvertible.description.getter();
        v66 = v65;
        (*(v40 + 8))(v63, v39);
        v67 = sub_1002FFA0C(v64, v66, aBlock);

        *(v59 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v57, v58, "Unexpected peripheral unpaired %s", v59, 0xCu);
        sub_1000752F4(v61);

        return;
      }

      goto LABEL_64;
    }

    if (qword_100501960 != -1)
    {
      goto LABEL_49;
    }

LABEL_12:
    v97 = v22;
    v44 = qword_10051B288;
    v45 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectionRequests;
    swift_beginAccess();
    v96[1] = v44;
    v99 = *(v44 + v45);
    if ((v99 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEConnectionRequest();
      sub_1001081DC(&unk_100503E70, v46, type metadata accessor for DSKBLE.BLEConnectionRequest, &unk_10040B110);
      Set.Iterator.init(_cocoa:)();
      v19 = v121;
      v6 = v122;
      v22 = v123;
      v8 = v124;
      v47 = v125;
    }

    else
    {
      v68 = -1 << *(v99 + 32);
      v6 = v99 + 56;
      v22 = ~v68;
      v69 = -v68;
      if (v69 < 64)
      {
        v70 = ~(-1 << v69);
      }

      else
      {
        v70 = -1;
      }

      v47 = (v70 & *(v99 + 56));
      v19 = v99;
      swift_bridgeObjectRetain_n();
      v8 = 0;
    }

    v98 = v22;
    v4 = (v22 + 64) >> 6;
    if (v19 < 0)
    {
LABEL_27:
      v71 = __CocoaSet.Iterator.next()();
      if (v71)
      {
        v119 = v71;
        type metadata accessor for DSKBLE.BLEConnectionRequest();
        swift_dynamicCast();
        v72 = aBlock[0];
        v18 = v8;
        a1 = v47;
        if (aBlock[0])
        {
          goto LABEL_35;
        }
      }

LABEL_38:
      sub_100093854(v19);

LABEL_39:
      v80 = v114;
      v81 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_unpairingRequests;
      swift_beginAccess();
      v82 = *&v80[v81];
      v83 = v82 >> 62;
      v84 = v110;
      if (v82 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_65;
        }

        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_41:
          if ((v82 & 0xC000000000000001) == 0)
          {
            if (!*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
              return;
            }

            if (!v83)
            {
              goto LABEL_44;
            }

            goto LABEL_55;
          }

LABEL_54:
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v83)
          {
LABEL_44:
            v85 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_56;
          }

LABEL_55:
          v85 = _CocoaArrayWrapper.endIndex.getter();
LABEL_56:
          if (v85)
          {
            sub_1001A16AC(0, 1);
            swift_endAccess();

            sub_100106638(0);
            v89 = v97;
            v90 = *(v97 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_onUnpairingCompleted);
            if (v90)
            {
              v91 = *(v97 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_onUnpairingCompleted + 8);
              v92 = swift_allocObject();
              v92[2] = v90;
              v92[3] = v91;
              v92[4] = v89;
              aBlock[4] = sub_10011EE58;
              aBlock[5] = v92;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_100080830;
              aBlock[3] = &unk_1004C75E8;
              v93 = _Block_copy(aBlock);
              sub_100113B54(v90, v91);

              sub_100113B54(v90, v91);
              v94 = v107;
              static DispatchQoS.unspecified.getter();
              v119 = _swiftEmptyArrayStorage;
              sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
              sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
              sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
              v95 = v109;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v93);

              sub_1000B2A4C(v90, v91);
              (*(v105 + 8))(v95, v84);
              (*(v108 + 8))(v94, v104);
            }

            return;
          }

          goto LABEL_61;
        }

        __break(1u);
      }

      else if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      __break(1u);
      goto LABEL_54;
    }

    while (1)
    {
      v73 = v8;
      v74 = v47;
      v18 = v8;
      if (!v47)
      {
        break;
      }

LABEL_34:
      a1 = ((v74 - 1) & v74);

      if (!v72)
      {
        goto LABEL_38;
      }

LABEL_35:
      v100 = v8;
      v111 = v47;
      v116 = v72;
      v75 = v117;
      v20 = v118;
      v102(v117, *(v72 + 16) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v118);
      v76 = [v112 identifier];
      v77 = v115;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = static UUID.== infix(_:_:)();
      v78 = v77;
      v2 = v113;
      v79 = v101;
      v101(v78, v20);
      v79(v75, v20);
      if (v22)
      {
        sub_100093854(v19);

        v86 = v116;
        v87 = *(v116 + 56);
        *(v116 + 56) = 0;

        sub_1000E67E4(v88);

        sub_1000EA4CC(v86, 0);

        goto LABEL_39;
      }

      v8 = v18;
      v47 = a1;
      if (v19 < 0)
      {
        goto LABEL_27;
      }
    }

    while (1)
    {
      v18 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        break;
      }

      if (v18 >= v4)
      {
        goto LABEL_38;
      }

      v74 = *(v6 + 8 * v18);
      ++v73;
      if (v74)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_47:
    swift_once();
  }

  v48 = v2;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    aBlock[0] = v52;
    *v51 = 136315138;
    LOBYTE(v121) = v2[v38];
    v53 = String.init<A>(describing:)();
    v55 = sub_1002FFA0C(v53, v54, aBlock);

    *(v51 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v49, v50, "Peripheral unpaired in wrong state %s", v51, 0xCu);
    sub_1000752F4(v52);
  }
}

uint64_t sub_10011EEC8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10011EF24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100507D30, &unk_100409C90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011EF94()
{

  sub_10006A178(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10011EFE0(void (*a1)(void))
{

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_10011F038()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  sub_10006A178(*(v0 + v5), *(v0 + v5 + 8));

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_10011F12C()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *(v0 + v4);
  v8 = *v6;
  v9 = v6[1];

  return sub_100101484(v5, (v0 + v2), v8, v9, v7);
}

uint64_t sub_10011F1CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10011F248()
{
  result = qword_100503670;
  if (!qword_100503670)
  {
    sub_10009393C(255, &qword_100503668, CBCharacteristic_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100503670);
  }

  return result;
}

uint64_t sub_10011F2B0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10011F304()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10011F350()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10011F390()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(v0[7] + 16);

  v1(v2, v3, v4, v5);
}

uint64_t sub_10011F438(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100504090, &qword_10040B3A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for fileIEFs(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for fileIEFs(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10011F5FC()
{
  result = qword_100504098;
  if (!qword_100504098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504098);
  }

  return result;
}

id SECServer.__allocating_init(machServiceName:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(v2);
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 initWithMachServiceName:v4];

  return v5;
}

id CredentialInternalServer.init(machServiceName:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  Logger.init(subsystem:category:)();
  v4 = String._bridgeToObjectiveC()();

  v7.receiver = v2;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithMachServiceName:", v4);

  [v5 setDelegate:v5];
  return v5;
}

id SECServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CredentialInternalServer.init()()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithMachServiceName:v1];

  return v2;
}

void sub_10011FA74(const char *a1, uint64_t a2)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, a1, v5, 2u);
  }
}

uint64_t sub_10011FC30(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Accepting %@", v6, 0xCu);
    sub_1000C2998(v7);
  }

  v9 = sub_100280ED4();
  [v3 setExportedInterface:v9];

  [v3 setExportedObject:v2];
  v17 = sub_10011FA5C;
  v18 = 0;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100080830;
  v16 = &unk_1004C7A38;
  v10 = _Block_copy(&v13);
  [v3 setInvalidationHandler:v10];
  _Block_release(v10);
  v17 = sub_10011FA68;
  v18 = 0;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100080830;
  v16 = &unk_1004C7A60;
  v11 = _Block_copy(&v13);
  [v3 setInterruptionHandler:v11];
  _Block_release(v11);
  [v3 resume];
  return 1;
}

uint64_t type metadata accessor for CredentialInternalServer(uint64_t a1)
{
  result = qword_100504128;
  if (!qword_100504128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10011FEBC(uint64_t a1, uint64_t a2)
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

uint64_t sub_10011FF4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_10011FFF0(uint64_t a1, unint64_t a2)
{
  v4 = OBJC_IVAR____TtC10seserviced35SESKeyDesignationStorageCoordinator_keys;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5 >> 62)
  {
    goto LABEL_81;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v7 = a1;
  if (v6)
  {
    v8 = 0;
    v46 = 0;
    v48 = v5 & 0xFFFFFFFFFFFFFF8;
    v49 = v5 & 0xC000000000000001;
    if (a1)
    {
      v9 = 0;
    }

    else
    {
      v9 = a2 == 0xC000000000000000;
    }

    v10 = !v9;
    v45 = v10;
    v11 = a2 >> 62;
    v12 = __OFSUB__(HIDWORD(a1), a1);
    v41 = v12;
    v40 = a2;
    v43 = v5;
    v44 = BYTE6(a2);
    v47 = v6;
    while (1)
    {
      if (v49)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v48 + 16))
        {
          goto LABEL_76;
        }

        v13 = *(v5 + 8 * v8 + 32);
      }

      v14 = v13;
      v15 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        v6 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v16 = [v13 keyIdentifier];
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = v19 >> 62;
      if (v19 >> 62 == 3)
      {
        break;
      }

      if (v20 > 1)
      {
        if (v20 != 2)
        {
          goto LABEL_43;
        }

        v26 = *(v17 + 16);
        v25 = *(v17 + 24);
        v27 = __OFSUB__(v25, v26);
        v24 = v25 - v26;
        if (v27)
        {
          goto LABEL_79;
        }

        if (v11 <= 1)
        {
          goto LABEL_40;
        }
      }

      else if (v20)
      {
        LODWORD(v24) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_80;
        }

        v24 = v24;
        if (v11 <= 1)
        {
LABEL_40:
          v28 = v44;
          if (v11)
          {
            v28 = HIDWORD(a1) - a1;
            if (v41)
            {
              goto LABEL_77;
            }
          }

          goto LABEL_46;
        }
      }

      else
      {
        v24 = BYTE6(v19);
        if (v11 <= 1)
        {
          goto LABEL_40;
        }
      }

LABEL_44:
      if (v11 != 2)
      {
        if (!v24)
        {
          goto LABEL_71;
        }

        goto LABEL_15;
      }

      v30 = *(v7 + 16);
      v29 = *(v7 + 24);
      v27 = __OFSUB__(v29, v30);
      v28 = v29 - v30;
      if (v27)
      {
        goto LABEL_78;
      }

LABEL_46:
      if (v24 == v28)
      {
        if (v24 < 1)
        {
LABEL_71:

          v37 = v17;
          v38 = v19;
          goto LABEL_72;
        }

        if (v20 > 1)
        {
          if (v20 != 2)
          {
            memset(v51, 0, 14);
            goto LABEL_67;
          }

          v32 = *(v17 + 16);
          v31 = *(v17 + 24);
          v33 = __DataStorage._bytes.getter();
          if (v33)
          {
            v34 = __DataStorage._offset.getter();
            if (__OFSUB__(v32, v34))
            {
              goto LABEL_84;
            }

            v33 += v32 - v34;
          }

          if (__OFSUB__(v31, v32))
          {
            goto LABEL_83;
          }
        }

        else
        {
          if (!v20)
          {
            v51[0] = v17;
            LOWORD(v51[1]) = v19;
            BYTE2(v51[1]) = BYTE2(v19);
            BYTE3(v51[1]) = BYTE3(v19);
            BYTE4(v51[1]) = BYTE4(v19);
            BYTE5(v51[1]) = BYTE5(v19);
LABEL_67:
            v36 = v46;
            sub_10019F024(v51, v7, a2, &v50);
            sub_10006A178(v17, v19);
            if (v50)
            {
LABEL_73:

              return v14;
            }

LABEL_68:
            v46 = v36;
            v5 = v43;

            goto LABEL_16;
          }

          if (v17 >> 32 < v17)
          {
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
          }

          v33 = __DataStorage._bytes.getter();
          if (v33)
          {
            v35 = __DataStorage._offset.getter();
            if (__OFSUB__(v17, v35))
            {
              goto LABEL_85;
            }

            v33 += v17 - v35;
          }
        }

        __DataStorage._length.getter();
        v7 = a1;
        a2 = v40;
        v36 = v46;
        sub_10019F024(v33, a1, v40, v51);
        sub_10006A178(v17, v19);
        if (v51[0])
        {
          goto LABEL_73;
        }

        goto LABEL_68;
      }

LABEL_15:

      sub_10006A178(v17, v19);
LABEL_16:
      ++v8;
      if (v15 == v47)
      {
        goto LABEL_70;
      }
    }

    if (v17)
    {
      v21 = 0;
    }

    else
    {
      v21 = v19 == 0xC000000000000000;
    }

    v23 = !v21 || v11 < 3;
    if (((v23 | v45) & 1) == 0)
    {

      v37 = 0;
      v38 = 0xC000000000000000;
LABEL_72:
      sub_10006A178(v37, v38);
      return v14;
    }

LABEL_43:
    v24 = 0;
    if (v11 <= 1)
    {
      goto LABEL_40;
    }

    goto LABEL_44;
  }

LABEL_70:

  return 0;
}

uint64_t sub_10012050C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v12 = v11;
  v16 = OBJC_IVAR____TtC10seserviced35SESKeyDesignationStorageCoordinator_keys;
  swift_beginAccess();
  sub_100069E2C(a4, a5);
  v17 = sub_100121394((v12 + v16), a11, a4, a5);
  sub_10006A178(a4, a5);
  v18 = *(v12 + v16);
  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19 >= v17)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  if (v19 < v17)
  {
    goto LABEL_6;
  }

LABEL_3:
  v20 = a3;
  sub_1001A2540(v17, v19);
  swift_endAccess();
  v21 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v23 = Data._bridgeToObjectiveC()().super.isa;
  v24 = Data._bridgeToObjectiveC()().super.isa;
  v25 = Data._bridgeToObjectiveC()().super.isa;
  v26 = [v21 withAID:isa slotNumber:v20 keyIdentifier:v23 assetACL:v24 assetACLAttestation:v25 operationApprovalVersion:a10 designation:a11];

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v12 + v16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v12 + v16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_7:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  result = swift_endAccess();
  *(v12 + OBJC_IVAR____TtC10seserviced35SESKeyDesignationStorageCoordinator_mutated) = 1;
  return result;
}

id sub_100120B58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SESKeyDesignationStorageCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100120BAC()
{
  result = qword_100504138;
  if (!qword_100504138)
  {
    type metadata accessor for SecureElementType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504138);
  }

  return result;
}

unint64_t sub_100120C78(unint64_t a1, id a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = [v7 designation];

    if (v9 == a2)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_100120D70(unint64_t *a1, id a2)
{
  v5 = *a1;
  result = sub_100120C78(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v24 = a1;
  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v11 = *(v5 + 8 * v9 + 32);
LABEL_15:
    v12 = v11;
    v13 = [v11 designation];

    if (v13 != a2)
    {
      if (v8 != v9)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v16)
          {
            goto LABEL_45;
          }

          if (v9 >= v16)
          {
            goto LABEL_46;
          }

          v17 = *(v5 + 32 + 8 * v9);
          v14 = *(v5 + 32 + 8 * v8);
          v15 = v17;
        }

        v18 = v15;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_1001A291C(v5);
          v19 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v5 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v18;

        if ((v5 & 0x8000000000000000) != 0 || v19)
        {
          v5 = sub_1001A291C(v5);
          v20 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v8;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v9 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v22 = v20 + 8 * v9;
        v23 = *(v22 + 32);
        *(v22 + 32) = v14;

        *v24 = v5;
      }

      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_42;
      }
    }

    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

id sub_100120FD0()
{
  v8 = 0;
  result = SESKeyGetDesignatedKeys();
  if (result)
  {
    v1 = result;
    sub_1001217D8();
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = 0;

    v4 = type metadata accessor for SESKeyDesignationStorageCoordinator();
    v5 = objc_allocWithZone(v4);
    v5[OBJC_IVAR____TtC10seserviced35SESKeyDesignationStorageCoordinator_mutated] = 0;
    *&v5[OBJC_IVAR____TtC10seserviced35SESKeyDesignationStorageCoordinator_keys] = v2;
    v7.receiver = v5;
    v7.super_class = v4;
    v6 = objc_msgSendSuper2(&v7, "init");

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1001210D4(unint64_t a1, id a2, uint64_t a3, unint64_t a4)
{
  if (a1 >> 62)
  {
LABEL_62:
    v36 = a1 & 0xFFFFFFFFFFFFFF8;
    v38 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v36 = a1 & 0xFFFFFFFFFFFFFF8;
    v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4 == 0xC000000000000000;
  }

  v8 = !v7;
  v35 = v8;
  v9 = a4 >> 62;
  v10 = __OFSUB__(HIDWORD(a3), a3);
  v33 = v10;
  v32 = HIDWORD(a3) - a3;
  while (1)
  {
    if (v38 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v36 + 16))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v12 = *(a1 + 8 * v6 + 32);
    }

    v13 = v12;
    if ([v12 designation] == a2)
    {
      goto LABEL_54;
    }

    v14 = [v13 keyIdentifier];
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      break;
    }

    if (v18)
    {
      if (v18 == 1)
      {
        LODWORD(v22) = HIDWORD(v15) - v15;
        if (__OFSUB__(HIDWORD(v15), v15))
        {
          goto LABEL_61;
        }

        v22 = v22;
      }

      else
      {
        v24 = *(v15 + 16);
        v23 = *(v15 + 24);
        v11 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v11)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      v22 = BYTE6(v17);
    }

LABEL_39:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        if (!v22)
        {
          goto LABEL_51;
        }

        goto LABEL_14;
      }

      v27 = *(a3 + 16);
      v26 = *(a3 + 24);
      v11 = __OFSUB__(v26, v27);
      v25 = v26 - v27;
      if (v11)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v25 = BYTE6(a4);
      if (v9)
      {
        v25 = v32;
        if (v33)
        {
          goto LABEL_59;
        }
      }
    }

    if (v22 == v25)
    {
      if (v22 < 1)
      {
LABEL_51:
        v30 = v15;
        v31 = v17;
        goto LABEL_53;
      }

      sub_100069E2C(a3, a4);
      v28 = sub_10008C678(v15, v17, a3, a4);
      sub_10006A178(v15, v17);

      if (v28)
      {
        return v6;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_10006A178(v15, v17);

LABEL_15:
    v11 = __OFADD__(v6++, 1);
    if (v11)
    {
      goto LABEL_57;
    }
  }

  if (v15)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17 == 0xC000000000000000;
  }

  v21 = !v19 || a4 >> 62 != 3;
  if ((v21 | v35))
  {
    v22 = 0;
    goto LABEL_39;
  }

  v30 = 0;
  v31 = 0xC000000000000000;
LABEL_53:
  sub_10006A178(v30, v31);
LABEL_54:

  return v6;
}

unint64_t sub_100121394(unint64_t *a1, id a2, uint64_t a3, unint64_t a4)
{
  v10 = *a1;
  result = sub_1001210D4(*a1, a2, a3, a4);
  if (v5)
  {
    return v4;
  }

  if (v12)
  {
    if (v10 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = result;
  v49 = a1;
  v50 = a4;
  v51 = a3;
  v13 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  if (a3)
  {
    v14 = 0;
  }

  else
  {
    v14 = a4 == 0xC000000000000000;
  }

  v15 = !v14;
  v52 = v15;
  v16 = a4 >> 62;
  v17 = __OFSUB__(HIDWORD(a3), a3);
  v48 = v17;
  while (1)
  {
    if (v10 >> 62)
    {
      if (v13 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v4;
      }
    }

    else if (v13 == *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v4;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_26;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_86;
    }

    v21 = *(v10 + 8 * v13 + 32);
LABEL_26:
    v22 = v21;
    if ([v21 designation] == a2)
    {
      goto LABEL_18;
    }

    v23 = [v22 keyIdentifier];
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = v26 >> 62;
    if (v26 >> 62 == 3)
    {
      if (v24)
      {
        v28 = 0;
      }

      else
      {
        v28 = v26 == 0xC000000000000000;
      }

      v30 = !v28 || v16 < 3;
      if (((v30 | v52) & 1) == 0)
      {
        v18 = 0;
        v19 = 0xC000000000000000;
LABEL_17:
        sub_10006A178(v18, v19);
LABEL_18:

        goto LABEL_19;
      }

      v31 = 0;
    }

    else if (v27)
    {
      if (v27 == 1)
      {
        LODWORD(v31) = HIDWORD(v24) - v24;
        if (__OFSUB__(HIDWORD(v24), v24))
        {
          goto LABEL_92;
        }

        v31 = v31;
      }

      else
      {
        v33 = *(v24 + 16);
        v32 = *(v24 + 24);
        v20 = __OFSUB__(v32, v33);
        v31 = v32 - v33;
        if (v20)
        {
          goto LABEL_93;
        }
      }
    }

    else
    {
      v31 = BYTE6(v26);
    }

    if (v16 > 1)
    {
      if (v16 != 2)
      {
        if (!v31)
        {
LABEL_62:
          v18 = v24;
          v19 = v26;
          goto LABEL_17;
        }

LABEL_59:
        sub_10006A178(v24, v26);

        if (v4 == v13)
        {
          goto LABEL_55;
        }

        goto LABEL_60;
      }

      v36 = *(v51 + 16);
      v35 = *(v51 + 24);
      v20 = __OFSUB__(v35, v36);
      v34 = v35 - v36;
      if (v20)
      {
        goto LABEL_91;
      }
    }

    else
    {
      v34 = BYTE6(v50);
      if (v16)
      {
        v34 = HIDWORD(v51) - v51;
        if (v48)
        {
          goto LABEL_90;
        }
      }
    }

    if (v31 != v34)
    {
      goto LABEL_59;
    }

    if (v31 < 1)
    {
      goto LABEL_62;
    }

    sub_100069E2C(v51, v50);
    v16 = v50 >> 62;
    v37 = sub_10008C678(v24, v26, v51, v50);
    sub_10006A178(v24, v26);

    if (v37)
    {
      goto LABEL_19;
    }

    if (v4 == v13)
    {
LABEL_55:
      v20 = __OFADD__(v4++, 1);
      if (v20)
      {
        goto LABEL_88;
      }

      goto LABEL_19;
    }

LABEL_60:
    if ((v10 & 0xC000000000000001) != 0)
    {
      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_94;
      }

      v40 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4 >= v40)
      {
        goto LABEL_95;
      }

      if (v13 >= v40)
      {
        goto LABEL_96;
      }

      v41 = *(v10 + 32 + 8 * v13);
      v38 = *(v10 + 32 + 8 * v4);
      v39 = v41;
    }

    v42 = v39;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v10 & 0x8000000000000000) != 0 || (v10 & 0x4000000000000000) != 0)
    {
      v10 = sub_1001A291C(v10);
      v43 = (v10 >> 62) & 1;
    }

    else
    {
      LODWORD(v43) = 0;
    }

    v44 = v10 & 0xFFFFFFFFFFFFFF8;
    v45 = *((v10 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v10 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v42;

    if ((v10 & 0x8000000000000000) != 0 || v43)
    {
      v10 = sub_1001A291C(v10);
      v44 = v10 & 0xFFFFFFFFFFFFFF8;
      v16 = v50 >> 62;
      if ((v13 & 0x8000000000000000) != 0)
      {
LABEL_83:
        __break(1u);
        return v4;
      }
    }

    else
    {
      v16 = v50 >> 62;
      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_83;
      }
    }

    if (v13 >= *(v44 + 16))
    {
      goto LABEL_89;
    }

    v46 = v44 + 8 * v13;
    v47 = *(v46 + 32);
    *(v46 + 32) = v38;

    *v49 = v10;
    v20 = __OFADD__(v4++, 1);
    if (v20)
    {
      goto LABEL_88;
    }

LABEL_19:
    v20 = __OFADD__(v13++, 1);
    if (v20)
    {
      goto LABEL_87;
    }
  }

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
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

unint64_t sub_1001217D8()
{
  result = qword_100504178;
  if (!qword_100504178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100504178);
  }

  return result;
}

uint64_t sub_100121824(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a1;
  if (a1 >> 62)
  {
LABEL_85:
    v49 = v4 & 0xFFFFFFFFFFFFFF8;
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v49 = a1 & 0xFFFFFFFFFFFFFF8;
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v50 = v4 & 0xC000000000000001;
  if (a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = a3 == 0xC000000000000000;
  }

  v8 = !v7;
  v46 = v8;
  v9 = a3 >> 62;
  v10 = __OFSUB__(HIDWORD(a2), a2);
  v44 = v10;
  v43 = v5;
  v45 = BYTE6(a3);
  v41 = v4;
  v42 = a3;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if (v50)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v49 + 16))
      {
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v12 = *(v4 + 8 * v6 + 32);
    }

    v13 = v12;
    v14 = [v12 keyIdentifier];
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v15)
      {
        v19 = 0;
      }

      else
      {
        v19 = v17 == 0xC000000000000000;
      }

      v21 = !v19 || v9 < 3;
      if (((v21 | v46) & 1) == 0)
      {
        v38 = 0;
        v39 = 0xC000000000000000;
LABEL_75:
        sub_10006A178(v38, v39);

        return v6;
      }

LABEL_42:
      v22 = 0;
      if (v9 <= 1)
      {
        goto LABEL_39;
      }

      goto LABEL_43;
    }

    if (v18 > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_42;
      }

      v24 = *(v15 + 16);
      v23 = *(v15 + 24);
      v11 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v11)
      {
        goto LABEL_81;
      }

      if (v9 <= 1)
      {
        goto LABEL_39;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v15) - v15;
      if (__OFSUB__(HIDWORD(v15), v15))
      {
        goto LABEL_82;
      }

      v22 = v22;
      if (v9 <= 1)
      {
LABEL_39:
        v25 = v45;
        if (v9)
        {
          v25 = HIDWORD(a2) - a2;
          if (v44)
          {
            goto LABEL_80;
          }
        }

        goto LABEL_45;
      }
    }

    else
    {
      v22 = BYTE6(v17);
      if (v9 <= 1)
      {
        goto LABEL_39;
      }
    }

LABEL_43:
    if (v9 != 2)
    {
      if (!v22)
      {
        goto LABEL_74;
      }

LABEL_14:
      sub_10006A178(v15, v17);

      goto LABEL_15;
    }

    v27 = *(a2 + 16);
    v26 = *(a2 + 24);
    v11 = __OFSUB__(v26, v27);
    v25 = v26 - v27;
    if (v11)
    {
      goto LABEL_79;
    }

LABEL_45:
    if (v22 != v25)
    {
      goto LABEL_14;
    }

    if (v22 < 1)
    {
LABEL_74:
      v38 = v15;
      v39 = v17;
      goto LABEL_75;
    }

    if (v18 > 1)
    {
      break;
    }

    if (!v18)
    {
      v52[0] = v15;
      LOWORD(v52[1]) = v17;
      BYTE2(v52[1]) = BYTE2(v17);
      BYTE3(v52[1]) = BYTE3(v17);
      BYTE4(v52[1]) = BYTE4(v17);
      BYTE5(v52[1]) = BYTE5(v17);
      sub_100069E2C(a2, a3);
      sub_10019F024(v52, a2, a3, &v51);
      v28 = a2;
      if (v47)
      {
        goto LABEL_88;
      }

      sub_10006A178(a2, a3);
      sub_10006A178(v15, v17);

      if (v51)
      {
        return v6;
      }

      v4 = v41;
      goto LABEL_15;
    }

    v4 = v15;
    if (v15 >> 32 < v15)
    {
      goto LABEL_83;
    }

    sub_100069E2C(a2, a3);
    v34 = __DataStorage._bytes.getter();
    if (v34)
    {
      v35 = __DataStorage._offset.getter();
      if (__OFSUB__(v15, v35))
      {
        goto LABEL_87;
      }

      v34 += v15 - v35;
    }

    __DataStorage._length.getter();
    v36 = v34;
    v33 = v47;
    v32 = a2;
    a3 = v42;
    sub_10019F024(v36, a2, v42, v52);
    v4 = v41;
LABEL_66:
    v47 = v33;
    v28 = v32;
    if (v33)
    {
      goto LABEL_88;
    }

    sub_10006A178(v32, a3);
    sub_10006A178(v15, v17);

    v5 = v43;
    if (v52[0])
    {
      return v6;
    }

LABEL_15:
    v11 = __OFADD__(v6++, 1);
    if (v11)
    {
      goto LABEL_78;
    }
  }

  if (v18 == 2)
  {
    v29 = *(v15 + 16);
    v40 = *(v15 + 24);
    sub_100069E2C(a2, a3);
    a3 = __DataStorage._bytes.getter();
    if (a3)
    {
      v30 = __DataStorage._offset.getter();
      if (__OFSUB__(v29, v30))
      {
        __break(1u);
LABEL_87:
        __break(1u);
      }

      a3 += v29 - v30;
    }

    if (__OFSUB__(v40, v29))
    {
      goto LABEL_84;
    }

    __DataStorage._length.getter();
    v31 = a3;
    v33 = v47;
    v32 = a2;
    a3 = v42;
    sub_10019F024(v31, a2, v42, v52);
    goto LABEL_66;
  }

  memset(v52, 0, 14);
  sub_100069E2C(a2, a3);
  sub_10019F024(v52, a2, a3, &v51);
  v28 = a2;
  if (!v47)
  {
    sub_10006A178(a2, a3);
    sub_10006A178(v15, v17);

    if (v51)
    {
      return v6;
    }

    goto LABEL_15;
  }

LABEL_88:
  result = sub_10006A178(v28, a3);
  __break(1u);
  return result;
}

uint64_t sub_100121D60(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v8 = *a1;
  v9 = sub_100121824(*a1, a2, a3);
  if (v3)
  {
    return v4;
  }

  if (v10)
  {
    if (v8 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v9;
  v57 = a1;
  v11 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
  }

  if (v6)
  {
    v12 = 0;
  }

  else
  {
    v12 = v5 == 0xC000000000000000;
  }

  v13 = !v12;
  v61 = v13;
  v62 = v5 >> 62;
  v14 = __OFSUB__(HIDWORD(v6), v6);
  v56 = v14;
  v55 = HIDWORD(v6) - v6;
  v59 = v5;
  v60 = BYTE6(v5);
  v58 = v6;
  while (1)
  {
    if (v8 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v4;
      }
    }

    else if (v11 == *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v4;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_24;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_102;
    }

    v16 = *(v8 + 8 * v11 + 32);
LABEL_24:
    v17 = v16;
    v18 = [v16 keyIdentifier];
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = v21 >> 62;
    if (v21 >> 62 == 3)
    {
      if (v19)
      {
        v23 = 0;
      }

      else
      {
        v23 = v21 == 0xC000000000000000;
      }

      v24 = v62;
      v26 = !v23 || v62 < 3;
      if (((v26 | v61) & 1) == 0)
      {
        v27 = 0;
        v28 = 0xC000000000000000;
LABEL_60:
        sub_10006A178(v27, v28);

        goto LABEL_17;
      }

LABEL_46:
      v29 = 0;
      if (v24 <= 1)
      {
        goto LABEL_43;
      }

      goto LABEL_47;
    }

    v24 = v62;
    if (v22 > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_46;
      }

      v31 = *(v19 + 16);
      v30 = *(v19 + 24);
      v15 = __OFSUB__(v30, v31);
      v29 = v30 - v31;
      if (v15)
      {
        goto LABEL_109;
      }

      if (v62 <= 1)
      {
        goto LABEL_43;
      }
    }

    else if (v22)
    {
      LODWORD(v29) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_108;
      }

      v29 = v29;
      if (v62 <= 1)
      {
LABEL_43:
        v32 = v60;
        if (v24)
        {
          v32 = v55;
          if (v56)
          {
            goto LABEL_106;
          }
        }

        goto LABEL_49;
      }
    }

    else
    {
      v29 = BYTE6(v21);
      if (v62 <= 1)
      {
        goto LABEL_43;
      }
    }

LABEL_47:
    if (v24 != 2)
    {
      if (!v29)
      {
LABEL_59:
        v27 = v19;
        v28 = v21;
        goto LABEL_60;
      }

LABEL_55:
      sub_10006A178(v19, v21);

      goto LABEL_56;
    }

    v34 = *(v6 + 16);
    v33 = *(v6 + 24);
    v15 = __OFSUB__(v33, v34);
    v32 = v33 - v34;
    if (v15)
    {
      goto LABEL_107;
    }

LABEL_49:
    if (v29 != v32)
    {
      goto LABEL_55;
    }

    if (v29 < 1)
    {
      goto LABEL_59;
    }

    if (v22 > 1)
    {
      if (v22 != 2)
      {
        memset(v64, 0, 14);
        sub_100069E2C(v6, v5);
LABEL_90:
        sub_10019F024(v64, v6, v5, &v63);
        sub_10006A178(v6, v5);
        sub_10006A178(v19, v21);

        if (v63)
        {
          goto LABEL_17;
        }

        goto LABEL_56;
      }

      v45 = v6;
      v46 = *(v19 + 16);
      v53 = *(v19 + 24);
      sub_100069E2C(v45, v5);
      v47 = __DataStorage._bytes.getter();
      if (v47)
      {
        v48 = __DataStorage._offset.getter();
        if (__OFSUB__(v46, v48))
        {
          goto LABEL_117;
        }

        v47 += v46 - v48;
      }

      if (__OFSUB__(v53, v46))
      {
        goto LABEL_114;
      }
    }

    else
    {
      if (!v22)
      {
        v64[0] = v19;
        LOWORD(v64[1]) = v21;
        BYTE2(v64[1]) = BYTE2(v21);
        BYTE3(v64[1]) = BYTE3(v21);
        BYTE4(v64[1]) = BYTE4(v21);
        BYTE5(v64[1]) = BYTE5(v21);
        sub_100069E2C(v6, v5);
        goto LABEL_90;
      }

      if (v19 >> 32 < v19)
      {
        goto LABEL_113;
      }

      sub_100069E2C(v58, v59);
      v49 = __DataStorage._bytes.getter();
      if (v49)
      {
        v54 = v49;
        v50 = __DataStorage._offset.getter();
        if (__OFSUB__(v19, v50))
        {
          goto LABEL_118;
        }

        v47 = v19 - v50 + v54;
      }

      else
      {
        v47 = 0;
      }
    }

    __DataStorage._length.getter();
    v51 = v47;
    v6 = v58;
    v5 = v59;
    sub_10019F024(v51, v58, v59, v64);
    sub_10006A178(v58, v59);
    sub_10006A178(v19, v21);

    if (v64[0])
    {
      goto LABEL_17;
    }

LABEL_56:
    if (v4 != v11)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          goto LABEL_110;
        }

        v37 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4 >= v37)
        {
          goto LABEL_111;
        }

        if (v11 >= v37)
        {
          goto LABEL_112;
        }

        v38 = *(v8 + 32 + 8 * v11);
        v35 = *(v8 + 32 + 8 * v4);
        v36 = v38;
      }

      v39 = v36;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
      {
        v8 = sub_1001A291C(v8);
        v40 = (v8 >> 62) & 1;
      }

      else
      {
        LODWORD(v40) = 0;
      }

      v41 = v8 & 0xFFFFFFFFFFFFFF8;
      v42 = *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
      *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v39;

      if ((v8 & 0x8000000000000000) != 0 || v40)
      {
        v8 = sub_1001A291C(v8);
        v41 = v8 & 0xFFFFFFFFFFFFFF8;
        v5 = v59;
        if ((v11 & 0x8000000000000000) != 0)
        {
LABEL_99:
          __break(1u);
          return v4;
        }
      }

      else
      {
        v5 = v59;
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_99;
        }
      }

      if (v11 >= *(v41 + 16))
      {
        goto LABEL_105;
      }

      v43 = v41 + 8 * v11;
      v44 = *(v43 + 32);
      *(v43 + 32) = v35;

      v6 = v58;
      *v57 = v8;
    }

    v15 = __OFADD__(v4++, 1);
    if (v15)
    {
      goto LABEL_104;
    }

LABEL_17:
    v15 = __OFADD__(v11++, 1);
    if (v15)
    {
      goto LABEL_103;
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1001223AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10012242C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SECNetworkConfiguration(uint64_t a1)
{
  result = qword_1005041E0;
  if (!qword_1005041E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001224E8(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100122554(uint64_t a1)
{
  v1[35] = a1;
  sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[40] = v2;
  v1[41] = *(v2 - 8);
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();

  return _swift_task_switch(sub_100122688, 0, 0);
}

void sub_100122688()
{
  v1 = objc_allocWithZone(NSUserDefaults);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithSuiteName:v2];

  if (!v3)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 valueForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  *(v0 + 16) = v20;
  *(v0 + 32) = v21;
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      v6 = *(v0 + 320);
      v7 = *(v0 + 328);
      v8 = *(v0 + 312);
      URL.init(string:)();
      v9 = *(v7 + 48);
      if (v9(v8, 1, v6) != 1)
      {
        v10 = *(v0 + 320);
        v11 = *(v0 + 304);
        v12 = *(*(v0 + 328) + 32);
        v12(*(v0 + 280), *(v0 + 312), v10);
        URL.init(string:)();
        if (v9(v11, 1, v10) != 1)
        {

          v13 = *(v0 + 320);
          v14 = *(v0 + 304);
          v15 = *(v0 + 280);
          v16 = type metadata accessor for SECNetworkConfiguration(0);
          v12(v15 + *(v16 + 20), v14, v13);

          v17 = *(v0 + 8);

          v17();
          return;
        }

LABEL_18:
        __break(1u);
        return;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }
  }

  else
  {
    sub_100075768(v0 + 16, &qword_100502420, &qword_10040F310);
  }

  v18 = swift_task_alloc();
  *(v0 + 360) = v18;
  *v18 = v0;
  v18[1] = sub_1001229A8;
  v19 = *(v0 + 352);

  sub_100123454(v19);
}

uint64_t sub_1001229A8()
{
  v2 = *v1;
  v2[46] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10012339C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[47] = v3;
    *v3 = v2;
    v3[1] = sub_100122B18;
    v4 = v2[44];

    return sub_1001257E0(v4);
  }
}

uint64_t sub_100122B18(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 384) = a1;
  *(v3 + 392) = v1;

  if (v1)
  {
    v4 = sub_1001232CC;
  }

  else
  {
    v4 = sub_100122C2C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100122C2C(uint64_t a1, uint64_t a2)
{
  v57 = v2;
  if (!*(v2[48] + 16))
  {
    goto LABEL_13;
  }

  v3 = sub_10008C908(0xD000000000000010, 0x80000001004637D0);
  if ((v4 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1000754F0(*(v2[48] + 56) + 32 * v3, (v2 + 6));
  sub_100068FC4(&qword_100505FD0, &qword_10040B550);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v5 = v2[32];
  if (!*(v5 + 16))
  {
    goto LABEL_12;
  }

  v6 = sub_10008C908(0x746C7561666564, 0xE700000000000000);
  if ((v7 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_1000754F0(*(v5 + 56) + 32 * v6, (v2 + 10));

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = v2[33];
  if (!*(v8 + 16) || (v9 = sub_10008C908(0x5255726576726573, 0xE90000000000004CLL), (v10 & 1) == 0) || (sub_1000754F0(*(v8 + 56) + 32 * v9, (v2 + 14)), (swift_dynamicCast() & 1) == 0))
  {
LABEL_12:

    goto LABEL_13;
  }

  v11 = v2[40];
  v12 = v2[41];
  v13 = v2[37];
  URL.init(string:)();

  v14 = *(v12 + 48);
  if (v14(v13, 1, v11) == 1)
  {
    v15 = v2[37];

    sub_100075768(v15, &unk_10050BEA0, &unk_10040F450);
    goto LABEL_13;
  }

  v31 = *(v2[41] + 32);
  v31(v2[43], v2[37], v2[40]);
  if (!*(v8 + 16))
  {
    goto LABEL_30;
  }

  v32 = sub_10008C908(0x6E6974726F706572, 0xE900000000000067);
  if ((v33 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_1000754F0(*(v8 + 56) + 32 * v32, (v2 + 18));

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    (*(v2[41] + 8))(v2[43], v2[40]);
    goto LABEL_13;
  }

  v34 = v2[34];
  if (!*(v34 + 16) || (v35 = sub_10008C908(7107189, 0xE300000000000000), (v36 & 1) == 0))
  {
LABEL_30:
    v43 = v2[43];
    v44 = v2[40];
    v45 = v2[41];

    (*(v45 + 8))(v43, v44);
    goto LABEL_13;
  }

  v55 = v31;
  sub_1000754F0(*(v34 + 56) + 32 * v35, (v2 + 22));

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_31;
  }

  v37 = v2[40];
  v38 = v2[41];
  v39 = v2[36];
  URL.init(string:)();

  v40 = v14(v39, 1, v37);
  v41 = *(v38 + 8);
  if (v40 != 1)
  {
    v46 = v2[43];
    v47 = v2[42];
    v48 = v2[40];
    v50 = v2[35];
    v49 = v2[36];
    v41(v2[44], v48);

    v55(v47, v49, v48);
    v55(v50, v46, v48);
    v51 = v2[42];
    v52 = v2[40];
    v53 = v2[35];
    v54 = type metadata accessor for SECNetworkConfiguration(0);
    v55(v53 + *(v54 + 20), v51, v52);

    v29 = v2[1];
    goto LABEL_19;
  }

  v42 = v2[36];
  v41(v2[43], v2[40]);
  sub_100075768(v42, &unk_10050BEA0, &unk_10040F450);
LABEL_13:
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000958E4(v16, qword_10051B2C8);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v56 = v20;
    *v19 = 136315138;
    v21 = Dictionary.description.getter();
    v23 = v22;

    v24 = sub_1002FFA0C(v21, v23, &v56);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "Invalid static config %s", v19, 0xCu);
    sub_1000752F4(v20);
  }

  else
  {
  }

  v25 = v2[44];
  v26 = v2[40];
  v27 = v2[41];
  sub_10009591C();
  swift_allocError();
  *v28 = 19;
  swift_willThrow();
  (*(v27 + 8))(v25, v26);

  v29 = v2[1];
LABEL_19:

  return v29();
}

uint64_t sub_1001232CC()
{
  (*(v0[41] + 8))(v0[44], v0[40]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10012339C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100123454(uint64_t a1)
{
  v1[23] = a1;
  v2 = type metadata accessor for URL();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v3 = type metadata accessor for URLRequest();
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();

  return _swift_task_switch(sub_1001235F8, 0, 0);
}

uint64_t sub_1001235F8()
{
  v0[34] = sub_100125180();
  v0[35] = v1;
  if (v1)
  {
    v2 = v0[30];
    v3 = v0[24];
    v4 = v0[25];
    URL.init(string:)();
    v5 = *(v4 + 48);
    v0[36] = v5;
    v0[37] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    result = v5(v2, 1, v3);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      URLRequest.init(url:cachePolicy:timeoutInterval:)();
      v7 = swift_task_alloc();
      v0[38] = v7;
      *v7 = v0;
      v7[1] = sub_1001237D0;
      v8 = v0[33];

      return sub_100159A70(v8, 0);
    }
  }

  else
  {
    v9 = swift_task_alloc();
    v0[42] = v9;
    *v9 = v0;
    v9[1] = sub_10012461C;

    return sub_100125254();
  }

  return result;
}

uint64_t sub_1001237D0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[39] = a1;
  v4[40] = a2;
  v4[41] = v2;

  if (v2)
  {

    v5 = sub_100124374;
  }

  else
  {
    v5 = sub_100123924;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100123924()
{
  v77 = v0;
  v1 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[20] = 0;
  v3 = [v1 propertyListWithData:isa options:0 format:0 error:v0 + 20];

  v4 = v0[20];
  if (!v3)
  {
    v27 = v0[39];
    v26 = v0[40];
    v29 = v0[32];
    v28 = v0[33];
    v30 = v0[31];
    v31 = v4;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10006A178(v27, v26);
    (*(v29 + 8))(v28, v30);
LABEL_30:

    v48 = v0[1];
    goto LABEL_31;
  }

  v5 = v4;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100068FC4(&qword_100505FD0, &qword_10040B550);
  if (!swift_dynamicCast())
  {

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000958E4(v32, qword_10051B2C8);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "getStaticConfigURL: Invalid environment retrieved", v35, 2u);
    }

    v37 = v0[39];
    v36 = v0[40];
    v39 = v0[32];
    v38 = v0[33];
    v40 = v0[31];

    goto LABEL_29;
  }

  v6 = v0[21];
  if (!*(v6 + 16) || (v7 = sub_10008C908(v0[34], v0[35]), (v8 & 1) == 0))
  {

LABEL_21:
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_1000958E4(v41, qword_10051B2C8);

    v19 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    v43 = os_log_type_enabled(v19, v42);
    v44 = v0[35];
    if (v43)
    {
      v45 = v0[34];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v76 = v22;
      *v21 = 136315138;
      v46 = sub_1002FFA0C(v45, v44, &v76);

      *(v21 + 4) = v46;
      v24 = "getStaticConfigURL: No urls for selected environment %s";
      v25 = v42;
      goto LABEL_25;
    }

LABEL_27:

    goto LABEL_28;
  }

  sub_1000754F0(*(v6 + 56) + 32 * v7, (v0 + 6));

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v9 = v0[22];
  if (!*(v9 + 16) || (v10 = sub_10008C908(0xD000000000000018, 0x8000000100463900), (v11 & 1) == 0) || (sub_1000754F0(*(v9 + 56) + 32 * v10, (v0 + 10)), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_1000958E4(v50, qword_10051B2C8);

    v19 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v51))
    {
      v52 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v52 = 136315394;
      *(v52 + 4) = sub_1002FFA0C(0xD000000000000018, 0x8000000100463900, &v76);
      *(v52 + 12) = 2080;
      v53 = Dictionary.description.getter();
      v55 = v54;

      v56 = sub_1002FFA0C(v53, v55, &v76);

      *(v52 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v19, v51, "getStaticConfigURL: Invalid value for key %s in dictionary %s", v52, 0x16u);
      swift_arrayDestroy();

      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v12 = v0[36];
  v13 = v0[29];
  v14 = v0[24];

  v16 = v0[17];
  v15 = v0[18];
  URL.init(string:)();
  if (v12(v13, 1, v14) == 1)
  {
    v17 = v0[29];

    sub_100075768(v17, &unk_10050BEA0, &unk_10040F450);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000958E4(v18, qword_10051B2C8);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v76 = v22;
      *v21 = 136315138;
      v23 = sub_1002FFA0C(v16, v15, &v76);

      *(v21 + 4) = v23;
      v24 = "getStaticConfigURL: Unable to form third party static config URL with %s";
      v25 = v20;
LABEL_25:
      _os_log_impl(&_mh_execute_header, v19, v25, v24, v21, 0xCu);
      sub_1000752F4(v22);

LABEL_26:

LABEL_28:
      v37 = v0[39];
      v36 = v0[40];
      v39 = v0[32];
      v38 = v0[33];
      v40 = v0[31];
LABEL_29:
      sub_10009591C();
      swift_allocError();
      *v47 = 19;
      swift_willThrow();
      sub_10006A178(v37, v36);
      (*(v39 + 8))(v38, v40);
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  v57 = *(v0[25] + 32);
  v57(v0[26], v0[29], v0[24]);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  sub_1000958E4(v58, qword_10051B2C8);

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.info.getter();

  v61 = os_log_type_enabled(v59, v60);
  v74 = v0[39];
  v75 = v0[40];
  v62 = v0[35];
  if (v61)
  {
    v63 = v0[34];
    v70 = v0[32];
    v71 = v0[31];
    v72 = v0[33];
    v73 = v57;
    v64 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v64 = 136315394;
    v65 = sub_1002FFA0C(v63, v62, &v76);

    *(v64 + 4) = v65;
    *(v64 + 12) = 2080;
    v66 = sub_1002FFA0C(v16, v15, &v76);

    *(v64 + 14) = v66;
    _os_log_impl(&_mh_execute_header, v59, v60, "getStaticConfigURL: Using override config URL for %s - returning static config URL %s", v64, 0x16u);
    swift_arrayDestroy();

    v57 = v73;

    sub_10006A178(v74, v75);

    (*(v70 + 8))(v72, v71);
  }

  else
  {
    v68 = v0[32];
    v67 = v0[33];
    v69 = v0[31];

    sub_10006A178(v74, v75);

    (*(v68 + 8))(v67, v69);
  }

  v57(v0[23], v0[26], v0[24]);

  v48 = v0[1];
LABEL_31:

  return v48();
}

uint64_t sub_100124374(uint64_t a1, uint64_t a2)
{
  v17 = v2;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v6 = 136315394;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_1002FFA0C(v7, v8, &v16);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1002FFA0C(0xD000000000000045, 0x80000001004638B0, &v16);
    _os_log_impl(&_mh_execute_header, v4, v5, "getStaticConfigURL: Network error encountered %s when getting environments from %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v2[32];
  v10 = v2[33];
  v12 = v2[31];
  sub_10009591C();
  swift_allocError();
  *v13 = 11;
  swift_willThrow();

  (*(v11 + 8))(v10, v12);

  v14 = v2[1];

  return v14();
}

uint64_t sub_10012461C(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 344) = a1 & 1;

    return _swift_task_switch(sub_1001247FC, 0, 0);
  }
}

uint64_t sub_1001247FC(uint64_t a1, uint64_t a2)
{
  v22 = v2;
  if (*(v2 + 344) == 1)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000958E4(v3, qword_10051B2C8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v21 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1002FFA0C(0xD000000000000066, 0x8000000100463840, &v21);
      _os_log_impl(&_mh_execute_header, v4, v5, "Prod SE, no env set - returning static config URL %s", v6, 0xCu);
      sub_1000752F4(v7);
    }

    else
    {
    }

    v13 = (v2 + 224);
    v9 = *(v2 + 224);
    v14 = *(v2 + 192);
    v15 = *(v2 + 200);
    URL.init(string:)();
    if ((*(v15 + 48))(v9, 1, v14) != 1)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000958E4(v8, qword_10051B2C8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1002FFA0C(0xD00000000000004DLL, 0x80000001004637F0, &v21);
      _os_log_impl(&_mh_execute_header, v9, v10, "Dev SE, no env set - returning static config URL %s", v11, 0xCu);
      sub_1000752F4(v12);

      goto LABEL_14;
    }
  }

LABEL_14:
  v13 = (v2 + 216);
  v16 = *(v2 + 216);
  v17 = *(v2 + 192);
  v18 = *(v2 + 200);
  URL.init(string:)();
  result = (*(v18 + 48))(v16, 1, v17);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

LABEL_15:
  (*(*(v2 + 200) + 32))(*(v2 + 184), *v13, *(v2 + 192));

  v20 = *(v2 + 8);

  return v20();
}

uint64_t sub_100124BD8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v26 = UUID.uuidString.getter();
  v27 = v8;
  v24 = 47;
  v25 = 0xE100000000000000;
  v24 = String.init<A>(_:)();
  v25 = v9;
  String.append<A>(contentsOf:)();

  v10 = v24;
  v11 = v25;
  v26 = a1;
  v27 = a2;
  v24 = 0x3D64496D6165743FLL;
  v25 = 0xE800000000000000;
  v24 = String.init<A>(_:)();
  v25 = v12;
  String.append<A>(contentsOf:)();
  v14 = v24;
  v13 = v25;
  v26 = URL.absoluteString.getter();
  v27 = v15;
  v16._object = 0x8000000100463790;
  v16._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v16);
  v17._countAndFlagsBits = v10;
  v17._object = v11;
  String.append(_:)(v17);
  v18._countAndFlagsBits = v14;
  v18._object = v13;
  String.append(_:)(v18);
  URL.init(string:)();
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  result = (*(v20 + 48))(v7, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v20 + 32))(v23, v7, v19);
  }

  return result;
}

uint64_t sub_100124E14@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  __chkstk_darwin(v1 - 8);
  v23 = &v21 - v2;
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = UUID.uuidString.getter();
  v27 = v11;
  v24 = 47;
  v25 = 0xE100000000000000;
  v24 = String.init<A>(_:)();
  v25 = v12;
  String.append<A>(contentsOf:)();

  v13 = v24;
  v14 = v25;
  v26 = 0xD000000000000019;
  v27 = 0x8000000100463770;
  (*(v4 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
  sub_10012512C();
  URL.appending<A>(path:directoryHint:)();
  (*(v4 + 8))(v6, v3);
  v15 = URL.absoluteString.getter();
  v17 = v16;
  (*(v8 + 8))(v10, v7);
  v26 = v15;
  v27 = v17;
  v18._countAndFlagsBits = v13;
  v18._object = v14;
  String.append(_:)(v18);
  v19 = v23;
  URL.init(string:)();
  result = (*(v8 + 48))(v19, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v8 + 32))(v22, v19, v7);
  }

  return result;
}

unint64_t sub_10012512C()
{
  result = qword_100504218;
  if (!qword_100504218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504218);
  }

  return result;
}

uint64_t sub_100125180()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  v2 = CFPreferencesCopyAppValue(v0, v1);

  if (!v2)
  {
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t sub_100125270()
{
  v1 = byte_100504180;
  if (byte_100504180 == 2)
  {
    v2 = objc_opt_self();
    v3 = String._bridgeToObjectiveC()();
    v0[23] = v3;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_10012540C;
    v4 = swift_continuation_init();
    v0[17] = sub_100068FC4(&qword_100503460, &qword_10040B560);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1001861F4;
    v0[13] = &unk_1004C7A88;
    v0[14] = v4;
    sub_1003AF710(v2, v3, v0 + 10);

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v5 = v0[1];

    return v5(v1 & 1);
  }
}

uint64_t sub_10012540C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1001255E8;
  }

  else
  {
    v2 = sub_10012551C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012551C()
{
  v1 = *(v0 + 168);

  v3 = sub_1003AF3C4(v1, v2);
  v4 = [v3 isProd];

  byte_100504180 = v4;
  v6 = sub_1003AF3C4(v1, v5);
  v7 = [v6 isProd];

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_1001255E8(uint64_t a1)
{
  v15 = v1;
  v2 = *(v1 + 184);
  swift_willThrow();

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_1002FFA0C(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "secureElementIsProd: NearField error %s encountered", v6, 0xCu);
    sub_1000752F4(v7);
  }

  sub_10009591C();
  swift_allocError();
  *v11 = 8;
  swift_willThrow();

  v12 = *(v1 + 8);

  return v12(0);
}

uint64_t sub_1001257E0(uint64_t a1)
{
  v1[16] = a1;
  v2 = type metadata accessor for URL();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v3 = type metadata accessor for URLRequest();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_100125934, 0, 0);
}

uint64_t sub_100125934()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[16];
  v5 = *(v3 + 16);
  v0[24] = v5;
  v0[25] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_100125A54;
  v7 = v0[23];

  return sub_100159A70(v7, 0);
}

uint64_t sub_100125A54(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[27] = a1;
  v4[28] = a2;
  v4[29] = v2;

  if (v2)
  {
    v5 = sub_100126040;
  }

  else
  {
    v5 = sub_100125B98;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100125B98()
{
  v30 = v0;
  v1 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[13] = 0;
  v3 = [v1 JSONObjectWithData:isa options:0 error:v0 + 13];

  v4 = v0[13];
  if (v3)
  {
    v5 = v4;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100068FC4(&qword_100505FD0, &qword_10040B550);
    if (swift_dynamicCast())
    {
      v6 = v0[27];
      v7 = v0[28];
      (*(v0[22] + 8))(v0[23], v0[21]);
      sub_10006A178(v6, v7);
      v8 = v0[15];

      v9 = v0[1];

      return v9(v8);
    }

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000958E4(v12, qword_10051B2C8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "getViennaConfig: Invalid static config retrieved", v15, 2u);
    }

    sub_10009591C();
    swift_allocError();
    *v16 = 14;
  }

  else
  {
    v11 = v4;
    _convertNSErrorToError(_:)();
  }

  swift_willThrow();
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000958E4(v17, qword_10051B2C8);
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v29 = v21;
    *v20 = 136315138;
    swift_getErrorValue();
    v22 = Error.localizedDescription.getter();
    v24 = sub_1002FFA0C(v22, v23, &v29);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "getViennaConfig: JSON error %s when serializing static config", v20, 0xCu);
    sub_1000752F4(v21);
  }

  v26 = v0[27];
  v25 = v0[28];
  sub_10009591C();
  swift_allocError();
  *v27 = 14;
  swift_willThrow();
  sub_10006A178(v26, v25);

  (*(v0[22] + 8))(v0[23], v0[21]);

  v28 = v0[1];

  return v28();
}

uint64_t sub_100126040(uint64_t a1, uint64_t a2)
{
  v28 = v2;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = v2[24];
  v4 = v2[19];
  v6 = v2[16];
  v5 = v2[17];
  v7 = type metadata accessor for Logger();
  sub_1000958E4(v7, qword_10051B2C8);
  v3(v4, v6, v5);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v11 = v2[18];
    v10 = v2[19];
    v12 = v2[17];
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136315394;
    swift_getErrorValue();
    v14 = Error.localizedDescription.getter();
    v16 = sub_1002FFA0C(v14, v15, &v27);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    sub_10012634C();
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v11 + 8))(v10, v12);
    v20 = sub_1002FFA0C(v17, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "getViennaConfig: Network error encountered %s when getting vienna config from %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = v2[18];
    v21 = v2[19];
    v23 = v2[17];

    (*(v22 + 8))(v21, v23);
  }

  sub_10009591C();
  swift_allocError();
  *v24 = 11;
  swift_willThrow();

  (*(v2[22] + 8))(v2[23], v2[21]);

  v25 = v2[1];

  return v25();
}

unint64_t sub_10012634C()
{
  result = qword_100504220;
  if (!qword_100504220)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504220);
  }

  return result;
}

__n128 sub_1001263BC@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100068FC4(&unk_100504890, &qword_10040B568);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - v7;
  v9 = sub_100068FC4(&qword_100504228, &unk_10040F470);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - v11;
  if (qword_1005019B0 != -1)
  {
    swift_once();
  }

  v13 = sub_1000958E4(v9, qword_1005047B0);
  (*(v10 + 16))(v12, v13, v9);
  UserDefaultBacked.wrappedValue.getter();
  (*(v10 + 8))(v12, v9);
  v14 = v50;
  if (!v50)
  {
    v25 = a1;
    sub_1001409BC(a1, v51);
    if (v2)
    {
      return result;
    }

    v26 = v51[2];
    v27 = v51[3];
    v29 = v51[4];
    v28 = v51[5];
    v30 = v51[6];
    v31 = v51[7];
    v32 = v51[8];
    v14 = v51[9];
    v34 = v51[10];
    v33 = v51[11];
    v55 = v52;
    v56 = v53;
    v35 = v54;
    v36 = v51[0];
    v37 = v51[1];
    goto LABEL_18;
  }

  v46 = a1;
  v57 = v2;
  v45 = v49;
  if (qword_1005019B8 != -1)
  {
    swift_once();
  }

  v15 = sub_1000958E4(v5, qword_1005047C8);
  v16 = *(v6 + 16);
  v16(v8, v15, v5);
  UserDefaultBacked.wrappedValue.getter();
  v17 = *(v6 + 8);
  v17(v8, v5);
  if ((v50 & 1) == 0)
  {
    v44 = v49;
    if (qword_1005019C0 != -1)
    {
      swift_once();
    }

    v18 = sub_1000958E4(v5, qword_1005047E0);
    v16(v8, v18, v5);
    UserDefaultBacked.wrappedValue.getter();
    v17(v8, v5);
    if ((v50 & 1) == 0)
    {
      v43 = v49;
      v49 = 0x64497070612ELL;
      v50 = 0xE600000000000000;
      v32 = v45;
      v47 = v45;
      v48 = v14;

      v47 = String.init<A>(_:)();
      v48 = v38;
      String.append<A>(contentsOf:)();
      v42 = v47;
      v27 = v48;
      v49 = 0x49656C646E75622ELL;
      v50 = 0xE900000000000064;
      v47 = v32;
      v48 = v14;

      v47 = String.init<A>(_:)();
      v48 = v39;
      String.append<A>(contentsOf:)();
      v29 = v47;
      v28 = v48;
      v49 = 0x64496D6165742ELL;
      v50 = 0xE700000000000000;
      v47 = v32;
      v48 = v14;

      v47 = String.init<A>(_:)();
      v48 = v40;
      String.append<A>(contentsOf:)();
      v30 = v47;
      v31 = v48;

      [v46 auditToken];
      v26 = v42;
      v34 = v43;
      v35 = 0;
      v36 = v32;
      v37 = v14;
      v33 = v44;
LABEL_18:
      *a2 = v36;
      *(a2 + 8) = v37;
      *(a2 + 16) = v26;
      *(a2 + 24) = v27;
      *(a2 + 32) = v29;
      *(a2 + 40) = v28;
      *(a2 + 48) = v30;
      *(a2 + 56) = v31;
      *(a2 + 64) = v32;
      *(a2 + 72) = v14;
      *(a2 + 80) = v34;
      *(a2 + 88) = v33;
      result = v55;
      v41 = v56;
      *(a2 + 96) = v55;
      *(a2 + 112) = v41;
      *(a2 + 128) = v35;
      return result;
    }
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000958E4(v19, qword_10051B2C8);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Missing App Store fields in debug", v22, 2u);
  }

  sub_10009591C();
  swift_allocError();
  *v23 = 23;
  swift_willThrow();
  return result;
}

uint64_t sub_100126A58(void *a1)
{
  [a1 auditToken];
  result = audit_token_to_pid(&v6);
  if ((result & 0x80000000) != 0)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000958E4(v2, qword_10051B2C8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Invalid pid on xpc connection", v5, 2u);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void sub_100126B60(void *a1, id *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  [a1 invalidate];
  [*a2 endSession];
  if (qword_100501970 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000958E4(v8, qword_100504230);

  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1002FFA0C(a4, a5, &v13);
    _os_log_impl(&_mh_execute_header, oslog, v9, "Ended NFCredentialSession for reason: %s", v10, 0xCu);
    sub_1000752F4(v11);
  }
}

void sub_100126CD8(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100504248, &qword_10040B570);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  v6 = objc_opt_self();
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  aBlock[4] = sub_100127448;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A409C;
  aBlock[3] = &unk_1004C7AD8;
  v9 = _Block_copy(aBlock);

  [v6 sharedHardwareManager:v9];
  _Block_release(v9);
}

uint64_t sub_100126E94(void *a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100504248, &qword_10040B570);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - v7;
  if (a1)
  {
    (*(v5 + 16))(v8, a2, v4, v6);
    v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v10 = swift_allocObject();
    (*(v5 + 32))(v10 + v9, v8, v4);
    aBlock[4] = sub_100127570;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000BBFA0;
    aBlock[3] = &unk_1004C7B28;
    v11 = _Block_copy(aBlock);
    v12 = a1;

    v13 = [v12 startCredentialSession:v11];
    _Block_release(v11);

    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100501970 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000958E4(v15, qword_100504230);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "startNFCredentialSession: Failed to get NFHardwareManager", v18, 2u);
    }

    sub_10009591C();
    v19 = swift_allocError();
    *v20 = 9;
    aBlock[0] = v19;
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_10012715C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v15[0] = a1;
    v15[1] = voucher_copy();
    sub_100068FC4(&qword_100504248, &qword_10040B570);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (qword_100501970 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000958E4(v4, qword_100504230);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15[0] = v8;
      *v7 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v9 = Error.localizedDescription.getter();
        v11 = v10;
      }

      else
      {
        v11 = 0x80000001004639B0;
        v9 = 0xD000000000000017;
      }

      v12 = sub_1002FFA0C(v9, v11, v15);

      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "startNFCredentialSession: Failed to start NFCredentialSession with error %s", v7, 0xCu);
      sub_1000752F4(v8);
    }

    sub_10009591C();
    v13 = swift_allocError();
    *v14 = 8;
    v15[0] = v13;
    sub_100068FC4(&qword_100504248, &qword_10040B570);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_10012737C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_100504230);
  v3 = sub_1000958E4(v2, qword_100504230);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v4 = sub_1000958E4(v2, qword_10051B2C8);
  v5 = *(*(v2 - 8) + 16);

  return v5(v3, v4, v2);
}

uint64_t sub_100127448(void *a1)
{
  v3 = *(sub_100068FC4(&qword_100504248, &qword_10040B570) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100126E94(a1, v4);
}

uint64_t sub_1001274C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001274DC()
{
  v1 = sub_100068FC4(&qword_100504248, &qword_10040B570);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100127570(void *a1, uint64_t a2)
{
  sub_100068FC4(&qword_100504248, &qword_10040B570);

  return sub_10012715C(a1, a2);
}

uint64_t sub_100127608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[259] = v18;
  v8[258] = a8;
  v8[257] = a7;
  v8[256] = a6;
  v8[255] = a5;
  v8[254] = a4;
  sub_100068FC4(&unk_100504270, &qword_10040B598);
  v8[260] = swift_task_alloc();
  v9 = type metadata accessor for Calendar.Identifier();
  v8[261] = v9;
  v8[262] = *(v9 - 8);
  v8[263] = swift_task_alloc();
  v10 = type metadata accessor for Calendar();
  v8[264] = v10;
  v8[265] = *(v10 - 8);
  v8[266] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v8[267] = v11;
  v8[268] = *(v11 - 8);
  v8[269] = swift_task_alloc();
  v8[270] = swift_task_alloc();
  v8[271] = type metadata accessor for PresentmentInfo(0);
  v8[272] = swift_task_alloc();
  sub_100068FC4(&qword_100504258, &qword_10040F8A0);
  v8[273] = swift_task_alloc();
  v12 = type metadata accessor for DispatchTime();
  v8[274] = v12;
  v8[275] = *(v12 - 8);
  v8[276] = swift_task_alloc();
  v13 = _s19SECSessionAnalyticsC16ElapsedTimeEventVMa(0);
  v8[277] = v13;
  v8[278] = *(v13 - 8);
  v8[279] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v8[280] = v14;
  v8[281] = *(v14 - 8);
  v8[282] = swift_task_alloc();
  v8[283] = swift_task_alloc();
  v8[284] = swift_task_alloc();
  v8[285] = swift_task_alloc();
  v8[286] = swift_task_alloc();
  v8[287] = swift_task_alloc();
  v15 = type metadata accessor for StateInternal();
  v8[288] = v15;
  v8[289] = *(v15 - 8);
  v8[290] = swift_task_alloc();

  return _swift_task_switch(sub_100127A20, 0, 0);
}

uint64_t sub_100127A20(uint64_t a1, uint64_t a2)
{
  v99 = v2;
  v3 = v2[254];
  v4 = *(v3 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 24);
  if (!(v4 >> 62) || v4 >> 62 != 1 && (v4 == 0x8000000000000000 ? (v5 = (*(v3 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 8) | *(v3 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 16) | *(v3 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState)) == 0) : (v5 = 0), !v5))
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10051B2C8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Attempted to enter card emulation in invalid state", v9, 2u);
    }

    sub_10009591C();
    v11 = swift_allocError();
    v12 = 10;
    goto LABEL_50;
  }

  v13 = OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo;
  v2[291] = OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo;
  if (*(v3 + v13 + 128))
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000958E4(v14, qword_10051B2C8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Card Emulation is not available on non-application clients", v17, 2u);
    }

    sub_10009591C();
    v11 = swift_allocError();
    v12 = 15;
    goto LABEL_50;
  }

  if (!sub_1001D0A10())
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_1000958E4(v56, qword_10051B2C8);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "NFC not enabled", v59, 2u);
    }

    sub_10009591C();
    v11 = swift_allocError();
    v12 = 22;
    goto LABEL_50;
  }

  v18 = v2[255];
  v19 = v2[254];
  v20 = OBJC_IVAR____TtC10seserviced14SECUserSession_credentials;
  swift_beginAccess();
  v21 = *(v19 + v20);
  v22 = swift_task_alloc();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v18;

  v23 = sub_10033322C(sub_10012E2D4, v22, v21);

  if (!(v23 >> 62))
  {
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

LABEL_45:

    if (qword_1005019D8 == -1)
    {
LABEL_46:
      v80 = v2[282];
      v81 = v2[281];
      v82 = v2[280];
      v83 = v2[255];
      v84 = type metadata accessor for Logger();
      sub_1000958E4(v84, qword_10051B2C8);
      (*(v81 + 16))(v80, v83, v82);
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();
      v87 = os_log_type_enabled(v85, v86);
      v88 = v2[282];
      v89 = v2[281];
      v90 = v2[280];
      if (v87)
      {
        v91 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *v91 = 136315394;
        *(v91 + 4) = sub_1002FFA0C(0xD000000000000037, 0x80000001004639E0, &v98);
        *(v91 + 12) = 2080;
        v92 = UUID.uuidString.getter();
        v94 = v93;
        (*(v89 + 8))(v88, v90);
        v95 = sub_1002FFA0C(v92, v94, &v98);

        *(v91 + 14) = v95;
        _os_log_impl(&_mh_execute_header, v85, v86, "%s: Credential %s not found", v91, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v89 + 8))(v88, v90);
      }

      sub_10009591C();
      v11 = swift_allocError();
      v12 = 1;
LABEL_50:
      *v10 = v12;
      swift_willThrow();
LABEL_51:
      v2[329] = v11;
      v96 = swift_task_alloc();
      v2[330] = v96;
      *v96 = v2;
      v96[1] = sub_10012BD84;

      return sub_1001FF5CC();
    }

LABEL_56:
    swift_once();
    goto LABEL_46;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_45;
  }

LABEL_21:
  if ((v23 & 0xC000000000000001) == 0)
  {
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v24 = *(v23 + 32);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_56;
  }

  v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_24:
  v25 = v24;
  v2[292] = v24;
  v26 = v2[290];
  v27 = v2[289];
  v28 = v2[288];

  CredentialInternal.state.getter();
  v29 = (*(v27 + 88))(v26, v28);
  v30 = v2[290];
  v31 = v2[289];
  v32 = v2[288];
  if (v29 != enum case for StateInternal.installed(_:))
  {
    (*(v31 + 8))(v2[290], v32);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v60 = v2[283];
    v61 = v2[281];
    v62 = v2[280];
    v63 = v2[255];
    v64 = type metadata accessor for Logger();
    sub_1000958E4(v64, qword_10051B2C8);
    (*(v61 + 16))(v60, v63, v62);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v2[283];
    v69 = v2[281];
    v70 = v2[280];
    if (v67)
    {
      v71 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *v71 = 136315394;
      *(v71 + 4) = sub_1002FFA0C(0xD000000000000037, 0x80000001004639E0, &v98);
      *(v71 + 12) = 2080;
      v72 = UUID.uuidString.getter();
      v73 = v25;
      v75 = v74;
      (*(v69 + 8))(v68, v70);
      v76 = sub_1002FFA0C(v72, v75, &v98);
      v25 = v73;

      *(v71 + 14) = v76;
      _os_log_impl(&_mh_execute_header, v65, v66, "%s: Credential %s not installed", v71, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v69 + 8))(v68, v70);
    }

    sub_10009591C();
    v11 = swift_allocError();
    *v79 = 7;
    swift_willThrow();

    goto LABEL_51;
  }

  (*(v31 + 96))(v2[290], v32);
  v2[293] = *v30;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v33 = v2[287];
  v34 = v2[281];
  v35 = v2[280];
  v36 = v2[255];
  v37 = v2[254];
  v38 = type metadata accessor for Logger();
  v2[294] = sub_1000958E4(v38, qword_10051B2C8);
  v39 = *(v34 + 16);
  v2[295] = v39;
  v2[296] = (v34 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v39(v33, v36, v35);
  v40 = v37;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();

  v43 = os_log_type_enabled(v41, v42);
  v44 = v2[287];
  v45 = v2[281];
  v46 = v2[280];
  if (v43)
  {
    v47 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *v47 = 136315394;
    v48 = UUID.uuidString.getter();
    v97 = v25;
    v50 = sub_1002FFA0C(v48, v49, &v98);

    *(v47 + 4) = v50;
    *(v47 + 12) = 2080;
    v51 = UUID.uuidString.getter();
    v53 = v52;
    v54 = *(v45 + 8);
    v54(v44, v46);
    v55 = sub_1002FFA0C(v51, v53, &v98);
    v25 = v97;

    *(v47 + 14) = v55;
    _os_log_impl(&_mh_execute_header, v41, v42, "Session %s: Starting card emulation for credential %s", v47, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v54 = *(v45 + 8);
    v54(v44, v46);
  }

  v2[297] = v54;
  v77 = swift_task_alloc();
  v2[298] = v77;
  *v77 = v2;
  v77[1] = sub_100128600;

  return sub_1001FDAE0(v25);
}

uint64_t sub_100128600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[299] = a1;
  v6[300] = a2;
  v6[301] = a3;
  v6[302] = a4;
  v6[303] = v4;

  if (v4)
  {
    v7 = sub_10012C048;
  }

  else
  {
    v7 = sub_100128750;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100128750()
{
  v39 = v0;
  v1 = v0[300];
  if (v1)
  {
    v2 = v0[292];
    v3 = v1;
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[286];
      v36 = v0[280];
      v37 = v0[297];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v38 = v9;
      *v8 = 136315138;
      CredentialInternal.identifier.getter();
      v10 = UUID.uuidString.getter();
      v12 = v11;
      v37(v7, v36);
      v13 = sub_1002FFA0C(v10, v12, &v38);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "Starting handle to arm credential %s for card emulation", v8, 0xCu);
      sub_1000752F4(v9);
    }

    v14 = v0[302];
    v15 = v0[301];
    v16 = v0[300];
    v17 = v0[299];
    v18 = v15;
    v19 = v14;
    v20 = v3;
    v21 = v17;
    sub_1001FEFA8(v17, v16, v15, v14);
    if (qword_100501DC8 != -1)
    {
      swift_once();
    }

    v0[304] = qword_10051B858;
    v22 = swift_task_alloc();
    v0[305] = v22;
    *v22 = v0;
    v22[1] = sub_100128B80;
    v23 = v0[292];

    return sub_100301130(v23);
  }

  else
  {

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v38 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1002FFA0C(0xD000000000000037, 0x80000001004639E0, &v38);
      _os_log_impl(&_mh_execute_header, v25, v26, "%s: NFCredentialSession in handle has been invalidated", v27, 0xCu);
      sub_1000752F4(v28);
    }

    v29 = v0[302];
    v30 = v0[301];
    v31 = v0[299];
    v32 = v0[292];
    sub_10009591C();
    v33 = swift_allocError();
    *v34 = 9;
    swift_willThrow();

    v0[329] = v33;
    v35 = swift_task_alloc();
    v0[330] = v35;
    *v35 = v0;
    v35[1] = sub_10012BD84;

    return sub_1001FF5CC();
  }
}

uint64_t sub_100128B80()
{
  *(*v1 + 2448) = v0;

  if (v0)
  {
    v2 = sub_10012C11C;
  }

  else
  {
    v2 = sub_100128CC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100128CC0()
{
  v1 = v0[300];
  v0[10] = v0;
  v0[15] = v0 + 251;
  v0[11] = sub_100128E14;
  v2 = swift_continuation_init();
  v0[213] = sub_100068FC4(&unk_1005073E0, &qword_10040B5A0);
  v0[210] = v2;
  v0[206] = _NSConcreteStackBlock;
  v0[207] = 1107296256;
  v0[208] = sub_1001FDA0C;
  v0[209] = &unk_1004C7C40;
  [v1 requestSETransceiverWithCompletion:v0 + 206];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_100128E14()
{
  v1 = *(*v0 + 112);
  *(*v0 + 2456) = v1;
  if (v1)
  {

    v2 = sub_10012C228;
  }

  else
  {
    v2 = sub_100128F58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100128F58()
{
  v176 = v0;
  v1 = v0;
  v2 = v0[251];
  v0[308] = v2;
  if (!v2)
  {

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v175[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1002FFA0C(0xD000000000000037, 0x80000001004639E0, v175);
      _os_log_impl(&_mh_execute_header, v16, v17, "%s: Unable to get transceiver", v18, 0xCu);
      sub_1000752F4(v19);
    }

    v20 = v0[302];
    v21 = v1[301];
    v22 = v1[300];
    v23 = v1[299];
    v24 = v1[292];
    sub_10009591C();
    v25 = swift_allocError();
    *v26 = 9;
    swift_willThrow();
    goto LABEL_107;
  }

  v0[250] = 0;
  v3 = [v2 listAppletsAndRefreshCache:0 outError:v0 + 250];
  v4 = v0[250];
  if (!v3)
  {
    v167 = v2;
    v27 = v4;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v175[0] = swift_slowAlloc();
      *v30 = 136315394;
      *(v30 + 4) = sub_1002FFA0C(0xD000000000000037, 0x80000001004639E0, v175);
      *(v30 + 12) = 2080;
      swift_getErrorValue();
      v31 = Error.localizedDescription.getter();
      v33 = sub_1002FFA0C(v31, v32, v175);

      *(v30 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s: Nearfield error %s encountered when listing applets", v30, 0x16u);
      swift_arrayDestroy();
    }

    v34 = v0[302];
    v35 = v0[301];
    v36 = v0[300];
    v37 = v0[299];
    v38 = v0[292];
    [v167 invalidate];
    sub_10009591C();
    v25 = swift_allocError();
    *v39 = 8;
    swift_willThrow();

    swift_unknownObjectRelease();

    goto LABEL_108;
  }

  v5 = v3;
  v6 = v0[293];
  v0[309] = sub_10012E2F8();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v4;

  [v2 invalidate];
  v174 = v0;
  if (v6 >> 62)
  {
    goto LABEL_23;
  }

  v9 = v6 & 0xFFFFFFFFFFFFFF8;
  v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10 > 1)
  {
    while (1)
    {
      v172 = v7;
      v11 = 0;
      v6 &= 0xC000000000000001;
      v7 = v1[293] + 32;
      while (1)
      {
        if (v6)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v9 + 16))
          {
            goto LABEL_22;
          }

          v12 = *(v7 + 8 * v11);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        InstanceInfoInternal.type.getter();
        v15 = InstanceTypeInternal.rawValue.getter();
        if (v15 == InstanceTypeInternal.rawValue.getter())
        {
          v7 = v172;
          goto LABEL_31;
        }

        ++v11;
        if (v14 == v10)
        {
          goto LABEL_68;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v9 = v6 & 0xFFFFFFFFFFFFFF8;
      v40 = _CocoaArrayWrapper.endIndex.getter();
      v41 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v41;
      if (v40 < 2)
      {
        break;
      }

      if (!v41)
      {
        goto LABEL_68;
      }
    }
  }

  if (!v10)
  {
LABEL_68:

LABEL_103:
    v145 = v1[295];
    v146 = v1[284];
    v147 = v1[280];
    v148 = v1[255];

    v145(v146, v148, v147);
    v149 = Logger.logObject.getter();
    v150 = static os_log_type_t.error.getter();
    v151 = os_log_type_enabled(v149, v150);
    v152 = v1[297];
    v153 = v1[284];
    v154 = v1[280];
    if (v151)
    {
      v155 = swift_slowAlloc();
      v175[0] = swift_slowAlloc();
      *v155 = 136315394;
      *(v155 + 4) = sub_1002FFA0C(0xD000000000000037, 0x80000001004639E0, v175);
      *(v155 + 12) = 2080;
      v156 = UUID.uuidString.getter();
      v158 = v157;
      v152(v153, v154);
      v159 = sub_1002FFA0C(v156, v158, v175);

      *(v155 + 14) = v159;
      _os_log_impl(&_mh_execute_header, v149, v150, "%s: No applets are associated with credential with UUID %s", v155, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v152(v153, v154);
    }

    v1 = v174;
    v20 = v174[302];
    v21 = v174[301];
    v22 = v174[300];
    v23 = v174[299];
    v24 = v174[292];
    sub_10009591C();
    v25 = swift_allocError();
    *v160 = 5;
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_107:

LABEL_108:
    v1[329] = v25;
    v161 = swift_task_alloc();
    v1[330] = v161;
    *v161 = v1;
    v161[1] = sub_10012BD84;

    return sub_1001FF5CC();
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v42 = *(v1[293] + 32);
  }

  v13 = v42;
LABEL_31:
  v1[310] = v13;
  if (v7 >> 62)
  {
    goto LABEL_101;
  }

  v43 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v43)
  {
LABEL_102:

    goto LABEL_103;
  }

LABEL_33:
  v44 = 0;
  v163 = v1 + 245;
  v164 = (v1 + 372);
  v165 = (v1 + 51);
  v166 = v1 + 214;
  v169 = v7 & 0xFFFFFFFFFFFFFF8;
  v170 = v7 & 0xC000000000000001;
  v45 = v1[306];
  v173 = v7;
  v168 = v43;
  while (1)
  {
    if (v170)
    {
      v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v44 >= *(v169 + 16))
      {
        goto LABEL_93;
      }

      v47 = *(v7 + 8 * v44 + 32);
    }

    v48 = v47;
    v1[311] = v47;
    v1 = (v44 + 1);
    if (__OFADD__(v44, 1))
    {
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v49 = InstanceInfoInternal.instanceAID.getter();
    v51 = v50;
    v52 = [v48 identifierAsData];
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    v55 = v51 >> 62;
    v56 = v54 >> 62;
    if (v51 >> 62 == 3)
    {
      break;
    }

    if (v55)
    {
      if (v55 == 1)
      {
        LODWORD(v57) = HIDWORD(v49) - v49;
        if (__OFSUB__(HIDWORD(v49), v49))
        {
          goto LABEL_100;
        }

        v57 = v57;
      }

      else
      {
        v59 = *(v49 + 16);
        v58 = *(v49 + 24);
        v60 = __OFSUB__(v58, v59);
        v57 = v58 - v59;
        if (v60)
        {
          goto LABEL_99;
        }
      }
    }

    else
    {
      v57 = BYTE6(v51);
    }

LABEL_54:
    if (v56 > 1)
    {
      if (v56 != 2)
      {
        if (!v57)
        {
          goto LABEL_69;
        }

LABEL_35:

        sub_10006A178(v7, v54);
        sub_10006A178(v49, v51);
        goto LABEL_36;
      }

      v62 = *(v7 + 16);
      v61 = *(v7 + 24);
      v60 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v60)
      {
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        v43 = _CocoaArrayWrapper.endIndex.getter();
        if (!v43)
        {
          goto LABEL_102;
        }

        goto LABEL_33;
      }

      if (v57 != v63)
      {
        goto LABEL_35;
      }
    }

    else if (v56)
    {
      if (__OFSUB__(HIDWORD(v7), v7))
      {
        goto LABEL_98;
      }

      if (v57 != HIDWORD(v7) - v7)
      {
        goto LABEL_35;
      }
    }

    else if (v57 != BYTE6(v54))
    {
      goto LABEL_35;
    }

    if (v57 < 1)
    {
LABEL_69:
      sub_10006A178(v7, v54);
      v65 = v49;
      v66 = v51;
      goto LABEL_70;
    }

    sub_100069E2C(v7, v54);
    v64 = sub_10008C678(v49, v51, v7, v54);
    sub_10006A178(v49, v51);
    sub_10006A178(v7, v54);
    if (v64)
    {
      goto LABEL_71;
    }

LABEL_36:
    ++v44;
    v46 = v1 == v168;
    v7 = v173;
    v1 = v174;
    if (v46)
    {
      goto LABEL_102;
    }
  }

  v57 = 0;
  if (v49)
  {
    goto LABEL_54;
  }

  if (v51 != 0xC000000000000000)
  {
    goto LABEL_54;
  }

  if (v54 >> 62 != 3)
  {
    goto LABEL_54;
  }

  v57 = 0;
  if (v7 || v54 != 0xC000000000000000)
  {
    goto LABEL_54;
  }

  sub_10006A178(0, 0xC000000000000000);
  v65 = 0;
  v66 = 0xC000000000000000;
LABEL_70:
  sub_10006A178(v65, v66);
LABEL_71:
  v1 = v174;
  if (![v48 managedBySP] || (v67 = objc_msgSend(v48, "rawGPState"), type metadata accessor for InstanceInfoInternal(), v67 == static InstanceInfoInternal.instanceLifeCycleStateTerminated.getter()) || (objc_msgSend(v48, "isGPLocked") & 1) != 0)
  {

    goto LABEL_103;
  }

  if (sub_1002B3D04(0x554245445F4D4143, 0xEA00000000005F47, v174[256], v174[257]))
  {
    if (!SESInternalVariant())
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v68 = v174[257];
    v69 = v174[256];
    v174[245] = 95;
    v174[246] = 0xE100000000000000;
    v70 = swift_task_alloc();
    *(v70 + 16) = v163;

    v72 = sub_10029F26C(0x7FFFFFFFFFFFFFFFLL, 1, sub_10012E558, v70, v69, v68, v71);
    v174[312] = v45;

    if (v72[2])
    {

      v73 = static String._fromSubstring(_:)();
      v75 = v74;

      v174[313] = sub_10013044C(v73, v75);
      v174[314] = v76;
      if (v76 >> 60 != 15)
      {
        v77 = v174[300];

        sub_100068FC4(&qword_100504060, &qword_10040B370);
        v78 = swift_allocObject();
        *(v78 + 16) = xmmword_100409E40;
        *(v78 + 32) = v48;
        v79 = v48;
        isa = Array._bridgeToObjectiveC()().super.isa;
        v174[315] = isa;

        v81 = Data._bridgeToObjectiveC()().super.isa;
        v174[316] = v81;
        v174[2] = v174;
        v174[3] = sub_10012A324;
        v82 = swift_continuation_init();
        v174[197] = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
        v174[194] = v82;
        v174[190] = _NSConcreteStackBlock;
        v174[191] = 1107296256;
        v174[192] = sub_1001E95B0;
        v174[193] = &unk_1004C7CB8;
        [v77 startCardEmulationWithApplets:isa externalAuth:v81 completion:v174 + 190];

        return _swift_continuation_await(v174 + 2);
      }

LABEL_95:
      v175[0] = 0;
      v175[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v143._object = 0x80000001004639E0;
      v143._countAndFlagsBits = 0xD000000000000037;
      String.append(_:)(v143);
      v144._countAndFlagsBits = 0xD000000000000031;
      v144._object = 0x8000000100463AD0;
      String.append(_:)(v144);
      return _assertionFailure(_:_:file:line:flags:)();
    }

LABEL_94:

    goto LABEL_95;
  }

  v83 = v174[254];
  v84 = &v83[v174[291]];
  *v166 = 0u;
  v166[1] = 0u;
  v85 = *(v84 + 5);
  v86 = *(v84 + 6);
  v87 = *(v84 + 7);
  *(v165 + 128) = v84[128];
  *(v165 + 96) = v86;
  *(v165 + 112) = v87;
  *(v165 + 80) = v85;
  v88 = *(v84 + 1);
  v89 = *(v84 + 2);
  v90 = *(v84 + 4);
  *(v165 + 48) = *(v84 + 3);
  *(v165 + 64) = v90;
  *(v165 + 16) = v88;
  *(v165 + 32) = v89;
  *v165 = *v84;
  if (*(v174 + 536) > 1u)
  {
    sub_10012E344(v165, (v174 + 68));

    sub_10012E3A0(v165);
    v109 = v83;
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = v174[254] + v174[291];
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v175[0] = v114;
      *v113 = 136315138;
      *(v174 + 51) = *v112;
      v115 = *(v112 + 64);
      v117 = *(v112 + 16);
      v116 = *(v112 + 32);
      *(v174 + 54) = *(v112 + 48);
      *(v174 + 55) = v115;
      *(v174 + 52) = v117;
      *(v174 + 53) = v116;
      v119 = *(v112 + 96);
      v118 = *(v112 + 112);
      v120 = *(v112 + 80);
      *(v174 + 944) = *(v112 + 128);
      *(v174 + 57) = v119;
      *(v174 + 58) = v118;
      *(v174 + 56) = v120;
      sub_10012E344((v174 + 102), (v174 + 26));
      v121 = sub_10013F33C();
      v123 = v122;
      sub_10012E3A0((v174 + 102));
      v124 = sub_1002FFA0C(v121, v123, v175);

      *(v113 + 4) = v124;
      _os_log_impl(&_mh_execute_header, v110, v111, "Client %s has no pid", v113, 0xCu);
      sub_1000752F4(v114);
    }

    sub_10009591C();
    swift_allocError();
    *v125 = 6;
    swift_willThrow();
    swift_errorRetain();
    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v175[0] = v129;
      *v128 = 136315138;
      swift_getErrorValue();
      v130 = Error.localizedDescription.getter();
      v132 = sub_1002FFA0C(v130, v131, v175);

      *(v128 + 4) = v132;
      _os_log_impl(&_mh_execute_header, v126, v127, "Error %s encountered when arming for card emulation", v128, 0xCu);
      sub_1000752F4(v129);
    }

    v133 = v174[311];
    v134 = v174[310];
    v171 = v174[302];
    v135 = v174[301];
    v136 = v174[300];
    v137 = v174[299];
    v138 = v174[292];
    v139 = v174[254];
    sub_1000B5374(0);
    v140 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
    swift_beginAccess();
    v141 = *(v139 + v140);

    os_unfair_lock_lock((v141 + 20));
    *(v141 + 16) = 0;
    os_unfair_lock_unlock((v141 + 20));

    v25 = swift_allocError();
    *v142 = 8;
    swift_willThrow();

    swift_unknownObjectRelease();

    v1 = v174;
    sub_1000B2A4C(v1[214], v1[215]);

    goto LABEL_108;
  }

  v92 = v174[59];
  v91 = v174[60];
  v93 = *(v174 + 57);
  v94 = *(v174 + 55);
  v95 = *(v174 + 53);
  v96 = *(v174 + 61);
  v98 = *(v84 + 6);
  v97 = *(v84 + 7);
  *v164 = v98;
  v164[1] = v97;
  *(v174 + 88) = v95;
  *(v174 + 89) = v94;
  *(v174 + 90) = v93;
  v174[182] = v92;
  v174[183] = v91;
  *(v174 + 92) = v96;
  *(v174 + 93) = v98;
  *(v174 + 94) = v164[1];
  sub_10012E344(v165, (v174 + 85));
  sub_10012E3F4((v174 + 53), (v174 + 119));
  v99 = v164[1];
  *(v174 + 340) = *v164;
  *(v174 + 356) = v99;
  v100 = audit_token_to_pid((v174 + 340));
  sub_10012E450((v174 + 176));
  sub_10012E3A0(v165);
  v101 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
  v174[318] = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
  swift_beginAccess();
  v102 = *&v83[v101];

  os_unfair_lock_lock((v102 + 20));
  *(v102 + 16) = 1;
  os_unfair_lock_unlock((v102 + 20));

  v103 = CredentialInternal.friendlyName.getter();
  v105 = v104;
  v174[319] = v104;
  v106 = swift_task_alloc();
  v174[320] = v106;
  *v106 = v174;
  v106[1] = sub_10012AAA4;
  v107 = v174[257];
  v108 = v174[256];

  return sub_1000B4000(v108, v107, v100, v103, v105);
}

uint64_t sub_10012A324()
{
  v1 = *(*v0 + 48);
  *(*v0 + 2536) = v1;
  if (v1)
  {
    v2 = sub_10012C338;
  }

  else
  {
    v2 = sub_10012A460;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012A460()
{
  v1 = *(v0 + 2528);
  v2 = *(v0 + 2520);
  sub_10006A2D0(*(v0 + 2504), *(v0 + 2512));

  v3 = *(v0 + 2496);
  v4 = *(v0 + 2224);
  v5 = *(v0 + 2216);
  v6 = *(v0 + 2032);
  v7 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  if (!(*(v4 + 48))(v6 + v7, 1, v5))
  {
    v8 = *(v0 + 2208);
    v9 = *(v0 + 2200);
    v10 = *(v0 + 2192);
    sub_10012DFF8(v6 + v7, *(v0 + 2232));
    static DispatchTime.now()();
    v11 = DispatchTime.uptimeNanoseconds.getter();
    (*(v9 + 8))(v8, v10);
    v12 = DispatchTime.uptimeNanoseconds.getter();
    if (v11 < v12)
    {
      __break(1u);
    }

    v13 = *(v0 + 2232);
    (*(v13 + *(*(v0 + 2216) + 24)))((v11 - v12) / 0x3B9ACA00);
    sub_10012E4DC(v13, _s19SECSessionAnalyticsC16ElapsedTimeEventVMa);
  }

  v14 = *(v0 + 2224);
  v15 = *(v0 + 2216);
  v55 = v3;
  v16 = *(v0 + 2184);
  v17 = *(*(v0 + 2032) + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  sub_10028C478(6, 1);
  static DispatchTime.now()();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = 3;
  *(v16 + *(v15 + 20)) = 3;
  v19 = (v16 + *(v15 + 24));
  *v19 = sub_10012E59C;
  v19[1] = v18;
  (*(v14 + 56))(v16, 0, 1, v15);
  swift_beginAccess();
  sub_10012DF88(v16, v6 + v7);
  swift_endAccess();
  CredentialInternal.configUUID.getter();
  sub_1001FF418((v0 + 1296));
  if (v55)
  {
    v20 = *(v0 + 2488);
    v21 = *(v0 + 2480);
    v22 = *(v0 + 2416);
    v23 = *(v0 + 2408);
    v24 = *(v0 + 2400);
    v25 = *(v0 + 2392);
    v26 = *(v0 + 2336);
    (*(v0 + 2376))(*(v0 + 2280), *(v0 + 2240));

    swift_unknownObjectRelease();
    *(v0 + 2632) = v55;
    v27 = swift_task_alloc();
    *(v0 + 2640) = v27;
    *v27 = v0;
    v27[1] = sub_10012BD84;

    return sub_1001FF5CC();
  }

  else
  {
    sub_10012E450(v0 + 1296);
    sub_1001FF418((v0 + 1184));
    *(v0 + 1976) = *(v0 + 1232);

    sub_10012E450(v0 + 1184);
    sub_1001FF418((v0 + 1072));
    *(v0 + 2616) = 0;
    v29 = *(v0 + 2104);
    v30 = *(v0 + 2096);
    v31 = *(v0 + 2088);
    v32 = *(v0 + 2080);
    sub_10012E450(v0 + 1072);
    static Date.now.getter();
    (*(v30 + 104))(v29, enum case for Calendar.Identifier.gregorian(_:), v31);
    Calendar.init(identifier:)();
    (*(v30 + 8))(v29, v31);
    TimeZone.init(abbreviation:)();
    v33 = type metadata accessor for TimeZone();
    v34 = (*(*(v33 - 8) + 48))(v32, 1, v33);
    if (v34 == 1)
    {
      __break(1u);
    }

    else
    {
      v37 = *(v0 + 2248);
      v38 = *(v0 + 2176);
      v39 = *(v0 + 2168);
      v40 = *(v0 + 2160);
      v41 = *(v0 + 2152);
      v42 = *(v0 + 2144);
      v43 = *(v0 + 2136);
      v44 = *(v0 + 2128);
      v45 = *(v0 + 2120);
      v49 = *(v0 + 2432);
      v50 = *(v0 + 2112);
      v53 = *(v0 + 1360);
      v54 = *(v0 + 2280);
      v51 = *(v0 + 1144);
      v52 = *(v0 + 2240);
      Calendar.timeZone.setter();
      Calendar.startOfDay(for:)();
      (*(v45 + 8))(v44, v50);
      v46 = *(v42 + 8);
      v46(v40, v43);
      Date.timeIntervalSince1970.getter();
      v48 = v47;
      v46(v41, v43);
      (*(v37 + 32))(v38, v54, v52);
      *(v38 + v39[5]) = 0;
      *(v38 + v39[8]) = *(v0 + 1976);
      *(v38 + v39[7]) = v51;
      *(v38 + v39[6]) = v53;
      *(v38 + v39[9]) = v48 * 1000.0;
      v34 = sub_10012B93C;
      v35 = v49;
      v36 = 0;
    }

    return _swift_task_switch(v34, v35, v36);
  }
}

uint64_t sub_10012AAA4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[321] = a1;
  v4[322] = a2;
  v4[323] = v2;

  if (v2)
  {
    v5 = sub_10012C5D8;
  }

  else
  {

    v5 = sub_10012ABFC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10012ABFC()
{
  v39 = v0;
  v1 = *(v0 + 2544);
  v2 = *(v0 + 2032);
  swift_beginAccess();
  v3 = *(v2 + v1);
  os_unfair_lock_lock((v3 + 20));
  LODWORD(v2) = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  swift_endAccess();
  if (v2 == 1)
  {
    v4 = *(v0 + 2488);
    v5 = *(v0 + 2400);
    sub_100068FC4(&qword_100504060, &qword_10040B370);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100409E40;
    *(v6 + 32) = v4;
    v7 = v4;
    isa = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 2592) = isa;

    v9 = Data._bridgeToObjectiveC()().super.isa;
    *(v0 + 2600) = v9;
    *(v0 + 144) = v0;
    *(v0 + 152) = sub_10012B15C;
    v10 = swift_continuation_init();
    *(v0 + 1640) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
    *(v0 + 1616) = v10;
    *(v0 + 1584) = _NSConcreteStackBlock;
    *(v0 + 1592) = 1107296256;
    *(v0 + 1600) = sub_1001E95B0;
    *(v0 + 1608) = &unk_1004C7C68;
    [v5 startCardEmulationWithApplets:isa externalAuth:v9 completion:v0 + 1584];

    return _swift_continuation_await(v0 + 144);
  }

  else
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Auth Sheet has been invalidated due to end CE while waiting for auth", v13, 2u);
    }

    v14 = *(v0 + 2576);
    v15 = *(v0 + 2568);

    sub_1000B5374(0);
    sub_10009591C();
    swift_allocError();
    *v16 = 10;
    swift_willThrow();
    sub_10006A178(v15, v14);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38 = v20;
      *v19 = 136315138;
      swift_getErrorValue();
      v21 = Error.localizedDescription.getter();
      v23 = sub_1002FFA0C(v21, v22, &v38);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Error %s encountered when arming for card emulation", v19, 0xCu);
      sub_1000752F4(v20);
    }

    v24 = *(v0 + 2488);
    v25 = *(v0 + 2480);
    v26 = *(v0 + 2408);
    v27 = *(v0 + 2400);
    v28 = *(v0 + 2392);
    v36 = *(v0 + 2336);
    v37 = *(v0 + 2416);
    v29 = *(v0 + 2032);
    sub_1000B5374(0);
    v30 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
    swift_beginAccess();
    v31 = *(v29 + v30);

    os_unfair_lock_lock((v31 + 20));
    *(v31 + 16) = 0;
    os_unfair_lock_unlock((v31 + 20));

    v32 = swift_allocError();
    *v33 = 8;
    swift_willThrow();

    swift_unknownObjectRelease();

    sub_1000B2A4C(*(v0 + 1712), *(v0 + 1720));
    *(v0 + 2632) = v32;
    v34 = swift_task_alloc();
    *(v0 + 2640) = v34;
    *v34 = v0;
    v34[1] = sub_10012BD84;

    return sub_1001FF5CC();
  }
}

uint64_t sub_10012B15C()
{
  v1 = *(*v0 + 176);
  *(*v0 + 2608) = v1;
  if (v1)
  {
    v2 = sub_10012C8B4;
  }

  else
  {
    v2 = sub_10012B298;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012B298()
{
  v1 = *(v0 + 2592);
  v2 = *(v0 + 2576);
  v3 = *(v0 + 2568);
  v4 = *(v0 + 2544);
  v5 = *(v0 + 2032);

  sub_1000B5374(1);
  v6 = *(v5 + v4);

  os_unfair_lock_lock((v6 + 20));
  *(v6 + 16) = 0;
  os_unfair_lock_unlock((v6 + 20));
  sub_10006A178(v3, v2);
  sub_1000B2A4C(*(v0 + 1712), *(v0 + 1720));

  v7 = *(v0 + 1736);

  v8 = *(v0 + 2584);
  v9 = *(v0 + 2224);
  v10 = *(v0 + 2216);
  v11 = *(v0 + 2032);
  v12 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  if (!(*(v9 + 48))(v11 + v12, 1, v10))
  {
    v13 = *(v0 + 2208);
    v14 = *(v0 + 2200);
    v15 = *(v0 + 2192);
    sub_10012DFF8(v11 + v12, *(v0 + 2232));
    static DispatchTime.now()();
    v16 = DispatchTime.uptimeNanoseconds.getter();
    (*(v14 + 8))(v13, v15);
    v17 = DispatchTime.uptimeNanoseconds.getter();
    if (v16 < v17)
    {
      __break(1u);
    }

    v18 = *(v0 + 2232);
    (*(v18 + *(*(v0 + 2216) + 24)))((v16 - v17) / 0x3B9ACA00);
    sub_10012E4DC(v18, _s19SECSessionAnalyticsC16ElapsedTimeEventVMa);
  }

  v19 = *(v0 + 2224);
  v20 = *(v0 + 2216);
  v60 = v8;
  v21 = *(v0 + 2184);
  v22 = *(*(v0 + 2032) + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  sub_10028C478(6, 1);
  static DispatchTime.now()();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = 3;
  *(v21 + *(v20 + 20)) = 3;
  v24 = (v21 + *(v20 + 24));
  *v24 = sub_10012E59C;
  v24[1] = v23;
  (*(v19 + 56))(v21, 0, 1, v20);
  swift_beginAccess();
  sub_10012DF88(v21, v11 + v12);
  swift_endAccess();
  CredentialInternal.configUUID.getter();
  sub_1001FF418((v0 + 1296));
  if (v60)
  {
    v25 = *(v0 + 2488);
    v26 = *(v0 + 2480);
    v27 = *(v0 + 2416);
    v28 = *(v0 + 2408);
    v29 = *(v0 + 2400);
    v30 = *(v0 + 2392);
    v31 = *(v0 + 2336);
    (*(v0 + 2376))(*(v0 + 2280), *(v0 + 2240));

    swift_unknownObjectRelease();
    *(v0 + 2632) = v60;
    v32 = swift_task_alloc();
    *(v0 + 2640) = v32;
    *v32 = v0;
    v32[1] = sub_10012BD84;

    return sub_1001FF5CC();
  }

  else
  {
    sub_10012E450(v0 + 1296);
    sub_1001FF418((v0 + 1184));
    *(v0 + 1976) = *(v0 + 1232);

    sub_10012E450(v0 + 1184);
    sub_1001FF418((v0 + 1072));
    *(v0 + 2616) = 0;
    v34 = *(v0 + 2104);
    v35 = *(v0 + 2096);
    v36 = *(v0 + 2088);
    v37 = *(v0 + 2080);
    sub_10012E450(v0 + 1072);
    static Date.now.getter();
    (*(v35 + 104))(v34, enum case for Calendar.Identifier.gregorian(_:), v36);
    Calendar.init(identifier:)();
    (*(v35 + 8))(v34, v36);
    TimeZone.init(abbreviation:)();
    v38 = type metadata accessor for TimeZone();
    v39 = (*(*(v38 - 8) + 48))(v37, 1, v38);
    if (v39 == 1)
    {
      __break(1u);
    }

    else
    {
      v42 = *(v0 + 2248);
      v43 = *(v0 + 2176);
      v44 = *(v0 + 2168);
      v45 = *(v0 + 2160);
      v46 = *(v0 + 2152);
      v47 = *(v0 + 2144);
      v48 = *(v0 + 2136);
      v49 = *(v0 + 2128);
      v50 = *(v0 + 2120);
      v54 = *(v0 + 2432);
      v55 = *(v0 + 2112);
      v58 = *(v0 + 1360);
      v59 = *(v0 + 2280);
      v56 = *(v0 + 1144);
      v57 = *(v0 + 2240);
      Calendar.timeZone.setter();
      Calendar.startOfDay(for:)();
      (*(v50 + 8))(v49, v55);
      v51 = *(v47 + 8);
      v51(v45, v48);
      Date.timeIntervalSince1970.getter();
      v53 = v52;
      v51(v46, v48);
      (*(v42 + 32))(v43, v59, v57);
      *(v43 + v44[5]) = 0;
      *(v43 + v44[8]) = *(v0 + 1976);
      *(v43 + v44[7]) = v56;
      *(v43 + v44[6]) = v58;
      *(v43 + v44[9]) = v53 * 1000.0;
      v39 = sub_10012B93C;
      v40 = v54;
      v41 = 0;
    }

    return _swift_task_switch(v39, v40, v41);
  }
}

uint64_t sub_10012B93C()
{
  v1 = v0[327];
  v2 = sub_10035E904();
  if (v1)
  {
    v0[328] = v1;
    v6 = sub_10012BC38;
  }

  else
  {
    v3 = v2;
    v4 = v0[272];
    v5 = swift_task_alloc();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    NSManagedObjectContext.performAndWait<A>(_:)();

    v6 = sub_10012BA4C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10012BA4C()
{
  v1 = *(v0 + 2488);
  v2 = *(v0 + 2480);
  v3 = *(v0 + 2416);
  v4 = *(v0 + 2408);
  v5 = *(v0 + 2400);
  v6 = *(v0 + 2392);
  v7 = *(v0 + 2336);
  v10 = *(v0 + 2176);
  (*(v0 + 2064))(0);

  swift_unknownObjectRelease();
  sub_10012E4DC(v10, type metadata accessor for PresentmentInfo);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10012BC38()
{
  v1 = *(v0 + 2488);
  v2 = *(v0 + 2416);
  v3 = *(v0 + 2408);
  v4 = *(v0 + 2400);
  v5 = *(v0 + 2392);
  v6 = *(v0 + 2336);
  v7 = *(v0 + 2176);

  swift_unknownObjectRelease();
  sub_10012E4DC(v7, type metadata accessor for PresentmentInfo);
  *(v0 + 2632) = *(v0 + 2624);
  v8 = swift_task_alloc();
  *(v0 + 2640) = v8;
  *v8 = v0;
  v8[1] = sub_10012BD84;

  return sub_1001FF5CC();
}

uint64_t sub_10012BD84()
{

  return _swift_task_switch(sub_10012BEAC, 0, 0);
}

uint64_t sub_10012BEAC()
{
  v1 = v0[329];
  v2 = v0[258];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10012C048()
{
  v1 = v0[292];

  v0[329] = v0[303];
  v2 = swift_task_alloc();
  v0[330] = v2;
  *v2 = v0;
  v2[1] = sub_10012BD84;

  return sub_1001FF5CC();
}

uint64_t sub_10012C11C()
{
  v1 = *(v0 + 2416);
  v2 = *(v0 + 2408);
  v3 = *(v0 + 2400);
  v4 = *(v0 + 2336);

  *(v0 + 2632) = *(v0 + 2448);
  v5 = swift_task_alloc();
  *(v0 + 2640) = v5;
  *v5 = v0;
  v5[1] = sub_10012BD84;

  return sub_1001FF5CC();
}

uint64_t sub_10012C228(uint64_t a1)
{
  v2 = v1[302];
  v3 = v1[301];
  v4 = v1[300];
  v5 = v1[299];
  v6 = v1[292];
  swift_willThrow();

  v1[329] = v1[307];
  v7 = swift_task_alloc();
  v1[330] = v7;
  *v7 = v1;
  v7[1] = sub_10012BD84;

  return sub_1001FF5CC();
}

uint64_t sub_10012C338(uint64_t a1)
{
  v25 = v1;
  v2 = v1[316];
  v3 = v1[315];
  swift_willThrow();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_1002FFA0C(v8, v9, &v24);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "NearField Error %s encountered when arming for card emulation -- CAM path", v6, 0xCu);
    sub_1000752F4(v7);
  }

  v11 = v1[314];
  v12 = v1[313];
  v13 = v1[311];
  v14 = v1[310];
  v15 = v1[300];
  v20 = v1[299];
  v21 = v1[301];
  v22 = v1[292];
  v23 = v1[302];
  sub_10009591C();
  v16 = swift_allocError();
  *v17 = 8;
  swift_willThrow();

  sub_10006A2D0(v12, v11);

  swift_unknownObjectRelease();
  v1[329] = v16;
  v18 = swift_task_alloc();
  v1[330] = v18;
  *v18 = v1;
  v18[1] = sub_10012BD84;

  return sub_1001FF5CC();
}

uint64_t sub_10012C5D8()
{
  v23 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v22 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_1002FFA0C(v5, v6, &v22);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error %s encountered when arming for card emulation", v3, 0xCu);
    sub_1000752F4(v4);
  }

  v8 = *(v0 + 2488);
  v9 = *(v0 + 2480);
  v10 = *(v0 + 2408);
  v11 = *(v0 + 2400);
  v12 = *(v0 + 2392);
  v20 = *(v0 + 2336);
  v21 = *(v0 + 2416);
  v13 = *(v0 + 2032);
  sub_1000B5374(0);
  v14 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
  swift_beginAccess();
  v15 = *(v13 + v14);

  os_unfair_lock_lock((v15 + 20));
  *(v15 + 16) = 0;
  os_unfair_lock_unlock((v15 + 20));

  sub_10009591C();
  v16 = swift_allocError();
  *v17 = 8;
  swift_willThrow();

  swift_unknownObjectRelease();

  sub_1000B2A4C(*(v0 + 1712), *(v0 + 1720));
  *(v0 + 2632) = v16;
  v18 = swift_task_alloc();
  *(v0 + 2640) = v18;
  *v18 = v0;
  v18[1] = sub_10012BD84;

  return sub_1001FF5CC();
}

uint64_t sub_10012C8B4(uint64_t a1)
{
  v28 = v1;
  v2 = *(v1 + 2600);
  v3 = *(v1 + 2592);
  v4 = *(v1 + 2576);
  v5 = *(v1 + 2568);
  swift_willThrow();
  sub_10006A178(v5, v4);

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = sub_1002FFA0C(v10, v11, &v27);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error %s encountered when arming for card emulation", v8, 0xCu);
    sub_1000752F4(v9);
  }

  v13 = *(v1 + 2488);
  v14 = *(v1 + 2480);
  v15 = *(v1 + 2408);
  v16 = *(v1 + 2400);
  v17 = *(v1 + 2392);
  v25 = *(v1 + 2336);
  v26 = *(v1 + 2416);
  v18 = *(v1 + 2032);
  sub_1000B5374(0);
  v19 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
  swift_beginAccess();
  v20 = *(v18 + v19);

  os_unfair_lock_lock((v20 + 20));
  *(v20 + 16) = 0;
  os_unfair_lock_unlock((v20 + 20));

  sub_10009591C();
  v21 = swift_allocError();
  *v22 = 8;
  swift_willThrow();

  swift_unknownObjectRelease();

  sub_1000B2A4C(*(v1 + 1712), *(v1 + 1720));
  *(v1 + 2632) = v21;
  v23 = swift_task_alloc();
  *(v1 + 2640) = v23;
  *v23 = v1;
  v23[1] = sub_10012BD84;

  return sub_1001FF5CC();
}

uint64_t sub_10012CE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[31] = a5;
  v6[32] = a6;
  v6[30] = a4;
  sub_100068FC4(&qword_100504258, &qword_10040F8A0);
  v6[33] = swift_task_alloc();
  v7 = type metadata accessor for DispatchTime();
  v6[34] = v7;
  v6[35] = *(v7 - 8);
  v6[36] = swift_task_alloc();
  v8 = _s19SECSessionAnalyticsC16ElapsedTimeEventVMa(0);
  v6[37] = v8;
  v6[38] = *(v8 - 8);
  v6[39] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v6[40] = v9;
  v6[41] = *(v9 - 8);
  v6[42] = swift_task_alloc();

  return _swift_task_switch(sub_10012D038, 0, 0);
}

uint64_t sub_10012D038(uint64_t a1, uint64_t a2)
{
  v81 = v2;
  v3 = v2[30];
  v4 = &v3[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v5 = *&v3[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 8];
  v2[43] = v5;
  v6 = *(v4 + 3);
  v2[44] = v6;
  if (v6 >> 62)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
      v3 = v2[30];
    }

    v38 = type metadata accessor for Logger();
    sub_1000958E4(v38, qword_10051B2C8);
    v39 = v3;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v80[0] = swift_slowAlloc();
      *v42 = 136315394;
      v43 = UUID.uuidString.getter();
      v45 = sub_1002FFA0C(v43, v44, v80);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2080;
      v46 = *(v4 + 3);
      if (v46 >> 62)
      {
        if (v46 >> 62 == 1)
        {
          v47 = 0xE500000000000000;
          v48 = 0x6465726957;
        }

        else
        {
          v66 = (*(v4 + 2) | *v4 | *(v4 + 1)) == 0;
          v67 = v46 == 0x8000000000000000;
          if (v67 && v66)
          {
            v48 = 0x656D6567616E614DLL;
          }

          else
          {
            v48 = 0x64696C61766E49;
          }

          if (v67 && v66)
          {
            v47 = 0xEA0000000000746ELL;
          }

          else
          {
            v47 = 0xE700000000000000;
          }
        }
      }

      else
      {
        v47 = 0xED00006E6F697461;
        v48 = 0x6C756D4564726143;
      }

      v68 = sub_1002FFA0C(v48, v47, v80);

      *(v42 + 14) = v68;
      _os_log_impl(&_mh_execute_header, v40, v41, "Session %s: Unexpected state %s while trying to end card emulation", v42, 0x16u);
      swift_arrayDestroy();
    }

    v69 = v2[31];
    sub_10009591C();
    v70 = swift_allocError();
    *v71 = 10;
    swift_willThrow();
    swift_errorRetain();
    v69(v70);
  }

  else
  {
    v7 = *(v4 + 2);
    v2[45] = v7;
    v8 = *v4;
    v2[46] = *v4;
    v9 = qword_1005019D8;
    v10 = v8;
    v78 = v5;
    v11 = v5;
    v12 = v7;
    v13 = v6;
    if (v9 != -1)
    {
      swift_once();
      v3 = v2[30];
    }

    v14 = type metadata accessor for Logger();
    sub_1000958E4(v14, qword_10051B2C8);
    v15 = v3;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    v76 = v17;
    if (os_log_type_enabled(v20, v21))
    {
      v23 = v2[41];
      v22 = v2[42];
      v74 = v2[40];
      v24 = swift_slowAlloc();
      v80[0] = swift_slowAlloc();
      *v24 = 136315394;
      v25 = UUID.uuidString.getter();
      v27 = sub_1002FFA0C(v25, v26, v80);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      CredentialInternal.identifier.getter();
      v28 = UUID.uuidString.getter();
      v30 = v29;
      (*(v23 + 8))(v22, v74);
      v31 = sub_1002FFA0C(v28, v30, v80);

      *(v24 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v20, v21, "Session %s: Ending card emulation for credential %s", v24, 0x16u);
      swift_arrayDestroy();
    }

    v32 = v2[30];
    v33 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
    swift_beginAccess();
    v34 = *(v32 + v33);

    os_unfair_lock_lock((v34 + 20));
    *(v34 + 16) = 0;
    os_unfair_lock_unlock((v34 + 20));

    if (v78)
    {
      v35 = v76;
      [v35 setEventDelegate:0];
      v2[2] = v2;
      v2[3] = sub_10012D8CC;
      v36 = swift_continuation_init();
      v2[17] = sub_100068FC4(&qword_1005073C0, &qword_10040F870);
      v2[10] = _NSConcreteStackBlock;
      v2[11] = 1107296256;
      v2[12] = sub_10021C240;
      v2[13] = &unk_1004C7BC8;
      v2[14] = v36;
      [v35 endSessionWithCompletion:v2 + 10];
      v37 = (v2 + 2);

      return _swift_continuation_await(v37);
    }

    v49 = v2[37];
    v50 = v2[38];
    v51 = v2[30];
    sub_1001FEFA8(0, 0, 0, 0x8000000000000000);
    v52 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
    swift_beginAccess();
    if (!(*(v50 + 48))(v51 + v52, 1, v49))
    {
      v54 = v2[35];
      v53 = v2[36];
      v55 = v2[34];
      sub_10012DFF8(v51 + v52, v2[39]);
      static DispatchTime.now()();
      v56 = DispatchTime.uptimeNanoseconds.getter();
      (*(v54 + 8))(v53, v55);
      v37 = DispatchTime.uptimeNanoseconds.getter();
      if (v56 < v37)
      {
        __break(1u);
        return _swift_continuation_await(v37);
      }

      v57 = v2[39];
      (*(v57 + *(v2[37] + 24)))((v56 - v37) / 0x3B9ACA00);
      sub_10012E4DC(v57, _s19SECSessionAnalyticsC16ElapsedTimeEventVMa);
    }

    v58 = v2[46];
    v77 = v2[45];
    v79 = v2[44];
    v75 = v2[43];
    v59 = v2[37];
    v60 = v2[38];
    v61 = v2[33];
    v62 = v2[31];
    v63 = *(v2[30] + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

    static DispatchTime.now()();
    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    *(v64 + 24) = 4;
    *(v61 + *(v59 + 20)) = 4;
    v65 = (v61 + *(v59 + 24));
    *v65 = sub_10012DF7C;
    v65[1] = v64;
    (*(v60 + 56))(v61, 0, 1, v59);
    swift_beginAccess();
    sub_10012DF88(v61, v51 + v52);
    swift_endAccess();
    v62(0);
  }

  v72 = v2[1];

  return v72();
}

uint64_t sub_10012D8CC()
{

  return _swift_task_switch(sub_10012D9AC, 0, 0);
}

unint64_t sub_10012D9AC()
{
  if (qword_100501D50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = off_10050A868;

  os_unfair_lock_lock(v1 + 6);
  v2 = *&v1[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v1 + 6);

  if (v2)
  {
    sub_100307B18(0, 0);
  }

  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = *(v0 + 240);
  sub_1001FEFA8(0, 0, 0, 0x8000000000000000);
  v6 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  if (!(*(v4 + 48))(v5 + v6, 1, v3))
  {
    v8 = *(v0 + 280);
    v7 = *(v0 + 288);
    v9 = *(v0 + 272);
    sub_10012DFF8(v5 + v6, *(v0 + 312));
    static DispatchTime.now()();
    v10 = DispatchTime.uptimeNanoseconds.getter();
    (*(v8 + 8))(v7, v9);
    result = DispatchTime.uptimeNanoseconds.getter();
    if (v10 < result)
    {
      __break(1u);
      return result;
    }

    v12 = *(v0 + 312);
    (*(v12 + *(*(v0 + 296) + 24)))((v10 - result) / 0x3B9ACA00);
    sub_10012E4DC(v12, _s19SECSessionAnalyticsC16ElapsedTimeEventVMa);
  }

  v13 = *(v0 + 368);
  v23 = *(v0 + 360);
  v24 = *(v0 + 352);
  v22 = *(v0 + 344);
  v14 = *(v0 + 296);
  v15 = *(v0 + 304);
  v16 = *(v0 + 264);
  v17 = *(v0 + 248);
  v18 = *(*(v0 + 240) + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  static DispatchTime.now()();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = 4;
  *(v16 + *(v14 + 20)) = 4;
  v20 = (v16 + *(v14 + 24));
  *v20 = sub_10012DF7C;
  v20[1] = v19;
  (*(v15 + 56))(v16, 0, 1, v14);
  swift_beginAccess();
  sub_10012DF88(v16, v5 + v6);
  swift_endAccess();
  v17(0);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10012DE2C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10012DE6C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10012DEB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000C288C;

  return sub_10012CE84(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10012DF88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100504258, &qword_10040F8A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012DFF8(uint64_t a1, uint64_t a2)
{
  v4 = _s19SECSessionAnalyticsC16ElapsedTimeEventVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012E074()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10012E174(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + v5);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v6);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_10012E598;

  return sub_100127608(a1, v7, v8, v9, v1 + v4, v11, v12, v13);
}

unint64_t sub_10012E2F8()
{
  result = qword_100504280;
  if (!qword_100504280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100504280);
  }

  return result;
}

uint64_t sub_10012E4A4()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10012E4DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_10012E5A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_1005025E0, &unk_10040F430);
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

void *sub_10012E6B0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100068FC4(&qword_1005042D8, &qword_10040B5E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&qword_1005042E0, &qword_10040B5F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10012E7F8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100068FC4(&qword_1005042B8, &qword_10040B5C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&qword_1005042C0, &qword_10040B5D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10012E940(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_1005042A0, &qword_10040B5B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10012EA44(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&unk_100504720, &qword_100414C40);
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

char *sub_10012EB50(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_1005042C8, &qword_10040B5D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10012EC5C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100068FC4(&qword_100504320, &qword_10040B630);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&qword_100504328, &qword_10040B638);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10012EDF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_1005043A0, &qword_10040B6A8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_10012EF2C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100068FC4(&qword_1005042D0, &qword_10040B5E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&qword_1005025F0, &qword_100409A18);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10012F07C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&qword_100507D30, &unk_100409C90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10012F1D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_100504398, &qword_10040B6A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10012F2E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_100503208, "|e\a");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10012F428(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100068FC4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_10012F55C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_100504360, &qword_10040B668);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10012F668(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_100504330, &qword_10040B640);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10012F78C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100068FC4(&qword_100504350, &qword_10040B658);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&qword_100504358, &qword_10040B660);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10012F8FC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100068FC4(&qword_100504338, &qword_10040B648);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&qword_100504340, &qword_10040C460);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10012FB34(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100068FC4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_10012FCC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_100504378, &qword_10040B680);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10012FE04(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100068FC4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_10012FF88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100068FC4(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100130164(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_100502448, &qword_100409998);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_100130260(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100068FC4(&qword_100504310, &qword_10040B620);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&qword_100504318, &qword_10040B628);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1001303A8(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(capacity:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10013044C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v20[0] = a1;
  v20[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v20[2] = 0;
  v21 = v2;

  v3 = _swiftEmptyArrayStorage;
  while (String.Iterator.next()().value._object)
  {
    v4 = Character.hexDigitValue.getter();
    v6 = v5;

    if ((v6 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_10012E940(0, *(v3 + 2) + 1, 1, v3);
      }

      v8 = *(v3 + 2);
      v7 = *(v3 + 3);
      if (v8 >= v7 >> 1)
      {
        v3 = sub_10012E940((v7 > 1), v8 + 1, 1, v3);
      }

      *(v3 + 2) = v8 + 1;
      *&v3[8 * v8 + 32] = v4;
    }
  }

  v9 = *(v3 + 2);
  if (v9)
  {

    goto LABEL_26;
  }

  v10 = String.count.getter();

  if (v9 != v10)
  {
LABEL_26:

    return 0;
  }

  v11 = sub_1001303A8(v9 >> 1);
  v23 = v11;
  v24 = v12;
  if (v9)
  {
    v13 = 0;
    do
    {
      if (__OFADD__(v13, 2))
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13 + 2;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
      }

      v16 = *(v3 + 2);
      if (v13 >= v16)
      {
        goto LABEL_30;
      }

      if (v13 + 1 >= v16)
      {
        goto LABEL_31;
      }

      v17 = *&v3[8 * v13 + 40] | (16 * *&v3[8 * v13 + 32]);
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      if (v17 > 0xFF)
      {
        goto LABEL_33;
      }

      v14 = sub_100068FC4(&qword_100502608, &qword_100409A28);
      v21 = v14;
      v22 = sub_10007FBA8();
      LOBYTE(v20[0]) = v17;
      sub_1000752B0(v20, v14);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_1000752F4(v20);
      v13 = v15;
    }

    while (v15 < v9);

    return v23;
  }

  else
  {
    v19 = v11;

    return v19;
  }
}

void sub_10013070C(uint64_t a1@<X8>)
{
  v3 = objc_opt_self();
  v4 = [v1 discretionaryData];
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v5, v7);
  v9 = [v3 TLVsWithData:isa];

  if (!v9)
  {
    goto LABEL_22;
  }

  sub_1000754A4();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_21;
  }

LABEL_17:
  v16 = _CocoaArrayWrapper.endIndex.getter();
  if (v16 < 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
  }

  v11 = v16;
  if (!v16)
  {
LABEL_21:

LABEL_22:
    v21 = type metadata accessor for UUID();
    v22 = *(*(v21 - 8) + 56);

    v22(a1, 1, 1, v21);
    return;
  }

LABEL_4:
  v12 = 0;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_17;
      }

      v13 = *(v10 + 8 * v12 + 32);
    }

    v14 = v13;
    if ([v13 tag] == 254)
    {
      v15 = [v14 childWithTag:57154];
      if (v15)
      {
        break;
      }
    }

    ++v12;

    if (v11 == v12)
    {
      goto LABEL_21;
    }
  }

  v23 = v15;
  v16 = [v15 value];
  if (!v16)
  {
    goto LABEL_19;
  }

  v17 = v16;

  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  sub_1001E0778(v18, v20, a1);
}

uint64_t sub_100130988()
{
  type metadata accessor for SECDataMigrationCompletionListener(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xD000000000000019;
  *(v0 + 32) = 0x8000000100463B90;
  result = Logger.init(subsystem:category:)();
  qword_10051B2B0 = v0;
  return result;
}

uint64_t sub_100130A24()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v36 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501A20 != -1)
  {
    swift_once();
  }

  v14 = *(qword_10051B350 + OBJC_IVAR____TtC10seserviced23SECNotificationListener_queue);
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v35 = v3;
    v17 = objc_opt_self();
    v18 = String._bridgeToObjectiveC()();
    v19 = [v17 isFirstLaunchAfterBootForKey:v18];

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    v22 = os_log_type_enabled(v20, v21);
    if (v19)
    {
      if (v22)
      {
        v34 = v2;
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        aBlock[0] = v24;
        *v23 = 136315138;
        sub_100326DF8(&v42);
        v25 = v43;
        if (v43)
        {
          v26 = v42;
          v45 = v44;
          sub_1000B6B54(&v45);
        }

        else
        {
          v25 = 0xE400000000000000;
          v26 = 1701736270;
        }

        v29 = sub_1002FFA0C(v26, v25, aBlock);

        *(v23 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v20, v21, "Migration -- current default app %s", v23, 0xCu);
        sub_1000752F4(v24);

        v2 = v34;
        v28 = *(v1 + 16);
        if (*(v1 + 16))
        {
          return v28 == 1;
        }
      }

      else
      {

        v28 = *(v1 + 16);
        if (*(v1 + 16))
        {
          return v28 == 1;
        }
      }

      *(v1 + 16) = 1;
      sub_10006928C();
      v30 = v36;
      (*(v36 + 104))(v9, enum case for DispatchQoS.QoSClass.userInitiated(_:), v7);
      v31 = static OS_dispatch_queue.global(qos:)();
      (*(v30 + 8))(v9, v7);
      aBlock[4] = sub_100131694;
      aBlock[5] = v1;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100080830;
      aBlock[3] = &unk_1004C7D70;
      v32 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v40 = _swiftEmptyArrayStorage;
      sub_1000BA7E0();
      sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
      sub_1000BA838();
      v33 = v38;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v32);

      (*(v35 + 8))(v33, v2);
      (*(v37 + 8))(v6, v39);

      v28 = *(v1 + 16);
      return v28 == 1;
    }

    if (v22)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "After first launch, migration completed", v27, 2u);
    }

    result = 0;
    *(v1 + 16) = 2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100131050(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Perform Migration", v12, 2u);
  }

  DMPerformMigrationIfNeeded();
  if (qword_100501A20 != -1)
  {
    swift_once();
  }

  v13 = *(qword_10051B350 + OBJC_IVAR____TtC10seserviced23SECNotificationListener_queue);
  aBlock[4] = sub_1001316B4;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C7D98;
  v14 = _Block_copy(aBlock);
  v15 = v13;

  static DispatchQoS.unspecified.getter();
  v17[1] = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_1000BA838();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_100131374(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Migration completed, Reconciling now", v4, 2u);
  }

  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();
  [v5 setFirstLaunchAfterBootDoneForKey:v6];

  *(a1 + 16) = 2;
  if (qword_100501A20 != -1)
  {
    swift_once();
  }

  return sub_100192058();
}

uint64_t sub_100131490()
{

  v1 = OBJC_IVAR____TtC10seserviced34SECDataMigrationCompletionListener_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SECDataMigrationCompletionListener(uint64_t a1)
{
  result = qword_100504428;
  if (!qword_100504428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100131588(uint64_t a1, uint64_t a2)
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

unint64_t sub_100131640()
{
  result = qword_1005044C0;
  if (!qword_1005044C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005044C0);
  }

  return result;
}

uint64_t sub_10013169C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001316C4(void *a1, const char *a2)
{
  v3 = sub_1003AF3C4(a1, a2);
  v4 = [v3 isSkyOrLater];

  if (!v4)
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_30;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "SE is not Sky or later ...";
    goto LABEL_11;
  }

  if (qword_100501A38 != -1)
  {
    swift_once();
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = sub_1003AF34C(a1, isa);

  if (!v6)
  {
    v22 = sub_1003AAA98(a1, "SLAMInstallHenosis");
    if (v22)
    {
      v18 = v22;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v23, v24))
      {

        return 7;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v66 = v26;
      *v25 = 136315138;
      swift_getErrorValue();
      v27 = Error.localizedDescription.getter();
      v29 = sub_1002FFA0C(v27, v28, &v66);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "SLAM Error on install : %s", v25, 0xCu);
      sub_1000752F4(v26);

LABEL_30:
      return 7;
    }

    v41 = Data._bridgeToObjectiveC()().super.isa;
    v42 = sub_1003AF34C(a1, v41);

    if (v42)
    {
      v43 = sub_1001A2D48(a1);
      v45 = v44;
      v10 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();
      v47 = os_log_type_enabled(v10, v46);
      if (v45 >> 60 == 15)
      {
        if (!v47)
        {
          goto LABEL_27;
        }

        v48 = swift_slowAlloc();
        *v48 = 0;
        v49 = "Applied installation script but no configID?";
LABEL_26:
        _os_log_impl(&_mh_execute_header, v10, v46, v49, v48, 2u);

        goto LABEL_27;
      }

      if (v47)
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v66 = v56;
        *v55 = 136315138;
        sub_100288788(v43, v45);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_10007A2D0();
        v57 = BidirectionalCollection<>.joined(separator:)();
        v59 = v58;

        v60 = sub_1002FFA0C(v57, v59, &v66);

        *(v55 + 4) = v60;
        v61 = "Henosis installed with id %s";
LABEL_38:
        _os_log_impl(&_mh_execute_header, v10, v46, v61, v55, 0xCu);
        sub_1000752F4(v56);

        v39 = v43;
        v40 = v45;
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_30;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "After SLAM but AID still not present?!";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v18, v19, v21, v20, 2u);

    goto LABEL_30;
  }

  v7 = sub_1001A2D48(a1);
  if (v8 >> 60 == 15)
  {
    v9 = sub_1003AAA98(a1, "SLAMPersonalizeHenosis");
    if (v9)
    {
      v10 = v9;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v11, v12))
      {

        return 8;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v66 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = Error.localizedDescription.getter();
      v17 = sub_1002FFA0C(v15, v16, &v66);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "SLAM Error on personalize : %s", v13, 0xCu);
      sub_1000752F4(v14);

LABEL_27:
      return 8;
    }

    v43 = sub_1001A2D48(a1);
    v45 = v52;
    v10 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();
    v53 = os_log_type_enabled(v10, v46);
    if (v45 >> 60 == 15)
    {
      if (!v53)
      {
        goto LABEL_27;
      }

      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = "Applied personalization script but no configID?";
      goto LABEL_26;
    }

    if (v53)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v66 = v56;
      *v55 = 136315138;
      sub_100288788(v43, v45);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v62 = BidirectionalCollection<>.joined(separator:)();
      v64 = v63;

      v65 = sub_1002FFA0C(v62, v64, &v66);

      *(v55 + 4) = v65;
      v61 = "Henosis configured with id %s";
      goto LABEL_38;
    }

LABEL_40:

    v50 = v43;
    v51 = v45;
    goto LABEL_41;
  }

  v30 = v7;
  v31 = v8;
  v10 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v10, v32))
  {

    v50 = v30;
    v51 = v31;
LABEL_41:
    sub_10006A2D0(v50, v51);
    return 35;
  }

  v33 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v66 = v34;
  *v33 = 136315138;
  sub_100288788(v30, v31);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  v35 = BidirectionalCollection<>.joined(separator:)();
  v37 = v36;

  v38 = sub_1002FFA0C(v35, v37, &v66);

  *(v33 + 4) = v38;
  _os_log_impl(&_mh_execute_header, v10, v32, "Henosis already configured with id %s", v33, 0xCu);
  sub_1000752F4(v34);

  v39 = v30;
  v40 = v31;
LABEL_39:
  sub_10006A2D0(v39, v40);

  return 35;
}

id sub_100131F30@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v61 = a9;
  v13 = a1;
  v14 = 0xD000000000000020;
  v15 = objc_opt_self();
  v72 = a5;

  v16 = [v15 sharedScheduler];
  v17 = String._bridgeToObjectiveC()();

  v18 = [v16 taskRequestForIdentifier:v17];

  if (v18)
  {
    v19 = v13;

    if (qword_100501988 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000958E4(v20, qword_1005044D0);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v64 = a7;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136315138;
      if (v19)
      {
        v25 = v19 == 1 ? 0xD00000000000002DLL : 0xD000000000000020;
        v26 = v19 == 1 ? "iced.viennaPresentmentReporting" : "iced.viennaHeartbeatReporting";
      }

      else
      {
        v25 = 0xD00000000000002FLL;
        v26 = "_MANAGED_BY_ALIRO_WALLET_";
      }

      v27 = sub_1002FFA0C(v25, v26 | 0x8000000000000000, aBlock);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Will overwrite previously scheduled task with identifier %s", v23, 0xCu);
      sub_1000752F4(v24);

      a7 = v64;
    }

    else
    {
    }

    v28 = [v15 sharedScheduler];
    v13 = v19;
    v29 = String._bridgeToObjectiveC()();

    v30 = [v28 deregisterTaskWithIdentifier:v29];

    if ((v30 & 1) == 0)
    {
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v32, v33))
      {
LABEL_40:

        LOBYTE(aBlock[0]) = 1;
        sub_100134EB4();
        swift_willThrowTypedImpl();
        goto LABEL_45;
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Unable to deregister previously registered task", v34, 2u);
LABEL_39:

      goto LABEL_40;
    }
  }

  v63 = a3 & 1;
  v65 = a2 & 1;
  v31 = [v15 sharedScheduler];
  v35 = String._bridgeToObjectiveC()();

  if (qword_100501980 != -1)
  {
    swift_once();
  }

  v36 = *(off_1005044C8 + 2);
  v37 = swift_allocObject();
  *(v37 + 16) = v13;
  *(v37 + 17) = v65;
  *(v37 + 18) = v63;
  *(v37 + 24) = a10;
  *(v37 + 32) = a4;
  *(v37 + 40) = v72;
  *(v37 + 48) = a6;
  *(v37 + 56) = a7;
  *(v37 + 64) = v66;
  aBlock[4] = sub_100135174;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A409C;
  aBlock[3] = &unk_1004C7F68;
  v38 = _Block_copy(aBlock);
  v39 = v13;

  v40 = v36;

  v41 = [v31 registerForTaskWithIdentifier:v35 usingQueue:v40 launchHandler:v38];
  _Block_release(v38);

  if (!v41)
  {
    if (qword_100501988 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1000958E4(v46, qword_1005044D0);

    v32 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v32, v47))
    {
      goto LABEL_40;
    }

    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    aBlock[0] = v49;
    *v48 = 136315138;
    if (v39)
    {
      if (v39 == 1)
      {
        v50 = "iced.viennaPresentmentReporting";
        v14 = 0xD00000000000002DLL;
      }

      else
      {
        v50 = "iced.viennaHeartbeatReporting";
      }
    }

    else
    {
      v14 = 0xD00000000000002FLL;
      v50 = "_MANAGED_BY_ALIRO_WALLET_";
    }

    v59 = sub_1002FFA0C(v14, v50 | 0x8000000000000000, aBlock);

    *(v48 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v32, v47, "Failed to register task with identifier %s", v48, 0xCu);
    sub_1000752F4(v49);

    goto LABEL_39;
  }

  v42 = [v15 sharedScheduler];
  v43 = sub_100135180(v13, a2 & 1, a3 & 1, a10);
  aBlock[0] = 0;
  v44 = [v42 submitTaskRequest:v43 error:aBlock];

  if (v44)
  {
    result = aBlock[0];
    *v62 = v13;
    *(v62 + 1) = v65;
    *(v62 + 2) = v63;
    *(v62 + 3) = v73;
    *(v62 + 7) = v74;
    *(v62 + 8) = a10;
    *(v62 + 16) = a4;
    *(v62 + 24) = v72;
    *(v62 + 32) = a6;
    *(v62 + 40) = a7;
    return result;
  }

  v51 = aBlock[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_100501988 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  sub_1000958E4(v52, qword_1005044D0);

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = v13;
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v56 = 136315138;
    if (v55)
    {
      if (v55 == 1)
      {
        v58 = "iced.viennaPresentmentReporting";
        v14 = 0xD00000000000002DLL;
      }

      else
      {
        v58 = "iced.viennaHeartbeatReporting";
      }
    }

    else
    {
      v14 = 0xD00000000000002FLL;
      v58 = "_MANAGED_BY_ALIRO_WALLET_";
    }

    v60 = sub_1002FFA0C(v14, v58 | 0x8000000000000000, aBlock);

    *(v56 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v53, v54, "Failed to submit task request with identifier %s", v56, 0xCu);
    sub_1000752F4(v57);
  }

  LOBYTE(aBlock[0]) = 1;
  sub_100134EB4();
  swift_willThrowTypedImpl();

LABEL_45:

  *a8 = 1;
  return result;
}