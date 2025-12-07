uint64_t XPCUtils.XPCInterface.nextRequestID()()
{
  result = *(v0 + direct field offset for XPCUtils.XPCInterface._nextRequestID);
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + direct field offset for XPCUtils.XPCInterface._nextRequestID) = result + 1;
  }

  return result;
}

Swift::Void __swiftcall XPCUtils.XPCInterface.invalidateInterface()()
{
  v1 = *(*v0 + 80);
  v2 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v5 - v3;
  (*(*(v1 - 8) + 56))(&v5 - v3, 1, 1, v1);
  XPCUtils.XPCInterface.remoteInterface.setter(v4);
  *(v0 + direct field offset for XPCUtils.XPCInterface.needsReconnection) = 1;
}

uint64_t *XPCUtils.XPCInterface.deinit()
{
  v1 = direct field offset for XPCUtils.XPCInterface.logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(*(v0 + direct field offset for XPCUtils.XPCInterface.connectionBlock), *(v0 + direct field offset for XPCUtils.XPCInterface.connectionBlock + 8));
  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(*(v0 + direct field offset for XPCUtils.XPCInterface.reconnectionBlock), *(v0 + direct field offset for XPCUtils.XPCInterface.reconnectionBlock + 8));
  v3 = *(*v0 + 160);
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t XPCUtils.XPCInterface.__deallocating_deinit()
{
  XPCUtils.XPCInterface.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type XPCActor and conformance XPCActor()
{
  result = lazy protocol witness table cache variable for type XPCActor and conformance XPCActor;
  if (!lazy protocol witness table cache variable for type XPCActor and conformance XPCActor)
  {
    type metadata accessor for XPCActor();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCActor and conformance XPCActor);
  }

  return result;
}

uint64_t sub_264FD2D18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_264FD2D6C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 272);
  _sxSbs5Error_pRi_zRi0_zlyxIseghndzo_Sgs8SendableRzlWOy(*a1, v3);
  return v4(v2, v3);
}

uint64_t type metadata completion function for XPCUtils.XPCInterface(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of XPCUtils.XPCInterface.addConnectionBlock(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 344) + **(*v2 + 344));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of XPCUtils.XPCInterface.addReconnectionBlock(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 352) + **(*v2 + 352));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v20 = (*(*v16 + 360) + **(*v16 + 360));
  v18 = swift_task_alloc();
  *(v17 + 16) = v18;
  *v18 = v17;
  v18[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_264FD347C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out (), @error @owned Error)()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out (), @error @owned Error)(v2);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error)(a1, v4);
}

uint64_t sub_264FD3618()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_264FD3688()
{
  swift_unknownObjectRelease();

  v1 = v0[13];
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[12], v1);
  }

  v2 = v0[15];
  if (v2 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[14], v2);
  }

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:)(uint64_t a1)
{
  v10 = v1[3];
  v11 = v1[2];
  v3 = v1[11];
  v9 = v1[10];
  v4 = v1[12];
  v5 = v1[13];
  v6 = v1[14];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in closure #1 in closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:)(a1, v11, v10, v9, v3, v4, v5, v6);
}

uint64_t MLS.SendResult.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if (!*(v0 + 24))
  {
    _StringGuts.grow(_:)(19);

    v14 = 0xD000000000000010;
    v6 = MLS.ClientSendAcknowledgement.description.getter();
    goto LABEL_5;
  }

  v3 = v0[2];
  if (*(v0 + 24) == 1)
  {
    v14 = 0;
    _StringGuts.grow(_:)(32);
    MEMORY[0x2667545A0](0xD00000000000001DLL, 0x80000002651E9590);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v4;
    MEMORY[0x2667545A0](46, 0xE100000000000000);
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2667545A0](v5);

    v6 = v12;
    v7 = v13;
LABEL_5:
    MEMORY[0x2667545A0](v6, v7);

    MEMORY[0x2667545A0](41, 0xE100000000000000);
    return v14;
  }

  v9 = v3 | v1;
  if (!(v3 | v1 | v2))
  {
    return 0x73736563637553;
  }

  if (v2 == 1 && v9 == 0)
  {
    return 0x7466417972746552;
  }

  if (v2 == 2 && !v9)
  {
    return 0xD00000000000001CLL;
  }

  if (v9)
  {
    v11 = 0x746552746F4E6F44;
  }

  else
  {
    v11 = 0xD00000000000001ALL;
  }

  if (v2 == 3)
  {
    return v11;
  }

  else
  {
    return 0x746552746F4E6F44;
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.SendResult.CodingKeys()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 0x4173736563637573;
    if (v1 != 1)
    {
      v4 = 0x7466417972746572;
    }

    if (*v0)
    {
      return v4;
    }

    else
    {
      return 0x73736563637573;
    }
  }

  else
  {
    v2 = 0xD00000000000001ALL;
    if (v1 != 5)
    {
      v2 = 0x746552746F4E6F64;
    }

    if (*v0 <= 4u)
    {
      return 0xD00000000000001CLL;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.SendResult.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized MLS.SendResult.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SendResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SendResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SendResult.DoNotRetryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SendResult.DoNotRetryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SendResult.RetryAfterDelayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SendResult.RetryAfterDelayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000002651E9670 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys();

  return MEMORY[0x2821FE718](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys();

  return MEMORY[0x2821FE720](a1, updated);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.SendResult.SuccessAndStoreCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000002651E9690 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SendResult.SuccessAndStoreCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SendResult.SuccessAndStoreCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SendResult.SuccessCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SendResult.SuccessCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.SendResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO20DoNotRetryCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO20DoNotRetryCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v37 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO36RetryAfterNegativeDeliveryCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO36RetryAfterNegativeDeliveryCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO38RetryAfterGroupVersionUpdateCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO38RetryAfterGroupVersionUpdateCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v53 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO38RetryAfterLatestGroupVersionCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO38RetryAfterLatestGroupVersionCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v43 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO25RetryAfterDelayCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO25RetryAfterDelayCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x28223BE20](v10);
  v46 = &v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO25SuccessAndStoreCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO25SuccessAndStoreCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v51 = *(v12 - 8);
  v52 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO17SuccessCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO17SuccessCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v49 = *(v15 - 8);
  v50 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO10CodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO10CodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v57 = *(v18 - 8);
  v58 = v18;
  MEMORY[0x28223BE20](v18);
  v19 = *v1;
  v56 = v1[1];
  v20 = v1[2];
  v21 = *(v1 + 24);
  v22 = a1[3];
  v23 = a1;
  v25 = &v37 - v24;
  __swift_project_boxed_opaque_existential_1(v23, v22);
  lazy protocol witness table accessor for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!v21)
  {
    LOBYTE(v59) = 1;
    lazy protocol witness table accessor for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys();
    v27 = v58;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v59 = v19;
    v60 = v56;
    lazy protocol witness table accessor for type MLS.ClientSendAcknowledgement and conformance MLS.ClientSendAcknowledgement();
    v29 = v52;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v51 + 8))(v14, v29);
    return (*(v57 + 8))(v25, v27);
  }

  if (v21 == 1)
  {
    LOBYTE(v59) = 4;
    lazy protocol witness table accessor for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys();
    v26 = v53;
    v27 = v58;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v59 = v19;
    LODWORD(v60) = v56;
    v61 = v20;
    lazy protocol witness table accessor for type MLS.GroupVersion and conformance MLS.GroupVersion();
    v28 = v55;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v54 + 8))(v26, v28);
    return (*(v57 + 8))(v25, v27);
  }

  v31 = v20 | v56;
  if (v20 | v56 | v19)
  {
    if (v19 == 1 && !v31)
    {
      LOBYTE(v59) = 2;
      lazy protocol witness table accessor for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys();
      v32 = v46;
      v33 = v58;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v35 = v47;
      v34 = v48;
LABEL_18:
      (*(v35 + 8))(v32, v34);
      return (*(v57 + 8))(v25, v33);
    }

    if (v19 == 2 && !v31)
    {
      LOBYTE(v59) = 3;
      lazy protocol witness table accessor for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys();
      v32 = v43;
      v33 = v58;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v35 = v44;
      v34 = v45;
      goto LABEL_18;
    }

    if (v19 != 3 || v31)
    {
      LOBYTE(v59) = 6;
      lazy protocol witness table accessor for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys();
      v32 = v40;
      v33 = v58;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v35 = v41;
      v34 = v42;
      goto LABEL_18;
    }

    LOBYTE(v59) = 5;
    lazy protocol witness table accessor for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys();
    v36 = v37;
    v33 = v58;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v38 + 8))(v36, v39);
  }

  else
  {
    LOBYTE(v59) = 0;
    lazy protocol witness table accessor for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys();
    v33 = v58;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v49 + 8))(v17, v50);
  }

  return (*(v57 + 8))(v25, v33);
}

uint64_t MLS.SendResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO20DoNotRetryCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO20DoNotRetryCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v52 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v65 = &v45 - v3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO36RetryAfterNegativeDeliveryCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO36RetryAfterNegativeDeliveryCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v61 = &v45 - v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO38RetryAfterGroupVersionUpdateCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO38RetryAfterGroupVersionUpdateCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v64 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO38RetryAfterLatestGroupVersionCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO38RetryAfterLatestGroupVersionCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x28223BE20](v6);
  v60 = &v45 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO25RetryAfterDelayCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO25RetryAfterDelayCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v63 = &v45 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO25SuccessAndStoreCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO25SuccessAndStoreCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO17SuccessCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO17SuccessCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v47 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO10CodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO10CodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - v16;
  v18 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys();
  v19 = v74;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    goto LABEL_9;
  }

  v20 = v13;
  v45 = v11;
  v46 = v10;
  v21 = v63;
  v22 = v64;
  v23 = v65;
  v74 = v15;
  v24 = KeyedDecodingContainer.allKeys.getter();
  v25 = (2 * *(v24 + 16)) | 1;
  v70 = v24;
  v71 = v24 + 32;
  v72 = 0;
  v73 = v25;
  v26 = specialized Collection<>.popFirst()();
  if (v26 == 7 || v72 != v73 >> 1)
  {
    v34 = type metadata accessor for DecodingError();
    swift_allocError();
    v35 = v17;
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v37 = &type metadata for MLS.SendResult;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v34 - 8) + 104))(v37, *MEMORY[0x277D84160], v34);
    swift_willThrow();
    (*(v74 + 8))(v35, v14);
    swift_unknownObjectRelease();
