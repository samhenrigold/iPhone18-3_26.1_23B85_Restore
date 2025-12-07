uint64_t sub_100550228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100550290(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005502F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100550338@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parentAccount];
  *a2 = result;
  return result;
}

void sub_1005503BC(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100939D90, "8\n\r");
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setMostRecentTargetTemplateIdentifierByCurrentUser:isa];
}

uint64_t sub_1005504F8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094C3E8);
  v1 = sub_100006654(v0, qword_10094C3E8);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1005505C0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 sharees];
  if (v3)
  {
    v4 = v3;
    sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    sub_10000CE28(&qword_100939840, &qword_100942E50, off_1008D41E0);
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_10055066C(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    sub_10000CE28(&qword_100939840, &qword_100942E50, off_1008D41E0);
    v3.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  [v2 setSharees:?];
}

void sub_100550728(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setPinnedDate:isa];
}

id sub_100550864@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPinnedByCurrentUser];
  *a2 = result;
  return result;
}

uint64_t sub_1005508AC()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007953F0;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *(v0 + 32) = result;
  qword_100975230 = v0;
  return result;
}

uint64_t sub_100550934()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100799D70;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 48) = result;
  qword_100975238 = v0;
  return result;
}

id sub_1005509B8(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = &type metadata for Int;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = a2;
    v8 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v3, v10, v11, v12, v13, v14, v15, v16;
    v17 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

    return v17;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v19._object = 0x80000001007EC120;
    v19._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v19);
    sub_1000F5104(&qword_10093F478, &unk_1007A76E0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

_BYTE *sub_100550BCC(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v6 = *(a3 - 8);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
      case 2u:
      case 6u:
      case 8u:
      case 0xDu:
      case 0xEu:
      case 0xFu:
        v19 = *a2;
        *a1 = *a2;
        v20 = v19;
        goto LABEL_13;
      case 3u:
        v14 = *a2;
        *a1 = *a2;
        a1[8] = a2[8];
        v15 = v14;
        goto LABEL_13;
      case 4u:
      case 5u:
      case 0xAu:
      case 0xBu:
      case 0x10u:
        *a1 = *a2;

        goto LABEL_13;
      case 7u:
        v16 = type metadata accessor for UUID();
        (*(*(v16 - 8) + 16))(a1, a2, v16);
        goto LABEL_13;
      case 9u:
        v11 = *a2;
        v12 = *(a2 + 1);
        *a1 = v11;
        *(a1 + 1) = v12;
        v13 = v11;

        goto LABEL_13;
      case 0xCu:
        v8 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v8;
        v9 = *(a2 + 2);
        *(a1 + 2) = v9;

        v10 = v9;
LABEL_13:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v17 = *(v6 + 64);

        return memcpy(a1, a2, v17);
    }
  }

  v7 = *a2;
  *a1 = *a2;
  a1 = (v7 + ((v5 + 16) & ~v5));

  return a1;
}

_BYTE *sub_100550EDC(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1001555B4(a1);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
      case 2u:
      case 6u:
      case 8u:
      case 0xDu:
      case 0xEu:
      case 0xFu:
        v15 = *a2;
        *a1 = *a2;
        v16 = v15;
        goto LABEL_12;
      case 3u:
        v10 = *a2;
        *a1 = *a2;
        a1[8] = a2[8];
        v11 = v10;
        goto LABEL_12;
      case 4u:
      case 5u:
      case 0xAu:
      case 0xBu:
      case 0x10u:
        *a1 = *a2;

        goto LABEL_12;
      case 7u:
        v12 = type metadata accessor for UUID();
        (*(*(v12 - 8) + 16))(a1, a2, v12);
        goto LABEL_12;
      case 9u:
        v8 = *a2;
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        v9 = v8;

        goto LABEL_12;
      case 0xCu:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        v6 = *(a2 + 2);
        *(a1 + 2) = v6;

        v7 = v6;
LABEL_12:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v13 = *(*(a3 - 8) + 64);

        return memcpy(a1, a2, v13);
    }
  }

  return a1;
}

void *sub_1005511CC(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *sub_10055129C(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1001555B4(a1);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t sub_10055137C(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_10055145C()
{
  v1 = *v0;
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 unsafeUntilSystemReady_displayedHostnameOfICloudACAccountWithAccountIdentifier:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_1005514DC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094C4A8);
  v1 = sub_100006654(v0, qword_10094C4A8);
  if (qword_100936440 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975008);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1005515A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v76 = a3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v77 = *(v14 - 8);
  v78 = v14;
  __chkstk_darwin(v14, v15);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v74 = v10;
    v75 = v9;
    v18 = qword_100936530;
    v19 = a2;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006654(v20, qword_10094C4A8);
    v21 = v19;
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v72 = a2;
      v73 = a4;
      v71 = a5;
      v24 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      aBlock[0] = v70;
      *v24 = 136315394;
      v25 = [v21 transactionId];
      if (!v25)
      {

        __break(1u);
        return;
      }

      v26 = v25;

      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_10000668C(v27, v29, aBlock);
      v29, v31, v32, v33, v34, v35, v36, v37;
      *(v24 + 4) = v30;
      *(v24 + 12) = 2080;
      if (a1)
      {
        swift_getErrorValue();
        v38 = Error.localizedDescription.getter();
        v40 = v39;
      }

      else
      {
        v38 = 7104878;
        v40 = 0xE300000000000000;
      }

      a5 = v71;
      v48 = sub_10000668C(v38, v40, aBlock);
      v40, v49, v50, v51, v52, v53, v54, v55;
      *(v24 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v22, v23, "DADREMShareResponseDelegate has completed with DATransaction {transactionId: %s, error: %s}", v24, 0x16u);
      swift_arrayDestroy();

      goto LABEL_19;
    }

    v10 = v74;
    v9 = v75;
  }

  else
  {
    v73 = a4;
    if (qword_100936530 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100006654(v41, qword_10094C4A8);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v42))
    {
      v74 = v10;
      v75 = v9;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock[0] = v44;
      *v43 = 136315138;
      v72 = 0;
      if (a1)
      {
        swift_getErrorValue();
        v45 = Error.localizedDescription.getter();
        v47 = v46;
      }

      else
      {
        v45 = 7104878;
        v47 = 0xE300000000000000;
      }

      v56 = sub_10000668C(v45, v47, aBlock);
      v47, v57, v58, v59, v60, v61, v62, v63;
      *(v43 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v21, v42, "DADREMShareResponseDelegate has completed, but DATransaction was nil?! {error: %s}", v43, 0xCu);
      sub_10000607C(v44);

LABEL_19:

      v10 = v74;
      v9 = v75;
      a4 = v73;
      a2 = v72;
      goto LABEL_20;
    }

    a4 = v73;
  }

LABEL_20:
  if (qword_100935D18 != -1)
  {
    swift_once();
  }

  v64 = swift_allocObject();
  v64[2] = v76;
  v64[3] = a4;
  v64[4] = a1;
  v64[5] = a2;
  aBlock[4] = sub_1005528EC;
  aBlock[5] = v64;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F6BF8;
  v65 = _Block_copy(aBlock);
  v66 = a2;
  v67 = v65;
  v68 = v66;
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v79 = &_swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v67);
  (*(v10 + 8))(v13, v9);
  (*(v77 + 8))(v17, v78);

  [a5 setRemXPCCompletion:0];
}

void sub_100551C1C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, void *a4)
{
  a1(a3);
  if (a4)
  {
    v6 = qword_100936530;
    v7 = a4;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_10094C4A8);
    v9 = v7;
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v12 = 136315394;
      v13 = [v9 transactionId];
      if (v13)
      {
        v14 = v13;

        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = sub_10000668C(v15, v17, &v53);
        v17, v19, v20, v21, v22, v23, v24, v25;
        *(v12 + 4) = v18;
        *(v12 + 12) = 2080;
        if (a3)
        {
          swift_getErrorValue();
          v26 = Error.localizedDescription.getter();
          v28 = v27;
        }

        else
        {
          v26 = 7104878;
          v28 = 0xE300000000000000;
        }

        v36 = sub_10000668C(v26, v28, &v53);
        v28, v37, v38, v39, v40, v41, v42, v43;
        *(v12 + 14) = v36;
        _os_log_impl(&_mh_execute_header, v10, v11, "DADREMShareResponseDelegate has done calling XPC completion with DATransaction {transactionId: %s, error: %s}", v12, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        __break(1u);
      }
    }

    else
    {
    }
  }

  else
  {
    if (qword_100936530 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_10094C4A8);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v53 = v32;
      *v31 = 136315138;
      if (a3)
      {
        swift_getErrorValue();
        v33 = Error.localizedDescription.getter();
        v35 = v34;
      }

      else
      {
        v33 = 7104878;
        v35 = 0xE300000000000000;
      }

      v44 = sub_10000668C(v33, v35, &v53);
      v35, v45, v46, v47, v48, v49, v50, v51;
      *(v31 + 4) = v44;
      _os_log_impl(&_mh_execute_header, oslog, v30, "DADREMShareResponseDelegate has done calling XPC completion, but DATransaction was nil?! {error: %s}", v31, 0xCu);
      sub_10000607C(v32);
    }

    else
    {
    }
  }
}

uint64_t sub_100552044(void (*a1)(void))
{
  if (qword_100936870 != -1)
  {
    swift_once();
  }

  if ((byte_1009753A9 & 1) == 0)
  {
    if (qword_100936530 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_10094C4A8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_18;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "RDDACalDAVShareRequestHandler: Attempted to call DADREMShareResponseDelegate when DataAccess is disabled, aborting...";
    goto LABEL_17;
  }

  if (byte_1009753A8 == 1 && gDADOperationQueue != 0)
  {
    v9 = [objc_opt_self() sharedManager];
    if ([v9 rem_storeProvider])
    {
      swift_unknownObjectRelease();
      v11 = [v9 activeAgents];
      if (v11)
      {
        v12 = v11;
        sub_1005528F8();
        v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = v13 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13, v14, v15, v16, v17, v18, v19, v20;
        if (v21)
        {

          return 1;
        }
      }

      if (qword_100936530 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100006654(v23, qword_10094C4A8);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_34;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "RDDACalDAVShareRequestHandler: Trying to call DADREMShareResponseDelegate when DADAgentManager has no active accounts, aborting...";
    }

    else
    {
      if (qword_100936530 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100006654(v28, qword_10094C4A8);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_34;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "RDDACalDAVShareRequestHandler: Trying to call DADREMShareResponseDelegate when DADAgentManager is not yet set up properly, aborting...";
    }

    _os_log_impl(&_mh_execute_header, v24, v25, v27, v26, 2u);

LABEL_34:

    a1(0);
    return 0;
  }

  if (qword_100936530 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_10094C4A8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "RDDACalDAVShareRequestHandler: Trying to call DADREMShareResponseDelegate when DataAccess is not yet up and running, aborting...";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);
  }

LABEL_18:

  a1(0);
  return 0;
}

void sub_100552444(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, uint64_t a4, _TtC7remindd19RDXPCStorePerformer *a5, void (*a6)(void), uint64_t a7)
{
  if (sub_100552044(a6))
  {
    v65 = a1;
    v66 = a4;
    v14 = [objc_allocWithZone(DATransaction) init];
    if (qword_100936530 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_10094C4A8);
    v16 = v14;

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    a3, v19, v20, v21, v22, v23, v24, v25;
    a5, v26, v27, v28, v29, v30, v31, v32;

    if (os_log_type_enabled(v17, v18))
    {
      v63 = v14;
      v33 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v33 = 136315650;
      v64 = v16;
      v62 = a2;
      if (v16 && (v34 = [v16 transactionId]) != 0)
      {
        v35 = v34;
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;
      }

      else
      {
        v38 = 0xE400000000000000;
        v36 = 1819047278;
      }

      v39 = sub_10000668C(v36, v38, &aBlock);
      v38, v40, v41, v42, v43, v44, v45, v46;
      *(v33 + 4) = v39;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_10000668C(v66, a5, &aBlock);
      *(v33 + 22) = 2080;
      *(v33 + 24) = sub_10000668C(v62, a3, &aBlock);
      _os_log_impl(&_mh_execute_header, v17, v18, "RDDACalDAVShareRequestHandler: Creating a DADREMShareResponseDelegate to call onto respondToShareRequest() {DATransaction.id: %s, accountID: %s, calendarURL: %s}", v33, 0x20u);
      swift_arrayDestroy();

      v14 = v63;
      v16 = v64;
    }

    else
    {
    }

    v47 = objc_allocWithZone(DADREMShareResponseDelegate);
    v48 = String._bridgeToObjectiveC()();
    v49 = String._bridgeToObjectiveC()();
    v50 = [v47 initWithAccountID:v48 calendarID:v49];

    v51 = swift_allocObject();
    v51[2] = v14;
    v51[3] = a6;
    v51[4] = a7;
    v51[5] = v50;
    v71 = sub_1005528D0;
    v72 = v51;
    aBlock = _NSConcreteStackBlock;
    v68 = 1107296256;
    v69 = sub_100042968;
    v70 = &unk_1008F6B58;
    v52 = _Block_copy(&aBlock);
    v53 = v50;
    v54 = v16;
    v55 = v53;

    [v55 setRemXPCCompletion:v52];
    _Block_release(v52);

    v56 = [objc_opt_self() sharedMain];
    if (v56)
    {
      v57 = v56;
      v58 = swift_allocObject();
      *(v58 + 16) = v55;
      *(v58 + 24) = v65;
      v71 = sub_1005528DC;
      v72 = v58;
      aBlock = _NSConcreteStackBlock;
      v68 = 1107296256;
      v69 = sub_100019200;
      v70 = &unk_1008F6BA8;
      v59 = _Block_copy(&aBlock);
      v60 = v55;
      v61 = v57;

      [v61 addToOperationsQueueDisabledCheckAndGoBlock:0 wrappedBlock:v59];

      _Block_release(v59);
      v54 = v61;
    }

    else
    {
    }
  }
}

unint64_t sub_1005528F8()
{
  result = qword_10094C558;
  if (!qword_10094C558)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10094C558);
  }

  return result;
}

uint64_t sub_100552948()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094C560);
  v1 = sub_100006654(v0, qword_10094C560);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100552A10(uint64_t a1@<X0>, _TtC7remindd19RDXPCStorePerformer *a2@<X1>, uint64_t a3@<X2>, _TtC7remindd19RDXPCStorePerformer *a4@<X3>, void (*a5)(void, void, void)@<X4>, uint64_t a6@<X8>)
{
  v258 = a4;
  v254 = a3;
  v253 = a1;
  v244 = a6;
  v245 = type metadata accessor for REMRemindersListDataView.ListsModel();
  v243 = *(v245 - 8);
  __chkstk_darwin(v245, v8);
  v241 = &v229 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v242 = &v229 - v12;
  v13 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  __chkstk_darwin(v13 - 8, v14);
  v237 = &v229 - v15;
  v252 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
  v238 = *(v252 - 8);
  __chkstk_darwin(v252, v16);
  v250 = &v229 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v251 = &v229 - v20;
  v21 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v248 = *(v21 - 8);
  v249 = v21;
  __chkstk_darwin(v21, v22);
  v246 = &v229 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v25);
  v247 = &v229 - v26;
  v27 = type metadata accessor for REMRemindersListDataView.Diff();
  v28 = *(v27 - 8);
  v239 = v27;
  v240 = v28;
  __chkstk_darwin(v27, v29);
  v31 = &v229 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32, v33);
  v35 = &v229 - v34;
  v36 = _s10PredicatesOMa_3(0);
  __chkstk_darwin(v36, v37);
  v39 = &v229 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v40, v41);
  v43 = &v229 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = a5;
  v44 = REMRemindersListDataView.GroupInvocation.Parameters.group.getter();
  v45 = v257;
  v46 = sub_10055535C(a2, v258, v44);
  v257 = v45;
  if (v45)
  {

    return;
  }

  v233 = v36;
  v234 = v39;
  v230 = v31;
  v236 = a2;
  v231 = v35;
  v235 = v46;

  v47 = REMRemindersListDataView.GroupInvocation.Parameters.group.getter();
  v48 = [v47 objectID];

  v49 = REMRemindersListDataView.GroupInvocation.Parameters.includePinnedSublists.getter();
  *v43 = v48;
  v232 = v49 & 1;
  v43[8] = v49 & 1;
  swift_storeEnumTagMultiPayload();
  v50 = qword_100936528;
  v51 = v48;
  if (v50 != -1)
  {
    swift_once();
  }

  v52 = qword_100975238;
  v53 = sub_10001F6F4();
  v54 = sub_100405438(0, v52, 0, v53);

  v55 = v236;
  v56 = v257;
  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [(RDXPCStorePerformer *)v54 setSortDescriptors:isa];

  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v58 = NSManagedObjectContext.fetch<A>(_:)();
  if (v56)
  {
    sub_100025494(v43, _s10PredicatesOMa_1);

    return;
  }

  v59 = v58;
  v260 = v58;
  sub_1000F5104(&qword_10093F6F0, qword_10079A300);
  sub_100155610();
  v60 = Sequence.elements<A>(ofType:)();

  sub_100025494(v43, _s10PredicatesOMa_1);
  v59, v61, v62, v63, v64, v65, v66, v67;
  v68 = v258;
  v69 = sub_1000271D0(v60, v258);
  v60, v70, v71, v72, v73, v74, v75, v76;
  v260 = 0;
  __chkstk_darwin(v77, v78);
  v79 = v256;
  *(&v229 - 4) = v255;
  *(&v229 - 3) = v55;
  *(&v229 - 2) = v79;
  *(&v229 - 1) = &v260;
  v80 = sub_10025D2C0(sub_1005556E0, (&v229 - 6), v69);
  v81 = v234;
  *v234 = v51;
  *(v81 + 8) = v232;
  swift_storeEnumTagMultiPayload();
  v82 = v51;
  v83 = sub_100717C9C(v81, v55, 0);
  sub_100025494(v81, _s10PredicatesOMa_3);
  v84 = sub_1000303FC(v83, v68);
  v83, v85, v86, v87, v88, v89, v90, v91;
  type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation();
  v92 = v55;
  v93 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  __chkstk_darwin(v93, v94);
  v96 = v253;
  v95 = v254;
  *(&v229 - 8) = v97;
  *(&v229 - 7) = v96;
  *(&v229 - 6) = v92;
  *(&v229 - 5) = v95;
  *(&v229 - 4) = v68;
  *(&v229 - 3) = v256;
  *(&v229 - 2) = &v260;
  v98 = sub_10025D2C0(sub_100555704, (&v229 - 10), v84);
  v259 = v80;
  sub_100272054(v98);
  v99 = v259;
  v100 = REMRemindersListDataView.GroupInvocation.Parameters.group.getter();
  v101 = [v100 accountID];

  v103 = sub_10055573C(v99, v69, v84, v101, v92, v102);
  v99, v104, v105, v106, v107, v108, v109, v110;

  v84, v111, v112, v113, v114, v115, v116, v117;
  v69, v118, v119, v120, v121, v122, v123, v124;

  v125 = v260;
  v126 = [v255 fetchResultTokenToDiffAgainst];
  sub_100534D44(v126, v231);

  v253 = v125;
  v254 = v103;
  v257 = 0;
  v127 = v247;
  REMRemindersListDataView.GroupInvocation.Parameters.remindersPrefetch.getter();
  v128 = v248;
  v129 = v246;
  v130 = v127;
  v131 = v249;
  (*(v248 + 16))(v246, v130, v249);
  v132 = (*(v128 + 88))(v129, v131);
  if (v132 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    (*(v128 + 96))(v129, v131);
    v250 = *v129;
    v133 = *(v254 + 16);
    if (v133)
    {
      v134 = v238 + 16;
      v135 = *(v238 + 16);
      v136 = v254 + ((*(v238 + 80) + 32) & ~*(v238 + 80));
      v255 = *(v238 + 72);
      v256 = v135;
      v137 = (v238 + 8);
      v138 = &_swiftEmptyArrayStorage;
      v139 = v251;
      while (1)
      {
        v140 = v139;
        v141 = v252;
        v142 = v134;
        v256(v139, v136, v252);
        v143 = REMRemindersListDataView.ListsModel.Sublist.reminders.getter();
        (*v137)(v140, v141);
        v144 = *(v143 + 16);
        v145 = *v138->clientIdentity;
        v146 = v145 + v144;
        if (__OFADD__(v145, v144))
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v146 > *&v138->clientIdentity[8] >> 1)
        {
          if (v145 <= v146)
          {
            v155 = v145 + v144;
          }

          else
          {
            v155 = v145;
          }

          v138 = sub_100365A24(isUniquelyReferenced_nonNull_native, v155, 1, v138);
        }

        if (*(v143 + 16))
        {
          v156 = (*&v138->clientIdentity[8] >> 1) - *v138->clientIdentity;
          type metadata accessor for REMRemindersListDataView.ReminderLite();
          if (v156 < v144)
          {
            goto LABEL_55;
          }

          swift_arrayInitWithCopy();
          v143, v157, v158, v159, v160, v161, v162, v163;
          v134 = v142;
          v139 = v251;
          if (v144)
          {
            v164 = *v138->clientIdentity;
            v165 = __OFADD__(v164, v144);
            v166 = v164 + v144;
            if (v165)
            {
              goto LABEL_56;
            }

            *v138->clientIdentity = v166;
          }
        }

        else
        {
          v143, v148, v149, v150, v151, v152, v153, v154;
          v134 = v142;
          v139 = v251;
          if (v144)
          {
            goto LABEL_54;
          }
        }

        v136 += v255;
        if (!--v133)
        {
          goto LABEL_46;
        }
      }

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
      __break(1u);
      goto LABEL_61;
    }

    v138 = &_swiftEmptyArrayStorage;
