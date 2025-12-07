void sub_1002257C4(unint64_t *a1@<X8>)
{
  v2 = "emote.proxyAuthorizationRequest";
  v3 = 0xD00000000000002ELL;
  if (!*v1)
  {
    v3 = 0xD00000000000002FLL;
    v2 = "GroupSessionParticipant24";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

Swift::Int sub_100225800()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10022587C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002258E4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10022595C(unsigned __int8 a1)
{
  v1 = 0x65707954415347;
  v2 = 0xD000000000000011;
  v3 = 0x4474736575716572;
  if (a1 != 3)
  {
    v3 = 0x7461446E656B6F74;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0xD000000000000011;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100225A18@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100226104(*a1);
  *a2 = result;
  return result;
}

void sub_100225A48(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x65707954415347;
  v5 = 0x800000010043BC90;
  v6 = 0xD000000000000011;
  v7 = 0xEB00000000617461;
  v8 = 0x4474736575716572;
  if (v2 != 3)
  {
    v8 = 0x7461446E656B6F74;
    v7 = 0xE900000000000061;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x800000010043C040;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int sub_100225AFC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100225BF4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100225CD8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100225DD8(Swift::String string, Swift::OpaquePointer cases)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(cases, v3);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100225E28(char a1)
{
  if (a1)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_100225E5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = 0xD000000000000019;
  }

  if (v2)
  {
    v4 = "r";
  }

  else
  {
    v4 = "proxyAuthorizationRequest";
  }

  if (*a2)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (*a2)
  {
    v6 = "proxyAuthorizationRequest";
  }

  else
  {
    v6 = "r";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100225F10@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_100225F6C(unint64_t *a1@<X8>)
{
  v2 = "proxyAuthorizationRequest";
  v3 = 0xD000000000000018;
  if (!*v1)
  {
    v3 = 0xD000000000000019;
    v2 = "r";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

Swift::Int sub_100225FA8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100226024(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10022608C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100226104(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004C47A0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100226154()
{
  result = qword_100522AB0;
  if (!qword_100522AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100522AB0);
  }

  return result;
}

unint64_t sub_1002261AC()
{
  result = qword_100522AB8;
  if (!qword_100522AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100522AB8);
  }

  return result;
}

unint64_t sub_100226204()
{
  result = qword_100522AC0;
  if (!qword_100522AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100522AC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroupSessionAuthorizationMessageKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupSessionAuthorizationMessageKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1002263E8()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_10052AF78);
  sub_100015AFC(v0, qword_10052AF78);
  v1 = *sub_1001D8C64();
  return Logger.init(_:)();
}

uint64_t sub_100226544(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1002265A4(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___MRDGroupSessionProxyAuthorizationListener_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1001DA158;
}

id sub_1002266A4(uint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v26 = a4;
  v8 = v4;
  swift_getObjectType();
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v27 = *(v9 - 8);
  v28 = v9;
  __chkstk_darwin(v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v12);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  v14 = *a1;
  v15 = *(v4 + *a1);
  if (v15)
  {
    v16 = *(v4 + *a1);
  }

  else
  {
    v25[2] = sub_1001E0520();
    v29 = _typeName(_:qualified:)();
    v30 = v17;
    v18._countAndFlagsBits = a2;
    v18._object = a3;
    String.append(_:)(v18);
    v25[0] = v30;
    v25[1] = v29;
    v26 = (v26)(v19, v20);
    static DispatchQoS.unspecified.getter();
    v29 = _swiftEmptyArrayStorage;
    sub_1000048A0(&qword_100522A90, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1001BC5A8(&qword_100521DF8, &unk_100450220);
    sub_100004674(&qword_100522AA0, &qword_100521DF8, &unk_100450220);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v27 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v28);
    v21 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v22 = *(v4 + v14);
    *(v8 + v14) = v21;
    v16 = v21;

    v15 = 0;
  }

  v23 = v15;
  return v16;
}

char *sub_10022699C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___MRDGroupSessionProxyAuthorizationListener____lazy_storage___messageQueue] = 0;
  *&v1[OBJC_IVAR___MRDGroupSessionProxyAuthorizationListener____lazy_storage___serialQueue] = 0;
  v4 = OBJC_IVAR___MRDGroupSessionProxyAuthorizationListener_linkClient;
  *&v2[v4] = [objc_allocWithZone(RPCompanionLinkClient) init];
  *&v2[OBJC_IVAR___MRDGroupSessionProxyAuthorizationListener_cancellationTimersByRequestID] = &_swiftEmptyDictionarySingleton;
  v5 = OBJC_IVAR___MRDGroupSessionProxyAuthorizationListener_lock;
  type metadata accessor for Lock();
  *&v2[v5] = sub_10036C394();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v16.receiver = v2;
  v16.super_class = type metadata accessor for GroupSessionProxyAuthorizationListener();
  v6 = objc_msgSendSuper2(&v16, "init");
  v7 = *&v6[OBJC_IVAR___MRDGroupSessionProxyAuthorizationListener_linkClient];
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = ObjectType;
  aBlock[4] = sub_100226BAC;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001BC53C;
  aBlock[3] = &unk_1004C4A88;
  v9 = _Block_copy(aBlock);
  v10 = v6;
  v11 = v7;
  v12 = v10;
  v13 = v11;

  [v13 activateWithCompletion:v9];
  _Block_release(v9);

  swift_unknownObjectRelease();
  return v12;
}

void sub_100226BAC(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (a1)
  {
    swift_errorRetain();
    if (qword_10052AF70 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100015AFC(v3, qword_10052AF78);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v30 = v8;
      *v6 = 136315394;
      v9 = _typeName(_:qualified:)();
      v11 = sub_10002C9C8(v9, v10, &v30);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2112;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 14) = v12;
      *v7 = v12;
      _os_log_impl(&_mh_execute_header, v4, v5, "[%s] Failed to activate rapport listener: %@", v6, 0x16u);
      sub_1000038A4(v7, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v8);
    }

    else
    {
    }
  }

  else
  {
    v13 = *(v1 + 16);
    if (qword_10052AF70 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100015AFC(v14, qword_10052AF78);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v18;
      *v17 = 136315138;
      v19 = _typeName(_:qualified:)();
      v21 = sub_10002C9C8(v19, v20, &v30);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "[%s] Registering rapport events", v17, 0xCu);
      sub_100026A44(v18);
    }

    sub_100225518(0);
    v22 = String._bridgeToObjectiveC()();

    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = v2;
    v34 = sub_100228BC8;
    v35 = v24;
    v30 = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_1002270A0;
    v33 = &unk_1004C4CB8;
    v25 = _Block_copy(&v30);

    [v13 registerEventID:v22 options:0 handler:v25];
    _Block_release(v25);

    sub_100225518(1);
    v26 = String._bridgeToObjectiveC()();

    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *(v28 + 24) = v2;
    v34 = sub_100228BD4;
    v35 = v28;
    v30 = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_1002270A0;
    v33 = &unk_1004C4D08;
    v29 = _Block_copy(&v30);

    [v13 registerEventID:v26 options:0 handler:v29];
    _Block_release(v29);
  }
}

uint64_t sub_1002270A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a3)
  {
    a3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v4(v5, a3);
}

void sub_100227194(uint64_t a1)
{
  swift_getObjectType();
  v56._countAndFlagsBits = sub_10022595C(0);
  v56._object = v2;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v3 = sub_10001BF64(v63), (v4 & 1) == 0))
  {
    sub_10001BF10(v63);
    return;
  }

  sub_100020E0C(*(a1 + 56) + 32 * v3, v64);
  sub_10001BF10(v63);
  if (swift_dynamicCast())
  {
    v5 = sub_100225DCC(v56);
    if (v5 != 2)
    {
      v6 = v5;
      if (sub_100227A14(v5 & 1, &off_1004C4A38))
      {
        v57 = sub_10022595C(2u);
        v60 = v7;
        AnyHashable.init<A>(_:)();
        if (!*(a1 + 16) || (v8 = sub_10001BF64(v63), (v9 & 1) == 0))
        {
          sub_10001BF10(v63);
          goto LABEL_26;
        }

        sub_100020E0C(*(a1 + 56) + 32 * v8, v64);
        sub_10001BF10(v63);
        if (swift_dynamicCast())
        {
          v11 = v57;
          v10 = v60;
          sub_10022595C(1u);
          AnyHashable.init<A>(_:)();
          if (*(a1 + 16) && (v12 = sub_10001BF64(v63), (v13 & 1) != 0))
          {
            sub_100020E0C(*(a1 + 56) + 32 * v12, v64);
            sub_10001BF10(v63);
            if (swift_dynamicCast())
            {
              v58 = sub_10022595C(3u);
              v61 = v14;
              AnyHashable.init<A>(_:)();
              if (*(a1 + 16) && (v15 = sub_10001BF64(v63), (v16 & 1) != 0))
              {
                sub_100020E0C(*(a1 + 56) + 32 * v15, v64);
                sub_10001BF10(v63);
                if (swift_dynamicCast())
                {
                  v53 = v11;
                  v17 = objc_allocWithZone(_MRGroupSessionJoinRequestProtobuf);
                  sub_1001C3FE0(v58, v61);
                  isa = Data._bridgeToObjectiveC()().super.isa;
                  v54 = v58;
                  v55 = v61;
                  sub_1001C4034(v58, v61);
                  v19 = [v17 initWithData:isa];

                  if (v19)
                  {
                    v20 = [v19 identity];
                    v21 = [objc_allocWithZone(MRUserIdentity) initWithProtobuf:v20];

                    if (v21)
                    {
                      v59 = sub_10022595C(4u);
                      v62 = v22;
                      AnyHashable.init<A>(_:)();
                      if (*(a1 + 16) && (v23 = sub_10001BF64(v63), (v24 & 1) != 0))
                      {
                        sub_100020E0C(*(a1 + 56) + 32 * v23, v64);
                        sub_10001BF10(v63);
                        if (swift_dynamicCast())
                        {
                          v25 = objc_allocWithZone(_MRGroupSessionTokenProtobuf);
                          sub_1001C3FE0(v59, v62);
                          v26 = Data._bridgeToObjectiveC()().super.isa;
                          sub_1001C4034(v59, v62);
                          v27 = [v25 initWithData:v26];

                          v52 = v27;
                          if (v27)
                          {
                            v51 = [objc_allocWithZone(MRGroupSessionToken) initWithProtobuf:v27];
                            v28 = objc_allocWithZone(MRDGroupSessionJoinRequest);
                            v29 = v21;
                            v30 = String._bridgeToObjectiveC()();

                            v31 = Array._bridgeToObjectiveC()().super.isa;
                            v32 = [v28 initWithIdentifier:v30 identity:v29 oobKeys:v31];

                            if (v6)
                            {
                              sub_100228590(v32, v51);
                              sub_1001C4034(v54, v55);

                              sub_1001C4034(v59, v62);
                            }

                            else
                            {
                              sub_100227A98(v32, v53, v10, v51);
                              sub_1001C4034(v54, v55);

                              sub_1001C4034(v59, v62);
                            }
                          }

                          else
                          {

                            if (qword_10052AF70 != -1)
                            {
                              swift_once();
                            }

                            v43 = type metadata accessor for Logger();
                            sub_100015AFC(v43, qword_10052AF78);
                            v44 = Logger.logObject.getter();
                            v45 = static os_log_type_t.error.getter();
                            if (os_log_type_enabled(v44, v45))
                            {
                              v46 = swift_slowAlloc();
                              v47 = swift_slowAlloc();
                              v63[0] = v47;
                              *v46 = 136315138;
                              v48 = _typeName(_:qualified:)();
                              v50 = sub_10002C9C8(v48, v49, v63);

                              *(v46 + 4) = v50;
                              _os_log_impl(&_mh_execute_header, v44, v45, "[%s] Failed to parse join token", v46, 0xCu);
                              sub_100026A44(v47);
                            }

                            sub_1001C4034(v54, v55);

                            sub_1001C4034(v59, v62);
                          }

                          return;
                        }

                        sub_1001C4034(v54, v55);
                      }

                      else
                      {
                        sub_10001BF10(v63);

                        sub_1001C4034(v54, v55);
                      }

                      goto LABEL_26;
                    }
                  }

                  sub_1001C4034(v58, v61);

                  goto LABEL_26;
                }
              }

              else
              {
                sub_10001BF10(v63);
              }
            }
          }

          else
          {
            sub_10001BF10(v63);
          }
        }

LABEL_26:
        if (qword_10052AF70 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_100015AFC(v33, qword_10052AF78);

        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v63[0] = swift_slowAlloc();
          *v36 = 136315394;
          v37 = _typeName(_:qualified:)();
          v39 = sub_10002C9C8(v37, v38, v63);

          *(v36 + 4) = v39;
          *(v36 + 12) = 2080;
          v40 = Dictionary.description.getter();
          v42 = sub_10002C9C8(v40, v41, v63);

          *(v36 + 14) = v42;
          _os_log_impl(&_mh_execute_header, v34, v35, "[%s] Failed to parse message: %s", v36, 0x16u);
          swift_arrayDestroy();
        }
      }
    }
  }
}

BOOL sub_100227A14(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    ++v3;
    sub_100226204();
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v4 != 0;
}

uint64_t sub_100227A98(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v37 = a2;
  v38 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v10 = *(v34 - 8);
  __chkstk_darwin(v34);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10022663C();
  v13 = swift_allocObject();
  v13[2] = v4;
  v13[3] = a1;
  v13[4] = a4;
  v44 = sub_100228010;
  v45 = v13;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v35 = &v42;
  v42 = sub_100003D98;
  v43 = &unk_1004C4AD8;
  v14 = _Block_copy(&aBlock);
  v33 = v4;
  v15 = a1;
  v32 = a4;
  static DispatchQoS.unspecified.getter();
  v39 = _swiftEmptyArrayStorage;
  sub_1000048A0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_100004674(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v16 = v31;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v36 + 8))(v9, v7);
  (*(v10 + 8))(v12, v34);

  v17 = [v15 identifier];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = swift_allocObject();
  v23 = v32;
  v22 = v33;
  v21[2] = v33;
  v21[3] = v15;
  v24 = v38;
  v21[4] = v37;
  v21[5] = v24;
  v21[6] = v23;
  v44 = sub_100228154;
  v45 = v21;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_100003D98;
  v43 = &unk_1004C4B28;
  v25 = _Block_copy(&aBlock);
  v22;
  v26 = v15;
  v27 = v23;

  v28 = [objc_opt_self() timerWithInterval:0 repeats:v25 block:60.0];
  _Block_release(v25);
  swift_beginAccess();
  sub_1001EC6DC(v28, v18, v20);
  return swift_endAccess();
}

uint64_t sub_100227ECC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_100227F50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupSessionProxyAuthorizationListener();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100228010()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = (*((swift_isaMask & *v2) + 0x80))();
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = v4;
    v11[4] = sub_100228908;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_100227ECC;
    v11[3] = &unk_1004C4BC8;
    v8 = _Block_copy(v11);
    v9 = v2;
    v10 = v4;

    [v6 groupSessionProxyAuthorizationListener:v9 didReceiveJoinRequest:v10 withSessionToken:v3 handler:v8];
    swift_unknownObjectRelease();
    _Block_release(v8);
  }
}

