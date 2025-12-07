unint64_t lazy protocol witness table accessor for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys);
  }

  return result;
}

uint64_t KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoV10CodingKeys33_3A8997C23693286548A17787F537EE24LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoV10CodingKeys33_3A8997C23693286548A17787F537EE24LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys();
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

uint64_t dispatch thunk of KDSRegistration.EncryptedRCS.Provider.obtainPhoneAuthenticationInfo(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3, a4);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t MLS.NoOpKeyPackageExchanger.retrieveKeyPackage(members:context:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.NoOpKeyPackageExchanger.retrieveKeyPackage(members:context:), v0, 0);
}

{
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance MLS.NoOpKeyPackageExchanger<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 96) + **(*v3 + 96));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.NoOpKeyPackageExchanger.retrieveKeyPackage(members:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 96) + **(*v3 + 96));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t MLS.SignOperation.input.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v7[0] = v1[1];
  v7[1] = v2;
  v8[0] = v1[3];
  v3 = v8[0];
  *(v8 + 12) = *(v1 + 60);
  v4 = *(v8 + 12);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 44) = v4;
  return outlined init with copy of MLS.SigningInput(v7, &v6);
}

uint64_t MLS.SignOperation.group.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

double MLS.SignOperation.context.getter@<D0>(void *a1@<X8>)
{
  v3 = v1[12];
  v2 = v1[13];
  v4 = v1[14];
  v5 = v1[15];
  v6 = v1[16];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;

  outlined copy of Data?(v4, v5);

  return result;
}

uint64_t MLS.SignOperation.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS13SignOperation_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.SignOperation.__allocating_init(input:group:context:)(_OWORD *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = swift_allocObject();
  v12 = a4[1];
  v13 = *a4;
  v9 = *(a4 + 4);
  Logger.init(subsystem:category:)();
  v10 = a1[1];
  *(v8 + 16) = *a1;
  *(v8 + 32) = v10;
  *(v8 + 48) = a1[2];
  *(v8 + 60) = *(a1 + 44);
  *(v8 + 80) = a2;
  *(v8 + 88) = a3;
  *(v8 + 96) = v13;
  *(v8 + 112) = v12;
  *(v8 + 128) = v9;
  return v8;
}

uint64_t MLS.SignOperation.init(input:group:context:)(_OWORD *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v11 = a4[1];
  v12 = *a4;
  v8 = *(a4 + 4);
  Logger.init(subsystem:category:)();
  v9 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v9;
  *(v4 + 48) = a1[2];
  *(v4 + 60) = *(a1 + 44);
  *(v4 + 80) = a2;
  *(v4 + 88) = a3;
  *(v4 + 96) = v12;
  *(v4 + 112) = v11;
  *(v4 + 128) = v8;
  return v4;
}

uint64_t MLS.SignOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t MLS.SignOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4[59] = a2;
  v4[60] = v3;
  v4[58] = a1;
  v6 = type metadata accessor for UUID();
  v4[61] = v6;
  v4[62] = *(v6 - 8);
  v4[63] = swift_task_alloc();
  v7 = type metadata accessor for MLS.Group.Group.SignPublicApplicationMessageInput();
  v4[64] = v7;
  v4[65] = *(v7 - 8);
  v4[66] = swift_task_alloc();
  v8 = type metadata accessor for MLS.Group.Message();
  v4[67] = v8;
  v4[68] = *(v8 - 8);
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  v4[71] = type metadata accessor for MetricCollector.Event(0);
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v4[74] = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v4[75] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SignOperation.perform(on:metricCollector:keyPackageResult:), v9, 0);
}

uint64_t MLS.SignOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v31 = v0;
  v1 = v0[60];
  v0[57] = v0[74];
  v2 = *(v1 + 96);
  v0[76] = v2;
  v3 = *(v1 + 104);
  v0[77] = v3;
  v0[78] = OBJC_IVAR____TtCO15SecureMessaging3MLS13SignOperation_logger;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0 + 57;
    v7 = v0[60];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, &v30);
    *(v8 + 12) = 2080;
    v10 = (*(v7 + 48) >> 60) & 3;
    if (v10)
    {
      if (v10 == 1)
      {
        v11 = MLS.EncryptedRCS.DisplayIMDNSigningInput.description.getter();
      }

      else
      {
        v11 = MLS.EncryptedRCS.FileTransferSigningInput.description.getter();
      }
    }

    else
    {
      v11 = MLS.EncryptedRCS.DeliveryIMDNSigningInput.description.getter();
    }

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v30);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v4, v5, "SignOperation signing data { identifier: %s, input: %s }", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  else
  {
    v6 = v0 + 74;
  }

  v14 = *v6;
  v15 = v0[73];
  v16 = v0[72];
  v17 = v0[71];
  v18 = v0[59];
  v19 = v0[60];
  Date.init()();
  v20 = *(v17 + 20);
  v21 = type metadata accessor for Date();
  (*(*(v21 - 8) + 56))(v15 + v20, 1, 1, v21);
  outlined init with take of MetricCollector.Event(v15, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, 0x534C4D7466697753, 0xEE0074696D6D6F43, isUniquelyReferenced_nonNull_native);

  v0[57] = v14;
  MLS.EncryptedRCS.SigningInput.verifiableDerivedContent.getter(v0 + 47);
  v23 = v18[3];
  v24 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v23);
  outlined init with copy of ServerBag.MLS((v0 + 47), (v0 + 52));
  outlined copy of Data._Representation(*(v19 + 16), *(v19 + 24));
  MLS.Group.Group.SignPublicApplicationMessageInput.init(verifiableDerivedContent:messageID:)();
  v29 = (*(v24 + 120) + **(v24 + 120));
  v25 = swift_task_alloc();
  v0[79] = v25;
  *v25 = v0;
  v25[1] = MLS.SignOperation.perform(on:metricCollector:keyPackageResult:);
  v26 = v0[70];
  v27 = v0[66];

  return v29(v26, v27, v23, v24);
}

{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *(*v1 + 520);
  v5 = *(*v1 + 512);
  *(*v1 + 640) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = *(v2 + 600);

    v7 = MLS.SignOperation.perform(on:metricCollector:keyPackageResult:);
    v8 = v6;
  }

  else
  {
    v8 = *(v2 + 600);
    v7 = MLS.SignOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

{
  v72 = v0;
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5._countAndFlagsBits = 0x534C4D7466697753;
  v5._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v5);
  v68 = MLS.Group.GroupInfo.rawRepresentation.getter();
  v69 = v6;
  v7 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v8 = [v7 UUIDString];

  v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v9;

  (*(v3 + 16))(v2, v1, v4);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v63 = (v0 + 200);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 616);
    v13 = *(v0 + 608);
    v14 = *(v0 + 552);
    v15 = *(v0 + 544);
    v16 = *(v0 + 536);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v71 = v18;
    *v17 = 136315394;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v71);
    *(v17 + 12) = 2080;
    lazy protocol witness table accessor for type MLS.Group.Message and conformance MLS.Group.Message(&lazy protocol witness table cache variable for type MLS.Group.Message and conformance MLS.Group.Message, MEMORY[0x277D6AAD8], MEMORY[0x277D6AAE0]);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v67 = *(v15 + 8);
    v67(v14, v16);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v71);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_264F1F000, v10, v11, "SignOperation signed data { identifier: %s, mlsMessage: %s }", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v18, -1, -1);
    MEMORY[0x266755550](v17, -1, -1);
  }

  else
  {
    v23 = *(v0 + 552);
    v24 = *(v0 + 544);
    v25 = *(v0 + 536);

    v67 = *(v24 + 8);
    v67(v23, v25);
  }

  v26 = *(v0 + 616);
  v27 = *(v0 + 608);
  v29 = *(v0 + 496);
  v28 = *(v0 + 504);
  v31 = *(v0 + 480);
  v30 = *(v0 + 488);

  UUID.init()();
  v32 = UUID.uuidString.getter();
  v34 = v33;
  (*(v29 + 8))(v28, v30);
  v35 = *(v31 + 112);
  v36 = *(v31 + 120);
  v37 = *(v0 + 456);
  *(v0 + 200) = v27;
  *(v0 + 208) = v26;
  *(v0 + 216) = v32;
  *(v0 + 224) = v34;
  *(v0 + 232) = v35;
  *(v0 + 240) = v36;
  *(v0 + 248) = v37;
  *(v0 + 256) = v65;
  *(v0 + 264) = v70;
  *(v0 + 272) = v68;
  *(v0 + 280) = v69;
  v38 = *(v0 + 248);
  *(v0 + 48) = *(v0 + 232);
  *(v0 + 64) = v38;
  *(v0 + 80) = *(v0 + 264);
  *(v0 + 96) = *(v0 + 280);
  v39 = *(v0 + 216);
  *(v0 + 16) = *v63;
  *(v0 + 32) = v39;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi9_(v0 + 16);

  outlined copy of Data?(v35, v36);

  outlined copy of Data._Representation(v68, v69);
  outlined init with copy of MLS.OutgoingApplicationSend<Data>(v63, v0 + 288);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = *(v0 + 616);
    v43 = *(v0 + 608);
    v64 = *(v0 + 536);
    v66 = *(v0 + 560);
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v71 = v45;
    *v44 = 136315138;
    *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v42, &v71);
    _os_log_impl(&dword_264F1F000, v40, v41, "SignOperation returning operation result { identifier: %s }", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x266755550](v45, -1, -1);
    MEMORY[0x266755550](v44, -1, -1);

    outlined destroy of MLS.OutgoingApplicationSend<Data>(v63);

    outlined consume of Data._Representation(v68, v69);
    v47 = v64;
    v46 = v66;
  }

  else
  {
    v48 = *(v0 + 560);
    v49 = *(v0 + 536);

    outlined destroy of MLS.OutgoingApplicationSend<Data>(v63);

    outlined consume of Data._Representation(v68, v69);
    v46 = v48;
    v47 = v49;
  }

  v67(v46, v47);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 376));
  v51 = *(v0 + 464);
  v50 = *(v0 + 472);
  v52 = *(v0 + 16);
  v53 = *(v0 + 32);
  v54 = *(v0 + 64);
  *(v51 + 32) = *(v0 + 48);
  *(v51 + 48) = v54;
  *v51 = v52;
  *(v51 + 16) = v53;
  v55 = *(v0 + 80);
  v56 = *(v0 + 96);
  v57 = *(v0 + 128);
  *(v51 + 96) = *(v0 + 112);
  *(v51 + 112) = v57;
  *(v51 + 64) = v55;
  *(v51 + 80) = v56;
  v58 = *(v0 + 144);
  v59 = *(v0 + 160);
  v60 = *(v0 + 176);
  *(v51 + 176) = *(v0 + 192);
  *(v51 + 144) = v59;
  *(v51 + 160) = v60;
  *(v51 + 128) = v58;
  *(v51 + 184) = 1;
  *(v51 + 224) = 0u;
  *(v51 + 240) = 0u;
  *(v51 + 192) = 0u;
  *(v51 + 208) = 0u;
  *(v51 + 256) = 2;
  *(v51 + 264) = 1;
  *(v51 + 352) = 0;
  *(v51 + 320) = 0u;
  *(v51 + 336) = 0u;
  *(v51 + 288) = 0u;
  *(v51 + 304) = 0u;
  *(v51 + 272) = 0u;
  *(v51 + 360) = 3;
  outlined init with copy of ServerBag.MLS(v50, v51 + 368);
  *(v51 + 408) = 0;
  *(v51 + 416) = *(v0 + 456);
  *(v51 + 424) = 0;
  *(v51 + 432) = 0;

  v61 = *(v0 + 8);

  return v61();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 376));

  v1 = *(v0 + 8);

  return v1();
}

char *MLS.SignOperation.deinit()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  v5 = *(v0 + 8);
  outlined consume of Data._Representation(*(v0 + 2), *(v0 + 3));
  outlined consume of MLS.EncryptedRCS.SigningInput.ContentType(v1, v2, v3, v4, v5);

  v6 = *(v0 + 14);
  v7 = *(v0 + 15);

  outlined consume of Data?(v6, v7);

  v8 = OBJC_IVAR____TtCO15SecureMessaging3MLS13SignOperation_logger;
  v9 = type metadata accessor for Logger();
  (*(*(v9 - 8) + 8))(&v0[v8], v9);
  return v0;
}

uint64_t MLS.SignOperation.__deallocating_deinit()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  v5 = *(v0 + 8);
  outlined consume of Data._Representation(*(v0 + 2), *(v0 + 3));
  outlined consume of MLS.EncryptedRCS.SigningInput.ContentType(v1, v2, v3, v4, v5);

  v6 = *(v0 + 14);
  v7 = *(v0 + 15);

  outlined consume of Data?(v6, v7);

  v8 = OBJC_IVAR____TtCO15SecureMessaging3MLS13SignOperation_logger;
  v9 = type metadata accessor for Logger();
  (*(*(v9 - 8) + 8))(&v0[v8], v9);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:) in conformance MLS.SignOperation(uint64_t a1)
{
  v6 = (*(**v1 + 168) + **(**v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.perform(on:metricCollector:keyPackageResult:) in conformance MLS.SignOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 176) + **(**v4 + 176));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

double protocol witness for MLS.GroupOperation.context.getter in conformance MLS.SignOperation@<D0>(void *a1@<X8>)
{
  v2 = *v1;
  v4 = *(*v1 + 96);
  v3 = *(*v1 + 104);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 120);
  v7 = *(v2 + 128);
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;

  outlined copy of Data?(v5, v6);

  return result;
}

uint64_t protocol witness for MLS.GroupOperation.logger.getter in conformance MLS.SignOperation@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCO15SecureMessaging3MLS13SignOperation_logger;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t outlined init with copy of MLS.OutgoingApplicationSend<Data>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MLS.OutgoingApplicationSend<Data>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for MLS.SignOperation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.Group.Message and conformance MLS.Group.Message(&lazy protocol witness table cache variable for type MLS.SignOperation and conformance MLS.SignOperation, type metadata accessor for MLS.SignOperation, &protocol conformance descriptor for MLS.SignOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type MLS.Group.Message and conformance MLS.Group.Message(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MLS.SignOperation(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLS.SignOperation;
  if (!type metadata singleton initialization cache for MLS.SignOperation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MLS.SignOperation(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t dispatch thunk of MLS.SignOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v6 = (*(*v1 + 168) + **(*v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t dispatch thunk of MLS.SignOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 176) + **(*v4 + 176));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t MLS.EncryptGroupNameOperation.groupName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MLS.EncryptGroupNameOperation.group.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

double MLS.EncryptGroupNameOperation.context.getter@<D0>(void *a1@<X8>)
{
  v3 = v1[6];
  v2 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;

  outlined copy of Data?(v4, v5);

  return result;
}

uint64_t MLS.EncryptGroupNameOperation.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS25EncryptGroupNameOperation_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.EncryptGroupNameOperation.__allocating_init(groupName:group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v10 = swift_allocObject();
  v13 = a5[1];
  v14 = *a5;
  v11 = *(a5 + 4);
  Logger.init(subsystem:category:)();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = v14;
  *(v10 + 64) = v13;
  *(v10 + 80) = v11;
  return v10;
}

uint64_t MLS.EncryptGroupNameOperation.init(groupName:group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v12 = a5[1];
  v13 = *a5;
  v10 = *(a5 + 4);
  Logger.init(subsystem:category:)();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = v13;
  *(v5 + 64) = v12;
  *(v5 + 80) = v10;
  return v5;
}

uint64_t MLS.EncryptGroupNameOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4[121] = v3;
  v4[120] = a2;
  v4[119] = a1;
  v6 = type metadata accessor for UUID();
  v4[122] = v6;
  v4[123] = *(v6 - 8);
  v4[124] = swift_task_alloc();
  v7 = type metadata accessor for MLS.Group.GroupInfo();
  v4[125] = v7;
  v4[126] = *(v7 - 8);
  v4[127] = swift_task_alloc();
  v8 = type metadata accessor for MLS.Group.Message();
  v4[128] = v8;
  v4[129] = *(v8 - 8);
  v4[130] = swift_task_alloc();
  v9 = type metadata accessor for MLS.Group.Group.ChangeRCSGroupNameInput();
  v4[131] = v9;
  v4[132] = *(v9 - 8);
  v4[133] = swift_task_alloc();
  v4[134] = type metadata accessor for MetricCollector.Event(0);
  v4[135] = swift_task_alloc();
  v4[136] = swift_task_alloc();
  v4[137] = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;
  v4[138] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:), v10, 0);
}

uint64_t MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v26 = v0;
  v1 = v0[121];
  v0[116] = v0[137];
  v2 = *(v1 + 48);
  v0[139] = v2;
  v3 = *(v1 + 56);
  v0[140] = v3;
  v0[141] = OBJC_IVAR____TtCO15SecureMessaging3MLS25EncryptGroupNameOperation_logger;
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[121];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315650;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, &v25);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v6 + 32), *(v6 + 40), &v25);
    *(v7 + 22) = 2080;
    *(v7 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v6 + 16), *(v6 + 24), &v25);
    _os_log_impl(&dword_264F1F000, v4, v5, "EncryptGroupNameOperation changing { identifier: %s, group: %s, groupName: %s }", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v9 = v0[137];
  v10 = v0[136];
  v11 = v0[135];
  v12 = v0[134];
  v13 = v0[121];
  v14 = v0[120];
  Date.init()();
  v15 = *(v12 + 20);
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 56))(v10 + v15, 1, 1, v16);
  outlined init with take of MetricCollector.Event(v10, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v9;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, 0x534C4D7466697753, 0xEE0074696D6D6F43, isUniquelyReferenced_nonNull_native);
  v18 = v25;

  v0[116] = v18;
  v19 = v14[3];
  v20 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v19);
  v0[142] = *(v13 + 16);
  v0[143] = *(v13 + 24);

  MLS.Group.Group.ChangeRCSGroupNameInput.init(newName:)();
  v24 = (*(v20 + 224) + **(v20 + 224));
  v21 = swift_task_alloc();
  v0[144] = v21;
  *v21 = v0;
  v21[1] = MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:);
  v22 = v0[133];

  return v24(v0 + 94, v22, v19, v20);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1064);
  v4 = *(*v1 + 1056);
  v5 = *(*v1 + 1048);
  *(*v1 + 1160) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = *(v2 + 1104);

    v7 = MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:);
    v8 = v6;
  }

  else
  {
    v8 = *(v2 + 1104);
    v7 = MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

{
  v93 = v0;
  v85 = (v0 + 200);
  v86 = (v0 + 608);
  v1._countAndFlagsBits = 0x534C4D7466697753;
  v1._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v1);
  outlined init with copy of ServerBag.MLS(v0 + 752, v0 + 792);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1120);
    v5 = *(v0 + 1112);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v92[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, v92);
    *(v6 + 12) = 2080;
    v8 = *(v0 + 816);
    __swift_project_boxed_opaque_existential_1((v0 + 792), v8);
    v9 = *(v8 - 8);
    swift_task_alloc();
    (*(v9 + 16))();
    v10 = String.init<A>(describing:)();
    v12 = v11;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 792));
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v92);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v2, v3, "EncryptGroupNameOperation changed { identifier: %s, commitOutput: %s }", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 792));
  }

  v83 = *(v0 + 1136);
  v84 = *(v0 + 1144);
  v90 = *(v0 + 1120);
  v82 = *(v0 + 1112);
  v14 = *(v0 + 1040);
  v15 = *(v0 + 1032);
  v16 = *(v0 + 1024);
  v17 = *(v0 + 1016);
  v18 = *(v0 + 1008);
  v72 = *(v0 + 1000);
  v74 = *(v0 + 992);
  v76 = *(v0 + 984);
  v77 = *(v0 + 976);
  v91 = *(v0 + 968);
  v19 = *(v0 + 776);
  v20 = *(v0 + 784);
  __swift_project_boxed_opaque_existential_1((v0 + 752), v19);
  (*(v20 + 8))(v19, v20);
  v21 = MLS.Group.GroupInfo.rawRepresentation.getter();
  v88 = v22;
  v89 = v21;
  *(v0 + 1168) = v21;
  *(v0 + 1176) = v22;
  v23 = *(v15 + 8);
  v23(v14, v16);
  v24 = *(v0 + 776);
  v25 = *(v0 + 784);
  __swift_project_boxed_opaque_existential_1((v0 + 752), v24);
  (*(v25 + 32))(v24, v25);
  v26 = MLS.Group.GroupInfo.rawRepresentation.getter();
  v81 = v27;
  *(v0 + 1184) = v26;
  v28 = v26;
  *(v0 + 1192) = v27;
  v23(v14, v16);
  v29 = *(v0 + 776);
  v30 = *(v0 + 784);
  __swift_project_boxed_opaque_existential_1((v0 + 752), v29);
  v31 = (*(v30 + 40))(v29, v30);
  v87 = v32;
  *(v0 + 1200) = v31;
  *(v0 + 1208) = v32;
  v33 = *(v0 + 776);
  v34 = *(v0 + 784);
  __swift_project_boxed_opaque_existential_1((v0 + 752), v33);
  (*(v34 + 16))(v33, v34);
  v35 = MLS.Group.GroupInfo.rawRepresentation.getter();
  v79 = v36;
  v80 = v35;
  *(v0 + 1216) = v35;
  *(v0 + 1224) = v36;
  (*(v18 + 8))(v17, v72);

  UUID.init()();
  v71 = UUID.uuidString.getter();
  v73 = v37;
  (*(v76 + 8))(v74, v77);
  v38 = *(v91 + 64);
  v39 = *(v91 + 72);
  v78 = v38;
  v75 = *(v0 + 928);
  v40 = objc_allocWithZone(MEMORY[0x277CCAD78]);
  outlined copy of Data?(v38, v39);

  outlined copy of Data._Representation(v89, v88);
  v41 = [v40 init];
  v42 = [v41 UUIDString];

  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v44;
  v70 = v43;

  v45 = *(v0 + 776);
  v46 = *(v0 + 784);
  __swift_project_boxed_opaque_existential_1((v0 + 752), v45);
  v47 = *(v46 + 24);
  outlined copy of Data._Representation(v28, v81);
  outlined copy of Data._Representation(v31, v87);
  v48 = v47(v45, v46);
  *(v0 + 200) = v82;
  *(v0 + 208) = v90;
  *(v0 + 216) = v71;
  *(v0 + 224) = v73;
  *(v0 + 232) = v78;
  *(v0 + 240) = v39;
  *(v0 + 248) = v75;
  *(v0 + 256) = v70;
  *(v0 + 264) = v69;
  *(v0 + 272) = v89;
  *(v0 + 280) = v88;
  *(v0 + 288) = v28;
  *(v0 + 296) = v81;
  *(v0 + 304) = v31;
  *(v0 + 312) = v87;
  *(v0 + 320) = v48;
  *(v0 + 328) = v49;
  *(v0 + 336) = xmmword_2651B5F50;
  *(v0 + 352) = v80;
  *(v0 + 360) = v79;
  v50 = *(v0 + 216);
  *(v0 + 16) = *v85;
  *(v0 + 32) = v50;
  v51 = *(v0 + 232);
  v52 = *(v0 + 248);
  v53 = *(v0 + 280);
  *(v0 + 80) = *(v0 + 264);
  *(v0 + 96) = v53;
  *(v0 + 48) = v51;
  *(v0 + 64) = v52;
  v54 = *(v0 + 296);
  v55 = *(v0 + 312);
  v56 = *(v0 + 328);
  v57 = *(v0 + 344);
  *(v0 + 176) = *(v0 + 360);
  *(v0 + 144) = v56;
  *(v0 + 160) = v57;
  *(v0 + 112) = v54;
  *(v0 + 128) = v55;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi11_(v0 + 16);
  v59 = *(v91 + 64);
  v58 = *(v91 + 72);
  *(v0 + 608) = v71;
  *(v0 + 616) = v73;
  *(v0 + 624) = v83;
  *(v0 + 632) = v84;
  *(v0 + 640) = 8;
  *(v0 + 648) = v82;
  *(v0 + 656) = v90;
  *(v0 + 664) = v59;
  *(v0 + 672) = v58;
  v60 = *(v0 + 656);
  *(v0 + 568) = *(v0 + 640);
  *(v0 + 584) = v60;
  *(v0 + 600) = *(v0 + 672);
  v61 = *(v0 + 624);
  *(v0 + 536) = *v86;
  *(v0 + 552) = v61;

  outlined copy of Data._Representation(v80, v79);
  outlined init with copy of MLS.OutgoingGroupNameChange<Data>(v85, v0 + 368);

  outlined copy of Data?(v59, v58);
  outlined init with copy of MLS.OutgoingEventState(v86, v0 + 680);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = *(v0 + 1120);
    v65 = *(v0 + 1112);
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v92[0] = v67;
    *v66 = 136315138;
    *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v64, v92);
    _os_log_impl(&dword_264F1F000, v62, v63, "EncryptGroupNameOperation returning operation result { identifier: %s }", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    MEMORY[0x266755550](v67, -1, -1);
    MEMORY[0x266755550](v66, -1, -1);
  }

  swift_retain_n();

  return MEMORY[0x2822009F8](MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

{
  v1 = *(v0 + 960);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 1232) = v4;
  *v4 = v0;
  v4[1] = MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:);

  return MLS.SwiftMLSGroupProtocol.groupVersion.getter(v0 + 832, v3, v2);
}