LABEL_46:
    sub_10053DB98(v250, v138, v236, v258, 0);
    v138, v212, v213, v214, v215, v216, v217, v218;
    (*(v248 + 8))(v247, v249);
    goto LABEL_51;
  }

  if (v132 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {
    v168 = v248;
    v167 = v249;
    v169 = v246;
    (*(v248 + 96))(v246, v249);
    v170 = v231;
    sub_10053E698(*v169, v231, v236, v258, 0);
    (*(v168 + 8))(v247, v167);
    v171 = v245;
    v173 = v242;
    v172 = v243;
    v174 = v240;
    v175 = v241;
    v176 = v239;
LABEL_52:
    REMRemindersListDataView.ListsModel.init(groups:completedRemindersCount:hasCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    (*(v172 + 16))(v175, v173, v171);
    (*(v174 + 16))(v230, v170, v176);
    REMRemindersListDataView.GroupInvocation.Result.init(model:diff:group:)();
    (*(v172 + 8))(v173, v171);
    (*(v174 + 8))(v170, v176);
    return;
  }

  if (v132 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    v177 = v246;
    (*(v248 + 96))(v246, v249);
    v251 = *v177;
    v178 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
    sub_100031B58(v177 + *(v178 + 48), v237, &qword_10094B8E0, &unk_1007AABD0);
    v179 = *(v254 + 16);
    if (v179)
    {
      v180 = v238 + 16;
      v181 = *(v238 + 16);
      v182 = v254 + ((*(v238 + 80) + 32) & ~*(v238 + 80));
      v255 = *(v238 + 72);
      v256 = v181;
      v183 = (v238 + 8);
      v184 = &_swiftEmptyArrayStorage;
      v185 = v252;
      v186 = v250;
      while (1)
      {
        v187 = v186;
        v188 = v180;
        v256(v186, v182, v185);
        v189 = REMRemindersListDataView.ListsModel.Sublist.reminders.getter();
        (*v183)(v187, v185);
        v190 = *(v189 + 16);
        v191 = *v184->clientIdentity;
        v192 = v191 + v190;
        if (__OFADD__(v191, v190))
        {
          goto LABEL_57;
        }

        v193 = swift_isUniquelyReferenced_nonNull_native();
        if (!v193 || v192 > *&v184->clientIdentity[8] >> 1)
        {
          if (v191 <= v192)
          {
            v201 = v191 + v190;
          }

          else
          {
            v201 = v191;
          }

          v184 = sub_100365A24(v193, v201, 1, v184);
        }

        if (*(v189 + 16))
        {
          v202 = (*&v184->clientIdentity[8] >> 1) - *v184->clientIdentity;
          type metadata accessor for REMRemindersListDataView.ReminderLite();
          if (v202 < v190)
          {
            goto LABEL_59;
          }

          swift_arrayInitWithCopy();
          v189, v203, v204, v205, v206, v207, v208, v209;
          v185 = v252;
          v180 = v188;
          v186 = v250;
          if (v190)
          {
            v210 = *v184->clientIdentity;
            v165 = __OFADD__(v210, v190);
            v211 = v210 + v190;
            if (v165)
            {
              goto LABEL_60;
            }

            *v184->clientIdentity = v211;
          }
        }

        else
        {
          v189, v194, v195, v196, v197, v198, v199, v200;
          v185 = v252;
          v180 = v188;
          v186 = v250;
          if (v190)
          {
            goto LABEL_58;
          }
        }

        v182 += v255;
        if (!--v179)
        {
          goto LABEL_50;
        }
      }
    }

    v184 = &_swiftEmptyArrayStorage;
LABEL_50:
    v219 = v236;
    v220 = v258;
    sub_10053DB98(v251, v184, v236, v258, 0);
    v221 = v237;
    sub_10053EBE4(v237, v184, v219, v220, 0);
    v184, v222, v223, v224, v225, v226, v227, v228;
    sub_1000050A4(v221, &qword_10094B8E0, &unk_1007AABD0);
    (*(v248 + 8))(v247, v249);
    goto LABEL_51;
  }

  if (v132 == enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
  {
    (*(v248 + 8))(v247, v249);
LABEL_51:
    v171 = v245;
    v173 = v242;
    v172 = v243;
    v174 = v240;
    v175 = v241;
    v176 = v239;
    v170 = v231;
    goto LABEL_52;
  }

LABEL_61:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_100553A78(id *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v76 = a6;
  v77 = a5;
  v73 = a4;
  v91 = a2;
  v8 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v8 - 8, v9);
  v75 = v72 - v10;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v84 = *(Subtasks - 8);
  __chkstk_darwin(Subtasks, v11);
  v83 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v88 = *(v13 - 8);
  v89 = v13;
  __chkstk_darwin(v13, v14);
  v82 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v81, v16);
  v79 = (v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18, v19);
  v80 = v72 - v20;
  v21 = _s10PredicatesOMa(0);
  __chkstk_darwin(v21, v22);
  v24 = (v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25, v27);
  v29 = v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v32 = __chkstk_darwin(v30, v31).n128_u64[0];
  v34 = v72 - v33;
  v74 = *a1;
  v35 = [v74 objectID];
  REMRemindersListDataView.GroupInvocation.Parameters.sortingStyle.getter();
  sub_1000F5104(&unk_100942AF0, qword_1007A7520);
  *v24 = v35;
  v78 = v35;
  REMRemindersListDataView.GroupInvocation.Parameters.showCompleted.getter();
  v72[1] = v21;
  swift_storeEnumTagMultiPayload();
  v36 = sub_100043AA8();
  sub_100025494(v24, _s10PredicatesOMa);
  v85 = v26;
  v37 = *(v26 + 16);
  v87 = v25;
  v37(v29, v34, v25);
  v38 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v39 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v40 = v79;
  (*(*(v39 - 8) + 104))(v79, v38, v39);
  swift_storeEnumTagMultiPayload();
  v41 = v80;
  sub_1005368D8(v29, v40, v80);
  v42 = v82;
  v81 = a3;
  REMRemindersListDataView.GroupInvocation.Parameters.showCompleted.getter();
  v43 = v91;
  v44 = v83;
  v45 = v84;
  v46 = Subtasks;
  (*(v84 + 104))(v83, enum case for REMRemindersListDataView.FetchSubtasks.on(_:));
  v47 = v90;
  v48 = sub_100536D54(v43, v36, v41, v42, v44, &_swiftEmptyArrayStorage, 0);
  v90 = v47;
  if (v47)
  {

    (*(v45 + 8))(v44, v46);
    (*(v88 + 8))(v42, v89);
    sub_100025494(v41, _s9UtilitiesO12SortingStyleOMa);
    (*(v85 + 8))(v34, v87);
    v49 = v90;
LABEL_3:
    *v77 = v49;
    return;
  }

  v79 = v48;

  (*(v45 + 8))(v44, v46);
  (*(v88 + 8))(v42, v89);
  sub_100025494(v41, _s9UtilitiesO12SortingStyleOMa);
  (*(v85 + 8))(v34, v87);
  v50 = v74;
  v51 = [v74 objectID];
  if (REMRemindersListDataView.GroupInvocation.Parameters.countCompleted.getter())
  {
    *v24 = v51;
    swift_storeEnumTagMultiPayload();
    v52 = v51;
    v53 = sub_100043AA8();
    sub_100025494(v24, _s10PredicatesOMa);
    v54 = v75;
    v55 = v90;
    sub_10053464C(v91, v53);
    v49 = v55;

    if (v55)
    {
      v79, v56, v57, v58, v59, v60, v61, v62;

      goto LABEL_3;
    }

    v66 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    v67 = *(v66 - 8);
    (*(v67 + 56))(v54, 0, 1, v66);
    v65 = REMRemindersListDataView.CountByCompleted.completed.getter();
    (*(v67 + 8))(v54, v66);
  }

  else
  {

    v63 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    v64 = v75;
    (*(*(v63 - 8) + 56))(v75, 1, 1, v63);
    sub_1000050A4(v64, &qword_100938A70, &qword_1007ACC60);
    v65 = 0;
  }

  if (__OFADD__(*v73, v65))
  {
    __break(1u);
  }

  else
  {
    *v73 += v65;
    v68 = [v50 objectID];
    REMObjectID.codable.getter();

    v69 = [v50 displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v70 = [v50 color];
    if (v70)
    {
      v71 = v70;
      REMColor.codable.getter();
    }

    REMRemindersListDataView.ListsModel.Sublist.init(listID:listName:listColor:reminders:isCustomSmartList:)();
  }
}

uint64_t sub_100554290@<X0>(id *a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, _TtC7remindd19RDXPCStorePerformer *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, void *a7@<X7>, uint64_t a8@<X8>, void *a10)
{
  v56 = a7;
  v67 = a2;
  v68 = a6;
  v65 = a4;
  v66 = a5;
  v64 = a3;
  v52[1] = a8;
  v11 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v58 = *(v11 - 8);
  v59 = v11;
  __chkstk_darwin(v11, v12);
  v54 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v55 = v52 - v16;
  v17 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v17 - 8, v18);
  v57 = v52 - v19;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v62 = *(Subtasks - 8);
  v63 = Subtasks;
  __chkstk_darwin(Subtasks, v21);
  v61 = v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  __chkstk_darwin(v23 - 8, v24);
  v25 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  __chkstk_darwin(v25 - 8, v26);
  v27 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  __chkstk_darwin(v27 - 8, v28);
  v60 = type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Parameters();
  v29 = *(v60 - 8);
  __chkstk_darwin(v60, v30);
  v32 = v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Result();
  v53 = *(v33 - 1);
  __chkstk_darwin(v33, v34);
  v36 = v52 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *a1;
  REMRemindersListDataView.GroupInvocation.Parameters.sortingStyle.getter();
  REMRemindersListDataView.GroupInvocation.Parameters.showCompleted.getter();
  REMRemindersListDataView.GroupInvocation.Parameters.remindersPrefetch.getter();
  (*(v62 + 104))(v61, enum case for REMRemindersListDataView.FetchSubtasks.on(_:), v63);
  REMRemindersListDataView.CustomSmartListInvocation.Parameters.init(smartList:sortingStyle:showCompleted:countCompleted:remindersPrefetch:fetchSubtasks:shouldFetchManualOrderingID:)();
  v38 = v69;
  sub_1005B86C8(v65, v66, v68, v32, v36);
  if (v38)
  {
    result = (*(v29 + 8))(v32, v60);
    *a10 = v38;
  }

  else
  {
    v69 = v37;
    v68 = v33;
    v40 = v56;
    (*(v29 + 8))(v32, v60);
    v41 = v55;
    REMRemindersListDataView.CustomSmartListInvocation.Result.model.getter();
    v42 = v57;
    REMRemindersListDataView.FlatModel.remindersCount.getter();
    v67 = *(v58 + 8);
    v67(v41, v59);
    v43 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    v44 = *(v43 - 8);
    if ((*(v44 + 48))(v42, 1, v43) == 1)
    {
      result = sub_1000050A4(v42, &qword_100938A70, &qword_1007ACC60);
      v45 = 0;
    }

    else
    {
      v45 = REMRemindersListDataView.CountByCompleted.completed.getter();
      result = (*(v44 + 8))(v42, v43);
    }

    v46 = v69;
    if (__OFADD__(*v40, v45))
    {
      __break(1u);
    }

    else
    {
      *v40 += v45;
      v47 = [v46 objectID];
      REMObjectID.codable.getter();

      v48 = [v46 name];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v49 = [v46 color];
      if (v49)
      {
        v50 = v49;
        REMColor.codable.getter();
      }

      v51 = v54;
      REMRemindersListDataView.CustomSmartListInvocation.Result.model.getter();
      REMRemindersListDataView.FlatModel.reminders.getter();
      v67(v51, v59);
      REMRemindersListDataView.ListsModel.Sublist.init(listID:listName:listColor:reminders:isCustomSmartList:)();
      return (*(v53 + 8))(v36, v68);
    }
  }

  return result;
}

uint64_t sub_100554944(uint64_t a1)
{
  result = sub_1005560F4(&qword_10094C598, &type metadata accessor for REMRemindersListDataView.GroupInvocation, &protocol conformance descriptor for REMRemindersListDataView.GroupInvocation);
  *(a1 + 8) = result;
  return result;
}

void sub_1005549D0(uint64_t a1, int a2, void *a3, __n128 a4)
{
  v8 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F5104(&qword_10093EDA8, &qword_10079D530);
  __chkstk_darwin(v13, v14);
  v25 = (&v76 - v24);
  v83 = *(a1 + 16);
  if (!v83)
  {
    a1, v16, v17, v18, v19, v20, v21, v22;
    return;
  }

  LODWORD(v80) = a2;
  v78 = v4;
  v26 = *(v15 + 48);
  v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v82 = *(v23 + 72);
  v84 = a1;
  v77 = v27;
  sub_100556084(a1 + v27, &v76 - v24);
  v79 = v9;
  v28 = *(v9 + 32);
  v90 = *v25;
  v29 = v90;
  v81 = v26;
  v85 = v12;
  v86 = v8;
  v28(v12, v25 + v26, v8);
  v30 = *a3;
  v32 = sub_100364044(v29);
  v33 = v30[2];
  v34 = (v31 & 1) == 0;
  v35 = v33 + v34;
  if (__OFADD__(v33, v34))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v36 = v31;
  if (v30[3] >= v35)
  {
    if (v80)
    {
      v39 = v79;
      if ((v31 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1003739C4();
      v39 = v79;
      if ((v36 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_10036AEF8(v35, v80 & 1);
  v37 = sub_100364044(v29);
  if ((v36 & 1) == (v38 & 1))
  {
    v32 = v37;
    v39 = v79;
    if ((v36 & 1) == 0)
    {
LABEL_13:
      v48 = *a3;
      *(*a3 + 8 * (v32 >> 6) + 64) |= 1 << v32;
      *(v48[6] + 8 * v32) = v29;
      v49 = v48[7];
      v80 = *(v39 + 72);
      v28((v49 + v80 * v32), v85, v86);
      v57 = v48[2];
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (!v58)
      {
        v48[2] = v59;
        v60 = v84;
        if (v83 == 1)
        {
LABEL_23:
          v60, v50, v51, v52, v53, v54, v55, v56;
          return;
        }

        v61 = v84 + v82 + v77;
        v62 = 1;
        while (v62 < *v60->clientIdentity)
        {
          sub_100556084(v61, v25);
          v90 = *v25;
          v29 = v90;
          v28(v85, v25 + v81, v86);
          v63 = *a3;
          v64 = sub_100364044(v29);
          v66 = v63[2];
          v67 = (v65 & 1) == 0;
          v58 = __OFADD__(v66, v67);
          v68 = v66 + v67;
          if (v58)
          {
            goto LABEL_25;
          }

          v69 = v65;
          if (v63[3] < v68)
          {
            sub_10036AEF8(v68, 1);
            v64 = sub_100364044(v29);
            if ((v69 & 1) != (v70 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v69)
          {
            v39 = v79;
            goto LABEL_10;
          }

          v71 = *a3;
          *(*a3 + 8 * (v64 >> 6) + 64) |= 1 << v64;
          *(v71[6] + 8 * v64) = v29;
          v28((v71[7] + v80 * v64), v85, v86);
          v72 = v71[2];
          v58 = __OFADD__(v72, 1);
          v73 = v72 + 1;
          if (v58)
          {
            goto LABEL_26;
          }

          ++v62;
          v71[2] = v73;
          v61 += v82;
          v60 = v84;
          if (v83 == v62)
          {
            goto LABEL_23;
          }
        }

        goto LABEL_27;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_10:
    v40 = swift_allocError();
    swift_willThrow();
    v84, v41, v42, v43, v44, v45, v46, v47;
    v89 = v40;
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v39 + 8))(v85, v86);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  type metadata accessor for REMObjectID_Codable();
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v87 = 0;
  v88 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v74._object = 0x80000001007F8340;
  v74._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v74);
  type metadata accessor for REMObjectID_Codable();
  _print_unlocked<A, B>(_:_:)();
  v75._countAndFlagsBits = 39;
  v75._object = 0xE100000000000000;
  String.append(_:)(v75);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100554F0C(uint64_t a1, uint64_t a2)
{
  v12[3] = type metadata accessor for REMSmartList_Codable();
  v12[4] = sub_1005560F4(&qword_100948C30, &type metadata accessor for REMSmartList_Codable, &protocol conformance descriptor for REMSmartList_Codable);
  v12[5] = sub_1005560F4(&qword_100948C38, &type metadata accessor for REMSmartList_Codable, &protocol conformance descriptor for REMSmartList_Codable);
  v12[0] = a1;
  sub_100030E2C(v12, v11);
  sub_1000F5104(&qword_100948C28, &qword_1007ACC70);
  type metadata accessor for REMList_Codable();
  if (swift_dynamicCast())
  {
    sub_10000607C(v12);
    v4 = v10;
LABEL_5:
    *(a2 + 16) = v4;
    sub_10000607C(v11);
    return a2;
  }

  if (swift_dynamicCast())
  {
    sub_10000607C(v12);
    v4 = v10 | 0x8000000000000000;
    goto LABEL_5;
  }

  if (qword_100936538 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_10094C560);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "unknown or unsupported REM object type for PolymorphicListItem", v8, 2u);
  }

  sub_10000607C(v12);
  sub_10000607C(v11);
  _s19PolymorphicListItemCMa_0();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_100555134(uint64_t a1, uint64_t a2)
{
  v12[3] = type metadata accessor for REMList_Codable();
  v12[4] = sub_1005560F4(&qword_100948C18, &type metadata accessor for REMList_Codable, &protocol conformance descriptor for REMList_Codable);
  v12[5] = sub_1005560F4(&qword_100948C20, &type metadata accessor for REMList_Codable, &protocol conformance descriptor for REMList_Codable);
  v12[0] = a1;
  sub_100030E2C(v12, v11);
  sub_1000F5104(&qword_100948C28, &qword_1007ACC70);
  if (swift_dynamicCast())
  {
    sub_10000607C(v12);
    v4 = v10;
LABEL_5:
    *(a2 + 16) = v4;
    sub_10000607C(v11);
    return a2;
  }

  type metadata accessor for REMSmartList_Codable();
  if (swift_dynamicCast())
  {
    sub_10000607C(v12);
    v4 = v10 | 0x8000000000000000;
    goto LABEL_5;
  }

  if (qword_100936538 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_10094C560);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "unknown or unsupported REM object type for PolymorphicListItem", v8, 2u);
  }

  sub_10000607C(v12);
  sub_10000607C(v11);
  _s19PolymorphicListItemCMa_0();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_10055535C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3)
{
  v6 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v6, v7);
  v9 = (v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007953F0;
  *(v10 + 32) = [a3 objectID];
  *v9 = v10;
  swift_storeEnumTagMultiPayload();
  if (qword_100936528 != -1)
  {
    swift_once();
  }

  v11 = qword_100975238;
  v12 = sub_10001F6F4();
  v13 = sub_100405438(0, v11, 0, v12);

  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [(RDXPCStorePerformer *)v13 setSortDescriptors:isa];

  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v15 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
    sub_100025494(v9, _s10PredicatesOMa_1);

    return a3;
  }

  v49[1] = v15;
  v16 = v15;
  sub_1000F5104(&qword_10093F6F0, qword_10079A300);
  sub_100155610();
  v17 = Sequence.elements<A>(ofType:)();
  v16, v18, v19, v20, v21, v22, v23, v24;

  v25 = sub_1000271D0(v17, a2);
  v17, v26, v27, v28, v29, v30, v31, v32;
  if (!(v25 >> 62))
  {
    result = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_9;
    }

LABEL_14:
    v25, v33, v34, v35, v36, v37, v38, v39;
    sub_100025494(v9, _s10PredicatesOMa_1);
    return a3;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v41 = *&v25->clientIdentity[16];
LABEL_12:
    a3 = v41;
    v25, v42, v43, v44, v45, v46, v47, v48;
    sub_100025494(v9, _s10PredicatesOMa_1);
    return a3;
  }

  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10055573C(_TtC7remindd19RDXPCStorePerformer *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, __n128 a6)
{
  v106 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
  v103 = *(v106 - 8);
  __chkstk_darwin(v106, v11);
  v100 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v102 = &v94 - v15;
  v16 = sub_1000F5104(&qword_10093EDA8, &qword_10079D530);
  v104 = *(v16 - 8);
  v105 = v16;
  __chkstk_darwin(v16, v17);
  v19 = &v94 - v18;
  if (a2 >> 62)
  {
    goto LABEL_81;
  }

  v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
LABEL_84:

    return a1;
  }

LABEL_3:
  if (a3 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
    if (!v21)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v21 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_84;
    }
  }

  v96 = a4;
  v97 = a5;
  v107 = v19;
  v98 = a1;
  v19 = 0;
  v108 = &_swiftEmptyArrayStorage;
  a1 = (a2 & 0xC000000000000001);
  v99 = &_swiftEmptyArrayStorage;
  while (v20 != v19)
  {
    if (a1)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v19 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_76;
      }

      v22 = *(a2 + 8 * v19 + 32);
    }

    a5 = v22;
    a4 = v19 + 1;
    if (__OFADD__(v19, 1))
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
      v20 = _CocoaArrayWrapper.endIndex.getter();
      if (!v20)
      {
        goto LABEL_84;
      }

      goto LABEL_3;
    }

    _s19PolymorphicListItemCMa_0();
    v23 = swift_allocObject();
    v24 = sub_100555134(a5, v23);
    ++v19;
    if (v24)
    {
      v99 = v24;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      a5 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a5 >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v99 = v108;
      v19 = a4;
    }
  }

  v19 = 0;
  a2 = &_swiftEmptyArrayStorage;
  v108 = &_swiftEmptyArrayStorage;
  a1 = (a3 & 0xC000000000000001);
  while (v21 != v19)
  {
    if (a1)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v19 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_78;
      }

      v25 = *(a3 + 8 * v19 + 32);
    }

    a5 = v25;
    v26 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_77;
    }

    _s19PolymorphicListItemCMa_0();
    v27 = swift_allocObject();
    v28 = sub_100554F0C(a5, v27);
    ++v19;
    if (v28)
    {
      a5 = v28;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a4 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      a2 = v108;
      v19 = v26;
    }
  }

  v108 = v99;
  v19 = &v108;
  sub_10027203C(a2);
  a4 = v108;
  if (v108 >> 62)
  {
    v36 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v36 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = v98;
  v38 = v101;
  if (v36 < 2)
  {
LABEL_36:
    v40 = 0;
    if (a4 >> 62)
    {
      goto LABEL_46;
    }

    goto LABEL_37;
  }

  a5 = v96;
  v39 = sub_100012370(a5, v97);
  if (v38)
  {

    v40 = 0;
    v38 = 0;
    if (a4 >> 62)
    {
      goto LABEL_46;
    }

    goto LABEL_37;
  }

  if (!v39)
  {

    goto LABEL_36;
  }

  v41 = v39;
  _s19PolymorphicListItemCMa_0();
  v40 = v41;
  v19 = REMOrderedIdentifierMap.reorder<A>(objects:)();
  v38 = 0;
  a4, v42, v43, v44, v45, v46, v47, v48;

  a4 = v19;
  if (v19 >> 62)
  {
LABEL_46:
    v49 = _CocoaArrayWrapper.endIndex.getter();
    v95 = v40;
    if (!v49)
    {
      goto LABEL_47;
    }

    goto LABEL_38;
  }

LABEL_37:
  v49 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v95 = v40;
  if (!v49)
  {
LABEL_47:
    a4, v29, v30, v31, v32, v33, v34, v35;
    v62 = &_swiftEmptyArrayStorage;
    goto LABEL_48;
  }

LABEL_38:
  v108 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v49 < 0)
  {
    __break(1u);
LABEL_91:
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v50 = 0;
  do
  {
    if ((a4 & 0xC000000000000001) != 0)
    {
      v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v51 = *(a4 + 8 * v50 + 32);
    }

    v52 = (*(v51 + 16) & 0x7FFFFFFFFFFFFFFFLL);
    v53 = [v52 remObjectID];

    ++v50;
    v19 = &v108;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    a5 = *v108->clientIdentity;
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v49 != v50);
  a4, v54, v55, v56, v57, v58, v59, v60;
  v62 = v108;
  v37 = v98;
LABEL_48:
  v101 = v38;
  v63 = *v37->clientIdentity;
  v64 = &_swiftEmptyArrayStorage;
  v99 = v62;
  if (v63)
  {
    v108 = &_swiftEmptyArrayStorage;
    sub_1002533E8(0, v63, 0);
    v64 = v108;
    a4 = v103 + 16;
    v65 = *(v103 + 16);
    v66 = v37 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
    a5 = *(v103 + 72);
    v19 = v107;
    do
    {
      v65(v19 + *(v105 + 48), v66, v106);
      v67 = REMRemindersListDataView.ListsModel.Sublist.listID.getter();
      v19 = v107;
      *v107 = v67;
      v108 = v64;
      v69 = *v64->clientIdentity;
      v68 = *&v64->clientIdentity[8];
      if (v69 >= v68 >> 1)
      {
        sub_1002533E8((v68 > 1), v69 + 1, 1);
        v19 = v107;
        v64 = v108;
      }

      *v64->clientIdentity = v69 + 1;
      sub_100031B58(v19, v64 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v69, &qword_10093EDA8, &qword_10079D530);
      v66 += a5;
      --v63;
    }

    while (v63);
    v62 = v99;
  }

  if (*v64->clientIdentity)
  {
    v19 = sub_1000F5104(&qword_100943EB0, &qword_1007A4640);
    v70 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v70 = _swiftEmptyDictionarySingleton;
  }

  v108 = v70;
  v71 = v101;
  sub_1005549D0(v64, 1, &v108, v61);
  v101 = v71;
  if (v71)
  {
    goto LABEL_91;
  }

  a3 = v108;
  if (v62 >> 62)
  {
    a2 = _CocoaArrayWrapper.endIndex.getter();
    if (a2)
    {
LABEL_60:
      v72 = 0;
      v107 = (v62 & 0xC000000000000001);
      v96 = (v103 + 16);
      v104 = v103 + 32;
      v105 = v62 & 0xFFFFFFFFFFFFFF8;
      a1 = &_swiftEmptyArrayStorage;
      v97 = a2;
      v98 = a3;
      while (1)
      {
        if (v107)
        {
          v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v72 >= *(v105 + 16))
          {
            goto LABEL_80;
          }

          v73 = *&v62->clientIdentity[8 * v72 + 16];
        }

        a5 = v73;
        a4 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          goto LABEL_79;
        }

        v19 = v73;
        v74 = REMObjectID.codable.getter();
        v75 = v74;
        if (*(a3 + 16) && (v19 = a3, v76 = sub_100364044(v74), (v77 & 1) != 0))
        {
          v78 = *(a3 + 56);
          v79 = a1;
          v80 = v103;
          v81 = *(v103 + 72);
          v82 = v100;
          v83 = v106;
          (*(v103 + 16))(v100, v78 + v81 * v76, v106);

          a5 = *(v80 + 32);
          a1 = v79;
          (a5)(v102, v82, v83);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = sub_100365B14(0, *v79->clientIdentity + 1, 1, v79);
          }

          v85 = *a1->clientIdentity;
          v84 = *&a1->clientIdentity[8];
          v19 = v85 + 1;
          a2 = v97;
          a3 = v98;
          if (v85 >= v84 >> 1)
          {
            a1 = sub_100365B14((v84 > 1), v85 + 1, 1, a1);
          }

          *a1->clientIdentity = v19;
          (a5)(a1 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + v85 * v81, v102, v106);
          v62 = v99;
        }

        else
        {
        }

        ++v72;
        if (a4 == a2)
        {
          goto LABEL_88;
        }
      }
    }
  }

  else
  {
    a2 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2)
    {
      goto LABEL_60;
    }
  }

  a1 = &_swiftEmptyArrayStorage;
LABEL_88:

  v62, v86, v87, v88, v89, v90, v91, v92;
  return a1;
}

uint64_t sub_100556084(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10093EDA8, &qword_10079D530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005560F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100556330(void *a1, int a2, int a3, void *aBlock, uint64_t (*a5)(void))
{
  v7 = _Block_copy(aBlock);
  _Block_copy(v7);
  v8 = a1;
  v9 = a5();
  _Block_release(v7);
  _Block_release(v7);

  return v9;
}

void sub_1005563C4(void *a1, int a2, int a3, void *aBlock, const void *a5, uint64_t (*a6)(void))
{
  v9 = _Block_copy(aBlock);
  v10 = _Block_copy(a5);
  _Block_copy(v10);
  v11 = a1;
  v12 = a6();
  _Block_release(v10);
  if (v12)
  {
    v9[2](v9, v12);

    _Block_release(v10);
    _Block_release(v9);

    swift_unknownObjectRelease();
  }

  else
  {

    _Block_release(v10);

    _Block_release(v9);
  }
}

id sub_1005564D4(uint64_t a1, _OWORD *a2, uint64_t a3, Class a4, uint64_t a5, uint64_t a6)
{
  v11 = objc_allocWithZone(a4);
  v12 = &v11[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
  *v12 = a1;
  *(v12 + 1) = a6;
  v13 = &v11[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
  *(v13 + 30) = *(a2 + 30);
  v14 = a2[1];
  *v13 = *a2;
  *(v13 + 1) = v14;
  *&v11[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = a3;
  v16.receiver = v11;
  v16.super_class = a4;
  return objc_msgSendSuper2(&v16, "init");
}

uint64_t sub_100556570(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity);
  v5 = *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity + 44);
  if (v5 >> 14 >= 2)
  {
    if (v5 >> 14 == 2)
    {
      v6 = *(v4 + 10) | (*(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity + 44) << 32);
    }

    else
    {
      v6 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v6 = 2147483519;
  }

  sub_100009A40(16, v6);
  v8 = *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon + 8);
  ObjectType = swift_getObjectType();
  v10 = v4[1];
  v14 = *v4;
  v15[0] = v10;
  *(v15 + 14) = *(v4 + 30);
  result = (*(v8 + 8))(&v14, *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken), ObjectType, v8);
  if (!result)
  {
    v12 = objc_opt_self();
    v13 = String._bridgeToObjectiveC()();
    [v12 xpcPerformerUnavailableErrorWithDescription:v13];

    swift_willThrow();
    v7 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v7);

    return 0;
  }

  return result;
}

uint64_t sub_1005566EC(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity);
  v5 = *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity + 44);
  if (v5 >> 14 >= 2)
  {
    if (v5 >> 14 == 2)
    {
      v6 = *(v4 + 10) | (*(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity + 44) << 32);
    }

    else
    {
      v6 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v6 = 2147483519;
  }

  sub_100009A40(32, v6);
  v8 = *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon + 8);
  ObjectType = swift_getObjectType();
  v10 = v4[1];
  v14 = *v4;
  v15[0] = v10;
  *(v15 + 14) = *(v4 + 30);
  result = (*(v8 + 16))(&v14, *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken), ObjectType, v8);
  if (!result)
  {
    v12 = objc_opt_self();
    v13 = String._bridgeToObjectiveC()();
    [v12 xpcPerformerUnavailableErrorWithDescription:v13];

    swift_willThrow();
    v7 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v7);

    return 0;
  }

  return result;
}

uint64_t sub_100556868(void (*a1)(void), uint64_t a2, void (*a3)(id))
{
  v6 = (v3 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity);
  v7 = *(v3 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity + 44);
  if (v7 >> 14 >= 2)
  {
    if (v7 >> 14 == 2)
    {
      v8 = *(v6 + 10) | (*(v3 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity + 44) << 32);
    }

    else
    {
      v8 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v8 = 2147483519;
  }

  sub_100009A40(32, v8);
  v10 = *(v3 + OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon + 8);
  ObjectType = swift_getObjectType();
  v12 = v6[1];
  v16 = *v6;
  v17[0] = v12;
  *(v17 + 14) = *(v6 + 30);
  if ((*(v10 + 16))(&v16, *(v3 + OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken), ObjectType, v10))
  {
    a1();

    return swift_unknownObjectRelease();
  }

  else
  {
    v13 = objc_opt_self();
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 xpcPerformerUnavailableErrorWithDescription:v14];

    swift_willThrow();
    a3(v15);
  }
}