Swift::Int sub_100228180(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001BC5A8(&qword_1005229A8, &unk_1004588B0);
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

id sub_100228424()
{
  v1 = v0;
  sub_1001BC5A8(&qword_1005229A8, &unk_1004588B0);
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

uint64_t sub_100228590(void *a1, void *a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v8 = *(v19 - 8);
  __chkstk_darwin(v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022663C();
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_100228860;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C4B78;
  v13 = _Block_copy(aBlock);
  v14 = v2;
  v15 = a1;
  v16 = a2;
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_1000048A0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_100004674(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v20 + 8))(v7, v5);
  (*(v8 + 8))(v10, v19);
}

void *sub_100228860()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  result = (*((swift_isaMask & *v2) + 0x80))();
  if (result)
  {
    [result groupSessionProxyAuthorizationListener:v2 didCancelJoinRequest:v3 withSessionToken:v4];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100228908()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  v4 = sub_100226670();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100228A74;
  *(v6 + 24) = v5;
  v11[4] = sub_10021C408;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1001E7220;
  v11[3] = &unk_1004C4C40;
  v7 = _Block_copy(v11);
  v8 = v2;
  v9 = v3;

  dispatch_sync(v4, v7);

  _Block_release(v7);
  LODWORD(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100228A74()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = [v1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = OBJC_IVAR___MRDGroupSessionProxyAuthorizationListener_cancellationTimersByRequestID;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (*(v8 + 16) && (, v9 = sub_10000698C(v4, v6), v11 = v10, , (v11 & 1) != 0))
  {
    v12 = *(*(v8 + 56) + 8 * v9);

    [v12 invalidate];
  }

  else
  {
  }

  v13 = [v1 identifier];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  swift_beginAccess();
  sub_1001EC6DC(0, v14, v16);
  return swift_endAccess();
}

void sub_100228BE0(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  if (!a2)
  {
    goto LABEL_12;
  }

  *&v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v28 + 1) = v6;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v7 = sub_10001BF64(v27), (v8 & 1) == 0))
  {
    sub_10001BF10(v27);
LABEL_12:
    v28 = 0u;
    v29 = 0u;
    goto LABEL_13;
  }

  sub_100020E0C(*(a2 + 56) + 32 * v7, &v28);
  sub_10001BF10(v27);
  if (!*(&v29 + 1))
  {
LABEL_13:
    sub_1000038A4(&v28, &qword_100522890, &qword_100450610);
    v10 = 0;
    v11 = 0;
    goto LABEL_14;
  }

  v9 = swift_dynamicCast();
  if (v9)
  {
    v10 = v27[0];
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = v27[1];
  }

  else
  {
    v11 = 0;
  }

LABEL_14:
  if (qword_10052AF70 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100015AFC(v12, qword_10052AF78);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v15 = 136315650;
    v16 = _typeName(_:qualified:)();
    v18 = sub_10002C9C8(v16, v17, v27);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    if (v11)
    {
      v19 = v10;
    }

    else
    {
      v19 = 0x4E574F4E4B4E55;
    }

    if (v11)
    {
      v20 = v11;
    }

    else
    {
      v20 = 0xE700000000000000;
    }

    v21 = sub_10002C9C8(v19, v20, v27);

    *(v15 + 14) = v21;
    *(v15 + 22) = 2080;
    v22 = Dictionary.description.getter();
    v24 = sub_10002C9C8(v22, v23, v27);

    *(v15 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v13, v14, a3, v15, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    sub_100227194(a1);
  }
}

uint64_t sub_100228F40()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_10052AF98);
  sub_100015AFC(v0, qword_10052AF98);
  v1 = *sub_1001D901C();
  return Logger.init(_:)();
}

id sub_10022914C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [objc_opt_self() sharedSystemRemoteDisplayContext];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_100229424();

  if (v6)
  {
    v7 = [v6 *a3];

    v5 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_1002291EC(SEL *a1)
{
  v2 = [objc_opt_self() sharedSystemRemoteDisplayContext];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_100229424();

  if (v4)
  {
    v5 = [v4 *a1];

    v3 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

char *sub_1002292A8()
{
  v1 = OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_mediaActivityManager;
  *&v0[v1] = [objc_opt_self() manager];
  v2 = OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_mediaBundleManager;
  v3 = sub_1003573A8();
  v4 = *v3;
  *&v0[v2] = *v3;
  v5 = OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_carSession;
  v6 = objc_allocWithZone(CARSessionStatus);
  v7 = v4;
  *&v0[v5] = [v6 init];
  v8 = OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_lock;
  sub_1001BC5A8(&qword_100528660, &qword_100450550);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *&v0[v8] = v9;
  *&v0[OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_focusMonitor] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10022ACF0(_swiftEmptyArrayStorage);
  }

  else
  {
    v10 = &_swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_cancellables] = v10;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for CarPlayRouteRecommendationControllerImpl();
  v11 = objc_msgSendSuper2(&v13, "init");
  [*&v11[OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_carSession] addSessionObserver:v11];
  return v11;
}

void *sub_100229424()
{
  v1 = [v0 outputDevices];
  sub_10022AFB4();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 deviceType] == 2)
      {

        return v6;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

void sub_100229550(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_carSession);
  v4 = [v3 currentSession];
  if (v4 && (v4, v5 = OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_focusMonitor, !*(a1 + OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_focusMonitor)))
  {
    if (qword_10052AF90 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100015AFC(v16, qword_10052AF98);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      v21 = _typeName(_:qualified:)();
      v23 = sub_10002C9C8(v21, v22, &v25);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%s] CarPlay session started - observing media apps in focus", v19, 0xCu);
      sub_100026A44(v20);
    }

    v24 = [objc_allocWithZone(MRDMediaAppInFocusMonitor) initWithDelegate:a1];
    v6 = *(a1 + v5);
    *(a1 + v5) = v24;
  }

  else
  {
    v6 = [v3 currentSession];
    if (!v6)
    {
      v7 = OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_focusMonitor;
      if (!*(a1 + OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_focusMonitor))
      {
        return;
      }

      if (qword_10052AF90 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100015AFC(v8, qword_10052AF98);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v25 = v12;
        *v11 = 136315138;
        v13 = _typeName(_:qualified:)();
        v15 = sub_10002C9C8(v13, v14, &v25);

        *(v11 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v9, v10, "[%s] CarPlay session ended - stopping observation", v11, 0xCu);
        sub_100026A44(v12);
      }

      v6 = *(a1 + v7);
      *(a1 + v7) = 0;
    }
  }
}

void sub_100229878()
{
  swift_getObjectType();
  v11 = [objc_opt_self() sharedSystemRemoteDisplayContext];
  if (v11 && (v10 = v11, v0 = sub_100229424(), v10, v0))
  {
    if ([v0 isCarPlayVideoActive] && (objc_msgSend(v0, "isCarPlayVideoAllowed") & 1) != 0)
    {
      sub_100229A70(0, 0);
    }

    v1 = v10;
  }

  else
  {
    if (qword_10052AF90 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100015AFC(v2, qword_10052AF98);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136315138;
      v7 = _typeName(_:qualified:)();
      v9 = sub_10002C9C8(v7, v8, &v12);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "[%s] Attempted to reevaluate state without a valid output context or CarPlay output device", v5, 0xCu);
      sub_100026A44(v6);
    }

    v1 = v11;
  }
}

void sub_100229A70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (qword_10052AF90 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100015AFC(v7, qword_10052AF98);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136315138;
    v12 = _typeName(_:qualified:)();
    v14 = sub_10002C9C8(v12, v13, v19);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%s] Requesting banner presentation", v10, 0xCu);
    sub_100026A44(v11);
  }

  v15 = *&v3[OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_mediaActivityManager];
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = ObjectType;
  v19[4] = sub_10022B000;
  v19[5] = v16;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100229CA0;
  v19[3] = &unk_1004C4DF8;
  v17 = _Block_copy(v19);
  v18 = v3;
  sub_10021DF20(a1, a2);

  [v15 postCarPlayVideoConnectedBannerRequestWithCompletion:v17];
  _Block_release(v17);
}

void sub_100229CA0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_100229D18()
{
  ObjectType = swift_getObjectType();
  v21 = [objc_opt_self() sharedSystemRemoteDisplayContext];
  if (v21 && (v1 = v21, v2 = sub_100229424(), v1, v2))
  {
    if (qword_10052AF90 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100015AFC(v3, qword_10052AF98);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      aBlock[0] = v7;
      *v6 = 136315138;
      v8 = _typeName(_:qualified:)();
      v10 = sub_10002C9C8(v8, v9, aBlock);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "[%s] Disabling CarPlay Video", v6, 0xCu);
      sub_100026A44(v7);
    }

    v11 = swift_allocObject();
    *(v11 + 16) = ObjectType;
    aBlock[4] = sub_10022A8E4;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001BC53C;
    aBlock[3] = &unk_1004C4D58;
    v12 = _Block_copy(aBlock);

    [v2 setCarPlayVideoActive:0 completionHandler:v12];
    _Block_release(v12);
  }

  else
  {
    if (qword_10052AF90 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100015AFC(v13, qword_10052AF98);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      *v16 = 136315138;
      v18 = _typeName(_:qualified:)();
      v20 = sub_10002C9C8(v18, v19, aBlock);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%s] Received request to disconnect from CarPlay video without carPlayOutputDevice. Potentially disconnected from CarPlay while banner was active", v16, 0xCu);
      sub_100026A44(v17);
    }

    else
    {
    }
  }
}

uint64_t sub_10022A1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10022A218, 0, 0);
}

uint64_t sub_10022A218()
{
  v11 = v0;
  v1 = v0[3];
  v2 = *(v0[2] + OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_mediaBundleManager);
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = sub_1001D37A8(*(v1 + 16), 0);
    v8 = sub_1001D5264(&v10, v4 + 4, v3, v1);
    v5 = v10;

    sub_1001D7000(v5);
    if (v8 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[4] = v4;
  v9 = (*((swift_isaMask & *v2) + 0xC0) + **((swift_isaMask & *v2) + 0xC0));
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_10022A3E4;

  return v9(v4);
}

uint64_t sub_10022A3E4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_10022A67C;
  }

  else
  {

    v4 = sub_10022A500;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_10022A500()
{
  v1 = *(v0 + 48);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;

  v6 = 0;
  while (v4)
  {
    v7 = v6;
LABEL_10:
    v8 = *(*(v1 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v4)))));
    v4 &= v4 - 1;
    v9 = *((swift_isaMask & *v8) + 0x88);
    v10 = v8;
    LOBYTE(v9) = v9();

    if (v9)
    {

      sub_100229878();
LABEL_13:

      v11 = *(v0 + 8);

      v11();
      return;
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      goto LABEL_13;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_10022A67C()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_10022A820(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10022A8E4(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_10052AF90 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100015AFC(v1, qword_10052AF98);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v4 = 136315394;
      v7 = _typeName(_:qualified:)();
      v9 = sub_10002C9C8(v7, v8, &v19);

      *(v4 + 4) = v9;
      *(v4 + 12) = 2112;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 14) = v10;
      *v5 = v10;
      _os_log_impl(&_mh_execute_header, v2, v3, "[%s] Failed to disable CarPlay video: %@", v4, 0x16u);
      sub_1000038A4(v5, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v6);
    }

    else
    {
    }
  }

  else
  {
    if (qword_10052AF90 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100015AFC(v11, qword_10052AF98);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      v15 = _typeName(_:qualified:)();
      v17 = sub_10002C9C8(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, oslog, v12, "[%s] Disabled CarPlay Video", v13, 0xCu);
      sub_100026A44(v14);
    }

    else
    {
    }
  }
}

uint64_t sub_10022AC2C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100009F34;

  return sub_10022A1F8(v4, v5, v6, v2, v3);
}

void sub_10022ACF0(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1001BC5A8(&qword_100522C10, &qword_100450558);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = a1 & 0xC000000000000001;
  v19 = a1 + 32;
  v20 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    sub_10022AF5C(&qword_100522C18, &protocol conformance descriptor for AnyCancellable);
    v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << v3[32];
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_10022AF5C(&qword_100522C20, &protocol conformance descriptor for AnyCancellable);
      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(*(v3 + 6) + 8 * v12) = v8;
      v17 = *(v3 + 2);
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v18;
    }

    if (v6 == v5)
    {
      return;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

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
}

uint64_t sub_10022AF5C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnyCancellable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10022AFB4()
{
  result = qword_100522C28;
  if (!qword_100522C28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100522C28);
  }

  return result;
}

void sub_10022B000(uint64_t a1)
{
  v3 = *(v1 + 24);
  if (a1 == 1)
  {
    if (qword_10052AF90 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100015AFC(v4, qword_10052AF98);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136315138;
      v9 = _typeName(_:qualified:)();
      v11 = sub_10002C9C8(v9, v10, &v20);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "[%s] Banner tapped - disconnecting CarPlay video.", v7, 0xCu);
      sub_100026A44(v8);
    }

    sub_100229D18();
    if (!v3)
    {
      return;
    }

LABEL_13:
    v3(a1);
    return;
  }

  if (qword_10052AF90 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100015AFC(v12, qword_10052AF98);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136315138;
    v17 = _typeName(_:qualified:)();
    v19 = sub_10002C9C8(v17, v18, &v20);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%s] Banner dismissed, no action", v15, 0xCu);
    sub_100026A44(v16);
  }

  if (v3)
  {
    goto LABEL_13;
  }
}

uint64_t sub_10022B2B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10022B2D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_10022B334()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_10052B038);
  sub_100015AFC(v0, qword_10052B038);
  v1 = *sub_1001D8C64();
  return Logger.init(_:)();
}