{
  v2 = *v1;
  *(*v1 + 1240) = v0;

  if (v0)
  {
    outlined destroy of MLS.OutgoingEventState(v2 + 608);
    outlined destroy of MLS.OutgoingGroupNameChange<Data>(v2 + 200);
    v3 = MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {

    v3 = MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v27 = *(v0 + 196);
  v1 = *(v0 + 1224);
  v2 = *(v0 + 1216);
  v3 = *(v0 + 1208);
  v4 = *(v0 + 1200);
  v5 = *(v0 + 1192);
  v6 = *(v0 + 1184);
  v26 = *(v0 + 1176);
  v7 = *(v0 + 1168);
  v29 = *(v0 + 1248);
  v28 = *(v0 + 960);
  v8 = *(v0 + 952);
  outlined destroy of MLS.OutgoingGroupNameChange<Data>(v0 + 200);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v6, v5);
  outlined consume of Data._Representation(v7, v26);
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
  *(v8 + 184) = *(v0 + 536);
  v18 = *(v0 + 552);
  v19 = *(v0 + 568);
  v20 = *(v0 + 584);
  *(v8 + 248) = *(v0 + 600);
  *(v8 + 232) = v20;
  *(v8 + 216) = v19;
  *(v8 + 200) = v18;
  *(v8 + 256) = 0;
  *(v8 + 264) = v27;
  *(v8 + 272) = v27;
  *(v8 + 280) = v29;
  *(v8 + 288) = *(v0 + 608);
  v21 = *(v0 + 624);
  v22 = *(v0 + 640);
  v23 = *(v0 + 656);
  *(v8 + 352) = *(v0 + 672);
  *(v8 + 320) = v22;
  *(v8 + 336) = v23;
  *(v8 + 304) = v21;
  *(v8 + 360) = 0;
  outlined init with copy of ServerBag.MLS(v28, v8 + 368);
  *(v8 + 408) = 0;
  *(v8 + 416) = *(v0 + 928);
  *(v8 + 424) = 0;
  *(v8 + 432) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 752));

  v24 = *(v0 + 8);

  return v24();
}

{
  v1 = *(v0 + 1240);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1112);
  v4 = *(v0 + 1104);
  v5 = *(v0 + 968);

  swift_getErrorValue();
  v6 = Error.readableDescription.getter(*(v0 + 864), *(v0 + 872));
  closure #1 in MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:)(v6, v7, v5, v3, v2);

  swift_getErrorValue();
  v8 = Error.readableDescription.getter(*(v0 + 888), *(v0 + 896));
  *(v0 + 1256) = v8;
  *(v0 + 1264) = v9;
  *(v0 + 904) = 12;
  *(v0 + 912) = v8;
  *(v0 + 920) = v9;
  *(v0 + 1272) = lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:), v4, 0);
}

{
  v1 = v0[158];
  v2 = v0[157];
  v13 = v0[153];
  v3 = v0[152];
  v4 = v0[151];
  v5 = v0[150];
  v6 = v0[149];
  v7 = v0[148];
  v8 = v0[147];
  v9 = v0[146];
  swift_allocError();
  *v10 = 12;
  *(v10 + 8) = v2;
  *(v10 + 16) = v1;
  outlined consume of Data._Representation(v9, v8);
  outlined consume of Data._Representation(v7, v6);
  outlined consume of Data._Representation(v5, v4);
  outlined consume of Data._Representation(v3, v13);
  outlined destroy of MLS.OutgoingGroupNameChange<Data>((v0 + 25));
  outlined destroy of MLS.OutgoingEventState((v0 + 76));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 94);

  v11 = v0[1];

  return v11();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 848);
  v6 = __CFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v3 + 1104);
    *(v3 + 1248) = v7;
    *(v3 + 196) = *(v3 + 840);

    a1 = MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:);
    a2 = v8;
    a3 = 0;
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

void closure #1 in MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
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
    _os_log_impl(&dword_264F1F000, oslog, v9, "EncryptGroupNameOperation failed to obtain era { identifier: %s, error: %s }", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }
}

char *MLS.EncryptGroupNameOperation.deinit()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  outlined consume of Data?(v1, v2);

  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS25EncryptGroupNameOperation_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t MLS.EncryptGroupNameOperation.__deallocating_deinit()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  outlined consume of Data?(v1, v2);

  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS25EncryptGroupNameOperation_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:) in conformance MLS.EncryptGroupNameOperation(uint64_t a1)
{
  v6 = (*(**v1 + 168) + **(**v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.perform(on:metricCollector:keyPackageResult:) in conformance MLS.EncryptGroupNameOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 176) + **(**v4 + 176));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.GroupOperation.group.getter in conformance MLS.EncryptGroupNameOperation()
{
  v1 = *(*v0 + 32);

  return v1;
}

double protocol witness for MLS.GroupOperation.context.getter in conformance MLS.EncryptGroupNameOperation@<D0>(void *a1@<X8>)
{
  v2 = *v1;
  v4 = *(*v1 + 48);
  v3 = *(*v1 + 56);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 72);
  v7 = *(v2 + 80);
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;

  outlined copy of Data?(v5, v6);

  return result;
}

uint64_t protocol witness for MLS.GroupOperation.logger.getter in conformance MLS.EncryptGroupNameOperation@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCO15SecureMessaging3MLS25EncryptGroupNameOperation_logger;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t outlined init with copy of MLS.OutgoingGroupNameChange<Data>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO23OutgoingGroupNameChangeVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23OutgoingGroupNameChangeVy_10Foundation4DataVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MLS.OutgoingGroupNameChange<Data>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO23OutgoingGroupNameChangeVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23OutgoingGroupNameChangeVy_10Foundation4DataVGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.EncryptGroupNameOperation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.EncryptGroupNameOperation and conformance MLS.EncryptGroupNameOperation();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptGroupNameOperation and conformance MLS.EncryptGroupNameOperation()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptGroupNameOperation and conformance MLS.EncryptGroupNameOperation;
  if (!lazy protocol witness table cache variable for type MLS.EncryptGroupNameOperation and conformance MLS.EncryptGroupNameOperation)
  {
    type metadata accessor for MLS.EncryptGroupNameOperation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptGroupNameOperation and conformance MLS.EncryptGroupNameOperation);
  }

  return result;
}

uint64_t type metadata accessor for MLS.EncryptGroupNameOperation(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLS.EncryptGroupNameOperation;
  if (!type metadata singleton initialization cache for MLS.EncryptGroupNameOperation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MLS.EncryptGroupNameOperation(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t dispatch thunk of MLS.EncryptGroupNameOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v6 = (*(*v1 + 168) + **(*v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t dispatch thunk of MLS.EncryptGroupNameOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 176) + **(*v4 + 176));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t MLS.GroupHealer.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double MLS.GroupHealer.featureFlagsStore.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_featureFlagsStore);

  return result;
}

uint64_t MLS.GroupHealer.selfMember.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_selfMember;
  v3 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_selfMember);
  v4 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_selfMember + 8);
  v5 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_selfMember + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v2 + 24);
  return outlined copy of MLS.AllMember(v3, v4);
}

double MLS.GroupHealer.clientIdentifier.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_clientIdentifier + 8);
  *a1 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_clientIdentifier);
  a1[1] = v2;

  return result;
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[12] = v8;
  v9[13] = v19;
  v9[10] = a8;
  v9[11] = v18;
  v9[8] = a6;
  v9[9] = a7;
  v9[6] = a3;
  v9[7] = a4;
  v9[4] = a1;
  v9[5] = a2;
  v9[14] = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9[15] = AssociatedConformanceWitness;
  v9[16] = *(*(AssociatedConformanceWitness + 8) + 8);
  v9[17] = swift_getAssociatedTypeWitness();
  v9[18] = swift_task_alloc();
  v12 = *(a8 - 8);
  v9[19] = v12;
  v9[20] = *(v12 + 64);
  v9[21] = swift_task_alloc();
  v13 = type metadata accessor for MLS.MLSError();
  v9[22] = v13;
  v9[23] = *(v13 - 8);
  v9[24] = swift_task_alloc();
  v9[25] = swift_task_alloc();
  v9[26] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[27] = AssociatedTypeWitness;
  v9[28] = *(AssociatedTypeWitness - 8);
  v9[29] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v15 = static MLSActor.shared;

  return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFTY0_, v15, 0);
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFTY0_()
{
  v90 = v0;
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v7 = v0[5];
  v86 = (*(v5 + 56))(v6, v5);
  v9 = v8;
  (*(v5 + 80))(v6, v5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v85 = (*(AssociatedConformanceWitness + 16))(v3, AssociatedConformanceWitness);
  v12 = v11;
  (*(v1 + 8))(v2, v3);
  v13 = *(*v4 + 176);
  if (v13(v7) == 1)
  {
    v14 = *(v0[23] + 16);
    v14(v0[26], v0[5], v0[22]);

    v15 = Logger.logObject.getter();
    v16 = v12;
    v17 = static os_log_type_t.error.getter();

    v18 = os_log_type_enabled(v15, v17);
    v19 = v0[26];
    v82 = v16;
    v83 = v9;
    v21 = v0[22];
    v20 = v0[23];
    if (v18)
    {
      v22 = swift_slowAlloc();
      v74 = v14;
      v23 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v88 = v78;
      *v22 = 136315650;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v83, &v88);
      *(v22 + 12) = 2080;
      *(v22 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v16, &v88);
      *(v22 + 22) = 2112;
      lazy protocol witness table accessor for type MLS.MLSError and conformance MLS.MLSError();
      swift_allocError();
      v74(v24, v19, v21);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      (*(v20 + 8))(v19, v21);
      *(v22 + 24) = v25;
      *v23 = v25;
      _os_log_impl(&dword_264F1F000, v15, v17, "GroupHealer %s reenqueueing behind self heal { identifier: %s, error: %@ }", v22, 0x20u);
      outlined destroy of NSObject?(v23);
      MEMORY[0x266755550](v23, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266755550](v78, -1, -1);
      MEMORY[0x266755550](v22, -1, -1);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
    }

    v80 = &_s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU_TATu;
  }

  else
  {
    v26 = v0[23];
    v27 = v13(v0[5]);
    v28 = *(v26 + 16);
    v29 = v0[22];
    v30 = v0[5];
    if (v27 != 2)
    {
      v28(v0[24], v30, v29);

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      v44 = os_log_type_enabled(v42, v43);
      v45 = v0[23];
      v46 = v0[24];
      v47 = v0[22];
      if (v44)
      {
        v81 = v28;
        v48 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v88 = v84;
        *v48 = 136315650;
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v9, &v88);
        v87 = v43;
        v50 = v49;

        *(v48 + 4) = v50;
        *(v48 + 12) = 2080;
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v12, &v88);

        *(v48 + 14) = v51;
        *(v48 + 22) = 2112;
        lazy protocol witness table accessor for type MLS.MLSError and conformance MLS.MLSError();
        swift_allocError();
        v81(v52, v46, v47);
        v53 = _swift_stdlib_bridgeErrorToNSError();
        (*(v45 + 8))(v46, v47);
        *(v48 + 24) = v53;
        *v76 = v53;
        _os_log_impl(&dword_264F1F000, v42, v87, "GroupHealer %s failed to perform SwiftMLS operation with unhealable error { identifier: %s, error: %@ }", v48, 0x20u);
        outlined destroy of NSObject?(v76);
        MEMORY[0x266755550](v76, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x266755550](v84, -1, -1);
        MEMORY[0x266755550](v48, -1, -1);
      }

      else
      {

        (*(v45 + 8))(v46, v47);
      }

      v65 = v0[17];
      v64 = v0[18];
      v66 = v0[16];
      v67 = v0[13];
      v68 = swift_checkMetadataState();
      v69 = swift_getAssociatedConformanceWitness();
      (*(v69 + 112))(v65, v69);
      v88 = 0;
      v89 = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      v70 = v89;
      v0[2] = v88;
      v0[3] = v70;
      MEMORY[0x2667545A0](0x534C4D7466697753, 0xEE002E726F727245);
      _print_unlocked<A, B>(_:_:)();
      (*(v66 + 104))(v64, v0[2], v0[3], v68, v66);
      swift_willThrowTyped(v67, v68, *(*(v66 + 8) + 8));

      v63 = v0[1];
      goto LABEL_16;
    }

    v28(v0[25], v30, v29);

    v31 = Logger.logObject.getter();
    v32 = v12;
    v33 = static os_log_type_t.error.getter();

    v34 = os_log_type_enabled(v31, v33);
    v35 = v0[25];
    v37 = v0[22];
    v36 = v0[23];
    v82 = v32;
    v83 = v9;
    if (v34)
    {
      v79 = v28;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v88 = v75;
      *v38 = 136315650;
      *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v83, &v88);
      *(v38 + 12) = 2080;
      *(v38 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v32, &v88);
      *(v38 + 22) = 2112;
      lazy protocol witness table accessor for type MLS.MLSError and conformance MLS.MLSError();
      swift_allocError();
      v79(v40, v35, v37);
      v41 = _swift_stdlib_bridgeErrorToNSError();
      (*(v36 + 8))(v35, v37);
      *(v38 + 24) = v41;
      *v39 = v41;
      _os_log_impl(&dword_264F1F000, v31, v33, "GroupHealer %s reenqueueing behind era advancement { identifier: %s, error: %@ }", v38, 0x20u);
      outlined destroy of NSObject?(v39);
      MEMORY[0x266755550](v39, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266755550](v75, -1, -1);
      MEMORY[0x266755550](v38, -1, -1);
    }

    else
    {

      (*(v36 + 8))(v35, v37);
    }

    v80 = &_s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU0_TATu;
  }

  v55 = v0[20];
  v54 = v0[21];
  v56 = v0[19];
  v57 = v0[12];
  v58 = v0[6];
  v73 = v0[7];
  v77 = v0[9];
  v59 = v0[4];
  v72 = *(v0 + 5);
  v60 = v0[10];
  (*(v56 + 16))(v54, v0[8], v60);
  v61 = (*(v56 + 80) + 88) & ~*(v56 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = v72;
  *(v62 + 32) = v57;
  *(v62 + 40) = v86;
  *(v62 + 48) = v83;
  *(v62 + 56) = v85;
  *(v62 + 64) = v82;
  *(v62 + 72) = v58;
  *(v62 + 80) = v73;
  (*(v56 + 32))(v62 + v61, v54, v60);
  *(v62 + ((v55 + v61 + 7) & 0xFFFFFFFFFFFFFFF8)) = v77;
  *v59 = v80;
  *(v59 + 8) = v62;
  *(v59 + 96) = 2;

  v63 = v0[1];
LABEL_16:

  return v63();
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[29] = v15;
  v8[30] = v16;
  v8[27] = a8;
  v8[28] = v14;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v8[21] = a2;
  v8[22] = a3;
  v8[20] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[31] = AssociatedTypeWitness;
  v8[32] = *(AssociatedTypeWitness - 8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v10 = swift_getAssociatedTypeWitness();
  v8[35] = v10;
  v8[36] = *(v10 - 8);
  v8[37] = swift_task_alloc();
  type metadata accessor for MLS.KeyPackageProvider(0);
  v8[38] = swift_task_alloc();
  v8[39] = swift_getAssociatedTypeWitness();
  v8[40] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  v8[41] = static MLSActor.shared;

  return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU_TY0_, v11, 0);
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU_TY0_()
{
  v45 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 184);
    v3 = *(v0 + 192);
    v6 = *(v0 + 168);
    v5 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v41 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v41);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v41);
    _os_log_impl(&dword_264F1F000, v1, v2, "GroupHealer %s performing self heal { identifier: %s }", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v9 = *(v0 + 312);
  v34 = *(v0 + 304);
  v10 = *(v0 + 280);
  v11 = *(v0 + 240);
  v12 = *(v0 + 248);
  v13 = *(v0 + 232);
  v38 = *(v0 + 208);
  v39 = *(v0 + 320);
  v36 = *(v0 + 200);
  v37 = *(v0 + 224);
  v14 = *(v0 + 160);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 336) = AssociatedConformanceWitness;
  v16 = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  *(v0 + 16) = v12;
  *(v0 + 24) = v9;
  *(v0 + 32) = v10;
  *(v0 + 40) = AssociatedConformanceWitness;
  *(v0 + 48) = v16;
  *(v0 + 56) = v17;
  v35 = type metadata accessor for MLS.SelfHealOperation(0, v0 + 16);
  v18 = *(v11 + 80);

  v18(v13, v11);
  outlined init with copy of MLS.SwiftMLSClientPicker(v14 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_swiftMLSClient, v0 + 64);
  v29 = *(v14 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_persister);
  v30 = *(v14 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_eventSender);
  v31 = *(v14 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_groupLoader);
  v32 = *(v14 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_eventSender + 8);
  v33 = *(v14 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_persister + 8);
  outlined init with copy of MLS.KeyPackageProvider(v14 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_keyPackageProvider, v34);
  outlined init with copy of ServerBag.MLS(v14 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_credentialProvider, v0 + 112);
  v20 = *(v14 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_selfMember + 8);
  v21 = *(v14 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_selfMember + 16);
  LOBYTE(v16) = *(v14 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_selfMember + 24);
  *&v41 = *(v14 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_selfMember);
  v19 = v41;
  *(&v41 + 1) = v20;
  v42 = v21;
  v43 = v16;
  v22 = *(v14 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_clientIdentifier + 8);
  v44[0] = *(v14 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_clientIdentifier);
  v44[1] = v22;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  outlined copy of MLS.AllMember(v19, v20);

  v23 = MLS.SelfHealOperation.__allocating_init(group:context:swiftMLSClient:groupLoader:persister:eventSender:keyPackageProvider:credentialProvider:selfMember:clientIdentifier:)(v36, v38, v39, (v0 + 64), v31, v29, v33, v30, v32, v34, (v0 + 112), &v41, v44);
  *(v0 + 344) = v23;
  *(v0 + 152) = v23;
  v40 = (*(*v37 + 216) + **(*v37 + 216));
  v24 = swift_task_alloc();
  *(v0 + 352) = v24;
  WitnessTable = swift_getWitnessTable();
  *v24 = v0;
  v24[1] = _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU_TQ1_;
  v26 = *(v0 + 296);
  v27 = *(v0 + 272);

  return v40(v26, v0 + 152, v35, WitnessTable, v27);
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU_TQ1_()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[41];
    v4 = _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU_TY3_;
  }

  else
  {
    v5 = v2[41];
    (*(v2[36] + 8))(v2[37], v2[35]);
    v4 = _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU_TY2_;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU_TY2_()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU_TY3_()
{
  v1 = *(v0[32] + 32);
  v1(v0[33], v0[34], v0[31]);
  v2 = _getErrorEmbeddedNSError<A>(_:)();
  v3 = v0[33];
  if (v2)
  {
    (*(v0[32] + 8))(v0[33], v0[31]);
  }

  else
  {
    v4 = v0[31];
    swift_allocError();
    v1(v5, v3, v4);
  }

  v6 = v0[1];

  return v6();
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU0_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = v15;
  v8[19] = v16;
  v8[16] = a8;
  v8[17] = v14;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v8[10] = a2;
  v8[11] = a3;
  v8[9] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[20] = AssociatedTypeWitness;
  v8[21] = *(AssociatedTypeWitness - 8);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v10 = swift_getAssociatedTypeWitness();
  v8[24] = v10;
  v8[25] = *(v10 - 8);
  v8[26] = swift_task_alloc();
  v8[27] = swift_getAssociatedTypeWitness();
  v8[28] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  v8[29] = static MLSActor.shared;

  return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU0_TY0_, v11, 0);
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU0_TY0_()
{
  v37 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[12];
    v3 = v0[13];
    v6 = v0[10];
    v5 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v36[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, v36);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, v36);
    _os_log_impl(&dword_264F1F000, v1, v2, "GroupHealer %s performing era advancement { identifier: %s }", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v9 = v0[27];
  v10 = v0[24];
  v11 = v0[19];
  v12 = v0[20];
  v13 = v0[18];
  v32 = v0[28];
  v31 = v0[15];
  v33 = v0[14];
  v34 = v0[17];
  v14 = v0[9];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[30] = AssociatedConformanceWitness;
  v16 = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v0[2] = v12;
  v0[3] = v9;
  v0[4] = v10;
  v0[5] = AssociatedConformanceWitness;
  v0[6] = v16;
  v0[7] = v17;
  v18 = type metadata accessor for MLS.EraAdvancementOperation(0, (v0 + 2));
  v19 = *(v11 + 80);

  v19(v13, v11);
  v20 = *(v14 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_persister);
  v21 = *(v14 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_persister + 8);
  v22 = *(v14 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_eventSender);
  v23 = *(v14 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_eventSender + 8);
  v24 = *(v14 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_clientIdentifier + 8);
  v36[0] = *(v14 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_clientIdentifier);
  v36[1] = v24;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v25 = MLS.EraAdvancementOperation.__allocating_init(group:context:persister:eventSender:clientIdentifier:)(v33, v31, v32, v20, v21, v22, v23, v36);
  v0[31] = v25;
  v0[8] = v25;
  v35 = (*(*v34 + 216) + **(*v34 + 216));
  v26 = swift_task_alloc();
  v0[32] = v26;
  WitnessTable = swift_getWitnessTable();
  *v26 = v0;
  v26[1] = _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU0_TQ1_;
  v28 = v0[26];
  v29 = v0[23];

  return v35(v28, v0 + 8, v18, WitnessTable, v29);
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU0_TQ1_()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[29];
    v4 = _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU0_TY3_;
  }

  else
  {
    v5 = v2[29];
    (*(v2[25] + 8))(v2[26], v2[24]);
    v4 = _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU0_TY2_;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU0_TY2_()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU0_TY3_()
{
  v1 = *(v0[21] + 32);
  v1(v0[22], v0[23], v0[20]);
  v2 = _getErrorEmbeddedNSError<A>(_:)();
  v3 = v0[22];
  if (v2)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);
  }

  else
  {
    v4 = v0[20];
    swift_allocError();
    v1(v5, v3, v4);
  }

  v6 = v0[1];

  return v6();
}

uint64_t MLS.GroupHealer.healingMethod(error:)()
{
  v1 = MLS.MLSError.healingMethod.getter();
  v2 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_featureFlagsStore);
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(2), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + v3);
  }

  else
  {
    v7[3] = &type metadata for SMAFeatureFlagsKey;
    v7[4] = lazy protocol witness table accessor for type SMAFeatureFlagsKey and conformance SMAFeatureFlagsKey();
    LOBYTE(v7[0]) = 2;

    v5 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  if (v5 & 1 | ((v1 - 3) < 0xFEu))
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t MLS.GroupHealer.deinit()
{
  v1 = OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  outlined destroy of MLS.SwiftMLSClientPicker(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_swiftMLSClient);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  outlined destroy of MLS.KeyPackageProvider(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_keyPackageProvider);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_credentialProvider));
  outlined consume of MLS.AllMember(*(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_selfMember), *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_selfMember + 8));

  return v0;
}