uint64_t sub_100556A24(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity);
  v5 = *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity + 44);
  if (v5 >> 14 >= 2)
  {
    if (v5 >> 14 == 2)
    {
      v6 = *(v4 + 10) | (*(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity + 44) << 32);
    }

    else
    {
      v6 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v6 = 2147483519;
  }

  sub_100009A40(1, v6);
  v8 = *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon + 8);
  ObjectType = swift_getObjectType();
  v10 = v4[1];
  v14 = *v4;
  v15[0] = v10;
  *(v15 + 14) = *(v4 + 30);
  result = (*(v8 + 24))(&v14, *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken), ObjectType, v8);
  if (!result)
  {
    v12 = objc_opt_self();
    v13 = String._bridgeToObjectiveC()();
    [v12 xpcPerformerUnavailableErrorWithDescription:v13];

    swift_willThrow();
    v7 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v7);

    return 0;
  }

  return result;
}

uint64_t sub_100556BA0(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity);
  v5 = *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity + 44);
  if (v5 >> 14 >= 2)
  {
    if (v5 >> 14 == 2)
    {
      v6 = *(v4 + 10) | (*(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity + 44) << 32);
    }

    else
    {
      v6 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v6 = 2147483519;
  }

  sub_100009A40(8, v6);
  v8 = *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon + 8);
  ObjectType = swift_getObjectType();
  v10 = v4[1];
  v14 = *v4;
  v15[0] = v10;
  *(v15 + 14) = *(v4 + 30);
  result = (*(v8 + 32))(&v14, 0, ObjectType, v8);
  if (!result)
  {
    v12 = objc_opt_self();
    v13 = String._bridgeToObjectiveC()();
    [v12 xpcPerformerUnavailableErrorWithDescription:v13];

    swift_willThrow();
    v7 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v7);

    return 0;
  }

  return result;
}

uint64_t sub_100556D10(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity);
  v5 = *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity + 44);
  if (v5 >> 14 >= 2)
  {
    if (v5 >> 14 == 2)
    {
      v6 = *(v4 + 10) | (*(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity + 44) << 32);
    }

    else
    {
      v6 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v6 = 2147483519;
  }

  sub_100009A40(64, v6);
  v8 = *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon + 8);
  ObjectType = swift_getObjectType();
  v10 = v4[1];
  v14 = *v4;
  v15[0] = v10;
  *(v15 + 14) = *(v4 + 30);
  result = (*(v8 + 40))(&v14, ObjectType, v8);
  if (!result)
  {
    v12 = objc_opt_self();
    v13 = String._bridgeToObjectiveC()();
    [v12 xpcPerformerUnavailableErrorWithDescription:v13];

    swift_willThrow();
    v7 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v7);

    return 0;
  }

  return result;
}

void sub_100556E7C(_TtC7remindd19RDXPCStorePerformer **a1)
{
  v2 = *(type metadata accessor for RDPermanentlyHiddenReminder(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100436504(v3);
  }

  v4 = *v3->clientIdentity;
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1005576DC(v5);
  *a1 = v3;
}

void *sub_100556F24()
{
  v2 = v1;
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v3 - 8, v4);
  v73 = &v70 - v5;
  v6 = type metadata accessor for Date();
  v75 = *(v6 - 8);
  v76 = v6;
  __chkstk_darwin(v6, v7);
  v74 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RDPermanentlyHiddenReminder(0);
  v77 = *(v9 - 8);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v0;
  v13 = *(v0 + 16);
  v14 = *v13->clientIdentity;
  if (v14)
  {
    v71 = v1;
    v15 = sub_100368CEC(v14, 0);
    sub_10027A30C(&v78, v15 + ((*(v77 + 80) + 32) & ~*(v77 + 80)), v14, v13);
    v17 = v16;
    v18 = v78;

    sub_10001B860(v18);
    if (v17 != v14)
    {
      __break(1u);
      goto LABEL_26;
    }

    v2 = v71;
  }

  else
  {
    v15 = &_swiftEmptyArrayStorage;
  }

  *&v78 = v15;

  sub_100556E7C(&v78);
  if (v2)
  {

    __break(1u);
    return result;
  }

  v23 = *(v78 + 16);
  if (v23)
  {
    v24 = *(v77 + 80);
    v71 = v78;
    v25 = v78 + ((v24 + 32) & ~v24);
    v26 = *(v77 + 72);
    v13 = &_swiftEmptyArrayStorage;
    do
    {
      v27 = sub_1001A3A2C(v25, v12);
      __chkstk_darwin(v27, v28);
      *(&v70 - 2) = v12;
      v29 = sub_1003E041C(sub_100558B28, &v70 - 32, &off_1008E3CD0);
      *&v78 = v29;
      sub_1000F5104(&unk_10093B300, &unk_100797780);
      sub_10025D9A0();
      v30 = BidirectionalCollection<>.joined(separator:)();
      v32 = v31;
      v29, v31, v33, v34, v35, v36, v37, v38;
      v79 = &type metadata for String;
      *&v78 = v30;
      *(&v78 + 1) = v32;
      sub_1001A3AF4(v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1003658F0(0, *v13->clientIdentity + 1, 1, v13, v39, v40, v41, v42);
      }

      v44 = *v13->clientIdentity;
      v43 = *&v13->clientIdentity[8];
      if (v44 >= v43 >> 1)
      {
        v13 = sub_1003658F0((v43 > 1), v44 + 1, 1, v13, v39, v40, v41, v42);
      }

      *v13->clientIdentity = v44 + 1;
      sub_100005EE0(&v78, &v13->clientIdentity[32 * v44 + 16]);
      v25 += v26;
      --v23;
    }

    while (v23);
  }

  else
  {

    v13 = &_swiftEmptyArrayStorage;
  }

  v45 = v73;
  sub_10012F78C(v72 + OBJC_IVAR____TtC7remindd21RDRecentlyDeletedInfo_lastPermanentlyHiddenRemindersCleanupDate, v73);
  v17 = v75;
  v14 = v76;
  if ((*(v75 + 48))(v45, 1, v76) != 1)
  {
    (*(v17 + 32))(v74, v45, v14);
    *&v78 = 0;
    *(&v78 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v46._object = 0x80000001007FC4A0;
    v46._countAndFlagsBits = 0xD00000000000002ALL;
    String.append(_:)(v46);
    Date.timeIntervalSinceReferenceDate.getter();
    Double.write<A>(to:)();
    v79 = &type metadata for String;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_18:
      v48 = *v13->clientIdentity;
      v47 = *&v13->clientIdentity[8];
      if (v48 >= v47 >> 1)
      {
        v13 = sub_1003658F0((v47 > 1), v48 + 1, 1, v13, v19, v20, v21, v22);
      }

      (*(v17 + 8))(v74, v14);
      *v13->clientIdentity = v48 + 1;
      sub_100005EE0(&v78, &v13->clientIdentity[32 * v48 + 16]);
      goto LABEL_21;
    }

LABEL_26:
    v13 = sub_1003658F0(0, *v13->clientIdentity + 1, 1, v13, v19, v20, v21, v22);
    goto LABEL_18;
  }

  sub_1001AAD5C(v45);
LABEL_21:
  v49 = objc_autoreleasePoolPush();
  v50 = objc_opt_self();

  isa = Array._bridgeToObjectiveC()().super.isa;
  v13, v52, v53, v54, v55, v56, v57, v58;
  *&v78 = 0;
  v59 = [v50 dataWithJSONObject:isa options:0 error:&v78];

  v60 = v78;
  if (v59)
  {
    v61 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v61 = v60;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  objc_autoreleasePoolPop(v49);
  v13, v62, v63, v64, v65, v66, v67, v68;
  return v61;
}

uint64_t sub_100557590@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*a1)
  {
    type metadata accessor for RDPermanentlyHiddenReminder(0);
    Date.timeIntervalSinceReferenceDate.getter();
    v21 = &type metadata for Double;
    v20[0] = v5;
    v6 = 0x44646574656C6564;
    v7 = 0xEB00000000657461;
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v21 = v8;
    v9 = sub_1000103CC(v20);
    (*(*(v8 - 8) + 16))(v9, a2, v8);
    v6 = 0x7265646E696D6572;
    v7 = 0xEA00000000004449;
  }

  v10 = v7;
  String.append(_:)(*&v6);
  v7, v11, v12, v13, v14, v15, v16, v17;
  v18._countAndFlagsBits = 58;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  _print_unlocked<A, B>(_:_:)();
  result = sub_10000607C(v20);
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  return result;
}

void sub_1005576DC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for RDPermanentlyHiddenReminder(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *v6->clientIdentity = v5;
      }

      v7 = *(type metadata accessor for RDPermanentlyHiddenReminder(0) - 8);
      v15[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v15[1] = v5;
      sub_100557A74(v15, v16, a1, v4);
      *v6->clientIdentity = 0;
      v6, v8, v9, v10, v11, v12, v13, v14;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100557808(0, v2, 1, a1);
  }
}