uint64_t sub_10022B3D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12mediaremoted16HomePodUIManager_currentSession;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_10022B490()
{
  v1 = OBJC_IVAR____TtC12mediaremoted16HomePodUIManager____lazy_storage___proxyAuthorizationSender;
  if (*(v0 + OBJC_IVAR____TtC12mediaremoted16HomePodUIManager____lazy_storage___proxyAuthorizationSender))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12mediaremoted16HomePodUIManager____lazy_storage___proxyAuthorizationSender);
  }

  else
  {
    type metadata accessor for GroupSessionProxyAuthorizationSender();
    v2 = sub_1001BFBE8();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t (*sub_10022B518(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_10022B490();
  return sub_10022B560;
}

void sub_10022B578(void *a1, void (*a2)(uint64_t))
{
  v3 = v2;
  swift_getObjectType();
  v6 = (*((swift_isaMask & *v2) + 0x60))();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 remoteParticipants];
    sub_1001BC5A8(&unk_100522CB0, &unk_10044EC00);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10 < 1)
    {
      v18 = [objc_opt_self() currentSettings];
      v19 = [v18 supportGroupSessionHomePodBoop];

      if (v19)
      {
        if (qword_10052B030 != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        sub_100015AFC(v20, qword_10052B038);
        v21 = a1;
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v22, v23))
        {
          osloga = v22;
          v24 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v34 = v31;
          *v24 = 136315394;
          v25 = _typeName(_:qualified:)();
          v27 = sub_10002C9C8(v25, v26, &v34);

          *(v24 + 4) = v27;
          *(v24 + 12) = 2112;
          *(v24 + 14) = v21;
          *v30 = v21;
          v28 = v21;
          _os_log_impl(&_mh_execute_header, osloga, v23, "[%s] Requesting to notify nearby devices for join request: %@", v24, 0x16u);
          sub_1001E4048(v30);

          sub_100026A44(v31);
        }

        else
        {
        }

        v29 = (*((swift_isaMask & *v3) + 0x78))();
        (*(*v29 + 232))(v21, v7);
      }

      a2(1);

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_10052B030 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100015AFC(v11, qword_10052B038);
      oslog = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(oslog, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v34 = v14;
        *v13 = 136315138;
        v15 = _typeName(_:qualified:)();
        v17 = sub_10002C9C8(v15, v16, &v34);

        *(v13 + 4) = v17;
        _os_log_impl(&_mh_execute_header, oslog, v12, "[%s] Participants are present in session - Not notifying nearby devices", v13, 0xCu);
        sub_100026A44(v14);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_10022BADC(uint64_t a1)
{
  result = (*((swift_isaMask & *v1) + 0x60))();
  if (result)
  {
    v4 = result;
    v5 = [objc_opt_self() currentSettings];
    v6 = [v5 supportGroupSessionHomePodBoop];

    if (v6)
    {
      v7 = (*((swift_isaMask & *v1) + 0x78))();
      (*(*v7 + 240))(a1, v4);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10022BC80(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  if (a3)
  {
    type metadata accessor for MRGroupSessionError(0);
    v5 = v4;
    v8 = 9;
    v6 = sub_10022C244(&qword_100522CC0, type metadata accessor for MRGroupSessionError, &unk_100450638);
    sub_10022CC44(&v8, 0xD00000000000001FLL, 0x800000010043C4D0, 0, v5, v6);
    v7 = v9;
    a3(v9);
  }
}

void sub_10022BE44(void (*a1)(void *))
{
  if (a1)
  {
    type metadata accessor for MRGroupSessionError(0);
    v3 = v2;
    v6 = 9;
    v4 = sub_10022C244(&qword_100522CC0, type metadata accessor for MRGroupSessionError, &unk_100450638);
    sub_10022CC44(&v6, 0xD00000000000001FLL, 0x800000010043C4D0, 0, v3, v4);
    v5 = v7;
    a1(v7);
  }
}

uint64_t sub_10022C008(uint64_t a1)
{
  v4 = *((swift_isaMask & *v1) + 0x68);
  v2 = swift_unknownObjectRetain();

  return v4(v2);
}

id sub_10022C1A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodUIManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10022C244(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10022C28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  result = a6();
  if (v6)
  {
    v30 = &_swiftEmptyDictionarySingleton;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
    if (a5)
    {
      v29 = &type metadata for String;
      *&v28 = a4;
      *(&v28 + 1) = a5;
      sub_1001C4088(&v28, v25);

      swift_errorRetain();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10022D818(v25, v11, v13, isUniquelyReferenced_nonNull_native);

      v30 = &_swiftEmptyDictionarySingleton;
    }

    else
    {

      swift_errorRetain();
      sub_10022D30C(v11, v13, &v28);

      sub_100037768(&v28);
    }

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    swift_getErrorValue();
    v18 = v26;
    v19 = v27;
    v29 = v27;
    v20 = sub_1000397B4(&v28);
    (*(*(v19 - 1) + 16))(v20, v18, v19);
    sub_1001C4088(&v28, v25);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_10022D818(v25, v15, v17, v21);

    v22 = objc_allocWithZone(NSError);
    v23 = String._bridgeToObjectiveC()();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v22 initWithDomain:v23 code:a3 userInfo:isa];

    swift_willThrow();
  }

  return result;
}

id sub_10022C508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = &_swiftEmptyDictionarySingleton;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v10;
  v13 = v11;
  if (a5)
  {
    v32 = &type metadata for String;
    *&v31 = a4;
    *(&v31 + 1) = a5;
    sub_1001C4088(&v31, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10022D818(v28, v12, v13, isUniquelyReferenced_nonNull_native);

    v33 = &_swiftEmptyDictionarySingleton;
  }

  else
  {
    sub_10022D30C(v10, v11, &v31);

    sub_100037768(&v31);
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v15;
  v18 = v16;
  if (a6)
  {
    swift_getErrorValue();
    v19 = v29;
    v20 = v30;
    v32 = v30;
    v21 = sub_1000397B4(&v31);
    (*(*(v20 - 1) + 16))(v21, v19, v20);
    sub_1001C4088(&v31, v28);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_10022D818(v28, v17, v18, v22);
  }

  else
  {
    sub_10022D30C(v15, v16, &v31);

    sub_100037768(&v31);
  }

  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = String._bridgeToObjectiveC()();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v26 = [v23 initWithDomain:v24 code:a3 userInfo:isa];

  return v26;
}

uint64_t sub_10022C76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7[29] = a5;
  v7[30] = a6;
  v7[27] = a3;
  v7[28] = a4;
  v7[26] = a2;
  v11 = (a7 + *a7);
  v9 = swift_task_alloc();
  v7[31] = v9;
  *v9 = v7;
  v9[1] = sub_10022C874;

  return v11(a1);
}

uint64_t sub_10022C874()
{
  v2 = *v1;
  *(v2 + 256) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10022C9A8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10022C9A8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 240);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v3)
  {
    v7 = *(v2 + 232);
    v8 = *(v2 + 240);
    *(v2 + 40) = &type metadata for String;
    *(v2 + 16) = v7;
    *(v2 + 24) = v8;
    sub_1001C4088((v2 + 16), (v2 + 144));

    swift_errorRetain();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10022D818((v2 + 144), v4, v6, isUniquelyReferenced_nonNull_native);
  }

  else
  {

    swift_errorRetain();
    sub_10022D30C(v4, v6, (v2 + 48));

    sub_100037768(v2 + 48);
  }

  v10 = *(v2 + 224);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  swift_getErrorValue();
  v14 = *(v2 + 176);
  v15 = *(v2 + 184);
  *(v2 + 104) = v15;
  v16 = sub_1000397B4((v2 + 80));
  (*(*(v15 - 8) + 16))(v16, v14, v15);
  sub_1001C4088((v2 + 80), (v2 + 112));
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_10022D818((v2 + 112), v11, v13, v17);

  v18 = objc_allocWithZone(NSError);
  v19 = String._bridgeToObjectiveC()();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v18 initWithDomain:v19 code:v10 userInfo:isa];

  swift_willThrow();

  v21 = *(v2 + 8);

  return v21();
}

uint64_t sub_10022CC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10022D968();
  v12 = (*(a6 + 24))(a5, a6);
  v14 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_10022C508(v12, v14, v18, a2, a3, a4);
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return swift_dynamicCast();
}

uint64_t sub_10022CD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (*(a8 + 24))(a6, a8);
  v9 = v8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_10022C28C(v11, v9, v14, a2, a3, sub_10022D9B4);
}

uint64_t sub_10022CEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v10;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[4] = a2;
  v8[5] = a3;
  v8[3] = a1;
  return _swift_task_switch(sub_10022CEF4, 0, 0);
}

uint64_t sub_10022CEF4()
{
  v1 = *(v0 + 88);
  v12 = *(v0 + 72);
  v13 = *(v0 + 56);
  v2 = (*(v1 + 24))(*(v0 + 72), v1);
  v4 = v3;
  *(v0 + 96) = v3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *(v6 + 16) = v12;
  *(v6 + 32) = v1;
  *(v6 + 40) = v13;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_10022D084;
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v10 = *(v0 + 24);

  return sub_10022C76C(v10, v2, v4, v5, v8, v9, &unk_100450630);
}

uint64_t sub_10022D084()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10022D1FC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10022D214(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100009F34;

  return v6(a1);
}

double sub_10022D30C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_10000698C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10022DB84();
      v10 = v12;
    }

    sub_1001C4088((*(v10 + 56) + 32 * v8), a3);
    sub_10022D668(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_10022D3B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001BC5A8(&qword_100522840, &qword_10044FE70);
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
        sub_1001C4088(v24, v34);
      }

      else
      {
        sub_100020E0C(v24, v34);
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
      result = sub_1001C4088(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_10022D668(uint64_t result, uint64_t a2)
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
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_10022D818(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000698C(a2, a3);
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
      sub_10022DB84();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10022D3B0(v16, a4 & 1);
    v11 = sub_10000698C(a2, a3);
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
    sub_100026A44(v22);

    return sub_1001C4088(a1, v22);
  }

  else
  {
    sub_10022DB18(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_10022D968()
{
  result = qword_100522A60;
  if (!qword_100522A60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100522A60);
  }

  return result;
}

uint64_t sub_10022D9DC(uint64_t a1)
{
  v4 = *(v1 + 40);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009F34;

  return sub_10022D214(a1, v4);
}

uint64_t sub_10022DA88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_10022DB18(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1001C4088(a4, (a5[7] + 32 * a1));
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

void *sub_10022DB84()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100522840, &qword_10044FE70);
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
        sub_100020E0C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1001C4088(v25, (*(v4 + 56) + v22));
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

id sub_10022DD38@<X0>(void *a1@<X8>)
{
  result = sub_10022DD2C();
  *a1 = result;
  return result;
}

void sub_10022DD64(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___recon);
  *(*a2 + OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___recon) = *a1;
  v3 = v2;
}

id sub_10022DDC0@<X0>(void *a1@<X8>)
{
  result = sub_10022DDB4();
  *a1 = result;
  return result;
}

void sub_10022DDEC(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___whaConnect);
  *(*a2 + OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___whaConnect) = *a1;
  v3 = v2;
}

id sub_10022E0C8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics_tracked] = 0;
  v4 = &v1[OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics_eventName];
  *v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4[1] = v5;
  v6 = OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics_propertyMap;
  sub_1001BC5A8(&qword_100522D30, &qword_1004508D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100450890;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 48) = v8;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v9;
  v10 = sub_10003D4B4(inited, &qword_100522EB8, &qword_100450CB8, &qword_100522EC0, &unk_100450CC0);
  swift_setDeallocating();
  sub_1001BC5A8(&qword_100522D38, &unk_100450940);
  swift_arrayDestroy();
  *&v1[v6] = v10;
  *&v1[OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___request] = 0;
  *&v1[OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___recon] = 0;
  *&v1[OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___whaConnect] = 0;
  *&v1[OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics_joinMode] = a1;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t sub_10022E360()
{
  v1 = *v0;
  v2 = OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics_tracked;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_10022E3A8(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics_tracked;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

unint64_t sub_10022E478()
{
  v1 = *v0;
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  v4 = OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics_joinMode;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(inited + 72) = sub_1001D9C40();
  *(inited + 48) = v5;
  v6 = v5;
  v7 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_10022FD18(inited + 32);
  return v7;
}

uint64_t sub_10022E544()
{
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004508A0;
  *(v0 + 32) = sub_10003D968(&OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___request);
  *(v0 + 40) = sub_10022DD2C();
  *(v0 + 48) = sub_10022DDB4();
  return v0;
}

id sub_10022E5B8@<X0>(void *a1@<X8>)
{
  result = sub_10003DDE0();
  *a1 = result;
  return result;
}

void sub_10022E5E4(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDGroupSessionCreateTimingEvents____lazy_storage___nearbyGroup);
  *(*a2 + OBJC_IVAR___MRDGroupSessionCreateTimingEvents____lazy_storage___nearbyGroup) = *a1;
  v3 = v2;
}

id sub_10022E640@<X0>(void *a1@<X8>)
{
  result = sub_10022E634();
  *a1 = result;
  return result;
}

void sub_10022E66C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDGroupSessionCreateTimingEvents____lazy_storage___nearbyInvitation);
  *(*a2 + OBJC_IVAR___MRDGroupSessionCreateTimingEvents____lazy_storage___nearbyInvitation) = *a1;
  v3 = v2;
}

uint64_t sub_10022E91C()
{
  v1 = *v0;
  v2 = OBJC_IVAR___MRDGroupSessionCreateTimingEvents_tracked;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_10022E964(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MRDGroupSessionCreateTimingEvents_tracked;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

unint64_t sub_10022EA7C()
{
  v1 = *v0;
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  v4 = OBJC_IVAR___MRDGroupSessionCreateTimingEvents_routeType;
  swift_beginAccess();
  LOBYTE(v1) = *(v1 + v4);
  type metadata accessor for MRGroupSessionRouteType();
  *(inited + 72) = v5;
  *(inited + 48) = v1;
  v6 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_10022FD18(inited + 32);
  return v6;
}

uint64_t sub_10022EB44()
{
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004508B0;
  *(v0 + 32) = sub_10003DDE0();
  *(v0 + 40) = sub_10022E634();
  return v0;
}

id sub_10022EDD4@<X0>(void *a1@<X8>)
{
  result = sub_10022EDC8();
  *a1 = result;
  return result;
}

void sub_10022EE00(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___sourceOutputContext);
  *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___sourceOutputContext) = *a1;
  v3 = v2;
}

id sub_10022EE5C@<X0>(void *a1@<X8>)
{
  result = sub_10022EE50();
  *a1 = result;
  return result;
}

void sub_10022EE88(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___removeLocalDevice);
  *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___removeLocalDevice) = *a1;
  v3 = v2;
}

id sub_10022EEE4@<X0>(void *a1@<X8>)
{
  result = sub_10022EED8();
  *a1 = result;
  return result;
}

void sub_10022EF10(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___addLocalDevice);
  *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___addLocalDevice) = *a1;
  v3 = v2;
}

id sub_10022EF6C@<X0>(void *a1@<X8>)
{
  result = sub_10022EF60();
  *a1 = result;
  return result;
}

void sub_10022EF98(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___reloadDeviceInfo);
  *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___reloadDeviceInfo) = *a1;
  v3 = v2;
}

id sub_10022EFF4@<X0>(void *a1@<X8>)
{
  result = sub_10022EFE8();
  *a1 = result;
  return result;
}

void sub_10022F020(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___originForward);
  *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___originForward) = *a1;
  v3 = v2;
}

id sub_10022F07C@<X0>(void *a1@<X8>)
{
  result = sub_10022F070();
  *a1 = result;
  return result;
}

void sub_10022F0A8(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___findEndpoint);
  *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___findEndpoint) = *a1;
  v3 = v2;
}

id sub_10022F104@<X0>(void *a1@<X8>)
{
  result = sub_10022F0F8();
  *a1 = result;
  return result;
}

void sub_10022F130(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___interruptions);
  *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___interruptions) = *a1;
  v3 = v2;
}

uint64_t sub_10022F180()
{
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004508C0;
  *(v0 + 32) = sub_10022EDC8();
  *(v0 + 40) = sub_10022EE50();
  *(v0 + 48) = sub_10022EED8();
  *(v0 + 56) = sub_10022EF60();
  *(v0 + 64) = sub_10022EFE8();
  *(v0 + 72) = sub_10022F070();
  *(v0 + 80) = sub_10022F0F8();
  return v0;
}

unint64_t sub_10022F208()
{
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044F530;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x800000010043C7A0;
  v2 = OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_discoverableGroupLeader;
  swift_beginAccess();
  *(inited + 48) = *(v0 + v2);
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0x5472657473756C63;
  *(inited + 88) = 0xEB00000000657079;
  v3 = OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_clusterType;
  swift_beginAccess();
  *(inited + 96) = *(v0 + v3);
  *(inited + 120) = &type metadata for UInt32;
  *(inited + 128) = 0x44496C65646F6DLL;
  *(inited + 136) = 0xE700000000000000;
  v4 = (v0 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_modelID);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v6;
  *(inited + 152) = v5;

  v7 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
  swift_arrayDestroy();
  return v7;
}