uint64_t MLS.GroupHealer.__deallocating_deinit()
{
  MLS.GroupHealer.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized MLS.GroupHealer.__allocating_init(featureFlagsStore:swiftMLSClient:groupLoader:persister:eventSender:keyPackageProvider:credentialProvider:selfMember:clientIdentifier:)(uint64_t *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, __int128 *a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  type metadata accessor for MLS.GroupHealer(0);
  v23 = swift_allocObject();

  return specialized MLS.GroupHealer.init(featureFlagsStore:swiftMLSClient:groupLoader:persister:eventSender:keyPackageProvider:credentialProvider:selfMember:clientIdentifier:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v23, a12, a13);
}

uint64_t specialized MLS.GroupHealer.init(featureFlagsStore:swiftMLSClient:groupLoader:persister:eventSender:keyPackageProvider:credentialProvider:selfMember:clientIdentifier:)(uint64_t *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, __int128 *a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = *a1;
  v29 = *a9;
  v28 = *(a9 + 2);
  v20 = *(a9 + 24);
  v30 = a10[1];
  v31 = *a10;
  Logger.init(subsystem:category:)();
  *(a11 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_featureFlagsStore) = v19;
  v21 = (a11 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_swiftMLSClient);
  v22 = a2[1];
  *v21 = *a2;
  v21[1] = v22;
  *(v21 + 25) = *(a2 + 25);
  *(a11 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_groupLoader) = a3;
  v23 = (a11 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_persister);
  *v23 = a4;
  v23[1] = a5;
  v24 = (a11 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_eventSender);
  *v24 = a6;
  v24[1] = a13;
  outlined init with take of MLS.KeyPackageProvider(a7, a11 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_keyPackageProvider);
  outlined init with take of MLS.KeyUpdatePolicy(a8, a11 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_credentialProvider);
  v25 = a11 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_selfMember;
  *v25 = v29;
  *(v25 + 16) = v28;
  *(v25 + 24) = v20;
  v26 = (a11 + OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupHealer_clientIdentifier);
  *v26 = v31;
  v26[1] = v30;
  return a11;
}

unint64_t lazy protocol witness table accessor for type MLS.MLSError and conformance MLS.MLSError()
{
  result = lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError;
  if (!lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError)
  {
    type metadata accessor for MLS.MLSError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError);
  }

  return result;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU0_TA()
{
  v2 = (*(*(v0[2] - 8) + 80) + 88) & ~*(*(v0[2] - 8) + 80);
  v10 = v0[5];
  v11 = v0[4];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[10];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU0_(v11, v10, v3, v4, v5, v6, v7, v0 + v2);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU_TA()
{
  v2 = (*(*(v0[2] - 8) + 80) + 88) & ~*(*(v0[2] - 8) + 80);
  v10 = v0[5];
  v11 = v0[4];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[10];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFyyYaYbKAA8MLSActorCYccfU_(v11, v10, v3, v4, v5, v6, v7, v0 + v2);
}

uint64_t type metadata accessor for MLS.GroupHealer(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLS.GroupHealer;
  if (!type metadata singleton initialization cache for MLS.GroupHealer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MLS.GroupHealer(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MLS.KeyPackageProvider(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t _s15SecureMessaging3MLSO11GroupHealerC6handle5error5group06cachedD09operation6runnerAC10EventQueueC6ResultO05SwiftC0ABO8MLSErrorO_SSAC0O16MLSGroupProtocol_pSgxAC15OperationRunnerCtYa9ErrorTypeQzYKAC0dS0RzlFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(*v10 + 168) + **(*v10 + 168));
  v18 = swift_task_alloc();
  *(v11 + 16) = v18;
  *v18 = v11;
  v18[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t outlined init with take of MLS.KeyPackageProvider(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.KeyPackageProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for Error._code.getter in conformance URIError.ErrorType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type URIError.ErrorType and conformance URIError.ErrorType();
  v5 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t URIError.underlyingErrorDescription.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static URIError.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance URIError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URIError.CodingKeys and conformance URIError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance URIError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URIError.CodingKeys and conformance URIError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t URIError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging8URIErrorV10CodingKeys011_2A11DA73D2K20F25FEB6E090875FDFEDELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging8URIErrorV10CodingKeys011_2A11DA73D2K20F25FEB6E090875FDFEDELLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[1] = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URIError.CodingKeys and conformance URIError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = 0;
  lazy protocol witness table accessor for type URIError.ErrorType and conformance URIError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type URIError.CodingKeys and conformance URIError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type URIError.CodingKeys and conformance URIError.CodingKeys;
  if (!lazy protocol witness table cache variable for type URIError.CodingKeys and conformance URIError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError.CodingKeys and conformance URIError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URIError.CodingKeys and conformance URIError.CodingKeys;
  if (!lazy protocol witness table cache variable for type URIError.CodingKeys and conformance URIError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError.CodingKeys and conformance URIError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URIError.CodingKeys and conformance URIError.CodingKeys;
  if (!lazy protocol witness table cache variable for type URIError.CodingKeys and conformance URIError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError.CodingKeys and conformance URIError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URIError.CodingKeys and conformance URIError.CodingKeys;
  if (!lazy protocol witness table cache variable for type URIError.CodingKeys and conformance URIError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError.CodingKeys and conformance URIError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URIError.ErrorType and conformance URIError.ErrorType()
{
  result = lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType;
  if (!lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType;
  if (!lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType;
  if (!lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType;
  if (!lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType;
  if (!lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError.ErrorType and conformance URIError.ErrorType);
  }

  return result;
}

uint64_t URIError.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging8URIErrorV10CodingKeys011_2A11DA73D2K20F25FEB6E090875FDFEDELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging8URIErrorV10CodingKeys011_2A11DA73D2K20F25FEB6E090875FDFEDELLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URIError.CodingKeys and conformance URIError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v15 = 0;
    lazy protocol witness table accessor for type URIError.ErrorType and conformance URIError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = 1;
    v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for VersatileError.underlyingErrorDescription.getter in conformance URIError()
{
  v1 = *v0;

  return v1;
}

uint64_t protocol witness for Error._domain.getter in conformance URIError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URIError and conformance URIError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance URIError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URIError and conformance URIError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance URIError(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance URI.URIType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7103860 && a2 == 0xE300000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance URI.URIType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance URI.URIType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance URI.URIType.TelCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance URI.URIType.TelCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t URI.URIType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3URIV7URITypeO13TelCodingKeys011_2A11DA73D2M20F25FEB6E090875FDFEDELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3URIV7URITypeO13TelCodingKeys011_2A11DA73D2M20F25FEB6E090875FDFEDELLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3URIV7URITypeO10CodingKeys011_2A11DA73D2L20F25FEB6E090875FDFEDELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3URIV7URITypeO10CodingKeys011_2A11DA73D2L20F25FEB6E090875FDFEDELLOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t lazy protocol witness table accessor for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys;
  if (!lazy protocol witness table cache variable for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys;
  if (!lazy protocol witness table cache variable for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys;
  if (!lazy protocol witness table cache variable for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys;
  if (!lazy protocol witness table cache variable for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys()
{
  result = lazy protocol witness table cache variable for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys;
  if (!lazy protocol witness table cache variable for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys;
  if (!lazy protocol witness table cache variable for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys;
  if (!lazy protocol witness table cache variable for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys);
  }

  return result;
}

Swift::Int URI.URIType.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](0);
  return Hasher._finalize()();
}

uint64_t URI.URIType.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3URIV7URITypeO13TelCodingKeys011_2A11DA73D2M20F25FEB6E090875FDFEDELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3URIV7URITypeO13TelCodingKeys011_2A11DA73D2M20F25FEB6E090875FDFEDELLOGMR);
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3URIV7URITypeO10CodingKeys011_2A11DA73D2L20F25FEB6E090875FDFEDELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3URIV7URITypeO10CodingKeys011_2A11DA73D2L20F25FEB6E090875FDFEDELLOGMR);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = KeyedDecodingContainer.allKeys.getter();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if ((specialized Collection<>.popFirst()() & 1) != 0 || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = type metadata accessor for DecodingError();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v16 = &type metadata for URI.URIType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  lazy protocol witness table accessor for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1Tm(v18);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance URI.URIType(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3URIV7URITypeO13TelCodingKeys011_2A11DA73D2M20F25FEB6E090875FDFEDELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3URIV7URITypeO13TelCodingKeys011_2A11DA73D2M20F25FEB6E090875FDFEDELLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3URIV7URITypeO10CodingKeys011_2A11DA73D2L20F25FEB6E090875FDFEDELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3URIV7URITypeO10CodingKeys011_2A11DA73D2L20F25FEB6E090875FDFEDELLOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URI.URIType.CodingKeys and conformance URI.URIType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type URI.URIType.TelCodingKeys and conformance URI.URIType.TelCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t URI.init(prefixedURI:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a3;
  v5 = type metadata accessor for Logger();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySsGMd, &_s17_StringProcessing5RegexVySsGMR);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_GSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v32 - v15;
  Regex.init(_regexString:version:)();
  lazy protocol witness table accessor for type Regex<Substring> and conformance Regex<A>();
  dispatch thunk of RegexComponent.regex.getter();
  String.subscript.getter();
  v17 = v37;
  Regex.wholeMatch(in:)();
  if (v17)
  {

    v18 = *(v8 + 8);
    v18(v11, v7);
    v18(v13, v7);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_GMd, &_s17_StringProcessing5RegexV5MatchVySs_GMR);
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  }

  else
  {

    v20 = *(v8 + 8);
    v20(v11, v7);
    v20(v13, v7);
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_GMd, &_s17_StringProcessing5RegexV5MatchVySs_GMR);
  v22 = (*(*(v21 - 8) + 48))(v16, 1, v21);
  result = outlined destroy of Regex<Substring>.Match?(v16);
  if (v22 == 1)
  {
    v24 = v34;
    Logger.init(subsystem:category:)();

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v38 = v28;
      *v27 = 136315138;
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v38);

      *(v27 + 4) = v29;
      _os_log_impl(&dword_264F1F000, v25, v26, "Invalid tel URI: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x266755550](v28, -1, -1);
      MEMORY[0x266755550](v27, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type URIError and conformance URIError();
    swift_allocError();
    *v31 = 0;
    v31[1] = 0;
    swift_willThrow();
    return (*(v35 + 8))(v24, v36);
  }

  else
  {
    v30 = v33;
    *v33 = a1;
    v30[1] = a2;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Regex<Substring> and conformance Regex<A>()
{
  result = lazy protocol witness table cache variable for type Regex<Substring> and conformance Regex<A>;
  if (!lazy protocol witness table cache variable for type Regex<Substring> and conformance Regex<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s17_StringProcessing5RegexVySsGMd, &_s17_StringProcessing5RegexVySsGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex<Substring> and conformance Regex<A>);
  }

  return result;
}

uint64_t outlined destroy of Regex<Substring>.Match?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_GSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type URIError and conformance URIError()
{
  result = lazy protocol witness table cache variable for type URIError and conformance URIError;
  if (!lazy protocol witness table cache variable for type URIError and conformance URIError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError and conformance URIError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URIError and conformance URIError;
  if (!lazy protocol witness table cache variable for type URIError and conformance URIError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError and conformance URIError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URIError and conformance URIError;
  if (!lazy protocol witness table cache variable for type URIError and conformance URIError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError and conformance URIError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URIError and conformance URIError;
  if (!lazy protocol witness table cache variable for type URIError and conformance URIError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError and conformance URIError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URIError and conformance URIError;
  if (!lazy protocol witness table cache variable for type URIError and conformance URIError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URIError and conformance URIError);
  }

  return result;
}

uint64_t URI.init(unprefixedTelURI:)@<X0>(void *a2@<X8>)
{
  v6 = 980182388;
  v7 = 0xE400000000000000;
  MEMORY[0x2667545A0]();

  result = URI.init(prefixedURI:)(980182388, 0xE400000000000000, &v6);
  if (!v2)
  {
    v5 = v7;
    *a2 = v6;
    a2[1] = v5;
  }

  return result;
}

uint64_t URI.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static URI.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance URI.CodingKeys()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance URI.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000002651E92E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance URI.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URI.CodingKeys and conformance URI.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance URI.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URI.CodingKeys and conformance URI.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t URI.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3URIV10CodingKeys011_2A11DA73D2K20F25FEB6E090875FDFEDELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3URIV10CodingKeys011_2A11DA73D2K20F25FEB6E090875FDFEDELLOGMR);
  v8 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URI.CodingKeys and conformance URI.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v9 = 1;
    lazy protocol witness table accessor for type URI.URIType and conformance URI.URIType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v5, v3);
}

Swift::Int URI.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  return Hasher._finalize()();
}

uint64_t URI.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3URIV10CodingKeys011_2A11DA73D2K20F25FEB6E090875FDFEDELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3URIV10CodingKeys011_2A11DA73D2K20F25FEB6E090875FDFEDELLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URI.CodingKeys and conformance URI.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  v15 = 1;
  lazy protocol witness table accessor for type URI.URIType and conformance URI.URIType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  a2[1] = v11;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance URI()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance URI(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type URI.CodingKeys and conformance URI.CodingKeys()
{
  result = lazy protocol witness table cache variable for type URI.CodingKeys and conformance URI.CodingKeys;
  if (!lazy protocol witness table cache variable for type URI.CodingKeys and conformance URI.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.CodingKeys and conformance URI.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URI.CodingKeys and conformance URI.CodingKeys;
  if (!lazy protocol witness table cache variable for type URI.CodingKeys and conformance URI.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.CodingKeys and conformance URI.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URI.CodingKeys and conformance URI.CodingKeys;
  if (!lazy protocol witness table cache variable for type URI.CodingKeys and conformance URI.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.CodingKeys and conformance URI.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URI.CodingKeys and conformance URI.CodingKeys;
  if (!lazy protocol witness table cache variable for type URI.CodingKeys and conformance URI.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.CodingKeys and conformance URI.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URI.URIType and conformance URI.URIType()
{
  result = lazy protocol witness table cache variable for type URI.URIType and conformance URI.URIType;
  if (!lazy protocol witness table cache variable for type URI.URIType and conformance URI.URIType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.URIType and conformance URI.URIType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URI.URIType and conformance URI.URIType;
  if (!lazy protocol witness table cache variable for type URI.URIType and conformance URI.URIType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.URIType and conformance URI.URIType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URI.URIType and conformance URI.URIType;
  if (!lazy protocol witness table cache variable for type URI.URIType and conformance URI.URIType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI.URIType and conformance URI.URIType);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for URIError(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type URIError and conformance URIError();
  a1[2] = lazy protocol witness table accessor for type URIError and conformance URIError();
  a1[3] = lazy protocol witness table accessor for type URIError and conformance URIError();
  result = lazy protocol witness table accessor for type URIError and conformance URIError();
  a1[4] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for URIError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for URIError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t specialized MLS.GroupOperation.context(commitOutput:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO0C4InfoVSgMd, &_s8SwiftMLS0B0O5GroupO0C4InfoVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v54 - v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 40))(v9, v10);
  v59 = v12;
  v14 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  (*(v13 + 24))(v14, v13);
  v15 = type metadata accessor for MLS.Group.GroupInfo();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {
    outlined destroy of NSObject?(v8, &_s8SwiftMLS0B0O5GroupO0C4InfoVSgMd, &_s8SwiftMLS0B0O5GroupO0C4InfoVSgMR);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v57 = v20;
      *v19 = 136315394;
      v21 = (*(*v2 + 128))();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v57);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v25 = *(v3 + 40);
      v24 = *(v3 + 48);

      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, &v57);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_264F1F000, v17, v18, "GroupOperation %s commitOutput missing nextGroupInfo { identifier: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v20, -1, -1);
      MEMORY[0x266755550](v19, -1, -1);
    }

    LOBYTE(v57) = 19;
    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    v58 = 0uLL;
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
    }

    else
    {
      swift_allocError();
      v50 = v58;
      *v51 = v57;
      *(v51 + 8) = v50;
    }

    swift_willThrow();
    return outlined consume of Data?(v11, v59);
  }

  else
  {
    v56 = v11;
    v27 = MLS.Group.GroupInfo.rawRepresentation.getter();
    v55 = v28;
    (*(v16 + 8))(v8, v15);
    v29 = a1[3];
    v30 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v29);
    result = (*(v30 + 32))(v29, v30);
    if (v32 >> 60 == 15)
    {
      v33 = v27;
      v34 = v55;

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v57 = v38;
        *v37 = 136315394;
        v39 = (*(*v2 + 128))();
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v57);

        *(v37 + 4) = v41;
        *(v37 + 12) = 2080;
        v43 = *(v3 + 40);
        v42 = *(v3 + 48);

        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v42, &v57);

        *(v37 + 14) = v44;
        _os_log_impl(&dword_264F1F000, v35, v36, "GroupOperation %s commitOutput missing epochAuthenticator { identifier: %s }", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v38, -1, -1);
        MEMORY[0x266755550](v37, -1, -1);
      }

      v45 = v34;
      LOBYTE(v57) = 18;
      lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
      v58 = 0uLL;
      v46 = _getErrorEmbeddedNSError<A>(_:)();
      v47 = v56;
      if (v46)
      {
      }

      else
      {
        swift_allocError();
        v52 = v58;
        *v53 = v57;
        *(v53 + 8) = v52;
      }

      swift_willThrow();
      outlined consume of Data?(v47, v59);
      return outlined consume of Data._Representation(v33, v45);
    }

    else
    {
      *a2 = result;
      a2[1] = v32;
      v48 = v59;
      a2[2] = v56;
      a2[3] = v48;
      v49 = v55;
      a2[4] = v27;
      a2[5] = v49;
    }
  }

  return result;
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO0C4InfoVSgMd, &_s8SwiftMLS0B0O5GroupO0C4InfoVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v54 - v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 40))(v9, v10);
  v59 = v12;
  v14 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  (*(v13 + 24))(v14, v13);
  v15 = type metadata accessor for MLS.Group.GroupInfo();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {
    outlined destroy of NSObject?(v8, &_s8SwiftMLS0B0O5GroupO0C4InfoVSgMd, &_s8SwiftMLS0B0O5GroupO0C4InfoVSgMR);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v57 = v20;
      *v19 = 136315394;
      v21 = (*(*v2 + 136))();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v57);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v25 = *(v3 + 40);
      v24 = *(v3 + 48);

      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, &v57);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_264F1F000, v17, v18, "GroupOperation %s commitOutput missing nextGroupInfo { identifier: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v20, -1, -1);
      MEMORY[0x266755550](v19, -1, -1);
    }

    LOBYTE(v57) = 19;
    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    v58 = 0uLL;
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
    }

    else
    {
      swift_allocError();
      v50 = v58;
      *v51 = v57;
      *(v51 + 8) = v50;
    }

    swift_willThrow();
    return outlined consume of Data?(v11, v59);
  }

  else
  {
    v56 = v11;
    v27 = MLS.Group.GroupInfo.rawRepresentation.getter();
    v55 = v28;
    (*(v16 + 8))(v8, v15);
    v29 = a1[3];
    v30 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v29);
    result = (*(v30 + 32))(v29, v30);
    if (v32 >> 60 == 15)
    {
      v33 = v27;
      v34 = v55;

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v57 = v38;
        *v37 = 136315394;
        v39 = (*(*v2 + 136))();
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v57);

        *(v37 + 4) = v41;
        *(v37 + 12) = 2080;
        v43 = *(v3 + 40);
        v42 = *(v3 + 48);

        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v42, &v57);

        *(v37 + 14) = v44;
        _os_log_impl(&dword_264F1F000, v35, v36, "GroupOperation %s commitOutput missing epochAuthenticator { identifier: %s }", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v38, -1, -1);
        MEMORY[0x266755550](v37, -1, -1);
      }

      v45 = v34;
      LOBYTE(v57) = 18;
      lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
      v58 = 0uLL;
      v46 = _getErrorEmbeddedNSError<A>(_:)();
      v47 = v56;
      if (v46)
      {
      }

      else
      {
        swift_allocError();
        v52 = v58;
        *v53 = v57;
        *(v53 + 8) = v52;
      }

      swift_willThrow();
      outlined consume of Data?(v47, v59);
      return outlined consume of Data._Representation(v33, v45);
    }

    else
    {
      *a2 = result;
      a2[1] = v32;
      v48 = v59;
      a2[2] = v56;
      a2[3] = v48;
      v49 = v55;
      a2[4] = v27;
      a2[5] = v49;
    }
  }

  return result;
}

uint64_t MLS.AddMembersOperation.group.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

double MLS.AddMembersOperation.context.getter@<D0>(void *a1@<X8>)
{
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;

  outlined copy of Data?(v4, v5);

  return result;
}

double MLS.AddMembersOperation.clientIdentifier.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = *(v1 + 96);
  a1[1] = v2;

  return result;
}

uint64_t MLS.AddMembersOperation.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS19AddMembersOperation_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.AddMembersOperation.__allocating_init(otherMembers:group:context:persister:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v14 = swift_allocObject();
  v19 = a4[1];
  v20 = *a4;
  v15 = *(a4 + 4);
  v17 = *a7;
  v16 = a7[1];
  Logger.init(subsystem:category:)();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = v20;
  *(v14 + 56) = v19;
  *(v14 + 72) = v15;
  *(v14 + 80) = a5;
  *(v14 + 88) = a6;
  *(v14 + 96) = v17;
  *(v14 + 104) = v16;
  return v14;
}

uint64_t MLS.AddMembersOperation.init(otherMembers:group:context:persister:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v17 = a4[1];
  v18 = *a4;
  v13 = *(a4 + 4);
  v14 = *a7;
  v15 = a7[1];
  Logger.init(subsystem:category:)();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = v18;
  *(v7 + 56) = v17;
  *(v7 + 72) = v13;
  *(v7 + 80) = a5;
  *(v7 + 88) = a6;
  *(v7 + 96) = v14;
  *(v7 + 104) = v15;
  return v7;
}

uint64_t MLS.AddMembersOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  *(v1 + 16) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.AddMembersOperation.membersRequiringKeyPackages(swiftMLSGroup:), v2, 0);
}

{
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  *(v5 + 1088) = v4;
  *(v5 + 1080) = a2;
  *(v5 + 1072) = a1;
  *(v5 + 1096) = type metadata accessor for MetricCollector.Event(0);
  *(v5 + 1104) = swift_task_alloc();
  *(v5 + 1112) = swift_task_alloc();
  *(v5 + 1120) = *a3;
  *(v5 + 1128) = *(a4 + 8);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  *(v5 + 1144) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:), v8, 0);
}

uint64_t MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v24 = v0;
  v1 = v0[136];
  v0[129] = v0[140];
  v2 = *(v1 + 40);
  v0[144] = v2;
  v3 = *(v1 + 48);
  v0[145] = v3;
  v0[146] = OBJC_IVAR____TtCO15SecureMessaging3MLS19AddMembersOperation_logger;
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
    _os_log_impl(&dword_264F1F000, v4, v5, "AddMembersOperation adding KeyPackages to group { identifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v8 = v0[140];
  v9 = v0[139];
  v10 = v0[138];
  v11 = v0[137];
  v12 = v0[135];
  Date.init()();
  v13 = *(v11 + 20);
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(v9 + v13, 1, 1, v14);
  outlined init with take of MetricCollector.Event(v9, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v8;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, 0x534C4D7466697753, 0xEE0074696D6D6F43, isUniquelyReferenced_nonNull_native);
  v16 = v23;
  v0[147] = v23;

  v0[129] = v16;
  v17 = v12[3];
  v18 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v17);
  v22 = (*(v18 + 184) + **(v18 + 184));
  v19 = swift_task_alloc();
  v0[148] = v19;
  *v19 = v0;
  v19[1] = MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:);
  v20 = v0[142];

  return v22(v0 + 96, v20, v17, v18);
}