LABEL_9:
    v38 = v66;
    return __swift_destroy_boxed_opaque_existential_1Tm(v38);
  }

  if (v26 <= 2u)
  {
    if (v26)
    {
      if (v26 == 1)
      {
        LOBYTE(v67) = 1;
        lazy protocol witness table accessor for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys();
        v40 = v46;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type MLS.ClientSendAcknowledgement and conformance MLS.ClientSendAcknowledgement();
        v41 = v49;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v48 + 8))(v40, v41);
        (*(v74 + 8))(v17, v14);
        swift_unknownObjectRelease();
        v31 = 0;
        v33 = 0;
        v32 = v67;
        v30 = v68;
      }

      else
      {
        LOBYTE(v67) = 2;
        lazy protocol witness table accessor for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v50 + 8))(v21, v51);
        (*(v74 + 8))(v17, v14);
        swift_unknownObjectRelease();
        v30 = 0;
        v31 = 0;
        v33 = 2;
        v32 = 1;
      }
    }

    else
    {
      LOBYTE(v67) = 0;
      lazy protocol witness table accessor for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v47 + 8))(v20, v45);
      (*(v74 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v32 = 0;
      v30 = 0;
      v31 = 0;
      v33 = 2;
    }

    v38 = v66;
    v27 = v62;
  }

  else
  {
    if (v26 > 4u)
    {
      v27 = v62;
      v42 = v74;
      if (v26 == 5)
      {
        LOBYTE(v67) = 5;
        lazy protocol witness table accessor for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys();
        v43 = v61;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v55 + 8))(v43, v57);
        (*(v42 + 8))(v17, v14);
        swift_unknownObjectRelease();
        v30 = 0;
        v31 = 0;
        v33 = 2;
        v32 = 3;
      }

      else
      {
        LOBYTE(v67) = 6;
        lazy protocol witness table accessor for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v52 + 8))(v23, v59);
        (*(v42 + 8))(v17, v14);
        swift_unknownObjectRelease();
        v30 = 0;
        v31 = 0;
        v33 = 2;
        v32 = 4;
      }
    }

    else
    {
      v27 = v62;
      v28 = v74;
      if (v26 == 3)
      {
        LOBYTE(v67) = 3;
        lazy protocol witness table accessor for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys();
        v29 = v60;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v53 + 8))(v29, v54);
        (*(v28 + 8))(v17, v14);
        swift_unknownObjectRelease();
        v30 = 0;
        v31 = 0;
        v32 = 2;
        v33 = 2;
      }

      else
      {
        LOBYTE(v67) = 4;
        lazy protocol witness table accessor for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type MLS.GroupVersion and conformance MLS.GroupVersion();
        v44 = v58;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v56 + 8))(v22, v44);
        (*(v28 + 8))(v17, v14);
        swift_unknownObjectRelease();
        v32 = v67;
        v30 = v68;
        v33 = 1;
        v31 = v69;
      }
    }

    v38 = v66;
  }

  *v27 = v32;
  *(v27 + 8) = v30;
  *(v27 + 16) = v31;
  *(v27 + 24) = v33;
  return __swift_destroy_boxed_opaque_existential_1Tm(v38);
}

uint64_t MLS.ClientSendAcknowledgement.groupClientContextBlob.getter()
{
  v1 = *v0;
  outlined copy of Data?(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.ClientSendAcknowledgement.init(groupClientContextBlob:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t MLS.ClientSendAcknowledgement.description.getter()
{
  v1 = 0xD000000000000019;
  v2 = v0[1];
  if (v2 >> 60 != 15)
  {
    v3 = *v0;
    outlined copy of Data._Representation(*v0, v2);
    _StringGuts.grow(_:)(29);

    v4 = Data.description.getter();
    MEMORY[0x2667545A0](v4);

    MEMORY[0x2667545A0](41, 0xE100000000000000);
    outlined consume of Data?(v3, v2);
    return 0xD00000000000001ALL;
  }

  return v1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.ClientSendAcknowledgement.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000002651E96B0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ClientSendAcknowledgement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ClientSendAcknowledgement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.ClientSendAcknowledgement.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ClientSendAcknowledgementV10CodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ClientSendAcknowledgementV10CodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Data?(v7, v8);
  lazy protocol witness table accessor for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  v11 = v8;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of Data?(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

uint64_t MLS.ClientSendAcknowledgement.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ClientSendAcknowledgementV10CodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ClientSendAcknowledgementV10CodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t lazy protocol witness table accessor for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupVersion and conformance MLS.GroupVersion()
{
  result = lazy protocol witness table cache variable for type MLS.GroupVersion and conformance MLS.GroupVersion;
  if (!lazy protocol witness table cache variable for type MLS.GroupVersion and conformance MLS.GroupVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupVersion and conformance MLS.GroupVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupVersion and conformance MLS.GroupVersion;
  if (!lazy protocol witness table cache variable for type MLS.GroupVersion and conformance MLS.GroupVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupVersion and conformance MLS.GroupVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupVersion and conformance MLS.GroupVersion;
  if (!lazy protocol witness table cache variable for type MLS.GroupVersion and conformance MLS.GroupVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupVersion and conformance MLS.GroupVersion);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ClientSendAcknowledgement and conformance MLS.ClientSendAcknowledgement()
{
  result = lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement and conformance MLS.ClientSendAcknowledgement;
  if (!lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement and conformance MLS.ClientSendAcknowledgement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement and conformance MLS.ClientSendAcknowledgement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement and conformance MLS.ClientSendAcknowledgement;
  if (!lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement and conformance MLS.ClientSendAcknowledgement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement and conformance MLS.ClientSendAcknowledgement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys);
  }

  return result;
}

uint64_t dispatch thunk of MLS.Communicator.send(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 40) + **(a5 + 40));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t get_enum_tag_for_layout_string_15SecureMessaging3MLSO10SendResultO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t getEnumTagSinglePayload for MLS.SendResult(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.SendResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for MLS.SendResult(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.ClientSendAcknowledgement(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.ClientSendAcknowledgement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.SendResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.SendResult.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized MLS.SendResult.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4173736563637573 && a2 == 0xEF65726F7453646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7466417972746572 && a2 == 0xEF79616C65447265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000002651E9610 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000002651E9630 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002651E9650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746552746F4E6F64 && a2 == 0xEA00000000007972)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

Swift::Void __swiftcall MLS.PersistenceQueue.QueueItem.resume()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  v6 = type metadata accessor for MLS.PersistenceQueue.QueueItem(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of MLS.PersistenceQueue.QueueItem(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS13transactionID_ScCyyts5NeverOG12continuationtMd, &_sSS13transactionID_ScCyyts5NeverOG12continuationtMR);
    (*(v3 + 32))(v5, &v8[*(v9 + 48)], v2);
    CheckedContinuation.resume(returning:)();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    outlined destroy of MLS.PersistenceQueue.QueueItem(v8);
  }
}

uint64_t outlined init with copy of MLS.PersistenceQueue.QueueItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.PersistenceQueue.QueueItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MLS.PersistenceQueue.QueueItem(uint64_t a1)
{
  v2 = type metadata accessor for MLS.PersistenceQueue.QueueItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MLS.PersistenceQueue.QueueItem.transactionID.getter()
{
  v1 = type metadata accessor for MLS.PersistenceQueue.QueueItem(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of MLS.PersistenceQueue.QueueItem(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *v3;
  if (EnumCaseMultiPayload == 1)
  {
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS13transactionID_ScCyyts5NeverOG12continuationtMd, &_sSS13transactionID_ScCyyts5NeverOG12continuationtMR) + 48);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    (*(*(v7 - 8) + 8))(&v3[v6], v7);
  }

  return v5;
}

double MLS.PersistenceQueue.queue.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t MLS.PersistenceQueue.queue.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t MLS.PersistenceQueue.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.PersistenceQueue.beginTransactionBlock.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_beginTransactionBlock);

  return v1;
}

uint64_t MLS.PersistenceQueue.endTransactionBlock.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_endTransactionBlock);

  return v1;
}

uint64_t MLS.PersistenceQueue.rollbackTransactionBlock.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_rollbackTransactionBlock);

  return v1;
}

uint64_t outlined init with copy of AsyncStream<String>.Continuation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MLS.PersistenceQueue.__allocating_init(queueingPublisher:beginTransactionBlock:endTransactionBlock:rollbackTransactionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  Logger.init(subsystem:category:)();
  *(v14 + 16) = MEMORY[0x277D84F90];
  outlined init with take of AsyncStream<String>.Continuation?(a1, v14 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_queueingPublisher);
  v15 = (v14 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_beginTransactionBlock);
  *v15 = a2;
  v15[1] = a3;
  v16 = (v14 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_endTransactionBlock);
  *v16 = a4;
  v16[1] = a5;
  v17 = (v14 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_rollbackTransactionBlock);
  *v17 = a6;
  v17[1] = a7;
  return v14;
}

uint64_t MLS.PersistenceQueue.init(queueingPublisher:beginTransactionBlock:endTransactionBlock:rollbackTransactionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Logger.init(subsystem:category:)();
  *(v7 + 16) = MEMORY[0x277D84F90];
  outlined init with take of AsyncStream<String>.Continuation?(a1, v7 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_queueingPublisher);
  v15 = (v7 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_beginTransactionBlock);
  *v15 = a2;
  v15[1] = a3;
  v16 = (v7 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_endTransactionBlock);
  *v16 = a4;
  v16[1] = a5;
  v17 = (v7 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_rollbackTransactionBlock);
  *v17 = a6;
  v17[1] = a7;
  return v7;
}

uint64_t outlined init with take of AsyncStream<String>.Continuation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v9[11] = *(a8 - 8);
  v9[12] = swift_task_alloc();
  v9[13] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;
  v9[14] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:), v10, 0);
}

uint64_t MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:)()
{
  v1 = v0[10];
  v3 = v0[3];
  v2 = v0[4];
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v4 = swift_task_alloc();
  v0[15] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);

  return MEMORY[0x2822007B8]();
}

{
  v1 = *(*v0 + 112);

  return MEMORY[0x2822009F8](MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:), v1, 0);
}

{
  v11 = v0;
  v0[17] = OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_logger;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[3];
    v3 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v10);
    _os_log_impl(&dword_264F1F000, v1, v2, "PersistenceQueue beginning transaction { transactionID: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v9 = (*(v0[10] + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_beginTransactionBlock) + **(v0[10] + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_beginTransactionBlock));
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);

  return v9();
}

{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);
  }

  else
  {
    v4 = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v12 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[3];
    v3 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v11);
    _os_log_impl(&dword_264F1F000, v1, v2, "PersistenceQueue running work { transactionID: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v10 = (v0[5] + *v0[5]);
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);
  v8 = v0[12];

  return v10(v8);
}

{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);
  }

  else
  {
    v4 = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v16 = v0;
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  v5 = *(v3 + 32);
  v0[22] = v5;
  v0[23] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v5(v1, v2, v4);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[3];
    v8 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v15);
    _os_log_impl(&dword_264F1F000, v6, v7, "PersistenceQueue ending transaction { transactionID: %s }", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  v14 = (*(v0[10] + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_endTransactionBlock) + **(v0[10] + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_endTransactionBlock));
  v12 = swift_task_alloc();
  v0[24] = v12;
  *v12 = v0;
  v12[1] = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);

  return v14();
}

{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);
  }

  else
  {
    v4 = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 80);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  (*(v0 + 176))(*(v0 + 16), *(v0 + 104), *(v0 + 72));
  $defer #1 <A>() in MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:)(v1, v3, v2);

  v4 = *(v0 + 8);

  return v4();
}

{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);
  }

  else
  {
    v4 = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);
  }

  else
  {
    v4 = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v12 = v0;
  v1 = *(v0 + 152);
  *(v0 + 248) = 0;
  *(v0 + 208) = v1;

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v11);
    _os_log_impl(&dword_264F1F000, v2, v3, "PersistenceQueue rolling back transaction { transactionID: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v10 = (*(*(v0 + 80) + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_rollbackTransactionBlock) + **(*(v0 + 80) + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_rollbackTransactionBlock));
  v8 = swift_task_alloc();
  *(v0 + 216) = v8;
  *v8 = v0;
  v8[1] = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);

  return v10();
}

{
  v12 = v0;
  v1 = *(v0 + 168);
  *(v0 + 248) = 0;
  *(v0 + 208) = v1;

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v11);
    _os_log_impl(&dword_264F1F000, v2, v3, "PersistenceQueue rolling back transaction { transactionID: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v10 = (*(*(v0 + 80) + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_rollbackTransactionBlock) + **(*(v0 + 80) + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_rollbackTransactionBlock));
  v8 = swift_task_alloc();
  *(v0 + 216) = v8;
  *v8 = v0;
  v8[1] = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);

  return v10();
}

{
  v12 = v0;
  v1 = *(v0 + 200);
  *(v0 + 248) = 1;
  *(v0 + 208) = v1;

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v11);
    _os_log_impl(&dword_264F1F000, v2, v3, "PersistenceQueue rolling back transaction { transactionID: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v10 = (*(*(v0 + 80) + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_rollbackTransactionBlock) + **(*(v0 + 80) + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_rollbackTransactionBlock));
  v8 = swift_task_alloc();
  *(v0 + 216) = v8;
  *v8 = v0;
  v8[1] = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);

  return v10();
}