void sub_10022F778(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = a1;
  v8 = a1;
  v9 = a3;
  sub_100232B4C(v9, ObjectType, a4);
}

void sub_10022F804(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v6 = a1;
  sub_10023231C(ObjectType, a3);
}

id sub_10022F860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = objc_allocWithZone(v3);
  return sub_10022F8AC(v6, a2, a3);
}

id sub_10022F8AC(int a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_discoverableGroupLeader] = 0;
  v8 = OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_clusterType;
  *&v3[OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_clusterType] = 0;
  v9 = &v3[OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_modelID];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = &v3[OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_eventName];
  *v10 = 0xD00000000000002CLL;
  v10[1] = 0x800000010043C770;
  v3[OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_tracked] = 0;
  *&v3[OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___sourceOutputContext] = 0;
  *&v3[OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___removeLocalDevice] = 0;
  *&v3[OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___addLocalDevice] = 0;
  *&v3[OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___reloadDeviceInfo] = 0;
  *&v3[OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___originForward] = 0;
  *&v3[OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___findEndpoint] = 0;
  *&v3[OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___interruptions] = 0;
  swift_beginAccess();
  *&v3[v8] = a1;
  swift_beginAccess();
  *v9 = a2;
  v9[1] = a3;
  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "init");
}

id sub_10022FA6C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10022FB68()
{
  v1 = *v0;
  v2 = OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_tracked;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_10022FBB0(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_tracked;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

uint64_t sub_10022FC74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*v3 + *a3);
  swift_beginAccess();
  v5 = *v4;

  return v5;
}

uint64_t sub_10022FD18(uint64_t a1)
{
  v2 = sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10022FD80()
{
  sub_1001BC5A8(&qword_100522E88, &qword_100450B68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044F550;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x8000000100450A70;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000011;
  *(inited + 72) = 0x8000000100450A90;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "addLocalDevice");
  *(inited + 103) = -18;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000100450AC0;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "originForward");
  *(inited + 150) = -4864;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "findEndpoint");
  *(inited + 173) = 0;
  *(inited + 174) = -5120;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x7075727265746E69;
  *(inited + 192) = 0xE900000000000074;
  v1 = sub_10003D4B4(inited, &qword_100522E98, &qword_100450C90, &qword_100522EA0, &qword_100450C98);
  swift_setDeallocating();
  sub_1001BC5A8(&qword_100522E90, &qword_100450C88);
  swift_arrayDestroy();
  return v1;
}

id sub_10022FFFC()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 isRemoteControllableApp:v1];

  return v2;
}

uint64_t sub_100230184(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_10003DBB8(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t sub_100230264()
{
  v1 = OBJC_IVAR___MRDTimingEvent_error;
  swift_beginAccess();
  v2 = *(v0 + v1);
  swift_errorRetain();
  return v2;
}

uint64_t sub_100230324(uint64_t a1)
{
  v3 = OBJC_IVAR___MRDTimingEvent_error;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1002303DC()
{
  v1 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v24 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v24 - v13;
  (*((swift_isaMask & *v0) + 0x80))(v12);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    v16 = v6;
LABEL_5:
    sub_1000038A4(v16, &qword_1005228D8, &unk_100450060);
    return 0;
  }

  v17 = v6;
  v18 = *(v8 + 32);
  v19 = v18(v14, v17, v7);
  (*((swift_isaMask & *v0) + 0x68))(v19);
  if (v15(v4, 1, v7) == 1)
  {
    (*(v8 + 8))(v14, v7);
    v16 = v4;
    goto LABEL_5;
  }

  v18(v11, v4, v7);
  Date.timeIntervalSince(_:)();
  v22 = v21;
  v23 = *(v8 + 8);
  v23(v11, v7);
  v23(v14, v7);
  return v22;
}

Class sub_100230748()
{
  (*((swift_isaMask & *v0) + 0xB0))();
  if (v1)
  {
    return 0;
  }

  return Double._bridgeToObjectiveC()().super.super.isa;
}

BOOL sub_1002307A8(id a1)
{
  v3 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v17 - v8;
  (*((swift_isaMask & *v1) + 0x80))(v7);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);
  sub_1000038A4(v9, &qword_1005228D8, &unk_100450060);
  if (v12 == 1)
  {
    Date.init()();
    (*(v11 + 56))(v6, 0, 1, v10);
    v13 = OBJC_IVAR___MRDTimingEvent_endDate;
    swift_beginAccess();
    sub_10003DBB8(v6, v1 + v13);
    swift_endAccess();
    if (a1)
    {
      v17[1] = a1;
      swift_errorRetain();
      sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
      sub_100018D7C(0, &qword_100522A60, NSError_ptr);
      if ((swift_dynamicCast() & 1) != 0 && (v14 = v17[0], v15 = [v17[0] recursiveUnderlyingError], v14, v15))
      {
        a1 = v15;
      }

      else
      {
        swift_errorRetain();
      }
    }

    (*((swift_isaMask & *v1) + 0xA0))(a1);
  }

  return v12 == 1;
}

NSNumber MRDTimingEvents.objC_totalDuration.getter()
{
  sub_100230CF4();

  return Double._bridgeToObjectiveC()();
}

uint64_t sub_100230CF4()
{
  v1 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v2 = __chkstk_darwin(v1 - 8);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v49 = &v42 - v5;
  v6 = __chkstk_darwin(v4);
  v8 = &v42 - v7;
  __chkstk_darwin(v6);
  v10 = &v42 - v9;
  v53 = type metadata accessor for Date();
  v50 = *(v53 - 8);
  v11 = __chkstk_darwin(v53);
  v47 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *((swift_isaMask & *v0) + 0x50);
  v44 = (swift_isaMask & *v0) + 80;
  v14 = v13(v11);
  v15 = v14;
  v45 = v13;
  v46 = v0;
  v48 = v10;
  if (!(v14 >> 62))
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_32:

    v24 = v48;
    (*(v50 + 56))(v48, 1, 1, v53);
    return sub_1000038A4(v24, &qword_1005228D8, &unk_100450060);
  }

LABEL_31:
  v16 = _CocoaArrayWrapper.endIndex.getter();
  if (!v16)
  {
    goto LABEL_32;
  }

LABEL_3:
  v17 = 0;
  v51 = v15 & 0xC000000000000001;
  v52 = (v50 + 48);
  while (1)
  {
    if (v51)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v18 = *(v15 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v21 = *((swift_isaMask & *v18) + 0x68);
    v21();
    v22 = *v52;
    if ((*v52)(v8, 1, v53) != 1)
    {
      break;
    }

    sub_1000038A4(v8, &qword_1005228D8, &unk_100450060);
    ++v17;
    if (v20 == v16)
    {
      goto LABEL_32;
    }
  }

  v23 = sub_1000038A4(v8, &qword_1005228D8, &unk_100450060);
  v24 = v48;
  (v21)(v23);

  v25 = v53;
  if (v22(v24, 1, v53) == 1)
  {
    return sub_1000038A4(v24, &qword_1005228D8, &unk_100450060);
  }

  v26 = (*(v50 + 32))(v47, v24, v25);
  v27 = v45(v26);
  v28 = v27;
  v54 = v27;
  if (v27 >> 62)
  {
    v29 = _CocoaArrayWrapper.endIndex.getter();
    if (v29)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
LABEL_15:
      v15 = v28 & 0xFFFFFFFFFFFFFF8;
      v8 = &unk_100450060;
      while (!__OFSUB__(v29--, 1))
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v29 & 0x8000000000000000) != 0)
          {
            goto LABEL_29;
          }

          if (v29 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v31 = *(v28 + 32 + 8 * v29);
        }

        v32 = v31;
        v33 = v49;
        (*((swift_isaMask & *v31) + 0x80))();

        LODWORD(v32) = v22(v33, 1, v53);
        v34 = sub_1000038A4(v33, &qword_1005228D8, &unk_100450060);
        if (v32 != 1)
        {
          __chkstk_darwin(v34);
          *(&v42 - 2) = &v54;
          v55 = v29;
          sub_100233768(&v55, &v56);
          v35 = v56;
          goto LABEL_36;
        }

        if (!v29)
        {
          goto LABEL_35;
        }
      }

      goto LABEL_28;
    }
  }

LABEL_35:
  v35 = 0;
LABEL_36:

  if (!v35)
  {
    return (*(v50 + 8))(v47, v53);
  }

  v38 = v43;
  (*((swift_isaMask & *v35) + 0x80))(v37);
  v39 = v53;
  result = (v22)(v38, 1, v53);
  if (result == 1)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v40 = v47;
    Date.timeIntervalSince(_:)();

    v41 = *(v50 + 8);
    v41(v40, v39);
    return (v41)(v38, v39);
  }

  return result;
}

uint64_t sub_1002312F4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v52 = &v44 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v44 - v12;
  __chkstk_darwin(v11);
  v15 = &v44 - v14;
  v56 = type metadata accessor for Date();
  v53 = *(v56 - 8);
  __chkstk_darwin(v56);
  v49 = a2;
  v50 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 8);
  v47 = a1;
  v48 = v2;
  v45 = v17;
  v46 = a2 + 8;
  v18 = v17(a1, a2);
  v19 = v18;
  v44 = v8;
  v51 = v15;
  if (!(v18 >> 62))
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_32:

    v28 = v51;
    (*(v53 + 56))(v51, 1, 1, v56);
    return sub_1000038A4(v28, &qword_1005228D8, &unk_100450060);
  }

LABEL_31:
  v20 = _CocoaArrayWrapper.endIndex.getter();
  if (!v20)
  {
    goto LABEL_32;
  }

LABEL_3:
  v21 = 0;
  v54 = v19 & 0xC000000000000001;
  v55 = (v53 + 48);
  while (1)
  {
    if (v54)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v22 = *(v19 + 8 * v21 + 32);
    }

    v23 = v22;
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v25 = *((swift_isaMask & *v22) + 0x68);
    v25();
    v26 = *v55;
    if ((*v55)(v13, 1, v56) != 1)
    {
      break;
    }

    sub_1000038A4(v13, &qword_1005228D8, &unk_100450060);
    ++v21;
    if (v24 == v20)
    {
      goto LABEL_32;
    }
  }

  v27 = sub_1000038A4(v13, &qword_1005228D8, &unk_100450060);
  v28 = v51;
  (v25)(v27);

  v29 = v56;
  if (v26(v28, 1, v56) == 1)
  {
    return sub_1000038A4(v28, &qword_1005228D8, &unk_100450060);
  }

  (*(v53 + 32))(v50, v28, v29);
  v30 = v45(v47, v49);
  v31 = v30;
  v57 = v30;
  if (v30 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v19 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
LABEL_15:
      v13 = (v31 + 32);
      v32 = v52;
      while (!__OFSUB__(v19--, 1))
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_29;
          }

          if (v19 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v34 = *&v13[8 * v19];
        }

        v35 = v34;
        (*((swift_isaMask & *v34) + 0x80))();

        LODWORD(v35) = v26(v32, 1, v56);
        v36 = sub_1000038A4(v32, &qword_1005228D8, &unk_100450060);
        if (v35 != 1)
        {
          __chkstk_darwin(v36);
          *(&v44 - 2) = &v57;
          v58 = v19;
          sub_10023331C(&v58, &v59);
          v37 = v59;
          goto LABEL_36;
        }

        if (!v19)
        {
          goto LABEL_35;
        }
      }

      goto LABEL_28;
    }
  }

LABEL_35:
  v37 = 0;
LABEL_36:
  v39 = v56;

  v41 = v44;
  if (!v37)
  {
    return (*(v53 + 8))(v50, v39);
  }

  (*((swift_isaMask & *v37) + 0x80))(v40);
  result = (v26)(v41, 1, v39);
  if (result == 1)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v42 = v50;
    Date.timeIntervalSince(_:)();

    v43 = *(v53 + 8);
    v43(v42, v39);
    return (v43)(v41, v39);
  }

  return result;
}