{
  v2 = *v1;
  *(*v1 + 1192) = v0;

  if (v0)
  {
    v3 = *(v2 + 1144);

    v4 = MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:);
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 1144);
    v4 = MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v92 = v0;
  v1 = *(v0 + 1088);
  v2._countAndFlagsBits = 0x534C4D7466697753;
  v2._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v2);
  v3 = *(v1 + 16);
  *(v0 + 1200) = v3;
  outlined init with copy of ServerBag.MLS(v0 + 768, v0 + 808);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v3;
    v7 = *(v0 + 1160);
    v8 = *(v0 + 1152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v86 = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v86);
    *(v9 + 12) = 2080;
    v11 = *(v0 + 832);
    __swift_project_boxed_opaque_existential_1((v0 + 808), v11);
    v12 = *(v11 - 8);
    swift_task_alloc();
    (*(v12 + 16))();
    v13 = String.init<A>(describing:)();
    v15 = v14;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 808));
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v86);

    *(v9 + 14) = v16;
    v3 = v6;
    _os_log_impl(&dword_264F1F000, v4, v5, "AddMembersOperation creating event { identifier: %s, commitOutput: %s }", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 808));
  }

  v17 = *(v0 + 792);
  v18 = *(v0 + 800);
  __swift_project_boxed_opaque_existential_1((v0 + 768), v17);
  MLS.SwiftMLSCommitOutputProtocol.outgoingCommit.getter(v17, v18, &v86);
  v19 = v87;
  v83 = v86;
  *(v0 + 1208) = v87;
  v20 = v89;
  v85 = v88;
  *(v0 + 1216) = v88;
  *(v0 + 1224) = v20;
  v21 = *(v0 + 792);
  v22 = *(v0 + 800);
  __swift_project_boxed_opaque_existential_1((v0 + 768), v21);
  MLS.SwiftMLSCommitOutputProtocol.outgoingWelcome.getter(v21, v22, &v86);
  v23 = v86;
  v24 = v87;
  *(v0 + 1232) = v86;
  *(v0 + 1240) = v24;
  v26 = v88;
  v25 = v89;
  *(v0 + 1248) = v88;
  *(v0 + 1256) = v25;
  if (!v24)
  {
    v34 = v20;

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 1160);
    if (v37)
    {
      v39 = *(v0 + 1152);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v86 = v41;
      *v40 = 136315138;
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v38, &v86);

      *(v40 + 4) = v42;
      _os_log_impl(&dword_264F1F000, v35, v36, "AddMembersOperation missing welcome message { identifier: %s }", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x266755550](v41, -1, -1);
      MEMORY[0x266755550](v40, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    swift_allocError();
    *v67 = 4;
    *(v67 + 8) = 0;
    *(v67 + 16) = 0;
    swift_willThrow();

    outlined consume of Data._Representation(v85, v34);
    goto LABEL_14;
  }

  v84 = v19;
  v27 = *(v0 + 1192);
  specialized MLS.GroupOperation.context(commitOutput:)((v0 + 768), &v86);
  v28 = v86;
  v29 = v87;
  *(v0 + 1264) = v86;
  *(v0 + 1272) = v29;
  v30 = v88;
  v31 = v89;
  *(v0 + 1280) = v88;
  *(v0 + 1288) = v31;
  v32 = v90;
  v33 = v91;
  *(v0 + 1296) = v90;
  *(v0 + 1304) = v33;
  if (v27)
  {

    outlined consume of Data._Representation(v85, v20);
    outlined consume of MLS.OutgoingMessage?(v23, v24, v26, v25);

LABEL_14:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 768));

    v68 = *(v0 + 8);

    return v68();
  }

  v78 = *(v0 + 1160);
  v79 = *(v0 + 1152);
  v74 = v28;
  v75 = *(v0 + 1128);
  v43 = *(v0 + 1088);
  v80 = v30;
  v81 = v33;
  v82 = v32;
  v72 = v29;
  v73 = v31;
  v44 = objc_allocWithZone(MEMORY[0x277CCAD78]);

  v45 = [v44 init];
  v46 = [v45 UUIDString];

  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v48;
  v77 = v47;

  v49 = v23;
  v70 = *(v43 + 64);
  v71 = *(v43 + 56);
  v50 = v3;
  v51 = *(v0 + 1032);

  outlined copy of Data?(v71, v70);
  v52 = v51;

  outlined copy of Data._Representation(v85, v20);
  v53 = v49;
  outlined copy of MLS.OutgoingMessage?(v49, v24, v26, v25);
  v54 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v50);

  *(v0 + 200) = v79;
  *(v0 + 208) = v78;
  *(v0 + 216) = v77;
  *(v0 + 224) = v76;
  *(v0 + 232) = v71;
  *(v0 + 240) = v70;
  *(v0 + 248) = v52;
  *(v0 + 256) = v83;
  *(v0 + 264) = v84;
  *(v0 + 272) = v85;
  *(v0 + 280) = v20;
  *(v0 + 288) = v53;
  *(v0 + 296) = v24;
  *(v0 + 304) = v26;
  *(v0 + 312) = v25;
  *(v0 + 320) = v54;
  *(v0 + 328) = v74;
  *(v0 + 336) = v72;
  *(v0 + 344) = v80;
  *(v0 + 352) = v73;
  *(v0 + 360) = v82;
  *(v0 + 368) = v81;
  v55 = *(v0 + 232);
  v56 = *(v0 + 200);
  v57 = *(v0 + 344);
  *(v0 + 144) = *(v0 + 328);
  *(v0 + 160) = v57;
  v58 = *(v0 + 216);
  *(v0 + 16) = v56;
  *(v0 + 32) = v58;
  v59 = *(v0 + 264);
  v60 = *(v0 + 280);
  v61 = *(v0 + 312);
  *(v0 + 112) = *(v0 + 296);
  *(v0 + 128) = v61;
  v62 = *(v0 + 248);
  *(v0 + 80) = v59;
  *(v0 + 96) = v60;
  *(v0 + 48) = v55;
  *(v0 + 64) = v62;
  *(v0 + 176) = *(v0 + 360);
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi0_(v0 + 16);
  v63 = *(v43 + 56);
  v64 = *(v43 + 64);
  *(v0 + 624) = v77;
  *(v0 + 632) = v76;
  *(v0 + 640) = v75;
  *(v0 + 648) = v50;
  *(v0 + 656) = 1;
  *(v0 + 664) = v79;
  *(v0 + 672) = v78;
  *(v0 + 680) = v63;
  *(v0 + 688) = v64;
  *(v0 + 616) = v64;
  v65 = *(v0 + 672);
  *(v0 + 584) = *(v0 + 656);
  *(v0 + 600) = v65;
  v66 = *(v0 + 640);
  *(v0 + 552) = *(v0 + 624);
  *(v0 + 568) = v66;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  outlined copy of Data._Representation(v74, v72);
  outlined copy of Data?(v80, v73);
  outlined copy of Data._Representation(v82, v81);
  outlined init with copy of MLS.OutgoingAddMember<MLS.AllMember, Data>(v0 + 200, v0 + 376);

  outlined copy of Data?(v63, v64);
  outlined init with copy of MLS.OutgoingEventState(v0 + 624, v0 + 696);

  return MEMORY[0x2822009F8](MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

{
  v1 = v0[136];
  v2 = v1[11];
  ObjectType = swift_getObjectType();
  v4 = v1[3];
  v5 = v1[4];

  v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v6);
  v0[164] = v7;

  v8 = v1[13];
  v0[127] = v1[12];
  v0[128] = v8;

  v9 = swift_task_alloc();
  v0[165] = v9;
  *v9 = v0;
  v9[1] = MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:);

  return MLS.Persister.addPendingMembers(identifier:otherMembers:clientIdentifier:)(v4, v5, v7, v0 + 127, ObjectType, v2);
}

{
  v2 = *v1;
  *(*v1 + 1328) = v0;

  if (v0)
  {
    outlined destroy of MLS.OutgoingEventState(v2 + 624);

    v3 = MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {

    v3 = MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 1144);

  return MEMORY[0x2822009F8](MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:), v1, 0);
}

{
  v9 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 1160);
    v4 = *(v0 + 1152);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v8);
    _os_log_impl(&dword_264F1F000, v1, v2, "AddMembersOperation returning operation result { identifier: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  swift_retain_n();

  return MEMORY[0x2822009F8](MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

{
  v1 = *(v0 + 1328);
  v2 = *(v0 + 1160);
  v3 = *(v0 + 1152);
  v4 = *(v0 + 1144);
  v5 = *(v0 + 1088);

  swift_getErrorValue();
  v6 = Error.readableDescription.getter(*(v0 + 856), *(v0 + 864));
  closure #1 in MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:)(v6, v7, v5, v3, v2, "AddMembersOperation failed to save pending members { identifier: %s, error: %s }");

  swift_getErrorValue();
  v8 = Error.readableDescription.getter(*(v0 + 880), *(v0 + 888));
  *(v0 + 1336) = v8;
  *(v0 + 1344) = v9;
  *(v0 + 896) = 8;
  *(v0 + 904) = v8;
  *(v0 + 912) = v9;
  *(v0 + 1352) = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:), v4, 0);
}

{
  v1 = v0[168];
  v2 = v0[167];
  v16 = v0[162];
  v17 = v0[163];
  v14 = v0[160];
  v15 = v0[161];
  v12 = v0[158];
  v13 = v0[159];
  v3 = v0[157];
  v4 = v0[156];
  v5 = v0[155];
  v6 = v0[154];
  v7 = v0[153];
  v8 = v0[152];
  swift_allocError();
  *v9 = 8;
  *(v9 + 8) = v2;
  *(v9 + 16) = v1;

  outlined consume of Data._Representation(v8, v7);
  outlined consume of MLS.OutgoingMessage?(v6, v5, v4, v3);
  outlined consume of Data._Representation(v12, v13);
  outlined consume of Data?(v14, v15);
  outlined consume of Data._Representation(v16, v17);
  outlined destroy of NSObject?((v0 + 25), &_s15SecureMessaging3MLSO17OutgoingAddMemberVy_AC03AllF0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingAddMemberVy_AC03AllF0O10Foundation4DataVGMR);
  outlined destroy of MLS.OutgoingEventState((v0 + 78));
  outlined destroy of NSObject?((v0 + 25), &_s15SecureMessaging3MLSO17OutgoingAddMemberVy_AC03AllF0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingAddMemberVy_AC03AllF0O10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);

  v10 = v0[1];

  return v10();
}

{
  v1 = *(v0 + 1080);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 1360) = v4;
  *v4 = v0;
  v4[1] = MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:);

  return MLS.SwiftMLSGroupProtocol.groupVersion.getter(v0 + 920, v3, v2);
}

{
  v2 = *v1;
  *(*v1 + 1368) = v0;

  if (v0)
  {
    outlined destroy of MLS.OutgoingEventState(v2 + 624);
    v3 = MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {

    v3 = MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v32 = *(v0 + 196);
  v33 = *(v0 + 1376);
  v1 = *(v0 + 1304);
  v2 = *(v0 + 1296);
  v3 = *(v0 + 1288);
  v4 = *(v0 + 1280);
  v5 = *(v0 + 1272);
  v6 = *(v0 + 1264);
  v27 = *(v0 + 1248);
  v28 = *(v0 + 1256);
  v7 = *(v0 + 1232);
  v29 = *(v0 + 1216);
  v30 = *(v0 + 1224);
  v26 = *(v0 + 1240);
  v31 = *(v0 + 1080);
  v8 = *(v0 + 1072);
  outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO17OutgoingAddMemberVy_AC03AllF0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingAddMemberVy_AC03AllF0O10Foundation4DataVGMR);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data?(v4, v3);
  outlined consume of Data._Representation(v6, v5);
  outlined consume of MLS.OutgoingMessage?(v7, v26, v27, v28);

  outlined consume of Data._Representation(v29, v30);
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
  *(v8 + 184) = *(v0 + 552);
  v18 = *(v0 + 568);
  v19 = *(v0 + 584);
  v20 = *(v0 + 600);
  *(v8 + 248) = *(v0 + 616);
  *(v8 + 232) = v20;
  *(v8 + 216) = v19;
  *(v8 + 200) = v18;
  *(v8 + 256) = 0;
  *(v8 + 264) = v32;
  *(v8 + 272) = v32;
  *(v8 + 280) = v33;
  *(v8 + 288) = *(v0 + 624);
  v21 = *(v0 + 640);
  v22 = *(v0 + 656);
  v23 = *(v0 + 672);
  *(v8 + 352) = *(v0 + 688);
  *(v8 + 320) = v22;
  *(v8 + 336) = v23;
  *(v8 + 304) = v21;
  *(v8 + 360) = 0;
  outlined init with copy of ServerBag.MLS(v31, v8 + 368);
  *(v8 + 408) = 0;
  *(v8 + 416) = *(v0 + 1032);
  *(v8 + 424) = 0;
  *(v8 + 432) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 768));

  v24 = *(v0 + 8);

  return v24();
}

{
  v1 = *(v0 + 1368);
  v2 = *(v0 + 1160);
  v3 = *(v0 + 1152);
  v4 = *(v0 + 1144);
  v5 = *(v0 + 1088);

  swift_getErrorValue();
  v6 = Error.readableDescription.getter(*(v0 + 952), *(v0 + 960));
  closure #1 in MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:)(v6, v7, v5, v3, v2, "AddMembersOperation failed to obtain era { identifier: %s, error: %s }");

  swift_getErrorValue();
  v8 = Error.readableDescription.getter(*(v0 + 976), *(v0 + 984));
  *(v0 + 1384) = v8;
  *(v0 + 1392) = v9;
  *(v0 + 992) = 6;
  *(v0 + 1000) = v8;
  *(v0 + 1008) = v9;
  *(v0 + 1400) = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:), v4, 0);
}

{
  v1 = v0[174];
  v2 = v0[173];
  v16 = v0[162];
  v17 = v0[163];
  v14 = v0[160];
  v15 = v0[161];
  v12 = v0[158];
  v13 = v0[159];
  v3 = v0[157];
  v4 = v0[156];
  v5 = v0[155];
  v6 = v0[154];
  v7 = v0[153];
  v8 = v0[152];
  swift_allocError();
  *v9 = 6;
  *(v9 + 8) = v2;
  *(v9 + 16) = v1;

  outlined consume of Data._Representation(v8, v7);
  outlined consume of MLS.OutgoingMessage?(v6, v5, v4, v3);
  outlined consume of Data._Representation(v12, v13);
  outlined consume of Data?(v14, v15);
  outlined consume of Data._Representation(v16, v17);
  outlined destroy of NSObject?((v0 + 25), &_s15SecureMessaging3MLSO17OutgoingAddMemberVy_AC03AllF0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingAddMemberVy_AC03AllF0O10Foundation4DataVGMR);
  outlined destroy of MLS.OutgoingEventState((v0 + 78));
  outlined destroy of NSObject?((v0 + 25), &_s15SecureMessaging3MLSO17OutgoingAddMemberVy_AC03AllF0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingAddMemberVy_AC03AllF0O10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);

  v10 = v0[1];

  return v10();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 936);
  v6 = __CFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v3 + 1144);
    *(v3 + 1376) = v7;
    *(v3 + 196) = *(v3 + 928);

    a1 = MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:);
    a2 = v8;
    a3 = 0;
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

void closure #1 in MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, const char *a6)
{

  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v15);
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v15);
    _os_log_impl(&dword_264F1F000, oslog, v11, a6, v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }
}

char *MLS.AddMembersOperation.deinit()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  outlined consume of Data?(v1, v2);

  swift_unknownObjectRelease();

  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS19AddMembersOperation_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t MLS.AddMembersOperation.__deallocating_deinit()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  outlined consume of Data?(v1, v2);

  swift_unknownObjectRelease();

  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS19AddMembersOperation_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:) in conformance MLS.AddMembersOperation(uint64_t a1)
{
  v6 = (*(**v1 + 184) + **(**v1 + 184));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.perform(on:metricCollector:keyPackageResult:) in conformance MLS.AddMembersOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 192) + **(**v4 + 192));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.GroupOperation.group.getter in conformance MLS.AddMembersOperation()
{
  v1 = *(*v0 + 24);

  return v1;
}

double protocol witness for MLS.GroupOperation.context.getter in conformance MLS.AddMembersOperation@<D0>(void *a1@<X8>)
{
  v2 = *v1;
  v4 = *(*v1 + 40);
  v3 = *(*v1 + 48);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 64);
  v7 = *(v2 + 72);
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;

  outlined copy of Data?(v5, v6);

  return result;
}

uint64_t protocol witness for MLS.GroupOperation.logger.getter in conformance MLS.AddMembersOperation@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCO15SecureMessaging3MLS19AddMembersOperation_logger;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t outlined init with copy of MLS.OutgoingAddMember<MLS.AllMember, Data>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17OutgoingAddMemberVy_AC03AllF0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingAddMemberVy_AC03AllF0O10Foundation4DataVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t instantiation function for generic protocol witness table for MLS.AddMembersOperation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation()
{
  result = lazy protocol witness table cache variable for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation;
  if (!lazy protocol witness table cache variable for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation)
  {
    type metadata accessor for MLS.AddMembersOperation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation);
  }

  return result;
}

uint64_t type metadata accessor for MLS.AddMembersOperation(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLS.AddMembersOperation;
  if (!type metadata singleton initialization cache for MLS.AddMembersOperation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MLS.AddMembersOperation(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t dispatch thunk of MLS.AddMembersOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v6 = (*(*v1 + 184) + **(*v1 + 184));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t dispatch thunk of MLS.AddMembersOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 192) + **(*v4 + 192));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v15;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v10 = type metadata accessor for ContinuousClock();
  v8[11] = v10;
  v8[12] = *(v10 - 8);
  v8[13] = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v8[14] = v11;
  *v11 = v8;
  v11[1] = specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);

  return v13(v8 + 21);
}

uint64_t specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:)()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);
  }

  else
  {
    v2 = specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2(v1);
}

{

  return MEMORY[0x2822009F8](specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:), 0, 0);
}

{
  v3 = *v1;
  v2 = *v1;
  v4 = *v1;

  v5 = v2[13];
  v6 = v2[12];
  v7 = v2[11];
  if (!v0)
  {
    (*(v6 + 8))(v5, v7);
    v8 = swift_task_alloc();
    v3[20] = v8;
    *v8 = v4;
    v8[1] = specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);

    JUMPOUT(0x264FC1CA0);
  }

  (*(v6 + 8))(v5, v7);

  return MEMORY[0x2822009F8](specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:), 0, 0);
}

{

  return MEMORY[0x2822009F8](specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:), 0, 0);
}

{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v1, v2);

  v3 = *(v0 + 8);

  return v3(1);
}

{

  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2(v1);
}

void specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:)()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v15 = (v1 + *v1);
    v2 = swift_task_alloc();
    *(v0 + 128) = v2;
    *v2 = v0;
    v2[1] = specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);
    v3 = *(v0 + 120);
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = *(v0 + 16);

    v15(v5, v4, v6, v3);
  }

  else
  {
    v7 = *(v0 + 16);
    *(v0 + 136) = v7 + 1;
    if (v7 == -1)
    {
      __break(1u);
    }

    else if (v7 > 2)
    {
      v12 = *(v0 + 72);
      if (v12)
      {

        v16 = (v12 + *v12);
        v13 = swift_task_alloc();
        *(v0 + 152) = v13;
        *v13 = v0;
        v13[1] = specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);

        v16();
      }

      else
      {

        v14 = *(v0 + 8);

        v14(1);
      }
    }

    else
    {
      v8 = static Duration.seconds(_:)();
      v10 = v9;
      static Clock<>.continuous.getter();
      v11 = swift_task_alloc();
      *(v0 + 144) = v11;
      *v11 = v0;
      v11[1] = specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);

      specialized Clock.sleep(for:tolerance:)(v8, v10, 0, 0, 1);
    }
  }
}

{
  v1 = *(v0 + 16);
  *(v0 + 136) = v1 + 1;
  if (v1 == -1)
  {
    __break(1u);
  }

  else if (v1 > 2)
  {
    v6 = *(v0 + 72);
    if (v6)
    {

      v9 = (v6 + *v6);
      v7 = swift_task_alloc();
      *(v0 + 152) = v7;
      *v7 = v0;
      v7[1] = specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);

      v9();
    }

    else
    {

      v8 = *(v0 + 8);

      v8(1);
    }
  }

  else
  {
    v2 = static Duration.seconds(_:)();
    v4 = v3;
    static Clock<>.continuous.getter();
    v5 = swift_task_alloc();
    *(v0 + 144) = v5;
    *v5 = v0;
    v5[1] = specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);

    specialized Clock.sleep(for:tolerance:)(v2, v4, 0, 0, 1);
  }
}

{
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);

  JUMPOUT(0x264FC1CA0);
}

uint64_t specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:)(char a1)
{
  v3 = *v1;

  *(v3 + 168) = a1 & 1;

  return MEMORY[0x2822009F8](specialized performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:), 0, 0);
}

uint64_t performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, uint64_t a8)
{
  v10 = v8;
  *(v10 + 112) = v19;
  *(v10 + 80) = v17;
  *(v10 + 96) = v18;
  *(v10 + 64) = a7;
  *(v10 + 72) = a8;
  *(v10 + 48) = a5;
  *(v10 + 56) = a6;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v12 = type metadata accessor for ContinuousClock();
  *(v10 + 120) = v12;
  *(v10 + 128) = *(v12 - 8);
  *(v10 + 136) = swift_task_alloc();
  v15 = (a7 + *a7);
  v13 = swift_task_alloc();
  *(v10 + 144) = v13;
  *v13 = v10;
  v13[1] = performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);

  return v15(a1);
}

uint64_t performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:)()
{
  v2 = *v1;
  *(v2 + 152) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v1 = *(v0 + 80);
  if (v1)
  {
    v15 = (v1 + *v1);
    v2 = swift_task_alloc();
    *(v0 + 160) = v2;
    *v2 = v0;
    v2[1] = performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);
    v3 = *(v0 + 152);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = *(v0 + 24);

    return v15(v5, v4, v6, v3);
  }

  else
  {
    result = *(v0 + 24);
    *(v0 + 168) = result + 1;
    if (result == -1)
    {
      __break(1u);
    }

    else if ((*(v0 + 48))())
    {
      v8 = static Duration.seconds(_:)();
      v10 = v9;
      static Clock<>.continuous.getter();
      v11 = swift_task_alloc();
      *(v0 + 176) = v11;
      *v11 = v0;
      v11[1] = performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);

      return specialized Clock.sleep(for:tolerance:)(v8, v10, 0, 0, 1);
    }

    else
    {
      v12 = *(v0 + 96);
      if (v12)
      {

        v16 = (v12 + *v12);
        v13 = swift_task_alloc();
        *(v0 + 192) = v13;
        *v13 = v0;
        v13[1] = performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);

        return v16();
      }

      else
      {

        (*(*(*(v0 + 112) - 8) + 56))(*(v0 + 16), 1, 1);

        v14 = *(v0 + 8);

        return v14();
      }
    }
  }

  return result;
}

{

  return MEMORY[0x2822009F8](performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:), 0, 0);
}

{
  result = *(v0 + 24);
  *(v0 + 168) = result + 1;
  if (result == -1)
  {
    __break(1u);
  }

  else if ((*(v0 + 48))())
  {
    v2 = static Duration.seconds(_:)();
    v4 = v3;
    static Clock<>.continuous.getter();
    v5 = swift_task_alloc();
    *(v0 + 176) = v5;
    *v5 = v0;
    v5[1] = performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);

    return specialized Clock.sleep(for:tolerance:)(v2, v4, 0, 0, 1);
  }

  else
  {
    v6 = *(v0 + 96);
    if (v6)
    {

      v9 = (v6 + *v6);
      v7 = swift_task_alloc();
      *(v0 + 192) = v7;
      *v7 = v0;
      v7[1] = performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);

      return v9();
    }

    else
    {

      (*(*(*(v0 + 112) - 8) + 56))(*(v0 + 16), 1, 1);

      v8 = *(v0 + 8);

      return v8();
    }
  }

  return result;
}

{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v5 = v2[16];
    v4 = v2[17];
    v6 = v2[15];

    (*(v5 + 8))(v4, v6);

    return MEMORY[0x2822009F8](performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:), 0, 0);
  }

  else
  {
    (*(v2[16] + 8))(v2[17], v2[15]);
    v7 = swift_task_alloc();
    v2[23] = v7;
    *v7 = v3;
    v7[1] = performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);
    v8 = v2[21];
    v9 = v2[8];
    v10 = v2[9];
    v11 = v2[6];
    v12 = v2[7];
    v13 = v2[4];
    v14 = v2[5];
    v15 = v2[2];

    return performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:)(v15, v8, v13, v14, v11, v12, v9, v10);
  }
}

{
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:);
  v2 = v0[21];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];

  return performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:)(v9, v2, v7, v8, v5, v6, v3, v4);
}

{

  return MEMORY[0x2822009F8](performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  return MEMORY[0x2822009F8](performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:), 0, 0);
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v1, v2);
  (*(*(*(v0 + 112) - 8) + 56))(*(v0 + 16), 1, 1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
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

  return MEMORY[0x2822009F8](specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = specialized Clock.sleep(for:tolerance:);
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](specialized Clock.sleep(for:tolerance:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t one-time initialization function for shared()
{
  type metadata accessor for XPCActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  static XPCActor.shared = v0;
  return result;
}

{
  type metadata accessor for RegistrationActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  static RegistrationActor.shared = v0;
  return result;
}

uint64_t XPCActor.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t static XPCActor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t static XPCActor.sharedUnownedExecutor.getter()
{
  if (one-time initialization token for queue != -1)
  {
    swift_once();
  }

  return OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();
}

uint64_t one-time initialization function for queue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  MEMORY[0x28223BE20](v4);
  v5 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v5 - 8);
  type metadata accessor for OS_dispatch_queue_serial();
  static DispatchQoS.unspecified.getter();
  v7[1] = MEMORY[0x277D84F90];
  _s15SecureMessaging8XPCActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, 255, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, *MEMORY[0x277D85268], v0);
  result = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static XPCActor.queue = result;
  return result;
}

uint64_t XPCActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t protocol witness for static GlobalActor.shared.getter in conformance XPCActor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t protocol witness for static GlobalActor.sharedUnownedExecutor.getter in conformance XPCActor()
{
  if (one-time initialization token for queue != -1)
  {
    swift_once();
  }

  return OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();
}