{
  v1 = *(v0 + 248);

  if (v1 == 1)
  {
    (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 72));
  }

  $defer #1 <A>() in MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:)(*(v0 + 80), *(v0 + 24), *(v0 + 32));

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 248);

  if (v1 == 1)
  {
    (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 72));
  }

  $defer #1 <A>() in MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:)(*(v0 + 80), *(v0 + 24), *(v0 + 32));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:)(uint64_t a1)
{
  v2 = *(v1 + 56);
  if (v2)
  {
    v7 = (v2 + *v2);
    v3 = swift_task_alloc();
    *(v1 + 232) = v3;
    *v3 = v1;
    v3[1] = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);

    return v7();
  }

  else
  {
    v5 = *(v1 + 248);
    swift_willThrow();
    if (v5 == 1)
    {
      (*(*(v1 + 88) + 8))(*(v1 + 104), *(v1 + 72));
    }

    $defer #1 <A>() in MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:)(*(v1 + 80), *(v1 + 24), *(v1 + 32));

    v6 = *(v1 + 8);

    return v6();
  }
}

{
  v2 = *(v1 + 248);
  swift_willThrow();
  if (v2 == 1)
  {
    (*(*(v1 + 88) + 8))(*(v1 + 104), *(v1 + 72));
  }

  $defer #1 <A>() in MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:)(*(v1 + 80), *(v1 + 24), *(v1 + 32));

  v3 = *(v1 + 8);

  return v3();
}

uint64_t closure #1 in MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v74 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v71 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySS__GSgMd, &_sScS12ContinuationV11YieldResultOySS__GSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v75 = &v71 - v11;
  v12 = type metadata accessor for MLS.PersistenceQueue.QueueItem(0);
  v13 = *(v12 - 8);
  v76 = v12;
  v77 = v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v71 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v71 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = (&v71 - v23);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v78 = a3;
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v26 = *(*a2 + 128);
  v27 = *(v26(isCurrentExecutor) + 16);

  if (v27)
  {
    v73 = v9;
    v72 = *(v26(v28) + 16);

    v30 = v26(v29);
    if (*(v30 + 16))
    {
      outlined init with copy of MLS.PersistenceQueue.QueueItem(v30 + ((*(v77 + 80) + 32) & ~*(v77 + 80)), v22);

      outlined init with take of MLS.PersistenceQueue.QueueItem(v22, v19);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v32 = *v19;
      v33 = v19[1];
      if (EnumCaseMultiPayload == 1)
      {
        v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS13transactionID_ScCyyts5NeverOG12continuationtMd, &_sSS13transactionID_ScCyyts5NeverOG12continuationtMR) + 48);
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
        (*(*(v35 - 8) + 8))(v19 + v34, v35);
      }
    }

    else
    {

      v32 = 0;
      v33 = 0xE000000000000000;
    }

    v41 = v78;

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v79[0] = v45;
      *v44 = 136315650;
      *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, a4, v79);
      *(v44 + 12) = 2048;
      *(v44 + 14) = v72;
      *(v44 + 22) = 2080;
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v79);

      *(v44 + 24) = v46;
      v41 = v78;
      _os_log_impl(&dword_264F1F000, v42, v43, "PersistenceQueue queue is not empty, holding { transactionID: %s, queue.count: %ld, runningTransaction: %s }", v44, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v45, -1, -1);
      MEMORY[0x266755550](v44, -1, -1);
    }

    else
    {
    }

    v9 = v73;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS13transactionID_ScCyyts5NeverOG12continuationtMd, &_sSS13transactionID_ScCyyts5NeverOG12continuationtMR) + 48);
    *v16 = v41;
    v16[1] = a4;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    (*(*(v48 - 8) + 16))(v16 + v47, v74, v48);
    swift_storeEnumTagMultiPayload();
    v49 = *(*a2 + 144);

    v50 = v49(v79);
    v52 = v51;
    v53 = *v51;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v52 = v53;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v53[2] + 1, 1, v53);
      *v52 = v53;
    }

    v56 = v53[2];
    v55 = v53[3];
    if (v56 >= v55 >> 1)
    {
      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v53);
      *v52 = v53;
    }

    v53[2] = v56 + 1;
    outlined init with take of MLS.PersistenceQueue.QueueItem(v16, v53 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v56);
    v50(v79, 0);
  }

  else
  {

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v79[0] = v39;
      *v38 = 136315138;
      v40 = v78;
      *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, a4, v79);
      _os_log_impl(&dword_264F1F000, v36, v37, "PersistenceQueue queue is empty, running immediately { transactionID: %s }", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x266755550](v39, -1, -1);
      MEMORY[0x266755550](v38, -1, -1);
    }

    else
    {

      v40 = v78;
    }

    *v24 = v40;
    v24[1] = a4;
    swift_storeEnumTagMultiPayload();
    v57 = *(*a2 + 144);

    v58 = v57(v79);
    v60 = v59;
    v61 = *v59;
    v62 = swift_isUniquelyReferenced_nonNull_native();
    *v60 = v61;
    if ((v62 & 1) == 0)
    {
      v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61[2] + 1, 1, v61);
      *v60 = v61;
    }

    v64 = v61[2];
    v63 = v61[3];
    if (v64 >= v63 >> 1)
    {
      v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v61);
      *v60 = v61;
    }

    v61[2] = v64 + 1;
    outlined init with take of MLS.PersistenceQueue.QueueItem(v24, v61 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v64);
    v58(v79, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    CheckedContinuation.resume(returning:)();
    v41 = v78;
  }

  outlined init with copy of AsyncStream<String>.Continuation?(a2 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_queueingPublisher, v9);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GMd, &_sScS12ContinuationVySS_GMR);
  v66 = *(v65 - 8);
  if ((*(v66 + 48))(v9, 1, v65) == 1)
  {
    outlined destroy of NSObject?(v9, &_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
    v67 = 1;
    v68 = v75;
  }

  else
  {
    v79[0] = v41;
    v79[1] = a4;

    v68 = v75;
    AsyncStream.Continuation.yield(_:)();
    (*(v66 + 8))(v9, v65);
    v67 = 0;
  }

  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySS__GMd, &_sScS12ContinuationV11YieldResultOySS__GMR);
  (*(*(v69 - 8) + 56))(v68, v67, 1, v69);
  return outlined destroy of NSObject?(v68, &_sScS12ContinuationV11YieldResultOySS__GSgMd, &_sScS12ContinuationV11YieldResultOySS__GSgMR);
}

uint64_t (*$defer #1 <A>() in MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:)(uint64_t a1, uint64_t a2, unint64_t a3))(uint64_t *, void)
{
  v59 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = v55 - v6;
  v60 = type metadata accessor for MLS.PersistenceQueue.QueueItem(0);
  v7 = *(v60 - 8);
  v8 = MEMORY[0x28223BE20](v60);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (v55 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v55 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v55 - v17;
  v19 = OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_logger;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v61 = v10;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v55[1] = v19;
    v24 = v16;
    v25 = v13;
    v26 = v18;
    v27 = v7;
    v28 = v23;
    v29 = swift_slowAlloc();
    v62[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, a3, v62);
    _os_log_impl(&dword_264F1F000, v20, v21, "PersistenceQueue completing transaction { transactionID: %s }", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x266755550](v29, -1, -1);
    v30 = v28;
    v7 = v27;
    v18 = v26;
    v13 = v25;
    v16 = v24;
    MEMORY[0x266755550](v30, -1, -1);
  }

  result = (*(*a1 + 144))(v62);
  if (*(*v32 + 16))
  {
    v33 = result;
    specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    v34 = v33(v62, 0);
    v35 = *(*a1 + 128);
    v36 = v35(v34);
    if (*(v36 + 16))
    {
      outlined init with copy of MLS.PersistenceQueue.QueueItem(v36 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v18);

      v38 = *(v35(v37) + 16);

      outlined init with copy of MLS.PersistenceQueue.QueueItem(v18, v16);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v62[0] = v42;
        *v41 = 136315394;
        outlined init with take of MLS.PersistenceQueue.QueueItem(v16, v13);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v45 = *v13;
        v44 = v13[1];
        if (EnumCaseMultiPayload == 1)
        {
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS13transactionID_ScCyyts5NeverOG12continuationtMd, &_sSS13transactionID_ScCyyts5NeverOG12continuationtMR);
          (*(v57 + 8))(v13 + *(v46 + 48), v58);
        }

        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v44, v62);

        *(v41 + 4) = v47;
        *(v41 + 12) = 2048;
        *(v41 + 14) = v38;
        _os_log_impl(&dword_264F1F000, v39, v40, "PersistenceQueue running next transaction { nextTransactionID: %s, queueCount: %ld }", v41, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        MEMORY[0x266755550](v42, -1, -1);
        MEMORY[0x266755550](v41, -1, -1);
      }

      else
      {

        outlined destroy of MLS.PersistenceQueue.QueueItem(v16);
      }

      v48 = v61;
      outlined init with copy of MLS.PersistenceQueue.QueueItem(v18, v61);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS13transactionID_ScCyyts5NeverOG12continuationtMd, &_sSS13transactionID_ScCyyts5NeverOG12continuationtMR);
        v50 = v56;
        v51 = v57;
        v52 = v48 + *(v49 + 48);
        v53 = v58;
        (*(v57 + 32))(v56, v52, v58);
        CheckedContinuation.resume(returning:)();
        (*(v51 + 8))(v50, v53);
        v54 = v18;
      }

      else
      {
        outlined destroy of MLS.PersistenceQueue.QueueItem(v18);
        v54 = v48;
      }

      return outlined destroy of MLS.PersistenceQueue.QueueItem(v54);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MLS.PersistenceQueue.deinit()
{

  v1 = OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  outlined destroy of NSObject?(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_queueingPublisher, &_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
  return v0;
}

uint64_t MLS.PersistenceQueue.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  outlined destroy of NSObject?(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_queueingPublisher, &_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);

  return swift_deallocClassInstance();
}

uint64_t sub_264FD9DE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_264FD9E2C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 136);

  return v2(v3);
}

void type metadata completion function for MLS.PersistenceQueue(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AsyncStream<String>.Continuation?(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = (*(*v8 + 160) + **(*v8 + 160));
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v20(a1, a2, a3, a4, a5, a6, a7, a8);
}

void type metadata accessor for AsyncStream<String>.Continuation?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AsyncStream<String>.Continuation?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScS12ContinuationVySS_GMd, &_sScS12ContinuationVySS_GMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AsyncStream<String>.Continuation?);
    }
  }
}

void type metadata completion function for MLS.PersistenceQueue.QueueItem(uint64_t a1)
{
  type metadata accessor for (transactionID: String)();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (transactionID: String, continuation: CheckedContinuation<(), Never>)(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for (transactionID: String)()
{
  result = lazy cache variable for type metadata for (transactionID: String);
  if (!lazy cache variable for type metadata for (transactionID: String))
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &lazy cache variable for type metadata for (transactionID: String));
  }

  return result;
}

void type metadata accessor for (transactionID: String, continuation: CheckedContinuation<(), Never>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (transactionID: String, continuation: CheckedContinuation<(), Never>))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (transactionID: String, continuation: CheckedContinuation<(), Never>));
    }
  }
}