uint64_t sub_100231954()
{
  v1 = (*((swift_isaMask & *v0) + 0x50))();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = *((swift_isaMask & *v5) + 0x98);
      if (v8())
      {

        v10 = (v8)(v9);

        return v10;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

uint64_t sub_100231AB8(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))(a1);
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = *((swift_isaMask & *v6) + 0x98);
      if (v9())
      {

        v11 = (v9)(v10);

        return v11;
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

unint64_t sub_100231C4C()
{
  v1 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v21 - v6;
  v8 = (*((swift_isaMask & *v0) + 0x50))(v5);
  v9 = v8;
  if (!(v8 >> 62))
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_14:

    return 0;
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_3:
  result = [objc_allocWithZone(type metadata accessor for TimingEvent(0)) init];
  v12 = result;
  if ((v9 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v13 = *(v9 + 32);
  }

  v14 = v13;
  (*((swift_isaMask & *v13) + 0x68))();

  v15 = OBJC_IVAR___MRDTimingEvent_startDate;
  swift_beginAccess();
  sub_10003DBB8(v7, v12 + v15);
  swift_endAccess();
  result = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:
    v17 = v16;

    (*((swift_isaMask & *v17) + 0x80))(v18);

    v19 = OBJC_IVAR___MRDTimingEvent_endDate;
    swift_beginAccess();
    sub_10003DBB8(v4, v12 + v19);
    swift_endAccess();
    v20 = sub_100231954();
    (*((swift_isaMask & *v12) + 0xA0))(v20);
    return v12;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if (result < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v9 + 8 * result + 32);
    goto LABEL_12;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_100231F1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = (*(a2 + 8))(a1, a2);
  v11 = v10;
  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_14:

    return 0;
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_3:
  result = [objc_allocWithZone(type metadata accessor for TimingEvent(0)) init];
  v14 = result;
  if ((v11 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v15 = *(v11 + 32);
  }

  v16 = v15;
  (*((swift_isaMask & *v15) + 0x68))();

  v17 = OBJC_IVAR___MRDTimingEvent_startDate;
  swift_beginAccess();
  sub_10003DBB8(v9, v14 + v17);
  swift_endAccess();
  result = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:
    v19 = v18;

    (*((swift_isaMask & *v19) + 0x80))(v20);

    v21 = OBJC_IVAR___MRDTimingEvent_endDate;
    swift_beginAccess();
    sub_10003DBB8(v7, v14 + v21);
    swift_endAccess();
    v22 = (*(a2 + 24))(a1, a2);
    (*((swift_isaMask & *v14) + 0xA0))(v22);
    return v14;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if (result < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v11 + 8 * result + 32);
    goto LABEL_12;
  }

LABEL_20:
  __break(1u);
  return result;
}

id MRDTimingEvents.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MRDTimingEvents();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100232290(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10023231C(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16))())
  {
    return;
  }

  (*(a2 + 24))(1, a1, a2);
  v5 = swift_allocObject();
  sub_1001BC5A8(&unk_100521B40, &unk_10044ED80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  v53 = *(a2 + 8);
  (*(v53 + 16))(a1);
  *(inited + 48) = Double._bridgeToObjectiveC()();
  v8 = sub_1001D5788(inited);
  swift_setDeallocating();
  sub_1000038A4(inited + 32, &unk_1005228F0, &unk_100450070);
  v57 = v5;
  *(v5 + 16) = v8;
  v54 = a1;
  v58 = a2;
  v9 = (*(a2 + 48))(a1, a2);
  v10 = 0;
  v11 = v9 + 64;
  v59 = v9 + 64;
  v60 = v9;
  v12 = 1 << *(v9 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v9 + 64);
  v15 = (v12 + 63) >> 6;
LABEL_5:
  v16 = v10;
  if (!v14)
  {
    goto LABEL_7;
  }

  do
  {
    v10 = v16;
LABEL_10:
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v18 = (*(v60 + 56) + 16 * (v17 | (v10 << 6)));
    v19 = *v18;
    v20 = v18[1];

    v21 = v2;
    v22 = swift_getAtKeyPath();
    (*((swift_isaMask & *aBlock[0]) + 0xB0))(v22);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      v25.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v57[2];
      v27 = aBlock[0];
      v57[2] = 0x8000000000000000;
      v29 = sub_10000698C(v19, v20);
      v30 = v27[2];
      v31 = (v28 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
LABEL_32:
        __break(1u);
      }

      else
      {
        if (v27[3] >= v32)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v56 = v29;
            v45 = v28;
            sub_100233144();
            v28 = v45;
            v29 = v56;
          }
        }

        else
        {
          v55 = v28;
          sub_100232EA0(v32, isUniquelyReferenced_nonNull_native);
          v33 = sub_10000698C(v19, v20);
          v35 = v34 & 1;
          v28 = v55;
          if ((v55 & 1) != v35)
          {
LABEL_34:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);

            *(v14 + 16) = aBlock[0];

            __break(1u);
            return;
          }

          v29 = v33;
        }

        v2 = v21;
        isa = v25.super.super.isa;
        v37 = aBlock[0];
        if (v28)
        {
          v38 = *(aBlock[0] + 7);
          v39 = *(v38 + 8 * v29);
          *(v38 + 8 * v29) = isa;
          v40 = v37;

          v37 = v40;
LABEL_23:
          v11 = v59;
          v57[2] = v37;

          goto LABEL_5;
        }

        *(aBlock[0] + (v29 >> 6) + 8) |= 1 << v29;
        v41 = (v37[6] + 16 * v29);
        *v41 = v19;
        v41[1] = v20;
        *(v37[7] + 8 * v29) = v25;
        v42 = v37[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (!v43)
        {
          v37[2] = v44;
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

    v16 = v10;
    v11 = v59;
  }

  while (v14);
  while (1)
  {
LABEL_7:
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v10 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v10);
    ++v16;
    if (v14)
    {
      goto LABEL_10;
    }
  }

  v46 = (*(v58 + 56))(v54);
  sub_1002328D8(v46);
  v48 = v47;

  if (!v48)
  {
    v48 = sub_1001D5788(_swiftEmptyArrayStorage);
  }

  v49 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v57[2];
  v57[2] = 0x8000000000000000;
  sub_1002333AC(v48, sub_100233360, 0, v49, aBlock);

  v57[2] = aBlock[0];

  (*(v58 + 40))(v54);
  v50 = String._bridgeToObjectiveC()();

  if ((*(v53 + 24))(v54))
  {
    v51 = _convertErrorToNSError(_:)();
  }

  else
  {
    v51 = 0;
  }

  aBlock[4] = sub_100233634;
  aBlock[5] = v57;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001CDC04;
  aBlock[3] = &unk_1004C5090;
  v52 = _Block_copy(aBlock);

  MRAnalyticsSendEvent();
  _Block_release(v52);
}

void sub_1002328D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001BC5A8(&unk_100521B50, &unk_10044ED90);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v12 = __clz(__rbit64(v5)) | (v11 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_100020E0C(*(a1 + 56) + 32 * v12, v26);
    *&v25 = v14;
    *(&v25 + 1) = v15;
    v23[2] = v25;
    v24[0] = v26[0];
    v24[1] = v26[1];
    v16 = v25;
    sub_1001C4088(v24, v23);
    sub_100018D7C(0, &qword_1005228E0, NSObject_ptr);

    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v17 = sub_10000698C(v16, *(&v16 + 1));
    if (v18)
    {
      *(v2[6] + 16 * v17) = v16;
      v8 = v17;

      v9 = v2[7];
      v10 = *(v9 + 8 * v8);
      *(v9 + 8 * v8) = v22;

      v7 = v11;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
      *(v2[6] + 16 * v17) = v16;
      *(v2[7] + 8 * v17) = v22;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_23;
      }

      v2[2] = v21;
      v7 = v11;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v11 = v7;
  }
}

void sub_100232B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v6 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v32 = a3;
  v33 = a2;
  v9 = *(a3 + 8);
  v10 = *(v9 + 8);
  v34 = v3;
  v29 = v9 + 8;
  v30 = v9;
  v28 = v10;
  v11 = (v10)(a2);
  v12 = v11;
  v35 = v11;
  if (v11 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    while (!__OFSUB__(i--, 1))
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_25;
        }

        if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v15 = *(v12 + 32 + 8 * i);
      }

      v16 = v15;
      (*((swift_isaMask & *v15) + 0x68))();

      v17 = type metadata accessor for Date();
      LODWORD(v16) = (*(*(v17 - 8) + 48))(v8, 1, v17);
      v18 = sub_1000038A4(v8, &qword_1005228D8, &unk_100450060);
      if (v16 != 1)
      {
        __chkstk_darwin(v18);
        *(&v27 - 2) = &v35;
        v36 = i;
        sub_100233768(&v36, &v37);
        v19 = v37;
        goto LABEL_15;
      }

      if (!i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_13:
  v19 = 0;
LABEL_15:
  v20 = v33;

  if (v19)
  {
    goto LABEL_22;
  }

  v21 = v28(v20, v30);
  if (!(v21 >> 62))
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_29:

    goto LABEL_23;
  }

  v25 = v21;
  v26 = _CocoaArrayWrapper.endIndex.getter();
  v21 = v25;
  if (!v26)
  {
    goto LABEL_29;
  }

LABEL_18:
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_21;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v21 + 32);
LABEL_21:
    v19 = v22;

LABEL_22:
    v23 = *((swift_isaMask & *v19) + 0xC8);
    v24 = v19;
    v23(v31);

LABEL_23:
    sub_10023231C(v20, v32);
    return;
  }

  __break(1u);
  __break(1u);
}

Swift::Int sub_100232EA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001BC5A8(&unk_100521B50, &unk_10044ED90);
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

id sub_100233144()
{
  v1 = v0;
  sub_1001BC5A8(&unk_100521B50, &unk_10044ED90);
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

unint64_t sub_1002332B0@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

id sub_100233360@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_1002333AC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v39 = v6;
  while (v9)
  {
    v42 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v46[0] = *v17;
    v46[1] = v18;
    v46[2] = v19;

    v20 = v19;
    a2(&v43, v46);

    v21 = v43;
    v22 = v44;
    v23 = v45;
    v24 = *v47;
    v26 = sub_10000698C(v43, v44);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v42 & 1) == 0)
      {
        sub_100233144();
      }
    }

    else
    {
      sub_100232EA0(v29, v42 & 1);
      v31 = sub_10000698C(v21, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v47;
    if (v30)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v33[6] + 16 * v26);
      *v34 = v21;
      v34[1] = v22;
      *(v33[7] + 8 * v26) = v23;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_26;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v14;
    v6 = v39;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_100045960(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100233674(uint64_t a1)
{
  sub_100233710(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100233710(uint64_t a1)
{
  if (!qword_100522F90)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100522F90);
    }
  }
}

uint64_t sub_100233780()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_10052B5C0);
  sub_100015AFC(v0, qword_10052B5C0);
  v1 = *sub_1001D8DD4();
  return Logger.init(_:)();
}

void sub_1002337DC()
{
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10044EBC0;
  v1 = kMRMediaRemoteSystemMediaApplicationDisplayIdentifier;
  if (kMRMediaRemoteSystemMediaApplicationDisplayIdentifier)
  {
    v2 = v0;
    v3 = objc_allocWithZone(MRClient);
    v4 = v1;
    v5 = [v3 initWithBundleIdentifier:v4];

    v6 = [objc_allocWithZone(MRPlayerPath) initWithOrigin:0 client:v5 player:0];
    *(v2 + 32) = v6;
    qword_10052B5E0 = v2;
  }

  else
  {
    __break(1u);
  }
}

id SystemGroupSessionTransport.__allocating_init(sessionIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___MRDSystemGroupSessionTransport_sessionIdentifier];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, "init");
}

id SystemGroupSessionTransport.init(sessionIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___MRDSystemGroupSessionTransport_sessionIdentifier];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SystemGroupSessionTransport();
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t SystemGroupSessionTransport.description.getter()
{
  swift_getObjectType();
  _StringGuts.grow(_:)(18);

  v1._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x6669746E65646920;
  v2._object = 0xEC0000003D726569;
  String.append(_:)(v2);
  String.append(_:)(*(v0 + OBJC_IVAR___MRDSystemGroupSessionTransport_sessionIdentifier));
  v3._countAndFlagsBits = 62;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 60;
}

id SystemGroupSessionTransport.deviceInfo.getter()
{
  v1 = [objc_allocWithZone(MRDeviceInfo) init];
  v2 = [v0 name];
  [v1 setName:v2];

  v3 = String._bridgeToObjectiveC()();
  [v1 setDeviceUID:v3];

  return v1;
}

uint64_t SystemGroupSessionTransport.subscribedPlayerPaths.getter()
{
  if (qword_10052B5D8 != -1)
  {
    swift_once();
  }
}

id SystemGroupSessionTransport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemGroupSessionTransport();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id _s12mediaremoted27SystemGroupSessionTransportC16createConnection8userInfoSo016MRExternalDeviceeG0CSgSDys11AnyHashableVypGSg_tF_0()
{
  swift_getObjectType();
  v0 = [objc_opt_self() server];
  v1 = [v0 externalDeviceServer];

  v2 = [v1 remoteControlService];
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = [v2 systemGroupSessionService];
  if (!v3)
  {
    v4 = v2;
LABEL_8:

LABEL_9:
    if (qword_10052B5B8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100015AFC(v13, qword_10052B5C0);
    v2 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v35 = v16;
      *v15 = 136315138;
      v17 = _typeName(_:qualified:)();
      v19 = sub_10002C9C8(v17, v18, &v35);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v2, v14, "[%s] No active system group session", v15, 0xCu);
      sub_100026A44(v16);
    }

    goto LABEL_13;
  }

  v4 = v3;
  v5 = (*((swift_isaMask & v3->isa) + 0x138))();
  if (!v5)
  {

    goto LABEL_8;
  }

  v6 = v5;
  (*((swift_isaMask & *v5) + 0x80))();
  if (v7)
  {
    v8 = objc_allocWithZone(MRDSystemGroupSessionTransportConnection);
    v9 = v6;
    v10 = String._bridgeToObjectiveC()();

    v11 = [v8 initWithGroupSession:v9 participantIdentifier:v10];

    return v11;
  }

  if (qword_10052B5B8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100015AFC(v20, qword_10052B5C0);
  v21 = v6;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v24 = 136315650;
    v25 = _typeName(_:qualified:)();
    v27 = sub_10002C9C8(v25, v26, &v35);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2082;
    v28 = [v21 identifier];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = sub_10002C9C8(v29, v31, &v35);

    *(v24 + 14) = v32;
    *(v24 + 22) = 2112;
    *(v24 + 24) = v21;
    *v34 = v6;
    v33 = v21;
    _os_log_impl(&_mh_execute_header, v22, v23, "[%s]<%{public}s> Session does not have leader participant: %@", v24, 0x20u);
    sub_1001E4048(v34);

    swift_arrayDestroy();
  }

  else
  {
  }

LABEL_13:

  return 0;
}

unint64_t sub_100234414()
{
  result = qword_100522FF0;
  if (!qword_100522FF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100522FF0);
  }

  return result;
}

uint64_t sub_100234460()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t withTimeout<A>(duration:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v6;
  sub_1001BC5A8(&qword_100522FF8, &qword_100450DE8);
  inited = swift_initStackObject();
  v6[8] = inited;
  *(inited + 16) = 0;
  sub_1001BC5A8(&qword_100523000, &qword_100450DF0);
  v13 = swift_initStackObject();
  v6[9] = v13;
  *(v13 + 16) = 0;
  sub_1001BC5A8(&qword_100523008, &unk_100450DF8);
  v14 = swift_allocObject();
  v6[10] = v14;
  *(v14 + 16) = 0;
  sub_1001BC5A8(&qword_100528660, &qword_100450550);
  v15 = swift_allocObject();
  v11[11] = v15;
  *(v15 + 16) = 0;
  v16 = swift_task_alloc();
  v11[12] = v16;
  v16[2] = a6;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = v14;
  v16[7] = inited;
  v16[8] = a2;
  v16[9] = a3;
  v16[10] = v13;
  v17 = swift_task_alloc();
  v11[13] = v17;
  *(v17 + 16) = inited;
  *(v17 + 24) = v13;
  v18 = swift_task_alloc();
  v11[14] = v18;
  *v18 = v11;
  v18[1] = sub_1002346F0;

  return withTaskCancellationHandler<A>(operation:onCancel:)(a1, &unk_100450E10, v16, sub_100235E7C, v17, a6);
}

uint64_t sub_1002346F0()
{
  v3 = *v0;

  swift_setDeallocating();

  swift_setDeallocating();

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002348B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v10;
  v8[11] = v11;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return _swift_task_switch(sub_1002348EC, 0, 0);
}

uint64_t sub_1002348EC()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v11 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  v5 = *(v0 + 24);
  v6 = *(v0 + 40);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v6;
  *(v4 + 56) = v11;
  *(v4 + 72) = v3;
  *(v4 + 80) = v2;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_100234A10;
  v8 = *(v0 + 88);
  v9 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, 0, 0, 0xD000000000000018, 0x800000010043CE10, sub_100236050, v4, v8);
}

