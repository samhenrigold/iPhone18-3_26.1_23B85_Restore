uint64_t sub_100001010()
{
  type metadata accessor for DiagnosticServicesXPCService.SessionHandler();
  sub_1000010A0(&qword_100008228, v0, type metadata accessor for DiagnosticServicesXPCService.SessionHandler, &unk_100002C10);
  return dispatch thunk of XPCListener.IncomingSessionRequest.accept<A>(_:)();
}

uint64_t sub_1000010A0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1000010E8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DiagnosticServicesXPCService.SessionHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_10000111C@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v1 = type metadata accessor for PanicMatcherOOP();
  v54 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CrashMatcherOOP();
  v55 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for XPCPatternInfoContainer();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (&v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = &v48 - v12;
  v14 = XPCReceivedMessage.auditToken.getter();
  sub_100001AF8(v14, v15, v16, v17);
  v49 = v3;
  v50 = v1;
  v51 = v6;
  v52 = v11;
  v53 = v8;
  sub_1000010A0(&qword_1000081F8, 255, &type metadata accessor for XPCPatternInfoContainer, &protocol conformance descriptor for XPCPatternInfoContainer);
  XPCReceivedMessage.decode<A>(as:)();
  v18 = v7;
  v20 = v52;
  v19 = v53;
  (*(v53 + 16))(v52, v13, v7);
  v21 = (*(v19 + 88))(v20, v7);
  if (v21 == enum case for XPCPatternInfoContainer.crash(_:))
  {
    v22 = *(v19 + 96);
    v54 = v7;
    v22(v20, v7);
    v23 = *v20;
    v24 = os_variant_allows_internal_security_policies();
    v25 = v55;
    v26 = v4;
    v27 = v51;
    if (!v24)
    {
LABEL_17:
      v46 = sub_1000022CC(&qword_1000081E0, &qword_100002C58);
      v47 = v56;
      *(v56 + 24) = v46;
      v47[4] = sub_100001D10(&qword_1000081E8, &qword_1000081E0, &qword_100002C58);
      sub_100001CAC(v47);
      CrashMatcherOOP.init()();
      CrashMatcherOOP.lookForPattern(_:)();

      (*(v25 + 8))(v27, v26);
      return (*(v53 + 8))(v13, v54);
    }

    if (CrashPatternInfo.procName.getter() == 0xD000000000000026 && 0x8000000100002EB0 == v28)
    {
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    sleep(0xCu);
LABEL_14:
    if (CrashPatternInfo.procName.getter() == 0xD000000000000024 && 0x8000000100002EE0 == v44)
    {
    }

    else
    {
      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v45 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    abort();
  }

  if (v21 == enum case for XPCPatternInfoContainer.panic(_:))
  {
    (*(v19 + 96))(v20, v7);
    v31 = *v20;
    v32 = v19;
    v33 = sub_1000022CC(&qword_100008200, &qword_100002C68);
    v34 = v18;
    v35 = v56;
    *(v56 + 24) = v33;
    v35[4] = sub_100001D10(&qword_100008208, &qword_100008200, &qword_100002C68);
    sub_100001CAC(v35);
    v36 = v49;
    PanicMatcherOOP.init()();
    PanicMatcherOOP.lookForPattern(_:)();

    (*(v54 + 8))(v36, v50);
    return (*(v32 + 8))(v13, v34);
  }

  else
  {
    v38 = sub_1000022CC(&qword_1000081E0, &qword_100002C58);
    v39 = v56;
    *(v56 + 24) = v38;
    v39[4] = sub_100001D10(&qword_1000081E8, &qword_1000081E0, &qword_100002C58);
    v40 = sub_100001CAC(v39);
    v57 = 0;
    v58 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);
    v41._countAndFlagsBits = 0xD000000000000018;
    v41._object = 0x8000000100002E90;
    String.append(_:)(v41);
    _print_unlocked<A, B>(_:_:)();
    v42 = v58;
    *v40 = v57;
    v40[1] = v42;
    (*(*(v38 - 8) + 104))(v40, enum case for PatternMatchResult.failure<A>(_:), v38);
    v43 = *(v19 + 8);
    v43(v13, v7);
    return (v43)(v20, v7);
  }
}

void sub_100001AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v4 = SecTaskCreateWithAuditToken(0, &token);
  if (!v4)
  {
    __break(1u);
  }

  v5 = v4;
  *token.val = 0;
  v6 = String._bridgeToObjectiveC()();
  v7 = SecTaskCopyValueForEntitlement(v5, v6, &token);

  v8 = *token.val;
  if (*token.val)
  {
    type metadata accessor for CFError();
    sub_1000010A0(&qword_100008218, 255, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
    swift_allocError();
    *v9 = v8;
LABEL_8:
    swift_willThrow();
    goto LABEL_9;
  }

  if (!v7 || (swift_unknownObjectRetain(), !swift_dynamicCast()) || (v10 & 1) == 0)
  {
    sub_100002460();
    swift_allocError();
    goto LABEL_8;
  }

LABEL_9:
  swift_unknownObjectRelease();
}

uint64_t *sub_100001CAC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100001D10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000234C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for CFError()
{
  if (!qword_100008130)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100008130);
    }
  }
}

uint64_t sub_100001DD0()
{
  v0 = type metadata accessor for Logger();
  sub_1000023FC(v0, qword_100008238);
  sub_100002314(v0, qword_100008238);
  return Logger.init(subsystem:category:)();
}

Swift::Int sub_100001E54()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100001EC0(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

void sub_100001F34()
{
  v0 = type metadata accessor for XPCListener.InitializationOptions();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6 - 8);
  sub_1000024B4();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v1);
  v7 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static XPCListener.InitializationOptions.none.getter();
  type metadata accessor for XPCListener();
  swift_allocObject();
  XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();

  dispatch_main();
}

uint64_t sub_1000022CC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002314(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000234C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002394(uint64_t a1)
{
  v2 = sub_1000022CC(&qword_1000081F0, &qword_100002C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1000023FC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100002460()
{
  result = qword_100008210;
  if (!qword_100008210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008210);
  }

  return result;
}

unint64_t sub_1000024B4()
{
  result = qword_100008220;
  if (!qword_100008220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100008220);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiagnosticServicesXPCService.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DiagnosticServicesXPCService.Error(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1000025F4()
{
  result = qword_100008230;
  if (!qword_100008230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008230);
  }

  return result;
}