uint64_t outlined init with take of MLS.PersistenceQueue.QueueItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.PersistenceQueue.QueueItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t MLS.KeyPackageRetrievalResult.uriToSwiftMLSKeyPackage.getter(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for MLS.Client.KeyPackage();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v108 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v76 - v10;
  v101 = a1;
  v12 = *(a1 + 16);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v9);
  v104 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v80 = &v76 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMR);
  v105 = v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v87 = type metadata accessor for Optional();
  v18 = *(v87 - 8);
  v19 = MEMORY[0x28223BE20](v87);
  v86 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v85 = &v76 - v21;
  v22 = *v1;

  v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8SwiftMLS0D0O6ClientO10KeyPackageVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v24 = v23;
  v25 = 0;
  v27 = v22 + 64;
  v26 = *(v22 + 64);
  v88 = v22;
  v28 = 1 << *(v22 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v26;
  v77 = (v28 + 63) >> 6;
  v89 = TupleTypeMetadata2;
  v84 = TupleTypeMetadata2 - 8;
  v79 = v13 + 16;
  v92 = (v13 + 32);
  v83 = (v18 + 32);
  v100 = (v6 + 16);
  v95 = v6 + 32;
  v96 = v6 + 8;
  v98 = v6;
  v94 = v6 + 40;
  v81 = v13;
  v82 = (v13 + 8);
  v93 = v23;
  v78 = v22 + 64;
  v99 = v5;
  v97 = v11;
  if ((v29 & v26) == 0)
  {
LABEL_5:
    if (v77 <= v25 + 1)
    {
      v32 = v25 + 1;
    }

    else
    {
      v32 = v77;
    }

    v33 = v32 - 1;
    v34 = v89;
    while (1)
    {
      v31 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_40;
      }

      if (v31 >= v77)
      {
        v45 = *(v89 - 8);
        v43 = v86;
        (*(v45 + 56))(v86, 1, 1, v89);
        v90 = 0;
        v91 = v33;
        goto LABEL_14;
      }

      v30 = *(v27 + 8 * v31);
      ++v25;
      if (v30)
      {
        v91 = v31;
        goto LABEL_13;
      }
    }
  }

  while (1)
  {
    v91 = v25;
    v31 = v25;
LABEL_13:
    v90 = (v30 - 1) & v30;
    v35 = __clz(__rbit64(v30)) | (v31 << 6);
    v36 = v88;
    v37 = v81;
    v38 = v80;
    v39 = v105;
    (*(v81 + 16))(v80, *(v88 + 48) + *(v81 + 72) * v35, v105);
    v40 = *(*(v36 + 56) + 8 * v35);
    v41 = *(v89 + 48);
    v42 = *(v37 + 32);
    v43 = v86;
    v44 = v39;
    v34 = v89;
    v42(v86, v38, v44);
    *&v43[v41] = v40;
    v45 = *(v34 - 8);
    (*(v45 + 56))(v43, 0, 1, v34);

LABEL_14:
    v46 = v85;
    (*v83)(v85, v43, v87);
    if ((*(v45 + 48))(v46, 1, v34) == 1)
    {
LABEL_37:

      return v93;
    }

    v47 = *&v46[*(v34 + 48)];
    (*v92)(v104, v46, v105);
    v103 = *(v47 + 16);
    if (v103)
    {
      break;
    }

    v50 = v24;
    v53 = v93;
LABEL_33:
    (*v82)(v104, v105);

    v24 = v50;
    v93 = v53;
    v27 = v78;
    v30 = v90;
    v25 = v91;
    if (!v90)
    {
      goto LABEL_5;
    }
  }

  v48 = 0;
  v49 = (v47 + 40);
  v102 = v47;
  while (v48 < *(v47 + 16))
  {
    v107 = v48;
    v54 = *(v49 - 1);
    v55 = *v49;
    outlined copy of Data._Representation(v54, *v49);
    outlined copy of Data._Representation(v54, v55);
    MLS.Client.KeyPackage.init(fromRaw:)();
    if (v3)
    {
      (*v82)(v104, v105);
      outlined consume of Data._Representation(v54, v55);

      goto LABEL_37;
    }

    v106 = 0;
    (*(*(v101 + 24) + 32))(v109, v105);
    v56 = v11;
    v57 = v109[0];
    v58 = v109[1];
    (*v100)(v108, v56, v5);
    v59 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v110 = v24;
    v62 = specialized __RawDictionaryStorage.find<A>(_:)(v57, v58);
    v63 = v24[2];
    v64 = (v61 & 1) == 0;
    v65 = v63 + v64;
    if (__OFADD__(v63, v64))
    {
      goto LABEL_39;
    }

    v66 = v61;
    if (v59[3] >= v65)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v61)
        {
          goto LABEL_17;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v66)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v65, isUniquelyReferenced_nonNull_native);
      v67 = specialized __RawDictionaryStorage.find<A>(_:)(v57, v58);
      if ((v66 & 1) != (v68 & 1))
      {
        goto LABEL_42;
      }

      v62 = v67;
      if (v66)
      {
LABEL_17:

        v50 = v110;
        v51 = v98;
        v52 = v110[7] + *(v98 + 72) * v62;
        v5 = v99;
        (*(v98 + 40))(v52, v108, v99);
        outlined consume of Data._Representation(v54, v55);
        v11 = v97;
        (*(v51 + 8))(v97, v5);
        goto LABEL_18;
      }
    }

    v50 = v110;
    v110[(v62 >> 6) + 8] |= 1 << v62;
    v69 = (v50[6] + 16 * v62);
    *v69 = v57;
    v69[1] = v58;
    v70 = v98;
    v71 = v50[7] + *(v98 + 72) * v62;
    v5 = v99;
    (*(v98 + 32))(v71, v108, v99);
    outlined consume of Data._Representation(v54, v55);
    v11 = v97;
    (*(v70 + 8))(v97, v5);
    v72 = v50[2];
    v73 = __OFADD__(v72, 1);
    v74 = v72 + 1;
    if (v73)
    {
      goto LABEL_41;
    }

    v50[2] = v74;
LABEL_18:
    v3 = v106;
    v48 = v107 + 1;
    v49 += 2;
    v24 = v50;
    v53 = v50;
    v47 = v102;
    if (v103 == v107 + 1)
    {
      goto LABEL_33;
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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t MLS.KeyPackageInfo.rawKeyPackage.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.KeyPackageInfo.init(keyPackage:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t MLS.KeyPackageInfo.description.getter()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v1 = [(objc_class *)isa description];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v2;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.KeyPackageInfo.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x615079654B776172 && a2 == 0xED00006567616B63)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.KeyPackageInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.KeyPackageInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.KeyPackageInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO14KeyPackageInfoV10CodingKeys33_EC616C31DBECBCAD97387E30C98096B5LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO14KeyPackageInfoV10CodingKeys33_EC616C31DBECBCAD97387E30C98096B5LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Data._Representation(v7, v8);
  lazy protocol witness table accessor for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  v11 = v8;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

uint64_t MLS.KeyPackageInfo.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO14KeyPackageInfoV10CodingKeys33_EC616C31DBECBCAD97387E30C98096B5LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO14KeyPackageInfoV10CodingKeys33_EC616C31DBECBCAD97387E30C98096B5LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.KeyPackageInfo()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v1 = [(objc_class *)isa description];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v2;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.KeyPackageRetrievalContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.KeyPackageRetrievalContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.KeyPackageRetrievalContext.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO26KeyPackageRetrievalContextV10CodingKeys33_EC616C31DBECBCAD97387E30C98096B5LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO26KeyPackageRetrievalContextV10CodingKeys33_EC616C31DBECBCAD97387E30C98096B5LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance MLS.KeyPackageRetrievalContext(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO26KeyPackageRetrievalContextV10CodingKeys33_EC616C31DBECBCAD97387E30C98096B5LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO26KeyPackageRetrievalContextV10CodingKeys33_EC616C31DBECBCAD97387E30C98096B5LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t MLS.KeyPackageRetrievalResult.description.getter(uint64_t a1)
{

  _StringGuts.grow(_:)(29);
  MEMORY[0x2667545A0](0xD00000000000001ALL, 0x80000002651E9810);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMR);
  type metadata accessor for Dictionary();
  swift_getWitnessTable();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();

  MEMORY[0x2667545A0](41, 0xE100000000000000);
  return 0;
}

uint64_t static MLS.KeyPackageRetrievalResult.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMR);
  v9 = *(a4 + 24);
  v10 = lazy protocol witness table accessor for type [MLS.KeyPackageInfo] and conformance <A> [A](&lazy protocol witness table cache variable for type [MLS.KeyPackageInfo] and conformance <A> [A], lazy protocol witness table accessor for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo, MEMORY[0x277D83968]);

  return MEMORY[0x2821FB928](v6, v7, a3, v8, v9, v10);
}

uint64_t MLS.KeyPackageRetrievalResult.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000002651E9830 == a2)
  {

    v2 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v2 = v3 ^ 1;
  }

  return v2 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.KeyPackageRetrievalResult<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MLS.KeyPackageRetrievalResult.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLS.KeyPackageRetrievalResult<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static Equatable.== infix(_:_:) in conformance MLS.IncomingEventType<A, B>.ApplicationMessageCodingKeys();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.KeyPackageRetrievalResult<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.KeyPackageRetrievalResult<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.KeyPackageRetrievalResult.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v15[0] = *(a2 + 24);
  v15[1] = v6;
  type metadata accessor for MLS.KeyPackageRetrievalResult.CodingKeys(255, v6, v15[0], a4);
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v16 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  v10 = *v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMR);
  v11 = v15[0];
  type metadata accessor for Dictionary();
  v12 = *(v11 + 16);
  v13 = lazy protocol witness table accessor for type [MLS.KeyPackageInfo] and conformance <A> [A](&lazy protocol witness table cache variable for type [MLS.KeyPackageInfo] and conformance <A> [A], lazy protocol witness table accessor for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo, MEMORY[0x277D83948]);
  v17 = v12;
  v18 = v13;
  swift_getWitnessTable();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v16 + 8))(v9, v7);
}

uint64_t MLS.KeyPackageRetrievalResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  v17 = a4;
  v18 = a2;
  type metadata accessor for MLS.KeyPackageRetrievalResult.CodingKeys(255, a2, a3, a5);
  swift_getWitnessTable();
  v19 = type metadata accessor for KeyedDecodingContainer();
  v8 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v5)
  {
    v11 = v17;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMR);
    type metadata accessor for Dictionary();
    v12 = *(a3 + 8);
    v13 = lazy protocol witness table accessor for type [MLS.KeyPackageInfo] and conformance <A> [A](&lazy protocol witness table cache variable for type [MLS.KeyPackageInfo] and conformance <A> [A], lazy protocol witness table accessor for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo, MEMORY[0x277D83978]);
    v20 = v12;
    v21 = v13;
    swift_getWitnessTable();
    v14 = v19;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v8 + 8))(v10, v14);
    *v11 = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15SecureMessaging15KDSRegistrationO8Listener_pSgyYbcGMd, _ss18_DictionaryStorageCySi15SecureMessaging15KDSRegistrationO8Listener_pSgyYbcGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = MEMORY[0x266754DC0](*(v7 + 40), v20);
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for XPCUtils.XPCInterfaceRequest(0);
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVGMd, &_ss18_DictionaryStorageCySi15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v36 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v37)
      {
        outlined init with take of XPCUtils.XPCInterfaceRequest(v25, v7, type metadata accessor for XPCUtils.XPCInterfaceRequest);
      }

      else
      {
        outlined init with copy of XPCUtils.XPCInterfaceRequest(v25, v7, type metadata accessor for XPCUtils.XPCInterfaceRequest);
      }

      result = MEMORY[0x266754DC0](*(v10 + 40), v23);
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = outlined init with take of XPCUtils.XPCInterfaceRequest(v7, *(v10 + 56) + v24 * v18, type metadata accessor for XPCUtils.XPCInterfaceRequest);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15SecureMessaging8XPCUtilsO10XPCRequest_pGMd, &_ss18_DictionaryStorageCySi15SecureMessaging8XPCUtilsO10XPCRequest_pGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        outlined init with take of MLS.KeyUpdatePolicy(v21, v31);
      }

      else
      {
        outlined init with copy of ServerBag.MLS(v21, v31);
      }

      result = MEMORY[0x266754DC0](*(v7 + 40), v20);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = outlined init with take of MLS.KeyUpdatePolicy(v31, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
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

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVAC4DataVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVAC4DataVGMR);
  v43 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v48 = v5;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v39 = v2;
    v40 = (v6 + 16);
    v41 = v8;
    v42 = v6;
    v45 = (v6 + 32);
    v17 = result + 64;
    v18 = v44;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v22 = (v15 - 1) & v15;