uint64_t _s15SecureMessaging8XPCActorCACScAAAWlTm_2(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.RegistrationCompletedContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.RegistrationCompletedContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistration.RegistrationCompletedContext.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextV10CodingKeys33_0AF3ABEBDD5161C191FCDD6BCC1E55E1LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextV10CodingKeys33_0AF3ABEBDD5161C191FCDD6BCC1E55E1LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance KDSRegistration.RegistrationCompletedContext(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextV10CodingKeys33_0AF3ABEBDD5161C191FCDD6BCC1E55E1LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextV10CodingKeys33_0AF3ABEBDD5161C191FCDD6BCC1E55E1LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t dispatch thunk of KDSRegistration.Listener.isRegisteredChanged(simUniqueID:isRegistered:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5, a6);
}

Swift::Double __swiftcall IDSServerBag.double(key:defaultValue:)(Swift::String key, Swift::Double defaultValue)
{
  v4 = MEMORY[0x266754510](key._countAndFlagsBits, key._object);
  v5 = [v2 objectForKey_];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      [v8 doubleValue];
      defaultValue = v6;
    }
  }

  else
  {
    outlined destroy of Any?(v11);
  }

  return defaultValue;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t IDSServerBag.duration(key:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = MEMORY[0x266754510](a1, a2);
  v7 = [v4 objectForKey_];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      [v9 doubleValue];
      a3 = static Duration.seconds(_:)();
    }
  }

  else
  {
    outlined destroy of Any?(v12);
  }

  return a3;
}

uint64_t one-time initialization function for kdsBag(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = [objc_opt_self() sharedInstanceForBagType_];
  result = type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for IDSServerBag, 0x277D18A10);
  *a2 = result;
  *a4 = a3;
  *a5 = v9;
  return result;
}

uint64_t static ServerBag.kdsBag.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = a4;
  if (*a1 != -1)
  {
    swift_once();
    v5 = a4;
  }

  return outlined init with copy of ServerBag.MLS(a2, v5);
}

Swift::Double IDSServerBag.refreshKeysInterval.getter()
{
  v0._object = 0x80000002651E9360;
  v0._countAndFlagsBits = 0xD000000000000019;
  return IDSServerBag.double(key:defaultValue:)(v0, 604800.0);
}

Swift::Double IDSServerBag.issueCertInterval.getter()
{
  v0._object = 0x80000002651E9380;
  v0._countAndFlagsBits = 0xD000000000000017;
  return IDSServerBag.double(key:defaultValue:)(v0, 1209600.0);
}

Swift::Double protocol witness for ServerBag.KDS.refreshKeysInterval.getter in conformance IDSServerBag()
{
  v0._object = 0x80000002651E9360;
  v0._countAndFlagsBits = 0xD000000000000019;
  return IDSServerBag.double(key:defaultValue:)(v0, 604800.0);
}

Swift::Double protocol witness for ServerBag.KDS.issueCertInterval.getter in conformance IDSServerBag()
{
  v0._object = 0x80000002651E9380;
  v0._countAndFlagsBits = 0xD000000000000017;
  return IDSServerBag.double(key:defaultValue:)(v0, 1209600.0);
}

uint64_t type metadata accessor for NSNumber(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = v17;
  v8[12] = v18;
  v8[9] = v15;
  v8[10] = v16;
  v8[7] = a8;
  v8[8] = v14;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  v8[2] = a1;
  v8[13] = *(v18 + 8);
  v8[14] = swift_getAssociatedTypeWitness();
  v8[15] = swift_task_alloc();
  v8[16] = *(v14 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v8[20] = *(v15 - 8);
  v8[21] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v8[22] = v9;
  v8[23] = *(v9 - 8);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v8[26] = v10;
  v8[27] = *(v10 - 8);
  v8[28] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static XPCActor.shared;
  v8[29] = static XPCActor.shared;

  return MEMORY[0x2822009F8](static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:), v11, 0);
}

uint64_t static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:)()
{
  v47 = v0;
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  Logger.init(subsystem:category:)();
  UUID.init()();
  (*(v4 + 16))(v2, v1, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 184);
  v8 = *(v0 + 192);
  v10 = *(v0 + 176);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v46 = v44;
    *v11 = 136315138;
    lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v15 = *(v9 + 8);
    v15(v8, v10);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v46);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_264F1F000, v5, v6, "XPC told to send { requestID: %s }", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x266755550](v44, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  else
  {

    v15 = *(v9 + 8);
    v15(v8, v10);
  }

  *(v0 + 240) = v15;
  v40 = *(v0 + 152);
  v42 = *(v0 + 144);
  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v20 = *(v0 + 104);
  v19 = *(v0 + 112);
  v21 = *(v0 + 88);
  v22 = *(v0 + 96);
  v24 = *(v0 + 56);
  v23 = *(v0 + 64);
  v25 = swift_task_alloc();
  v38 = *(v0 + 72);
  v26 = *(v0 + 24);
  *(v25 + 16) = v24;
  *(v25 + 24) = v23;
  *(v25 + 32) = v38;
  *(v25 + 48) = v21;
  *(v25 + 56) = v22;
  *(v25 + 64) = v26;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 40))(v19, AssociatedConformanceWitness);
  VersatileError.init(type:)(v18, v23, v20);
  _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(partial apply for implicit closure #2 in static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:), v25, v40, 0, 0, v23, v38, v20, v42);
  (*(v17 + 8))(v40, v23);
  v29 = *(v0 + 224);
  v28 = *(v0 + 232);
  v30 = *(v0 + 200);
  v31 = *(v0 + 168);
  v41 = *(v0 + 72);
  v43 = *(v0 + 56);
  v39 = *(v0 + 88);
  v45 = *(v0 + 40);

  v32 = lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type XPCActor and conformance XPCActor, type metadata accessor for XPCActor, &protocol conformance descriptor for XPCActor);
  v33 = swift_task_alloc();
  *(v0 + 248) = v33;
  *(v33 + 16) = v43;
  *(v33 + 32) = v41;
  *(v33 + 48) = v39;
  *(v33 + 64) = v29;
  *(v33 + 72) = v30;
  *(v33 + 80) = v45;
  *(v33 + 96) = v31;
  v34 = swift_task_alloc();
  *(v0 + 256) = v34;
  *v34 = v0;
  v34[1] = static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:);
  v35 = *(v0 + 56);
  v36 = *(v0 + 16);

  return MEMORY[0x2822008A0](v36, v28, v32, 0xD00000000000003CLL, 0x80000002651E93C0, partial apply for closure #1 in static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:), v33, v35);
}

{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = *(v2 + 232);
    v4 = static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:);
  }

  else
  {
    v5 = *(v2 + 232);

    v4 = static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[30];
  v3 = v0[27];
  v2 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[22];
  (*(v0[20] + 8))(v0[21], v0[9]);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 72);

  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = *(v0 + 208);
  (*(v0 + 240))(*(v0 + 200), *(v0 + 176));
  (*(v5 + 8))(v4, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t closure #1 in static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t (*)(), char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v73 = a8;
  v74 = a6;
  v68 = a5;
  v69 = a1;
  v70 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v72 = a7;
  v15 = type metadata accessor for CheckedContinuation();
  v71 = *(v15 - 8);
  v67 = *(v71 + 64);
  MEMORY[0x28223BE20](v15);
  v76 = &v53 - v16;
  v17 = type metadata accessor for Logger();
  v65 = *(v17 - 8);
  v66 = v17;
  MEMORY[0x28223BE20](v17);
  v63 = v18;
  v64 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v75 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v53 - v23;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v60 = a11;
  v61 = a12;
  v58 = a9;
  v59 = a10;
  v56 = *(v20 + 16);
  v56(v24, a3, v19);
  v55 = a2;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  v27 = os_log_type_enabled(v25, v26);
  v57 = v20;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v53 = v15;
    v29 = v20;
    v30 = v28;
    v31 = swift_slowAlloc();
    v77 = v31;
    *v30 = 136315138;
    lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v19;
    v34 = a3;
    v36 = v35;
    v37 = v24;
    v38 = v33;
    (*(v29 + 8))(v37, v33);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v36, &v77);
    a3 = v34;

    *(v30 + 4) = v39;
    _os_log_impl(&dword_264F1F000, v25, v26, "XPC sending event { requestID: %s }", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x266755550](v31, -1, -1);
    v15 = v53;
    MEMORY[0x266755550](v30, -1, -1);
  }

  else
  {

    (*(v20 + 8))(v24, v19);
    v38 = v19;
  }

  v54 = v38;
  v41 = v64;
  v40 = v65;
  v42 = v66;
  (*(v65 + 16))(v64, v55, v66);
  v56(v75, a3, v38);
  v43 = v71;
  (*(v71 + 16))(v76, v69, v15);
  v44 = (*(v40 + 80) + 64) & ~*(v40 + 80);
  v45 = v57;
  v46 = (v63 + *(v57 + 80) + v44) & ~*(v57 + 80);
  v47 = (v62 + v46 + *(v43 + 80)) & ~*(v43 + 80);
  v48 = swift_allocObject();
  v49 = v73;
  *(v48 + 2) = v72;
  *(v48 + 3) = v49;
  v50 = v59;
  *(v48 + 4) = v58;
  *(v48 + 5) = v50;
  v51 = v61;
  *(v48 + 6) = v60;
  *(v48 + 7) = v51;
  (*(v40 + 32))(&v48[v44], v41, v42);
  (*(v45 + 32))(&v48[v46], v75, v54);
  (*(v43 + 32))(&v48[v47], v76, v15);
  v70(v74, partial apply for closure #1 in closure #1 in static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:), v48);
}

uint64_t closure #1 in closure #1 in static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:)(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13)
{
  v221 = a7;
  v208 = a13;
  v219 = a13[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v203 = &v181 - v21;
  v217 = a9;
  v22 = *(a9 - 8);
  v23 = MEMORY[0x28223BE20](v20);
  v186 = &v181 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v193 = &v181 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v192 = &v181 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v184 = &v181 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v182 = &v181 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v185 = &v181 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v191 = &v181 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v190 = &v181 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v194 = &v181 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v199 = &v181 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v198 = &v181 - v44;
  v220 = a8;
  v189 = *(a8 - 8);
  v45 = MEMORY[0x28223BE20](v43);
  v188 = &v181 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v200 = &v181 - v47;
  v48 = type metadata accessor for UUID();
  v49 = *(v48 - 8);
  v50 = MEMORY[0x28223BE20](v48);
  v195 = &v181 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v205 = (&v181 - v53);
  v54 = MEMORY[0x28223BE20](v52);
  v183 = &v181 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v187 = &v181 - v57;
  MEMORY[0x28223BE20](v56);
  v59 = &v181 - v58;
  v60 = *(v49 + 16);
  v211 = a6;
  v206 = v60;
  v207 = v49 + 16;
  v60(&v181 - v58, a6, v48);
  outlined copy of Data?(a1, a2);
  outlined copy of Data?(a3, a4);
  v212 = a5;
  v61 = Logger.logObject.getter();
  LODWORD(a5) = static os_log_type_t.default.getter();
  outlined consume of Data?(a1, a2);
  v214 = a3;
  outlined consume of Data?(a3, a4);
  v196 = a5;
  v62 = os_log_type_enabled(v61, a5);
  v63 = a2 >> 60;
  v204 = a4 >> 60;
  v209 = a1;
  v210 = a2;
  v218 = v22;
  v215 = v49;
  v216 = v48;
  v201 = a4;
  if (v62)
  {
    v64 = v49;
    v65 = swift_slowAlloc();
    v181 = swift_slowAlloc();
    v222 = v181;
    *v65 = 136315650;
    lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v197 = a2 >> 60;
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    v68 = v67;
    v213 = *(v64 + 8);
    v213(v59, v48);
    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, &v222);

    *(v65 + 4) = v69;
    *(v65 + 12) = 2080;
    if (v197 <= 0xE)
    {
      v70 = a1;
    }

    else
    {
      v70 = 0;
    }

    if (v197 <= 0xE)
    {
      v71 = a2;
    }

    else
    {
      v71 = 0xC000000000000000;
    }

    outlined copy of Data?(a1, a2);
    v72 = Data.description.getter();
    v74 = v73;
    outlined consume of Data._Representation(v70, v71);
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, &v222);

    *(v65 + 14) = v75;
    *(v65 + 22) = 2080;
    v76 = v204;
    if (v204 <= 0xE)
    {
      v77 = v214;
    }

    else
    {
      v77 = 0;
    }

    if (v204 <= 0xE)
    {
      v78 = a4;
    }

    else
    {
      v78 = 0xC000000000000000;
    }

    outlined copy of Data?(v214, a4);
    v79 = Data.description.getter();
    v81 = v80;
    outlined consume of Data._Representation(v77, v78);
    v82 = v219;
    v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, &v222);
    v84 = v220;

    *(v65 + 24) = v83;
    v63 = v197;
    _os_log_impl(&dword_264F1F000, v61, v196, "XPC received reply to sent event { requestID: %s, resultData: %s, errorData: %s }", v65, 0x20u);
    v85 = v181;
    swift_arrayDestroy();
    MEMORY[0x266755550](v85, -1, -1);
    MEMORY[0x266755550](v65, -1, -1);

    v87 = v76;
  }

  else
  {

    v213 = *(v49 + 8);
    v86 = (v213)(v59, v48);
    v84 = v220;
    v82 = v219;
    v87 = v204;
  }

  v88 = v217;
  v89 = v205;
  if (v63 < 0xF)
  {
    v205 = &v181;
    MEMORY[0x28223BE20](v86);
    *(&v181 - 8) = v84;
    *(&v181 - 7) = v88;
    *(&v181 - 6) = v100;
    *(&v181 - 5) = v99;
    v101 = v208;
    *(&v181 - 4) = v102;
    *(&v181 - 3) = v101;
    v103 = v82;
    v105 = v209;
    v104 = v210;
    v179 = v209;
    v180 = v210;
    v106 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v108 = *(AssociatedConformanceWitness + 16);
    v109 = v105;
    v110 = v103;
    outlined copy of Data._Representation(v109, v104);
    v111 = v203;
    v108(v106, AssociatedConformanceWitness);
    v112 = v198;
    VersatileError.init(type:)(v111, v88, v110);
    v113 = v200;
    _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(partial apply for implicit closure #6 in closure #1 in closure #1 in static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:), (&v181 - 10), v112, 0, 0, v88, v84, v110, v199);
    (*(v218 + 8))(v112, v88);
    v127 = v187;
    v128 = v216;
    v206(v187, v211, v216);
    v129 = Logger.logObject.getter();
    v130 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v129, v130))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v222 = v133;
      *v132 = 136315138;
      lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v134 = dispatch thunk of CustomStringConvertible.description.getter();
      v136 = v135;
      v213(v127, v128);
      v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v136, &v222);

      *(v132 + 4) = v137;
      _os_log_impl(&dword_264F1F000, v129, v130, "XPC stack returning reply to sent event { requestID: %s }", v132, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v133);
      MEMORY[0x266755550](v133, -1, -1);
      MEMORY[0x266755550](v132, -1, -1);
    }

    else
    {

      v213(v127, v128);
    }

    v163 = v209;
    v162 = v210;
    v164 = v220;
    v165 = v189;
    (*(v189 + 16))(v188, v113, v220);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for CheckedContinuation();
    CheckedContinuation.resume(returning:)();
    outlined consume of Data?(v163, v162);
    return (*(v165 + 8))(v113, v164);
  }

  else if (v87 <= 0xE)
  {
    v205 = &v181;
    MEMORY[0x28223BE20](v86);
    *(&v181 - 8) = v84;
    *(&v181 - 7) = v88;
    *(&v181 - 6) = v115;
    *(&v181 - 5) = v114;
    v116 = v208;
    *(&v181 - 4) = v117;
    *(&v181 - 3) = v116;
    v118 = v214;
    v119 = v201;
    v179 = v214;
    v180 = v201;
    v120 = AssociatedTypeWitness;
    v121 = swift_getAssociatedConformanceWitness();
    v122 = *(v121 + 16);
    outlined copy of Data._Representation(v118, v119);
    v123 = v203;
    v122(v120, v121);
    v124 = v123;
    v125 = v190;
    VersatileError.init(type:)(v124, v88, v82);
    v126 = v194;
    _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(partial apply for implicit closure #8 in closure #1 in closure #1 in static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:), (&v181 - 10), v125, 0, 0, v88, v88, v82, v191);
    v145 = v218;
    v146 = *(v218 + 8);
    v146(v125, v88);
    v147 = v183;
    v148 = v216;
    v206(v183, v211, v216);
    v149 = *(v145 + 16);
    v150 = v185;
    v149(v185, v126, v88);
    v151 = Logger.logObject.getter();
    LODWORD(v212) = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v151, v212))
    {
      v210 = v151;
      v211 = v146;
      v153 = swift_slowAlloc();
      v208 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      v222 = v209;
      *v153 = 136315394;
      lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v154 = dispatch thunk of CustomStringConvertible.description.getter();
      v155 = v148;
      v156 = v88;
      v158 = v157;
      v213(v147, v155);
      v159 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v158, &v222);

      *(v153 + 4) = v159;
      *(v153 + 12) = 2112;
      v160 = v182;
      v149(v182, v150, v156);
      if (_getErrorEmbeddedNSError<A>(_:)())
      {
        v161 = v160;
        v146 = v211;
        v211(v161, v156);
        v88 = v156;
      }

      else
      {
        swift_allocError();
        (*(v218 + 32))(v168, v160, v156);
        v88 = v156;
        v146 = v211;
      }

      v169 = _swift_stdlib_bridgeErrorToNSError();
      v146(v185, v88);
      *(v153 + 14) = v169;
      v170 = v208;
      *v208 = v169;
      v171 = v210;
      _os_log_impl(&dword_264F1F000, v210, v212, "XPC stack returning error to sent event { requestID: %s, error: %@ }", v153, 0x16u);
      outlined destroy of NSObject?(v170);
      MEMORY[0x266755550](v170, -1, -1);
      v172 = v209;
      __swift_destroy_boxed_opaque_existential_1Tm(v209);
      MEMORY[0x266755550](v172, -1, -1);
      MEMORY[0x266755550](v153, -1, -1);

      v145 = v218;
    }

    else
    {

      v146(v150, v88);
      v213(v147, v148);
    }

    v173 = v184;
    v149(v184, v194, v88);
    v174 = _getErrorEmbeddedNSError<A>(_:)();
    if (v174)
    {
      v175 = v174;
      v146(v173, v88);
    }

    else
    {
      v175 = swift_allocError();
      (*(v145 + 32))(v176, v173, v88);
    }

    v177 = v201;
    v178 = v214;
    v222 = v175;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for CheckedContinuation();
    CheckedContinuation.resume(throwing:)();
    outlined consume of Data?(v178, v177);
    return (v146)(v194, v88);
  }

  else
  {
    v90 = v216;
    v206(v205, v211, v216);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v214 = swift_slowAlloc();
      v222 = v214;
      *v93 = 136315138;
      lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v94 = dispatch thunk of CustomStringConvertible.description.getter();
      v96 = v95;
      v213(v89, v90);
      v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v96, &v222);

      *(v93 + 4) = v97;
      _os_log_impl(&dword_264F1F000, v91, v92, "XPC stack returning generic error to sent event { requestID: %s }", v93, 0xCu);
      v98 = v214;
      __swift_destroy_boxed_opaque_existential_1Tm(v214);
      MEMORY[0x266755550](v98, -1, -1);
      MEMORY[0x266755550](v93, -1, -1);
    }

    else
    {

      v213(v89, v90);
    }

    v138 = v218;
    lazy protocol witness table accessor for type XPCUtils.XPCError and conformance XPCUtils.XPCError();
    v139 = swift_allocError();
    v141 = v140;
    *(v140 + 8) = 0;
    *(v140 + 16) = 0;

    *v141 = 1;
    v142 = v192;
    static XPCUtils.ClientXPCableError.xpcError(underlyingError:)(v139, v88, v208);

    v143 = _getErrorEmbeddedNSError<A>(_:)();
    if (v143)
    {
      v144 = v143;
      (*(v138 + 8))(v142, v88);
    }

    else
    {
      v144 = swift_allocError();
      (*(v138 + 32))(v167, v142, v88);
    }

    v222 = v144;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for CheckedContinuation();
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t implicit closure #6 in closure #1 in closure #1 in static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
}

uint64_t implicit closure #8 in closure #1 in closure #1 in static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
}

uint64_t closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = v18;
  v8[15] = v19;
  v8[12] = v16;
  v8[13] = v17;
  v8[10] = v14;
  v8[11] = v15;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  v8[16] = *(v17 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = *(v18 + 8);
  v8[19] = swift_getAssociatedTypeWitness();
  v8[20] = swift_task_alloc();
  v8[21] = *(v15 - 8);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = *(v16 - 8);
  v8[36] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v8[37] = v9;
  v8[38] = *(v9 - 8);
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v8[46] = v10;
  v8[47] = *(v10 - 8);
  v8[48] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static XPCActor.shared;
  v8[49] = static XPCActor.shared;

  return MEMORY[0x2822009F8](closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:), v11, 0);
}

uint64_t closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)()
{
  v68 = v0;
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  Logger.init(subsystem:category:)();
  UUID.init()();
  v5 = *(v4 + 16);
  *(v0 + 400) = v5;
  *(v0 + 408) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v61 = v5;
  v5(v2, v1, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 352);
  v10 = *(v0 + 296);
  v11 = *(v0 + 304);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v67[0] = v64;
    *v12 = 136315138;
    lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = *(v11 + 8);
    v16(v9, v10);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v67);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_264F1F000, v6, v7, "XPC received event { requestID: %s }", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    MEMORY[0x266755550](v64, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);

    v18 = v16;
  }

  else
  {

    v18 = *(v11 + 8);
    v18(v9, v10);
  }

  *(v0 + 416) = v18;
  v20 = *(v0 + 264);
  v19 = *(v0 + 272);
  v21 = *(v0 + 152);
  v22 = *(v0 + 160);
  v23 = *(v0 + 144);
  v24 = *(v0 + 88);
  v25 = swift_task_alloc();
  v26 = *(v0 + 112);
  v62 = *(v0 + 96);
  v27 = *(v0 + 40);
  *(v25 + 16) = v24;
  *(v25 + 24) = v62;
  *(v25 + 40) = v26;
  *(v25 + 56) = v27;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 424) = AssociatedConformanceWitness;
  (*(AssociatedConformanceWitness + 16))(v21, AssociatedConformanceWitness);
  VersatileError.init(type:)(v22, v24, v23);
  _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(partial apply for implicit closure #2 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:), v25, v19, 0, 0, v24, v62, v23, v20);
  v63 = AssociatedConformanceWitness;
  v65 = v18;
  v29 = *(v0 + 360);
  v30 = *(v0 + 344);
  v31 = *(v0 + 296);
  v32 = *(v0 + 272);
  v33 = *(v0 + 168);
  v34 = *(v0 + 88);
  v35 = *(v33 + 8);
  *(v0 + 432) = v35;
  *(v0 + 440) = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(v32, v34);

  v61(v30, v29, v31);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  v38 = os_log_type_enabled(v36, v37);
  v39 = *(v0 + 344);
  v40 = *(v0 + 296);
  if (v38)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v67[0] = v42;
    *v41 = 136315138;
    lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    v65(v39, v40);
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v67);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_264F1F000, v36, v37, "XPC decoded event { requestID: %s }", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x266755550](v42, -1, -1);
    MEMORY[0x266755550](v41, -1, -1);
  }

  else
  {

    v18(v39, v40);
  }

  v47 = *(v0 + 288);
  v48 = *(v0 + 152);
  v49 = *(v0 + 160);
  v50 = *(v0 + 144);
  v51 = *(v0 + 120);
  v52 = swift_task_alloc();
  *(v0 + 448) = v52;
  v66 = *(v0 + 88);
  v53 = *(v0 + 104);
  v54 = *(v0 + 56);
  *(v52 + 16) = v66;
  *(v52 + 32) = v53;
  *(v52 + 48) = v51;
  *(v52 + 56) = v54;
  *(v52 + 72) = v47;
  (*(v63 + 24))(v48, v63);
  VersatileError.init(type:)(v49, v66, v50);
  v55 = swift_task_alloc();
  *(v0 + 456) = v55;
  *v55 = v0;
  v55[1] = closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);
  v57 = *(v0 + 248);
  v56 = *(v0 + 256);
  v58 = *(v0 + 136);
  v59 = *(v0 + 88);
  v70 = *(v0 + 144);
  v71 = v57;

  return _s15SecureMessaging23asyncRethrowIfWrongType_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v58, &async function pointer to partial apply for implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:), v52, v56, 0, 0, v59);
}