uint64_t sub_100234A10()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100234B4C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100234B4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100234BB0(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100009F34;

  return sub_1002348B4(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100234CA0(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v52 = a7;
  v53 = a2;
  v55 = a6;
  v56 = a5;
  v54 = a3;
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  v57 = a10;
  v13 = type metadata accessor for CheckedContinuation();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v42 - v15;
  v17 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v17 - 8);
  v19 = &v42 - v18;
  static Task<>.checkCancellation()();
  v51 = a9;
  v48 = type metadata accessor for TaskPriority();
  v20 = *(v48 - 8);
  v47 = *(v20 + 56);
  v49 = v20 + 56;
  v47(v19, 1, 1, v48);
  v21 = v16;
  v22 = a4;
  v45 = *(v14 + 16);
  v46 = v14 + 16;
  v23 = v19;
  v24 = v21;
  v42 = v21;
  v44 = a1;
  v45();
  v50 = a8;
  v25 = *(v14 + 80);
  v26 = swift_allocObject();
  v27 = v56;
  v28 = v57;
  v29 = v26;
  v26[2] = 0;
  v26[3] = 0;
  v30 = v53;
  v31 = v54;
  v26[4] = v28;
  v26[5] = v30;
  v26[6] = v31;
  v26[7] = v22;
  v43 = v22;
  v26[8] = v27;
  v32 = v13;
  v33 = v27;
  v53 = *(v14 + 32);
  v34 = v24;
  v35 = v32;
  v53(v26 + ((v25 + 72) & ~v25), v34);

  v36 = sub_1001BF864(0, 0, v23, &unk_100450F20, v29);
  *(v55 + 16) = v36;

  v47(v23, 1, 1, v48);
  v37 = v42;
  (v45)(v42, v44, v35);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v39 = v52;
  v38[4] = v57;
  v38[5] = v39;
  v38[6] = v50;
  v38[7] = v36;
  v38[8] = v43;
  v38[9] = v33;
  (v53)(v38 + ((v25 + 80) & ~v25), v37, v35);

  v40 = sub_1001CB290(0, 0, v23, &unk_100450F30, v38);
  *(v51 + 16) = v40;
}

uint64_t sub_100235050(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a8;
  v8[5] = v18;
  v8[2] = a6;
  v8[3] = a7;
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  v10 = type metadata accessor for CheckedContinuation();
  v8[6] = v10;
  v11 = *(v10 - 8);
  v8[7] = v11;
  v8[8] = *(v11 + 64);
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();
  v12 = *(v18 - 8);
  v8[11] = v12;
  v8[12] = *(v12 + 64);
  v8[13] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[14] = v13;
  v16 = (a4 + *a4);
  v14 = swift_task_alloc();
  v8[15] = v14;
  *v14 = v8;
  v14[1] = sub_10023525C;

  return v16(v13);
}

uint64_t sub_10023525C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1002355C4;
  }

  else
  {
    v2 = sub_100235370;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100235370()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  v19 = v0[3];
  v20 = v0[2];
  v21 = v0[16];
  (*(v6 + 16))(v4, v0[4], v7);
  (*(v3 + 16))(v2, v1, v8);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = (v5 + *(v3 + 80) + v9) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  (*(v6 + 32))(v11 + v9, v4, v7);
  (*(v3 + 32))(v11 + v10, v2, v8);
  v12 = swift_task_alloc();
  v12[2] = v19;
  v12[3] = sub_100236A44;
  v12[4] = v11;
  v13 = swift_task_alloc();
  *(v13 + 16) = sub_100236B74;
  *(v13 + 24) = v12;
  os_unfair_lock_lock(v20 + 4);
  sub_100006E8C();
  os_unfair_lock_unlock(v20 + 4);
  if (v21)
  {
  }

  else
  {
    v15 = v0[14];
    v16 = v0[11];
    v17 = v0[5];

    (*(v16 + 8))(v15, v17);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1002355C4()
{
  v1 = v0[16];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[3];
  v15 = v0[2];
  (*(v5 + 16))(v3, v0[4], v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  (*(v5 + 32))(v10 + v8, v3, v4);
  *(v10 + v9) = v1;
  v11 = swift_task_alloc();
  v11[2] = v7;
  v11[3] = sub_100236940;
  v11[4] = v10;
  v12 = swift_task_alloc();
  *(v12 + 16) = sub_100236B74;
  *(v12 + 24) = v11;
  swift_errorRetain();
  os_unfair_lock_lock(v15 + 4);
  sub_100006E8C();
  os_unfair_lock_unlock(v15 + 4);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1002357B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  type metadata accessor for CheckedContinuation();
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100235898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v14;
  v8[8] = v15;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  v9 = type metadata accessor for CheckedContinuation();
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v8[11] = *(v10 + 64);
  v8[12] = swift_task_alloc();
  v11 = type metadata accessor for ContinuousClock();
  v8[13] = v11;
  v8[14] = *(v11 - 8);
  v8[15] = swift_task_alloc();

  return _swift_task_switch(sub_1002359F4, 0, 0);
}

uint64_t sub_1002359F4()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_100235AB4;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1002362E4(v3, v2, 0, 0, 1);
}

uint64_t sub_100235AB4()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  *(*v1 + 136) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100235E0C;
  }

  else
  {
    v5 = sub_100235C24;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100235C24()
{
  v14 = v0[17];
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  Task.cancel()();
  (*(v3 + 16))(v1, v4, v2);
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  (*(v3 + 32))(v9 + v8, v1, v2);
  v10 = swift_task_alloc();
  v10[2] = v6;
  v10[3] = sub_10023679C;
  v10[4] = v9;
  v11 = swift_task_alloc();
  *(v11 + 16) = sub_10023688C;
  *(v11 + 24) = v10;
  os_unfair_lock_lock(v7 + 4);
  sub_100006EA4();
  if (v14)
  {
    os_unfair_lock_unlock(v7 + 4);
  }

  else
  {
    os_unfair_lock_unlock(v7 + 4);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_100235E0C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100235E7C()
{
  v1 = *(v0 + 24);
  if (*(*(v0 + 16) + 16))
  {

    Task.cancel()();
  }

  if (*(v1 + 16))
  {

    sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
    Task.cancel()();
  }
}

unint64_t sub_100235F40()
{
  result = qword_100523010;
  if (!qword_100523010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523010);
  }

  return result;
}

uint64_t sub_100235FA4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100236088()
{
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  v2 = *(type metadata accessor for CheckedContinuation() - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100009F34;

  return sub_100235050(v8, v9, v10, v4, v5, v6, v7, v0 + v3);
}

uint64_t sub_1002361B0()
{
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  type metadata accessor for CheckedContinuation();
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100009F30;

  return sub_100235898(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1002362E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1002363E4, 0, 0);
}

uint64_t sub_1002363E4()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_1002368F8(&qword_100523020, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1002368F8(&qword_100523028, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_100236574;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_100236574()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100236730, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100236730()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10023679C()
{
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  type metadata accessor for CheckedContinuation();
  sub_1002368A4();
  swift_allocError();
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  type metadata accessor for CheckedContinuation();
  return CheckedContinuation.resume(throwing:)();
}

unint64_t sub_1002368A4()
{
  result = qword_100523018;
  if (!qword_100523018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523018);
  }

  return result;
}

uint64_t sub_1002368F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100236940()
{
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  type metadata accessor for CheckedContinuation();
  swift_errorRetain();
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  type metadata accessor for CheckedContinuation();
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_100236A44()
{
  v1 = *(v0 + 16);
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  v2 = *(type metadata accessor for CheckedContinuation() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v0 + ((v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_1002357B0(v0 + v3, v4, v1);
}

uint64_t sub_100236B2C()
{
  v1 = *(v0 + 16);
  if ((*(v1 + 16) & 1) == 0)
  {
    v2 = *(v0 + 24);
    *(v1 + 16) = 1;
    return v2();
  }

  return result;
}

uint64_t sub_100236B8C()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval_end;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval____lazy_storage___events) = 0;
  static Date.now.getter();
  return v0;
}

uint64_t sub_100236C8C()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(68);
  v26 = v23;
  v27 = v24;
  v6._countAndFlagsBits = 60;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x746E656469202D20;
  v8._object = 0xEF203A7265696669;
  String.append(_:)(v8);
  String.append(_:)(v0[1]);
  v9._object = 0x800000010043D730;
  v9._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v9);
  v10 = OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_lastAvailable;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v10, v2);
  if (qword_10052B7F0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Date.FormatStyle();
  sub_100015AFC(v11, qword_10052B7F8);
  sub_100248538(&qword_100523040, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  (*(v3 + 8))(v5, v2);
  String.append(_:)(v25);

  v12._countAndFlagsBits = 0x6964656D6D69202CLL;
  v12._object = 0xED0000203A657461;
  String.append(_:)(v12);
  if (LOBYTE(v1[2]._countAndFlagsBits))
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (LOBYTE(v1[2]._countAndFlagsBits))
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  v15 = v14;
  String.append(_:)(*&v13);

  v16._countAndFlagsBits = 0x6E6572727563202CLL;
  v16._object = 0xEB00000000203A74;
  String.append(_:)(v16);
  if (*(&v1->_countAndFlagsBits + OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_current))
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (*(&v1->_countAndFlagsBits + OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_current))
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  v19 = v18;
  String.append(_:)(*&v17);

  v20._countAndFlagsBits = 62;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  return v26;
}

uint64_t sub_100236FB8()
{

  sub_100019550(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_lastAvailable;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10023708C()
{
  v0 = swift_allocObject();
  sub_1002370C4();
  return v0;
}

void *sub_1002370C4()
{
  type metadata accessor for RoutingEventInterval(0);
  v1 = swift_allocObject();
  v2 = OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval_end;
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 56);
  v4(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval____lazy_storage___events) = 0;
  static Date.now.getter();
  v0[2] = v1;
  v0[3] = 0;
  v0[4] = 0;
  v0[5] = &_swiftEmptyDictionarySingleton;
  static Date.now.getter();
  v4(v0 + OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_timeFirstCurrentRemoteSessionAvailable, 1, 1, v3);
  v4(v0 + OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_lastTimeDetailedDiscoveryEnabled, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_localPlayingWhenPresented) = 2;
  v5 = v0 + OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_initialLocalRouteType;
  *v5 = 0;
  *(v5 + 1) = 0;
  *(v5 + 8) = 1790;
  return v0;
}

uint64_t sub_100237204(uint64_t a1)
{
  v3 = sub_1001BC5A8(&qword_100523030, &unk_100450F40);
  v4 = __chkstk_darwin(v3);
  v6 = v23 - v5;
  (*(*a1 + 256))(v25, v4);
  v28[0] = v25[1];
  v28[1] = v25[2];
  v29 = v26;
  v27 = v25[0];
  sub_1001E6204(&v27);
  if (v29 == 10)
  {
    v7 = swift_projectBox();
    sub_10001D9AC(v7, v6, &qword_100523030, &unk_100450F40);

    v8 = type metadata accessor for RoutingControl();
    (*(*(v8 - 8) + 8))(v6, v8);
    return sub_100238E4C(v28);
  }

  else
  {
    result = sub_100238E4C(v28);
    v10 = *(v1 + 24);
    if (v10)
    {
      swift_beginAccess();
      v11 = *(v1 + 32);
      if (v11 && (v14 = *(v11 + 16), v12 = v11 + 16, (v13 = v14) != 0))
      {
        v15 = *(**(v12 + 16 * v13 + 8) + 168);
        swift_retain_n();

        v16 = v15(v24);
        v18 = v17;

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v23[1] = *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v16(v24, 0);
      }

      else
      {
        v19 = *(*v10 + 168);

        v20 = v19(v24);
        v22 = v21;

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v20(v24, 0);
      }
    }
  }

  return result;
}

uint64_t sub_100237544()
{
  v1 = *(**(v0 + 16) + 184);

  v1(v2);
}

void sub_1002375AC(uint64_t a1)
{
  v2 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for RoutingMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, enum case for RoutingMode.detailed(_:), v5);
  v9 = static RoutingMode.== infix(_:_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    static Date.now.getter();
    v10 = type metadata accessor for Date();
    (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
    v11 = OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_lastTimeDetailedDiscoveryEnabled;
    swift_beginAccess();
    sub_10003DBB8(v4, v1 + v11);
    swift_endAccess();
    sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
    v12 = v1;
    v13 = sub_10024C81C();
    v14 = [v13 localActivePlayerIsPlaying];

    *(v12 + OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_localPlayingWhenPresented) = v14;
  }
}

uint64_t sub_1002377BC(uint64_t a1)
{
  v71 = type metadata accessor for Date();
  v3 = *(v71 - 8);
  __chkstk_darwin(v71);
  v65 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v6 = __chkstk_darwin(v5 - 8);
  v67 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v68 = &v62 - v9;
  __chkstk_darwin(v8);
  v11 = &v62 - v10;
  v12 = type metadata accessor for HostedRoutingSession(0);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v62 - v18;
  __chkstk_darwin(v17);
  v21 = &v62 - v20;
  v22 = type metadata accessor for HostedRoutingItem(0);
  v23 = __chkstk_darwin(v22);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v3;
  v70 = v1;
  v27 = v1 + OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_initialLocalRouteType;
  if ((~*(v1 + OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_initialLocalRouteType + 16) & 0x6FE) == 0)
  {
    v62 = v24;
    v63 = v23;
    v66 = v11;
    v64 = a1;
    result = sub_100032A00();
    v29 = result;
    v30 = *(result + 16);
    if (!v30)
    {
      goto LABEL_7;
    }

    v31 = 0;
    while (1)
    {
      if (v31 >= *(v29 + 16))
      {
        goto LABEL_27;
      }

      v32 = sub_100238F04(v29 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v31, v19, type metadata accessor for HostedRoutingSession);
      if (sub_100031908(v32))
      {
        break;
      }

      ++v31;
      result = sub_10024889C(v19, type metadata accessor for HostedRoutingSession);
      if (v30 == v31)
      {
        goto LABEL_7;
      }
    }

    sub_100238EA0(v19, v21);
    v60 = sub_10003AC60();
    sub_10024889C(v21, type metadata accessor for HostedRoutingSession);
    if (v60[2])
    {
      sub_100238F04(v60 + ((*(v62 + 80) + 32) & ~*(v62 + 80)), v26, type metadata accessor for HostedRoutingItem);

      v61 = &v26[*(v63 + 64)];
      v33 = *v61;
      v34 = *(v61 + 1);
      v35 = *(v61 + 8);
      sub_10001DAE0(*v61, v34, v35);
      sub_10024889C(v26, type metadata accessor for HostedRoutingItem);
    }

    else
    {
LABEL_7:

      v33 = 0;
      v34 = 0;
      v35 = 1790;
    }

    v3 = v69;
    v11 = v66;
    v36 = *v27;
    v37 = *(v27 + 8);
    *v27 = v33;
    *(v27 + 8) = v34;
    v38 = *(v27 + 16);
    *(v27 + 16) = v35;
    sub_10003FE48(v36, v37, v38);
  }

  result = sub_1002647C8();
  v39 = result;
  v40 = 0;
  v41 = *(result + 16);
  while (1)
  {
    v42 = v40;
    if (v41 == v40)
    {
LABEL_13:

      v45 = OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_timeFirstCurrentRemoteSessionAvailable;
      v46 = v70;
      swift_beginAccess();
      sub_10001D9AC(v46 + v45, v11, &qword_1005228D8, &unk_100450060);
      v47 = v71;
      v66 = *(v3 + 48);
      v48 = (v66)(v11, 1, v71);
      sub_1000038A4(v11, &qword_1005228D8, &unk_100450060);
      if (v48 != 1 || v41 == v42)
      {
        v50 = v67;
        sub_10001D9AC(v46 + v45, v67, &qword_1005228D8, &unk_100450060);
        v51 = (v66)(v50, 1, v47);
        result = sub_1000038A4(v50, &qword_1005228D8, &unk_100450060);
        if (v51 == 1 || v41 != v42)
        {
          return result;
        }

        v52 = v46;
        v53 = v65;
        static Date.now.getter();
        v54 = OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_lastInstanceOfNoRemoteSessionAvailable;
        swift_beginAccess();
        v55 = v69;
        v56 = v53;
        v57 = v71;
        (*(v69 + 40))(v52 + v54, v56, v71);
        swift_endAccess();
        v58 = v68;
        (*(v55 + 56))(v68, 1, 1, v57);
        swift_beginAccess();
        v59 = v52 + v45;
      }

      else
      {
        v58 = v68;
        static Date.now.getter();
        (*(v3 + 56))(v58, 0, 1, v47);
        swift_beginAccess();
        v59 = v46 + v45;
      }

      sub_10003DBB8(v58, v59);
      return swift_endAccess();
    }

    if (v40 >= *(v39 + 16))
    {
      break;
    }

    v43 = sub_100238F04(v39 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v40++, v16, type metadata accessor for HostedRoutingSession);
    v44 = sub_100031908(v43);
    result = sub_10024889C(v16, type metadata accessor for HostedRoutingSession);
    if ((v44 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100237E74(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_100237F98(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v33[-1] - v9;
  v11 = v2[3];
  if (a1)
  {
    if (v11)
    {
      v12 = sub_100028D40();
      (*(v5 + 16))(v10, v12, v4);

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v33[0] = v16;
        *v15 = 136315138;
        v17 = (*(*v2 + 432))();
        v19 = sub_10002C9C8(v17, v18, v33);

        *(v15 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v13, v14, "[%s] updateIsPresentingUI - interval already exists", v15, 0xCu);
        sub_100026A44(v16);
      }

      return (*(v5 + 8))(v10, v4);
    }

    else
    {
      type metadata accessor for RoutingEventInterval(0);
      v21 = swift_allocObject();
      v22 = OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval_end;
      v23 = type metadata accessor for Date();
      (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
      *(v21 + OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval____lazy_storage___events) = 0;
      static Date.now.getter();
      v2[3] = v21;
    }
  }

  else if (v11)
  {
    v2[3] = 0;

    swift_beginAccess();
    v2[4] = 0;
  }

  else
  {
    v24 = sub_100028D40();
    (*(v5 + 16))(v8, v24, v4);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v33[0] = v28;
      *v27 = 136315138;
      v29 = (*(*v2 + 432))();
      v31 = sub_10002C9C8(v29, v30, v33);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%s] updateIsPresentingUI - missing event interval", v27, 0xCu);
      sub_100026A44(v28);
    }

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1002383EC(uint64_t result)
{
  if (*(v1 + 24))
  {
    v2 = result;
    swift_beginAccess();
    v3 = *(v1 + 32);
    if (!v3)
    {
      v3 = _swiftEmptyArrayStorage;
      *(v1 + 32) = _swiftEmptyArrayStorage;
    }

    v6 = v3[2];
    v4 = v3 + 2;
    v5 = v6;
    if (v6)
    {
      v7 = *(*v4[2 * v5 + 1] + 184);

      v7(v8);
    }

    v10 = sub_100213280(v20);
    if (*v9)
    {
      v11 = v9;
      type metadata accessor for RoutingEventInterval(0);
      v12 = swift_allocObject();
      v13 = OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval_end;
      v14 = type metadata accessor for Date();
      (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
      *(v12 + OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval____lazy_storage___events) = 0;

      static Date.now.getter();
      v15 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v11 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_10023C4D4(0, v15[2] + 1, 1, v15);
        *v11 = v15;
      }

      v18 = v15[2];
      v17 = v15[3];
      if (v18 >= v17 >> 1)
      {
        v15 = sub_10023C4D4((v17 > 1), v18 + 1, 1, v15);
        *v11 = v15;
      }

      v15[2] = v18 + 1;
      v19 = &v15[2 * v18];
      v19[4] = v2;
      v19[5] = v12;
      return (v10)(v20, 0);
    }

    else
    {
      return (v10)(v20, 0);
    }
  }

  return result;
}

uint64_t sub_1002385F4()
{
  v1._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 2653;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0xD000000000000011;
  v3._object = 0x800000010043CE30;
  String.append(_:)(v3);
  swift_beginAccess();
  v4 = *(v0 + 40);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(*(v0 + 40) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return result;
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = *(v6 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      do
      {
LABEL_9:
        v10 &= v10 - 1;

        v39._countAndFlagsBits = sub_100236C8C();
        v39._object = v15;
        v16._countAndFlagsBits = 10;
        v16._object = 0xE100000000000000;
        String.append(_:)(v16);
        String.append(_:)(v39);
      }

      while (v10);
      continue;
    }
  }

  _StringGuts.grow(_:)(22);

  v17 = *(**(v0 + 16) + 192);

  v19._countAndFlagsBits = v17(v18);
  String.append(_:)(v19);

  v20._countAndFlagsBits = 10;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0xD000000000000013;
  v21._object = 0x800000010043CE50;
  String.append(_:)(v21);

  v22 = *(v0 + 24);
  if (v22)
  {

    _StringGuts.grow(_:)(25);

    v24._countAndFlagsBits = (*(*v22 + 192))(v23);
    String.append(_:)(v24);

    v25._countAndFlagsBits = 10;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    v26._countAndFlagsBits = 0xD000000000000016;
    v26._object = 0x800000010043CE90;
    String.append(_:)(v26);
  }

  swift_beginAccess();
  v27 = *(v0 + 32);
  if (v27)
  {
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = ( + 40);
      do
      {
        v30 = *v29;

        _StringGuts.grow(_:)(25);

        v31 = Set.description.getter();
        v33 = v32;

        v34._countAndFlagsBits = v31;
        v34._object = v33;
        String.append(_:)(v34);

        v35._countAndFlagsBits = 93;
        v35._object = 0xE100000000000000;
        String.append(_:)(v35);
        v36._countAndFlagsBits = (*(*v30 + 192))();
        String.append(_:)(v36);

        v37._countAndFlagsBits = 10;
        v37._object = 0xE100000000000000;
        String.append(_:)(v37);
        v38._countAndFlagsBits = 0xD000000000000013;
        v38._object = 0x800000010043CE70;
        String.append(_:)(v38);

        v29 += 2;
        --v28;
      }

      while (v28);
    }
  }

  return 91;
}

char *sub_100238A68()
{

  v1 = OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_lastInstanceOfNoRemoteSessionAvailable;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000038A4(v0 + OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_timeFirstCurrentRemoteSessionAvailable, &qword_1005228D8, &unk_100450060);
  sub_1000038A4(v0 + OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_lastTimeDetailedDiscoveryEnabled, &qword_1005228D8, &unk_100450060);
  sub_10003FE48(*(v0 + OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_initialLocalRouteType), *(v0 + OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_initialLocalRouteType + 8), *(v0 + OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_initialLocalRouteType + 16));
  return v0;
}

uint64_t sub_100238B48()
{
  sub_100238A68();

  return swift_deallocClassInstance();
}

uint64_t sub_100238BEC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval_start;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100238C74(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval_start;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void *sub_100238D1C()
{
  if (*(v0 + OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval____lazy_storage___events))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval____lazy_storage___events);
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
    *(v0 + OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval____lazy_storage___events) = _swiftEmptyArrayStorage;
  }

  return v1;
}

uint64_t (*sub_100238D7C(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_100238D1C();
  return sub_100238DC4;
}

uint64_t sub_100238DDC(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v9 = type metadata accessor for Date.FormatStyle();
  sub_1001C4098(v9, a2);
  v10 = sub_100015AFC(v9, a2);
  return sub_100239E4C(a3, a4, a5, v10);
}

uint64_t sub_100238EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingSession(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100238F04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100238F6C()
{
  v1 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v13 - v6;
  (*(*v0 + 128))(v5);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v7, 1, v8);
  result = sub_1000038A4(v7, &qword_1005228D8, &unk_100450060);
  if (v10 == 1)
  {
    static Date.now.getter();
    (*(v9 + 56))(v4, 0, 1, v8);
    v12 = OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval_end;
    swift_beginAccess();
    sub_10003DBB8(v4, v0 + v12);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100239114()
{
  v1 = *v0;
  v2 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v56 = *(v2 - 8);
  v57 = v2;
  __chkstk_darwin(v2);
  v55 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v53 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001BC5A8(&qword_100523038, &qword_100450F50);
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = __chkstk_darwin(v6);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v58 = &v50 - v9;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v50 - v15;
  v17 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v50 - v22;
  v52 = v1;
  v24 = *(v1 + 128);
  v24(v21);
  v50 = v11;
  v25 = *(v11 + 48);
  v51 = v25(v23, 1, v10);
  v26 = sub_1000038A4(v23, &qword_1005228D8, &unk_100450060);
  v61 = v0;
  v24(v26);
  if (v25(v20, 1, v10) == 1)
  {
    static Date.now.getter();
    v27 = v25(v20, 1, v10);
    v28 = v50;
    if (v27 != 1)
    {
      v27 = sub_1000038A4(v20, &qword_1005228D8, &unk_100450060);
    }
  }

  else
  {
    v28 = v50;
    v27 = (*(v50 + 32))(v16, v20, v10);
  }

  v29 = *(*v61 + 104);
  (v29)(v27);
  Date.timeIntervalSince(_:)();
  v31 = v30;
  v32 = *(v28 + 8);
  v32(v14, v10);
  v32(v16, v10);
  v65 = 91;
  v66 = 0xE100000000000000;
  v33._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v33);

  v34._countAndFlagsBits = 0x203A747261747320;
  v34._object = 0xE800000000000000;
  String.append(_:)(v34);
  v29();
  if (qword_10052B818 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Date.FormatStyle();
  sub_100015AFC(v35, qword_100538458);
  sub_100248538(&qword_100523040, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v32(v14, v10);
  String.append(_:)(v64);

  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  if (v51 == 1)
  {
    _StringGuts.grow(_:)(26);

    v64._countAndFlagsBits = 0xD000000000000015;
    v64._object = 0x800000010043CEB0;
  }

  else
  {
    _StringGuts.grow(_:)(17);

    strcpy(&v64, ", duration: ");
    BYTE5(v64._object) = 0;
    HIWORD(v64._object) = -5120;
  }

  v62 = v31;
  static Locale.autoupdatingCurrent.getter();
  sub_10023DB94();
  v36 = v54;
  FloatingPointFormatStyle.init(locale:)();
  v37 = v55;
  static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
  v38 = v58;
  v39 = v60;
  FloatingPointFormatStyle.precision(_:)();
  (*(v56 + 8))(v37, v57);
  v40 = *(v59 + 8);
  v40(v36, v39);
  sub_10000462C(&qword_100523050, &qword_100523038, &qword_100450F50, &protocol conformance descriptor for FloatingPointFormatStyle<A>);
  BinaryFloatingPoint.formatted<A>(_:)();
  v40(v38, v39);
  String.append(_:)(v63);

  v41._countAndFlagsBits = 679283;
  v41._object = 0xE300000000000000;
  String.append(_:)(v41);
  String.append(_:)(v64);

  v42._countAndFlagsBits = 0xA3A73746E657645;
  v42._object = 0xE800000000000000;
  String.append(_:)(v42);
  result = (*(*v61 + 152))();
  v44 = result;
  if (!(result >> 62))
  {
    v45 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v45)
    {
      goto LABEL_12;
    }

LABEL_19:

    return v65;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v45 = result;
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_12:
  if (v45 >= 1)
  {
    v46 = 0;
    do
    {
      if ((v44 & 0xC000000000000001) != 0)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v47 = *(v44 + 8 * v46 + 32);
      }

      ++v46;
      v64._countAndFlagsBits = (*(*v47 + 280))();
      v64._object = v48;
      v49._countAndFlagsBits = 10;
      v49._object = 0xE100000000000000;
      String.append(_:)(v49);
      String.append(_:)(v64);
    }

    while (v45 != v46);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_100239964()
{
  v1 = OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval_start;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000038A4(v0 + OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval_end, &qword_1005228D8, &unk_100450060);

  return swift_deallocClassInstance();
}

uint64_t sub_100239A8C()
{
  v1 = v0 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_processingDuration;
  swift_beginAccess();
  return *v1;
}

void sub_100239AD8(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_processingDuration;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_100239B38()
{
  v1 = OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_achievedStability;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_100239B7C(char a1)
{
  v3 = OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_achievedStability;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100239BCC()
{
  v1 = v0 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_error;
  swift_beginAccess();
  v2 = *v1;
  sub_10023DBE8(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  return v2;
}

uint64_t sub_100239C48(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_error;
  swift_beginAccess();
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  v13 = *(v9 + 24);
  *(v9 + 24) = a4;
  return sub_10023DC58(v10, v11, v12, v13);
}

uint64_t sub_100239CC8()
{
  v1 = v0 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_routeType;
  swift_beginAccess();
  v2 = *v1;
  sub_10003FE34(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t sub_100239D38(uint64_t a1, uint64_t a2, __int16 a3)
{
  v7 = v3 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_routeType;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  v10 = *(v7 + 16);
  *(v7 + 16) = a3;
  return sub_10003FE48(v8, v9, v10);
}

uint64_t sub_100239E4C@<X0>(void (*a1)(uint64_t)@<X0>, void (*a2)(uint64_t)@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v135 = a3;
  v132 = a2;
  v129 = a1;
  v150 = a4;
  v4 = type metadata accessor for Date.FormatStyle.Symbol.Week();
  v148 = *(v4 - 8);
  v149 = v4;
  __chkstk_darwin(v4);
  v147 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v145 = *(v6 - 8);
  v146 = v6;
  __chkstk_darwin(v6);
  v144 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date.FormatStyle.Symbol.DayOfYear();
  v142 = *(v8 - 8);
  v143 = v8;
  __chkstk_darwin(v8);
  v141 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date.FormatStyle.Symbol.Era();
  v139 = *(v10 - 8);
  v140 = v10;
  __chkstk_darwin(v10);
  v138 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date.FormatStyle.Symbol.TimeZone();
  v136 = *(v12 - 8);
  v137 = v12;
  __chkstk_darwin(v12);
  v134 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for Date.FormatStyle.Symbol.SecondFraction();
  v131 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for Date.FormatStyle.Symbol.Second();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for Date.FormatStyle.Symbol.Minute();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v121 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for Date.FormatStyle.Symbol.Hour.AMPMStyle();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v116 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for Date.FormatStyle.Symbol.Hour();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v115 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v112 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v109 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v103 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v22 - 8);
  v99 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TimeZone();
  __chkstk_darwin(v24 - 8);
  v25 = type metadata accessor for Calendar();
  __chkstk_darwin(v25 - 8);
  v123 = type metadata accessor for Locale();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v27 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1001BC5A8(&qword_100523650, &qword_1004511E8);
  __chkstk_darwin(v28 - 8);
  v30 = &v94 - v29;
  v31 = sub_1001BC5A8(&qword_100523658, &qword_1004511F0);
  __chkstk_darwin(v31 - 8);
  v33 = &v94 - v32;
  v34 = type metadata accessor for Date.FormatStyle();
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v38 = &v94 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v36);
  v41 = &v94 - v40;
  v42 = __chkstk_darwin(v39);
  v94 = &v94 - v43;
  v44 = __chkstk_darwin(v42);
  v95 = &v94 - v45;
  v46 = __chkstk_darwin(v44);
  v96 = &v94 - v47;
  v48 = __chkstk_darwin(v46);
  v97 = &v94 - v49;
  v50 = __chkstk_darwin(v48);
  v98 = &v94 - v51;
  v52 = __chkstk_darwin(v50);
  v100 = &v94 - v53;
  v54 = __chkstk_darwin(v52);
  v101 = &v94 - v55;
  v56 = __chkstk_darwin(v54);
  v102 = &v94 - v57;
  v58 = __chkstk_darwin(v56);
  v104 = &v94 - v59;
  v60 = __chkstk_darwin(v58);
  v105 = &v94 - v61;
  __chkstk_darwin(v60);
  v108 = &v94 - v62;
  v63 = type metadata accessor for Date.FormatStyle.DateStyle();
  (*(*(v63 - 8) + 56))(v33, 1, 1, v63);
  v64 = type metadata accessor for Date.FormatStyle.TimeStyle();
  (*(*(v64 - 8) + 56))(v30, 1, 1, v64);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static FormatStyleCapitalizationContext.unknown.getter();
  v65 = Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
  v66 = v103;
  v129(v65);
  Date.FormatStyle.year(_:)();
  (*(v106 + 8))(v66, v107);
  v67 = *(v35 + 8);
  v68 = v67(v38, v34);
  v69 = v109;
  v132(v68);
  v70 = v94;
  Date.FormatStyle.month(_:)();
  (*(v110 + 8))(v69, v111);
  v71 = v67(v41, v34);
  v72 = v112;
  v135(v71);
  v73 = v95;
  Date.FormatStyle.day(_:)();
  (*(v113 + 8))(v72, v114);
  v67(v70, v34);
  v74 = v116;
  static Date.FormatStyle.Symbol.Hour.AMPMStyle.omitted.getter();
  v75 = v115;
  static Date.FormatStyle.Symbol.Hour.defaultDigits(amPM:)();
  (*(v119 + 8))(v74, v120);
  v76 = v96;
  Date.FormatStyle.hour(_:)();
  (*(v117 + 8))(v75, v118);
  v67(v73, v34);
  v77 = v121;
  static Date.FormatStyle.Symbol.Minute.twoDigits.getter();
  v78 = v97;
  Date.FormatStyle.minute(_:)();
  (*(v124 + 8))(v77, v125);
  v67(v76, v34);
  v79 = v126;
  static Date.FormatStyle.Symbol.Second.twoDigits.getter();
  v80 = v98;
  Date.FormatStyle.second(_:)();
  (*(v127 + 8))(v79, v128);
  v67(v78, v34);
  v81 = v130;
  static Date.FormatStyle.Symbol.SecondFraction.fractional(_:)();
  v82 = v100;
  Date.FormatStyle.secondFraction(_:)();
  (*(v131 + 8))(v81, v133);
  v67(v80, v34);
  v83 = v134;
  static Date.FormatStyle.Symbol.TimeZone.omitted.getter();
  v84 = v101;
  Date.FormatStyle.timeZone(_:)();
  (*(v136 + 8))(v83, v137);
  v67(v82, v34);
  v85 = v138;
  static Date.FormatStyle.Symbol.Era.omitted.getter();
  v86 = v102;
  Date.FormatStyle.era(_:)();
  (*(v139 + 8))(v85, v140);
  v67(v84, v34);
  v87 = v141;
  static Date.FormatStyle.Symbol.DayOfYear.omitted.getter();
  v88 = v104;
  Date.FormatStyle.dayOfYear(_:)();
  (*(v142 + 8))(v87, v143);
  v67(v86, v34);
  v89 = v144;
  static Date.FormatStyle.Symbol.Weekday.omitted.getter();
  v90 = v105;
  Date.FormatStyle.weekday(_:)();
  (*(v145 + 8))(v89, v146);
  v67(v88, v34);
  v91 = v147;
  static Date.FormatStyle.Symbol.Week.omitted.getter();
  v92 = v108;
  Date.FormatStyle.week(_:)();
  (*(v148 + 8))(v91, v149);
  v67(v90, v34);
  Locale.init(identifier:)();
  Date.FormatStyle.locale(_:)();
  (*(v122 + 8))(v27, v123);
  return v67(v92, v34);
}

double sub_10023AF1C@<D0>(uint64_t a1@<X8>)
{
  (*(**(v1 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_decision) + 120))(v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t sub_10023AF94(uint64_t a1)
{
  v2 = swift_allocObject();
  static Date.now.getter();
  v3 = OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_end;
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  v5 = v2 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_processingDuration;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v2 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_achievedStability) = 2;
  v6 = v2 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_error;
  *(v6 + 24) = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = 0;
  v7 = v2 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_routeType;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1790;
  *(v2 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_decision) = a1;
  return v2;
}

uint64_t sub_10023B090(uint64_t a1)
{
  v3 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = __chkstk_darwin(v4);
  v9 = &v24[-v8 - 8];
  (*(*v1 + 136))(v7);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);
  result = sub_1000038A4(v9, &qword_1005228D8, &unk_100450060);
  if (v12 == 1)
  {
    static Date.now.getter();
    (*(v11 + 56))(v6, 0, 1, v10);
    v14 = OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_end;
    swift_beginAccess();
    sub_10003DBB8(v6, v1 + v14);
    swift_endAccess();
    v15 = *(a1 + 32);
    v16 = v1 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_processingDuration;
    swift_beginAccess();
    *v16 = v15;
    *(v16 + 8) = 0;
    LOBYTE(v16) = *(a1 + 25);
    v17 = OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_achievedStability;
    swift_beginAccess();
    *(v1 + v17) = v16;
    v25[0] = *a1;
    *(v25 + 9) = *(a1 + 9);
    v18 = v1 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_error;
    swift_beginAccess();
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    *v18 = v25[0];
    v22 = *(v18 + 24);
    *(v18 + 9) = *(v25 + 9);
    sub_10001D9AC(v25, v24, &qword_100523058, &qword_100450F58);
    return sub_10023DC58(v19, v20, v21, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10023B310()
{
  v1 = *v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v7 = __chkstk_darwin(v6 - 8);
  v56 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = v53 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = v53 - v13;
  v58 = v1;
  v15 = *(v1 + 136);
  v15(v12);
  v16 = *(v3 + 48);
  v59 = v16(v14, 1, v2);
  v17 = sub_1000038A4(v14, &qword_1005228D8, &unk_100450060);
  v57 = v0;
  v55 = v15;
  v53[1] = v1 + 136;
  v15(v17);
  v18 = v16;
  v19 = v16(v11, 1, v2);
  v54 = v16;
  if (v19 == 1)
  {
    static Date.now.getter();
    v20 = v3;
    if (v18(v11, 1, v2) != 1)
    {
      sub_1000038A4(v11, &qword_1005228D8, &unk_100450060);
    }
  }

  else
  {
    (*(v3 + 32))(v5, v11, v2);
    v20 = v3;
  }

  v21 = v57;
  Date.timeIntervalSince(_:)();
  v23 = v22;
  v24 = *(v20 + 8);
  v53[0] = v20 + 8;
  v24(v5, v2);
  v65._countAndFlagsBits = 60;
  v65._object = 0xE100000000000000;
  v25._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0x7472617473202D20;
  v26._object = 0xEA0000000000203ALL;
  String.append(_:)(v26);
  if (qword_10052B818 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Date.FormatStyle();
  sub_100015AFC(v27, qword_100538458);
  sub_100248538(&qword_100523040, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  String.append(_:)(v70);

  v64 = v65;
  if (v59 != 1)
  {
LABEL_12:
    v65._countAndFlagsBits = 0;
    v65._object = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v65._countAndFlagsBits = 0x203A646E65202CLL;
    v65._object = 0xE700000000000000;
    v30 = v56;
    v55(v29);
    if (v54(v30, 1, v2) == 1)
    {
LABEL_26:
      __break(1u);
      return;
    }

    Date.formatted<A>(_:)();
    v24(v30, v2);
    String.append(_:)(v70);

    v31._countAndFlagsBits = 0x697461727564202CLL;
    v31._object = 0xEC000000203A6E6FLL;
    String.append(_:)(v31);
    v28 = v23 * 1000.0;
    if (COERCE__INT64(fabs(v23 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v28 > -9.22337204e18)
      {
        if (v28 < 9.22337204e18)
        {
          goto LABEL_16;
        }

        goto LABEL_25;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v65._countAndFlagsBits = 0;
  v65._object = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v65._countAndFlagsBits = 0xD000000000000015;
  v65._object = 0x800000010043CEB0;
  v28 = v23 * 1000.0;
  if (COERCE__INT64(fabs(v23 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v28 >= 9.22337204e18)
  {
    __break(1u);
    goto LABEL_12;
  }

LABEL_16:
  v70._countAndFlagsBits = v28;
  v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v32);

  v33._countAndFlagsBits = 29549;
  v33._object = 0xE200000000000000;
  String.append(_:)(v33);
  String.append(_:)(v65);

  v35 = (*(*v21 + 208))(v34);
  if (v35)
  {
    v70._countAndFlagsBits = 0x3A726F727265202CLL;
    v70._object = 0xE900000000000020;
    v65._countAndFlagsBits = v35;
    v65._object = v36;
    v66._countAndFlagsBits = v37;
    LOBYTE(v66._object) = v38;
    v39 = v36;
    v40 = v37;
    v41 = v38;
    sub_10023DD70();
    v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v42);

    String.append(_:)(v70);

    v35 = sub_10023DCB0(v39, v40, v41);
  }

  v63._countAndFlagsBits = 0x6E6F69746361202CLL;
  v63._object = 0xEA0000000000203ALL;
  (*(*v21 + 256))(&v65, v35);
  v70 = v66;
  v71 = v67;
  v72 = v68;
  v69 = v65;
  sub_1001E6204(&v69);
  v60 = v70;
  v61 = v71;
  v62 = v72;
  sub_10023DCC8();
  v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v43);
  sub_100238E4C(&v70);

  String.append(_:)(v63);

  v45 = (*(*v21 + 232))(v44);
  if ((~v47 & 0x6FE) != 0)
  {
    v63._countAndFlagsBits = 0x3A6574756F72202CLL;
    v63._object = 0xE900000000000020;
    v60._countAndFlagsBits = v45;
    v60._object = v46;
    LOWORD(v61) = v47;
    v48 = v45;
    v49 = v46;
    v50 = v47;
    sub_10023DD1C();
    v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v51);

    String.append(_:)(v63);

    sub_10003FE48(v48, v49, v50);
  }

  v52._countAndFlagsBits = 62;
  v52._object = 0xE100000000000000;
  String.append(_:)(v52);
}

uint64_t sub_10023BBAC()
{
  v1 = OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_start;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000038A4(v0 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_end, &qword_1005228D8, &unk_100450060);
  sub_10023DC58(*(v0 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_error), *(v0 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_error + 8), *(v0 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_error + 16), *(v0 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_error + 24));
  sub_10003FE48(*(v0 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_routeType), *(v0 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_routeType + 8), *(v0 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_routeType + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_10023BCF8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10023EF5C(a1, a2, a3);
  sub_100241644(a1, a2, a3);

  return sub_1002430A0(a1, a2);
}

uint64_t sub_10023BD58(uint64_t a1)
{
  v30 = *(a1 + 16);
  if (!v30)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v29 = a1 + 32;
  v3 = &unk_1004511B0;
  while (1)
  {
    v5 = *(**(v29 + 16 * v1 + 8) + 152);

    v7 = v5(v6);

    v8 = v7 >> 62;
    if (v7 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v2 >> 62;
    if (v2 >> 62)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
      v12 = v27 + v9;
      if (__OFADD__(v27, v9))
      {
LABEL_32:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v11 + v9;
      if (__OFADD__(v11, v9))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v10)
      {
        v13 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_15;
    }

    if (v10)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v13 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v33 = v9;
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    if (v8)
    {
      break;
    }

    v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v15 >> 1) - v14) < v33)
    {
      goto LABEL_36;
    }

    v31 = v2;
    v18 = v13 + 8 * v14 + 32;
    v28 = v13;
    if (v8)
    {
      if (v16 < 1)
      {
        goto LABEL_38;
      }

      sub_10000462C(&qword_100523600, &qword_1005235F8, v3, &protocol conformance descriptor for [A]);
      v19 = v3;
      for (i = 0; i != v16; ++i)
      {
        sub_1001BC5A8(&qword_1005235F8, v19);
        v21 = sub_10023DA8C(v32, i, v7);
        v23 = *v22;

        (v21)(v32, 0);
        *(v18 + 8 * i) = v23;
        v19 = v3;
      }
    }

    else
    {
      type metadata accessor for RoutingClientEvent(0);
      swift_arrayInitWithCopy();
      v19 = v3;
    }

    v3 = v19;

    v2 = v31;
    if (v33 >= 1)
    {
      v24 = *(v28 + 16);
      v25 = __OFADD__(v24, v33);
      v26 = v24 + v33;
      if (v25)
      {
        goto LABEL_37;
      }

      *(v28 + 16) = v26;
    }

LABEL_4:
    if (++v1 == v30)
    {
      return v2;
    }
  }

  v17 = v13;
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = v17;
  v16 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v33 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void sub_10023C08C(char *a1, uint64_t a2, uint64_t a3)
{
  sub_100246450(a1, a2, a3);

  sub_10024788C(a1, a2);
}

void sub_10023C0CC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_100015A78();
  sub_10001D9AC(v9, v8, &qword_100525C00, &unk_1004511A0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_1000038A4(v8, &qword_100525C00, &unk_1004511A0);
  }

  else
  {

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v14 = 136315650;
      *(v14 + 4) = sub_10002C9C8(0xD000000000000015, 0x8000000100451130, aBlock);
      HIDWORD(v21) = v13;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_10002C9C8(a1, a2, aBlock);
      *(v14 + 22) = 2080;
      sub_100018D7C(0, &qword_1005228E0, NSObject_ptr);
      v15 = Dictionary.description.getter();
      v17 = sub_10002C9C8(v15, v16, aBlock);

      *(v14 + 24) = v17;
      _os_log_impl(&_mh_execute_header, v12, BYTE4(v21), "[%s] report - eventName: %s, payload: %s", v14, 0x20u);
      swift_arrayDestroy();
    }

    (*(v11 + 8))(v8, v10);
  }

  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  aBlock[4] = sub_100248580;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10023C438;
  aBlock[3] = &unk_1004C5450;
  v20 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v20);
}

Class sub_10023C438(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_100018D7C(0, &qword_1005228E0, NSObject_ptr);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

void *sub_10023C4D4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001BC5A8(&qword_100523660, &qword_1004511F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001BC5A8(&qword_100523668, &qword_100451200);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10023C608(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001BC5A8(&qword_1005235F0, &unk_100451190);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int sub_10023C724(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001BC5A8(&qword_100523670, &unk_100451208);
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

void sub_10023C9CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000698C(a2, a3);
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
      sub_100232EA0(v16, a4 & 1);
      v11 = sub_10000698C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100233144();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

void sub_10023CB44()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100523670, &unk_100451208);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

char *sub_10023CCB4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10023CEAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10023CCD4(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001BC5A8(&qword_100523630, &qword_1004511E0);
  v10 = *(type metadata accessor for HostedRoutingSession(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for HostedRoutingSession(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10023CEAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001BC5A8(&qword_1005235F0, &unk_100451190);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unsigned __int8 *sub_10023CFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_100248910();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_10023D560(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10023D560(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_10023D5E0(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10023D5E0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10002F23C(v9, 0), v12 = sub_10023D738(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}