LABEL_15:
      v25 = v21 | (v11 << 6);
      v26 = *(v8 + 48) + *(v42 + 72) * v25;
      v46 = *(v42 + 72);
      v47 = v22;
      if (v43)
      {
        (*v45)(v18, v26, v48);
        v27 = (*(v8 + 56) + 16 * v25);
        v29 = *v27;
        v28 = v27[1];
      }

      else
      {
        (*v40)(v18, v26, v48);
        v30 = (*(v8 + 56) + 16 * v25);
        v29 = *v30;
        v28 = v30[1];
        outlined copy of Data._Representation(*v30, v28);
      }

      lazy protocol witness table accessor for type UUID and conformance UUID();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v18 = v44;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v18 = v44;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v10 + 48) + v46 * v19, v18, v48);
      v20 = (*(v10 + 56) + 16 * v19);
      *v20 = v29;
      v20[1] = v28;
      ++*(v10 + 16);
      v8 = v41;
      v15 = v47;
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v8 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for MetricCollector.Event(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15SecureMessaging15MetricCollectorV5EventVGMd, &_ss18_DictionaryStorageCySS15SecureMessaging15MetricCollectorV5EventVGMR);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        outlined init with take of XPCUtils.XPCInterfaceRequest(v28, v41, type metadata accessor for MetricCollector.Event);
      }

      else
      {
        outlined init with copy of XPCUtils.XPCInterfaceRequest(v28, v41, type metadata accessor for MetricCollector.Event);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = outlined init with take of XPCUtils.XPCInterfaceRequest(v41, *(v9 + 56) + v27 * v17, type metadata accessor for MetricCollector.Event);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v45 = type metadata accessor for MLS.Client.KeyPackage();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8SwiftMLS0D0O6ClientO10KeyPackageVGMd, &_ss18_DictionaryStorageCySS8SwiftMLS0D0O6ClientO10KeyPackageVGMR);
  v42 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS15SecureMessaging3MLSO10EventQueueCGMd, &_ss18_DictionaryStorageCySS15SecureMessaging3MLSO10EventQueueCGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO9AllMemberOSayAE14KeyPackageInfoVGGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO9AllMemberOSayAE14KeyPackageInfoVGGMR);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
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
    while (1)
    {
      if (!v12)
      {
        v19 = v8;
        while (1)
        {
          v8 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_41;
          }

          if (v8 >= v13)
          {
            break;
          }

          v20 = v9[v8];
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v12 = (v20 - 1) & v20;
            goto LABEL_15;
          }
        }

        if ((v39 & 1) == 0)
        {

          v3 = v37;
          goto LABEL_39;
        }

        v36 = 1 << *(v5 + 32);
        v3 = v37;
        if (v36 >= 64)
        {
          bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v36;
        }

        *(v5 + 16) = 0;
        break;
      }

      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 32 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v40 = *(v23 + 16);
      v26 = *(v23 + 24);
      v27 = *(v22 + 8 * v21);
      if ((v39 & 1) == 0)
      {
        outlined copy of MLS.AllMember(v24, v25);
      }

      Hasher.init(_seed:)();
      if (v26 < 0)
      {
        MEMORY[0x266754DE0](1);
        String.hash(into:)();
        MEMORY[0x266754DE0](0);
        if (v26)
        {
          Hasher._combine(_:)(0);
          goto LABEL_23;
        }

        Hasher._combine(_:)(1u);
        v28 = v40;
      }

      else
      {
        MEMORY[0x266754DE0](0);
        String.hash(into:)();
        v28 = 0;
      }

      MEMORY[0x266754DE0](v28);
LABEL_23:
      result = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v16 = v27;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v16 = v27;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = *(v7 + 48) + 32 * v15;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v40;
      *(v17 + 24) = v26;
      *(*(v7 + 56) + 8 * v15) = v16;
      ++*(v7 + 16);
      v5 = v38;
    }
  }

LABEL_39:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataV15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVGMd, &_ss18_DictionaryStorageCy10Foundation4DataV15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVGMR);
  v34 = v4;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(*(v5 + 48) + 16 * v21);
      v23 = (*(v5 + 56) + 32 * v21);
      v24 = v23[1];
      v25 = v23[3];
      v35 = v23[2];
      v36 = *v23;
      v37 = v22;
      if ((v34 & 1) == 0)
      {
        outlined copy of Data._Representation(v22, *(&v22 + 1));
      }

      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v16 = v37;
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
      v16 = v37;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      v17 = (*(v7 + 56) + 32 * v15);
      *v17 = v36;
      v17[1] = v24;
      v17[2] = v35;
      v17[3] = v25;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV10Foundation4DataVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV10Foundation4DataVGMR);
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
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 32 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[3];
      v37 = v22[2];
      v36 = *(v21 + 16 * v20);
      if ((v35 & 1) == 0)
      {

        outlined copy of Data._Representation(v36, *(&v36 + 1));
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
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
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v23;
      v16[1] = v24;
      v16[2] = v37;
      v16[3] = v25;
      *(*(v7 + 56) + 16 * v15) = v36;
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

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pGMd, &_ss18_DictionaryStorageCySS15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pGMR);
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
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        outlined init with take of MLS.KeyUpdatePolicy(v24, v34);
      }

      else
      {
        outlined init with copy of ServerBag.MLS(v24, v34);
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
      result = outlined init with take of MLS.KeyUpdatePolicy(v34, *(v7 + 56) + 40 * v15);
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

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVSayAE15PersistedMemberVGGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVSayAE15PersistedMemberVGGMR);
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
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 32 * v20);
      v23 = v22[1];
      v37 = *v22;
      v24 = v22[3];
      v36 = v22[2];
      v25 = *(v21 + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
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
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v37;
      v16[1] = v23;
      v16[2] = v36;
      v16[3] = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
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

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSEpochStoreIDV10Foundation4DataVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSEpochStoreIDV10Foundation4DataVGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
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
      v38 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 48 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      v26 = v22[3];
      v40 = v22[5];
      v41 = v22[4];
      v39 = *(v21 + 16 * v20);
      if ((v37 & 1) == 0)
      {

        outlined copy of Data._Representation(v25, v26);
        outlined copy of Data._Representation(v39, *(&v39 + 1));
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      Data.hash(into:)();
      MEMORY[0x266754E10](v41);
      MEMORY[0x266754E10](v40);
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 48 * v15);
      *v16 = v23;
      v16[1] = v24;
      v16[2] = v25;
      v16[3] = v26;
      v16[4] = v41;
      v16[5] = v40;
      *(*(v7 + 56) + 16 * v15) = v39;
      ++*(v7 + 16);
      v5 = v36;
      v12 = v38;
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
        v38 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSGroupStoreIDV10Foundation4DataVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSGroupStoreIDV10Foundation4DataVGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
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
      v38 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 32 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      v26 = v22[3];
      v39 = *(v21 + 16 * v20);
      if ((v37 & 1) == 0)
      {

        outlined copy of Data._Representation(v25, v26);
        outlined copy of Data._Representation(v39, *(&v39 + 1));
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      Data.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v23;
      v16[1] = v24;
      v16[2] = v25;
      v16[3] = v26;
      *(*(v7 + 56) + 16 * v15) = v39;
      ++*(v7 + 16);
      v5 = v36;
      v12 = v38;
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
        v38 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAG08OutgoingJ5EntryVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAG08OutgoingJ5EntryVGMR);
  v48 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v44 = v2;
    v8 = 0;
    v46 = (v5 + 64);
    v47 = v5;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v45 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v18 = (v11 - 1) & v11;
LABEL_15:
      v22 = v17 | (v8 << 6);
      v54 = v18;
      if (v48)
      {
        v23 = (*(v5 + 48) + 48 * v22);
        v24 = *v23;
        v25 = v23[1];
        v27 = v23[2];
        v26 = v23[3];
        v56 = v23[4];
        v55 = v23[5];
        v28 = *(v5 + 56) + 296 * v22;
        v65 = *(v28 + 128);
        v66 = *(v28 + 144);
        v67 = *(v28 + 160);
        v68 = *(v28 + 176);
        v61 = *(v28 + 64);
        v62 = *(v28 + 80);
        v63 = *(v28 + 96);
        v64 = *(v28 + 112);
        v57 = *v28;
        v58 = *(v28 + 16);
        v59 = *(v28 + 32);
        v60 = *(v28 + 48);
        v29 = *(v28 + 200);
        v30 = *(v28 + 232);
        v72 = *(v28 + 216);
        v73 = v30;
        v31 = *(v28 + 256);
        v74 = *(v28 + 248);
        v70 = *(v28 + 184);
        v71 = v29;
        v52 = *(v28 + 264);
        v53 = v31;
        v50 = *(v28 + 272);
        v49 = *(v28 + 280);
        v51 = *(v28 + 288);
      }

      else
      {
        v32 = *(v5 + 56);
        v33 = (*(v5 + 48) + 48 * v22);
        v34 = *v33;
        v25 = v33[1];
        v27 = v33[2];
        v26 = v33[3];
        v35 = v33[5];
        v56 = v33[4];
        memcpy(__dst, (v32 + 296 * v22), 0x128uLL);
        v52 = *(&__dst[16] + 1);
        v53 = *&__dst[16];
        v50 = *&__dst[17];
        v51 = *&__dst[18];
        v49 = BYTE8(__dst[17]);

        v55 = v35;

        outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(__dst, &v57);
        v65 = __dst[8];
        v66 = __dst[9];
        v67 = __dst[10];
        v68 = __dst[11];
        v61 = __dst[4];
        v62 = __dst[5];
        v63 = __dst[6];
        v64 = __dst[7];
        v57 = __dst[0];
        v58 = __dst[1];
        v59 = __dst[2];
        v60 = __dst[3];
        v72 = *(&__dst[13] + 8);
        v73 = *(&__dst[14] + 8);
        v74 = *(&__dst[15] + 1);
        v24 = v34;
        v70 = *(&__dst[11] + 8);
        v71 = *(&__dst[12] + 8);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      String.hash(into:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v36 = -1 << *(v7 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v12 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v14 = v25;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v12 + 8 * v38);
          if (v42 != -1)
          {
            v13 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v37) & ~*(v12 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v14 = v25;
LABEL_7:
      __dst[8] = v65;
      __dst[9] = v66;
      __dst[10] = v67;
      __dst[4] = v61;
      __dst[5] = v62;
      __dst[6] = v63;
      __dst[7] = v64;
      __dst[0] = v57;
      __dst[1] = v58;
      __dst[2] = v59;
      __dst[3] = v60;
      *(&__dst[11] + 8) = v70;
      *(&__dst[14] + 8) = v73;
      *(&__dst[13] + 8) = v72;
      LOBYTE(__dst[11]) = v68;
      *(&__dst[15] + 1) = v74;
      *(&__dst[12] + 8) = v71;
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v15 = (*(v7 + 48) + 48 * v13);
      *v15 = v24;
      v15[1] = v14;
      v15[2] = v27;
      v15[3] = v26;
      v15[4] = v56;
      v15[5] = v55;
      v16 = *(v7 + 56) + 296 * v13;
      *(v16 + 48) = __dst[3];
      *(v16 + 32) = __dst[2];
      *(v16 + 16) = __dst[1];
      *v16 = __dst[0];
      *(v16 + 112) = __dst[7];
      *(v16 + 96) = __dst[6];
      *(v16 + 80) = __dst[5];
      *(v16 + 64) = __dst[4];
      *(v16 + 176) = __dst[11];
      *(v16 + 160) = __dst[10];
      *(v16 + 144) = __dst[9];
      *(v16 + 128) = __dst[8];
      *(v16 + 240) = __dst[15];
      *(v16 + 224) = __dst[14];
      *(v16 + 208) = __dst[13];
      *(v16 + 192) = __dst[12];
      *(v16 + 256) = v53;
      *(v16 + 264) = v52;
      *(v16 + 272) = v50;
      *(v16 + 280) = v49;
      *(v16 + 288) = v51;
      ++*(v7 + 16);
      v5 = v47;
      v11 = v54;
    }

    v19 = v8;
    result = v46;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v45)
      {
        break;
      }

      v21 = v46[v8];
      ++v19;
      if (v21)
      {
        v17 = __clz(__rbit64(v21));
        v18 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_34;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v46, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v46 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAG08IncomingJ5EntryVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAG08IncomingJ5EntryVGMR);
  v51 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v47 = v2;
    v8 = 0;
    v49 = (v5 + 64);
    v50 = v5;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v48 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v17 = (v11 - 1) & v11;
LABEL_15:
      v21 = v16 | (v8 << 6);
      v52 = v17;
      if (v51)
      {
        v22 = (*(v5 + 48) + 48 * v21);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = v22[4];
        v53 = v22[5];
        v28 = (*(v5 + 56) + 112 * v21);
        v64 = v28[3];
        v65 = v28[4];
        v66 = v28[5];
        v67 = v28[6];
        v61 = *v28;
        v62 = v28[1];
        v63 = v28[2];
      }

      else
      {
        v29 = *(v5 + 56);
        v30 = (*(v5 + 48) + 48 * v21);
        v23 = *v30;
        v24 = v30[1];
        v31 = v30[2];
        v26 = v30[3];
        v27 = v30[4];
        v32 = v30[5];
        v33 = (v29 + 112 * v21);
        v35 = v33[1];
        v34 = v33[2];
        v54 = *v33;
        v55 = v35;
        v56 = v34;
        v36 = v33[6];
        v38 = v33[3];
        v37 = v33[4];
        v59 = v33[5];
        v60 = v36;
        v57 = v38;
        v58 = v37;

        v53 = v32;
        v25 = v31;

        outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(&v54, &v61);
        v65 = v58;
        v66 = v59;
        v67 = v60;
        v61 = v54;
        v62 = v55;
        v63 = v56;
        v64 = v57;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      String.hash(into:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v39 = -1 << *(v7 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v12 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v12 + 8 * v41);
          if (v45 != -1)
          {
            v13 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v40) & ~*(v12 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v7 + 48) + 48 * v13);
      *v14 = v23;
      v14[1] = v24;
      v14[2] = v25;
      v14[3] = v26;
      v14[4] = v27;
      v14[5] = v53;
      v15 = (*(v7 + 56) + 112 * v13);
      v15[3] = v64;
      v15[4] = v65;
      v15[5] = v66;
      v15[6] = v67;
      *v15 = v61;
      v15[1] = v62;
      v15[2] = v63;
      ++*(v7 + 16);
      v5 = v50;
      v11 = v52;
    }

    v18 = v8;
    result = v49;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v48)
      {
        break;
      }

      v20 = v49[v8];
      ++v18;
      if (v20)
      {
        v16 = __clz(__rbit64(v20));
        v17 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v3 = v47;
      goto LABEL_34;
    }

    v46 = 1 << *(v5 + 32);
    v3 = v47;
    if (v46 >= 64)
    {
      bzero(v49, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v49 = -1 << v46;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVAE21EventsSinceLastUpdateVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVAE21EventsSinceLastUpdateVGMR);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 32 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[3];
      v27 = (v22 + 24 * v21);
      v40 = *v27;
      v41 = v23[2];
      v28 = v27[1];
      v39 = *(v27 + 16);
      if ((v38 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v24;
      v16[1] = v25;
      v16[2] = v41;
      v16[3] = v26;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v40;
      *(v17 + 8) = v28;
      *(v17 + 16) = v39;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17OutgoingEventTypeOy_AE9AllMemberO10Foundation4DataVG_AE0fG5StateVSgAE12GroupVersionVtGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17OutgoingEventTypeOy_AE9AllMemberO10Foundation4DataVG_AE0fG5StateVSgAE12GroupVersionVtGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17InMemoryPersisterC18OutgoingEventEntryVGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17InMemoryPersisterC18OutgoingEventEntryVGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17IncomingEventTypeOy_AE9AllMemberO10Foundation4DataVGGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17IncomingEventTypeOy_AE9AllMemberO10Foundation4DataVGGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17InMemoryPersisterC18IncomingEventEntryVGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17InMemoryPersisterC18IncomingEventEntryVGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO18OutgoingEventStateVGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO18OutgoingEventStateVGGMR);
}

{
  v3 = v2;
  v4 = a2;
  v45 = type metadata accessor for UUID();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierV10Foundation4UUIDVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierV10Foundation4UUIDVGMR);
  v42 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC19GroupMessageStoreIDVSiGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC19GroupMessageStoreIDVSiGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
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
      v38 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 48 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[3];
      v41 = v22[2];
      v26 = v22[5];
      v39 = *(v21 + 8 * v20);
      v40 = v22[4];
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      String.hash(into:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 48 * v15);
      *v16 = v23;
      v16[1] = v24;
      v16[2] = v41;
      v16[3] = v25;
      v16[4] = v40;
      v16[5] = v26;
      *(*(v7 + 56) + 8 * v15) = v39;
      ++*(v7 + 16);
      v5 = v36;
      v12 = v38;
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
        v38 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE25SwiftMLSPersisterProtocol_pGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE25SwiftMLSPersisterProtocol_pGMR);
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
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        outlined init with take of MLS.KeyUpdatePolicy(v24, v34);
      }

      else
      {
        outlined init with copy of ServerBag.MLS(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
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
      result = outlined init with take of MLS.KeyUpdatePolicy(v34, *(v7 + 56) + 40 * v15);
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

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS15SecureMessaging3MLSO16KeyUpdateTrackerCGMd, &_ss18_DictionaryStorageCySS15SecureMessaging3MLSO16KeyUpdateTrackerCGMR);
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15SecureMessaging15KDSRegistrationO8Listener_pSgyYbcGMd, _ss18_DictionaryStorageCySi15SecureMessaging15KDSRegistrationO8Listener_pSgyYbcGMR);
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS15SecureMessaging3MLSO10EventQueueCGMd, &_ss18_DictionaryStorageCySS15SecureMessaging3MLSO10EventQueueCGMR);
}