{
  v2 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = *(v2 + 392);
    (*(v2 + 432))(*(v2 + 256), *(v2 + 88));
    v4 = closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 392);
    (*(v2 + 432))(*(v2 + 256), *(v2 + 88));

    v4 = closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v165 = v0;
  (*(v0 + 400))(*(v0 + 336), *(v0 + 360), *(v0 + 296));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 416);
  v5 = *(v0 + 336);
  v6 = *(v0 + 296);
  if (v3)
  {
    v160 = *(v0 + 416);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v164[0] = v8;
    *v7 = 136315138;
    lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v160(v5, v6);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v164);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_264F1F000, v1, v2, "XPC delivered event { requestID: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  else
  {

    v4(v5, v6);
  }

  v161 = *(v0 + 464);
  v13 = *(v0 + 424);
  v14 = *(v0 + 232);
  v15 = *(v0 + 240);
  v16 = *(v0 + 152);
  v17 = *(v0 + 160);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 120);
  v21 = swift_task_alloc();
  v155 = *(v0 + 88);
  v22 = *(v0 + 104);
  *(v21 + 16) = v155;
  *(v21 + 32) = v22;
  *(v21 + 48) = v20;
  *(v21 + 56) = v19;
  (*(v13 + 40))(v16, v13);
  VersatileError.init(type:)(v17, v155, v18);
  _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(partial apply for implicit closure #6 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:), v21, v15, 0, 0, v155, MEMORY[0x277CC9318], v18, v14);
  v23 = *(v0 + 432);
  if (v161)
  {
    v24 = *(v0 + 232);
    v26 = *(v0 + 168);
    v25 = *(v0 + 176);
    v27 = *(v0 + 88);
    v23(*(v0 + 240), v27);
    v28 = *(v26 + 32);
    v28(v25, v24, v27);
    v29 = _getErrorEmbeddedNSError<A>(_:)();
    if (v29)
    {
      v30 = v29;
      (*(v0 + 432))(*(v0 + 176), *(v0 + 88));
    }

    else
    {
      v52 = *(v0 + 176);
      v53 = *(v0 + 88);
      v30 = swift_allocError();
      v28(v54, v52, v53);
    }

    v56 = *(v0 + 280);
    v55 = *(v0 + 288);
    v58 = *(v0 + 128);
    v57 = *(v0 + 136);
    v60 = *(v0 + 96);
    v59 = *(v0 + 104);

    (*(v58 + 8))(v57, v59);
    (*(v56 + 8))(v55, v60);
    v61 = *(v0 + 432);
    *(v0 + 32) = v30;
    v62 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v162 = v61;
      v64 = *(v0 + 216);
      v63 = *(v0 + 224);
      v65 = *(v0 + 88);

      v28(v64, v63, v65);
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      v93 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v95 = v94;
      v144 = v28;

      v97 = *(v0 + 208);
      v96 = *(v0 + 216);
      v98 = *(v0 + 168);
      v99 = *(v0 + 88);
      (*(v0 + 400))(*(v0 + 320), *(v0 + 360), *(v0 + 296));
      v147 = *(v98 + 16);
      v147(v97, v96, v99);
      outlined copy of Data?(v93, v95);
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.error.getter();
      v151 = v93;
      v159 = v95;
      outlined consume of Data?(v93, v95);
      v102 = os_log_type_enabled(v100, v101);
      v103 = *(v0 + 416);
      v104 = *(v0 + 320);
      v105 = *(v0 + 296);
      v106 = *(v0 + 208);
      if (v102)
      {
        v139 = v101;
        v141 = v100;
        v135 = *(v0 + 200);
        v136 = *(v0 + 88);
        v107 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v164[0] = v138;
        *v107 = 136315650;
        lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v108 = dispatch thunk of CustomStringConvertible.description.getter();
        v109 = v106;
        v111 = v110;
        v103(v104, v105);
        v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v111, v164);

        *(v107 + 4) = v112;
        *(v107 + 12) = 2112;
        v147(v135, v109, v136);
        v113 = _getErrorEmbeddedNSError<A>(_:)();
        v114 = *(v0 + 200);
        if (v113)
        {
          v162(*(v0 + 200), *(v0 + 88));
        }

        else
        {
          v117 = *(v0 + 88);
          swift_allocError();
          v144(v118, v114, v117);
        }

        v119 = *(v0 + 208);
        v120 = *(v0 + 88);
        v121 = _swift_stdlib_bridgeErrorToNSError();
        v162(v119, v120);
        *(v107 + 14) = v121;
        *v137 = v121;
        *(v107 + 22) = 2080;
        if (v159 >> 60 == 15)
        {
          v122 = 0;
        }

        else
        {
          v122 = v151;
        }

        if (v159 >> 60 == 15)
        {
          v123 = 0xC000000000000000;
        }

        else
        {
          v123 = v159;
        }

        v116 = v151;
        outlined copy of Data?(v151, v159);
        v124 = Data.description.getter();
        v126 = v125;
        outlined consume of Data._Representation(v122, v123);
        v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v126, v164);

        *(v107 + 24) = v127;
        _os_log_impl(&dword_264F1F000, v141, v139, "XPC stack replying with an error { requestID: %s, error: %@, errorData: %s }", v107, 0x20u);
        outlined destroy of NSObject?(v137);
        MEMORY[0x266755550](v137, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x266755550](v138, -1, -1);
        MEMORY[0x266755550](v107, -1, -1);
      }

      else
      {
        v115 = *(v0 + 88);

        v162(v106, v115);
        v103(v104, v105);
        v116 = v151;
      }

      v128 = *(v0 + 376);
      v152 = *(v0 + 384);
      v129 = *(v0 + 360);
      v145 = *(v0 + 416);
      v148 = *(v0 + 368);
      v130 = *(v0 + 296);
      v131 = *(v0 + 216);
      v132 = *(v0 + 88);
      (*(v0 + 72))(0, 0xF000000000000000, v116, v159);
      outlined consume of Data?(v116, v159);
      v162(v131, v132);
      v145(v129, v130);
      (*(v128 + 8))(v152, v148);
    }

    else
    {
      v66 = *(v0 + 400);
      v67 = *(v0 + 360);
      v68 = *(v0 + 312);
      v69 = *(v0 + 296);

      v66(v68, v67, v69);
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.fault.getter();
      v72 = os_log_type_enabled(v70, v71);
      v73 = *(v0 + 416);
      v74 = *(v0 + 312);
      v75 = *(v0 + 296);
      if (v72)
      {
        v157 = *(v0 + 416);
        v76 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v164[0] = v163;
        *v76 = 136315138;
        lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v77 = dispatch thunk of CustomStringConvertible.description.getter();
        v79 = v78;
        v157(v74, v75);
        v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, v164);

        *(v76 + 4) = v80;
        _os_log_impl(&dword_264F1F000, v70, v71, "XPC stack did not properly convert error types to reply to event { requestID: %s }", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v163);
        MEMORY[0x266755550](v163, -1, -1);
        MEMORY[0x266755550](v76, -1, -1);
      }

      else
      {

        v73(v74, v75);
      }

      v87 = *(v0 + 416);
      v89 = *(v0 + 376);
      v88 = *(v0 + 384);
      v91 = *(v0 + 360);
      v90 = *(v0 + 368);
      v92 = *(v0 + 296);
      (*(v0 + 72))(0, 0xF000000000000000, 0, 0xF000000000000000);

      v87(v91, v92);
      (*(v89 + 8))(v88, v90);
    }
  }

  else
  {
    v31 = *(v0 + 400);
    v32 = *(v0 + 360);
    v33 = *(v0 + 328);
    v34 = *(v0 + 296);
    v23(*(v0 + 240), *(v0 + 88));

    v35 = *(v0 + 16);
    v36 = *(v0 + 24);
    v31(v33, v32, v34);
    outlined copy of Data._Representation(v35, v36);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    outlined consume of Data._Representation(v35, v36);
    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 416);
    v41 = *(v0 + 328);
    v42 = *(v0 + 296);
    if (v39)
    {
      log = v37;
      v43 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      v164[0] = v156;
      *v43 = 136315394;
      lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v149 = v38;
      v46 = v45;
      v40(v41, v42);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v164);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      outlined copy of Data._Representation(v35, v36);
      v48 = Data.description.getter();
      v50 = v49;
      outlined consume of Data._Representation(v35, v36);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v164);

      *(v43 + 14) = v51;
      _os_log_impl(&dword_264F1F000, log, v149, "XPC encoded and sending reply { requestID: %s, encodedResult: %s }", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v156, -1, -1);
      MEMORY[0x266755550](v43, -1, -1);
    }

    else
    {

      v40(v41, v42);
    }

    v81 = *(v0 + 376);
    v82 = *(v0 + 360);
    v143 = *(v0 + 368);
    v83 = *(v0 + 296);
    v84 = *(v0 + 280);
    v85 = *(v0 + 128);
    v146 = *(v0 + 136);
    v150 = *(v0 + 384);
    v140 = *(v0 + 416);
    v142 = *(v0 + 104);
    loga = *(v0 + 96);
    v158 = *(v0 + 288);
    v86 = *(v0 + 72);
    outlined copy of Data._Representation(v35, v36);
    v86(v35, v36, 0, 0xF000000000000000);
    outlined consume of Data._Representation(v35, v36);
    outlined consume of Data._Representation(v35, v36);
    (v140)(v82, v83);
    (*(v81 + 8))(v150, v143);
    (*(v85 + 8))(v146, v142);
    (*(v84 + 8))(v158, loga);
  }

  v133 = *(v0 + 8);

  return v133();
}

{
  v95 = v0;
  v1 = *(*(v0 + 168) + 32);
  v1(*(v0 + 184), *(v0 + 248), *(v0 + 88));
  v2 = _getErrorEmbeddedNSError<A>(_:)();
  if (v2)
  {
    v3 = v2;
    (*(v0 + 432))(*(v0 + 184), *(v0 + 88));
  }

  else
  {
    v4 = *(v0 + 184);
    v5 = *(v0 + 88);
    v3 = swift_allocError();
    v1(v6, v4, v5);
  }

  v8 = *(v0 + 280);
  v7 = *(v0 + 288);
  v9 = *(v0 + 96);

  (*(v8 + 8))(v7, v9);
  v10 = *(v0 + 432);
  *(v0 + 32) = v3;
  v11 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v92 = v10;
    v13 = *(v0 + 216);
    v12 = *(v0 + 224);
    v14 = *(v0 + 88);

    v1(v13, v12, v14);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v84 = v1;
    v36 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v38 = v37;

    v40 = *(v0 + 208);
    v39 = *(v0 + 216);
    v41 = *(v0 + 168);
    v42 = *(v0 + 88);
    (*(v0 + 400))(*(v0 + 320), *(v0 + 360), *(v0 + 296));
    v86 = *(v41 + 16);
    v86(v40, v39, v42);
    outlined copy of Data?(v36, v38);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    v88 = v36;
    v91 = v38;
    outlined consume of Data?(v36, v38);
    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 416);
    v47 = *(v0 + 320);
    v48 = *(v0 + 296);
    v49 = *(v0 + 208);
    if (v45)
    {
      v82 = v44;
      log = v43;
      v78 = *(v0 + 200);
      v79 = *(v0 + 88);
      v50 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v94[0] = v81;
      *v50 = 136315650;
      lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v49;
      v54 = v53;
      v46(v47, v48);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v54, v94);

      *(v50 + 4) = v55;
      *(v50 + 12) = 2112;
      v86(v78, v52, v79);
      v56 = _getErrorEmbeddedNSError<A>(_:)();
      v57 = *(v0 + 200);
      if (v56)
      {
        v92(*(v0 + 200), *(v0 + 88));
      }

      else
      {
        v60 = *(v0 + 88);
        swift_allocError();
        v84(v61, v57, v60);
      }

      v62 = *(v0 + 208);
      v63 = *(v0 + 88);
      v64 = _swift_stdlib_bridgeErrorToNSError();
      v92(v62, v63);
      *(v50 + 14) = v64;
      *v80 = v64;
      *(v50 + 22) = 2080;
      if (v91 >> 60 == 15)
      {
        v65 = 0;
      }

      else
      {
        v65 = v88;
      }

      if (v91 >> 60 == 15)
      {
        v66 = 0xC000000000000000;
      }

      else
      {
        v66 = v91;
      }

      v59 = v88;
      outlined copy of Data?(v88, v91);
      v67 = Data.description.getter();
      v69 = v68;
      outlined consume of Data._Representation(v65, v66);
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, v94);

      *(v50 + 24) = v70;
      _os_log_impl(&dword_264F1F000, log, v82, "XPC stack replying with an error { requestID: %s, error: %@, errorData: %s }", v50, 0x20u);
      outlined destroy of NSObject?(v80);
      MEMORY[0x266755550](v80, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266755550](v81, -1, -1);
      MEMORY[0x266755550](v50, -1, -1);
    }

    else
    {
      v58 = *(v0 + 88);

      v92(v49, v58);
      v46(v47, v48);
      v59 = v88;
    }

    v71 = *(v0 + 376);
    v89 = *(v0 + 384);
    v72 = *(v0 + 360);
    v85 = *(v0 + 416);
    v87 = *(v0 + 368);
    v73 = *(v0 + 296);
    v74 = *(v0 + 216);
    v75 = *(v0 + 88);
    (*(v0 + 72))(0, 0xF000000000000000, v59, v91);
    outlined consume of Data?(v59, v91);
    v92(v74, v75);
    v85(v72, v73);
    (*(v71 + 8))(v89, v87);
  }

  else
  {
    v15 = *(v0 + 400);
    v16 = *(v0 + 360);
    v17 = *(v0 + 312);
    v18 = *(v0 + 296);

    v15(v17, v16, v18);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 416);
    v23 = *(v0 + 312);
    v24 = *(v0 + 296);
    if (v21)
    {
      v90 = *(v0 + 416);
      v25 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v94[0] = v93;
      *v25 = 136315138;
      lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      v90(v23, v24);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v94);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_264F1F000, v19, v20, "XPC stack did not properly convert error types to reply to event { requestID: %s }", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      MEMORY[0x266755550](v93, -1, -1);
      MEMORY[0x266755550](v25, -1, -1);
    }

    else
    {

      v22(v23, v24);
    }

    v30 = *(v0 + 416);
    v32 = *(v0 + 376);
    v31 = *(v0 + 384);
    v34 = *(v0 + 360);
    v33 = *(v0 + 368);
    v35 = *(v0 + 296);
    (*(v0 + 72))(0, 0xF000000000000000, 0, 0xF000000000000000);

    v30(v34, v35);
    (*(v32 + 8))(v31, v33);
  }

  v76 = *(v0 + 8);

  return v76();
}

uint64_t partial apply for closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(uint64_t a1)
{
  v11 = v1[2];
  v10 = v1[3];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(a1, v11, v10, v3, v4, v5, v6, v7);
}

uint64_t implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v9(a1, a4);
}

uint64_t static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v31 = a8;
  v32 = a4;
  v33 = a2;
  v34 = a6;
  v35 = a14;
  v30 = a12;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v30 - v18;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = one-time initialization token for shared;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = static XPCActor.shared;
  v23 = lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type XPCActor and conformance XPCActor, type metadata accessor for XPCActor, &protocol conformance descriptor for XPCActor);
  v24 = swift_allocObject();
  v24[2] = v22;
  v24[3] = v23;
  v25 = v30;
  v24[4] = v31;
  v24[5] = a9;
  v24[6] = a10;
  v24[7] = a11;
  v26 = v32;
  v24[8] = v25;
  v24[9] = v26;
  v27 = v33;
  v28 = v34;
  v24[10] = a5;
  v24[11] = v28;
  v24[12] = a7;
  v24[13] = v27;
  v24[14] = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v19, v35, v24);
}

uint64_t closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = v18;
  v8[15] = v19;
  v8[12] = v16;
  v8[13] = v17;
  v8[10] = v14;
  v8[11] = v15;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  v8[16] = *(v17 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = *(v18 + 8);
  v8[19] = swift_getAssociatedTypeWitness();
  v8[20] = swift_task_alloc();
  v8[21] = *(v15 - 8);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = *(v16 - 8);
  v8[35] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v8[36] = v9;
  v8[37] = *(v9 - 8);
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v8[45] = v10;
  v8[46] = *(v10 - 8);
  v8[47] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static XPCActor.shared;
  v8[48] = static XPCActor.shared;

  return MEMORY[0x2822009F8](closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:), v11, 0);
}

uint64_t closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)()
{
  v71 = v0;
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  Logger.init(subsystem:category:)();
  UUID.init()();
  v5 = *(v4 + 16);
  *(v0 + 392) = v5;
  *(v0 + 400) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v64 = v5;
  v5(v2, v1, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 344);
  v10 = *(v0 + 288);
  v11 = *(v0 + 296);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v70[0] = v67;
    *v12 = 136315138;
    lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = *(v11 + 8);
    v16(v9, v10);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v70);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_264F1F000, v6, v7, "XPC received event { requestID: %s }", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    MEMORY[0x266755550](v67, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);

    v18 = v16;
  }

  else
  {

    v18 = *(v11 + 8);
    v18(v9, v10);
  }

  *(v0 + 408) = v18;
  v20 = *(v0 + 256);
  v19 = *(v0 + 264);
  v21 = *(v0 + 152);
  v22 = *(v0 + 160);
  v23 = *(v0 + 144);
  v24 = *(v0 + 88);
  v25 = swift_task_alloc();
  v26 = *(v0 + 112);
  v65 = *(v0 + 96);
  v27 = *(v0 + 40);
  *(v25 + 16) = v24;
  *(v25 + 24) = v65;
  *(v25 + 40) = v26;
  *(v25 + 56) = v27;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 416) = AssociatedConformanceWitness;
  (*(AssociatedConformanceWitness + 16))(v21, AssociatedConformanceWitness);
  VersatileError.init(type:)(v22, v24, v23);
  _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(partial apply for implicit closure #2 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:), v25, v19, 0, 0, v24, v65, v23, v20);
  v66 = AssociatedConformanceWitness;
  v68 = v18;
  v29 = *(v0 + 352);
  v30 = *(v0 + 336);
  v31 = *(v0 + 288);
  v32 = *(v0 + 264);
  v33 = *(v0 + 168);
  v34 = *(v0 + 88);
  v35 = *(v33 + 8);
  *(v0 + 424) = v35;
  *(v0 + 432) = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(v32, v34);

  v64(v30, v29, v31);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  v38 = os_log_type_enabled(v36, v37);
  v39 = *(v0 + 336);
  v40 = *(v0 + 288);
  if (v38)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v70[0] = v42;
    *v41 = 136315138;
    lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    v68(v39, v40);
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v70);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_264F1F000, v36, v37, "XPC decoded event { requestID: %s }", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x266755550](v42, -1, -1);
    MEMORY[0x266755550](v41, -1, -1);
  }

  else
  {

    v18(v39, v40);
  }

  v47 = v66;
  v48 = *(v0 + 280);
  v50 = *(v0 + 152);
  v49 = *(v0 + 160);
  v51 = *(v0 + 144);
  v52 = *(v0 + 120);
  v53 = swift_task_alloc();
  *(v0 + 440) = v53;
  v69 = *(v0 + 88);
  v54 = *(v0 + 104);
  v55 = *(v0 + 56);
  *(v53 + 16) = v69;
  *(v53 + 32) = v54;
  *(v53 + 48) = v52;
  *(v53 + 56) = v55;
  *(v53 + 72) = v48;
  (*(v47 + 24))(v50, v47);
  VersatileError.init(type:)(v49, v69, v51);
  (*(v47 + 32))(v50, v47);
  VersatileError.init(type:)(v49, v69, v51);
  v56 = swift_task_alloc();
  *(v0 + 448) = v56;
  v57 = lazy protocol witness table accessor for type XPCUtils.XPCError and conformance XPCUtils.XPCError();
  *v56 = v0;
  v56[1] = closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:);
  v59 = *(v0 + 240);
  v58 = *(v0 + 248);
  v60 = *(v0 + 136);
  v61 = *(v0 + 104);
  v62 = *(v0 + 88);
  v76 = *(v0 + 144);
  v77 = v57;
  v75 = v61;
  v73 = v62;
  v74 = &type metadata for XPCUtils.XPCError;

  return asyncRethrowIfWrongType<A, B, C>(_:catching:as:elseAs:log:)(v60, &async function pointer to partial apply for implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:), v53, &type metadata for XPCUtils.XPCError, v58, v59, 0, 0);
}

{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = v2[53];
    v4 = v2[48];
    v5 = v2[30];
    v6 = v2[31];
    v7 = v2[11];
    v3(v5, v7);
    v3(v6, v7);
    v8 = closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:);
    v9 = v4;
  }

  else
  {
    v10 = v2[53];
    v11 = v2[48];
    v12 = v2[30];
    v13 = v2[31];
    v14 = v2[11];
    v10(v12, v14);
    v10(v13, v14);

    v8 = closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:);
    v9 = v11;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