void sub_100557808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v70 = type metadata accessor for RDPermanentlyHiddenReminder(0);
  __chkstk_darwin(v70, v8);
  v69 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v61 - v12;
  __chkstk_darwin(v14, v15);
  v18 = &v61 - v17;
  v63 = a2;
  if (a3 != a2)
  {
    v19 = *(v16 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v68 = *a4;
    v62 = v19;
    v23 = v68 + v19 * a3;
LABEL_6:
    v66 = v20;
    v67 = a3;
    v64 = v23;
    v65 = v22;
    v31 = v20;
    while (1)
    {
      sub_1001A3A2C(v23, v18);
      sub_1001A3A2C(v31, v13);
      v32 = UUID.uuidString.getter();
      v34 = v33;
      v35 = UUID.uuidString.getter();
      v43 = v36;
      if (v35 == v32 && v36 == v34)
      {
        v34, v36, v37, v38, v39, v40, v41, v42;
        v43, v24, v25, v26, v27, v28, v29, v30;
        sub_1001A3AF4(v13);
        sub_1001A3AF4(v18);
LABEL_5:
        a3 = v67 + 1;
        v20 = v66 + v62;
        v22 = v65 - 1;
        v23 = v64 + v62;
        if (v67 + 1 == v63)
        {
          return;
        }

        goto LABEL_6;
      }

      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v34, v45, v46, v47, v48, v49, v50, v51;
      v43, v52, v53, v54, v55, v56, v57, v58;
      sub_1001A3AF4(v13);
      sub_1001A3AF4(v18);
      if ((v44 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v68)
      {
        break;
      }

      v59 = v69;
      sub_1001A3A90(v23, v69);
      swift_arrayInitWithTakeFrontToBack();
      sub_1001A3A90(v59, v31);
      v31 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_100557A74(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v198 = a1;
  v211 = type metadata accessor for RDPermanentlyHiddenReminder(0);
  v8 = *(v211 - 8);
  __chkstk_darwin(v211, v9);
  v203 = &v191 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v210 = &v191 - v13;
  __chkstk_darwin(v14, v15);
  v213 = &v191 - v16;
  __chkstk_darwin(v17, v18);
  v212 = &v191 - v19;
  __chkstk_darwin(v20, v21);
  v209 = &v191 - v22;
  __chkstk_darwin(v23, v24);
  v208 = &v191 - v25;
  __chkstk_darwin(v26, v27);
  v197 = &v191 - v28;
  __chkstk_darwin(v29, v30);
  v196 = &v191 - v38;
  v39 = a3[1];
  if (v39 < 1)
  {
    v41 = &_swiftEmptyArrayStorage;
LABEL_104:
    v43 = *v198;
    if (!*v198)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_106:
      v214 = v41;
      v187 = *v41->clientIdentity;
      if (v187 >= 2)
      {
        while (*a3)
        {
          v188 = *(&v41->super.isa + 2 * v187);
          v189 = *&v41->clientIdentity[16 * v187 + 8];
          sub_100558438(*a3 + *(v8 + 72) * v188, *a3 + *(v8 + 72) * *&v41->clientIdentity[16 * v187], *a3 + *(v8 + 72) * v189, v43);
          if (v5)
          {
            goto LABEL_114;
          }

          if (v189 < v188)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_1004361F4(v41, v31, v32, v33, v34, v35, v36, v37);
          }

          if (v187 - 2 >= *v41->clientIdentity)
          {
            goto LABEL_130;
          }

          v190 = &v41->super.isa + 2 * v187;
          *v190 = v188;
          v190[1] = v189;
          v214 = v41;
          sub_100436168(v187 - 1);
          v41 = v214;
          v187 = *v214->clientIdentity;
          if (v187 <= 1)
          {
            goto LABEL_114;
          }
        }

        goto LABEL_140;
      }

LABEL_114:
      v41, v31, v32, v33, v34, v35, v36, v37;
      return;
    }

LABEL_136:
    v41 = sub_1004361F4(v41, v31, v32, v33, v34, v35, v36, v37);
    goto LABEL_106;
  }

  v192 = a4;
  v40 = 0;
  v41 = &_swiftEmptyArrayStorage;
  v200 = a3;
  v193 = v8;
  while (1)
  {
    v42 = v40;
    v43 = v40 + 1;
    if (v40 + 1 < v39)
    {
      v204 = v39;
      v44 = v40;
      v45 = *a3;
      v46 = *(v8 + 72);
      v47 = (v40 + 1);
      sub_1001A3A2C(v45 + v46 * v43, v196);
      v199 = v44;
      v206 = v46;
      sub_1001A3A2C(v45 + v46 * v44, v197);
      v43 = UUID.uuidString.getter();
      v49 = v48;
      v50 = UUID.uuidString.getter();
      v58 = v51;
      v195 = v5;
      if (v50 == v43 && v51 == v49)
      {
        LODWORD(v205) = 0;
      }

      else
      {
        LODWORD(v205) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v194 = v41;
      v49, v51, v52, v53, v54, v55, v56, v57;
      v58, v59, v60, v61, v62, v63, v64, v65;
      sub_1001A3AF4(v197);
      sub_1001A3AF4(v196);
      v66 = (v199 + 2);
      v67 = v206 * (v199 + 2);
      v68 = v45 + v67;
      v69 = v47;
      v70 = v206 * v47;
      v71 = v45 + v206 * v47;
      do
      {
        v8 = v66;
        a3 = v69;
        v5 = v70;
        v41 = v67;
        if (v66 >= v204)
        {
          break;
        }

        v207 = v66;
        sub_1001A3A2C(v68, v208);
        sub_1001A3A2C(v71, v209);
        v86 = UUID.uuidString.getter();
        v88 = v87;
        v89 = UUID.uuidString.getter();
        v90 = v72;
        if (v89 == v86 && v72 == v88)
        {
          v43 = 0;
        }

        else
        {
          v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v88, v72, v73, v74, v75, v76, v77, v78;
        v90, v79, v80, v81, v82, v83, v84, v85;
        sub_1001A3AF4(v209);
        sub_1001A3AF4(v208);
        v8 = v207;
        v66 = (v207 + 1);
        v68 += v206;
        v71 += v206;
        v69 = (a3 + 1);
        v70 = v5 + v206;
        v67 = v41 + v206;
      }

      while (((v205 ^ v43) & 1) == 0);
      if (v205)
      {
        v42 = v199;
        if (v8 < v199)
        {
          goto LABEL_133;
        }

        if (v199 < v8)
        {
          v91 = v199 * v206;
          v92 = v199;
          do
          {
            if (v92 != a3)
            {
              v94 = *v200;
              if (!*v200)
              {
                goto LABEL_139;
              }

              sub_1001A3A90(v94 + v91, v203);
              if (v91 < v5 || v94 + v91 >= v41 + v94)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v91 != v5)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1001A3A90(v203, v94 + v5);
            }

            v92 = (v92 + 1);
            v5 -= v206;
            v41 = (v41 - v206);
            v91 += v206;
            v93 = v92 < a3;
            a3 = (a3 - 1);
          }

          while (v93);
        }

        v43 = v8;
        v41 = v194;
        v5 = v195;
        a3 = v200;
      }

      else
      {
        v43 = v8;
        v41 = v194;
        v5 = v195;
        v42 = v199;
        a3 = v200;
      }

      v8 = v193;
    }

    v95 = a3[1];
    if (v43 < v95)
    {
      if (__OFSUB__(v43, v42))
      {
        goto LABEL_132;
      }

      if (v43 - v42 < v192)
      {
        break;
      }
    }

LABEL_53:
    if (v43 < v42)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1003658B8(0, *v41->clientIdentity + 1, 1, v41, v34, v35, v36, v37);
    }

    v142 = *v41->clientIdentity;
    v141 = *&v41->clientIdentity[8];
    v143 = v142 + 1;
    if (v142 >= v141 >> 1)
    {
      v41 = sub_1003658B8((v141 > 1), v142 + 1, 1, v41, v34, v35, v36, v37);
    }

    *v41->clientIdentity = v143;
    v144 = v41 + 16 * v142;
    *(v144 + 4) = v42;
    *(v144 + 5) = v43;
    v145 = *v198;
    if (!*v198)
    {
      goto LABEL_141;
    }

    v207 = v43;
    if (v142)
    {
      while (1)
      {
        v43 = v143 - 1;
        if (v143 >= 4)
        {
          break;
        }

        if (v143 == 3)
        {
          v146 = *&v41->clientIdentity[16];
          v147 = *&v41->clientIdentity[24];
          v156 = __OFSUB__(v147, v146);
          v148 = v147 - v146;
          v149 = v156;
LABEL_73:
          if (v149)
          {
            goto LABEL_120;
          }

          v162 = &v41->super.isa + 2 * v143;
          v164 = *v162;
          v163 = v162[1];
          v165 = __OFSUB__(v163, v164);
          v166 = v163 - v164;
          v167 = v165;
          if (v165)
          {
            goto LABEL_123;
          }

          v168 = &v41->clientIdentity[16 * v43 + 16];
          v170 = *v168;
          v169 = *(v168 + 1);
          v156 = __OFSUB__(v169, v170);
          v171 = v169 - v170;
          if (v156)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v166, v171))
          {
            goto LABEL_127;
          }

          if (v166 + v171 >= v148)
          {
            if (v148 < v171)
            {
              v43 = v143 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v172 = &v41->super.isa + 2 * v143;
        v174 = *v172;
        v173 = v172[1];
        v156 = __OFSUB__(v173, v174);
        v166 = v173 - v174;
        v167 = v156;
LABEL_87:
        if (v167)
        {
          goto LABEL_122;
        }

        v175 = v41 + 16 * v43;
        v177 = *(v175 + 4);
        v176 = *(v175 + 5);
        v156 = __OFSUB__(v176, v177);
        v178 = v176 - v177;
        if (v156)
        {
          goto LABEL_125;
        }

        if (v178 < v166)
        {
          goto LABEL_3;
        }

LABEL_94:
        v183 = v43 - 1;
        if (v43 - 1 >= v143)
        {
          __break(1u);
LABEL_116:
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
          goto LABEL_135;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v184 = *&v41->clientIdentity[16 * v183 + 16];
        v185 = *&v41->clientIdentity[16 * v43 + 24];
        sub_100558438(*a3 + *(v8 + 72) * v184, *a3 + *(v8 + 72) * *&v41->clientIdentity[16 * v43 + 16], *a3 + *(v8 + 72) * v185, v145);
        if (v5)
        {
          goto LABEL_114;
        }

        if (v185 < v184)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1004361F4(v41, v31, v32, v33, v34, v35, v36, v37);
        }

        if (v183 >= *v41->clientIdentity)
        {
          goto LABEL_117;
        }

        v186 = v41 + 16 * v183;
        *(v186 + 4) = v184;
        *(v186 + 5) = v185;
        v214 = v41;
        sub_100436168(v43);
        v41 = v214;
        v143 = *v214->clientIdentity;
        if (v143 <= 1)
        {
          goto LABEL_3;
        }
      }

      v150 = &v41->clientIdentity[16 * v143 + 16];
      v151 = *(v150 - 64);
      v152 = *(v150 - 56);
      v156 = __OFSUB__(v152, v151);
      v153 = v152 - v151;
      if (v156)
      {
        goto LABEL_118;
      }

      v155 = *(v150 - 48);
      v154 = *(v150 - 40);
      v156 = __OFSUB__(v154, v155);
      v148 = v154 - v155;
      v149 = v156;
      if (v156)
      {
        goto LABEL_119;
      }

      v157 = &v41->super.isa + 2 * v143;
      v159 = *v157;
      v158 = v157[1];
      v156 = __OFSUB__(v158, v159);
      v160 = v158 - v159;
      if (v156)
      {
        goto LABEL_121;
      }

      v156 = __OFADD__(v148, v160);
      v161 = v148 + v160;
      if (v156)
      {
        goto LABEL_124;
      }

      if (v161 >= v153)
      {
        v179 = &v41->clientIdentity[16 * v43 + 16];
        v181 = *v179;
        v180 = *(v179 + 1);
        v156 = __OFSUB__(v180, v181);
        v182 = v180 - v181;
        if (v156)
        {
          goto LABEL_128;
        }

        if (v148 < v182)
        {
          v43 = v143 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v39 = a3[1];
    v40 = v207;
    if (v207 >= v39)
    {
      goto LABEL_104;
    }
  }

  v96 = v42 + v192;
  if (__OFADD__(v42, v192))
  {
    goto LABEL_134;
  }

  if (v96 >= v95)
  {
    v96 = a3[1];
  }

  if (v96 < v42)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v43 == v96)
  {
    goto LABEL_53;
  }

  v194 = v41;
  v195 = v5;
  v97 = *a3;
  v98 = *(v8 + 72);
  v99 = *a3 + v98 * (v43 - 1);
  v100 = v42;
  v101 = -v98;
  v199 = v100;
  v102 = v100 - v43;
  v201 = v98;
  v202 = v96;
  v103 = v97 + v43 * v98;
LABEL_44:
  v206 = v99;
  v207 = v43;
  v204 = v103;
  v205 = v102;
  v111 = v99;
  while (1)
  {
    sub_1001A3A2C(v103, v212);
    sub_1001A3A2C(v111, v213);
    v112 = UUID.uuidString.getter();
    v114 = v113;
    v115 = UUID.uuidString.getter();
    v123 = v116;
    if (v115 == v112 && v116 == v114)
    {
      v114, v116, v117, v118, v119, v120, v121, v122;
      v123, v104, v105, v106, v107, v108, v109, v110;
      sub_1001A3AF4(v213);
      sub_1001A3AF4(v212);
LABEL_43:
      v43 = v207 + 1;
      v99 = v206 + v201;
      v102 = v205 - 1;
      v103 = v204 + v201;
      if (v207 + 1 == v202)
      {
        v43 = v202;
        v41 = v194;
        v5 = v195;
        v42 = v199;
        a3 = v200;
        v8 = v193;
        goto LABEL_53;
      }

      goto LABEL_44;
    }

    v124 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v114, v125, v126, v127, v128, v129, v130, v131;
    v123, v132, v133, v134, v135, v136, v137, v138;
    sub_1001A3AF4(v213);
    sub_1001A3AF4(v212);
    if ((v124 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v97)
    {
      break;
    }

    v139 = v210;
    sub_1001A3A90(v103, v210);
    swift_arrayInitWithTakeFrontToBack();
    sub_1001A3A90(v139, v111);
    v111 += v101;
    v103 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

void sub_100558438(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v100 = type metadata accessor for RDPermanentlyHiddenReminder(0);
  __chkstk_darwin(v100, v8);
  v99 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v98 = &v94 - v12;
  __chkstk_darwin(v13, v14);
  v102 = &v94 - v15;
  __chkstk_darwin(v16, v17);
  v101 = &v94 - v18;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_66;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_67;
  }

  v22 = (a2 - a1) / v20;
  v105 = a1;
  v104 = a4;
  if (v22 >= v21 / v20)
  {
    v24 = v21 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v64 = a4 + v24;
    if (v24 >= 1)
    {
      v65 = -v20;
      v66 = a4 + v24;
      v97 = a4;
      do
      {
        v95 = v64;
        v67 = a2;
        v68 = a2 + v65;
        v69 = v64;
        v101 = v67;
        v102 = v68;
        while (1)
        {
          if (v67 <= a1)
          {
            v105 = v67;
            v64 = v95;
            goto LABEL_63;
          }

          v70 = a3;
          v96 = v69;
          v71 = v66 + v65;
          sub_1001A3A2C(v66 + v65, v98);
          sub_1001A3A2C(v68, v99);
          v72 = UUID.uuidString.getter();
          v74 = v73;
          v75 = UUID.uuidString.getter();
          v83 = v76;
          if (v75 == v72 && v76 == v74)
          {
            v84 = 0;
          }

          else
          {
            v84 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          v74, v76, v77, v78, v79, v80, v81, v82;
          v83, v85, v86, v87, v88, v89, v90, v91;
          a3 = v70 + v65;
          sub_1001A3AF4(v99);
          sub_1001A3AF4(v98);
          if (v84)
          {
            break;
          }

          v69 = v66 + v65;
          v92 = v97;
          if (v70 < v66 || a3 >= v66)
          {
            swift_arrayInitWithTakeFrontToBack();
            v68 = v102;
          }

          else
          {
            v68 = v102;
            if (v70 != v66)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 += v65;
          v67 = v101;
          if (v71 <= v92)
          {
            v64 = v71;
            v105 = v101;
            goto LABEL_63;
          }
        }

        v93 = v97;
        if (v70 < v101 || a3 >= v101)
        {
          a2 = v102;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a2 = v102;
          if (v70 != v101)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v64 = v96;
      }

      while (v66 > v93);
    }

    v105 = a2;
LABEL_63:
    v103 = v64;
  }

  else
  {
    v23 = v22 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v99 = a4 + v23;
    v103 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      do
      {
        v26 = a3;
        v27 = v20;
        v28 = a2;
        sub_1001A3A2C(a2, v101);
        sub_1001A3A2C(a4, v102);
        v29 = UUID.uuidString.getter();
        v31 = v30;
        v32 = UUID.uuidString.getter();
        v40 = v33;
        if (v32 == v29 && v33 == v31)
        {
          v31, v33, v34, v35, v36, v37, v38, v39;
          v40, v41, v42, v43, v44, v45, v46, v47;
          sub_1001A3AF4(v102);
          sub_1001A3AF4(v101);
        }

        else
        {
          v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v31, v49, v50, v51, v52, v53, v54, v55;
          v40, v56, v57, v58, v59, v60, v61, v62;
          sub_1001A3AF4(v102);
          sub_1001A3AF4(v101);
          if (v48)
          {
            v20 = v27;
            a2 = v28 + v27;
            if (a1 < v28 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
              a3 = v26;
            }

            else
            {
              a3 = v26;
              if (a1 != v28)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            goto LABEL_34;
          }
        }

        v20 = v27;
        v63 = a4 + v27;
        a2 = v28;
        if (a1 < a4 || a1 >= v63)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v26;
        }

        else
        {
          a3 = v26;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v104 = v63;
        a4 = v63;
LABEL_34:
        a1 += v20;
        v105 = a1;
      }

      while (a4 < v99 && a2 < a3);
    }
  }

  sub_100558A40(&v105, &v104, &v103, type metadata accessor for RDPermanentlyHiddenReminder);
}

uint64_t sub_100558A40(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_100558B44@<X0>(unint64_t *a1@<X8>)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  __chkstk_darwin(v4, v6);
  v41 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001007E8D70;
  Date.timeIntervalSinceReferenceDate.getter();
  *(inited + 72) = &type metadata for Double;
  *(inited + 48) = v10;
  v11 = sub_1001F67C8(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &unk_100939260, &unk_100797220);
  v12 = *(v1 + OBJC_IVAR____TtC7remindd29RDSecondaryGroceryLocalesInfo_secondaryGroceryLocales);
  if (v12)
  {
    v36 = v8;
    v37 = v11;
    v13 = *(v12 + 16);
    v14 = &_swiftEmptyArrayStorage;
    if (v13)
    {
      v34 = a1;
      v35 = v2;
      *&v45 = &_swiftEmptyArrayStorage;
      sub_100026EF4(0, v13, 0);
      v14 = v45;
      v15 = *(v43 + 16);
      v16 = v12 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
      v39 = *(v43 + 72);
      v40 = v15;
      v43 += 16;
      v38 = (v43 - 8);
      do
      {
        v17 = v41;
        v18 = v42;
        v40(v41, v16, v42);
        v19 = Locale.identifier.getter();
        v21 = v20;
        (*v38)(v17, v18);
        *&v45 = v14;
        v23 = *v14->clientIdentity;
        v22 = *&v14->clientIdentity[8];
        if (v23 >= v22 >> 1)
        {
          sub_100026EF4((v22 > 1), v23 + 1, 1);
          v14 = v45;
        }

        *v14->clientIdentity = v23 + 1;
        v24 = v14 + 16 * v23;
        *(v24 + 4) = v19;
        *(v24 + 5) = v21;
        v16 += v39;
        --v13;
      }

      while (v13);
      a1 = v34;
    }

    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_100791340;
    *(v25 + 32) = 0x657079546D756E65;
    *(v25 + 40) = 0xE800000000000000;
    *(v25 + 48) = 0x646469727265766FLL;
    *(v25 + 56) = 0xEA00000000006E65;
    *(v25 + 72) = &type metadata for String;
    *(v25 + 80) = 0x73656C61636F6CLL;
    *(v25 + 88) = 0xE700000000000000;
    *(v25 + 120) = sub_1000F5104(&unk_10093B300, &unk_100797780);
    *(v25 + 96) = v14;
    v26 = sub_1001F67C8(v25);
    swift_setDeallocating();
    sub_1000F5104(&unk_100939260, &unk_100797220);
    swift_arrayDestroy();
    v46 = sub_1000F5104(&unk_100938CB0, &unk_100796A70);
    *&v45 = v26;
    sub_100005EE0(&v45, v44);
    v27 = v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v27;
  }

  else
  {
    v29 = sub_10038E004(&off_1008E3CF8);
    sub_1000050A4(&unk_1008E3D18, &qword_10093DB20, &qword_10079B880);
    v46 = sub_1000F5104(&unk_100945230, &qword_1007A2590);
    *&v45 = v29;
    sub_100005EE0(&v45, v44);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v11;
  }

  sub_1002C88F0(v44, 0xD000000000000017, 0x80000001007F8A90, isUniquelyReferenced_nonNull_native);
  *a1 = v47;
  v30 = enum case for REMJSONType.jsonObject(_:);
  v31 = type metadata accessor for REMJSONType();
  return (*(*(v31 - 8) + 104))(a1, v30, v31);
}

_TtC7remindd19RDXPCStorePerformer *sub_100558FF4@<X0>(_TtC7remindd19RDXPCStorePerformer **a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_100559020(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100559020(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v131 = v2;
  v132 = v3;
  __chkstk_darwin(v2, v4);
  v126 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&qword_10094C750, &qword_1007B1728);
  v127 = *(v6 - 8);
  v128 = v6;
  __chkstk_darwin(v6, v7);
  v129 = &v126 - v8;
  v9 = sub_1000F5104(&qword_10094C758, &qword_1007B1730);
  v134 = *(v9 - 8);
  v135 = v9;
  __chkstk_darwin(v9, v10);
  v133 = &v126 - v11;
  v12 = sub_1000F5104(&qword_10094C760, &qword_1007B1738);
  v137 = *(v12 - 8);
  v138 = v12;
  __chkstk_darwin(v12, v13);
  v136 = &v126 - v14;
  v15 = sub_1000F5104(&unk_100942600, &qword_1007A2E18);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = &v126 - v18;
  v20 = type metadata accessor for Date();
  v139 = *(v20 - 8);
  __chkstk_darwin(v20, v21);
  v130 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v24);
  v26 = &v126 - v25;
  v27 = type metadata accessor for REMJSONType();
  v28 = *(v27 - 8);
  v30 = __chkstk_darwin(v27, v29);
  v32 = (&v126 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v32, a1, v27, v30);
  v33 = (*(v28 + 88))(v32, v27);
  if (v33 == enum case for REMJSONType.jsonObject(_:))
  {
    (*(v28 + 96))(v32, v27);
    v34 = *v32;
    (*(v16 + 104))(v19, enum case for Dictionary<>.DeserializableValueType.date<A, B><A1>(_:), v15);
    v35 = v142;
    Dictionary<>.deserializeRequired<A>(key:valueType:)();
    (*(v16 + 8))(v19, v15);
    if (v35)
    {
      v34, v36, v37, v38, v39, v40, v41, v42;
    }

    else
    {
      v44 = v26;
      v46 = v136;
      v45 = v137;
      v47 = v138;
      (*&v137->coreSuggestionsHandler[10])(v136, enum case for Dictionary<>.DeserializableValueType.remJSONObject<A, B><A1>(_:), v138);
      sub_1000F5104(&unk_100938CB0, &unk_100796A70);
      Dictionary<>.deserializeRequired<A>(key:valueType:)();
      (*v45->storeController)(v46, v47);
      v34, v48, v49, v50, v51, v52, v53, v54;
      v55 = v140;
      v57 = v133;
      v56 = v134;
      v58 = v135;
      (*(v134 + 104))(v133, enum case for Dictionary<>.DeserializableValueType.string<A, B><A1>(_:), v135);
      Dictionary<>.deserializeRequired<A>(key:valueType:)();
      v138 = v44;
      v142 = v20;
      (*(v56 + 8))(v57, v58);
      v68 = v140;
      v67 = v141;
      if (v140 == 0x6974616D6F747561 && v141 == 0xE900000000000063 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v67, v60, v61, v62, v63, v64, v65, v66;
        v55, v69, v70, v71, v72, v73, v74, v75;
        v76 = 0;
      }

      else
      {
        if (v68 == 0x646469727265766FLL && v67 == 0xEA00000000006E65)
        {
          0xEA00000000006E65, v60, 0x646469727265766FLL, v62, v63, v64, v65, v66;
          v80 = v129;
        }

        else
        {
          v81 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v67, v82, v83, v84, v85, v86, v87, v88;
          v80 = v129;
          if ((v81 & 1) == 0)
          {
            v55, v89, v90, v91, v92, v93, v94, v95;
            v34 = type metadata accessor for REMJSONDeserializationError();
            sub_1003466D4();
            swift_allocError();
            (*(*&v34[-1].shareRecordIDToRootRecordIDLock[2] + 104))(v125, enum case for REMJSONDeserializationError.invalidData(_:), v34);
            swift_willThrow();
            (*(v139 + 8))(v138, v142);
            return v34;
          }
        }

        v97 = v127;
        v96 = v128;
        (*(v127 + 104))(v80, enum case for Dictionary<>.DeserializableValueType.arrayOfStrings<A, B><A1>(_:), v128);
        sub_1000F5104(&unk_10093B300, &unk_100797780);
        Dictionary<>.deserializeRequired<A>(key:valueType:)();
        (*(v97 + 8))(v80, v96);
        v55, v98, v99, v100, v101, v102, v103, v104;
        v112 = v140;
        v113 = *v140->clientIdentity;
        if (v113)
        {
          v140 = &_swiftEmptyArrayStorage;
          sub_100253CCC(0, v113, 0);
          v76 = v140;
          v137 = v112;
          v114 = &v112->clientIdentity[24];
          v115 = v126;
          do
          {

            Locale.init(identifier:)();
            v140 = v76;
            v117 = *v76->clientIdentity;
            v116 = *&v76->clientIdentity[8];
            if (v117 >= v116 >> 1)
            {
              sub_100253CCC((v116 > 1), v117 + 1, 1);
              v76 = v140;
            }

            *v76->clientIdentity = v117 + 1;
            (*(v132 + 32))(v76 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v117, v115, v131);
            v114 += 16;
            --v113;
          }

          while (v113);
          v137, v118, v119, v120, v121, v122, v123, v124;
        }

        else
        {
          v140, v105, v106, v107, v108, v109, v110, v111;
          v76 = &_swiftEmptyArrayStorage;
        }
      }

      v77 = *(v139 + 32);
      v78 = v130;
      v79 = v142;
      v77(v130, v138, v142);
      type metadata accessor for RDSecondaryGroceryLocalesInfo(0);
      v34 = swift_allocObject();
      v77(v34 + OBJC_IVAR____TtC7remindd29RDSecondaryGroceryLocalesInfo_lastModifiedDate, v78, v79);
      *(&v34->super.isa + OBJC_IVAR____TtC7remindd29RDSecondaryGroceryLocalesInfo_secondaryGroceryLocales) = v76;
    }

    return v34;
  }

  if (v33 == enum case for REMJSONType.jsonArray(_:))
  {
    (*(v28 + 8))(v32, v27);
    v34 = type metadata accessor for REMJSONDeserializationError();
    sub_1003466D4();
    swift_allocError();
    (*(*&v34[-1].shareRecordIDToRootRecordIDLock[2] + 104))(v43, enum case for REMJSONDeserializationError.invalidData(_:), v34);
    swift_willThrow();
    return v34;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100559A8C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094C768);
  v1 = sub_100006654(v0, qword_10094C768);
  if (qword_100936498 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975110);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100559B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  dispatch thunk of Collection.count.getter();
  sub_1000F5104(&qword_10093B330, &qword_100798980);
  v172[0] = Dictionary.init(minimumCapacity:)();
  sub_1000F5104(&qword_10094C838, qword_1007B1790);
  Sequence.reduce<A>(into:_:)();
  v5 = v169;
  v6 = *v169->clientIdentity;
  v160 = v4;
  if (v6)
  {
    v7 = sub_1003689CC(v6, 0);
    v8 = sub_10027DC5C();

    sub_10001B860(v169);
    if (v8 != v6)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
  }

  v25 = sub_10055AED4(v7);

  v169 = v25;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
  sub_10055B9E4();
  v26 = Sequence.compactIndexBy<A, B>(key:value:)();
  v25, v27, v28, v29, v30, v31, v32, v33;

  __chkstk_darwin(v34, v35);
  sub_10055BBD4(v5, sub_10055BA48);
  v156 = v36;
  v5, v37, v38, v39, v40, v41, v42, v43;
  v44 = 0;
  v45 = v26 + 64;
  v46 = 1 << *(v26 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(v26 + 64);
  v49 = (v46 + 63) >> 6;
  v50 = &selRef_setPublicLinkLastModifiedDate_;
  v155 = v26;
  v153 = v49;
  v154 = v26 + 64;
  while (1)
  {
    if (v48)
    {
      v58 = v156;
      goto LABEL_19;
    }

    v58 = v156;
    do
    {
      v59 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        __break(1u);
        goto LABEL_58;
      }

      if (v59 >= v49)
      {

        return;
      }

      v48 = *(v45 + 8 * v59);
      ++v44;
    }

    while (!v48);
    v44 = v59;
LABEL_19:
    v157 = v48;
    v158 = v44;
    v60 = __clz(__rbit64(v48)) | (v44 << 6);
    v61 = *(*(v26 + 56) + 8 * v60);
    if (*(v58 + 16))
    {
      v62 = (*(v26 + 48) + 16 * v60);
      v63 = *v62;
      v64 = v62[1];
      v65 = v61;

      v66 = sub_100005F4C(v63, v64);
      v68 = v67;
      v64, v67, v69, v70, v71, v72, v73, v74;
      v75 = &_swiftEmptyArrayStorage;
      if (v68)
      {
        v75 = *(*(v156 + 56) + 8 * v66);
      }
    }

    else
    {
      v76 = v61;
      v75 = &_swiftEmptyArrayStorage;
    }

    if (v75 >> 62)
    {
      break;
    }

    v77 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v77)
    {
      goto LABEL_25;
    }

LABEL_11:
    v48 = (v157 - 1) & v157;

    v75, v51, v52, v53, v54, v55, v56, v57;
    v26 = v155;
    v45 = v154;
    v44 = v158;
    v49 = v153;
  }

  v77 = _CocoaArrayWrapper.endIndex.getter();
  if (!v77)
  {
    goto LABEL_11;
  }

LABEL_25:
  if (v77 >= 1)
  {
    v78 = 0;
    v161 = *(v4 + 16);
    v162 = v61;
    v163 = v75;
    v164 = v75 & 0xC000000000000001;
    v165 = v77;
    while (1)
    {
      if (v164)
      {
        v84 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v84 = *&v75->clientIdentity[8 * v78 + 16];
      }

      v85 = v84;
      v86 = [v84 v50[108]];
      v167 = v85;
      if (v86 == 2)
      {
        v87 = 0;
      }

      else
      {
        if (v86 != 3)
        {
          v101 = [v85 v50[108]];
          v97 = 0;
          v100 = 0;
          if (v101 >= 6)
          {
            v95 = 6;
          }

          else
          {
            v95 = qword_1007B17F8[v101];
          }

          goto LABEL_49;
        }

        v87 = 1;
      }

      v88 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter();
      v89 = objc_allocWithZone(v88);
      *&v89[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_reminder] = v61;
      v89[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_field] = v87;
      *&v89[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_storeObjectContext] = v161;
      v90 = &v89[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_onlySpecificCanonicalName];
      *v90 = 0;
      v90[1] = 0;
      v91 = objc_allocWithZone(RDPersistentStoreLookupForREMCDObject);
      v92 = v61;
      v166 = v161;
      v93 = [v91 init:v92];
      *&v89[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_persistentStoreLookup] = v93;
      v168.receiver = v89;
      v168.super_class = v88;
      v94 = objc_msgSendSuper2(&v168, "init");
      v95 = sub_1001B5774();
      v97 = v96;
      v99 = v98;

      if (!(v99 >> 6))
      {
        v75 = v163;
        if (qword_100936540 != -1)
        {
          swift_once();
        }

        v102 = type metadata accessor for Logger();
        sub_100006654(v102, qword_10094C768);
        sub_1001BC0BC(v95, v97, v99);
        v103 = Logger.logObject.getter();
        v104 = static os_log_type_t.error.getter();
        sub_1001E8F6C(v95, v97, v99, v105, v106, v107, v108, v109);
        if (os_log_type_enabled(v103, v104))
        {
          v110 = swift_slowAlloc();
          v159 = swift_slowAlloc();
          v172[0] = v159;
          *v110 = 136446210;
          v169 = v95;
          v170 = v97;
          LOBYTE(v171) = v99;
          sub_1001E8F88();
          v111 = Error.rem_errorDescription.getter();
          v113 = v112;
          v114 = sub_10000668C(v111, v112, v172);
          v113, v115, v116, v117, v118, v119, v120, v121;
          *(v110 + 4) = v114;
          v61 = v162;
          _os_log_impl(&_mh_execute_header, v103, v104, "#️⃣ RDNewlySharedToMeTagAutoConvertRunner: Error autoconverting hashtags. Deleting activity anyway {error: %{public}s}", v110, 0xCu);
          sub_10000607C(v159);

          v4 = v160;
        }

        v50 = &selRef_setPublicLinkLastModifiedDate_;
        [v166 deleteObject:v167];

        sub_1001E8F6C(v95, v97, v99, v122, v123, v124, v125, v126);
        goto LABEL_29;
      }

      v75 = v163;
      if (v99 >> 6 == 1)
      {
        v100 = (v99 & 0x3F);
LABEL_49:
        if (qword_100936540 != -1)
        {
          swift_once();
        }

        v127 = type metadata accessor for Logger();
        sub_100006654(v127, qword_10094C768);
        sub_1001BC0BC(v95, v97, v100);
        v128 = Logger.logObject.getter();
        v129 = static os_log_type_t.error.getter();
        sub_1001BC0F8(v95, v97, v100, v130, v131, v132, v133, v134);
        if (os_log_type_enabled(v128, v129))
        {
          v135 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          v172[0] = v136;
          *v135 = 136446210;
          v169 = v95;
          v170 = v97;
          LOBYTE(v171) = v100;
          sub_1001E8F88();
          v137 = Error.rem_errorDescription.getter();
          v139 = v138;
          v140 = sub_10000668C(v137, v138, v172);
          v139, v141, v142, v143, v144, v145, v146, v147;
          *(v135 + 4) = v140;
          v75 = v163;
          _os_log_impl(&_mh_execute_header, v128, v129, "#️⃣ RDNewlySharedToMeTagAutoConvertRunner: Error autoconverting hashtags. Not deleting activity {error: %{public}s}", v135, 0xCu);
          sub_10000607C(v136);
          v4 = v160;

          v50 = &selRef_setPublicLinkLastModifiedDate_;

          sub_1001BC0F8(v95, v97, v100, v148, v149, v150, v151, v152);
        }

        else
        {

          sub_1001BC0F8(v95, v97, v100, v79, v80, v81, v82, v83);
        }

        v61 = v162;
        goto LABEL_29;
      }

      [v166 deleteObject:v167];

LABEL_29:
      if (v165 == ++v78)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  swift_once();
  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_10094C768);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v169 = v13;
    *v12 = 136446210;
    swift_getErrorValue();
    v14 = Error.rem_errorDescription.getter();
    v16 = v15;
    v17 = sub_10000668C(v14, v15, &v169);
    v16, v18, v19, v20, v21, v22, v23, v24;
    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "#️⃣ RDNewlySharedToMeTagAutoConvertRunner: CoreData error fetching REMCDReminders: {error: %{public}s}", v12, 0xCu);
    sub_10000607C(v13);
  }

  else
  {
  }
}

void sub_10055A588(_TtC7remindd19RDXPCStorePerformer **a1, id *a2, uint64_t a3)
{
  v77 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v11 - 8, v12);
  v14 = (&v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v17 = __chkstk_darwin(v15, v16).n128_u64[0];
  v19 = &v73 - v18;
  v20 = *a2;
  v21 = [*a2 ckIdentifier];
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = *a1;
    if (*(*a1)->clientIdentity && (v27 = sub_100005F4C(v23, v25), (v28 & 1) != 0))
    {
      v29 = *(*&v26->clientIdentity[40] + 8 * v27);
    }

    else
    {
      v29 = &_swiftEmptyArrayStorage;
    }

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007953F0;
    *(inited + 32) = v20;
    v78 = v29;
    v31 = v20;
    sub_10027292C(inited);
    v32 = v78;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = *a1;
    sub_1002CAAC8(v32, v23, v25, isUniquelyReferenced_nonNull_native);
    v25, v34, v35, v36, v37, v38, v39, v40;
    *a1 = v78;
  }

  else
  {
    v74 = v7;
    v75 = v14;
    v73 = v19;
    v41 = v6;
    v76 = v3;
    if (qword_100936540 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100006654(v42, qword_10094C768);
    v43 = v20;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    v46 = os_log_type_enabled(v44, v45);
    v47 = v75;
    if (v46)
    {
      v48 = v10;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v78 = v50;
      *v49 = 136446210;
      v51 = [v43 uuidForChangeTracking];
      if (v51)
      {
        v52 = v51;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v53 = v74;
        (*(v74 + 56))(v47, 0, 1, v41);
      }

      else
      {
        v53 = v74;
        (*(v74 + 56))(v47, 1, 1, v41);
      }

      v54 = v47;
      v55 = v73;
      sub_100100FB4(v54, v73);
      if ((*(v53 + 48))(v55, 1, v41))
      {
        sub_1001A4F9C(v55);
        v56 = 0xE90000000000003ELL;
        v57 = 0x64697575206F6E3CLL;
      }

      else
      {
        (*(v53 + 16))(v48, v55, v41);
        sub_1001A4F9C(v55);
        v75 = v50;
        v58 = v45;
        v59 = v41;
        v60 = v48;
        v61 = v53;
        v62 = UUID.uuidString.getter();
        v56 = v63;
        v64 = v59;
        v45 = v58;
        v50 = v75;
        (*(v61 + 8))(v60, v64);
        v57 = v62;
      }

      v65 = sub_10000668C(v57, v56, &v78);
      v56, v66, v67, v68, v69, v70, v71, v72;
      *(v49 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v44, v45, "#️⃣ RDNewlySharedToMeTagAutoConvertRunner: REMCKSharedEntitySyncActivity[%{public}s] did not have a ckIdentifier; deleting", v49, 0xCu);
      sub_10000607C(v50);
    }

    [*(v77 + 16) deleteObject:v43];
  }
}

void sub_10055AA30(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = type metadata accessor for UUID();
  v10 = *(v72 - 8);
  __chkstk_darwin(v72, v11);
  v64 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v13 - 8, v14);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17, v18);
  v71 = &v59 - v20;
  if (!*(a4 + 16) || (sub_100005F4C(a1, a2), (v21 & 1) == 0))
  {
    if (a3 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
      if (!v22)
      {
        return;
      }
    }

    else
    {
      v22 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        return;
      }
    }

    if (v22 < 1)
    {
      __break(1u);
    }

    else
    {
      v23 = 0;
      v24 = *(a5 + 16);
      v73 = a3 & 0xC000000000000001;
      v74 = v24;
      v66 = (v10 + 48);
      v67 = (v10 + 56);
      v60 = (v10 + 8);
      v61 = (v10 + 16);
      v19.n128_u64[0] = 136446466;
      v65 = v19;
      v69 = a1;
      v70 = a3;
      v62 = v16;
      v63 = a2;
      v68 = v22;
      do
      {
        if (v73)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v25 = *(a3 + 8 * v23 + 32);
        }

        v26 = v25;
        if (qword_100936540 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_100006654(v27, qword_10094C768);
        v28 = v26;

        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();
        a2, v31, v32, v33, v34, v35, v36, v37;

        if (os_log_type_enabled(v29, v30))
        {
          v38 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          *v38 = v65.n128_u32[0];
          v39 = [v28 uuidForChangeTracking];
          if (v39)
          {
            v40 = v39;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v41 = 0;
          }

          else
          {
            v41 = 1;
          }

          v42 = v72;
          (*v67)(v16, v41, 1, v72);
          v43 = v71;
          sub_100100FB4(v16, v71);
          if ((*v66)(v43, 1, v42))
          {
            sub_1001A4F9C(v43);
            v44 = 0xE90000000000003ELL;
            v45 = 0x646975752D6F6E3CLL;
          }

          else
          {
            v46 = v64;
            (*v61)(v64, v43, v42);
            sub_1001A4F9C(v43);
            v47 = v42;
            v45 = UUID.uuidString.getter();
            v44 = v48;
            v49 = v46;
            v50 = v47;
            v16 = v62;
            a2 = v63;
            (*v60)(v49, v50);
          }

          v51 = sub_10000668C(v45, v44, &v75);
          v44, v52, v53, v54, v55, v56, v57, v58;
          *(v38 + 4) = v51;
          *(v38 + 12) = 2082;
          *(v38 + 14) = sub_10000668C(v69, a2, &v75);
          _os_log_impl(&_mh_execute_header, v29, v30, "#️⃣ RDNewlySharedToMeTagAutoConvertRunner: REMCKSharedEntitySyncActivity[%{public}s] had ckIdentifier[%{public}s] that did not correspond to a reminder; deleting activity", v38, 0x16u);
          swift_arrayDestroy();

          a3 = v70;
          v22 = v68;
        }

        else
        {
        }

        ++v23;
        [v74 deleteObject:v28];
      }

      while (v22 != v23);
    }
  }
}

uint64_t sub_10055AED4(uint64_t a1)
{
  v2 = _s10PredicatesOMa(0);
  __chkstk_darwin(v2, v2);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = a1;
  swift_storeEnumTagMultiPayload();

  v5 = sub_100043AA8();
  sub_1000513B4(v4);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v6 = [objc_allocWithZone(NSFetchRequest) init];
  v7 = [swift_getObjCClassFromMetadata() entity];
  [v6 setEntity:v7];

  [v6 setAffectedStores:0];
  [v6 setPredicate:v5];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100792CE0;
  strcpy((v8 + 32), "ckIdentifier");
  *(v8 + 45) = 0;
  *(v8 + 46) = -5120;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = 0x696669746E656469;
  *(v8 + 72) = 0xEA00000000007265;
  *(v8 + 88) = &type metadata for String;
  strcpy((v8 + 96), "titleDocument");
  *(v8 + 110) = -4864;
  *(v8 + 152) = &type metadata for String;
  *(v8 + 120) = &type metadata for String;
  strcpy((v8 + 128), "notesDocument");
  *(v8 + 142) = -4864;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8, v10, v11, v12, v13, v14, v15, v16;
  [v6 setPropertiesToFetch:isa];

  v17 = Array._bridgeToObjectiveC()().super.isa;
  [v6 setRelationshipKeyPathsForPrefetching:v17];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1007953F0;
  v19 = objc_allocWithZone(NSSortDescriptor);
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 initWithKey:v20 ascending:0];

  *(v18 + 32) = v21;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v22 = Array._bridgeToObjectiveC()().super.isa;
  v18, v23, v24, v25, v26, v27, v28, v29;
  [v6 setSortDescriptors:v22];

  v30 = NSManagedObjectContext.fetch<A>(_:)();
  return v30;
}

void *sub_10055B290(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, _TtC7remindd19RDXPCStorePerformer *, _TtC7remindd19RDXPCStorePerformer *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_10055BA50(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

Swift::Int sub_10055B320(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1000F5104(&qword_100943AA8, &qword_1007B17F0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    Hasher.init(_seed:)();

    v33 = v21;
    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10055B560(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1000F5104(&qword_100943F18, &qword_1007A4688);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    result = static Hasher._hash(seed:_:)();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_10055B78C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v6 = a4;
  v7 = a3;
  if (*(a4 + 16) == a3)
  {

    return v6;
  }

  sub_1000F5104(a5, a6);
  result = static _DictionaryStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 64;
  v34 = v6;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v18 = v15 | (v13 << 6);
    v19 = *(v6 + 56);
    v20 = (*(v6 + 48) + 16 * v18);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v19 + 8 * v18);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v24 = -1 << *(v11 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v14 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v11 + 48) + 16 * v27);
    *v32 = v21;
    v32[1] = v22;
    *(*(v11 + 56) + 8 * v27) = v23;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    v6 = v34;
    if (!v7)
    {
      return v11;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      return v11;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_10055B9E4()
{
  result = qword_10093A570;
  if (!qword_10093A570)
  {
    sub_1000F514C(&qword_10093CAC0, &unk_10079E1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A570);
  }

  return result;
}

void sub_10055BA50(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, _TtC7remindd19RDXPCStorePerformer *, _TtC7remindd19RDXPCStorePerformer *))
{
  v36 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    v18 = a4(v15, v16, v17);
    v16, v19, v20, v21, v22, v23, v24, v25;
    v17, v26, v27, v28, v29, v30, v31, v32;
    if (v18)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
LABEL_15:
        sub_10055B78C(a1, a2, v36, a3, &qword_100943A38, qword_1007A42B8);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_10055BBD4(uint64_t a1, uint64_t (*a2)(uint64_t, _TtC7remindd19RDXPCStorePerformer *, _TtC7remindd19RDXPCStorePerformer *))
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = (1 << v6) + 63;
  v9 = v8 >> 6;
  v10 = 8 * (v8 >> 6);
  if (v7 > 0xD)
  {
    v13 = 8 * (v8 >> 6);

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      sub_10055B290(v14, v9, v5, a2);

      return;
    }

    v10 = v13;
  }

  __chkstk_darwin(a1, v10);
  v12 = &v15 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v12, v11);
  sub_10055BA50(v12, v9, v5, a2);
  if (v3)
  {
    swift_willThrow();
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_10055BD54(unint64_t a1, int a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v12 = &v43 - v11;
  v46 = &_swiftEmptyArrayStorage;
  v13 = a2 >> 5;
  if (v13 > 2)
  {
    if (v13 == 3)
    {
      KeyPath = swift_getKeyPath();
      v33 = [a1 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = type metadata accessor for UUID();
      (*(*(v34 - 8) + 56))(v8, 0, 1, v34);
      sub_100391308(KeyPath, v8);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v46->clientIdentity >= *&v46->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }
    }

    else
    {
      if (v13 != 4)
      {
        v40 = swift_getKeyPath();
        v41 = [a1 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = type metadata accessor for UUID();
        (*(*(v42 - 8) + 56))(v8, 0, 1, v42);
        sub_100391308(v40, v8);
        goto LABEL_32;
      }

      v18 = swift_getKeyPath();
      v19 = [a1 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = type metadata accessor for UUID();
      (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
      sub_100391308(v18, v8);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v46->clientIdentity >= *&v46->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v35 = swift_getKeyPath();
    sub_1003EB7DC(v35);
LABEL_32:

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v46->clientIdentity >= *&v46->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_35:
    sub_10001035C(0);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v46->clientIdentity >= *&v46->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return sub_10000C2B0();
  }

  if (a2 >> 5)
  {
    if (v13 == 1)
    {
      v14 = swift_getKeyPath();
      v15 = [a1 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = type metadata accessor for UUID();
      (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
      sub_100391308(v14, v8);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v46->clientIdentity >= *&v46->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if ((a2 & 1) == 0)
      {
        goto LABEL_35;
      }

      v17 = swift_getKeyPath();
      sub_1003EB784(v17);
    }

    else
    {
      v36 = swift_getKeyPath();
      v37 = [a1 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = type metadata accessor for UUID();
      (*(*(v38 - 8) + 56))(v8, 0, 1, v38);
      sub_100391308(v36, v8);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v46->clientIdentity >= *&v46->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v39 = swift_getKeyPath();
      sub_1003EB7B0(v39);
    }

    goto LABEL_32;
  }

  v21 = swift_getKeyPath();
  if (a1 >> 62)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = &_swiftEmptyArrayStorage;
  if (!v22)
  {
LABEL_39:
    sub_1003EB760(v21, v23);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v46->clientIdentity >= *&v46->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if ((a2 & 1) == 0)
    {
      return sub_10000C2B0();
    }

    goto LABEL_35;
  }

  v43 = v21;
  v44 = a2;
  v45 = &_swiftEmptyArrayStorage;
  result = sub_100253218(0, v22 & ~(v22 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    v23 = v45;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(a1 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = [v26 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = type metadata accessor for UUID();
      (*(*(v29 - 8) + 56))(v12, 0, 1, v29);
      v45 = v23;
      v31 = *v23->clientIdentity;
      v30 = *&v23->clientIdentity[8];
      if (v31 >= v30 >> 1)
      {
        sub_100253218((v30 > 1), v31 + 1, 1);
        v23 = v45;
      }

      ++v25;
      *v23->clientIdentity = v31 + 1;
      sub_100100FB4(v12, v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v31);
    }

    while (v22 != v25);
    LOBYTE(a2) = v44;
    v21 = v43;
    goto LABEL_39;
  }

  __break(1u);
  return result;
}

void sub_10055C548(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100939D90, "8\n\r");
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setParentSavedReminderIdentifier:isa];
}

void sub_10055C6B8(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setDisplayDateDate:isa];
}

void sub_10055C7F4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 metadata];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_10055C85C(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8) >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v4 = isa;
  [v2 setMetadata:?];
}

void sub_10055C8D4(void *a1, uint64_t a2)
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  sub_100026EF4(0, 1, 0);
  v17 = a2;
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  v7 = a1;
  v8 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v9)
  {
LABEL_12:
    _StringGuts.grow(_:)(46);
    v16._object = 0x80000001007EC120;
    v16._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v16);
    sub_1000F5104(&qword_10093D5C8, &unk_1007A76F0);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v10 = v8;
  v11 = v9;

  v13 = *_swiftEmptyArrayStorage.clientIdentity;
  v12 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  if (v13 >= v12 >> 1)
  {
    sub_100026EF4((v12 > 1), v13 + 1, 1);
  }

  *_swiftEmptyArrayStorage.clientIdentity = v13 + 1;
  v14 = &_swiftEmptyArrayStorage + 16 * v13;
  *(v14 + 4) = v10;
  *(v14 + 5) = v11;
  swift_setDeallocating();
  swift_arrayDestroy();
  v15 = sub_10055D968(v7, v17, 1, &_swiftEmptyArrayStorage, 0);

  if (!v3)
  {
    sub_1002A767C();
  }
}

uint64_t sub_10055CB44()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094C840);
  v1 = sub_100006654(v0, qword_10094C840);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10055CC0C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = [objc_opt_self() sharedConfiguration];
  [v5 templatePublicLinkTTL];

  result = sub_1001DA188(v4);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10055CC84(unint64_t isa, void *a2, uint64_t a3)
{
  v5 = v3;
  v169 = a3;
  v171 = a2;
  v177 = type metadata accessor for UUID();
  ObjCClassFromMetadata = *&v177[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v177, v8);
  v176 = &v168 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = _swiftEmptySetSingleton;
  v186 = _swiftEmptySetSingleton;
  v187 = &_swiftEmptyArrayStorage;
  v168 = isa >> 62;
  if (isa >> 62)
  {
    goto LABEL_43;
  }

  v17 = *((isa & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = isa; v17; i = isa)
  {
    v170 = v5;
    v4 = 0;
    v181 = i & 0xC000000000000001;
    v173 = i + 32;
    v174 = i & 0xFFFFFFFFFFFFFF8;
    v175 = (ObjCClassFromMetadata + 8);
    v172 = &_swiftEmptyArrayStorage;
    v179 = v17;
    while (1)
    {
      if (v181)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v174 + 16))
        {
          goto LABEL_42;
        }

        v18 = *(v173 + 8 * v4);
      }

      v19 = v18;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v21 = [(RDXPCStorePerformer *)v18 template];
      if (!v21)
      {
        goto LABEL_25;
      }

      v22 = v21;
      v23 = [v21 remObjectID];
      if (!v23)
      {

        goto LABEL_25;
      }

      v24 = v23;
      v182 = v19;
      v25 = v188;
      if ((v188 & 0xC000000000000001) == 0)
      {
        if (*v188->clientIdentity)
        {
          v180 = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
          v26 = NSObject._rawHashValue(seed:)(*&v25->clientIdentity[24]);
          v27 = -1 << v25->clientIdentity[16];
          v5 = v26 & ~v27;
          if ((*&v25->clientIdentity[((v5 >> 3) & 0xFFFFFFFFFFFFFF8) + 40] >> v5))
          {
            ObjCClassFromMetadata = ~v27;
            while (1)
            {
              v28 = *(*&v25->clientIdentity[32] + 8 * v5);
              isa = static NSObject.== infix(_:_:)();

              if (isa)
              {
                break;
              }

              v5 = (v5 + 1) & ObjCClassFromMetadata;
              if (((*&v25->clientIdentity[((v5 >> 3) & 0xFFFFFFFFFFFFFF8) + 40] >> v5) & 1) == 0)
              {
                goto LABEL_21;
              }
            }

            goto LABEL_24;
          }
        }

LABEL_21:
        ObjCClassFromMetadata = v24;
        sub_100378D70(&v183, ObjCClassFromMetadata);

        v29 = v22;
        isa = &v187;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v187 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v5 = *((v187 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v172 = v187;
        goto LABEL_24;
      }

      ObjCClassFromMetadata = v23;
      isa = __CocoaSet.contains(_:)();

      if ((isa & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_24:
      v17 = v179;
      v19 = v182;
LABEL_25:
      v30 = [(RDXPCStorePerformer *)v19 parentSavedReminderIdentifier:v168];
      if (v30 && (v5 = v176, v31 = v30, static UUID._unconditionallyBridgeFromObjectiveC(_:)(), v31, type metadata accessor for REMCDSavedReminder(), ObjCClassFromMetadata = swift_getObjCClassFromMetadata(), isa = UUID._bridgeToObjectiveC()().super.isa, v32 = [ObjCClassFromMetadata objectIDWithUUID:isa], isa, (*v175)(v5, v177), v32))
      {
        v182 = v19;
        v33 = v186;
        if ((v186 & 0xC000000000000001) == 0)
        {
          if (*v186->clientIdentity)
          {
            ObjCClassFromMetadata = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
            v35 = NSObject._rawHashValue(seed:)(*&v33->clientIdentity[24]);
            v36 = -1 << v33->clientIdentity[16];
            v5 = v35 & ~v36;
            if ((*&v33->clientIdentity[((v5 >> 3) & 0xFFFFFFFFFFFFFF8) + 40] >> v5))
            {
              v37 = ~v36;
              while (1)
              {
                v38 = *(*&v33->clientIdentity[32] + 8 * v5);
                isa = static NSObject.== infix(_:_:)();

                if (isa)
                {
                  break;
                }

                v5 = (v5 + 1) & v37;
                if (((*&v33->clientIdentity[((v5 >> 3) & 0xFFFFFFFFFFFFFF8) + 40] >> v5) & 1) == 0)
                {
                  goto LABEL_35;
                }
              }

              v34 = v182;
              goto LABEL_36;
            }
          }

LABEL_35:
          ObjCClassFromMetadata = v32;
          isa = &v186;
          sub_100378D70(&v183, ObjCClassFromMetadata);

          v34 = v183;
          goto LABEL_36;
        }

        ObjCClassFromMetadata = v32;
        isa = __CocoaSet.contains(_:)();

        if ((isa & 1) == 0)
        {
          goto LABEL_35;
        }

        v34 = v182;
LABEL_36:

        v17 = v179;
        if (v4 == v179)
        {
LABEL_40:
          v39 = v188;
          v40 = v172;
          v5 = v170;
          goto LABEL_45;
        }
      }

      else
      {

        if (v4 == v17)
        {
          goto LABEL_40;
        }
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  v40 = &_swiftEmptyArrayStorage;
  v39 = _swiftEmptySetSingleton;
LABEL_45:
  v39, v9, v10, v11, v12, v13, v14, v15;
  v41 = sub_10034B1FC(v40);
  if (v5)
  {
    v49 = v186;
    v40, v42, v43, v44, v45, v46, v47, v48;
    v49, v50, v51, v52, v53, v54, v55, v56;
    return v4;
  }

  v4 = v41;
  if (qword_100936548 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  v58 = sub_100006654(v57, qword_10094C840);
  v183 = v40;
  __chkstk_darwin(v58, v59);
  v181 = v60;
  *(&v168 - 2) = v60;
  sub_1000F5104(&qword_10093F3B8, &unk_10079DDE0);
  sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
  sub_10000CB90(&qword_10093F3C0, &qword_10093F3B8, &unk_10079DDE0);
  v182 = Sequence.map<A>(skippingError:_:)();
  v61 = v171;
  v40, v62, v63, v64, v65, v66, v67, v68;
  v76 = v186;
  if ((v186 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_51:
      v77 = sub_100277EBC(v76);
      v76, v78, v79, v80, v81, v82, v83, v84;
      v85 = sub_10055BD54(v77, [v61 includeConcealed] ^ 1);
      type metadata accessor for REMCDSavedReminder();
      v86 = [objc_allocWithZone(NSFetchRequest) init];
      v87 = [swift_getObjCClassFromMetadata() entity];
      [v86 setEntity:v87];

      [v86 setAffectedStores:0];
      [v86 setPredicate:v85];

      [v86 setPropertiesToFetch:0];
      [v86 setRelationshipKeyPathsForPrefetching:0];
      v88 = NSManagedObjectContext.fetch<A>(_:)();

      goto LABEL_54;
    }
  }

  else if (*v186->clientIdentity)
  {
    goto LABEL_51;
  }

  v76, v69, v70, v71, v72, v73, v74, v75;
  v88 = &_swiftEmptyArrayStorage;
LABEL_54:
  type metadata accessor for REMSavedReminderStorageCDIngestor();
  inited = swift_initStackObject();
  v180 = &v168;
  *(inited + 16) = v61;
  v183 = v88;
  __chkstk_darwin(inited, v90);
  *(&v168 - 2) = v181;
  v91 = v61;
  sub_1000F5104(&qword_10093F3A8, qword_1007AC5F0);
  sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
  sub_10000CB90(&qword_10093F3B0, &qword_10093F3A8, qword_1007AC5F0);
  v92 = Sequence.map<A>(skippingError:_:)();
  v88, v93, v94, v95, v96, v97, v98, v99;
  if (v4 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_56;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_56:

    return v4;
  }

  v4, v100, v101, v102, v103, v104, v105, v106;
  v109 = i;
  if (v168)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v110 = result;
  }

  else
  {
    v110 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v111 = &_swiftEmptyArrayStorage;
  if (!v110)
  {
LABEL_72:
    v180 = &v168;
    v183 = v111;
    __chkstk_darwin(result, v108);
    *(&v168 - 2) = v181;
    sub_1000F5104(&qword_10094F630, qword_1007A3430);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    sub_10000CB90(&qword_100941B18, &qword_10094F630, qword_1007A3430);
    v4 = Sequence.map<A>(skippingError:_:)();

    v111, v161, v162, v163, v164, v165, v166, v167;
    return v4;
  }

  v177 = v92;
  v179 = inited;
  v185 = &_swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v110 & 0x8000000000000000) == 0)
  {
    v112 = 0;
    v108 = v109;
    v180 = (v109 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      v113 = v112 + 1;
      if (__OFADD__(v112, 1))
      {
        break;
      }

      if ((v109 & 0xC000000000000001) != 0)
      {
        v114 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v112 >= v180[2])
        {
          goto LABEL_76;
        }

        v114 = *(v108 + 8 * v112 + 32);
      }

      v4 = v114;
      if (![v114 account])
      {
        v177, v115, v116, v117, v118, v119, v120, v121;
        v182, v122, v123, v124, v125, v126, v127, v128;
        v129 = objc_opt_self();
        v183 = 0;
        v184 = 0xE000000000000000;
        _StringGuts.grow(_:)(42);
        v184, v130, v131, v132, v133, v134, v135, v136;
        v183 = 0xD000000000000027;
        v184 = 0x80000001007FC510;
        v137 = [v4 description];
        v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v140 = v139;

        v141._countAndFlagsBits = v138;
        v141._object = v140;
        String.append(_:)(v141);
        v140, v142, v143, v144, v145, v146, v147, v148;
        v149._countAndFlagsBits = 125;
        v149._object = 0xE100000000000000;
        String.append(_:)(v149);
        v150 = v184;
        v151 = String._bridgeToObjectiveC()();
        v150, v152, v153, v154, v155, v156, v157, v158;
        [v129 internalErrorWithDebugDescription:v151];

        swift_willThrow();
        v159 = v179;
        swift_setDeallocating();
        v160 = *(v159 + 16);

        return v4;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      ++v112;
      v108 = i;
      if (v113 == v110)
      {
        v111 = v185;
        goto LABEL_72;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10055D968(void *a1, uint64_t a2, char a3, Class isa, Class a5)
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007953F0;
  *(v10 + 32) = a1;
  v69 = a1;
  v11 = sub_10055BD54(v10, a3 & 1);
  type metadata accessor for REMCDSavedReminder();
  v12 = [objc_allocWithZone(NSFetchRequest) init];
  v13 = [swift_getObjCClassFromMetadata() entity];
  [v12 setEntity:v13];

  [v12 setAffectedStores:0];
  [v12 setPredicate:v11];

  if (isa)
  {
    v14 = sub_10003450C(isa);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v14, v15, v16, v17, v18, v19, v20, v21;
  }

  [v12 setPropertiesToFetch:isa];

  if (a5)
  {
    a5 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v12 setRelationshipKeyPathsForPrefetching:a5];

  v22 = NSManagedObjectContext.fetch<A>(_:)();
  v10, v23, v24, v25, v26, v27, v28, v29;

  if (!v5)
  {
    v38 = v22 >> 62;
    if (v22 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_9:
        if ((v22 & 0xC000000000000001) != 0)
        {
          v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_27;
          }

          v39 = *(v22 + 32);
        }

        v10 = v39;
        if (v38)
        {
          if (_CocoaArrayWrapper.endIndex.getter() < 2)
          {
            goto LABEL_14;
          }
        }

        else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
        {
LABEL_14:
          v22, v40, v41, v42, v43, v44, v45, v46;
          return v10;
        }

        if (qword_100936548 == -1)
        {
LABEL_17:
          v47 = type metadata accessor for Logger();
          sub_100006654(v47, qword_10094C840);
          v48 = v69;

          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            *v51 = 138412546;
            *(v51 + 4) = v48;
            *v52 = v48;
            *(v51 + 12) = 2048;
            if (v38)
            {
              v53 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v53 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v54 = v48;
            v22, v55, v56, v57, v58, v59, v60, v61;
            *(v51 + 14) = v53;
            v22, v62, v63, v64, v65, v66, v67, v68;
            _os_log_impl(&_mh_execute_header, v49, v50, "Found multiple instances of REMCDSavedReminder with identical objectID {objectID: %@, matches: %ld}", v51, 0x16u);
            sub_100039860(v52);
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          return v10;
        }

LABEL_27:
        swift_once();
        goto LABEL_17;
      }
    }

    else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    v22, v30, v31, v32, v33, v34, v35, v36;
    [objc_opt_self() noSuchObjectErrorWithObjectID:v69];
    swift_willThrow();
  }

  return v10;
}

void sub_10055DD88(_TtC7remindd19RDXPCStorePerformer **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10043643C(v2);
  }

  v3 = *v2->clientIdentity;
  v4[0] = &v2->clientIdentity[16];
  v4[1] = v3;
  sub_1005602A0(v4);
  *a1 = v2;
}

void sub_10055DDF4(_TtC7remindd19RDXPCStorePerformer *a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, _TtC7remindd19RDXPCStorePerformer *a4@<X4>, uint64_t a5@<X8>)
{
  v324 = a4;
  v302 = a3;
  v310 = a2;
  v300 = a5;
  v301 = type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel();
  v318 = *(v301 - 8);
  __chkstk_darwin(v301, v6);
  v323 = &v283[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8, v9);
  v316 = &v283[-v10];
  v11 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  __chkstk_darwin(v11 - 8, v12);
  v308 = &v283[-v13];
  v327 = type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Day();
  v311 = *(v327 - 8);
  __chkstk_darwin(v327, v14);
  v322 = &v283[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16, v17);
  v326 = &v283[-v18];
  __chkstk_darwin(v19, v20);
  v313 = &v283[-v21];
  v321 = type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Bucket();
  v319 = *(v321 - 8);
  __chkstk_darwin(v321, v22);
  v307 = &v283[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24, v25);
  v312 = &v283[-v26];
  __chkstk_darwin(v27, v28);
  v314 = &v283[-v29];
  __chkstk_darwin(v30, v31);
  v320 = &v283[-v32];
  v306 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v305 = *(v306 - 8);
  __chkstk_darwin(v306, v33);
  v304 = &v283[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v35, v36);
  v309 = &v283[-v37];
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v303 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v39);
  v41 = &v283[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = type metadata accessor for REMRemindersListDataView.Diff();
  v317 = *(v42 - 8);
  __chkstk_darwin(v42, v43);
  v45 = &v283[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v46, v47);
  v49 = &v283[-v48];
  v50 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v50 - 8, v51);
  v53 = &v283[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v54, v55);
  v57 = &v283[-v56];
  v58 = a1;
  v59 = v325;
  sub_100561DD8(a1, v324);
  if (v59)
  {
    return;
  }

  v296 = v41;
  v325 = Configuration;
  v294 = v53;
  v299 = v45;
  v297 = v49;
  v295 = v42;
  v61 = v60;
  v62 = v315;
  sub_10055F50C(v60, v57);
  v298 = v61;
  v63 = [v62 fetchResultTokenToDiffAgainst];
  v64 = v297;
  sub_100534D44(v63, v297);
  v293 = 0;

  v65 = v296;
  REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.configuration.getter();
  v66 = v309;
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  (v303)[1](v65, v325);
  v67 = v305;
  v68 = v304;
  v69 = v306;
  (*(v305 + 16))(v304, v66, v306);
  v70 = (*(v67 + 88))(v68, v69);
  v290 = v57;
  if (v70 != enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    v79 = v323;
    v168 = v302;
    v80 = v317;
    v81 = v299;
    if (v70 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
    {
      v169 = v304;
      (*(v67 + 96))(v304, v69);
      sub_10053E698(*v169, v64, v58, v168, 0);
      (*(v67 + 8))(v309, v69);
    }

    else
    {
      if (v70 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
      {
        v287 = v58;
        v170 = v304;
        (*(v67 + 96))(v304, v69);
        v285 = *v170;
        v171 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
        v172 = v308;
        sub_100226AD8(v170 + *(v171 + 48), v308);
        v173 = v298;
        v315 = *v298->clientIdentity;
        if (v315)
        {
          v174 = 0;
          v175 = v319;
          v314 = (v319 + 16);
          v310 = v319 + 88;
          LODWORD(v304) = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.day(_:);
          LODWORD(v291) = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.pastSevenDays(_:);
          v288 = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.pastThirtyDays(_:);
          LODWORD(v286) = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.month(_:);
          v303 = (v319 + 96);
          v325 = (v311 + 16);
          v326 = (v311 + 8);
          v296 = (v319 + 8);
          v284 = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.year(_:);
          v289 = (v311 + 32);
          v324 = &_swiftEmptyArrayStorage;
          v85 = v318;
          v176 = v313;
          do
          {
            if (v174 >= *v173->clientIdentity)
            {
              goto LABEL_119;
            }

            v177 = v173 + ((*(v175 + 80) + 32) & ~*(v175 + 80));
            v178 = *(v175 + 72);
            v320 = v174;
            v179 = *(v175 + 16);
            v180 = v312;
            v181 = v321;
            v179(v312, &v177[v178 * v174], v321);
            v182 = v307;
            v179(v307, v180, v181);
            v183 = (*(v175 + 88))(v182, v181);
            if (v183 == v304)
            {
              (*v303)(v182, v181);
              v184 = v327;
              (*v289)(v176, v182, v327);
              v185 = REMRemindersListDataView.CompletedDateBucketsModel.Day.reminders.getter();
              (*v326)(v176, v184);
            }

            else
            {
              if (v183 == v291 || v183 == v288 || v183 == v286)
              {
                (*v303)(v182, v321);
                v186 = &v182[*(sub_1000F5104(&qword_10094C888, qword_1007B1A48) + 48)];
                v187 = type metadata accessor for Date();
              }

              else
              {
                if (v183 != v284)
                {
                  goto LABEL_126;
                }

                (*v303)(v182, v321);
                v186 = &v182[*(sub_1000F5104(&qword_10094C880, &qword_1007B1A40) + 48)];
                v187 = type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate();
              }

              v188 = *v186;
              (*(*(v187 - 8) + 8))(v182, v187);
              v196 = *(v188 + 16);
              if (v196)
              {
                v197 = (*(v311 + 80) + 32) & ~*(v311 + 80);
                v292 = v188;
                v198 = v188 + v197;
                v199 = *(v311 + 72);
                v200 = *(v311 + 16);
                v185 = &_swiftEmptyArrayStorage;
                v201 = v322;
                do
                {
                  v209 = v201;
                  v210 = v327;
                  v200(v201, v198, v327);
                  v211 = REMRemindersListDataView.CompletedDateBucketsModel.Day.reminders.getter();
                  (*v326)(v209, v210);
                  v212 = *(v211 + 16);
                  v213 = *v185->clientIdentity;
                  v214 = v213 + v212;
                  if (__OFADD__(v213, v212))
                  {
                    goto LABEL_110;
                  }

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  if (!isUniquelyReferenced_nonNull_native || v214 > *&v185->clientIdentity[8] >> 1)
                  {
                    if (v213 <= v214)
                    {
                      v223 = v213 + v212;
                    }

                    else
                    {
                      v223 = v213;
                    }

                    v185 = sub_100365A24(isUniquelyReferenced_nonNull_native, v223, 1, v185);
                  }

                  v79 = v323;
                  if (*(v211 + 16))
                  {
                    v224 = (*&v185->clientIdentity[8] >> 1) - *v185->clientIdentity;
                    type metadata accessor for REMRemindersListDataView.ReminderLite();
                    if (v224 < v212)
                    {
                      goto LABEL_112;
                    }

                    swift_arrayInitWithCopy();
                    v211, v225, v226, v227, v228, v229, v230, v231;
                    v201 = v322;
                    v79 = v323;
                    if (v212)
                    {
                      v232 = *v185->clientIdentity;
                      v142 = __OFADD__(v232, v212);
                      v233 = v232 + v212;
                      if (v142)
                      {
                        goto LABEL_116;
                      }

                      *v185->clientIdentity = v233;
                    }
                  }

                  else
                  {
                    v211, v216, v217, v218, v219, v220, v221, v222;
                    v201 = v322;
                    if (v212)
                    {
                      goto LABEL_111;
                    }
                  }

                  v198 += v199;
                  --v196;
                }

                while (v196);
                v292, v202, v203, v204, v205, v206, v207, v208;
                v85 = v318;
              }

              else
              {
                v188, v189, v190, v191, v192, v193, v194, v195;
                v185 = &_swiftEmptyArrayStorage;
              }

              v181 = v321;
            }

            v234 = v324;
            (v296->super.isa)(v312, v181);
            v235 = *v185->clientIdentity;
            v236 = *v234->clientIdentity;
            v237 = v236 + v235;
            if (__OFADD__(v236, v235))
            {
              goto LABEL_120;
            }

            v238 = swift_isUniquelyReferenced_nonNull_native();
            v172 = v308;
            if (!v238 || v237 > *&v234->clientIdentity[8] >> 1)
            {
              if (v236 <= v237)
              {
                v246 = v236 + v235;
              }

              else
              {
                v246 = v236;
              }

              v234 = sub_100365A24(v238, v246, 1, v234);
            }

            v176 = v313;
            if (*v185->clientIdentity)
            {
              v247 = (*&v234->clientIdentity[8] >> 1) - *v234->clientIdentity;
              type metadata accessor for REMRemindersListDataView.ReminderLite();
              if (v247 < v235)
              {
                goto LABEL_122;
              }

              swift_arrayInitWithCopy();
              v185, v248, v249, v250, v251, v252, v253, v254;
              v173 = v298;
              v176 = v313;
              if (v235)
              {
                v255 = *v234->clientIdentity;
                v142 = __OFADD__(v255, v235);
                v256 = v255 + v235;
                if (v142)
                {
                  goto LABEL_123;
                }

                *v234->clientIdentity = v256;
              }
            }

            else
            {
              v185, v239, v240, v241, v242, v243, v244, v245;
              v173 = v298;
              if (v235)
              {
                goto LABEL_121;
              }
            }

            v324 = v234;
            v175 = v319;
            v174 = (v320 + 1);
          }

          while (v320 + 1 != v315);
        }

        else
        {
          v324 = &_swiftEmptyArrayStorage;
          v85 = v318;
        }

        v271 = v324;
        v272 = v287;
        v273 = v302;
        sub_10053DB98(v285, v324, v287, v302, 0);
        v274 = v272;
        v81 = v299;
        v275 = v273;
        v80 = v317;
        sub_10053EBE4(v172, v271, v274, v275, 0);
        v271, v276, v277, v278, v279, v280, v281, v282;
        sub_1000050A4(v172, &qword_10094B8E0, &unk_1007AABD0);
        (*(v305 + 8))(v309, v306);
        v265 = v294;
        v87 = v316;
        goto LABEL_102;
      }

      if (v70 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
      {
        goto LABEL_125;
      }

      (*(v67 + 8))(v309, v69);
    }

    v85 = v318;
    v87 = v316;
LABEL_101:
    v265 = v294;
LABEL_102:
    sub_100010364(v290, v265, &qword_100938A70, &qword_1007ACC60);
    REMRemindersListDataView.CompletedDateBucketsModel.init(buckets:remindersCount:prefetchedReminders:prefetchedDueReminders:)();
    v266 = v79;
    v267 = v301;
    (*(v85 + 16))(v266, v87, v301);
    v268 = v81;
    v269 = v297;
    v270 = v295;
    (*(v80 + 16))(v268, v297, v295);
    sub_100565CB0(&qword_10094C890, &type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel, &protocol conformance descriptor for REMRemindersListDataView.CompletedDateBucketsModel);
    sub_100565CB0(&qword_10094C898, &type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel, &protocol conformance descriptor for REMRemindersListDataView.CompletedDateBucketsModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v85 + 8))(v87, v267);
    (*(v80 + 8))(v269, v270);
    sub_1000050A4(v290, &qword_100938A70, &qword_1007ACC60);
    return;
  }

  v287 = a1;
  (*(v67 + 96))(v68, v69);
  v286 = *v68;
  v78 = v298;
  v79 = v323;
  v80 = v317;
  v81 = v299;
  v312 = *v298->clientIdentity;
  if (!v312)
  {
    v322 = &_swiftEmptyArrayStorage;
    v85 = v318;
    v87 = v316;
LABEL_97:
    v257 = v322;
    sub_10053DB98(v286, v322, v287, v302, 0);
    v257, v258, v259, v260, v261, v262, v263, v264;
    (*(v305 + 8))(v309, v306);
    goto LABEL_101;
  }

  v82 = 0;
  v310 = v319 + 16;
  v308 = (v319 + 88);
  LODWORD(v307) = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.day(_:);
  LODWORD(v292) = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.pastSevenDays(_:);
  LODWORD(v289) = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.pastThirtyDays(_:);
  v288 = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.month(_:);
  v304 = (v319 + 96);
  v324 = (v311 + 16);
  v325 = (v311 + 8);
  v303 = (v319 + 8);
  LODWORD(v285) = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.year(_:);
  v291 = (v311 + 32);
  v322 = &_swiftEmptyArrayStorage;
  v83 = v327;
  v84 = v313;
  while (1)
  {
    if (v82 >= *v78->clientIdentity)
    {
      goto LABEL_113;
    }

    v88 = v319;
    v89 = v320;
    v90 = v78 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
    v91 = *(v319 + 72);
    v315 = v82;
    v92 = *(v319 + 16);
    v93 = v321;
    v92(v320, &v90[v91 * v82], v321);
    v94 = v314;
    v92(v314, v89, v93);
    v95 = (*(v88 + 88))(v94, v93);
    if (v95 != v307)
    {
      break;
    }

    (*v304)(v94, v93);
    (*v291)(v84, v94, v83);
    v96 = REMRemindersListDataView.CompletedDateBucketsModel.Day.reminders.getter();
    (*v325)(v84, v83);
LABEL_35:
    (*v303)(v89, v93);
    v144 = *v96->clientIdentity;
    v145 = v322;
    v146 = *v322->clientIdentity;
    v147 = v146 + v144;
    if (__OFADD__(v146, v144))
    {
      goto LABEL_114;
    }

    v148 = swift_isUniquelyReferenced_nonNull_native();
    if (!v148 || v147 > *&v145->clientIdentity[8] >> 1)
    {
      if (v146 <= v147)
      {
        v156 = v146 + v144;
      }

      else
      {
        v156 = v146;
      }

      v145 = sub_100365A24(v148, v156, 1, v145);
    }

    v81 = v299;
    v157 = *v96->clientIdentity;
    v322 = v145;
    if (v157)
    {
      v158 = (*&v145->clientIdentity[8] >> 1) - *v145->clientIdentity;
      type metadata accessor for REMRemindersListDataView.ReminderLite();
      if (v158 < v144)
      {
        goto LABEL_117;
      }

      swift_arrayInitWithCopy();
      v96, v159, v160, v161, v162, v163, v164, v165;
      v85 = v318;
      v86 = v315;
      v87 = v316;
      v81 = v299;
      v78 = v298;
      if (v144)
      {
        v166 = *v322->clientIdentity;
        v142 = __OFADD__(v166, v144);
        v167 = v166 + v144;
        if (v142)
        {
          goto LABEL_118;
        }

        *v322->clientIdentity = v167;
      }
    }

    else
    {
      v96, v149, v150, v151, v152, v153, v154, v155;
      v85 = v318;
      v86 = v315;
      v87 = v316;
      v78 = v298;
      if (v144)
      {
        goto LABEL_115;
      }
    }

    v82 = (v86 + 1);
    v80 = v317;
    if (v82 == v312)
    {
      goto LABEL_97;
    }
  }

  v97 = v326;
  if (v95 == v292 || v95 == v289 || v95 == v288)
  {
    (*v304)(v94, v93);
    v98 = &v94[*(sub_1000F5104(&qword_10094C888, qword_1007B1A48) + 48)];
    v99 = type metadata accessor for Date();
  }

  else
  {
    if (v95 != v285)
    {
      goto LABEL_124;
    }

    (*v304)(v94, v93);
    v98 = &v94[*(sub_1000F5104(&qword_10094C880, &qword_1007B1A40) + 48)];
    v99 = type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate();
  }

  v100 = *v98;
  (*(*(v99 - 8) + 8))(v94, v99);
  v108 = *(v100 + 16);
  if (!v108)
  {
    v100, v101, v102, v103, v104, v105, v106, v107;
    v96 = &_swiftEmptyArrayStorage;
LABEL_34:
    v84 = v313;
    v89 = v320;
    v93 = v321;
    goto LABEL_35;
  }

  v109 = (*(v311 + 80) + 32) & ~*(v311 + 80);
  v296 = v100;
  v110 = v100 + v109;
  v111 = *(v311 + 72);
  v112 = *(v311 + 16);
  v96 = &_swiftEmptyArrayStorage;
  v112(v97, v110, v83);
  while (1)
  {
    v120 = REMRemindersListDataView.CompletedDateBucketsModel.Day.reminders.getter();
    (*v325)(v97, v83);
    v121 = *(v120 + 16);
    v122 = *v96->clientIdentity;
    v123 = v122 + v121;
    if (__OFADD__(v122, v121))
    {
      break;
    }

    v124 = swift_isUniquelyReferenced_nonNull_native();
    if (v124 && v123 <= *&v96->clientIdentity[8] >> 1)
    {
      if (*(v120 + 16))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v122 <= v123)
      {
        v132 = v122 + v121;
      }

      else
      {
        v132 = v122;
      }

      v96 = sub_100365A24(v124, v132, 1, v96);
      if (*(v120 + 16))
      {
LABEL_28:
        v133 = (*&v96->clientIdentity[8] >> 1) - *v96->clientIdentity;
        type metadata accessor for REMRemindersListDataView.ReminderLite();
        if (v133 < v121)
        {
          goto LABEL_108;
        }

        swift_arrayInitWithCopy();
        v120, v134, v135, v136, v137, v138, v139, v140;
        v83 = v327;
        v97 = v326;
        if (v121)
        {
          v141 = *v96->clientIdentity;
          v142 = __OFADD__(v141, v121);
          v143 = v141 + v121;
          if (v142)
          {
            goto LABEL_109;
          }

          *v96->clientIdentity = v143;
        }

        goto LABEL_17;
      }
    }

    v120, v125, v126, v127, v128, v129, v130, v131;
    v83 = v327;
    v97 = v326;
    if (v121)
    {
      goto LABEL_107;
    }

LABEL_17:
    v110 += v111;
    if (!--v108)
    {
      v296, v113, v114, v115, v116, v117, v118, v119;
      v79 = v323;
      goto LABEL_34;
    }

    v112(v97, v110, v83);
  }

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
LABEL_115:
  __break(1u);
LABEL_116:
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
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_125:
  v298, v71, v72, v73, v74, v75, v76, v77;
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_126:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_10055F50C@<X0>(uint64_t a1@<X2>, void (**a2)(_BYTE *, uint64_t)@<X8>)
{
  v6 = type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Day();
  v90 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v9 = &v84[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10, v11);
  v93 = &v84[-v12];
  v108 = type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Bucket();
  v106 = *(v108 - 8);
  __chkstk_darwin(v108, v13);
  v105 = &v84[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15, v16);
  v96 = &v84[-v17];
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v19 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v20);
  v22 = &v84[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.configuration.getter();
  v23 = REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
  (*(v19 + 8))(v22, Configuration);
  if ((v23 & 1) == 0)
  {
LABEL_24:
    v81 = 1;
LABEL_26:
    v82 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    return (*(*(v82 - 8) + 56))(a2, v81, 1, v82);
  }

  v86 = a2;
  v87 = v3;
  v104 = *(a1 + 16);
  v24 = 0;
  if (!v104)
  {
LABEL_25:
    a2 = v86;
    REMRemindersListDataView.CountByCompleted.init(completed:incomplete:)();
    v81 = 0;
    goto LABEL_26;
  }

  v25 = 0;
  v26 = *(v106 + 16);
  v102 = a1 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
  v103 = v26;
  v27 = *(v106 + 72);
  v100 = (v106 + 88);
  v101 = v27;
  v99 = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.day(_:);
  v92 = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.pastSevenDays(_:);
  v88 = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.month(_:);
  v89 = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.pastThirtyDays(_:);
  v98 = (v106 + 96);
  v109 = v90 + 16;
  a2 = (v90 + 8);
  v106 += 16;
  v97 = (v106 - 8);
  v91 = (v90 + 32);
  v85 = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.year(_:);
  v28 = v96;
  while (1)
  {
    v107 = v24;
    v44 = v108;
    v45 = v103;
    v103(v28, (v102 + v101 * v25), v108);
    v46 = v105;
    v45(v105, v28, v44);
    v47 = (*v100)(v46, v44);
    if (v47 != v99)
    {
      break;
    }

    v29 = v108;
    (*v98)(v46, v108);
    v30 = v93;
    (*v91)(v93, v46, v6);
    v31 = v29;
    v32 = REMRemindersListDataView.CompletedDateBucketsModel.Day.reminders.getter();
    (*a2)(v30, v6);
    (*v97)(v28, v31);
    v33 = *(v32 + 16);
    v34 = v32;
    v35 = v107;
    v34, v36, v37, v38, v39, v40, v41, v42;
    v43 = __OFADD__(v35, v33);
    v24 = v35 + v33;
    if (v43)
    {
      goto LABEL_28;
    }

LABEL_5:
    if (++v25 == v104)
    {
      goto LABEL_25;
    }
  }

  if (v47 == v92)
  {
    (*v98)(v46, v108);
    v48 = &v46[*(sub_1000F5104(&qword_10094C888, qword_1007B1A48) + 48)];
    v49 = type metadata accessor for Date();
    v50 = v107;
  }

  else
  {
    v50 = v107;
    if (v47 == v89 || v47 == v88)
    {
      (*v98)(v46, v108);
      v48 = &v46[*(sub_1000F5104(&qword_10094C888, qword_1007B1A48) + 48)];
      v51 = type metadata accessor for Date();
    }

    else
    {
      if (v47 != v85)
      {
        goto LABEL_29;
      }

      (*v98)(v46, v108);
      v48 = &v46[*(sub_1000F5104(&qword_10094C880, &qword_1007B1A40) + 48)];
      v51 = type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate();
    }

    v49 = v51;
  }

  v52 = *v48;
  (*(*(v49 - 8) + 8))(v46);
  v60 = *(v52 + 16);
  if (!v60)
  {
    v52, v53, v54, v55, v56, v57, v58, v59;
    v61 = 0;
LABEL_21:
    v28 = v96;
    (*v97)(v96, v108);
    v43 = __OFADD__(v50, v61);
    v24 = v50 + v61;
    if (v43)
    {
      __break(1u);
      goto LABEL_24;
    }

    goto LABEL_5;
  }

  v94 = v52;
  v95 = v25;
  v61 = 0;
  v62 = v52 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
  v63 = *(v90 + 72);
  v64 = *(v90 + 16);
  while (1)
  {
    v64(v9, v62, v6);
    v65 = REMRemindersListDataView.CompletedDateBucketsModel.Day.reminders.getter();
    v66 = *(v65 + 16);
    v65, v67, v68, v69, v70, v71, v72, v73;
    (*a2)(v9, v6);
    v43 = __OFADD__(v61, v66);
    v61 += v66;
    if (v43)
    {
      break;
    }

    v62 += v63;
    if (!--v60)
    {
      v94, v74, v75, v76, v77, v78, v79, v80;
      v50 = v107;
      v25 = v95;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

id sub_10055FBBC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v27[1] = a4;
  v28 = a5;
  v30 = a2;
  v8 = type metadata accessor for Calendar.Component();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Date();
  v13 = *(v29 - 8);
  __chkstk_darwin(v29, v14);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = __chkstk_darwin(v17, v18).n128_u64[0];
  v21 = v27 - v20;
  result = [*a1 completionDate];
  if (result)
  {
    v23 = result;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v13 + 32))(v21, v16, v29);
    v24 = *(v9 + 104);
    v24(v12, enum case for Calendar.Component.era(_:), v8);
    v30 = Calendar.component(_:from:)();
    v27[0] = v5;
    v25 = *(v9 + 8);
    v25(v12, v8);
    v24(v12, enum case for Calendar.Component.year(_:), v8);
    a3 = Calendar.component(_:from:)();
    v25(v12, v8);
    result = (*(v13 + 8))(v21, v29);
  }

  v26 = v28;
  *v28 = v30;
  v26[1] = a3;
  return result;
}

uint64_t sub_10055FE38@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 completionDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  return (*(*(v6 - 8) + 56))(a2, v5, 1, v6);
}

uint64_t sub_10055FEE0(id *a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v8, v9).n128_u64[0];
  v12 = v18 - v11;
  v13 = [*a1 completionDate];
  if (v13)
  {
    v14 = v13;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v4 + 32))(v12, v7, v3);
    sub_100565CB0(&qword_1009464D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v15 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v4 + 8))(v12, v3);
    v16 = v15 ^ 1;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_100560098(uint64_t a1)
{
  result = sub_100565CB0(&qword_10094C878, &type metadata accessor for REMRemindersListDataView.CompletedByDateBucketsInvocation, &protocol conformance descriptor for REMRemindersListDataView.CompletedByDateBucketsInvocation);
  *(a1 + 8) = result;
  return result;
}

BOOL sub_1005600F0(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  return *a1 == *a2 && a1[1] < a2[1];
}

BOOL sub_100560120(void *a1, void *a2)
{
  if (*a2 < *a1)
  {
    return 0;
  }

  return *a2 != *a1 || a2[1] >= a1[1];
}

BOOL sub_100560150(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0;
  }

  return *a1 != *a2 || a1[1] >= a2[1];
}

BOOL sub_100560180(void *a1, void *a2)
{
  if (*a2 < *a1)
  {
    return 1;
  }

  return *a2 == *a1 && a2[1] < a1[1];
}

Swift::Int sub_1005601B0()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10056020C()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_100560248(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_1005602A0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v8 = v3;
      if (v2 <= 1)
      {
        v9 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000F5104(&qword_10093ED98, &qword_10079D520);
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *v9->clientIdentity = v2 / 2;
      }

      v18[0] = &v9->clientIdentity[16];
      v18[1] = v2 / 2;
      v10 = v9;
      sub_100560448(v18, v19, a1, v8, v4, v5, v6, v7);
      *v10->clientIdentity = 0;
      v10, v11, v12, v13, v14, v15, v16, v17;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1005603A8(0, v2, 1, a1);
  }
}

uint64_t sub_1005603A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 24 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      if (*v9 >= v7)
      {
        result = *(v9 + 32);
        if (*v9 != v7 || *(v9 + 8) >= result)
        {
LABEL_4:
          ++a3;
          v5 += 24;
          --v6;
          if (a3 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      if (!v4)
      {
        break;
      }

      v11 = *(v9 + 32);
      v12 = *(v9 + 40);
      *(v9 + 24) = *v9;
      result = *(v9 + 16);
      *(v9 + 40) = result;
      *v9 = v7;
      *(v9 + 8) = v11;
      *(v9 + 16) = v12;
      v9 -= 24;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100560448(char *a1, const char *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = a3[1];
  if (v9 < 1)
  {
    v12 = &_swiftEmptyArrayStorage;
LABEL_109:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_147;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_111;
  }

  v10 = a4;
  v11 = 0;
  v12 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v13 = v11;
    v14 = v11 + 1;
    if (v11 + 1 >= v9)
    {
      ++v11;
      goto LABEL_34;
    }

    v15 = (*a3 + 24 * v14);
    v16 = *v15;
    v17 = (*a3 + 24 * v11);
    v18 = *v17;
    if (*v17 >= *v15)
    {
      v20 = v17[1];
      v19 = v18 == v16 && v20 < v15[1];
    }

    else
    {
      v19 = 1;
    }

    v11 += 2;
    if (v13 + 2 < v9)
    {
      v14 = v9 - 1;
      v22 = v15[1];
      v23 = (*a3 + 24 * v13 + 56);
      do
      {
        v24 = v16;
        v16 = *(v23 - 1);
        v25 = *v23;
        if (v24 < v16)
        {
          if (!v19)
          {
            goto LABEL_34;
          }
        }

        else if (v24 == v16)
        {
          if (((v19 ^ (v22 >= v25)) & 1) == 0)
          {
            v14 = v11 - 1;
            if (!v19)
            {
              goto LABEL_34;
            }

LABEL_26:
            if (v11 >= v13)
            {
              if (v13 <= v14)
              {
                v26 = 0;
                v27 = 24 * v11;
                v28 = 24 * v13;
                v29 = v13;
                do
                {
                  if (v29 != v11 + v26 - 1)
                  {
                    v30 = *a3;
                    if (!*a3)
                    {
                      goto LABEL_144;
                    }

                    v31 = (v30 + v28);
                    v32 = v30 + v27;
                    v33 = *(v31 + 2);
                    v34 = *v31;
                    v35 = *(v32 - 8);
                    *v31 = *(v32 - 24);
                    *(v31 + 2) = v35;
                    *(v32 - 24) = v34;
                    *(v32 - 8) = v33;
                  }

                  ++v29;
                  --v26;
                  v27 -= 24;
                  v28 += 24;
                }

                while (v29 < v11 + v26);
                v9 = a3[1];
              }

              goto LABEL_34;
            }

LABEL_140:
            __break(1u);
LABEL_141:
            v12 = sub_1004361F4(v12, a2, a3, a4, a5, a6, a7, a8);
LABEL_111:
            clientIdentity = v12->clientIdentity;
            v94 = *v12->clientIdentity;
            if (v94 >= 2)
            {
              while (*a3)
              {
                v95 = (v12 + 16 * v94);
                v96 = *v95;
                v97 = &clientIdentity[2 * v94];
                v98 = v97[1];
                sub_100560A7C((*a3 + 24 * *v95), (*a3 + 24 * *v97), *a3 + 24 * v98, a1);
                if (v8)
                {
                  goto LABEL_118;
                }

                if (v98 < v96)
                {
                  goto LABEL_133;
                }

                if (v94 - 2 >= *clientIdentity)
                {
                  goto LABEL_134;
                }

                *v95 = v96;
                v95[1] = v98;
                v99 = *clientIdentity - v94;
                if (*clientIdentity < v94)
                {
                  goto LABEL_135;
                }

                v94 = *clientIdentity - 1;
                memmove(v97, v97 + 2, 16 * v99);
                *clientIdentity = v94;
                if (v94 <= 1)
                {
                  goto LABEL_118;
                }
              }

              goto LABEL_145;
            }

LABEL_118:
            v12, a2, a3, a4, a5, a6, a7, a8;
            return;
          }
        }

        else if (v19)
        {
          v14 = v11 - 1;
          goto LABEL_26;
        }

        v23 += 3;
        ++v11;
        v22 = v25;
      }

      while (v9 != v11);
      v11 = v9;
    }

    if (v19)
    {
      goto LABEL_26;
    }

LABEL_34:
    if (v11 < v9)
    {
      if (__OFSUB__(v11, v13))
      {
        goto LABEL_137;
      }

      if (v11 - v13 < v10)
      {
        if (__OFADD__(v13, v10))
        {
          goto LABEL_138;
        }

        if (v13 + v10 < v9)
        {
          v9 = v13 + v10;
        }

        if (v9 < v13)
        {
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (v11 != v9)
        {
          break;
        }
      }
    }

LABEL_56:
    if (v11 < v13)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1003658B8(0, *v12->clientIdentity + 1, 1, v12, a5, a6, a7, a8);
    }

    v47 = *v12->clientIdentity;
    v46 = *&v12->clientIdentity[8];
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      v12 = sub_1003658B8((v46 > 1), v47 + 1, 1, v12, a5, a6, a7, a8);
    }

    *v12->clientIdentity = v48;
    v49 = v12 + 16 * v47;
    *(v49 + 4) = v13;
    *(v49 + 5) = v11;
    v50 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *&v12->clientIdentity[16];
          v53 = *&v12->clientIdentity[24];
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_76:
          if (v55)
          {
            goto LABEL_124;
          }

          v68 = &v12->super.isa + 2 * v48;
          v70 = *v68;
          v69 = v68[1];
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_127;
          }

          v74 = &v12->clientIdentity[16 * v51 + 16];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_131;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        v78 = &v12->super.isa + 2 * v48;
        v80 = *v78;
        v79 = v78[1];
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_90:
        if (v73)
        {
          goto LABEL_126;
        }

        v81 = v12 + 16 * v51;
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_129;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_97:
        v89 = v51 - 1;
        if (v51 - 1 >= v48)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v90 = *&v12->clientIdentity[16 * v89 + 16];
        v91 = *&v12->clientIdentity[16 * v51 + 24];
        sub_100560A7C((*a3 + 24 * v90), (*a3 + 24 * *&v12->clientIdentity[16 * v51 + 16]), *a3 + 24 * v91, v50);
        if (v8)
        {
          goto LABEL_118;
        }

        if (v91 < v90)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1004361F4(v12, a2, a3, a4, a5, a6, a7, a8);
        }

        if (v89 >= *v12->clientIdentity)
        {
          goto LABEL_121;
        }

        v92 = v12 + 16 * v89;
        *(v92 + 4) = v90;
        *(v92 + 5) = v91;
        sub_100436168(v51);
        v48 = *v12->clientIdentity;
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v12->clientIdentity[16 * v48 + 16];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_122;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_123;
      }

      v63 = &v12->super.isa + 2 * v48;
      v65 = *v63;
      v64 = v63[1];
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_125;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_128;
      }

      if (v67 >= v59)
      {
        v85 = &v12->clientIdentity[16 * v51 + 16];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_132;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_76;
    }

LABEL_3:
    v9 = a3[1];
    v10 = a4;
    if (v11 >= v9)
    {
      goto LABEL_109;
    }
  }

  v36 = *a3;
  v37 = *a3 + 24 * v11 - 24;
  v38 = v13 - v11;
LABEL_44:
  v39 = *(v36 + 24 * v11);
  v40 = v38;
  v41 = v37;
  while (1)
  {
    if (*v41 >= v39 && (*v41 != v39 || *(v41 + 8) >= *(v41 + 32)))
    {
LABEL_43:
      ++v11;
      v37 += 24;
      --v38;
      if (v11 != v9)
      {
        goto LABEL_44;
      }

      v11 = v9;
      goto LABEL_56;
    }

    if (!v36)
    {
      break;
    }

    v43 = *(v41 + 32);
    v44 = *(v41 + 40);
    *(v41 + 24) = *v41;
    *(v41 + 40) = *(v41 + 16);
    *v41 = v39;
    *(v41 + 8) = v43;
    *(v41 + 16) = v44;
    v41 -= 24;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t sub_100560A7C(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v4 >= *v6 && (*v4 != *v6 || *(v4 + 1) >= *(v6 + 1)))
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 24;
    v5 -= 24;
    v18 = v12;
    do
    {
      v19 = (v5 + 24);
      v21 = *(v18 - 24);
      v18 -= 24;
      v20 = v21;
      if (*v17 < v21 || (*v17 == v20 ? (v22 = *(v6 - 2) < *(v12 - 2)) : (v22 = 0), v22))
      {
        if (v19 != v6)
        {
          v24 = *v17;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v24;
        }

        if (v12 <= v4 || (v6 -= 24, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if (v19 != v12)
      {
        v23 = *v18;
        *(v5 + 16) = *(v18 + 16);
        *v5 = v23;
      }

      v5 -= 24;
      v12 = v18;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_39:
  v25 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v26 = (v25 >> 2) + (v25 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v26])
  {
    memmove(v6, v4, 24 * v26);
  }

  return 1;
}

void sub_100560CE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9[2] = a5;
  sub_100260DE4(sub_100565D9C, v9, a2, a3, a4);
  if (v8)
  {
    goto LABEL_6;
  }

  if (v7 > a3)
  {
    if ((a4 >> 1) < a3)
    {
      __break(1u);
    }

    else if ((a4 >> 1) >= v7)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
LABEL_6:
        swift_unknownObjectRetain();
        return;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

uint64_t sub_100560DB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, __n128 a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v168 = a8;
  v154 = a5;
  v146 = a2;
  v140 = type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Day();
  v13 = *(v140 - 8);
  __chkstk_darwin(v140, v14);
  v135 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v137 = &v134 - v18;
  v19 = sub_1000F5104(&qword_100940628, &unk_1007A6A20);
  __chkstk_darwin(v19 - 8, v20);
  v158 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v23);
  v25 = &v134 - v24;
  v176 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v26 = *(v176 - 8);
  __chkstk_darwin(v176, v27);
  v160 = &v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29, v30);
  v151 = &v134 - v31;
  v32 = type metadata accessor for Date();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32, v34);
  v144 = &v134 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36, v37);
  v138 = &v134 - v38;
  __chkstk_darwin(v39, v40);
  v157 = (&v134 - v41);
  __chkstk_darwin(v42, v43);
  v167 = &v134 - v44;
  __chkstk_darwin(v45, v46);
  v169 = (&v134 - v47);
  v48 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v48 - 8, v49);
  v141 = &v134 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51, v52);
  v166 = (&v134 - v53);
  __chkstk_darwin(v54, v55);
  v165 = &v134 - v56;
  v59 = __chkstk_darwin(v57, v58);
  v60 = *(v33 + 56);
  v170 = &v134 - v61;
  v152 = v32;
  v156 = v33 + 56;
  v155 = v60;
  v60(v59);
  v62 = a4 >> 1;
  v63 = a3;
  v147 = a1;
  swift_unknownObjectRetain();
  v177 = v62;
  v159 = v26;
  v139 = v13;
  if (v62 == a3)
  {
    v64 = &_swiftEmptyArrayStorage;
    v65 = a3;
    v66 = v152;
LABEL_48:
    swift_unknownObjectRelease();
    v111 = v177 - v65;
    if (v177 <= v65)
    {
      v114 = v170;
      goto LABEL_52;
    }

    v112 = v65;
    v70 = v170;
    v113 = v66;
    v66 = v141;
    sub_100010364(v170, v141, &unk_100938850, qword_100795AE0);
    if ((*(v33 + 48))(v66, 1, v113) == 1)
    {
      sub_1000050A4(v70, &unk_100938850, qword_100795AE0);
      v114 = v66;
LABEL_52:
      sub_1000050A4(v114, &unk_100938850, qword_100795AE0);
      return v64;
    }

    (*(v33 + 32))(v144, v66, v113);
    if (v112 < v63)
    {
LABEL_76:
      __break(1u);
    }

    else
    {
      v115 = v112;
      v145 = v64;
      v142 = v33;
      v143 = v9;
      v116 = (v159 + 48);
      v117 = (v159 + 32);
      swift_unknownObjectRetain();
      v118 = &_swiftEmptyArrayStorage;
      v119 = (v146 + 8 * v115);
      v120 = v158;
      do
      {
        v121 = *v119;
        v122 = [v121 objectID];
        v123 = v122;
        v124 = v168;
        if (*(v168 + 16))
        {
          v125 = sub_100363FF4(v122);
          if (v126)
          {
            v127 = *(*(v124 + 56) + 8 * v125);
          }

          else
          {
            v127 = 0;
          }

          v120 = v158;
        }

        else
        {
          v127 = 0;
        }

        sub_1005384A4(v121, v127, 0, v120);
        v128 = v176;
        if ((*v116)(v120, 1, v176) == 1)
        {
          sub_1000050A4(v120, &qword_100940628, &unk_1007A6A20);
        }

        else
        {
          v129 = *v117;
          (*v117)(v160, v120, v128);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v118 = sub_100365A24(0, *v118->clientIdentity + 1, 1, v118);
          }

          v131 = *v118->clientIdentity;
          v130 = *&v118->clientIdentity[8];
          if (v131 >= v130 >> 1)
          {
            v118 = sub_100365A24((v130 > 1), v131 + 1, 1, v118);
          }

          *v118->clientIdentity = v131 + 1;
          v129(v118 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v131, v160, v176);
        }

        ++v119;
        --v111;
      }

      while (v111);
      v66 = v142;
      (*(v142 + 16))(v138, v144, v152);
      v70 = v135;
      REMRemindersListDataView.CompletedDateBucketsModel.Day.init(date:reminders:)();
      v64 = v145;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_70;
      }
    }

    v64 = sub_100365BD8(0, *v64->clientIdentity + 1, 1, v64);
LABEL_70:
    v133 = *v64->clientIdentity;
    v132 = *&v64->clientIdentity[8];
    if (v133 >= v132 >> 1)
    {
      v64 = sub_100365BD8((v132 > 1), v133 + 1, 1, v64);
    }

    swift_unknownObjectRelease();
    (*(v66 + 8))(v144, v152);
    sub_1000050A4(v170, &unk_100938850, qword_100795AE0);
    *v64->clientIdentity = v133 + 1;
    (*(v139 + 32))(v64 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v133, v70, v140);
    return v64;
  }

  v150 = v25;
  v67 = 0;
  v172 = (v33 + 32);
  v179 = (v33 + 48);
  v153 = (v33 + 16);
  v162 = (v33 + 8);
  v149 = (v26 + 48);
  v148 = (v26 + 32);
  v134 = v13 + 32;
  v64 = &_swiftEmptyArrayStorage;
  v68 = qword_100795AE0;
  v69 = a3;
  v65 = a3;
  v66 = v152;
  v70 = v169;
  v143 = v9;
  v142 = v33;
  v164 = a3;
  while (2)
  {
    v145 = v64;
    v71 = 0;
    v173 = (v177 - v69);
    v174 = v146 + 8 * v69;
    v136 = v65;
    v72 = v63 + v67 - v65;
    v73 = v69;
    v163 = v69;
    v175 = v67;
    while (1)
    {
      if (v73 < v63 || v71 + v73 >= v177)
      {
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v64 = (v71 + v67 + 1);
      if (__OFADD__(v71 + v67, 1))
      {
        goto LABEL_75;
      }

      v74 = *(v174 + 8 * v71);
      v75 = [v74 completionDate];
      if (v75)
      {
        break;
      }

LABEL_6:
      v71 = v71 + 1;
      ++v72;
      v67 = v175;
      if (v173 == v71)
      {
        v65 = v136;
        v9 = v143;
        v33 = v142;
        v64 = v145;
        goto LABEL_48;
      }
    }

    v178 = v74;
    v161 = v64;
    v76 = v70;
    v77 = v167;
    v78 = v75;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v171 = *v172;
    v171(v76, v77, v66);
    v79 = v170;
    v80 = v68;
    v81 = v165;
    sub_100010364(v170, v165, &unk_100938850, v80);
    v82 = *v179;
    if ((*v179)(v81, 1, v66) == 1)
    {
      sub_1000050A4(v79, &unk_100938850, v80);
      sub_1000050A4(v81, &unk_100938850, v80);
      (*v153)(v79, v76, v66);
      (v155)(v79, 0, 1, v66);
    }

    else
    {
      sub_1000050A4(v81, &unk_100938850, v80);
    }

    v64 = v166;
    sub_100010364(v79, v166, &unk_100938850, v80);
    if (v82(v64, 1, v66) == 1)
    {
      v70 = v169;
      (*v162)(v169, v66);

      v68 = v80;
      sub_1000050A4(v64, &unk_100938850, v80);
      v73 = v163;
      v63 = v164;
      goto LABEL_6;
    }

    v68 = v80;
    v83 = v157;
    v171(v157, v64, v66);
    v64 = v169;
    result = Calendar.isDate(_:inSameDayAs:)();
    if (result)
    {

      v85 = *v162;
      (*v162)(v83, v66);
      v85(v64, v66);
      v73 = v163;
      v63 = v164;
      v70 = v64;
      goto LABEL_6;
    }

    if (__OFADD__(v164, v71 + v175))
    {
      __break(1u);
      goto LABEL_79;
    }

    v86 = v136;
    if (v71 + v175 + v164 < v136)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    if (v177 < v136)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v175 += v71 + v164;
    if (v136 < v164)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v87 = v175;
    if (v177 < v175)
    {
LABEL_82:
      __break(1u);
      break;
    }

    v88 = v66;
    if ((v175 & 0x8000000000000000) == 0)
    {
      swift_unknownObjectRetain();
      v89 = &_swiftEmptyArrayStorage;
      if (v86 != v87)
      {
        v98 = (v146 + 8 * v86);
        do
        {
          v99 = *v98;
          v100 = [v99 objectID];
          v101 = v100;
          v102 = v168;
          if (*(v168 + 16))
          {
            v103 = sub_100363FF4(v100);
            if (v104)
            {
              v105 = *(*(v102 + 56) + 8 * v103);
            }

            else
            {
              v105 = 0;
            }

            v88 = v152;
          }

          else
          {
            v105 = 0;
          }

          v106 = v150;
          sub_1005384A4(v99, v105, 0, v150);
          v107 = v176;
          if ((*v149)(v106, 1, v176) == 1)
          {
            sub_1000050A4(v106, &qword_100940628, &unk_1007A6A20);
          }

          else
          {
            v108 = *v148;
            (*v148)(v151, v106, v107);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v89 = sub_100365A24(0, *v89->clientIdentity + 1, 1, v89);
            }

            v110 = *v89->clientIdentity;
            v109 = *&v89->clientIdentity[8];
            if (v110 >= v109 >> 1)
            {
              v89 = sub_100365A24((v109 > 1), v110 + 1, 1, v89);
            }

            *v89->clientIdentity = v110 + 1;
            v108(v89 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v110, v151, v176);
          }

          ++v98;
          --v72;
        }

        while (v72);
      }

      (*v153)(v138, v157, v88);
      REMRemindersListDataView.CompletedDateBucketsModel.Day.init(date:reminders:)();
      v90 = v145;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = sub_100365BD8(0, *v90->clientIdentity + 1, 1, v90);
      }

      v91 = v163;
      v92 = v178;
      v94 = *v90->clientIdentity;
      v93 = *&v90->clientIdentity[8];
      if (v94 >= v93 >> 1)
      {
        v90 = sub_100365BD8((v93 > 1), v94 + 1, 1, v90);
      }

      v95 = v71 + v91 + 1;
      v178 = (~v91 + v177);
      swift_unknownObjectRelease();

      v66 = v88;
      (*v162)(v157, v88);
      v96 = v170;
      sub_1000050A4(v170, &unk_100938850, qword_100795AE0);
      *v90->clientIdentity = v94 + 1;
      (*(v139 + 32))(v90 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v94, v137, v140);
      v70 = v169;
      v171(v96, v169, v88);
      (v155)(v96, 0, 1, v88);
      v69 = v95;
      v64 = v90;
      v68 = qword_100795AE0;
      v67 = v161;
      v97 = v178 == v71;
      v9 = v143;
      v33 = v142;
      v63 = v164;
      v65 = v175;
      if (v97)
      {
        goto LABEL_48;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

void sub_100561DD8(void (**a1)(void, void), uint64_t a2)
{
  v739 = a1;
  v701 = type metadata accessor for REMRemindersListDataView.DateBucketsModel.DateFormattingStyle();
  v688 = *(v701 - 8);
  __chkstk_darwin(v701, v3);
  v700 = &v670 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v709 = type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate();
  v687 = *(v709 - 8);
  __chkstk_darwin(v709, v5);
  v702 = (&v670 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v719 = type metadata accessor for Calendar.Component();
  v722 = *(v719 - 8);
  __chkstk_darwin(v719, v7);
  v718 = &v670 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v9 - 8, v10);
  v693 = &v670 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v715 = &v670 - v14;
  __chkstk_darwin(v15, v16);
  v695 = &v670 - v17;
  __chkstk_darwin(v18, v19);
  v706 = &v670 - v20;
  v733 = type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Bucket();
  v727 = *(v733 - 8);
  __chkstk_darwin(v733, v21);
  v697 = &v670 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v24);
  v714 = &v670 - v25;
  __chkstk_darwin(v26, v27);
  v689 = &v670 - v28;
  __chkstk_darwin(v29, v30);
  v690 = (&v670 - v31);
  __chkstk_darwin(v32, v33);
  v731 = &v670 - v34;
  v35 = sub_1000F5104(&qword_100940628, &unk_1007A6A20);
  __chkstk_darwin(v35 - 8, v36);
  v747 = &v670 - v37;
  v752 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v745 = *(v752 - 8);
  __chkstk_darwin(v752, v38);
  v751 = &v670 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v737 = type metadata accessor for Date();
  v724 = *(v737 - 8);
  __chkstk_darwin(v737, v40);
  v691 = &v670 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42, v43);
  v723 = &v670 - v44;
  __chkstk_darwin(v45, v46);
  v716 = &v670 - v47;
  __chkstk_darwin(v48, v49);
  v708 = &v670 - v50;
  __chkstk_darwin(v51, v52);
  v707 = &v670 - v53;
  __chkstk_darwin(v54, v55);
  v744 = &v670 - v56;
  __chkstk_darwin(v57, v58);
  v743 = &v670 - v59;
  __chkstk_darwin(v60, v61);
  v712 = &v670 - v62;
  __chkstk_darwin(v63, v64);
  v734 = &v670 - v65;
  __chkstk_darwin(v66, v67);
  v746 = &v670 - v68;
  v704 = type metadata accessor for Calendar();
  v703 = *(v704 - 8);
  __chkstk_darwin(v704, v69);
  v736 = &v670 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v729 = _s10PredicatesOMa(0);
  __chkstk_darwin(v729, v71);
  v728 = (&v670 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  v725 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v730 = *(v725 - 8);
  __chkstk_darwin(v725, v73);
  v699 = &v670 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v75, v76);
  v717 = (&v670 - v77);
  __chkstk_darwin(v78, v79);
  v694 = &v670 - v80;
  __chkstk_darwin(v81, v82);
  v705 = &v670 - v83;
  __chkstk_darwin(v84, v85);
  v721 = (&v670 - v86);
  __chkstk_darwin(v87, v88);
  v741 = &v670 - v89;
  __chkstk_darwin(v90, v91);
  v740 = &v670 - v92;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v750 = *(Subtasks - 1);
  __chkstk_darwin(Subtasks, v93);
  v720 = &v670 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v95, v96);
  v726 = &v670 - v97;
  __chkstk_darwin(v98, v99);
  v748 = &v670 - v100;
  __chkstk_darwin(v101, v102);
  v742 = (&v670 - v103);
  v104 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v105 = *(v104 - 8);
  __chkstk_darwin(v104, v106);
  v108 = &v670 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v109, v110);
  v112 = &v670 - v111;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v114 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v115);
  v698 = &v670 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v117, v118);
  v713 = &v670 - v119;
  __chkstk_darwin(v120, v121);
  v692 = &v670 - v122;
  __chkstk_darwin(v123, v124);
  v696 = &v670 - v125;
  __chkstk_darwin(v126, v127);
  v711 = &v670 - v128;
  __chkstk_darwin(v129, v130);
  v710 = (&v670 - v131);
  __chkstk_darwin(v132, v133);
  v135 = &v670 - v134;
  v732 = a2;
  REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.sortingStyle.getter();
  v138 = *(v114 + 8);
  v136 = v114 + 8;
  v137 = v138;
  v735 = Configuration;
  v138(v135, Configuration);
  (*(v105 + 104))(v108, enum case for REMRemindersListDataView.SortingStyle.default(_:), v104);
  LOBYTE(a2) = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
  v139 = *(v105 + 8);
  v139(v108, v104);
  v139(v112, v104);
  if (a2 & 1) == 0 || (REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.configuration.getter(), v140 = v742, REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter(), v137(v135, v735), v141 = v750, v142 = *&v750->coreSuggestionsHandler[10], v143 = v748, LODWORD(v684) = enum case for REMRemindersListDataView.FetchSubtasks.on(_:), v144 = Subtasks, v142(v748), sub_100565CB0(&qword_100940630, &type metadata accessor for REMRemindersListDataView.FetchSubtasks, &protocol conformance descriptor for REMRemindersListDataView.FetchSubtasks), v145 = dispatch thunk of static Equatable.== infix(_:_:)(), v148 = *v141->storeController, storeController = v141->storeController, v146 = v148, (v148)(v143, v144), (v148)(v140, v144), v149 = v735, (v145) || (v748 = v146, REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.configuration.getter(), v152 = v740, REMRemindersListDataView.FetchConfiguration.showCompleted.getter(), v676 = v136, v675 = v137, v137(v135, v149), v153 = v730, v154 = v741, v155 = v725, (*(v730 + 104))(v741, enum case for REMRemindersListDataView.ShowCompleted.on(_:), v725), v156 = static REMRemindersListDataView.ShowCompleted.== infix(_:_:)(), v157 = *(v153 + 8), v157(v154, v155), v730 = v153 + 8, v677 = v157, v157(v152, v155), (v156 & 1) == 0))
  {
    v150 = objc_opt_self();
    v151 = String._bridgeToObjectiveC()();
    [v150 internalErrorWithDebugDescription:v151];

    swift_willThrow();
    return;
  }

  v158 = v728;
  swift_storeEnumTagMultiPayload();
  v159 = sub_100043AA8();
  sub_1000513B4(v158);
  if (qword_1009363F8 == -1)
  {
    goto LABEL_6;
  }