{
  v1 = v0;
  v2 = type metadata accessor for XPCUtils.XPCInterfaceRequest(0);
  v27 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVGMd, &_ss18_DictionaryStorageCySi15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + 8 * v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        outlined init with copy of XPCUtils.XPCInterfaceRequest(*(v4 + 56) + v23, v26, type metadata accessor for XPCUtils.XPCInterfaceRequest);
        v24 = v28;
        *(*(v28 + 48) + 8 * v20) = v21;
        result = outlined init with take of XPCUtils.XPCInterfaceRequest(v22, *(v24 + 56) + v23, type metadata accessor for XPCUtils.XPCInterfaceRequest);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v25;
        v6 = v28;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15SecureMessaging8XPCUtilsO10XPCRequest_pGMd, &_ss18_DictionaryStorageCySi15SecureMessaging8XPCUtilsO10XPCRequest_pGMR);
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
        outlined init with copy of ServerBag.MLS(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = outlined init with take of MLS.KeyUpdatePolicy(v19, *(v4 + 56) + 40 * v17);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAG08OutgoingJ5EntryVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAG08OutgoingJ5EntryVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    v28 = v1;
    __src = (v2 + 64);
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, __src, 8 * v6);
    }

    v8 = 0;
    v30 = v2;
    v31 = v4;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    if (v11)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v32 = (v11 - 1) & v11;
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = 48 * v16;
        v18 = *(v2 + 56);
        v19 = (*(v2 + 48) + 48 * v16);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v25 = v19[4];
        v24 = v19[5];
        v26 = 296 * v16;
        memcpy(__dst, (v18 + 296 * v16), 0x128uLL);
        v27 = (*(v31 + 48) + v17);
        *v27 = v20;
        v27[1] = v21;
        v27[2] = v22;
        v27[3] = v23;
        v2 = v30;
        v27[4] = v25;
        v27[5] = v24;
        memcpy((*(v31 + 56) + v26), __dst, 0x128uLL);

        result = outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(__dst, v33);
        v11 = v32;
      }

      while (v32);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v28;
        v4 = v31;
        goto LABEL_21;
      }

      v15 = *(__src + v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v32 = (v15 - 1) & v15;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAG08IncomingJ5EntryVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAG08IncomingJ5EntryVGMR);
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
        v18 = 48 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 48 * v17);
        v22 = *v20;
        v21 = v20[1];
        v23 = v20[2];
        v24 = v20[3];
        v25 = v20[4];
        v26 = v20[5];
        v17 *= 112;
        v27 = *(v19 + v17 + 96);
        v29 = *(v19 + v17 + 48);
        v28 = *(v19 + v17 + 64);
        v45 = *(v19 + v17 + 80);
        v46 = v27;
        v43 = v29;
        v44 = v28;
        v31 = *(v19 + v17 + 16);
        v30 = *(v19 + v17 + 32);
        v40 = *(v19 + v17);
        v41 = v31;
        v42 = v30;
        v32 = (*(v4 + 48) + v18);
        *v32 = v22;
        v32[1] = v21;
        v32[2] = v23;
        v32[3] = v24;
        v32[4] = v25;
        v32[5] = v26;
        v33 = (*(v4 + 56) + v17);
        v34 = v40;
        v35 = v42;
        v33[1] = v41;
        v33[2] = v35;
        *v33 = v34;
        v36 = v43;
        v37 = v44;
        v38 = v46;
        v33[5] = v45;
        v33[6] = v38;
        v33[3] = v36;
        v33[4] = v37;

        result = outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(&v40, &v39);
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

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS15SecureMessaging3MLSO16KeyUpdateTrackerCGMd, &_ss18_DictionaryStorageCySS15SecureMessaging3MLSO16KeyUpdateTrackerCGMR);
}

void specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for MetricCollector.Event(0);
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15SecureMessaging15MetricCollectorV5EventVGMd, &_ss18_DictionaryStorageCySS15SecureMessaging15MetricCollectorV5EventVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
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
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v4 + 56);
        v22 = (*(v4 + 48) + 16 * v19);
        v23 = v4;
        v24 = *v22;
        v25 = v22[1];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        outlined init with copy of XPCUtils.XPCInterfaceRequest(v21 + v27, v32, type metadata accessor for MetricCollector.Event);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v24;
        v29[1] = v25;
        v4 = v23;
        outlined init with take of XPCUtils.XPCInterfaceRequest(v26, *(v28 + 56) + v27, type metadata accessor for MetricCollector.Event);

        v14 = v35;
      }

      while (v35);
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

        v1 = v31;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