{
  v167 = v0;
  (*(v0 + 392))(*(v0 + 328), *(v0 + 352), *(v0 + 288));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 408);
  v5 = *(v0 + 328);
  v6 = *(v0 + 288);
  if (v3)
  {
    v162 = *(v0 + 408);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v166[0] = v8;
    *v7 = 136315138;
    lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v162(v5, v6);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v166);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_264F1F000, v1, v2, "XPC delivered event { requestID: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  else
  {

    v4(v5, v6);
  }

  v163 = *(v0 + 456);
  v13 = *(v0 + 416);
  v14 = *(v0 + 224);
  v15 = *(v0 + 232);
  v16 = *(v0 + 152);
  v17 = *(v0 + 160);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 120);
  v21 = swift_task_alloc();
  v157 = *(v0 + 88);
  v22 = *(v0 + 104);
  *(v21 + 16) = v157;
  *(v21 + 32) = v22;
  *(v21 + 48) = v20;
  *(v21 + 56) = v19;
  (*(v13 + 40))(v16, v13);
  VersatileError.init(type:)(v17, v157, v18);
  _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(partial apply for implicit closure #6 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:), v21, v15, 0, 0, v157, MEMORY[0x277CC9318], v18, v14);
  v23 = *(v0 + 424);
  if (v163)
  {
    v24 = *(v0 + 224);
    v26 = *(v0 + 168);
    v25 = *(v0 + 176);
    v27 = *(v0 + 88);
    v23(*(v0 + 232), v27);
    v28 = *(v26 + 32);
    v28(v25, v24, v27);
    v29 = _getErrorEmbeddedNSError<A>(_:)();
    if (v29)
    {
      v30 = v29;
      (*(v0 + 424))(*(v0 + 176), *(v0 + 88));
    }

    else
    {
      v52 = *(v0 + 176);
      v53 = *(v0 + 88);
      v30 = swift_allocError();
      v28(v54, v52, v53);
    }

    v56 = *(v0 + 272);
    v55 = *(v0 + 280);
    v58 = *(v0 + 128);
    v57 = *(v0 + 136);
    v60 = *(v0 + 96);
    v59 = *(v0 + 104);

    (*(v58 + 8))(v57, v59);
    (*(v56 + 8))(v55, v60);
    v61 = *(v0 + 424);
    *(v0 + 32) = v30;
    v62 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v64 = *(v0 + 208);
      v63 = *(v0 + 216);
      v65 = *(v0 + 168);
      v66 = *(v0 + 88);

      v145 = *(v65 + 32);
      v145(v64, v63, v66);
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      v94 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v96 = v95;

      v98 = *(v0 + 200);
      v97 = *(v0 + 208);
      v99 = *(v0 + 168);
      v100 = *(v0 + 88);
      (*(v0 + 392))(*(v0 + 312), *(v0 + 352), *(v0 + 288));
      v101 = v98;
      v102 = *(v99 + 16);
      v102(v101, v97, v100);
      outlined copy of Data?(v94, v96);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.error.getter();
      log = v94;
      v165 = v96;
      outlined consume of Data?(v94, v96);
      v105 = os_log_type_enabled(v103, v104);
      v106 = *(v0 + 408);
      v107 = *(v0 + 312);
      v108 = *(v0 + 288);
      v149 = *(v0 + 200);
      if (v105)
      {
        v142 = v104;
        v144 = v103;
        v161 = v61;
        v138 = *(v0 + 192);
        v137 = *(v0 + 88);
        v109 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v166[0] = v140;
        *v109 = 136315650;
        lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v110 = dispatch thunk of CustomStringConvertible.description.getter();
        v112 = v111;
        v106(v107, v108);
        v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v112, v166);

        *(v109 + 4) = v113;
        *(v109 + 12) = 2112;
        v102(v138, v149, v137);
        v114 = _getErrorEmbeddedNSError<A>(_:)();
        v115 = *(v0 + 192);
        if (v114)
        {
          v116 = v161;
          v161(*(v0 + 192), *(v0 + 88));
        }

        else
        {
          v119 = *(v0 + 88);
          swift_allocError();
          v145(v120, v115, v119);
          v116 = v161;
        }

        v121 = *(v0 + 200);
        v122 = *(v0 + 88);
        v123 = _swift_stdlib_bridgeErrorToNSError();
        v116(v121, v122);
        *(v109 + 14) = v123;
        *v139 = v123;
        *(v109 + 22) = 2080;
        if (v165 >> 60 == 15)
        {
          v124 = 0;
        }

        else
        {
          v124 = log;
        }

        if (v165 >> 60 == 15)
        {
          v125 = 0xC000000000000000;
        }

        else
        {
          v125 = v165;
        }

        v118 = log;
        outlined copy of Data?(log, v165);
        v126 = Data.description.getter();
        v128 = v127;
        outlined consume of Data._Representation(v124, v125);
        v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v128, v166);

        *(v109 + 24) = v129;
        _os_log_impl(&dword_264F1F000, v144, v142, "XPC stack replying with an error { requestID: %s, error: %@, errorData: %s }", v109, 0x20u);
        outlined destroy of NSObject?(v139);
        MEMORY[0x266755550](v139, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x266755550](v140, -1, -1);
        MEMORY[0x266755550](v109, -1, -1);
      }

      else
      {
        v117 = *(v0 + 88);

        v61(v149, v117);
        v106(v107, v108);
        v161 = v61;
        v118 = log;
      }

      v130 = *(v0 + 368);
      logc = *(v0 + 376);
      v131 = *(v0 + 352);
      v147 = *(v0 + 408);
      v150 = *(v0 + 360);
      v132 = *(v0 + 288);
      v133 = *(v0 + 208);
      v134 = *(v0 + 88);
      (*(v0 + 72))(0, 0xF000000000000000, v118, v165);
      outlined consume of Data?(v118, v165);
      v161(v133, v134);
      v147(v131, v132);
      (*(v130 + 8))(logc, v150);
    }

    else
    {
      v67 = *(v0 + 392);
      v68 = *(v0 + 352);
      v69 = *(v0 + 304);
      v70 = *(v0 + 288);

      v67(v69, v68, v70);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.fault.getter();
      v73 = os_log_type_enabled(v71, v72);
      v74 = *(v0 + 408);
      v75 = *(v0 + 304);
      v76 = *(v0 + 288);
      if (v73)
      {
        v159 = *(v0 + 408);
        v77 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        v166[0] = v164;
        *v77 = 136315138;
        lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v78 = dispatch thunk of CustomStringConvertible.description.getter();
        v80 = v79;
        v159(v75, v76);
        v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, v166);

        *(v77 + 4) = v81;
        _os_log_impl(&dword_264F1F000, v71, v72, "XPC stack did not properly convert error types to reply to event { requestID: %s }", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v164);
        MEMORY[0x266755550](v164, -1, -1);
        MEMORY[0x266755550](v77, -1, -1);
      }

      else
      {

        v74(v75, v76);
      }

      v88 = *(v0 + 408);
      v90 = *(v0 + 368);
      v89 = *(v0 + 376);
      v92 = *(v0 + 352);
      v91 = *(v0 + 360);
      v93 = *(v0 + 288);
      (*(v0 + 72))(0, 0xF000000000000000, 0, 0xF000000000000000);

      v88(v92, v93);
      (*(v90 + 8))(v89, v91);
    }
  }

  else
  {
    v31 = *(v0 + 392);
    v32 = *(v0 + 352);
    v33 = *(v0 + 320);
    v34 = *(v0 + 288);
    v23(*(v0 + 232), *(v0 + 88));

    v35 = *(v0 + 16);
    v36 = *(v0 + 24);
    v31(v33, v32, v34);
    outlined copy of Data._Representation(v35, v36);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    outlined consume of Data._Representation(v35, v36);
    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 408);
    v41 = *(v0 + 320);
    v42 = *(v0 + 288);
    if (v39)
    {
      loga = v37;
      v43 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v166[0] = v158;
      *v43 = 136315394;
      lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v151 = v38;
      v46 = v45;
      v40(v41, v42);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v166);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      outlined copy of Data._Representation(v35, v36);
      v48 = Data.description.getter();
      v50 = v49;
      outlined consume of Data._Representation(v35, v36);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v166);

      *(v43 + 14) = v51;
      _os_log_impl(&dword_264F1F000, loga, v151, "XPC encoded and sending reply { requestID: %s, encodedResult: %s }", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v158, -1, -1);
      MEMORY[0x266755550](v43, -1, -1);
    }

    else
    {

      v40(v41, v42);
    }

    v82 = *(v0 + 368);
    v83 = *(v0 + 352);
    v146 = *(v0 + 360);
    v84 = *(v0 + 288);
    v85 = *(v0 + 272);
    v86 = *(v0 + 128);
    v148 = *(v0 + 136);
    v152 = *(v0 + 376);
    v141 = *(v0 + 408);
    v143 = *(v0 + 104);
    logb = *(v0 + 96);
    v160 = *(v0 + 280);
    v87 = *(v0 + 72);
    outlined copy of Data._Representation(v35, v36);
    v87(v35, v36, 0, 0xF000000000000000);
    outlined consume of Data._Representation(v35, v36);
    outlined consume of Data._Representation(v35, v36);
    v141(v83, v84);
    (*(v82 + 8))(v152, v146);
    (*(v86 + 8))(v148, v143);
    (*(v85 + 8))(v160, logb);
  }

  v135 = *(v0 + 8);

  return v135();
}

{
  v92 = v0;
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 96);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 456);
  *(v0 + 32) = v4;
  v5 = *(v0 + 424);
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 208);
    v7 = *(v0 + 216);
    v9 = *(v0 + 168);
    v10 = *(v0 + 88);

    v81 = *(v9 + 32);
    v81(v8, v7, v10);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v32 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v34 = v33;

    v36 = *(v0 + 200);
    v35 = *(v0 + 208);
    v37 = *(v0 + 168);
    v38 = *(v0 + 88);
    (*(v0 + 392))(*(v0 + 312), *(v0 + 352), *(v0 + 288));
    v39 = v36;
    v40 = *(v37 + 16);
    v40(v39, v35, v38);
    outlined copy of Data?(v32, v34);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    v85 = v32;
    v90 = v34;
    outlined consume of Data?(v32, v34);
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 408);
    v45 = *(v0 + 312);
    v46 = *(v0 + 288);
    v83 = *(v0 + 200);
    v88 = v5;
    if (v43)
    {
      v79 = v42;
      log = v41;
      v76 = *(v0 + 192);
      v75 = *(v0 + 88);
      v47 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v91[0] = v78;
      *v47 = 136315650;
      lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      v44(v45, v46);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v91);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2112;
      v40(v76, v83, v75);
      v52 = _getErrorEmbeddedNSError<A>(_:)();
      v53 = *(v0 + 192);
      if (v52)
      {
        v54 = v88;
        v88(*(v0 + 192), *(v0 + 88));
      }

      else
      {
        v57 = *(v0 + 88);
        swift_allocError();
        v81(v58, v53, v57);
        v54 = v88;
      }

      v59 = *(v0 + 200);
      v60 = *(v0 + 88);
      v61 = _swift_stdlib_bridgeErrorToNSError();
      v54(v59, v60);
      *(v47 + 14) = v61;
      *v77 = v61;
      *(v47 + 22) = 2080;
      if (v90 >> 60 == 15)
      {
        v62 = 0;
      }

      else
      {
        v62 = v85;
      }

      if (v90 >> 60 == 15)
      {
        v63 = 0xC000000000000000;
      }

      else
      {
        v63 = v90;
      }

      v56 = v85;
      outlined copy of Data?(v85, v90);
      v64 = Data.description.getter();
      v66 = v65;
      outlined consume of Data._Representation(v62, v63);
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v91);

      *(v47 + 24) = v67;
      _os_log_impl(&dword_264F1F000, log, v79, "XPC stack replying with an error { requestID: %s, error: %@, errorData: %s }", v47, 0x20u);
      outlined destroy of NSObject?(v77);
      MEMORY[0x266755550](v77, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266755550](v78, -1, -1);
      MEMORY[0x266755550](v47, -1, -1);
    }

    else
    {
      v55 = *(v0 + 88);

      v5(v83, v55);
      v44(v45, v46);
      v56 = v85;
    }

    v68 = *(v0 + 368);
    v86 = *(v0 + 376);
    v69 = *(v0 + 352);
    v82 = *(v0 + 408);
    v84 = *(v0 + 360);
    v70 = *(v0 + 288);
    v71 = *(v0 + 208);
    v72 = *(v0 + 88);
    (*(v0 + 72))(0, 0xF000000000000000, v56, v90);
    outlined consume of Data?(v56, v90);
    v88(v71, v72);
    v82(v69, v70);
    (*(v68 + 8))(v86, v84);
  }

  else
  {
    v11 = *(v0 + 392);
    v12 = *(v0 + 352);
    v13 = *(v0 + 304);
    v14 = *(v0 + 288);

    v11(v13, v12, v14);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 408);
    v19 = *(v0 + 304);
    v20 = *(v0 + 288);
    if (v17)
    {
      v87 = *(v0 + 408);
      v21 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v91[0] = v89;
      *v21 = 136315138;
      lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      v87(v19, v20);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v91);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_264F1F000, v15, v16, "XPC stack did not properly convert error types to reply to event { requestID: %s }", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      MEMORY[0x266755550](v89, -1, -1);
      MEMORY[0x266755550](v21, -1, -1);
    }

    else
    {

      v18(v19, v20);
    }

    v26 = *(v0 + 408);
    v28 = *(v0 + 368);
    v27 = *(v0 + 376);
    v30 = *(v0 + 352);
    v29 = *(v0 + 360);
    v31 = *(v0 + 288);
    (*(v0 + 72))(0, 0xF000000000000000, 0, 0xF000000000000000);

    v26(v30, v31);
    (*(v28 + 8))(v27, v29);
  }

  v73 = *(v0 + 8);

  return v73();
}

uint64_t implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v9(a1, a4);
}

uint64_t implicit closure #6 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)@<X0>(uint64_t *a4@<X8>)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v8 = v7;

  if (!v4)
  {
    *a4 = v6;
    a4[1] = v8;
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t partial apply for closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)(uint64_t a1)
{
  v11 = v1[2];
  v10 = v1[3];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)(a1, v11, v10, v3, v4, v5, v6, v7);
}

uint64_t partial apply for implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)(uint64_t a1)
{
  v4 = v1[7];
  v6 = v1[8];
  v5 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)(a1, v4, v6, v5);
}

uint64_t sub_264FCDA7C()
{
  v17 = type metadata accessor for Logger();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v15 = (v2 + 64) & ~v2;
  v3 = *(v1 + 64);
  v16 = type metadata accessor for UUID();
  v4 = *(v16 - 8);
  v5 = *(v4 + 80);
  v6 = (v15 + v3 + v5) & ~v5;
  v7 = v6 + *(v4 + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v8 = type metadata accessor for CheckedContinuation();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10) & ~v10;
  v12 = *(v9 + 64);
  v13 = v2 | v5 | v10;
  (*(v1 + 8))(v0 + v15, v17);
  (*(v4 + 8))(v0 + v6, v16);
  (*(v9 + 8))(v0 + v11, v8);

  return MEMORY[0x2821FE8E8](v0, v11 + v12, v13 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:)(void *a1, unint64_t a2, void *a3, unint64_t a4)
{
  v9 = *(v4 + 16);
  v19 = *(v4 + 40);
  v20 = *(v4 + 24);
  v10 = *(v4 + 56);
  v11 = *(type metadata accessor for Logger() - 8);
  v12 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for UUID() - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = v15 + *(v14 + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v17 = *(type metadata accessor for CheckedContinuation() - 8);
  return closure #1 in closure #1 in static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:)(a1, a2, a3, a4, v4 + v12, (v4 + v15), v4 + ((v16 + *(v17 + 80)) & ~*(v17 + 80)), v9, v20, *(&v20 + 1), v19, *(&v19 + 1), v10);
}

uint64_t partial apply for implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(uint64_t a1)
{
  v4 = v1[7];
  v6 = v1[8];
  v5 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(a1, v4, v6, v5);
}

uint64_t partial apply for implicit closure #6 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)@<X0>(uint64_t *a1@<X8>)
{
  return implicit closure #6 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(a1);
}

{
  return partial apply for implicit closure #6 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(a1);
}

uint64_t XPCUtils.XPCInterface.__allocating_init(remoteInterface:)(uint64_t a1)
{
  v2 = swift_allocObject();
  XPCUtils.XPCInterface.init(remoteInterface:)(a1);
  return v2;
}

uint64_t specialized Dictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for XPCUtils.XPCInterfaceRequest(0);
    v18 = *(v11 - 8);
    outlined init with take of XPCUtils.XPCInterfaceRequest(v10 + *(v18 + 72) * v7, a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for XPCUtils.XPCInterfaceRequest(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

double specialized Dictionary.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v11;
    }

    outlined init with take of XPCUtils.XPCRequest((*(v9 + 56) + 40 * v7), a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t key path getter for XPCUtils.XPCInterface.reconnectionBlock : <A>XPCUtils.XPCInterface<A>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 288))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error);
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error)(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v5();
}

uint64_t key path setter for XPCUtils.XPCInterface.reconnectionBlock : <A>XPCUtils.XPCInterface<A>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out (), @error @owned Error);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 296);
  _sxSbs5Error_pRi_zRi0_zlyxIseghndzo_Sgs8SendableRzlWOy(v3, v4);
  return v7(v6, v5);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out (), @error @owned Error)(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v4();
}

uint64_t XPCUtils.XPCInterface.connectionBlock.getter(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t XPCUtils.XPCInterface.connectionBlock.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t XPCUtils.XPCInterface.remoteInterface.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 160);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t XPCUtils.XPCInterface.remoteInterface.setter(uint64_t a1)
{
  v3 = *(*v1 + 160);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

char *XPCUtils.XPCInterface.init(remoteInterface:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  Logger.init(subsystem:category:)();
  v1[direct field offset for XPCUtils.XPCInterface.needsReconnection] = 0;
  v5 = direct field offset for XPCUtils.XPCInterface.jsonDecoder;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  *&v1[v5] = JSONDecoder.init()();
  v6 = direct field offset for XPCUtils.XPCInterface.jsonEncoder;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *&v1[v6] = JSONEncoder.init()();
  *&v1[direct field offset for XPCUtils.XPCInterface._nextRequestID] = 0;
  *&v1[direct field offset for XPCUtils.XPCInterface._nextConnectionID] = 1;
  v7 = direct field offset for XPCUtils.XPCInterface.runningRequests;
  *&v2[v7] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_15SecureMessaging8XPCUtilsO10XPCRequest_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v8 = &v2[direct field offset for XPCUtils.XPCInterface.connectionBlock];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v2[direct field offset for XPCUtils.XPCInterface.reconnectionBlock];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = *(*v2 + 160);
  (*(*(*(v4 + 80) - 8) + 56))(&v2[v10], 1, 1, *(v4 + 80));
  swift_beginAccess();
  v11 = type metadata accessor for Optional();
  (*(*(v11 - 8) + 40))(&v2[v10], a1, v11);
  swift_endAccess();
  return v2;
}

uint64_t XPCUtils.XPCInterface.addConnectionBlock(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static XPCActor.shared;

  return MEMORY[0x2822009F8](XPCUtils.XPCInterface.addConnectionBlock(_:), v4, 0);
}

uint64_t XPCUtils.XPCInterface.addConnectionBlock(_:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = *(**(v0 + 32) + 272);

  v3(v2, v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t XPCUtils.XPCInterface.addReconnectionBlock(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static XPCActor.shared;

  return MEMORY[0x2822009F8](XPCUtils.XPCInterface.addReconnectionBlock(_:), v4, 0);
}

uint64_t XPCUtils.XPCInterface.addReconnectionBlock(_:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = *(**(v0 + 32) + 296);

  v3(v2, v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 128) = v23;
  *(v9 + 136) = v8;
  *(v9 + 112) = v21;
  *(v9 + 120) = v22;
  *(v9 + 96) = v19;
  *(v9 + 104) = v20;
  *(v9 + 80) = v17;
  *(v9 + 88) = v18;
  *(v9 + 64) = a8;
  *(v9 + 72) = v16;
  *(v9 + 48) = a6;
  *(v9 + 56) = a7;
  *(v9 + 480) = a4;
  *(v9 + 32) = a1;
  *(v9 + 40) = a5;
  v10 = *v8;
  *(v9 + 144) = *(v18 - 8);
  *(v9 + 152) = swift_task_alloc();
  *(v9 + 160) = *(v23 + 8);
  *(v9 + 168) = swift_getAssociatedTypeWitness();
  *(v9 + 176) = swift_task_alloc();
  *(v9 + 184) = *(v19 - 8);
  *(v9 + 192) = swift_task_alloc();
  *(v9 + 200) = swift_task_alloc();
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 232) = swift_task_alloc();
  *(v9 + 240) = *(v20 - 8);
  *(v9 + 248) = swift_task_alloc();
  v11 = *(v10 + 80);
  *(v9 + 256) = v11;
  *(v9 + 264) = *(v11 - 8);
  *(v9 + 272) = swift_task_alloc();
  v12 = type metadata accessor for Optional();
  *(v9 + 280) = v12;
  *(v9 + 288) = *(v12 - 8);
  *(v9 + 296) = swift_task_alloc();
  *(v9 + 304) = swift_task_alloc();
  *(v9 + 312) = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static XPCActor.shared;
  *(v9 + 320) = static XPCActor.shared;

  return MEMORY[0x2822009F8](XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:), v13, 0);
}

uint64_t XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:)()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  XPCUtils.XPCInterface.remoteInterface.getter(v1);
  v6 = *(v5 + 48);
  *(v0 + 328) = v6;
  *(v0 + 336) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v7 = v6(v1, 1, v4);
  v8 = *(v3 + 8);
  *(v0 + 344) = v8;
  v8(v1, v2);
  if (v7 == 1)
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_264F1F000, v9, v10, "XPCInterface -- We have no remote interface, trying to connect to daemon.", v11, 2u);
      MEMORY[0x266755550](v11, -1, -1);
    }

    v12 = *(v0 + 136);

    v13 = (*(*v12 + 264))();
    *(v0 + 352) = v13;
    *(v0 + 360) = v14;
    if (v13)
    {
      v78 = (v13 + *v13);
      v15 = swift_task_alloc();
      *(v0 + 368) = v15;
      *v15 = v0;
      v15[1] = XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);
      v16 = *(v0 + 304);

      return v78(v16);
    }

    *(*(v0 + 136) + direct field offset for XPCUtils.XPCInterface.needsReconnection) = 1;
  }

  v18 = *(v0 + 328);
  v19 = *(v0 + 296);
  v20 = *(v0 + 256);
  XPCUtils.XPCInterface.remoteInterface.getter(v19);
  if (v18(v19, 1, v20) == 1)
  {
    (*(v0 + 344))(*(v0 + 296), *(v0 + 280));
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_264F1F000, v21, v22, "XPCInterface -- We have no remote interface, after trying to connect to the daemon. Could not reconnect.", v23, 2u);
      MEMORY[0x266755550](v23, -1, -1);
    }

    lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError();
    swift_allocError();
    *v24 = 0;
    *(v24 + 8) = 0;
    *(v24 + 16) = 0;
    swift_willThrow();

    v68 = *(v0 + 8);

    return v68();
  }

  v25 = *(v0 + 480);
  v26 = (*(*(v0 + 264) + 32))(*(v0 + 272), *(v0 + 296), *(v0 + 256));
  if (v25 == 1)
  {
    *(*(v0 + 136) + direct field offset for XPCUtils.XPCInterface.needsReconnection) = 0;
  }

  v34 = *(v0 + 136);
  if (*(v34 + direct field offset for XPCUtils.XPCInterface.needsReconnection) == 1)
  {
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_264F1F000, v35, v36, "XPCInterface needs reconnect.", v37, 2u);
      MEMORY[0x266755550](v37, -1, -1);
    }

    v38 = *(v0 + 136);

    v26 = (*(*v38 + 288))();
    *(v0 + 384) = v26;
    *(v0 + 392) = v27;
    if (v26)
    {
      v79 = (v26 + *v26);
      v39 = swift_task_alloc();
      *(v0 + 400) = v39;
      *v39 = v0;
      v39[1] = XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);

      return v79();
    }

    v34 = *(v0 + 136);
  }

  v40 = direct field offset for XPCUtils.XPCInterface._nextRequestID;
  v41 = *(v34 + direct field offset for XPCUtils.XPCInterface._nextRequestID);
  *(v0 + 416) = v41;
  if (__OFADD__(v41, 1))
  {
    __break(1u);
  }

  else
  {
    *(v34 + v40) = v41 + 1;
    *(v0 + 424) = direct field offset for XPCUtils.XPCInterface.logger;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 134217984;
      *(v44 + 4) = v41;
      _os_log_impl(&dword_264F1F000, v42, v43, "XPCInterface told to send { requestID: %ld }", v44, 0xCu);
      MEMORY[0x266755550](v44, -1, -1);
    }

    v69 = v41;
    v73 = *(v0 + 232);
    v75 = *(v0 + 224);
    v46 = *(v0 + 168);
    v45 = *(v0 + 176);
    v71 = *(v0 + 160);
    v48 = *(v0 + 128);
    v47 = *(v0 + 136);
    v49 = *(v0 + 120);
    v50 = *(v0 + 88);
    v51 = *(v0 + 96);
    v80 = *(v0 + 104);
    v70 = *(v0 + 40);

    v52 = swift_task_alloc();
    *(v52 + 16) = v50;
    *(v52 + 24) = v51;
    *(v52 + 32) = v80;
    *(v52 + 48) = v49;
    *(v52 + 56) = v48;
    *(v52 + 64) = v70;
    *(v52 + 80) = v47;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 432) = AssociatedConformanceWitness;
    (*(AssociatedConformanceWitness + 40))(v46, AssociatedConformanceWitness);
    VersatileError.init(type:)(v45, v51, v71);
    _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(partial apply for implicit closure #2 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:), v52, v73, 0, 0, v51, v80, v71, v75);
    v54 = *(v0 + 232);
    v55 = *(v0 + 184);
    v56 = *(v0 + 96);
    v57 = *(v55 + 8);
    *(v0 + 440) = v57;
    *(v0 + 448) = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v57(v54, v56);

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      *(v60 + 4) = v69;
      _os_log_impl(&dword_264F1F000, v58, v59, "XPCInterface encoded request { requestID: %ld }", v60, 0xCu);
      MEMORY[0x266755550](v60, -1, -1);
    }

    v61 = *(v0 + 320);
    v62 = *(v0 + 272);
    v63 = *(v0 + 248);
    v64 = *(v0 + 136);
    v74 = *(v0 + 104);
    v76 = *(v0 + 88);
    v72 = *(v0 + 120);
    v81 = *(v0 + 56);
    v77 = *(v0 + 72);

    v65 = lazy protocol witness table accessor for type XPCActor and conformance XPCActor();
    v66 = swift_task_alloc();
    *(v0 + 456) = v66;
    *(v66 + 16) = v76;
    *(v66 + 32) = v74;
    *(v66 + 48) = v72;
    *(v66 + 64) = v64;
    *(v66 + 72) = v69;
    *(v66 + 80) = v81;
    *(v66 + 96) = v77;
    *(v66 + 112) = v62;
    *(v66 + 120) = v63;
    v67 = swift_task_alloc();
    *(v0 + 464) = v67;
    *v67 = v0;
    v67[1] = XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);
    v33 = MEMORY[0x277CC9318];
    v31 = partial apply for closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);
    v26 = (v0 + 16);
    v30 = 0x80000002651E9430;
    v27 = v61;
    v28 = v65;
    v29 = 0xD000000000000065;
    v32 = v66;
  }

  return MEMORY[0x2822008A0](v26, v27, v28, v29, v30, v31, v32, v33);
}