LABEL_254:
  swift_once();
LABEL_6:
  v160 = qword_100974F68;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  v753 = v160;

  sub_100271A80(inited);
  v162 = v753;
  v163 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v164 = [objc_allocWithZone(NSFetchRequest) init];
  v686 = v163;
  v165 = [swift_getObjCClassFromMetadata() entity];
  [v164 setEntity:v165];

  [v164 setAffectedStores:0];
  v670 = v159;
  [v164 setPredicate:v159];
  v753 = _swiftEmptySetSingleton;

  sub_100050AD0(v166);
  v162, v167, v168, v169, v170, v171, v172, v173;
  v174 = v753;
  v175 = v738;
  v176 = sub_1003FE014(v753);
  v174, v177, v178, v179, v180, v181, v182, v183;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v176, v185, v186, v187, v188, v189, v190, v191;
  v671 = v164;
  [v164 setPropertiesToFetch:isa];
  v162, v192, v193, v194, v195, v196, v197, v198;

  v199 = swift_allocObject();
  *(v199 + 16) = xmmword_100796900;
  if (qword_100936078 != -1)
  {
    swift_once();
  }

  v200 = qword_100974E28;
  *(v199 + 32) = qword_100974E28;
  v201 = qword_100936050;
  v202 = v200;
  if (v201 != -1)
  {
    swift_once();
  }

  v203 = qword_100974E00;
  *(v199 + 40) = qword_100974E00;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v204 = v203;
  v205 = Array._bridgeToObjectiveC()().super.isa;
  v199, v206, v207, v208, v209, v210, v211, v212;
  v213 = v671;
  [v671 setSortDescriptors:v205];

  v214 = v686;
  v215 = NSManagedObjectContext.fetch<A>(_:)();
  v681 = v175;
  if (v175)
  {

    return;
  }

  v685 = v215;
  v216 = v710;
  REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.configuration.getter();
  v217 = v726;
  REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
  v218 = v216;
  v219 = v735;
  v220 = v675;
  v675(v218, v735);
  v221 = v711;
  REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.configuration.getter();
  v222 = v721;
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v220(v221, v219);
  v223 = v750;
  v224 = v720;
  v225 = Subtasks;
  (*v750->clientIdentity)(v720, v217, Subtasks);
  v226 = (*&v223->contactInteractionWriter[2])(v224, v225);
  if (v226 == enum case for REMRemindersListDataView.FetchSubtasks.off(_:) || v226 == v684)
  {
    v750 = sub_10038E654(&_swiftEmptyArrayStorage);
    v227 = v737;
    v228 = v747;
    goto LABEL_20;
  }

  v227 = v737;
  v228 = v747;
  if (v226 == enum case for REMRemindersListDataView.FetchSubtasks.count(_:))
  {
    v229 = v685;
    v230 = v681;
    sub_100539C70(v685, v222, v739, 0);
    v681 = v230;
    v239 = v222;
    v240 = v671;
    if (v230)
    {
      v229, v232, v233, v234, v235, v236, v237, v238;

      v677(v239, v725);
      (v748)(v726, Subtasks);
      return;
    }

    v750 = v231;
    v222 = v239;
LABEL_20:
    v241 = Subtasks;
    v677(v222, v725);
    (v748)(v726, v241);
    REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.calendar.getter();
    v242 = v734;
    REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.today.getter();
    v217 = v746;
    Calendar.startOfDay(for:)();
    v243 = *(v724 + 8);
    v741 = (v724 + 8);
    v740 = v243;
    (v243)(v242, v227);
    Calendar.beginningOfNextDay(_:)();
    v244 = v685;
    v729 = v685 >> 62;
    if (!(v685 >> 62))
    {
      v217 = *((v685 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_22;
    }

LABEL_262:
    if (v244 < 0)
    {
      v254 = v244;
    }

    else
    {
      v254 = v244 & 0xFFFFFFFFFFFFFF8;
    }

    v669 = _CocoaArrayWrapper.endIndex.getter();
    if ((v669 & 0x8000000000000000) == 0)
    {
      v217 = v669;
      if ((_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
      {
        if (_CocoaArrayWrapper.endIndex.getter() >= v217)
        {
          goto LABEL_288;
        }

        __break(1u);
LABEL_269:
        __break(1u);
LABEL_270:
        __break(1u);
LABEL_271:
        __break(1u);
LABEL_272:
        __break(1u);
        goto LABEL_273;
      }

      goto LABEL_283;
    }

    goto LABEL_282;
  }

LABEL_286:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  do
  {

    __break(1u);
LABEL_288:
    v227 = v737;
    v244 = v685;
    v228 = v747;
LABEL_22:
    v684 = v244 & 0xC000000000000001;
    if ((v244 & 0xC000000000000001) != 0)
    {

      if (v217)
      {
        v252 = 0;
        do
        {
          v253 = v252 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v252);
          v252 = v253;
        }

        while (v217 != v253);
      }
    }

    else
    {
    }

    if (v729)
    {
      v244, v245, v246, v247, v248, v249, v250, v251;
      v255 = _CocoaArrayWrapper.subscript.getter();
      v214 = v256;
      v254 = v257;
      storeController = v258;
    }

    else
    {
      v254 = 0;
      v255 = (v244 & 0xFFFFFFFFFFFFFF8);
      v214 = ((v244 & 0xFFFFFFFFFFFFFF8) + 32);
      storeController = (2 * v217) | 1;
    }

    v753 = v255;
    v754 = v214;
    v755 = v254;
    v756 = storeController;
    v721 = v255;
    sub_100560CE0(v255, v214, v254, storeController, v712);
    if (!v260)
    {
      v262 = v721;
      goto LABEL_49;
    }

    if (v217 < (v259 >> 1))
    {
      goto LABEL_270;
    }

    v214 = (v259 >> 1);
    if (v729)
    {
      v261 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v261 = *((v244 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v261 < v214)
    {
      goto LABEL_271;
    }

    if (!v684 || v214 == v217)
    {

LABEL_45:
      if (v729)
      {
        v244, v265, v266, v267, v268, v269, v270, v271;
        v272 = _CocoaArrayWrapper.subscript.getter();
        v273 = v274;
        v214 = v275;
        v221 = v276;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v272 = (v244 & 0xFFFFFFFFFFFFFF8);
        v273 = (v244 & 0xFFFFFFFFFFFFFF8) + 32;
        v221 = (2 * v217) | 1;
      }

      swift_unknownObjectRelease();
      v753 = v272;
      v754 = v273;
      v262 = v272;
      v254 = v214;
      v755 = v214;
      v756 = v221;
      v214 = v273;
      storeController = v221;
LABEL_49:
      v277 = 0;
      v742 = (v724 + 32);
      Subtasks = &v745->clientIdentity[32];
      v748 = &v745->clientIdentity[16];
      if (v244 < 0)
      {
        v278 = v244;
      }

      else
      {
        v278 = v244 & 0xFFFFFFFFFFFFFF8;
      }

      v682 = v278;
      v683 = v244 & 0xFFFFFFFFFFFFFF8;
      v673 = (v244 & 0xFFFFFFFFFFFFFF8) + 32;
      v672 = (2 * v217) | 1;
      v680 = (v724 + 16);
      v674 = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.day(_:);
      v679 = (v727 + 104);
      v678 = v727 + 32;
      v710 = (v724 + 40);
      v728 = &_swiftEmptyArrayStorage;
      v721 = v262;
      v738 = v262;
      v739 = v217;
      v217 = v254;
      while (1)
      {
        LODWORD(v726) = v277;
        v244 = storeController >> 1;
        v280 = v217 <= (storeController >> 1);
        if (v217 == storeController >> 1)
        {
          storeController = storeController >> 1;
          goto LABEL_69;
        }

        v711 = storeController;
        storeController = v217;
        if (v280)
        {
          v217 = v244;
        }

        v720 = storeController;
        do
        {
          if (v217 == storeController)
          {
            goto LABEL_124;
          }

          v281 = [*(&v214->super.isa + storeController) completionDate];
          if (v281)
          {
            v282 = v744;
            v283 = v281;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v221 = v214;
            v284 = v743;
            (*v742)(v743, v282, v227);
            sub_100565CB0(&qword_1009464D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
            v254 = dispatch thunk of static Comparable.< infix(_:_:)();
            v285 = v284;
            v214 = v221;
            (v740)(v285, v227);
            if ((v254 & 1) == 0)
            {
              v217 = v720;
              if (v720 < storeController)
              {
                if ((storeController & 0x8000000000000000) == 0)
                {
                  goto LABEL_69;
                }

                goto LABEL_257;
              }

              storeController = v711;
              goto LABEL_54;
            }
          }

          ++storeController;
        }

        while (v244 != storeController);
        storeController = v244;
        v217 = v720;
LABEL_69:
        swift_unknownObjectRetain();
        v244 = storeController - v217;
        if (storeController != v217)
        {
          if (v217 <= storeController)
          {
            v288 = storeController;
          }

          else
          {
            v288 = v217;
          }

          v221 = v288 - v217;
          v289 = (&v214->super.isa + v217);
          v286 = &_swiftEmptyArrayStorage;
          while (v221)
          {
            v290 = *v289;
            v291 = [v290 objectID];
            v292 = v291;
            v293 = v750;
            if (*v750->clientIdentity)
            {
              v294 = sub_100363FF4(v291);
              if (v295)
              {
                v296 = *(*&v293->clientIdentity[40] + 8 * v294);
              }

              else
              {
                v296 = 0;
              }

              v228 = v747;
            }

            else
            {
              v296 = 0;
            }

            sub_1005384A4(v290, v296, 0, v228);
            v254 = v752;
            if ((*Subtasks)(v228, 1, v752) == 1)
            {
              sub_1000050A4(v228, &qword_100940628, &unk_1007A6A20);
            }

            else
            {
              v297 = *v748;
              (*v748)(v751, v228, v254);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v286 = sub_100365A24(0, *v286->clientIdentity + 1, 1, v286);
              }

              v299 = *v286->clientIdentity;
              v298 = *&v286->clientIdentity[8];
              v254 = v299 + 1;
              if (v299 >= v298 >> 1)
              {
                v286 = sub_100365A24((v298 > 1), v299 + 1, 1, v286);
              }

              *v286->clientIdentity = v254;
              v297(v286 + ((v745->dataAccessRequestsWriter[2] + 32) & ~v745->dataAccessRequestsWriter[2]) + *&v745->storeProvider[10] * v299, v751, v752);
            }

            --v221;
            ++v289;
            if (!--v244)
            {
              goto LABEL_71;
            }
          }

          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        v286 = &_swiftEmptyArrayStorage;
LABEL_71:
        v159 = v739;
        if (v739 < storeController)
        {
          break;
        }

        if (v729)
        {
          v287 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v287 = *(v683 + 16);
        }

        v300 = v685;
        if (v287 < storeController)
        {
          goto LABEL_252;
        }

        if (!v684 || storeController == v159)
        {

          goto LABEL_102;
        }

        if (storeController >= v159)
        {
          goto LABEL_253;
        }

        v301 = storeController;
        do
        {
          v302 = (v301 + 1);
          _ArrayBuffer._typeCheckSlowPath(_:)(v301);
          v301 = v302;
        }

        while (v159 != v302);
LABEL_102:
        if (v729)
        {
          v300, v303, v304, v305, v306, v307, v308, v309;
          v317 = _CocoaArrayWrapper.subscript.getter();
          v214 = v318;
          v217 = v319;
          storeController = v320;
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
          v317 = v683;
          v214 = v673;
          v217 = storeController;
          storeController = v672;
        }

        v753 = v317;
        v754 = v214;
        v755 = v217;
        v756 = storeController;
        v321 = *v286->clientIdentity;
        v721 = v317;
        if (v321)
        {
          (*v680)(v734, v746, v737);
          v322 = v731;
          REMRemindersListDataView.CompletedDateBucketsModel.Day.init(date:reminders:)();
          (*v679)(v322, v674, v733);
          v323 = v728;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v323 = sub_100365C00(0, *v323->clientIdentity + 1, 1, v323);
          }

          v728 = v323;
          v325 = *v323->clientIdentity;
          v324 = *&v323->clientIdentity[8];
          v227 = v737;
          if (v325 >= v324 >> 1)
          {
            v728 = sub_100365C00((v324 > 1), v325 + 1, 1, v728);
          }

          swift_unknownObjectRelease();
          v326 = v728;
          *v728->clientIdentity = v325 + 1;
          (*(v727 + 32))(v326 + ((*(v727 + 80) + 32) & ~*(v727 + 80)) + *(v727 + 72) * v325, v731, v733);
          v738 = v721;
        }

        else
        {
          v286, v310, v311, v312, v313, v314, v315, v316;
          swift_unknownObjectRelease();
          v738 = v317;
          v227 = v737;
        }

LABEL_54:
        v279 = v734;
        v221 = v746;
        Calendar.beginningOfPreviousDay(_:)();
        v254 = *v710;
        (*v710)(v221, v279, v227);
        v277 = 1;
        if (v726)
        {
          v711 = storeController;
          v752 = v214;
          v720 = v217;
          v221 = enum case for Calendar.Component.day(_:);
          v327 = v746;
          v328 = v722;
          v329 = *(v722 + 104);
          v330 = v718;
          v331 = v719;
          v748 = (v722 + 104);
          v747 = v329;
          (v329)(v718, enum case for Calendar.Component.day(_:), v719);
          v332 = v706;
          Calendar.date(byAdding:value:to:wrappingComponents:)();
          v333 = *(v328 + 8);
          v722 = v328 + 8;
          v745 = v333;
          (v333)(v330, v331);
          v334 = v724 + 48;
          v335 = *(v724 + 48);
          v336 = (v335)(v332, 1, v227);
          Subtasks = v335;
          if (v336 == 1)
          {
            v228 = v707;
            (*v680)(v707, v327, v227);
            v337 = (v335)(v332, 1, v227);
            v338 = v705;
            v339 = v711;
            if (v337 != 1)
            {
              v340 = v711;
              sub_1000050A4(v332, &unk_100938850, qword_100795AE0);
              v339 = v340;
            }
          }

          else
          {
            v228 = v707;
            (*v742)(v707, v332, v227);
            v338 = v705;
            v339 = v711;
          }

          v724 = v334;
          v341 = v721;
          sub_100560CE0(v721, v752, v720, v339, v228);
          if (!v342)
          {
            LODWORD(v743) = v221;
            v751 = v341;
            storeController = v681;
            goto LABEL_143;
          }

          v346 = v343;
          v347 = v344;
          v348 = v345;
          v744 = v342;
          v349 = v696;
          REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.configuration.getter();
          REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
          v350 = v349;
          v351 = v744;
          v352.n128_f64[0] = (v675)(v350, v735);
          v353 = v346;
          v354 = v736;
          v214 = v750;
          v355 = v681;
          v738 = sub_100560DB4(v351, v353, v347, v348, v736, v352, v338, v750);
          storeController = v355;
          if (v355)
          {
            v214, v356, v357, v358, v359, v360, v361, v362;
            v685, v363, v364, v365, v366, v367, v368, v369;
            swift_unknownObjectRelease();

            v677(v338, v725);
            v370 = v737;
            v371 = v740;
            (v740)(v228, v737);
            v371(v712, v370);
            v728, v372, v373, v374, v375, v376, v377, v378;
            swift_unknownObjectRelease();
            v371(v746, v370);
            (*(v703 + 8))(v354, v704);
            return;
          }

          v677(v338, v725);
          v244 = v348 >> 1;
          if (v739 >= v244)
          {
            if (!v729)
            {
              v379 = *(v683 + 16);
              goto LABEL_126;
            }

LABEL_125:
            v379 = _CocoaArrayWrapper.endIndex.getter();
LABEL_126:
            v214 = v685;
            if (v379 >= v244)
            {
              v720 = v244;
              if (v684 && v244 != v739)
              {
                if (v244 < v739)
                {

                  v380 = v244;
                  v381 = v739;
                  do
                  {
                    v382 = (v380 + 1);
                    _ArrayBuffer._typeCheckSlowPath(_:)(v380);
                    v380 = v382;
                  }

                  while (v381 != v382);
                  goto LABEL_134;
                }

                goto LABEL_279;
              }

LABEL_134:
              LODWORD(v743) = v221;
              if (v729)
              {
                v685, v383, v384, v385, v386, v387, v388, v389;
                v390 = _CocoaArrayWrapper.subscript.getter();
                v391 = v394;
                v393 = v395;
                v392 = v396;
                v214 = v690;
              }

              else
              {
                v390 = v683;
                v391 = v673;
                v392 = v672;
                v214 = v690;
                v393 = v720;
              }

              swift_beginAccess();
              v751 = v390;
              v752 = v391;
              v753 = v390;
              v754 = v391;
              v755 = v393;
              v756 = v392;
              v711 = v392;
              swift_unknownObjectRelease();
              v404 = *v738->clientIdentity;
              v720 = v393;
              if (v404)
              {
                v405 = *(sub_1000F5104(&qword_10094C888, qword_1007B1A48) + 48);
                (*v680)(v214, v746, v737);
                *(&v214->super.isa + v405) = v738;
                (*v679)(v214, enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.pastSevenDays(_:), v733);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  goto LABEL_276;
                }

                goto LABEL_139;
              }

              v738, v397, v398, v399, v400, v401, v402, v403;
              swift_unknownObjectRelease();
              goto LABEL_143;
            }

            goto LABEL_275;
          }

          goto LABEL_274;
        }
      }

      __break(1u);
LABEL_252:
      __break(1u);
LABEL_253:
      __break(1u);
      goto LABEL_254;
    }

    if (v214 < v217)
    {

      v263 = v214;
      do
      {
        v264 = v263 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v263);
        v263 = v264;
      }

      while (v217 != v264);
      goto LABEL_45;
    }

LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:
    v728 = sub_100365C00(0, *v728->clientIdentity + 1, 1, v728);
LABEL_139:
    v407 = *v728->clientIdentity;
    v406 = *&v728->clientIdentity[8];
    if (v407 >= v406 >> 1)
    {
      v728 = sub_100365C00((v406 > 1), v407 + 1, 1, v728);
    }

    swift_unknownObjectRelease();
    v408 = v728;
    *v728->clientIdentity = v407 + 1;
    (*(v727 + 32))(v408 + ((*(v727 + 80) + 32) & ~*(v727 + 80)) + *(v727 + 72) * v407, v214, v733);
LABEL_143:
    v409 = v734;
    Calendar.beginningOfPreviousDay(_:)();
    v410 = v737;
    (v740)(v228, v737);
    v411 = v746;
    (v254)(v746, v409, v410);
    v412 = v718;
    v413 = v719;
    (v747)(v718, v743, v719);
    v414 = v695;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v415 = v412;
    v416 = v414;
    (v745)(v415, v413);
    v417 = v414;
    v418 = Subtasks;
    v419 = (Subtasks)(v417, 1, v410);
    v681 = storeController;
    if (v419 == 1)
    {
      v420 = v708;
      (*v680)(v708, v411, v410);
      v421 = (v418)(v416, 1, v410);
      v422 = v694;
      v221 = v751;
      if (v421 != 1)
      {
        sub_1000050A4(v416, &unk_100938850, qword_100795AE0);
      }
    }

    else
    {
      v420 = v708;
      (*v742)(v708, v416, v410);
      v422 = v694;
      v221 = v751;
    }

    sub_100560CE0(v221, v752, v720, v711, v420);
    if (v423)
    {
      v427 = v423;
      v428 = v424;
      v429 = v425;
      v430 = v426;
      v431 = v692;
      REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.configuration.getter();
      REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
      v432.n128_f64[0] = (v675)(v431, v735);
      v433 = v427;
      v434 = v428;
      v435 = v427;
      v436 = v736;
      v214 = v750;
      v437 = v681;
      v438 = sub_100560DB4(v433, v434, v429, v430, v736, v432, v422, v750);
      storeController = v437;
      if (v437)
      {
        v214, v439, v440, v441, v442, v443, v444, v445;
        v685, v446, v447, v448, v449, v450, v451, v452;
        swift_unknownObjectRelease();

        v677(v422, v725);
        v453 = v737;
        v454 = v740;
        (v740)(v708, v737);
        v454(v712, v453);
        v728, v455, v456, v457, v458, v459, v460, v461;
        swift_unknownObjectRelease();
        v454(v746, v453);
        (*(v703 + 8))(v436, v704);
        return;
      }

      v462 = v438;
      v744 = v435;
      v677(v422, v725);
      v217 = v739;
      if (v739 < (v430 >> 1))
      {
        __break(1u);
LABEL_278:
        __break(1u);
LABEL_279:
        __break(1u);
LABEL_280:
        v728 = sub_100365C00(0, *v728->clientIdentity + 1, 1, v728);
LABEL_168:
        v491 = *v728->clientIdentity;
        v490 = *&v728->clientIdentity[8];
        if (v491 >= v490 >> 1)
        {
          v728 = sub_100365C00((v490 > 1), v491 + 1, 1, v728);
        }

        swift_unknownObjectRelease();
        v492 = v728;
        *v728->clientIdentity = v491 + 1;
        (*(v727 + 32))(v492 + ((*(v727 + 80) + 32) & ~*(v727 + 80)) + *(v727 + 72) * v491, v689, v733);
        goto LABEL_172;
      }

      v463 = v430 >> 1;
      v214 = v717;
      if (v729)
      {
        v464 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v464 = *(v683 + 16);
      }

      if (v464 < v463)
      {
        goto LABEL_278;
      }

      v751 = v221;
      if (!v684 || v463 == v217)
      {
      }

      else
      {
        if (v463 >= v217)
        {
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
          goto LABEL_286;
        }

        v465 = v430 >> 1;
        do
        {
          v466 = v465 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v465);
          v465 = v466;
        }

        while (v217 != v466);
      }

      if (v729)
      {
        v685, v467, v468, v469, v470, v471, v472, v473;
        v221 = _CocoaArrayWrapper.subscript.getter();
        v474 = v477;
        v476 = v478;
        v475 = v479;
      }

      else
      {
        v221 = v683;
        v474 = v673;
        v475 = v672;
        v476 = v463;
      }

      swift_beginAccess();
      v753 = v221;
      v754 = v474;
      v752 = v474;
      v755 = v476;
      v756 = v475;
      v711 = v475;
      swift_unknownObjectRelease();
      v487 = *(v462 + 16);
      v720 = v476;
      if (v487)
      {
        v488 = *(sub_1000F5104(&qword_10094C888, qword_1007B1A48) + 48);
        v489 = v689;
        (*v680)(v689, v746, v737);
        *&v489[v488] = v462;
        (*v679)(v489, enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.pastThirtyDays(_:), v733);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_280;
        }

        goto LABEL_168;
      }

      v462, v480, v481, v482, v483, v484, v485, v486;
      swift_unknownObjectRelease();
    }

    else
    {
      storeController = v681;
      v214 = v717;
    }

LABEL_172:
    v493 = v734;
    v494 = v708;
    Calendar.beginningOfPreviousDay(_:)();
    v495 = v494;
    v496 = v737;
    (v740)(v495, v737);
    (v254)(v746, v493, v496);
    v497 = 1;
    swift_beginAccess();
    LODWORD(v743) = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.month(_:);
    LODWORD(v744) = enum case for Calendar.Component.month(_:);
    v244 = v716;
    do
    {
      v506 = v497;
      v507 = Calendar.startOfMonth(for:)();
      __chkstk_darwin(v507, v508);
      *(&v670 - 2) = v244;
      v228 = v720;
      sub_100260DE4(sub_100565CF8, (&v670 - 4), v752, v720, v711);
      v217 = storeController;
      if ((v510 & 1) == 0)
      {
        if (v228 >= v509)
        {
          v751 = v221;
          v681 = storeController;
          v544 = Subtasks;
          v228 = v506;
          goto LABEL_206;
        }

        if ((v711 >> 1) < v228)
        {
          goto LABEL_259;
        }

        if ((v711 >> 1) < v509)
        {
          goto LABEL_260;
        }

        if (v509 < 0)
        {
          goto LABEL_261;
        }

        v711 = v711 & 1 | (2 * v509);
      }

      swift_unknownObjectRetain();
      v511 = v713;
      REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.configuration.getter();
      REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
      v512.n128_f64[0] = (v675)(v511, v735);
      v228 = v711;
      v513 = sub_100560DB4(v221, v752, v720, v711, v736, v512, v214, v750);
      storeController = v217;
      if (v217)
      {
        v750, v514, v515, v516, v517, v518, v519, v520;
        v685, v566, v567, v568, v569, v570, v571, v572;
        swift_unknownObjectRelease();

        v677(v214, v725);
        v573 = v737;
        v574 = v740;
        (v740)(v712, v737);
        v574(v244, v573);
        v728, v575, v576, v577, v578, v579, v580, v581;
        swift_unknownObjectRelease();
        v574(v746, v573);
        (*(v703 + 8))(v736, v704);
        return;
      }

      v521 = v513;
      v677(v214, v725);
      v217 = v739;
      if (v739 < (v228 >> 1))
      {
        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
LABEL_261:
        __break(1u);
        goto LABEL_262;
      }

      v214 = (v228 >> 1);
      v244 = v685;
      v228 = v506;
      if (v729)
      {
        v522 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v522 = *(v683 + 16);
      }

      if (v522 < v214)
      {
        goto LABEL_256;
      }

      if (!v684 || v214 == v217)
      {
      }

      else
      {
        if (v214 >= v217)
        {
          goto LABEL_258;
        }

        v523 = v214;
        do
        {
          v524 = (v523 + 1);
          _ArrayBuffer._typeCheckSlowPath(_:)(v523);
          v523 = v524;
        }

        while (v739 != v524);
      }

      if (v729)
      {
        v244, v525, v526, v527, v528, v529, v530, v531;
        v532 = _CocoaArrayWrapper.subscript.getter();
        v214 = v535;
      }

      else
      {
        v532 = v683;
        v533 = v673;
        v534 = v672;
      }

      v753 = v532;
      v754 = v533;
      v752 = v533;
      v720 = v214;
      v755 = v214;
      v756 = v534;
      v711 = v534;
      swift_unknownObjectRelease();
      v543 = *(v521 + 16);
      v544 = Subtasks;
      v681 = 0;
      if (v543)
      {
        v545 = *(sub_1000F5104(&qword_10094C888, qword_1007B1A48) + 48);
        v546 = v714;
        (*v680)(v714, v746, v737);
        *&v546[v545] = v521;
        (*v679)(v546, v743, v733);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v728 = sub_100365C00(0, *v728->clientIdentity + 1, 1, v728);
        }

        v548 = *v728->clientIdentity;
        v547 = *&v728->clientIdentity[8];
        if (v548 >= v547 >> 1)
        {
          v728 = sub_100365C00((v547 > 1), v548 + 1, 1, v728);
        }

        swift_unknownObjectRelease();
        v549 = v728;
        *v728->clientIdentity = v548 + 1;
        (*(v727 + 32))(v549 + ((*(v727 + 80) + 32) & ~*(v727 + 80)) + *(v727 + 72) * v548, v714, v733);
      }

      else
      {
        v521, v536, v537, v538, v539, v540, v541, v542;
        swift_unknownObjectRelease();
      }

      v751 = v532;
LABEL_206:
      v550 = v737;
      v551 = v718;
      v552 = v719;
      (v747)(v718, v744, v719);
      v553 = v715;
      v554 = v716;
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      (v745)(v551, v552);
      if ((v544)(v553, 1, v550) == 1)
      {
        v217 = *v742;
        (*v742)(v723, v554, v550);
        v603 = (v544)(v553, 1, v550) == 1;
        v555 = v553;
        storeController = v681;
        v244 = v554;
        if (!v603)
        {
          sub_1000050A4(v555, &unk_100938850, qword_100795AE0);
        }

        v498 = v723;
      }

      else
      {
        (v740)(v554, v550);
        v217 = *v742;
        v498 = v723;
        (*v742)(v723, v553, v550);
        storeController = v681;
        v244 = v554;
      }

      v221 = v751;
      (v254)(v746, v498, v550);
      v603 = v228 == 12;
      v497 = v228 + 1;
      v214 = v717;
    }

    while (!v603);
    v685, v499, v500, v501, v502, v503, v504, v505;
    v556 = v711;
    if (v720 == v711 >> 1)
    {
      v557 = v740;
      (v740)(v712, v550);
      swift_unknownObjectRelease();
      v750, v558, v559, v560, v561, v562, v563, v564;

      v565 = v736;
      v221 = v746;
      goto LABEL_249;
    }

    v582 = v718;
    v583 = v719;
    v584 = v747;
    (v747)(v718, enum case for Calendar.Component.era(_:), v719);
    v585 = v746;
    v711 = v556;
    v586 = v736;
    v744 = Calendar.component(_:from:)();
    v587 = v745;
    (v745)(v582, v583);
    (v584)(v582, enum case for Calendar.Component.year(_:), v583);
    storeController = v221;
    v221 = v585;
    v228 = Calendar.component(_:from:)();
    v588 = (v587)(v582, v583);
    v254 = &v670;
    __chkstk_darwin(v588, v589);
    *(&v670 - 4) = v744;
    *(&v670 - 3) = v228;
    v748 = v228;
    *(&v670 - 2) = v586;
    v590 = swift_unknownObjectRetain();
    v591 = v681;
    v592 = sub_1005C49A4(v590, v752, v720, v711, sub_100565D18);
    v757 = sub_100277D98(v592);
    sub_10055DD88(&v757);
    v681 = v591;
  }

  while (v591);
  v592, v593, v594, v595, v596, v597, v598, v599;
  v600 = v757;
  v214 = v702;
  v752 = *v757->clientIdentity;
  if (v752)
  {
    v601 = 0;
    v747 = &v757->clientIdentity[16];
    LODWORD(v726) = enum case for REMRemindersListDataView.DateBucketsModel.DateFormattingStyle.allOf(_:);
    v743 = (v688 + 104);
    LODWORD(v729) = enum case for REMRemindersListDataView.DateBucketsModel.DateFormattingStyle.restOfUnlessFirstDay(_:);
    v738 = (v687 + 16);
    v739 = (v687 + 8);
    LODWORD(v731) = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.year(_:);
    v745 = v757;
    while (1)
    {
      if (v601 >= *v600->clientIdentity)
      {
        goto LABEL_269;
      }

      v602 = &v747[24 * v601];
      v228 = v602[2];
      v603 = *v602 == v744 && v602[1] == v748;
      if (v603)
      {
        (*v680)(v734, v221, v737);
        (*v743)(v700, v729, v701);

        REMRemindersListDataView.DateBucketsModel.RepresentativeDate.init(date:formattingStyle:)();
      }

      else
      {
        v757 = v602[2];

        sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
        sub_10055B9E4();
        v604 = v693;
        v605 = v737;
        v606 = v681;
        Sequence.firstMap<A>(_:)();
        v681 = v606;
        if ((Subtasks)(v604, 1, v605) == 1)
        {
          v228, v607, v608, v609, v610, v611, v612, v613;
          sub_1000050A4(v604, &unk_100938850, qword_100795AE0);
          v254 = v671;
          goto LABEL_217;
        }

        storeController = v691;
        (v217)(v691, v604, v605);
        (*v680)(v734, storeController, v605);
        (*v743)(v700, v726, v701);
        REMRemindersListDataView.DateBucketsModel.RepresentativeDate.init(date:formattingStyle:)();
        (v740)(storeController, v605);
      }

      v214 = (v228 >> 62);
      v254 = v686;
      if (v228 >> 62)
      {
        v652 = _CocoaArrayWrapper.endIndex.getter();
        if (v652 < 0)
        {
          goto LABEL_284;
        }

        v614 = v652;
        if (_CocoaArrayWrapper.endIndex.getter() < 0)
        {
          goto LABEL_285;
        }

        if (_CocoaArrayWrapper.endIndex.getter() < v614)
        {
          goto LABEL_272;
        }
      }

      else
      {
        v614 = *((v228 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if ((v228 & 0xC000000000000001) != 0)
      {

        if (v614)
        {
          v622 = 0;
          do
          {
            v623 = v622 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v622);
            v622 = v623;
          }

          while (v614 != v623);
        }
      }

      else
      {
      }

      v228, v615, v616, v617, v618, v619, v620, v621;
      if (v214)
      {
        v625 = _CocoaArrayWrapper.subscript.getter();
        v626 = v628;
        v624 = v629;
        v627 = v630;
        v228, v628, v629, v630, v631, v632, v633, v634;
      }

      else
      {
        v624 = 0;
        v625 = v228 & 0xFFFFFFFFFFFFFF8;
        v626 = (v228 & 0xFFFFFFFFFFFFFF8) + 32;
        v627 = (2 * v614) | 1;
      }

      v635 = v698;
      REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.configuration.getter();
      v228 = v699;
      REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
      v636.n128_f64[0] = (v675)(v635, v735);
      v637 = v681;
      v638 = sub_100560DB4(v625, v626, v624, v627, v736, v636, v228, v750);
      v681 = v637;
      if (v637)
      {
        v750, v639, v640, v641, v642, v643, v644, v645;

        swift_unknownObjectRelease();

        v677(v228, v725);
        (*v739)(v702, v709);
        v660 = v737;
        v661 = v740;
        (v740)(v712, v737);
        v728, v662, v663, v664, v665, v666, v667, v668;
        swift_unknownObjectRelease();
        v661(v746, v660);
        (*(v703 + 8))(v736, v704);
        return;
      }

      v646 = v638;
      v677(v228, v725);
      swift_unknownObjectRelease();
      v647 = *(sub_1000F5104(&qword_10094C880, &qword_1007B1A40) + 48);
      storeController = v697;
      v214 = v702;
      (v738->super.isa)(v697, v702, v709);
      *(storeController + v647) = v646;
      (*v679)(storeController, v731, v733);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v221 = v746;
      v254 = v671;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v728 = sub_100365C00(0, *v728->clientIdentity + 1, 1, v728);
      }

      v650 = *v728->clientIdentity;
      v649 = *&v728->clientIdentity[8];
      if (v650 >= v649 >> 1)
      {
        v728 = sub_100365C00((v649 > 1), v650 + 1, 1, v728);
      }

      (*v739)(v214, v709);
      v651 = v728;
      *v728->clientIdentity = v650 + 1;
      (*(v727 + 32))(v651 + ((*(v727 + 80) + 32) & ~*(v727 + 80)) + *(v727 + 72) * v650, storeController, v733);
LABEL_217:
      v600 = v745;
      if (++v601 == v752)
      {
        goto LABEL_248;
      }
    }
  }

  v254 = v671;
LABEL_248:

  v750, v653, v654, v655, v656, v657, v658, v659;

  v550 = v737;
  v557 = v740;
  (v740)(v712, v737);
  swift_unknownObjectRelease();
  v565 = v736;
LABEL_249:
  v557(v221, v550);
  (*(v703 + 8))(v565, v704);
}