{
  v1 = v0;
  v35 = type metadata accessor for MLS.Client.KeyPackage();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8SwiftMLS0D0O6ClientO10KeyPackageVGMd, &_ss18_DictionaryStorageCySS8SwiftMLS0D0O6ClientO10KeyPackageVGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO9AllMemberOSayAE14KeyPackageInfoVGGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO9AllMemberOSayAE14KeyPackageInfoVGGMR);
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
        v18 = *(v2 + 48) + 32 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = *(v4 + 48) + 32 * v17;
        v24 = *(v18 + 24);
        *v23 = *v18;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v24;
        *(*(v4 + 56) + 8 * v17) = v22;
        outlined copy of MLS.AllMember(v19, v20);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataV15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVGMd, &_ss18_DictionaryStorageCy10Foundation4DataV15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVGMR);
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
        v18 = 16 * v17;
        v17 *= 32;
        v19 = (*(v2 + 56) + v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v24 = *(*(v2 + 48) + v18);
        *(*(v4 + 48) + v18) = v24;
        v25 = (*(v4 + 56) + v17);
        *v25 = v20;
        v25[1] = v21;
        v25[2] = v22;
        v25[3] = v23;
        outlined copy of Data._Representation(v24, *(&v24 + 1));
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV10Foundation4DataVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV10Foundation4DataVGMR);
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
        v18 = 32 * v17;
        v19 = (*(v2 + 48) + 32 * v17);
        v20 = v19[1];
        v21 = v19[2];
        v22 = v19[3];
        v17 *= 16;
        v23 = (*(v4 + 48) + v18);
        v24 = *(*(v2 + 56) + v17);
        *v23 = *v19;
        v23[1] = v20;
        v23[2] = v21;
        v23[3] = v22;
        *(*(v4 + 56) + v17) = v24;

        outlined copy of Data._Representation(v24, *(&v24 + 1));
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pGMd, &_ss18_DictionaryStorageCySS15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        outlined init with copy of ServerBag.MLS(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of MLS.KeyUpdatePolicy(v25, *(v4 + 56) + v22);
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
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVSayAE15PersistedMemberVGGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVSayAE15PersistedMemberVGGMR);
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSEpochStoreIDV10Foundation4DataVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSEpochStoreIDV10Foundation4DataVGMR);
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
        v18 = 48 * v17;
        v19 = *(v2 + 48) + 48 * v17;
        v20 = *(v19 + 8);
        v21 = *(v19 + 16);
        v22 = *(v19 + 40);
        v17 *= 16;
        v23 = *(v4 + 48) + v18;
        v24 = *(v19 + 24);
        v25 = *(*(v2 + 56) + v17);
        *v23 = *v19;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v24;
        *(v23 + 40) = v22;
        *(*(v4 + 56) + v17) = v25;

        outlined copy of Data._Representation(v21, v24);
        outlined copy of Data._Representation(v25, *(&v25 + 1));
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSGroupStoreIDV10Foundation4DataVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSGroupStoreIDV10Foundation4DataVGMR);
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
        v18 = 32 * v17;
        v19 = (*(v2 + 48) + 32 * v17);
        v20 = v19[1];
        v21 = v19[2];
        v22 = v19[3];
        v17 *= 16;
        v23 = (*(v4 + 48) + v18);
        v24 = *(*(v2 + 56) + v17);
        *v23 = *v19;
        v23[1] = v20;
        v23[2] = v21;
        v23[3] = v22;
        *(*(v4 + 56) + v17) = v24;

        outlined copy of Data._Representation(v21, v22);
        outlined copy of Data._Representation(v24, *(&v24 + 1));
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

{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVAC4DataVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVAC4DataVGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v40 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    v36 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v38;
        v22 = v39;
        v23 = *(v39 + 72) * v20;
        v24 = v37;
        (*(v39 + 16))(v37, *(v5 + 48) + v23, v38);
        v25 = *(v5 + 56);
        v26 = 16 * v20;
        v27 = (v25 + 16 * v20);
        v28 = *v27;
        v29 = v27[1];
        v30 = v40;
        (*(v22 + 32))(*(v40 + 48) + v23, v24, v21);
        v31 = (*(v30 + 56) + v26);
        v5 = v36;
        *v31 = v28;
        v31[1] = v29;
        outlined copy of Data._Representation(v28, v29);
        v15 = v41;
      }

      while (v41);
    }

    v18 = v11;
    v7 = v40;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVAE21EventsSinceLastUpdateVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVAE21EventsSinceLastUpdateVGMR);
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
        v18 = 32 * v17;
        v19 = (*(v2 + 48) + 32 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v17 *= 24;
        v24 = *(v2 + 56) + v17;
        v25 = *v24;
        v26 = *(v24 + 8);
        LOBYTE(v24) = *(v24 + 16);
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v27[2] = v22;
        v27[3] = v23;
        v28 = *(v4 + 56) + v17;
        *v28 = v25;
        *(v28 + 8) = v26;
        *(v28 + 16) = v24;
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

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17OutgoingEventTypeOy_AE9AllMemberO10Foundation4DataVG_AE0fG5StateVSgAE12GroupVersionVtGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17OutgoingEventTypeOy_AE9AllMemberO10Foundation4DataVG_AE0fG5StateVSgAE12GroupVersionVtGGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17InMemoryPersisterC18OutgoingEventEntryVGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17InMemoryPersisterC18OutgoingEventEntryVGGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17IncomingEventTypeOy_AE9AllMemberO10Foundation4DataVGGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17IncomingEventTypeOy_AE9AllMemberO10Foundation4DataVGGGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17InMemoryPersisterC18IncomingEventEntryVGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17InMemoryPersisterC18IncomingEventEntryVGGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO18OutgoingEventStateVGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO18OutgoingEventStateVGGMR);
}

{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierV10Foundation4UUIDVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierV10Foundation4UUIDVGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC19GroupMessageStoreIDVSiGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC19GroupMessageStoreIDVSiGMR);
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
        v18 = (*(v2 + 48) + 48 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = v18[4];
        v24 = v18[5];
        v25 = (*(v4 + 48) + 48 * v17);
        *v25 = *v18;
        v25[1] = v19;
        v25[2] = v20;
        v25[3] = v21;
        v25[4] = v23;
        v25[5] = v24;
        *(*(v4 + 56) + 8 * v17) = v22;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE25SwiftMLSPersisterProtocol_pGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE25SwiftMLSPersisterProtocol_pGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        outlined init with copy of ServerBag.MLS(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of MLS.KeyUpdatePolicy(v25, *(v4 + 56) + v22);
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
}

void specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [MLS.KeyPackageInfo] and conformance <A> [A](unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t type metadata instantiation function for MLS.KeyPackageRetrievalResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for MLS.KeyPackageRetrievalResult(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for MLS.KeyPackageRetrievalResult(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t outlined init with copy of XPCUtils.XPCInterfaceRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t dispatch thunk of MLS.ClientCoordinator.keyPackage.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 16) + **(a7 + 16));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 24) + **(a8 + 24));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.delete(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 32) + **(a6 + 32));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.group(identifier:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 40) + **(a6 + 40));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.update(groupDetails:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 48) + **(a5 + 48));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.otherMembers(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 56) + **(a5 + 56));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.add(members:toGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 64) + **(a7 + 64));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.kick(members:fromGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 72) + **(a7 + 72));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.leave(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 80) + **(a6 + 80));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.downgrade(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 88) + **(a6 + 88));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.applicationEncrypt(data:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 96) + **(a8 + 96));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.applicationEncrypt(groupName:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 104) + **(a8 + 104));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.applicationSign(input:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 112) + **(a7 + 112));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 120) + **(a7 + 120));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.processIncoming(message:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 128) + **(a5 + 128));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 136) + **(a7 + 136));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.processIncoming(errorMessage:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 144) + **(a7 + 144));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.processIncoming(groupName:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 152) + **(a8 + 152));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t MLS.LeaveGroupOperation.group.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double MLS.LeaveGroupOperation.context.getter@<D0>(void *a1@<X8>)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;

  outlined copy of Data?(v4, v5);

  return result;
}

double MLS.LeaveGroupOperation.clientIdentifier.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = *(v1 + 96);
  a1[1] = v2;

  return result;
}

uint64_t MLS.LeaveGroupOperation.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS19LeaveGroupOperation_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.LeaveGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4[91] = v3;
  v4[90] = a2;
  v4[89] = a1;
  v6 = type metadata accessor for UUID();
  v4[92] = v6;
  v4[93] = *(v6 - 8);
  v4[94] = swift_task_alloc();
  v7 = type metadata accessor for MLS.Group.Message();
  v4[95] = v7;
  v4[96] = *(v7 - 8);
  v4[97] = swift_task_alloc();
  v4[98] = swift_task_alloc();
  v4[99] = type metadata accessor for MetricCollector.Event(0);
  v4[100] = swift_task_alloc();
  v4[101] = swift_task_alloc();
  v4[102] = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  v4[103] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:), v8, 0);
}

uint64_t MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v24 = v0;
  v1 = v0[91];
  v0[86] = v0[102];
  v2 = *(v1 + 32);
  v0[104] = v2;
  v3 = *(v1 + 40);
  v0[105] = v3;
  v0[106] = OBJC_IVAR____TtCO15SecureMessaging3MLS19LeaveGroupOperation_logger;
  swift_bridgeObjectRetain_n();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, &v23);
    _os_log_impl(&dword_264F1F000, v4, v5, "LeaveGroupOperation leaving group { identifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v8 = v0[102];
  v9 = v0[101];
  v10 = v0[100];
  v11 = v0[99];
  v12 = v0[90];
  Date.init()();
  v13 = *(v11 + 20);
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(v9 + v13, 1, 1, v14);
  outlined init with take of MetricCollector.Event(v9, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v8;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, 0x534C4D7466697753, 0xEE0074696D6D6F43, isUniquelyReferenced_nonNull_native);
  v16 = v23;
  v0[107] = v23;

  v0[86] = v16;
  v17 = v12[3];
  v18 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v17);
  v22 = (*(v18 + 88) + **(v18 + 88));
  v19 = swift_task_alloc();
  v0[108] = v19;
  *v19 = v0;
  v19[1] = MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:);
  v20 = v0[98];

  return v22(v20, v17, v18);
}