{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 320);
  if (v0)
  {
    v4 = XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);
  }

  else
  {
    v4 = XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 304);
  (*(*(v0 + 264) + 56))(v3, 0, 1, *(v0 + 256));
  XPCUtils.XPCInterface.remoteInterface.setter(v3);
  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v2, v1);
  v4 = *(v0 + 376);
  *(*(v0 + 136) + direct field offset for XPCUtils.XPCInterface.needsReconnection) = 1;
  v5 = *(v0 + 328);
  v6 = *(v0 + 296);
  v7 = *(v0 + 256);
  XPCUtils.XPCInterface.remoteInterface.getter(v6);
  if (v5(v6, 1, v7) == 1)
  {
    (*(v0 + 344))(*(v0 + 296), *(v0 + 280));
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_264F1F000, v8, v9, "XPCInterface -- We have no remote interface, after trying to connect to the daemon. Could not reconnect.", v10, 2u);
      MEMORY[0x266755550](v10, -1, -1);
    }

    lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError();
    swift_allocError();
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    swift_willThrow();
    goto LABEL_28;
  }

  v12 = *(v0 + 480);
  v13 = (*(*(v0 + 264) + 32))(*(v0 + 272), *(v0 + 296), *(v0 + 256));
  if (v12 == 1)
  {
    *(*(v0 + 136) + direct field offset for XPCUtils.XPCInterface.needsReconnection) = 0;
  }

  v21 = *(v0 + 136);
  if (*(v21 + direct field offset for XPCUtils.XPCInterface.needsReconnection) != 1)
  {
LABEL_15:
    v28 = direct field offset for XPCUtils.XPCInterface._nextRequestID;
    v29 = *(v21 + direct field offset for XPCUtils.XPCInterface._nextRequestID);
    *(v0 + 416) = v29;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
    }

    else
    {
      v78 = v4;
      *(v21 + v28) = v29 + 1;
      *(v0 + 424) = direct field offset for XPCUtils.XPCInterface.logger;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 134217984;
        *(v32 + 4) = v29;
        _os_log_impl(&dword_264F1F000, v30, v31, "XPCInterface told to send { requestID: %ld }", v32, 0xCu);
        MEMORY[0x266755550](v32, -1, -1);
      }

      v70 = v29;
      v75 = *(v0 + 224);
      v34 = *(v0 + 168);
      v33 = *(v0 + 176);
      v72 = *(v0 + 160);
      v73 = *(v0 + 232);
      v36 = *(v0 + 128);
      v35 = *(v0 + 136);
      v37 = *(v0 + 120);
      v38 = *(v0 + 88);
      v39 = *(v0 + 96);
      v81 = *(v0 + 104);
      v71 = *(v0 + 40);

      v40 = swift_task_alloc();
      *(v40 + 16) = v38;
      *(v40 + 24) = v39;
      *(v40 + 32) = v81;
      *(v40 + 48) = v37;
      *(v40 + 56) = v36;
      *(v40 + 64) = v71;
      *(v40 + 80) = v35;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      *(v0 + 432) = AssociatedConformanceWitness;
      (*(AssociatedConformanceWitness + 40))(v34, AssociatedConformanceWitness);
      VersatileError.init(type:)(v33, v39, v72);
      _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(partial apply for implicit closure #2 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:), v40, v73, 0, 0, v39, v81, v72, v75);
      v42 = *(v0 + 232);
      if (v78)
      {
        v43 = *(v0 + 224);
        v44 = *(v0 + 200);
        v45 = *(v0 + 184);
        v46 = *(v0 + 96);
        v47 = *(v45 + 8);
        v47(v42, v46);
        v48 = *(v45 + 32);
        v48(v44, v43, v46);
        v49 = _getErrorEmbeddedNSError<A>(_:)();
        v50 = *(v0 + 200);
        if (v49)
        {
          v47(*(v0 + 200), *(v0 + 96));
        }

        else
        {
          v64 = *(v0 + 96);
          swift_allocError();
          v48(v65, v50, v64);
        }

        v66 = *(v0 + 264);
        v67 = *(v0 + 272);
        v68 = *(v0 + 256);

        (*(v66 + 8))(v67, v68);
LABEL_28:

        v69 = *(v0 + 8);

        return v69();
      }

      v51 = *(v0 + 184);
      v52 = *(v0 + 96);
      v53 = *(v51 + 8);
      *(v0 + 440) = v53;
      *(v0 + 448) = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v53(v42, v52);

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 134217984;
        *(v56 + 4) = v70;
        _os_log_impl(&dword_264F1F000, v54, v55, "XPCInterface encoded request { requestID: %ld }", v56, 0xCu);
        MEMORY[0x266755550](v56, -1, -1);
      }

      v57 = *(v0 + 320);
      v58 = *(v0 + 272);
      v59 = *(v0 + 248);
      v60 = *(v0 + 136);
      v76 = *(v0 + 104);
      v77 = *(v0 + 88);
      v74 = *(v0 + 120);
      v82 = *(v0 + 56);
      v79 = *(v0 + 72);

      v61 = lazy protocol witness table accessor for type XPCActor and conformance XPCActor();
      v62 = swift_task_alloc();
      *(v0 + 456) = v62;
      *(v62 + 16) = v77;
      *(v62 + 32) = v76;
      *(v62 + 48) = v74;
      *(v62 + 64) = v60;
      *(v62 + 72) = v70;
      *(v62 + 80) = v82;
      *(v62 + 96) = v79;
      *(v62 + 112) = v58;
      *(v62 + 120) = v59;
      v63 = swift_task_alloc();
      *(v0 + 464) = v63;
      *v63 = v0;
      v63[1] = XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);
      v20 = MEMORY[0x277CC9318];
      v18 = partial apply for closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);
      v13 = (v0 + 16);
      v17 = 0x80000002651E9430;
      v14 = v57;
      v15 = v61;
      v16 = 0xD000000000000065;
      v19 = v62;
    }

    return MEMORY[0x2822008A0](v13, v14, v15, v16, v17, v18, v19, v20);
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_264F1F000, v22, v23, "XPCInterface needs reconnect.", v24, 2u);
    MEMORY[0x266755550](v24, -1, -1);
  }

  v25 = *(v0 + 136);

  v13 = (*(*v25 + 288))();
  *(v0 + 384) = v13;
  *(v0 + 392) = v14;
  if (!v13)
  {
    v21 = *(v0 + 136);
    goto LABEL_15;
  }

  v80 = (v13 + *v13);
  v26 = swift_task_alloc();
  *(v0 + 400) = v26;
  *v26 = v0;
  v26[1] = XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);

  return v80();
}

{
  v2 = *v1;
  *(*v1 + 408) = v0;

  v3 = *(v2 + 320);
  if (v0)
  {
    v4 = XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);
  }

  else
  {
    v4 = XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(*(v0 + 384), *(v0 + 392));
  v9 = *(v0 + 408);
  v10 = *(v0 + 136);
  v11 = direct field offset for XPCUtils.XPCInterface._nextRequestID;
  v12 = *(v10 + direct field offset for XPCUtils.XPCInterface._nextRequestID);
  *(v0 + 416) = v12;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
    return MEMORY[0x2822008A0](v1, v2, v3, v4, v5, v6, v7, v8);
  }

  v62 = v9;
  *(v10 + v11) = v12 + 1;
  *(v0 + 424) = direct field offset for XPCUtils.XPCInterface.logger;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = v12;
    _os_log_impl(&dword_264F1F000, v13, v14, "XPCInterface told to send { requestID: %ld }", v15, 0xCu);
    MEMORY[0x266755550](v15, -1, -1);
  }

  v54 = v12;
  v59 = *(v0 + 224);
  v17 = *(v0 + 168);
  v16 = *(v0 + 176);
  v56 = *(v0 + 160);
  v57 = *(v0 + 232);
  v19 = *(v0 + 128);
  v18 = *(v0 + 136);
  v20 = *(v0 + 120);
  v21 = *(v0 + 88);
  v22 = *(v0 + 96);
  v64 = *(v0 + 104);
  v55 = *(v0 + 40);

  v23 = swift_task_alloc();
  *(v23 + 16) = v21;
  *(v23 + 24) = v22;
  *(v23 + 32) = v64;
  *(v23 + 48) = v20;
  *(v23 + 56) = v19;
  *(v23 + 64) = v55;
  *(v23 + 80) = v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 432) = AssociatedConformanceWitness;
  (*(AssociatedConformanceWitness + 40))(v17, AssociatedConformanceWitness);
  VersatileError.init(type:)(v16, v22, v56);
  _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(partial apply for implicit closure #2 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:), v23, v57, 0, 0, v22, v64, v56, v59);
  v25 = *(v0 + 232);
  if (!v62)
  {
    v34 = *(v0 + 184);
    v35 = *(v0 + 96);
    v36 = *(v34 + 8);
    *(v0 + 440) = v36;
    *(v0 + 448) = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v36(v25, v35);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      *(v39 + 4) = v54;
      _os_log_impl(&dword_264F1F000, v37, v38, "XPCInterface encoded request { requestID: %ld }", v39, 0xCu);
      MEMORY[0x266755550](v39, -1, -1);
    }

    v40 = *(v0 + 320);
    v41 = *(v0 + 272);
    v42 = *(v0 + 248);
    v43 = *(v0 + 136);
    v60 = *(v0 + 104);
    v61 = *(v0 + 88);
    v58 = *(v0 + 120);
    v65 = *(v0 + 56);
    v63 = *(v0 + 72);

    v44 = lazy protocol witness table accessor for type XPCActor and conformance XPCActor();
    v45 = swift_task_alloc();
    *(v0 + 456) = v45;
    *(v45 + 16) = v61;
    *(v45 + 32) = v60;
    *(v45 + 48) = v58;
    *(v45 + 64) = v43;
    *(v45 + 72) = v54;
    *(v45 + 80) = v65;
    *(v45 + 96) = v63;
    *(v45 + 112) = v41;
    *(v45 + 120) = v42;
    v46 = swift_task_alloc();
    *(v0 + 464) = v46;
    *v46 = v0;
    v46[1] = XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);
    v8 = MEMORY[0x277CC9318];
    v6 = partial apply for closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);
    v1 = v0 + 16;
    v5 = 0x80000002651E9430;
    v2 = v40;
    v3 = v44;
    v4 = 0xD000000000000065;
    v7 = v45;

    return MEMORY[0x2822008A0](v1, v2, v3, v4, v5, v6, v7, v8);
  }

  v26 = *(v0 + 224);
  v27 = *(v0 + 200);
  v28 = *(v0 + 184);
  v29 = *(v0 + 96);
  v30 = *(v28 + 8);
  v30(v25, v29);
  v31 = *(v28 + 32);
  v31(v27, v26, v29);
  v32 = _getErrorEmbeddedNSError<A>(_:)();
  v33 = *(v0 + 200);
  if (v32)
  {
    v30(v33, *(v0 + 96));
  }

  else
  {
    v47 = *(v0 + 96);
    swift_allocError();
    v31(v48, v33, v47);
  }

  v49 = *(v0 + 264);
  v50 = *(v0 + 272);
  v51 = *(v0 + 256);

  (*(v49 + 8))(v50, v51);

  v52 = *(v0 + 8);

  return v52();
}

{
  v2 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = *(v2 + 320);
    v4 = XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);
  }

  else
  {
    v5 = *(v2 + 320);

    v4 = XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v0[44], v0[45]);

  v1 = v0[1];

  return v1();
}

{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v0[48], v0[49]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[30];
  v6 = v0[13];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:)(uint64_t a1)
{
  v49 = *(v1 + 16);
  v50 = *(v1 + 24);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 416);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_264F1F000, v2, v3, "XPCInterface decoding result { requestID: %ld }", v5, 0xCu);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v6 = *(v1 + 432);
  v7 = *(v1 + 208);
  v8 = *(v1 + 216);
  v10 = *(v1 + 168);
  v9 = *(v1 + 176);
  v11 = *(v1 + 160);
  v47 = *(v1 + 472);
  v12 = *(v1 + 88);
  v48 = *(v1 + 96);
  v45 = *(v1 + 128);
  v46 = *(v1 + 112);

  v13 = swift_task_alloc();
  *(v13 + 16) = v12;
  *(v13 + 24) = v48;
  *(v13 + 40) = v46;
  *(v13 + 56) = v45;
  *(v13 + 72) = v49;
  *(v13 + 80) = v50;
  (*(v6 + 16))(v10, v6);
  VersatileError.init(type:)(v9, v48, v11);
  _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(partial apply for implicit closure #5 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:), v13, v8, 0, 0, v48, v12, v11, v7);
  v14 = *(v1 + 440);
  if (v47)
  {
    v15 = *(v1 + 208);
    v17 = *(v1 + 184);
    v16 = *(v1 + 192);
    v18 = *(v1 + 96);
    v14(*(v1 + 216), v18);
    v19 = *(v17 + 32);
    v19(v16, v15, v18);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v1 + 440))(*(v1 + 192), *(v1 + 96));
    }

    else
    {
      v33 = *(v1 + 192);
      v34 = *(v1 + 96);
      swift_allocError();
      v19(v35, v33, v34);
    }

    v37 = *(v1 + 264);
    v36 = *(v1 + 272);
    v39 = *(v1 + 248);
    v38 = *(v1 + 256);
    v40 = *(v1 + 240);
    v41 = *(v1 + 104);
    outlined consume of Data._Representation(v49, v50);

    (*(v40 + 8))(v39, v41);
    (*(v37 + 8))(v36, v38);

    v32 = *(v1 + 8);
  }

  else
  {
    v14(*(v1 + 216), *(v1 + 96));

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v1 + 416);
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = v22;
      _os_log_impl(&dword_264F1F000, v20, v21, "XPCInterface fulfilling with successful result { requestID: %ld }", v23, 0xCu);
      MEMORY[0x266755550](v23, -1, -1);
    }

    v24 = *(v1 + 264);
    v25 = *(v1 + 272);
    v43 = *(v1 + 248);
    v44 = *(v1 + 256);
    v26 = *(v1 + 240);
    v27 = *(v1 + 144);
    v28 = *(v1 + 152);
    v29 = *(v1 + 104);
    v30 = *(v1 + 88);
    v31 = *(v1 + 32);
    outlined consume of Data._Representation(v49, v50);

    (*(v27 + 32))(v31, v28, v30);
    (*(v26 + 8))(v43, v29);
    (*(v24 + 8))(v25, v44);

    v32 = *(v1 + 8);
  }

  return v32();
}

uint64_t closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, uint64_t), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t (*)(), void *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a4(v26, a1);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v26, a3);
  swift_endAccess();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = a3;
    _os_log_impl(&dword_264F1F000, v19, v20, "XPCInterface stored and sending request { requestID: %ld }", v21, 0xCu);
    MEMORY[0x266755550](v21, -1, -1);
  }

  v22 = swift_allocObject();
  v22[2] = a10;
  v22[3] = a11;
  v22[4] = a12;
  v22[5] = a13;
  v22[6] = a14;
  v22[7] = a15;
  v22[8] = a2;
  v22[9] = a3;

  a6(a8, a9, partial apply for closure #1 in closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:), v22);
}

uint64_t closure #1 in closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v33 = a7;
  v34 = a8;
  v35 = a6;
  v31 = a11;
  v32 = a12;
  v30 = a10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v30 - v18;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);

  outlined copy of Data?(a1, a2);
  outlined copy of Data?(a3, a4);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v21 = static XPCActor.shared;
  v22 = lazy protocol witness table accessor for type XPCActor and conformance XPCActor();
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = v22;
  v24 = v34;
  v23[4] = v33;
  v23[5] = v24;
  v25 = v30;
  v26 = v31;
  v23[6] = a9;
  v23[7] = v25;
  v27 = v32;
  v23[8] = v26;
  v23[9] = v27;
  v28 = v35;
  v23[10] = a5;
  v23[11] = v28;
  v23[12] = a1;
  v23[13] = a2;
  v23[14] = a3;
  v23[15] = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v19, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:), v23);
}

uint64_t closure #1 in closure #1 in closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v16;
  *(v8 + 104) = v17;
  *(v8 + 80) = v15;
  *(v8 + 64) = v13;
  *(v8 + 72) = v14;
  *(v8 + 48) = a8;
  *(v8 + 56) = v12;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  *(v8 + 112) = *(v17 + 8);
  *(v8 + 120) = swift_getAssociatedTypeWitness();
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = *(v14 - 8);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static XPCActor.shared;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:), v9, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:)()
{
  v108 = v0;
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  outlined copy of Data?(v4, v3);
  outlined copy of Data?(v2, v1);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  outlined consume of Data?(v4, v3);
  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    v11 = *(v0 + 24);
    v12 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v107[0] = v103;
    *v12 = 134218498;
    *(v12 + 4) = v11;
    *(v12 + 12) = 2080;
    if (v9 >> 60 == 15)
    {
      v13 = 0;
    }

    else
    {
      v13 = v10;
    }

    if (v9 >> 60 == 15)
    {
      v14 = 0xC000000000000000;
    }

    else
    {
      v14 = v9;
    }

    outlined copy of Data?(v10, v9);
    v15 = Data.description.getter();
    v17 = v16;
    outlined consume of Data._Representation(v13, v14);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v107);

    *(v12 + 14) = v18;
    *(v12 + 22) = 2080;
    if (v7 >> 60 == 15)
    {
      v19 = 0;
    }

    else
    {
      v19 = v8;
    }

    if (v7 >> 60 == 15)
    {
      v20 = 0xC000000000000000;
    }

    else
    {
      v20 = v7;
    }

    outlined copy of Data?(v8, v7);
    v21 = Data.description.getter();
    v23 = v22;
    outlined consume of Data._Representation(v19, v20);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v107);

    *(v12 + 24) = v24;
    _os_log_impl(&dword_264F1F000, v5, v6, "XPCInterface received result { requestID: %ld, resultData: %s, errorData: %s }", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v103, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }

  v25 = *(v0 + 40);
  if (v25 >> 60 == 15)
  {
    v26 = *(v0 + 56);
    if (v26 >> 60 == 15)
    {
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = *(v0 + 24);
        v30 = swift_slowAlloc();
        *v30 = 134217984;
        *(v30 + 4) = v29;
        _os_log_impl(&dword_264F1F000, v27, v28, "XPCInterface failing with empty result { requestID: %ld }", v30, 0xCu);
        MEMORY[0x266755550](v30, -1, -1);
      }

      v31 = *(v0 + 104);
      v32 = *(v0 + 72);

      lazy protocol witness table accessor for type XPCUtils.XPCError and conformance XPCUtils.XPCError();
      v33 = swift_allocError();
      v35 = v34;
      *(v34 + 8) = 0;
      *(v34 + 16) = 0;

      *v35 = 1;
      static XPCUtils.XPCableError.xpcError(underlyingError:)(v33, v32, v31);

      v36 = _getErrorEmbeddedNSError<A>(_:)();
      v37 = *(v0 + 152);
      v38 = *(v0 + 136);
      if (v36)
      {
        v39 = v36;
        (*(v38 + 8))(*(v0 + 152), *(v0 + 72));
      }

      else
      {
        v62 = *(v0 + 72);
        v39 = swift_allocError();
        (*(v38 + 32))(v63, v37, v62);
      }

      XPCUtils.XPCInterface.fail(requestID:with:)(*(v0 + 24), v39);
    }

    else
    {
      outlined copy of Data._Representation(*(v0 + 48), v26);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = *(v0 + 24);
        v50 = swift_slowAlloc();
        *v50 = 134217984;
        *(v50 + 4) = v49;
        _os_log_impl(&dword_264F1F000, v47, v48, "XPCInterface decoding error data { requestID: %ld }", v50, 0xCu);
        MEMORY[0x266755550](v50, -1, -1);
      }

      v101 = *(v0 + 184);
      v51 = *(v0 + 128);
      v104 = *(v0 + 136);
      v52 = *(v0 + 120);
      v99 = *(v0 + 112);
      v100 = *(v0 + 192);
      v53 = *(v0 + 104);
      v54 = *(v0 + 56);
      v55 = *(v0 + 64);
      v56 = *(v0 + 48);
      v57 = *(v0 + 16);
      v97 = *(v0 + 72);
      v98 = *(v0 + 88);

      v58 = swift_task_alloc();
      *(v58 + 16) = v55;
      *(v58 + 24) = v97;
      *(v58 + 40) = v98;
      *(v58 + 56) = v53;
      *(v58 + 64) = v57;
      *(v58 + 72) = v56;
      *(v58 + 80) = v54;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 16))(v52, AssociatedConformanceWitness);
      VersatileError.init(type:)(v51, v97, v99);
      _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(partial apply for implicit closure #8 in closure #1 in closure #1 in closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:), v58, v100, 0, 0, v97, v97, v99, v101);
      v60 = *(v104 + 8);
      v60(v100, v97);
      v61 = *(v0 + 136);
      v64 = *(v0 + 200);
      v65 = *(v0 + 176);
      v66 = *(v0 + 72);

      v67 = *(v61 + 16);
      v67(v65, v64, v66);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.default.getter();
      v70 = os_log_type_enabled(v68, v69);
      v71 = *(v0 + 176);
      if (v70)
      {
        v105 = v69;
        v72 = *(v0 + 168);
        v73 = *(v0 + 72);
        v74 = *(v0 + 24);
        v75 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *v75 = 134218242;
        *(v75 + 4) = v74;
        *(v75 + 12) = 2112;
        v106 = v67;
        v67(v72, v71, v73);
        v76 = _getErrorEmbeddedNSError<A>(_:)();
        v77 = *(v0 + 168);
        if (v76)
        {
          v60(*(v0 + 168), *(v0 + 72));
        }

        else
        {
          v81 = *(v0 + 136);
          v82 = *(v0 + 72);
          swift_allocError();
          (*(v81 + 32))(v83, v77, v82);
        }

        v84 = *(v0 + 176);
        v85 = *(v0 + 72);
        v86 = _swift_stdlib_bridgeErrorToNSError();
        v60(v84, v85);
        *(v75 + 14) = v86;
        *v102 = v86;
        _os_log_impl(&dword_264F1F000, v68, v105, "XPCInterface failing with error { requestID: %ld, error: %@ }", v75, 0x16u);
        outlined destroy of NSObject?(v102, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x266755550](v102, -1, -1);
        MEMORY[0x266755550](v75, -1, -1);

        v67 = v106;
      }

      else
      {
        v80 = *(v0 + 72);

        v60(v71, v80);
      }

      v67(*(v0 + 160), *(v0 + 200), *(v0 + 72));
      v87 = _getErrorEmbeddedNSError<A>(_:)();
      v88 = *(v0 + 160);
      if (v87)
      {
        v89 = v87;
        v60(*(v0 + 160), *(v0 + 72));
      }

      else
      {
        v90 = *(v0 + 136);
        v91 = *(v0 + 72);
        v89 = swift_allocError();
        (*(v90 + 32))(v92, v88, v91);
      }

      v93 = *(v0 + 200);
      v94 = *(v0 + 72);
      v96 = *(v0 + 48);
      v95 = *(v0 + 56);
      XPCUtils.XPCInterface.fail(requestID:with:)(*(v0 + 24), v89);
      outlined consume of Data?(v96, v95);

      v60(v93, v94);
    }
  }

  else
  {
    outlined copy of Data._Representation(*(v0 + 32), v25);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = *(v0 + 24);
      v43 = swift_slowAlloc();
      *v43 = 134217984;
      *(v43 + 4) = v42;
      _os_log_impl(&dword_264F1F000, v40, v41, "XPCInterface fullfilling with result { requestID: %ld }", v43, 0xCu);
      MEMORY[0x266755550](v43, -1, -1);
    }

    v45 = *(v0 + 32);
    v44 = *(v0 + 40);
    v46 = *(v0 + 24);

    XPCUtils.XPCInterface.finish(requestID:with:)(v46, v45, v44);
    outlined consume of Data?(v45, v44);
  }

  v78 = *(v0 + 8);

  return v78();
}

void XPCUtils.XPCInterface.finish(requestID:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1, &v11);
  swift_endAccess();
  if (v12)
  {
    outlined init with take of XPCUtils.XPCRequest(&v11, v13);
    v6 = v14;
    v7 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v7 + 8))(a2, a3, v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    outlined destroy of NSObject?(&v11, &_s15SecureMessaging8XPCUtilsO10XPCRequest_pSgMd, &_s15SecureMessaging8XPCUtilsO10XPCRequest_pSgMR);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = a1;
      _os_log_impl(&dword_264F1F000, v8, v9, "XPCInterface not tracking requestID. Failing finish operation { requestID: %ld }", v10, 0xCu);
      MEMORY[0x266755550](v10, -1, -1);
    }
  }
}

void XPCUtils.XPCInterface.fail(requestID:with:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1, &v9);
  swift_endAccess();
  if (v10)
  {
    outlined init with take of XPCUtils.XPCRequest(&v9, v11);
    v4 = v12;
    v5 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v5 + 16))(a2, v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    outlined destroy of NSObject?(&v9, &_s15SecureMessaging8XPCUtilsO10XPCRequest_pSgMd, &_s15SecureMessaging8XPCUtilsO10XPCRequest_pSgMR);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = a1;
      _os_log_impl(&dword_264F1F000, v6, v7, "XPCInterface not tracking requestID. Failing fail operation { requestID: %ld }", v8, 0xCu);
      MEMORY[0x266755550](v8, -1, -1);
    }
  }
}