{
  v2 = *v1;
  *(*v1 + 872) = v0;

  if (v0)
  {
    v3 = *(v2 + 824);

    v4 = MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:);
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 824);
    v4 = MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v60 = v0;
  v57 = (v0 + 200);
  v58 = (v0 + 448);
  v1 = *(v0 + 784);
  v2 = *(v0 + 776);
  v3 = *(v0 + 768);
  v4 = *(v0 + 760);
  v5._countAndFlagsBits = 0x534C4D7466697753;
  v5._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v5);
  (*(v3 + 16))(v2, v1, v4);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 840);
    v9 = *(v0 + 832);
    v10 = *(v0 + 776);
    v11 = *(v0 + 768);
    v12 = *(v0 + 760);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v59 = v14;
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v59);
    *(v13 + 12) = 2080;
    _s8SwiftMLS0B0O5GroupO7MessageVAGs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Group.Message and conformance MLS.Group.Message, MEMORY[0x277D6AAD8], MEMORY[0x277D6AAE0]);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v59);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_264F1F000, v6, v7, "LeaveGroupOperation created proposal for group { identifier: %s, proposal: %s }", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v14, -1, -1);
    MEMORY[0x266755550](v13, -1, -1);
  }

  else
  {
    v19 = *(v0 + 776);
    v20 = *(v0 + 768);
    v21 = *(v0 + 760);

    (*(v20 + 8))(v19, v21);
  }

  v22 = *(v0 + 840);
  v23 = *(v0 + 832);
  v24 = *(v0 + 752);
  v25 = *(v0 + 744);
  v26 = *(v0 + 736);
  v27 = *(v0 + 728);

  UUID.init()();
  v54 = UUID.uuidString.getter();
  v55 = v28;
  (*(v25 + 8))(v24, v26);
  v29 = v27;
  v56 = v27;
  v30 = *(v27 + 48);
  v53 = *(v29 + 56);
  v31 = *(v0 + 688);
  outlined copy of Data?(v30, v53);

  v32 = MLS.Group.GroupInfo.rawRepresentation.getter();
  v52 = v33;
  v34 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v35 = [v34 UUIDString];

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  *(v0 + 200) = v23;
  *(v0 + 208) = v22;
  *(v0 + 216) = v54;
  *(v0 + 224) = v55;
  *(v0 + 232) = v30;
  *(v0 + 240) = v53;
  *(v0 + 248) = v31;
  *(v0 + 256) = v36;
  *(v0 + 264) = v38;
  *(v0 + 272) = v32;
  *(v0 + 280) = v52;
  v39 = *(v0 + 248);
  *(v0 + 48) = *(v0 + 232);
  *(v0 + 64) = v39;
  *(v0 + 80) = *(v0 + 264);
  *(v0 + 96) = *(v0 + 280);
  v40 = *(v0 + 216);
  *(v0 + 16) = *v57;
  *(v0 + 32) = v40;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi2_(v0 + 16);
  v42 = *(v56 + 48);
  v41 = *(v56 + 56);
  *(v0 + 448) = v54;
  *(v0 + 456) = v55;
  *(v0 + 464) = 0;
  *(v0 + 472) = 0;
  *(v0 + 480) = 3;
  *(v0 + 488) = v23;
  *(v0 + 496) = v22;
  *(v0 + 504) = v42;
  *(v0 + 512) = v41;
  v43 = *(v0 + 496);
  *(v0 + 408) = *(v0 + 480);
  *(v0 + 424) = v43;
  *(v0 + 440) = *(v0 + 512);
  v44 = *(v0 + 464);
  *(v0 + 376) = *v58;
  *(v0 + 392) = v44;

  outlined init with copy of MLS.OutgoingRemoveSelf<Data>(v57, v0 + 288);

  outlined copy of Data?(v42, v41);
  outlined init with copy of MLS.OutgoingEventState(v58, v0 + 520);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = *(v0 + 840);
    v48 = *(v0 + 832);
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v59 = v50;
    *v49 = 136315138;
    *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, &v59);
    _os_log_impl(&dword_264F1F000, v45, v46, "LeaveGroupOperation returning operation result { identifier: %s }", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x266755550](v50, -1, -1);
    MEMORY[0x266755550](v49, -1, -1);
  }

  swift_retain_n();

  return MEMORY[0x2822009F8](MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

{
  v1 = *(v0 + 720);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 880) = v4;
  *v4 = v0;
  v4[1] = MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:);

  return MLS.SwiftMLSGroupProtocol.groupVersion.getter(v0 + 592, v3, v2);
}

{
  v2 = *v1;
  *(*v1 + 888) = v0;

  if (v0)
  {
    outlined destroy of MLS.OutgoingEventState(v2 + 448);
    outlined destroy of MLS.OutgoingRemoveSelf<Data>(v2 + 200);
    v3 = MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {

    v3 = MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 196);
  v2 = *(v0 + 896);
  v28 = *(v0 + 832);
  v29 = *(v0 + 840);
  v3 = *(v0 + 784);
  v4 = *(v0 + 768);
  v5 = *(v0 + 760);
  v6 = *(v0 + 728);
  v7 = *(v0 + 720);
  v8 = *(v0 + 712);
  outlined destroy of MLS.OutgoingRemoveSelf<Data>(v0 + 200);
  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 16);
  v10 = *(v0 + 32);
  v11 = *(v0 + 64);
  *(v8 + 32) = *(v0 + 48);
  *(v8 + 48) = v11;
  *v8 = v9;
  *(v8 + 16) = v10;
  v12 = *(v0 + 80);
  v13 = *(v0 + 96);
  v14 = *(v0 + 128);
  *(v8 + 96) = *(v0 + 112);
  *(v8 + 112) = v14;
  *(v8 + 64) = v12;
  *(v8 + 80) = v13;
  v15 = *(v0 + 144);
  v16 = *(v0 + 160);
  v17 = *(v0 + 176);
  *(v8 + 176) = *(v0 + 192);
  *(v8 + 144) = v16;
  *(v8 + 160) = v17;
  *(v8 + 128) = v15;
  *(v8 + 184) = *(v0 + 376);
  v18 = *(v0 + 392);
  v19 = *(v0 + 408);
  v20 = *(v0 + 424);
  *(v8 + 248) = *(v0 + 440);
  *(v8 + 232) = v20;
  *(v8 + 216) = v19;
  *(v8 + 200) = v18;
  *(v8 + 256) = 0;
  *(v8 + 264) = v1;
  *(v8 + 272) = v1;
  *(v8 + 280) = v2;
  *(v8 + 288) = *(v0 + 448);
  v21 = *(v0 + 464);
  v22 = *(v0 + 480);
  v23 = *(v0 + 496);
  *(v8 + 352) = *(v0 + 512);
  *(v8 + 320) = v22;
  *(v8 + 336) = v23;
  *(v8 + 304) = v21;
  *(v8 + 360) = 0;
  outlined init with copy of ServerBag.MLS(v7, v8 + 368);
  *(v8 + 408) = 0;
  v24 = *(v0 + 688);
  v25 = swift_allocObject();
  *(v25 + 16) = v6;
  *(v25 + 24) = v28;
  *(v25 + 32) = v29;
  *(v25 + 40) = v1;
  *(v25 + 48) = v1;
  *(v25 + 56) = v2;
  *(v8 + 416) = v24;
  *(v8 + 424) = &async function pointer to partial apply for closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:);
  *(v8 + 432) = v25;

  v26 = *(v0 + 8);

  return v26();
}

{
  v1 = *(v0 + 888);
  v2 = *(v0 + 840);
  v3 = *(v0 + 832);
  v4 = *(v0 + 824);
  v5 = *(v0 + 728);

  swift_getErrorValue();
  v6 = Error.readableDescription.getter(*(v0 + 624), *(v0 + 632));
  closure #1 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)(v6, v7, v5, v3, v2);

  swift_getErrorValue();
  v8 = Error.readableDescription.getter(*(v0 + 648), *(v0 + 656));
  *(v0 + 904) = v8;
  *(v0 + 912) = v9;
  *(v0 + 664) = 6;
  *(v0 + 672) = v8;
  *(v0 + 680) = v9;
  *(v0 + 920) = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:), v4, 0);
}

{
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[98];
  v4 = v0[96];
  v5 = v0[95];
  swift_allocError();
  *v6 = 6;
  *(v6 + 8) = v2;
  *(v6 + 16) = v1;
  outlined destroy of MLS.OutgoingEventState((v0 + 56));
  outlined destroy of MLS.OutgoingRemoveSelf<Data>((v0 + 25));
  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 608);
  v6 = __CFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v3 + 824);
    *(v3 + 896) = v7;
    *(v3 + 196) = *(v3 + 600);

    a1 = MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:);
    a2 = v8;
    a3 = 0;
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

void closure #1 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{

  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v13);
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v13);
    _os_log_impl(&dword_264F1F000, oslog, v9, "LeaveGroupOperation failed to obtain era { identifier: %s, error: %s }", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }
}

uint64_t closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  *(v7 + 64) = a5;
  *(v7 + 72) = a7;
  *(v7 + 144) = a6;
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  *(v7 + 40) = a2;
  *(v7 + 80) = *a1;
  *(v7 + 96) = *(a1 + 16);
  *(v7 + 148) = *(a1 + 24);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  *(v7 + 104) = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:), v8, 0);
}

uint64_t closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v23 = v0;
  if (*(v0 + 148) && (*(v0 + 148) != 2 || *(v0 + 88) | *(v0 + 96) | *(v0 + 80)))
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 48);
      v5 = *(v0 + 56);
      v7 = *(v0 + 40);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136315394;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v22);
      *(v8 + 12) = 2080;
      *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v7 + 16), *(v7 + 24), &v22);
      _os_log_impl(&dword_264F1F000, v3, v4, "LeaveGroupOperation successful. Deleting group { identifier: %s, group: %s }", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v9, -1, -1);
      MEMORY[0x266755550](v8, -1, -1);
    }

    v10 = *(v0 + 144);
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 40);
    v14 = v13[11];
    ObjectType = swift_getObjectType();
    *(v0 + 16) = v12;
    *(v0 + 24) = v10;
    *(v0 + 32) = v11;
    v16 = v13[2];
    v17 = v13[3];
    v21 = (*(v14 + 24) + **(v14 + 24));
    v18 = swift_task_alloc();
    *(v0 + 112) = v18;
    *v18 = v0;
    v18[1] = closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:);
    v19 = *(v0 + 48);
    v20 = *(v0 + 56);

    return v21(v0 + 16, v16, v17, v19, v20, 1, ObjectType, v14);
  }
}

{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:), v1, 0);
}

{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = *(v3 + 72);
  v5 = swift_task_alloc();
  v0[15] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v8 = (*(*v4 + 152) + **(*v4 + 152));
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:);

  return v8();
}

{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = MLS.EventQueue.reenqueueAtFront(identifier:eventState:andBlockOnVersion:sendBlock:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[7] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[10] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:), v5, 0);
}

uint64_t closure #1 in closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v1 = *(v0 + 56);
  v2 = v1[9];
  v3 = v1[2];
  v4 = v1[3];
  *(v0 + 40) = &type metadata for MLS.GroupOperationError;
  *(v0 + 48) = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  *(v0 + 16) = 8;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v9 = (*(*v2 + 168) + **(*v2 + 168));
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = closure #1 in closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);

  return v9(v3, v4, v0 + 16, v6, v7);
}

{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[10];

    return MEMORY[0x2822009F8](closure #1 in closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:), v3, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 2);
    v4 = v2[1];

    return v4();
  }
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

char *MLS.LeaveGroupOperation.deinit()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  outlined consume of Data?(v1, v2);

  swift_unknownObjectRelease();

  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS19LeaveGroupOperation_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t MLS.LeaveGroupOperation.__deallocating_deinit()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  outlined consume of Data?(v1, v2);

  swift_unknownObjectRelease();

  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS19LeaveGroupOperation_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:) in conformance MLS.LeaveGroupOperation(uint64_t a1)
{
  v6 = (*(**v1 + 184) + **(**v1 + 184));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.perform(on:metricCollector:keyPackageResult:) in conformance MLS.LeaveGroupOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 192) + **(**v4 + 192));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

double protocol witness for MLS.GroupOperation.context.getter in conformance MLS.LeaveGroupOperation@<D0>(void *a1@<X8>)
{
  v2 = *v1;
  v4 = *(*v1 + 32);
  v3 = *(*v1 + 40);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 56);
  v7 = *(v2 + 64);
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;

  outlined copy of Data?(v5, v6);

  return result;
}

uint64_t protocol witness for MLS.GroupOperation.logger.getter in conformance MLS.LeaveGroupOperation@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCO15SecureMessaging3MLS19LeaveGroupOperation_logger;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t specialized MLS.LeaveGroupOperation.__allocating_init(group:context:groupLoader:eventSender:clientIdentifier:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for MLS.LeaveGroupOperation(0);
  v16 = swift_allocObject();

  return specialized MLS.LeaveGroupOperation.init(group:context:groupLoader:eventSender:clientIdentifier:)(a1, a2, a3, a4, a5, a6, v16, a8, a9);
}

uint64_t specialized MLS.LeaveGroupOperation.init(group:context:groupLoader:eventSender:clientIdentifier:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = a3[1];
  v19 = *a3;
  v14 = *(a3 + 4);
  v15 = *a6;
  v16 = a6[1];
  Logger.init(subsystem:category:)();
  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  *(a7 + 32) = v19;
  *(a7 + 48) = v18;
  *(a7 + 64) = v14;
  *(a7 + 72) = a4;
  *(a7 + 80) = a5;
  *(a7 + 88) = a9;
  *(a7 + 96) = v15;
  *(a7 + 104) = v16;
  return a7;
}