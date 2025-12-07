uint64_t outlined init with copy of MLS.OutgoingRemoveSelf<Data>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18OutgoingRemoveSelfVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18OutgoingRemoveSelfVy_10Foundation4DataVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MLS.OutgoingRemoveSelf<Data>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18OutgoingRemoveSelfVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18OutgoingRemoveSelfVy_10Foundation4DataVGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264FE7460()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t partial apply for closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t instantiation function for generic protocol witness table for MLS.LeaveGroupOperation(uint64_t a1)
{
  result = _s8SwiftMLS0B0O5GroupO7MessageVAGs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type MLS.LeaveGroupOperation and conformance MLS.LeaveGroupOperation, type metadata accessor for MLS.LeaveGroupOperation, &protocol conformance descriptor for MLS.LeaveGroupOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t _s8SwiftMLS0B0O5GroupO7MessageVAGs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MLS.LeaveGroupOperation(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLS.LeaveGroupOperation;
  if (!type metadata singleton initialization cache for MLS.LeaveGroupOperation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MLS.LeaveGroupOperation(uint64_t a1)
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

uint64_t dispatch thunk of MLS.LeaveGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v6 = (*(*v1 + 184) + **(*v1 + 184));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t dispatch thunk of MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 192) + **(*v4 + 192));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t partial apply for closure #1 in closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)(a1, v4, v5, v6);
}

void KDSRegistration.Configuration.init(clientIdentifier:provider:simUniqueID:simLabelID:testPhoneNumber:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
}

uint64_t KDSRegistration.ClientIdentifier.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of KDSRegistration.ClientIdentifier.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance KDSRegistration.ClientIdentifier()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance KDSRegistration.ClientIdentifier(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance KDSRegistration.ClientIdentifier@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance KDSRegistration.ClientIdentifier, *a1);

  *a2 = v3 != 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance KDSRegistration.ClientIdentifier(uint64_t a1@<X8>)
{
  strcpy(a1, "EncryptedRCS");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t KDSRegistration.Configuration.simUniqueID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t KDSRegistration.Configuration.simLabelID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t KDSRegistration.Configuration.testPhoneNumber.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t type metadata instantiation function for KDSRegistration.Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for KDSRegistration.Configuration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for KDSRegistration.Configuration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:)(uint64_t a1, char a2)
{
  *(v3 + 316) = a2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v2;
  *(v3 + 208) = type metadata accessor for MLS.KeyPackageProvider(0);
  *(v3 + 216) = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static MLSActor.shared;
  *(v3 + 224) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:), v4, 0);
}

void MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:)(uint64_t a1)
{
  if (*(v1 + 316) == 1)
  {
    *(v1 + 312) = *(*(v1 + 208) + 24);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_264F1F000, v2, v3, "KeyPackageProvider keyPackage loading KeyPackage", v4, 2u);
      MEMORY[0x266755550](v4, -1, -1);
    }

    v5 = swift_task_alloc();
    *(v1 + 232) = v5;
    *v5 = v1;
    v5[1] = MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:);

    MLS.KeyPackageProvider.loadKeyPackage()(v1 + 112);
  }

  else
  {
    v6 = *(v1 + 200);
    v7 = *(v6 + 56);
    ObjectType = swift_getObjectType();
    v9 = swift_task_alloc();
    *(v1 + 248) = v9;
    *(v9 + 16) = v6;
    v10 = swift_task_alloc();
    *(v1 + 256) = v10;
    *v10 = v1;
    v10[1] = MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:);
    v11 = *(v1 + 192);

    MLS.Persister.atomically<A>(with:do:)(v11, 0x5079654B666C6573, 0xEE006567616B6361, &async function pointer to partial apply for closure #2 in MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:), v9, ObjectType, &type metadata for MLS.KeyPackageInfo, v7);
  }
}

uint64_t MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:)()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 224);
  if (v0)
  {
    v4 = MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:);
  }

  else
  {
    v4 = MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v17 = v0;
  v1 = v0[14];
  v2 = v0[15];
  outlined copy of Data._Representation(v1, v2);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v1, v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    outlined copy of Data._Representation(v1, v2);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v8 = [(objc_class *)isa description];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    outlined consume of Data._Representation(v1, v2);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v16);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_264F1F000, v3, v4, "KeyPackageProvider keyPackage loaded KeyPackage { keyPackage: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v13 = v0[24];
  *v13 = v1;
  v13[1] = v2;

  v14 = v0[1];

  return v14();
}

{
  v2 = *v1;
  v2[33] = v0;

  if (v0)
  {
    v3 = v2[28];

    return MEMORY[0x2822009F8](MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:), v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

{
  v21 = v0;
  v1 = *(v0 + 240);
  *(v0 + 160) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_264F1F000, v3, v4, "KeyPackageProvider keyPackage did not find saved KeyPackage. Generating new one.", v5, 2u);
      MEMORY[0x266755550](v5, -1, -1);
    }

    v6 = *(v0 + 216);
    v7 = *(v0 + 200);

    outlined init with copy of MLS.KeyPackageProvider(v7, v6);
    v8 = swift_task_alloc();
    *(v0 + 272) = v8;
    *v8 = v0;
    v8[1] = MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:);

    return MLS.KeyPackageProvider.generateKeyPackage()(v0 + 144);
  }

  else
  {

    swift_getErrorValue();
    v10 = Error.readableDescription.getter(*(v0 + 24), *(v0 + 32));
    v12 = v11;

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v20);
      _os_log_impl(&dword_264F1F000, v13, v14, "KeyPackageProvider keyPackage load hit unexpected failure { error: %s }", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x266755550](v16, -1, -1);
      MEMORY[0x266755550](v15, -1, -1);
    }

    v17 = *(v0 + 240);
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError();
    swift_allocError();
    *v18 = 4;
    *(v18 + 8) = v10;
    *(v18 + 16) = v12;
    swift_willThrow();

    v19 = *(v0 + 8);

    return v19();
  }
}

{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:);
  }

  else
  {
    outlined destroy of MLS.KeyPackageProvider(*(v2 + 216));
    v3 = MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 224);

  return MEMORY[0x2822009F8](MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:), v1, 0);
}

{
  v18 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  outlined copy of Data._Representation(v1, v2);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v1, v2);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 192);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = v16;
    *v7 = 136315138;
    outlined copy of Data._Representation(v1, v2);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v9 = [(objc_class *)isa description];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    outlined consume of Data._Representation(v1, v2);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v17);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_264F1F000, v3, v4, "KeyPackageProvider keyPackage generated KeyPackage { keyPackage: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266755550](v16, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  *v6 = v1;
  v6[1] = v2;

  v14 = *(v0 + 8);

  return v14();
}

{
  v15 = v0;
  swift_getErrorValue();
  v1 = Error.readableDescription.getter(*(v0 + 48), *(v0 + 56));
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, &v14);
    _os_log_impl(&dword_264F1F000, v4, v5, "KeyPackageProvider keyPackage failed generating KeyPackage { error: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v8 = *(v0 + 280);
  v10 = *(v0 + 216);
  v9 = *(v0 + 224);
  swift_getErrorValue();
  v11 = Error.readableDescription.getter(*(v0 + 72), *(v0 + 80));
  *(v0 + 288) = v11;
  *(v0 + 296) = v12;
  *(v0 + 88) = 5;
  *(v0 + 96) = v11;
  *(v0 + 104) = v12;
  *(v0 + 304) = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError();
  swift_willThrowTypedImpl();
  outlined destroy of MLS.KeyPackageProvider(v10);

  return MEMORY[0x2822009F8](MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:), v9, 0);
}

{
  v1 = *(v0 + 296);
  v2 = *(v0 + 288);
  swift_allocError();
  *v3 = 5;
  *(v3 + 8) = v2;
  *(v3 + 16) = v1;

  v4 = *(v0 + 8);

  return v4();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for Error._code.getter in conformance MLS.KeyPackageProviderError.ErrorType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType();
  v5 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t MLS.KeyPackageProviderError.underlyingErrorDescription.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static MLS.KeyPackageProviderError.== infix(_:_:)(uint64_t *a1, void *a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.KeyPackageProviderError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.KeyPackageProviderError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.KeyPackageProviderError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO23KeyPackageProviderErrorV10CodingKeys33_AE9476C4AD916767B5A228FC0178C34DLLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO23KeyPackageProviderErrorV10CodingKeys33_AE9476C4AD916767B5A228FC0178C34DLLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[1] = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = 0;
  lazy protocol witness table accessor for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t MLS.KeyPackageProviderError.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO23KeyPackageProviderErrorV10CodingKeys33_AE9476C4AD916767B5A228FC0178C34DLLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO23KeyPackageProviderErrorV10CodingKeys33_AE9476C4AD916767B5A228FC0178C34DLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v15 = 0;
    lazy protocol witness table accessor for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType();
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

uint64_t protocol witness for Error._domain.getter in conformance MLS.KeyPackageProviderError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.KeyPackageProviderError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t MLS.KeyPackageProvider.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.KeyPackageProvider(0) + 24);
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 MLS.KeyPackageProvider.init(swiftMLSClient:persister:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for MLS.KeyPackageProvider(0);
  Logger.init(subsystem:category:)();
  v8 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v8;
  result = *(a1 + 25);
  *(a4 + 25) = result;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  return result;
}

uint64_t MLS.KeyPackageProvider.loadKeyPackage()(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = type metadata accessor for MLS.Client.KeyPackage();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static MLSActor.shared;
  v2[23] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.KeyPackageProvider.loadKeyPackage(), v4, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  v5 = *(v3 + 184);
  if (v1)
  {
    v6 = MLS.KeyPackageProvider.loadKeyPackage();
  }

  else
  {
    v6 = MLS.KeyPackageProvider.loadKeyPackage();
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t MLS.KeyPackageProvider.loadKeyPackage()()
{
  *(v0 + 60) = *(type metadata accessor for MLS.KeyPackageProvider(0) + 24);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_264F1F000, v1, v2, "KeyPackageProvider -- loading key package", v3, 2u);
    MEMORY[0x266755550](v3, -1, -1);
  }

  v4 = *(v0 + 152);

  outlined init with copy of MLS.SwiftMLSClientPicker(v4, v0 + 16);
  if (*(v0 + 56))
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 16), v0 + 64);
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 16), v0 + 104);
    v5 = *(v0 + 128);
    v6 = *(v0 + 136);
    v7 = __swift_project_boxed_opaque_existential_1((v0 + 104), v5);
    *(v0 + 88) = v5;
    *(v0 + 96) = *(v6 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
    (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v7, v5);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
  }

  v9 = *(v0 + 88);
  v10 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), v9);
  v13 = (*(v10 + 40) + **(v10 + 40));
  v11 = swift_task_alloc();
  *(v0 + 192) = v11;
  *v11 = v0;
  v11[1] = MLS.KeyPackageProvider.loadKeyPackage();

  return v13(v9, v10);
}

{
  v28 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  swift_bridgeObjectRetain_n();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[25];
  if (v3)
  {
    v5 = v0[20];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136315394;
    v8 = MEMORY[0x266754630](v4, v5);
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v27);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2048;
    v11 = *(v4 + 16);

    *(v6 + 14) = v11;

    _os_log_impl(&dword_264F1F000, v1, v2, "KeyPackageProvider -- listKeyPackages { keyPackages: %s, count: %ld }", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v12 = v0[25];
  v13 = *(v12 + 16);
  if (v13)
  {
    v15 = v0[21];
    v14 = v0[22];
    v16 = v0[20];
    v17 = v0[18];
    (*(v15 + 16))(v14, v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * (v13 - 1), v16);

    v18 = MLS.Client.KeyPackage.rawRepresentation.getter();
    v20 = v19;
    (*(v15 + 8))(v14, v16);
    *v17 = v18;
    v17[1] = v20;

    v21 = v0[1];
  }

  else
  {

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_264F1F000, v22, v23, "KeyPackageProvider -- found no saved keypackage.", v24, 2u);
      MEMORY[0x266755550](v24, -1, -1);
    }

    lazy protocol witness table accessor for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError();
    swift_allocError();
    *v25 = 0;
    v25[1] = 0;
    swift_willThrow();

    v21 = v0[1];
  }

  return v21();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.KeyPackageProvider.generateKeyPackage()(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = type metadata accessor for MLS.Client.KeyPackage();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static MLSActor.shared;
  v2[23] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.KeyPackageProvider.generateKeyPackage(), v4, 0);
}

uint64_t MLS.KeyPackageProvider.generateKeyPackage()()
{
  type metadata accessor for MLS.KeyPackageProvider(0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_264F1F000, v1, v2, "KeyPackageProvider -- Generating key package", v3, 2u);
    MEMORY[0x266755550](v3, -1, -1);
  }

  v4 = *(v0 + 152);

  outlined init with copy of MLS.SwiftMLSClientPicker(v4, v0 + 16);
  if (*(v0 + 56))
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 16), v0 + 64);
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 16), v0 + 104);
    v5 = *(v0 + 128);
    v6 = *(v0 + 136);
    v7 = __swift_project_boxed_opaque_existential_1((v0 + 104), v5);
    *(v0 + 88) = v5;
    *(v0 + 96) = *(v6 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
    (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v7, v5);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
  }

  v9 = *(v0 + 88);
  v10 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), v9);
  v14 = (*(v10 + 48) + **(v10 + 48));
  v11 = swift_task_alloc();
  *(v0 + 192) = v11;
  *v11 = v0;
  v11[1] = MLS.KeyPackageProvider.generateKeyPackage();
  v12 = *(v0 + 176);

  return v14(v12, v9, v10);
}

{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 184);
  if (v0)
  {
    v4 = MLS.KeyPackageProvider.generateKeyPackage();
  }

  else
  {
    v4 = MLS.KeyPackageProvider.generateKeyPackage();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[18];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  v5 = MLS.Client.KeyPackage.rawRepresentation.getter();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  *v4 = v5;
  v4[1] = v7;

  v8 = v0[1];

  return v8();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:)(a1, 1);
}

uint64_t type metadata accessor for MLS.KeyPackageProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLS.KeyPackageProvider;
  if (!type metadata singleton initialization cache for MLS.KeyPackageProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #2 in MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:)(a1);
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.KeyPackageProviderError(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError();
  a1[2] = lazy protocol witness table accessor for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError();
  a1[3] = lazy protocol witness table accessor for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError();
  result = lazy protocol witness table accessor for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError();
  a1[4] = result;
  return result;
}

uint64_t sub_264FEABD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Logger();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_264FEAC90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata completion function for MLS.KeyPackageProvider(uint64_t a1)
{
  result = type metadata accessor for MLS.Persister();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for MLS.Persister()
{
  result = lazy cache variable for type metadata for MLS.Persister;
  if (!lazy cache variable for type metadata for MLS.Persister)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MLS.Persister);
  }

  return result;
}

uint64_t timeout<A>(after:throwing:work:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v8 = type metadata accessor for CancellationError();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](timeout<A>(after:throwing:work:), 0, 0);
}

uint64_t timeout<A>(after:throwing:work:)()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];
  v5 = v0[4];
  v17 = v0[5];
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v3;
  v8[5] = v4;
  v8[6] = v2;

  v9 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v1, &async function pointer to partial apply for closure #1 in timeout<A>(after:throwing:work:), v8, v3);
  v0[14] = v9;
  v7(v1, 1, 1, v6);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v3;
  v10[5] = v5;
  v10[6] = v17;
  v10[7] = v9;

  v0[15] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #2 in timeout<A>(after:throwing:work:), v10);
  v11 = swift_task_alloc();
  v0[16] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v0[17] = v12;
  *v11 = v0;
  v11[1] = timeout<A>(after:throwing:work:);
  v13 = v0[9];
  v14 = v0[3];
  v15 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v14, v9, v13, v12, v15);
}

{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = timeout<A>(after:throwing:work:);
  }

  else
  {
    v2 = timeout<A>(after:throwing:work:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  MEMORY[0x266754760](v0[15], MEMORY[0x277D84F78] + 8, v0[17], MEMORY[0x277D84950]);

  v1 = v0[1];

  return v1();
}

{
  v1 = *(v0 + 144);
  *(v0 + 16) = v1;
  v2 = v1;
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 48);
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v6 = *(v0 + 80);

    swift_willThrow();

    (*(v5 + 8))(v4, v6);
    v7 = v3;
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t closure #1 in timeout<A>(after:throwing:work:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a6;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = closure #1 in timeout<A>(after:throwing:work:);

  return v10(a1);
}

uint64_t closure #1 in timeout<A>(after:throwing:work:)()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](closure #1 in timeout<A>(after:throwing:work:), 0, 0);
  }
}

{
  v1 = v0[5];
  static Task<>.checkCancellation()();
  if (v1)
  {
    (*(*(v0[3] - 8) + 8))(v0[2]);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_264FEB834()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in timeout<A>(after:throwing:work:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in timeout<A>(after:throwing:work:)(a1, v4, v5, v7, v8, v6);
}

uint64_t closure #2 in timeout<A>(after:throwing:work:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for ContinuousClock();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in timeout<A>(after:throwing:work:), 0, 0);
}

uint64_t closure #2 in timeout<A>(after:throwing:work:)()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = closure #2 in timeout<A>(after:throwing:work:);
  v3 = v0[2];
  v2 = v0[3];

  return specialized Clock.sleep(for:tolerance:)(v3, v2, 0, 0, 1);
}

{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = closure #2 in timeout<A>(after:throwing:work:);
  }

  else
  {
    v5 = closure #2 in timeout<A>(after:throwing:work:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v2 = v0[4];
  v1 = v0[5];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x266754760](v2, v1, v3, MEMORY[0x277D84950]);

  v4 = v0[1];

  return v4();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264FEBD34()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t partial apply for closure #2 in timeout<A>(after:throwing:work:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in timeout<A>(after:throwing:work:)(a1, v4, v5, v7, v9, v8, v6);
}

uint64_t timeout<A, B>(after:throwing:task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](timeout<A, B>(after:throwing:task:), 0, 0);
}

uint64_t timeout<A, B>(after:throwing:task:)()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = swift_allocObject();
  v0[10] = v3;
  *(v3 + 16) = *(v0 + 7);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;

  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = timeout<A, B>(after:throwing:task:);
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return timeout<A>(after:throwing:work:)(v8, v9, v6, v7, &async function pointer to partial apply for closure #1 in timeout<A, B>(after:throwing:task:), v3, v5);
}

{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](MLS.GroupLoader.atomically<A>(with:do:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t closure #1 in timeout<A, B>(after:throwing:task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return MEMORY[0x282200430](a1, a2, a3, a4, a5);
}

uint64_t sub_264FEC174()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in timeout<A, B>(after:throwing:task:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in timeout<A, B>(after:throwing:task:)(a1, v6, v4, v5, v7);
}

uint64_t MLS.OutgoingEventType.storageIdentifier.getter(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v109 = a1[2];
  v2 = v109;
  v110 = v3;
  v111 = v4;
  v112 = v5;
  v6 = type metadata accessor for MLS.OutgoingErrorOccurred(0, &v109);
  v106 = *(v6 - 8);
  v107 = v6;
  MEMORY[0x28223BE20](v6);
  v105 = &v64 - v7;
  v109 = v2;
  v110 = v3;
  v111 = v4;
  v112 = v5;
  v8 = type metadata accessor for MLS.OutgoingGroupRepaired(0, &v109);
  v103 = *(v8 - 8);
  v104 = v8;
  MEMORY[0x28223BE20](v8);
  v102 = &v64 - v9;
  v109 = v2;
  v110 = v3;
  v111 = v4;
  v112 = v5;
  v10 = type metadata accessor for MLS.OutgoingProposalCommitted(0, &v109);
  v100 = *(v10 - 8);
  v101 = v10;
  MEMORY[0x28223BE20](v10);
  v99 = &v64 - v11;
  v109 = v2;
  v110 = v3;
  v111 = v4;
  v112 = v5;
  v12 = type metadata accessor for MLS.OutgoingReplaceExpiredCredentials(0, &v109);
  v97 = *(v12 - 8);
  v98 = v12;
  MEMORY[0x28223BE20](v12);
  v96 = &v64 - v13;
  v15 = type metadata accessor for MLS.OutgoingGroupNameChange(0, v3, v5, v14);
  v94 = *(v15 - 8);
  v95 = v15;
  MEMORY[0x28223BE20](v15);
  v93 = &v64 - v16;
  v92 = type metadata accessor for MLS.OutgoingDowngrade(0, v3, v5, v17);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v64 - v18;
  v89 = type metadata accessor for MLS.OutgoingApplicationSend(0, v3, v5, v19);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v64 - v20;
  v109 = v2;
  v110 = v3;
  v111 = v4;
  v112 = v5;
  v86 = type metadata accessor for MLS.OutgoingRecreateGroup(0, &v109);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v64 - v21;
  v109 = v2;
  v110 = v3;
  v111 = v4;
  v112 = v5;
  v83 = type metadata accessor for MLS.OutgoingResurrectGroup(0, &v109);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v64 - v22;
  v80 = type metadata accessor for MLS.OutgoingFailureToDecrypt(0, v3, v5, v23);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v64 - v24;
  v109 = v2;
  v110 = v3;
  v111 = v4;
  v112 = v5;
  v77 = type metadata accessor for MLS.OutgoingFailureToDecrypt_v2(0, &v109);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v64 - v25;
  v109 = v2;
  v110 = v3;
  v111 = v4;
  v112 = v5;
  v74 = type metadata accessor for MLS.OutgoingResync(0, &v109);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v64 - v26;
  v71 = type metadata accessor for MLS.OutgoingKeyUpdate(0, v3, v5, v27);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v64 - v28;
  v68 = type metadata accessor for MLS.OutgoingRemoveSelf(0, v3, v5, v29);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v31 = &v64 - v30;
  v109 = v2;
  v110 = v3;
  v111 = v4;
  v112 = v5;
  v32 = type metadata accessor for MLS.OutgoingKickMember(0, &v109);
  v66 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v64 - v33;
  v109 = v2;
  v110 = v3;
  v111 = v4;
  v112 = v5;
  v35 = type metadata accessor for MLS.OutgoingAddMember(0, &v109);
  v65 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v37 = &v64 - v36;
  v109 = v2;
  v110 = v3;
  v111 = v4;
  v112 = v5;
  Group = type metadata accessor for MLS.OutgoingCreateGroup(0, &v109);
  v39 = *(Group - 8);
  v40 = MEMORY[0x28223BE20](Group);
  v42 = &v64 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v64 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v45 + 16))(v44, v108, a1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v60 = v65;
      (*(v65 + 32))(v37, v44, v35);
      v46 = *(v37 + 2);
      v61 = *(v60 + 8);

      v61(v37, v35);
      return v46;
    case 2u:
      v55 = v66;
      (*(v66 + 32))(v34, v44, v32);
      v46 = *(v34 + 2);
      v56 = *(v55 + 8);

      v56(v34, v32);
      return v46;
    case 3u:
      v57 = v67;
      v58 = v68;
      (*(v67 + 32))(v31, v44, v68);
      v46 = *(v31 + 2);
      v59 = *(v57 + 8);

      v59(v31, v58);
      return v46;
    case 4u:
      v48 = v70;
      v51 = *(v70 + 32);
      v49 = v69;
      v52 = v69;
      v53 = v44;
      v54 = &v103;
      goto LABEL_19;
    case 5u:
      v48 = v73;
      v51 = *(v73 + 32);
      v49 = v72;
      v52 = v72;
      v53 = v44;
      v54 = &v106;
      goto LABEL_19;
    case 6u:
      v48 = v76;
      v51 = *(v76 + 32);
      v49 = v75;
      v52 = v75;
      v53 = v44;
      v54 = &v109;
      goto LABEL_19;
    case 7u:
      v48 = v79;
      v51 = *(v79 + 32);
      v49 = v78;
      v52 = v78;
      v53 = v44;
      v54 = &v112;
      goto LABEL_19;
    case 8u:
      v48 = v82;
      v51 = *(v82 + 32);
      v49 = v81;
      v52 = v81;
      v53 = v44;
      v54 = &v113;
      goto LABEL_19;
    case 9u:
      v48 = v85;
      v51 = *(v85 + 32);
      v49 = v84;
      v52 = v84;
      v53 = v44;
      v54 = &v114;
      goto LABEL_19;
    case 0xAu:
      v48 = v88;
      v51 = *(v88 + 32);
      v49 = v87;
      v52 = v87;
      v53 = v44;
      v54 = &v115;
LABEL_19:
      v50 = *(v54 - 32);
      v51(v52, v53, v50);
      goto LABEL_20;
    case 0xBu:
      v48 = v91;
      v49 = v90;
      v50 = v92;
      (*(v91 + 32))(v90, v44, v92);
      goto LABEL_20;
    case 0xCu:
      v49 = v93;
      v48 = v94;
      v50 = v95;
      (*(v94 + 32))(v93, v44, v95);
      goto LABEL_20;
    case 0xDu:
      v49 = v96;
      v48 = v97;
      v50 = v98;
      (*(v97 + 32))(v96, v44, v98);
      goto LABEL_20;
    case 0xEu:
      v49 = v99;
      v48 = v100;
      v50 = v101;
      (*(v100 + 32))(v99, v44, v101);
      goto LABEL_20;
    case 0xFu:
      v49 = v102;
      v48 = v103;
      v50 = v104;
      (*(v103 + 32))(v102, v44, v104);
      goto LABEL_20;
    case 0x10u:
      v49 = v105;
      v48 = v106;
      v50 = v107;
      (*(v106 + 32))(v105, v44, v107);
LABEL_20:
      v46 = *(v49 + 2);
      v62 = *(v48 + 8);

      v62(v49, v50);
      break;
    default:
      (*(v39 + 32))(v42, v44, Group);
      v46 = *(v42 + 2);
      v47 = *(v39 + 8);

      v47(v42, Group);
      break;
  }

  return v46;
}

uint64_t MLS.OutgoingErrorOccurred.init(identifier:storageIdentifier:trigger:clientContext:metricCollector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = *a7;
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v23 = a8;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v17 = type metadata accessor for MLS.OutgoingErrorOccurred(0, &v23);
  v18 = v17[14];
  v23 = a8;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v19 = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger(0, &v23);
  (*(*(v19 - 8) + 32))(&a9[v18], a5, v19);
  v20 = v17[15];
  v21 = type metadata accessor for Optional();
  result = (*(*(v21 - 8) + 32))(&a9[v20], a6, v21);
  *&a9[v17[16]] = v16;
  return result;
}

__n128 MLS.OutgoingGroupNameChange.init(identifier:storageIdentifier:clientContext:metricCollector:commit:encryptedGroupNameKey:encryptedGroupName:epochAuthenticator:ratchetTree:groupInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, __n128 *a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *a6;
  v35 = *a7;
  v24 = a7[1].n128_u64[0];
  v23 = a7[1].n128_u64[1];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v25 = type metadata accessor for MLS.OutgoingGroupNameChange(0, a19, a20, a4);
  v26 = v25[10];
  v27 = type metadata accessor for Optional();
  (*(*(v27 - 8) + 32))(&a9[v26], a5, v27);
  *&a9[v25[11]] = v22;
  v28 = &a9[v25[12]];
  result = v35;
  *v28 = v35;
  *(v28 + 2) = v24;
  *(v28 + 3) = v23;
  v30 = &a9[v25[13]];
  *v30 = a8;
  *(v30 + 1) = a10;
  v31 = &a9[v25[14]];
  *v31 = a11;
  *(v31 + 1) = a12;
  v32 = &a9[v25[15]];
  *v32 = a13;
  *(v32 + 1) = a14;
  v33 = &a9[v25[16]];
  *v33 = a15;
  *(v33 + 1) = a16;
  v34 = &a9[v25[17]];
  *v34 = a17;
  *(v34 + 1) = a18;
  return result;
}

uint64_t MLS.OutgoingEventType.identifier.getter(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v109 = a1[2];
  v2 = v109;
  v110 = v3;
  v111 = v4;
  v112 = v5;
  v6 = type metadata accessor for MLS.OutgoingErrorOccurred(0, &v109);
  v106 = *(v6 - 8);
  v107 = v6;
  MEMORY[0x28223BE20](v6);
  v105 = &v64 - v7;
  v109 = v2;
  v110 = v3;
  v111 = v4;
  v112 = v5;
  v8 = type metadata accessor for MLS.OutgoingGroupRepaired(0, &v109);
  v103 = *(v8 - 8);
  v104 = v8;
  MEMORY[0x28223BE20](v8);
  v102 = &v64 - v9;
  v109 = v2;
  v110 = v3;
  v111 = v4;
  v112 = v5;
  v10 = type metadata accessor for MLS.OutgoingProposalCommitted(0, &v109);
  v100 = *(v10 - 8);
  v101 = v10;
  MEMORY[0x28223BE20](v10);
  v99 = &v64 - v11;
  v109 = v2;
  v110 = v3;
  v111 = v4;
  v112 = v5;
  v12 = type metadata accessor for MLS.OutgoingReplaceExpiredCredentials(0, &v109);
  v97 = *(v12 - 8);
  v98 = v12;
  MEMORY[0x28223BE20](v12);
  v96 = &v64 - v13;
  v15 = type metadata accessor for MLS.OutgoingGroupNameChange(0, v3, v5, v14);
  v94 = *(v15 - 8);
  v95 = v15;
  MEMORY[0x28223BE20](v15);
  v93 = &v64 - v16;
  v92 = type metadata accessor for MLS.OutgoingDowngrade(0, v3, v5, v17);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v64 - v18;
  v89 = type metadata accessor for MLS.OutgoingApplicationSend(0, v3, v5, v19);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v64 - v20;
  v109 = v2;
  v110 = v3;
  v111 = v4;
  v112 = v5;
  v86 = type metadata accessor for MLS.OutgoingRecreateGroup(0, &v109);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v64 - v21;
  v109 = v2;
  v110 = v3;
  v111 = v4;
  v112 = v5;
  v83 = type metadata accessor for MLS.OutgoingResurrectGroup(0, &v109);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v64 - v22;
  v80 = type metadata accessor for MLS.OutgoingFailureToDecrypt(0, v3, v5, v23);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v64 - v24;
  v109 = v2;
  v110 = v3;
  v111 = v4;
  v112 = v5;
  v77 = type metadata accessor for MLS.OutgoingFailureToDecrypt_v2(0, &v109);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v64 - v25;
  v109 = v2;
  v110 = v3;
  v111 = v4;
  v112 = v5;
  v74 = type metadata accessor for MLS.OutgoingResync(0, &v109);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v64 - v26;
  v71 = type metadata accessor for MLS.OutgoingKeyUpdate(0, v3, v5, v27);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v64 - v28;
  v68 = type metadata accessor for MLS.OutgoingRemoveSelf(0, v3, v5, v29);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v31 = (&v64 - v30);
  v109 = v2;
  v110 = v3;
  v111 = v4;
  v112 = v5;
  v32 = type metadata accessor for MLS.OutgoingKickMember(0, &v109);
  v66 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = (&v64 - v33);
  v109 = v2;
  v110 = v3;
  v111 = v4;
  v112 = v5;
  v35 = type metadata accessor for MLS.OutgoingAddMember(0, &v109);
  v65 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v37 = (&v64 - v36);
  v109 = v2;
  v110 = v3;
  v111 = v4;
  v112 = v5;
  Group = type metadata accessor for MLS.OutgoingCreateGroup(0, &v109);
  v39 = *(Group - 8);
  v40 = MEMORY[0x28223BE20](Group);
  v42 = (&v64 - v41);
  MEMORY[0x28223BE20](v40);
  v44 = &v64 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v45 + 16))(v44, v108, a1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v60 = v65;
      (*(v65 + 32))(v37, v44, v35);
      v46 = *v37;
      v61 = *(v60 + 8);

      v61(v37, v35);
      return v46;
    case 2u:
      v55 = v66;
      (*(v66 + 32))(v34, v44, v32);
      v46 = *v34;
      v56 = *(v55 + 8);

      v56(v34, v32);
      return v46;
    case 3u:
      v57 = v67;
      v58 = v68;
      (*(v67 + 32))(v31, v44, v68);
      v46 = *v31;
      v59 = *(v57 + 8);

      v59(v31, v58);
      return v46;
    case 4u:
      v48 = v70;
      v51 = *(v70 + 32);
      v49 = v69;
      v52 = v69;
      v53 = v44;
      v54 = &v103;
      goto LABEL_19;
    case 5u:
      v48 = v73;
      v51 = *(v73 + 32);
      v49 = v72;
      v52 = v72;
      v53 = v44;
      v54 = &v106;
      goto LABEL_19;
    case 6u:
      v48 = v76;
      v51 = *(v76 + 32);
      v49 = v75;
      v52 = v75;
      v53 = v44;
      v54 = &v109;
      goto LABEL_19;
    case 7u:
      v48 = v79;
      v51 = *(v79 + 32);
      v49 = v78;
      v52 = v78;
      v53 = v44;
      v54 = &v112;
      goto LABEL_19;
    case 8u:
      v48 = v82;
      v51 = *(v82 + 32);
      v49 = v81;
      v52 = v81;
      v53 = v44;
      v54 = &v113;
      goto LABEL_19;
    case 9u:
      v48 = v85;
      v51 = *(v85 + 32);
      v49 = v84;
      v52 = v84;
      v53 = v44;
      v54 = &v114;
      goto LABEL_19;
    case 0xAu:
      v48 = v88;
      v51 = *(v88 + 32);
      v49 = v87;
      v52 = v87;
      v53 = v44;
      v54 = &v115;
LABEL_19:
      v50 = *(v54 - 32);
      v51(v52, v53, v50);
      goto LABEL_20;
    case 0xBu:
      v48 = v91;
      v49 = v90;
      v50 = v92;
      (*(v91 + 32))(v90, v44, v92);
      goto LABEL_20;
    case 0xCu:
      v49 = v93;
      v48 = v94;
      v50 = v95;
      (*(v94 + 32))(v93, v44, v95);
      goto LABEL_20;
    case 0xDu:
      v49 = v96;
      v48 = v97;
      v50 = v98;
      (*(v97 + 32))(v96, v44, v98);
      goto LABEL_20;
    case 0xEu:
      v49 = v99;
      v48 = v100;
      v50 = v101;
      (*(v100 + 32))(v99, v44, v101);
      goto LABEL_20;
    case 0xFu:
      v49 = v102;
      v48 = v103;
      v50 = v104;
      (*(v103 + 32))(v102, v44, v104);
      goto LABEL_20;
    case 0x10u:
      v49 = v105;
      v48 = v106;
      v50 = v107;
      (*(v106 + 32))(v105, v44, v107);
LABEL_20:
      v46 = *v49;
      v62 = *(v48 + 8);

      v62(v49, v50);
      break;
    default:
      (*(v39 + 32))(v42, v44, Group);
      v46 = *v42;
      v47 = *(v39 + 8);

      v47(v42, Group);
      break;
  }

  return v46;
}

__n128 MLS.OutgoingApplicationSend.init(identifier:storageIdentifier:clientContext:metricCollector:message:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, __n128 *a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t (*a11)(void, uint64_t, uint64_t))
{
  v13 = *a6;
  v21 = *a7;
  v14 = a7[1].n128_u64[0];
  v15 = a7[1].n128_u64[1];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v16 = a11(0, a8, a10);
  v17 = v16[10];
  v18 = type metadata accessor for Optional();
  (*(*(v18 - 8) + 32))(&a9[v17], a5, v18);
  *&a9[v16[11]] = v13;
  v19 = &a9[v16[12]];
  result = v21;
  *v19 = v21;
  *(v19 + 2) = v14;
  *(v19 + 3) = v15;
  return result;
}

Swift::Int MLS.OutgoingEventType.MatchableType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.OutgoingEventType<A, B>.MatchableType(uint64_t a1)
{
  Hasher.init(_seed:)();
  MLS.OutgoingEventType.MatchableType.hash(into:)();
  return Hasher._finalize()();
}

BOOL MLS.OutgoingEventType.matches(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v5;
  (*(v4 + 16))(v7, v2, a2);
  v9 = v8 == swift_getEnumCaseMultiPayload();
  (*(v4 + 8))(v7, a2);
  return v9;
}

uint64_t MLS.OutgoingEventType.commit.getter@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v104 = a2;
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v105 = a1[2];
  v3 = v105;
  v106 = v4;
  v107 = v5;
  v108 = v6;
  v7 = type metadata accessor for MLS.OutgoingProposalCommitted(0, &v105);
  v101 = *(v7 - 8);
  v102 = v7;
  MEMORY[0x28223BE20](v7);
  v100 = &v76 - v8;
  v105 = v3;
  v106 = v4;
  v107 = v5;
  v108 = v6;
  v9 = type metadata accessor for MLS.OutgoingReplaceExpiredCredentials(0, &v105);
  v98 = *(v9 - 8);
  v99 = v9;
  MEMORY[0x28223BE20](v9);
  v97 = &v76 - v10;
  v12 = type metadata accessor for MLS.OutgoingGroupNameChange(0, v4, v6, v11);
  v95 = *(v12 - 8);
  v96 = v12;
  MEMORY[0x28223BE20](v12);
  v94 = &v76 - v13;
  v15 = type metadata accessor for MLS.OutgoingDowngrade(0, v4, v6, v14);
  v92 = *(v15 - 8);
  v93 = v15;
  MEMORY[0x28223BE20](v15);
  v91 = &v76 - v16;
  v105 = v3;
  v106 = v4;
  v107 = v5;
  v108 = v6;
  v17 = type metadata accessor for MLS.OutgoingRecreateGroup(0, &v105);
  v89 = *(v17 - 8);
  v90 = v17;
  MEMORY[0x28223BE20](v17);
  v88 = &v76 - v18;
  v105 = v3;
  v106 = v4;
  v107 = v5;
  v108 = v6;
  v87 = type metadata accessor for MLS.OutgoingResurrectGroup(0, &v105);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v76 - v19;
  v105 = v3;
  v106 = v4;
  v107 = v5;
  v108 = v6;
  v84 = type metadata accessor for MLS.OutgoingResync(0, &v105);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v76 - v20;
  v81 = type metadata accessor for MLS.OutgoingKeyUpdate(0, v4, v6, v21);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v76 - v22;
  v105 = v3;
  v106 = v4;
  v107 = v5;
  v108 = v6;
  v23 = type metadata accessor for MLS.OutgoingKickMember(0, &v105);
  v78 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v76 - v24;
  v105 = v3;
  v106 = v4;
  v107 = v5;
  v108 = v6;
  v26 = type metadata accessor for MLS.OutgoingAddMember(0, &v105);
  v77 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v76 - v27;
  v105 = v3;
  v106 = v4;
  v107 = v5;
  v108 = v6;
  Group = type metadata accessor for MLS.OutgoingCreateGroup(0, &v105);
  v30 = *(Group - 8);
  v31 = MEMORY[0x28223BE20](Group);
  v33 = &v76 - v32;
  v34 = *(a1 - 1);
  MEMORY[0x28223BE20](v31);
  v36 = &v76 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v36, v103, a1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v69 = v77;
      (*(v77 + 32))(v28, v36, v26);
      v70 = &v28[*(v26 + 64)];
      v50 = *v70;
      v49 = *(v70 + 1);
      v51 = *(v70 + 2);
      v52 = *(v70 + 3);

      outlined copy of Data._Representation(v51, v52);
      result = (*(v69 + 8))(v28, v26);
      goto LABEL_19;
    case 2u:
      v47 = v78;
      (*(v78 + 32))(v25, v36, v23);
      v48 = &v25[*(v23 + 64)];
      v50 = *v48;
      v49 = *(v48 + 1);
      v51 = *(v48 + 2);
      v52 = *(v48 + 3);

      outlined copy of Data._Representation(v51, v52);
      result = (*(v47 + 8))(v25, v23);
      goto LABEL_19;
    case 3u:
    case 6u:
    case 7u:
    case 0xAu:
    case 0xFu:
    case 0x10u:
      v37 = v104;
      *v104 = 0u;
      v37[1] = 0u;
      return (*(v34 + 8))(v36, a1);
    case 4u:
      v53 = v80;
      v54 = v79;
      v55 = v81;
      (*(v80 + 32))(v79, v36, v81);
      v56 = &v54[*(v55 + 48)];
      v57 = *v56;
      v58 = *(v56 + 1);
      v59 = *(v56 + 2);
      v60 = *(v56 + 3);

      outlined copy of Data._Representation(v59, v60);
      result = (*(v53 + 8))(v54, v55);
      v61 = v104;
      *v104 = v57;
      v61[1] = v58;
      v61[2] = v59;
      v61[3] = v60;
      return result;
    case 5u:
      v39 = v83;
      v40 = *(v83 + 32);
      v41 = v82;
      v42 = v82;
      v43 = v36;
      v44 = &v109;
      goto LABEL_11;
    case 8u:
      v39 = v86;
      v40 = *(v86 + 32);
      v41 = v85;
      v42 = v85;
      v43 = v36;
      v44 = &v110;
LABEL_11:
      v46 = *(v44 - 32);
      goto LABEL_14;
    case 9u:
      v41 = v88;
      v39 = v89;
      v71 = v36;
      v46 = v90;
      (*(v89 + 32))(v88, v71, v90);
      goto LABEL_15;
    case 0xBu:
      v41 = v91;
      v39 = v92;
      v62 = v36;
      v46 = v93;
      (*(v92 + 32))(v91, v62, v93);
      goto LABEL_17;
    case 0xCu:
      v41 = v94;
      v39 = v95;
      v73 = v36;
      v46 = v96;
      (*(v95 + 32))(v94, v73, v96);
LABEL_17:
      v72 = *(v46 + 48);
      goto LABEL_18;
    case 0xDu:
      v41 = v97;
      v39 = v98;
      v45 = v36;
      v46 = v99;
      (*(v98 + 32))(v97, v45, v99);
      goto LABEL_15;
    case 0xEu:
      v41 = v100;
      v39 = v101;
      v40 = *(v101 + 32);
      v42 = v100;
      v43 = v36;
      v46 = v102;
LABEL_14:
      v40(v42, v43, v46);
LABEL_15:
      v72 = *(v46 + 64);
LABEL_18:
      v74 = &v41[v72];
      v50 = *v74;
      v49 = *(v74 + 1);
      v51 = *(v74 + 2);
      v52 = *(v74 + 3);

      outlined copy of Data._Representation(v51, v52);
      result = (*(v39 + 8))(v41, v46);
LABEL_19:
      v75 = v104;
      *v104 = v50;
      v75[1] = v49;
      v75[2] = v51;
      v75[3] = v52;
      break;
    default:
      (*(v30 + 32))(v33, v36, Group);
      v63 = &v33[*(Group + 64)];
      v65 = *v63;
      v64 = *(v63 + 1);
      v66 = *(v63 + 2);
      v67 = *(v63 + 3);

      outlined copy of Data._Representation(v66, v67);
      result = (*(v30 + 8))(v33, Group);
      v68 = v104;
      *v104 = v65;
      v68[1] = v64;
      v68[2] = v66;
      v68[3] = v67;
      break;
  }

  return result;
}

uint64_t MLS.OutgoingEventType.welcome.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v56 = a2;
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v57 = a1[2];
  v3 = v57;
  v58 = v4;
  v59 = v5;
  v60 = v6;
  v7 = type metadata accessor for MLS.OutgoingReplaceExpiredCredentials(0, &v57);
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x28223BE20](v7);
  v52 = &v47 - v8;
  v57 = v3;
  v58 = v4;
  v59 = v5;
  v60 = v6;
  v9 = type metadata accessor for MLS.OutgoingRecreateGroup(0, &v57);
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x28223BE20](v9);
  v49 = &v47 - v10;
  v57 = v3;
  v58 = v4;
  v59 = v5;
  v60 = v6;
  v11 = type metadata accessor for MLS.OutgoingResurrectGroup(0, &v57);
  v48 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  v57 = v3;
  v58 = v4;
  v59 = v5;
  v60 = v6;
  v14 = type metadata accessor for MLS.OutgoingAddMember(0, &v57);
  v47 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  v57 = v3;
  v58 = v4;
  v59 = v5;
  v60 = v6;
  Group = type metadata accessor for MLS.OutgoingCreateGroup(0, &v57);
  v18 = *(Group - 8);
  v19 = MEMORY[0x28223BE20](Group);
  v21 = &v47 - v20;
  v22 = *(a1 - 1);
  MEMORY[0x28223BE20](v19);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v24, v55, a1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v40 = v47;
      (*(v47 + 32))(v16, v24, v14);
      v41 = &v16[*(v14 + 68)];
      v43 = *v41;
      v42 = *(v41 + 1);
      v44 = *(v41 + 2);
      v45 = *(v41 + 3);

      outlined copy of Data._Representation(v44, v45);
      result = (*(v40 + 8))(v16, v14);
      v46 = v56;
      *v56 = v43;
      v46[1] = v42;
      v46[2] = v44;
      v46[3] = v45;
      return result;
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
      v25 = v56;
      *v56 = 0u;
      *(v25 + 1) = 0u;
      return (*(v22 + 8))(v24, a1);
    case 8u:
      v30 = v48;
      (*(v48 + 32))(v13, v24, v11);
      v31 = &v13[*(v11 + 68)];
      v33 = *v31;
      v32 = *(v31 + 1);
      v34 = *(v31 + 2);
      v35 = *(v31 + 3);

      outlined copy of Data._Representation(v34, v35);
      result = (*(v30 + 8))(v13, v11);
      goto LABEL_7;
    case 9u:
      v28 = v49;
      v27 = v50;
      v29 = v51;
      (*(v50 + 32))(v49, v24, v51);
      goto LABEL_6;
    case 0xDu:
      v28 = v52;
      v27 = v53;
      v29 = v54;
      (*(v53 + 32))(v52, v24, v54);
LABEL_6:
      v36 = &v28[*(v29 + 68)];
      v33 = *v36;
      v32 = *(v36 + 1);
      v34 = *(v36 + 2);
      v35 = *(v36 + 3);

      outlined copy of Data._Representation(v34, v35);
      result = (*(v27 + 8))(v28, v29);
LABEL_7:
      v37 = v56;
      *v56 = v33;
      break;
    default:
      (*(v18 + 32))(v21, v24, Group);
      v38 = &v21[*(Group + 68)];
      v39 = *v38;
      v32 = *(v38 + 1);
      v34 = *(v38 + 2);
      v35 = *(v38 + 3);

      outlined copy of Data._Representation(v34, v35);
      result = (*(v18 + 8))(v21, Group);
      v37 = v56;
      *v56 = v39;
      break;
  }

  v37[1] = v32;
  v37[2] = v34;
  v37[3] = v35;
  return result;
}

uint64_t MLS.OutgoingEventType.message.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MLS.OutgoingApplicationSend(0, *(v7 + 24), *(v7 + 40), v10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  (*(v6 + 16))(v9, v3, a1);
  if (swift_getEnumCaseMultiPayload() == 10)
  {
    (*(v12 + 32))(v14, v9, v11);
    v15 = &v14[*(v11 + 48)];
    v17 = *v15;
    v16 = *(v15 + 1);
    v18 = *(v15 + 2);
    v19 = *(v15 + 3);

    outlined copy of Data._Representation(v18, v19);
    result = (*(v12 + 8))(v14, v11);
  }

  else
  {
    result = (*(v6 + 8))(v9, a1);
    v17 = 0;
    v16 = 0;
    v18 = 0;
    v19 = 0;
  }

  *a2 = v17;
  a2[1] = v16;
  a2[2] = v18;
  a2[3] = v19;
  return result;
}

uint64_t MLS.OutgoingEventType.proposal.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MLS.OutgoingRemoveSelf(0, *(v7 + 24), *(v7 + 40), v10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  (*(v6 + 16))(v9, v3, a1);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    (*(v12 + 32))(v14, v9, v11);
    v15 = &v14[*(v11 + 48)];
    v17 = *v15;
    v16 = *(v15 + 1);
    v18 = *(v15 + 2);
    v19 = *(v15 + 3);

    outlined copy of Data._Representation(v18, v19);
    result = (*(v12 + 8))(v14, v11);
  }

  else
  {
    result = (*(v6 + 8))(v9, a1);
    v17 = 0;
    v16 = 0;
    v18 = 0;
    v19 = 0;
  }

  *a2 = v17;
  a2[1] = v16;
  a2[2] = v18;
  a2[3] = v19;
  return result;
}

uint64_t MLS.OutgoingEventType.innerEvent.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v15 = *(a1 + 32);
      v22 = *(a1 + 16);
      v23 = v15;
      Group = type metadata accessor for MLS.OutgoingAddMember(0, &v22);
      break;
    case 2u:
      v13 = *(a1 + 32);
      v22 = *(a1 + 16);
      v23 = v13;
      Group = type metadata accessor for MLS.OutgoingKickMember(0, &v22);
      break;
    case 3u:
      Group = type metadata accessor for MLS.OutgoingRemoveSelf(0, *(a1 + 24), *(a1 + 40), v7);
      break;
    case 4u:
      Group = type metadata accessor for MLS.OutgoingKeyUpdate(0, *(a1 + 24), *(a1 + 40), v7);
      break;
    case 5u:
      v16 = *(a1 + 32);
      v22 = *(a1 + 16);
      v23 = v16;
      Group = type metadata accessor for MLS.OutgoingResync(0, &v22);
      break;
    case 6u:
      v18 = *(a1 + 32);
      v22 = *(a1 + 16);
      v23 = v18;
      Group = type metadata accessor for MLS.OutgoingFailureToDecrypt_v2(0, &v22);
      break;
    case 7u:
      Group = type metadata accessor for MLS.OutgoingFailureToDecrypt(0, *(a1 + 24), *(a1 + 40), v7);
      break;
    case 8u:
      v19 = *(a1 + 32);
      v22 = *(a1 + 16);
      v23 = v19;
      Group = type metadata accessor for MLS.OutgoingResurrectGroup(0, &v22);
      break;
    case 9u:
      v12 = *(a1 + 32);
      v22 = *(a1 + 16);
      v23 = v12;
      Group = type metadata accessor for MLS.OutgoingRecreateGroup(0, &v22);
      break;
    case 0xAu:
      Group = type metadata accessor for MLS.OutgoingApplicationSend(0, *(a1 + 24), *(a1 + 40), v7);
      break;
    case 0xBu:
      Group = type metadata accessor for MLS.OutgoingDowngrade(0, *(a1 + 24), *(a1 + 40), v7);
      break;
    case 0xCu:
      Group = type metadata accessor for MLS.OutgoingGroupNameChange(0, *(a1 + 24), *(a1 + 40), v7);
      break;
    case 0xDu:
      v17 = *(a1 + 32);
      v22 = *(a1 + 16);
      v23 = v17;
      Group = type metadata accessor for MLS.OutgoingReplaceExpiredCredentials(0, &v22);
      break;
    case 0xEu:
      v11 = *(a1 + 32);
      v22 = *(a1 + 16);
      v23 = v11;
      Group = type metadata accessor for MLS.OutgoingProposalCommitted(0, &v22);
      break;
    case 0xFu:
      v14 = *(a1 + 32);
      v22 = *(a1 + 16);
      v23 = v14;
      Group = type metadata accessor for MLS.OutgoingGroupRepaired(0, &v22);
      break;
    case 0x10u:
      v10 = *(a1 + 32);
      v22 = *(a1 + 16);
      v23 = v10;
      Group = type metadata accessor for MLS.OutgoingErrorOccurred(0, &v22);
      break;
    default:
      v8 = *(a1 + 32);
      v22 = *(a1 + 16);
      v23 = v8;
      Group = type metadata accessor for MLS.OutgoingCreateGroup(0, &v22);
      break;
  }

  a2[3] = Group;
  a2[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(Group - 8) + 32))(boxed_opaque_existential_1, v5, Group);
}

uint64_t MLS.OutgoingEventType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7247657461657263 && a2 == 0xEB0000000070756FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65626D654D646461 && a2 == 0xE900000000000072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x626D654D6B63696BLL && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x655365766F6D6572 && a2 == 0xEA0000000000666CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746164705579656BLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636E79736572 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002651E98D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002651E98F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6365727275736572 && a2 == 0xEE0070756F724774 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6574616572636572 && a2 == 0xED000070756F7247 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x746163696C707061 && a2 == 0xEF646E65536E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x646172676E776F64 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6D614E70756F7267 && a2 == 0xEF65676E61684365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002651E9910 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E9930 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x70655270756F7267 && a2 == 0xED00006465726961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x63634F726F727265 && a2 == 0xED00006465727275)
  {

    return 16;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

unint64_t MLS.OutgoingEventType.CodingKeys.stringValue.getter(char a1)
{
  result = 0x7247657461657263;
  switch(a1)
  {
    case 1:
      result = 0x65626D654D646461;
      break;
    case 2:
      result = 0x626D654D6B63696BLL;
      break;
    case 3:
      result = 0x655365766F6D6572;
      break;
    case 4:
      result = 0x746164705579656BLL;
      break;
    case 5:
      result = 0x636E79736572;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6365727275736572;
      break;
    case 9:
      result = 0x6574616572636572;
      break;
    case 10:
      result = 0x746163696C707061;
      break;
    case 11:
      result = 0x646172676E776F64;
      break;
    case 12:
      result = 0x6D614E70756F7267;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x70655270756F7267;
      break;
    case 16:
      result = 0x63634F726F727265;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.AddMemberCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.AddMemberCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.ApplicationSendCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.ApplicationSendCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.CreateGroupCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.CreateGroupCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.DowngradeCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.DowngradeCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.ErrorOccurredCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.ErrorOccurredCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.FailureToDecryptCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.FailureToDecryptCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.FailureToDecrypt_v2CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.FailureToDecrypt_v2CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.GroupNameChangeCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.GroupNameChangeCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.GroupRepairedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.GroupRepairedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.KeyUpdateCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.KeyUpdateCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.KickMemberCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.KickMemberCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.ProposalCommittedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.ProposalCommittedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.RecreateGroupCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.RecreateGroupCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.RemoveSelfCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.RemoveSelfCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.ReplaceExpiredCertsCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.ReplaceExpiredCertsCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.ResurrectGroupCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.ResurrectGroupCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.ResyncCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.ResyncCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingEventType.encode(to:)(void *a1, void *a2)
{
  v242 = a1;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v245 = a2[2];
  v3 = v245;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  v237 = type metadata accessor for MLS.OutgoingEventType.ErrorOccurredCodingKeys(255, &v245);
  WitnessTable = swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v239 = *(v7 - 8);
  v240 = v7;
  MEMORY[0x28223BE20](v7);
  v236 = v107 - v8;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  v238 = type metadata accessor for MLS.OutgoingErrorOccurred(0, &v245);
  v235 = *(v238 - 8);
  MEMORY[0x28223BE20](v238);
  v233 = v107 - v9;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  v10 = type metadata accessor for MLS.OutgoingEventType.GroupRepairedCodingKeys(255, &v245);
  v11 = swift_getWitnessTable();
  v228 = v10;
  v226 = v11;
  v12 = type metadata accessor for KeyedEncodingContainer();
  v231 = *(v12 - 8);
  v232 = v12;
  MEMORY[0x28223BE20](v12);
  v229 = v107 - v13;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  v230 = type metadata accessor for MLS.OutgoingGroupRepaired(0, &v245);
  v227 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v225 = v107 - v14;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  v15 = type metadata accessor for MLS.OutgoingEventType.ProposalCommittedCodingKeys(255, &v245);
  v16 = swift_getWitnessTable();
  v220 = v15;
  v218 = v16;
  v224 = type metadata accessor for KeyedEncodingContainer();
  v223 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v221 = v107 - v17;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  v222 = type metadata accessor for MLS.OutgoingProposalCommitted(0, &v245);
  v219 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v217 = v107 - v18;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  v19 = type metadata accessor for MLS.OutgoingEventType.ReplaceExpiredCertsCodingKeys(255, &v245);
  v20 = swift_getWitnessTable();
  v212 = v19;
  v210 = v20;
  v216 = type metadata accessor for KeyedEncodingContainer();
  v215 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v213 = v107 - v21;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  v214 = type metadata accessor for MLS.OutgoingReplaceExpiredCredentials(0, &v245);
  v211 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v209 = v107 - v22;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  v23 = type metadata accessor for MLS.OutgoingEventType.GroupNameChangeCodingKeys(255, &v245);
  v24 = swift_getWitnessTable();
  v203 = v23;
  v202 = v24;
  v208 = type metadata accessor for KeyedEncodingContainer();
  v207 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v204 = v107 - v25;
  v206 = type metadata accessor for MLS.OutgoingGroupNameChange(0, v4, v6, v26);
  v205 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v201 = v107 - v27;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  v28 = type metadata accessor for MLS.OutgoingEventType.DowngradeCodingKeys(255, &v245);
  v29 = swift_getWitnessTable();
  v195 = v28;
  v194 = v29;
  v200 = type metadata accessor for KeyedEncodingContainer();
  v199 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v196 = v107 - v30;
  v198 = type metadata accessor for MLS.OutgoingDowngrade(0, v4, v6, v31);
  v197 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v193 = v107 - v32;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  v33 = type metadata accessor for MLS.OutgoingEventType.ApplicationSendCodingKeys(255, &v245);
  v34 = swift_getWitnessTable();
  v187 = v33;
  v186 = v34;
  v192 = type metadata accessor for KeyedEncodingContainer();
  v191 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v188 = v107 - v35;
  v190 = type metadata accessor for MLS.OutgoingApplicationSend(0, v4, v6, v36);
  v189 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v185 = v107 - v37;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  v38 = type metadata accessor for MLS.OutgoingEventType.RecreateGroupCodingKeys(255, &v245);
  v39 = swift_getWitnessTable();
  v180 = v38;
  v178 = v39;
  v184 = type metadata accessor for KeyedEncodingContainer();
  v183 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v181 = v107 - v40;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  v182 = type metadata accessor for MLS.OutgoingRecreateGroup(0, &v245);
  v179 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v177 = v107 - v41;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  v42 = type metadata accessor for MLS.OutgoingEventType.ResurrectGroupCodingKeys(255, &v245);
  v43 = swift_getWitnessTable();
  v172 = v42;
  v170 = v43;
  v176 = type metadata accessor for KeyedEncodingContainer();
  v175 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v173 = v107 - v44;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  v174 = type metadata accessor for MLS.OutgoingResurrectGroup(0, &v245);
  v171 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v169 = v107 - v45;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  v46 = type metadata accessor for MLS.OutgoingEventType.FailureToDecryptCodingKeys(255, &v245);
  v47 = swift_getWitnessTable();
  v163 = v46;
  v162 = v47;
  v168 = type metadata accessor for KeyedEncodingContainer();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v164 = v107 - v48;
  v166 = type metadata accessor for MLS.OutgoingFailureToDecrypt(0, v4, v6, v49);
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v161 = v107 - v50;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  v51 = type metadata accessor for MLS.OutgoingEventType.FailureToDecrypt_v2CodingKeys(255, &v245);
  v52 = swift_getWitnessTable();
  v156 = v51;
  v154 = v52;
  v160 = type metadata accessor for KeyedEncodingContainer();
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v157 = v107 - v53;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  v158 = type metadata accessor for MLS.OutgoingFailureToDecrypt_v2(0, &v245);
  v155 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v153 = v107 - v54;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  v55 = type metadata accessor for MLS.OutgoingEventType.ResyncCodingKeys(255, &v245);
  v56 = swift_getWitnessTable();
  v148 = v55;
  v146 = v56;
  v152 = type metadata accessor for KeyedEncodingContainer();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v149 = v107 - v57;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  v150 = type metadata accessor for MLS.OutgoingResync(0, &v245);
  v147 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v145 = v107 - v58;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  updated = type metadata accessor for MLS.OutgoingEventType.KeyUpdateCodingKeys(255, &v245);
  v60 = swift_getWitnessTable();
  v139 = updated;
  v138 = v60;
  v144 = type metadata accessor for KeyedEncodingContainer();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v140 = v107 - v61;
  v142 = type metadata accessor for MLS.OutgoingKeyUpdate(0, v4, v6, v62);
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v137 = v107 - v63;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  v64 = type metadata accessor for MLS.OutgoingEventType.RemoveSelfCodingKeys(255, &v245);
  v65 = swift_getWitnessTable();
  v131 = v64;
  v130 = v65;
  v136 = type metadata accessor for KeyedEncodingContainer();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v132 = v107 - v66;
  v134 = type metadata accessor for MLS.OutgoingRemoveSelf(0, v4, v6, v67);
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v129 = v107 - v68;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  v69 = type metadata accessor for MLS.OutgoingEventType.KickMemberCodingKeys(255, &v245);
  v70 = swift_getWitnessTable();
  v124 = v69;
  v122 = v70;
  v128 = type metadata accessor for KeyedEncodingContainer();
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v125 = v107 - v71;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  v126 = type metadata accessor for MLS.OutgoingKickMember(0, &v245);
  v123 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v121 = v107 - v72;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  v73 = type metadata accessor for MLS.OutgoingEventType.AddMemberCodingKeys(255, &v245);
  v74 = swift_getWitnessTable();
  v116 = v73;
  v114 = v74;
  v120 = type metadata accessor for KeyedEncodingContainer();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v117 = v107 - v75;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  v118 = type metadata accessor for MLS.OutgoingAddMember(0, &v245);
  v115 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v113 = v107 - v76;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  type metadata accessor for MLS.OutgoingEventType.CreateGroupCodingKeys(255, &v245);
  v107[1] = swift_getWitnessTable();
  v112 = type metadata accessor for KeyedEncodingContainer();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v109 = v107 - v77;
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  Group = type metadata accessor for MLS.OutgoingCreateGroup(0, &v245);
  v108 = *(Group - 8);
  v78 = MEMORY[0x28223BE20](Group);
  v107[0] = v107 - v79;
  v80 = *(a2 - 1);
  MEMORY[0x28223BE20](v78);
  v82 = v107 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = v3;
  v246 = v4;
  v247 = v5;
  v248 = v6;
  type metadata accessor for MLS.OutgoingEventType.CodingKeys(255, &v245);
  swift_getWitnessTable();
  v83 = type metadata accessor for KeyedEncodingContainer();
  v243 = *(v83 - 8);
  v244 = v83;
  MEMORY[0x28223BE20](v83);
  v85 = (v107 - v84);
  __swift_project_boxed_opaque_existential_1(v242, v242[3]);
  v242 = v85;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v80 + 16))(v82, v241, a2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v93 = v115;
      v94 = v113;
      v95 = v118;
      (*(v115 + 32))(v113, v82, v118);
      LOBYTE(v245) = 1;
      v96 = v117;
      v90 = v244;
      v91 = v242;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v97 = v120;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v99 = &v151;
      goto LABEL_20;
    case 2u:
      v93 = v123;
      v94 = v121;
      v95 = v126;
      (*(v123 + 32))(v121, v82, v126);
      LOBYTE(v245) = 2;
      v96 = v125;
      v90 = v244;
      v91 = v242;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v97 = v128;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v99 = &v159;
      goto LABEL_20;
    case 3u:
      v100 = v133;
      v101 = v129;
      v102 = v134;
      (*(v133 + 32))(v129, v82, v134);
      LOBYTE(v245) = 3;
      v103 = v132;
      v90 = v244;
      v91 = v242;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v104 = v136;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v105 = &v167;
      goto LABEL_18;
    case 4u:
      v100 = v141;
      v101 = v137;
      v102 = v142;
      (*(v141 + 32))(v137, v82, v142);
      LOBYTE(v245) = 4;
      v103 = v140;
      v90 = v244;
      v91 = v242;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v104 = v144;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v105 = &v175;
      goto LABEL_18;
    case 5u:
      v93 = v147;
      v94 = v145;
      v95 = v150;
      (*(v147 + 32))(v145, v82, v150);
      LOBYTE(v245) = 5;
      v96 = v149;
      v90 = v244;
      v91 = v242;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v97 = v152;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v99 = &v183;
      goto LABEL_20;
    case 6u:
      v93 = v155;
      v94 = v153;
      v95 = v158;
      (*(v155 + 32))(v153, v82, v158);
      LOBYTE(v245) = 6;
      v96 = v157;
      v90 = v244;
      v91 = v242;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v97 = v160;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v99 = &v191;
      goto LABEL_20;
    case 7u:
      v100 = v165;
      v101 = v161;
      v102 = v166;
      (*(v165 + 32))(v161, v82, v166);
      LOBYTE(v245) = 7;
      v103 = v164;
      v90 = v244;
      v91 = v242;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v104 = v168;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v105 = &v199;
      goto LABEL_18;
    case 8u:
      v93 = v171;
      v94 = v169;
      v95 = v174;
      (*(v171 + 32))(v169, v82, v174);
      LOBYTE(v245) = 8;
      v96 = v173;
      v90 = v244;
      v91 = v242;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v97 = v176;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v99 = &v207;
      goto LABEL_20;
    case 9u:
      v93 = v179;
      v94 = v177;
      v95 = v182;
      (*(v179 + 32))(v177, v82, v182);
      LOBYTE(v245) = 9;
      v96 = v181;
      v90 = v244;
      v91 = v242;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v97 = v184;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v99 = &v215;
      goto LABEL_20;
    case 0xAu:
      v100 = v189;
      v101 = v185;
      v102 = v190;
      (*(v189 + 32))(v185, v82, v190);
      LOBYTE(v245) = 10;
      v103 = v188;
      v90 = v244;
      v91 = v242;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v104 = v192;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v105 = &v223;
      goto LABEL_18;
    case 0xBu:
      v100 = v197;
      v101 = v193;
      v102 = v198;
      (*(v197 + 32))(v193, v82, v198);
      LOBYTE(v245) = 11;
      v103 = v196;
      v90 = v244;
      v91 = v242;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v104 = v200;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v105 = &v231;
      goto LABEL_18;
    case 0xCu:
      v100 = v205;
      v101 = v201;
      v102 = v206;
      (*(v205 + 32))(v201, v82, v206);
      LOBYTE(v245) = 12;
      v103 = v204;
      v90 = v244;
      v91 = v242;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v104 = v208;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v105 = &v239;
LABEL_18:
      (*(*(v105 - 32) + 8))(v103, v104);
      (*(v100 + 8))(v101, v102);
      return (*(v243 + 8))(v91, v90);
    case 0xDu:
      v93 = v211;
      v94 = v209;
      v95 = v214;
      (*(v211 + 32))(v209, v82, v214);
      LOBYTE(v245) = 13;
      v96 = v213;
      v90 = v244;
      v91 = v242;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v97 = v216;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v99 = &v247;
      goto LABEL_20;
    case 0xEu:
      v93 = v219;
      v94 = v217;
      v95 = v222;
      (*(v219 + 32))(v217, v82, v222);
      LOBYTE(v245) = 14;
      v96 = v221;
      v90 = v244;
      v91 = v242;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v97 = v224;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v99 = &v249;
LABEL_20:
      v98 = *(v99 - 32);
      goto LABEL_21;
    case 0xFu:
      v93 = v227;
      v94 = v225;
      v95 = v230;
      (*(v227 + 32))(v225, v82, v230);
      LOBYTE(v245) = 15;
      v96 = v229;
      v90 = v244;
      v91 = v242;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v97 = v232;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v98 = v231;
      goto LABEL_21;
    case 0x10u:
      v93 = v235;
      v94 = v233;
      v95 = v238;
      (*(v235 + 32))(v233, v82, v238);
      LOBYTE(v245) = 16;
      v96 = v236;
      v90 = v244;
      v91 = v242;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v97 = v240;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v98 = v239;
LABEL_21:
      (*(v98 + 8))(v96, v97);
      (*(v93 + 8))(v94, v95);
      break;
    default:
      v86 = v108;
      v87 = v107[0];
      v88 = Group;
      (*(v108 + 32))(v107[0], v82, Group);
      LOBYTE(v245) = 0;
      v89 = v109;
      v90 = v244;
      v91 = v242;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v92 = v112;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v111 + 8))(v89, v92);
      (*(v86 + 8))(v87, v88);
      break;
  }

  return (*(v243 + 8))(v91, v90);
}

uint64_t MLS.OutgoingEventType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v294 = a6;
  *&v300 = a2;
  *(&v300 + 1) = a3;
  *&v301 = a4;
  *(&v301 + 1) = a5;
  v286 = type metadata accessor for MLS.OutgoingEventType.ErrorOccurredCodingKeys(255, &v300);
  WitnessTable = swift_getWitnessTable();
  v233 = type metadata accessor for KeyedDecodingContainer();
  v204 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v267 = &v182 - v11;
  *&v300 = a2;
  *(&v300 + 1) = a3;
  *&v301 = a4;
  *(&v301 + 1) = a5;
  v12 = type metadata accessor for MLS.OutgoingEventType.GroupRepairedCodingKeys(255, &v300);
  v13 = swift_getWitnessTable();
  v284 = v12;
  v283 = v13;
  v232 = type metadata accessor for KeyedDecodingContainer();
  v203 = *(v232 - 8);
  MEMORY[0x28223BE20](v232);
  v266 = &v182 - v14;
  *&v300 = a2;
  *(&v300 + 1) = a3;
  *&v301 = a4;
  *(&v301 + 1) = a5;
  v15 = type metadata accessor for MLS.OutgoingEventType.ProposalCommittedCodingKeys(255, &v300);
  v16 = swift_getWitnessTable();
  v282 = v15;
  v281 = v16;
  v231 = type metadata accessor for KeyedDecodingContainer();
  v202 = *(v231 - 8);
  MEMORY[0x28223BE20](v231);
  v265 = &v182 - v17;
  *&v300 = a2;
  *(&v300 + 1) = a3;
  *&v301 = a4;
  *(&v301 + 1) = a5;
  v18 = type metadata accessor for MLS.OutgoingEventType.ReplaceExpiredCertsCodingKeys(255, &v300);
  v19 = swift_getWitnessTable();
  v280 = v18;
  v279 = v19;
  v230 = type metadata accessor for KeyedDecodingContainer();
  v201 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v264 = &v182 - v20;
  *&v300 = a2;
  *(&v300 + 1) = a3;
  *&v301 = a4;
  *(&v301 + 1) = a5;
  v21 = type metadata accessor for MLS.OutgoingEventType.GroupNameChangeCodingKeys(255, &v300);
  v22 = swift_getWitnessTable();
  v278 = v21;
  v277 = v22;
  v229 = type metadata accessor for KeyedDecodingContainer();
  v200 = *(v229 - 8);
  MEMORY[0x28223BE20](v229);
  v263 = &v182 - v23;
  *&v300 = a2;
  *(&v300 + 1) = a3;
  *&v301 = a4;
  *(&v301 + 1) = a5;
  v24 = type metadata accessor for MLS.OutgoingEventType.DowngradeCodingKeys(255, &v300);
  v25 = swift_getWitnessTable();
  v276 = v24;
  v275 = v25;
  v228 = type metadata accessor for KeyedDecodingContainer();
  v199 = *(v228 - 8);
  MEMORY[0x28223BE20](v228);
  v262 = &v182 - v26;
  *&v300 = a2;
  *(&v300 + 1) = a3;
  *&v301 = a4;
  *(&v301 + 1) = a5;
  v27 = type metadata accessor for MLS.OutgoingEventType.ApplicationSendCodingKeys(255, &v300);
  v28 = swift_getWitnessTable();
  v274 = v27;
  v273 = v28;
  v227 = type metadata accessor for KeyedDecodingContainer();
  v198 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v261 = &v182 - v29;
  *&v300 = a2;
  *(&v300 + 1) = a3;
  *&v301 = a4;
  *(&v301 + 1) = a5;
  v30 = type metadata accessor for MLS.OutgoingEventType.RecreateGroupCodingKeys(255, &v300);
  v31 = swift_getWitnessTable();
  v272 = v30;
  v271 = v31;
  v226 = type metadata accessor for KeyedDecodingContainer();
  v197 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v260 = &v182 - v32;
  *&v300 = a2;
  *(&v300 + 1) = a3;
  *&v301 = a4;
  *(&v301 + 1) = a5;
  v33 = type metadata accessor for MLS.OutgoingEventType.ResurrectGroupCodingKeys(255, &v300);
  v34 = swift_getWitnessTable();
  v270 = v33;
  v258 = v34;
  v225 = type metadata accessor for KeyedDecodingContainer();
  v196 = *(v225 - 8);
  MEMORY[0x28223BE20](v225);
  v259 = &v182 - v35;
  *&v300 = a2;
  *(&v300 + 1) = a3;
  *&v301 = a4;
  *(&v301 + 1) = a5;
  v36 = type metadata accessor for MLS.OutgoingEventType.FailureToDecryptCodingKeys(255, &v300);
  v37 = swift_getWitnessTable();
  v256 = v36;
  v255 = v37;
  v224 = type metadata accessor for KeyedDecodingContainer();
  v195 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v257 = &v182 - v38;
  *&v300 = a2;
  *(&v300 + 1) = a3;
  *&v301 = a4;
  *(&v301 + 1) = a5;
  v39 = type metadata accessor for MLS.OutgoingEventType.FailureToDecrypt_v2CodingKeys(255, &v300);
  v40 = swift_getWitnessTable();
  v253 = v39;
  v252 = v40;
  v223 = type metadata accessor for KeyedDecodingContainer();
  v194 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v254 = &v182 - v41;
  *&v300 = a2;
  *(&v300 + 1) = a3;
  *&v301 = a4;
  *(&v301 + 1) = a5;
  v42 = type metadata accessor for MLS.OutgoingEventType.ResyncCodingKeys(255, &v300);
  v43 = swift_getWitnessTable();
  v250 = v42;
  v249 = v43;
  v222 = type metadata accessor for KeyedDecodingContainer();
  v193 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v251 = &v182 - v44;
  *&v300 = a2;
  *(&v300 + 1) = a3;
  *&v301 = a4;
  *(&v301 + 1) = a5;
  updated = type metadata accessor for MLS.OutgoingEventType.KeyUpdateCodingKeys(255, &v300);
  v46 = swift_getWitnessTable();
  v247 = updated;
  v246 = v46;
  v221 = type metadata accessor for KeyedDecodingContainer();
  v192 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v248 = &v182 - v47;
  *&v300 = a2;
  *(&v300 + 1) = a3;
  *&v301 = a4;
  *(&v301 + 1) = a5;
  v48 = type metadata accessor for MLS.OutgoingEventType.RemoveSelfCodingKeys(255, &v300);
  v49 = swift_getWitnessTable();
  v244 = v48;
  v243 = v49;
  v220 = type metadata accessor for KeyedDecodingContainer();
  v191 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v245 = &v182 - v50;
  *&v300 = a2;
  *(&v300 + 1) = a3;
  *&v301 = a4;
  *(&v301 + 1) = a5;
  v51 = type metadata accessor for MLS.OutgoingEventType.KickMemberCodingKeys(255, &v300);
  v52 = swift_getWitnessTable();
  v241 = v51;
  v240 = v52;
  v219 = type metadata accessor for KeyedDecodingContainer();
  v190 = *(v219 - 8);
  MEMORY[0x28223BE20](v219);
  v242 = &v182 - v53;
  *&v300 = a2;
  *(&v300 + 1) = a3;
  *&v301 = a4;
  *(&v301 + 1) = a5;
  v54 = type metadata accessor for MLS.OutgoingEventType.AddMemberCodingKeys(255, &v300);
  v55 = swift_getWitnessTable();
  v238 = v54;
  v237 = v55;
  v218 = type metadata accessor for KeyedDecodingContainer();
  v189 = *(v218 - 8);
  MEMORY[0x28223BE20](v218);
  v239 = &v182 - v56;
  *&v300 = a2;
  *(&v300 + 1) = a3;
  *&v301 = a4;
  *(&v301 + 1) = a5;
  GroupCodingKeys = type metadata accessor for MLS.OutgoingEventType.CreateGroupCodingKeys(255, &v300);
  v58 = swift_getWitnessTable();
  v235 = GroupCodingKeys;
  v234 = v58;
  v217 = type metadata accessor for KeyedDecodingContainer();
  v188 = *(v217 - 8);
  MEMORY[0x28223BE20](v217);
  v236 = &v182 - v59;
  *&v300 = a2;
  *(&v300 + 1) = a3;
  *&v301 = a4;
  *(&v301 + 1) = a5;
  v60 = type metadata accessor for MLS.OutgoingEventType.CodingKeys(255, &v300);
  v296 = swift_getWitnessTable();
  v61 = type metadata accessor for KeyedDecodingContainer();
  v288 = *(v61 - 8);
  v289 = v61;
  MEMORY[0x28223BE20](v61);
  v302 = &v182 - v62;
  v269 = a2;
  *&v300 = a2;
  *(&v300 + 1) = a3;
  v291 = a3;
  v292 = a4;
  *&v301 = a4;
  *(&v301 + 1) = a5;
  v293 = a5;
  v287 = type metadata accessor for MLS.OutgoingEventType(0, &v300);
  v268 = *(v287 - 8);
  v63 = MEMORY[0x28223BE20](v287);
  v216 = &v182 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v63);
  v215 = &v182 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v214 = &v182 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v213 = &v182 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v212 = &v182 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v211 = &v182 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v210 = &v182 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v209 = &v182 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v208 = &v182 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v207 = &v182 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v206 = &v182 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v205 = &v182 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v89 = &v182 - v88;
  v90 = MEMORY[0x28223BE20](v87);
  v92 = &v182 - v91;
  v93 = MEMORY[0x28223BE20](v90);
  v95 = &v182 - v94;
  v96 = MEMORY[0x28223BE20](v93);
  v98 = &v182 - v97;
  v99 = MEMORY[0x28223BE20](v96);
  v101 = &v182 - v100;
  MEMORY[0x28223BE20](v99);
  v103 = &v182 - v102;
  v104 = a1[3];
  v295 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v104);
  *&v290 = v60;
  v105 = v297;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v105)
  {
LABEL_41:
    v176 = v295;
    return __swift_destroy_boxed_opaque_existential_1Tm(v176);
  }

  v183 = v98;
  v184 = v95;
  v185 = v92;
  v186 = v89;
  v187 = v101;
  v107 = v291;
  v106 = v292;
  v109 = v293;
  v108 = v294;
  v296 = v103;
  v297 = 0;
  v110 = v289;
  *&v298 = KeyedDecodingContainer.allKeys.getter();
  type metadata accessor for Array();
  swift_getWitnessTable();
  *&v300 = ArraySlice.init<A>(_:)();
  *(&v300 + 1) = v111;
  *&v301 = v112;
  *(&v301 + 1) = v113;
  type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  Collection<>.popFirst()();
  v114 = v110;
  if (v298 == 17 || (v290 = v300, v298 = v300, v299 = v301, (Collection.isEmpty.getter() & 1) == 0))
  {
    v122 = v110;
    v123 = type metadata accessor for DecodingError();
    swift_allocError();
    v125 = v124;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v125 = v287;
    v126 = v302;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v123 - 8) + 104))(v125, *MEMORY[0x277D84160], v123);
    swift_willThrow();
    (*(v288 + 8))(v126, v122);
LABEL_40:
    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  v115 = v297;
  v116 = v302;
  v117 = v109;
  switch(&v299)
  {
    case 1u:
      LOBYTE(v298) = 1;
      v162 = v239;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v115)
      {
        goto LABEL_39;
      }

      *&v298 = v269;
      *(&v298 + 1) = v107;
      *&v299 = v106;
      *(&v299 + 1) = v117;
      type metadata accessor for MLS.OutgoingAddMember(0, &v298);
      swift_getWitnessTable();
      v119 = v183;
      v163 = v218;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v189 + 8))(v162, v163);
      (*(v288 + 8))(v302, v114);
      swift_unknownObjectRelease();
      v121 = v287;
      goto LABEL_44;
    case 2u:
      LOBYTE(v298) = 2;
      v148 = v242;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v115)
      {
        goto LABEL_39;
      }

      *&v298 = v269;
      *(&v298 + 1) = v107;
      *&v299 = v106;
      *(&v299 + 1) = v117;
      type metadata accessor for MLS.OutgoingKickMember(0, &v298);
      swift_getWitnessTable();
      v119 = v184;
      v149 = v219;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v190 + 8))(v148, v149);
      (*(v288 + 8))(v302, v114);
      swift_unknownObjectRelease();
      v121 = v287;
      goto LABEL_44;
    case 3u:
      LOBYTE(v298) = 3;
      v152 = v245;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v115)
      {
        goto LABEL_39;
      }

      v154 = v114;
      type metadata accessor for MLS.OutgoingRemoveSelf(0, v107, v109, v153);
      swift_getWitnessTable();
      v119 = v185;
      v155 = v220;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v156 = v288;
      (*(v191 + 8))(v152, v155);
      (*(v156 + 8))(v302, v154);
      swift_unknownObjectRelease();
      v121 = v287;
      goto LABEL_44;
    case 4u:
      LOBYTE(v298) = 4;
      v136 = v248;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v115)
      {
        goto LABEL_39;
      }

      v138 = v114;
      type metadata accessor for MLS.OutgoingKeyUpdate(0, v107, v109, v137);
      swift_getWitnessTable();
      v119 = v186;
      v139 = v221;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v140 = v288;
      (*(v192 + 8))(v136, v139);
      (*(v140 + 8))(v302, v138);
      swift_unknownObjectRelease();
      v121 = v287;
      goto LABEL_44;
    case 5u:
      LOBYTE(v298) = 5;
      v164 = v251;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v115)
      {
        goto LABEL_39;
      }

      *&v298 = v269;
      *(&v298 + 1) = v107;
      *&v299 = v106;
      *(&v299 + 1) = v117;
      type metadata accessor for MLS.OutgoingResync(0, &v298);
      swift_getWitnessTable();
      v119 = v205;
      v165 = v222;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v193 + 8))(v164, v165);
      (*(v288 + 8))(v302, v114);
      swift_unknownObjectRelease();
      v121 = v287;
      goto LABEL_44;
    case 6u:
      LOBYTE(v298) = 6;
      v168 = v254;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v115)
      {
        goto LABEL_39;
      }

      *&v298 = v269;
      *(&v298 + 1) = v107;
      *&v299 = v106;
      *(&v299 + 1) = v117;
      type metadata accessor for MLS.OutgoingFailureToDecrypt_v2(0, &v298);
      swift_getWitnessTable();
      v119 = v206;
      v169 = v223;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v194 + 8))(v168, v169);
      (*(v288 + 8))(v302, v114);
      swift_unknownObjectRelease();
      v121 = v287;
      goto LABEL_44;
    case 7u:
      LOBYTE(v298) = 7;
      v157 = v257;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v115)
      {
        goto LABEL_39;
      }

      v159 = v114;
      type metadata accessor for MLS.OutgoingFailureToDecrypt(0, v107, v109, v158);
      swift_getWitnessTable();
      v119 = v207;
      v160 = v224;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v161 = v288;
      (*(v195 + 8))(v157, v160);
      (*(v161 + 8))(v302, v159);
      swift_unknownObjectRelease();
      v121 = v287;
      goto LABEL_44;
    case 8u:
      LOBYTE(v298) = 8;
      v175 = v259;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v115)
      {
        goto LABEL_39;
      }

      *&v298 = v269;
      *(&v298 + 1) = v107;
      *&v299 = v106;
      *(&v299 + 1) = v117;
      type metadata accessor for MLS.OutgoingResurrectGroup(0, &v298);
      swift_getWitnessTable();
      v119 = v208;
      v178 = v225;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v196 + 8))(v175, v178);
      (*(v288 + 8))(v302, v114);
      swift_unknownObjectRelease();
      v121 = v287;
      goto LABEL_44;
    case 9u:
      LOBYTE(v298) = 9;
      v146 = v260;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v115)
      {
        goto LABEL_39;
      }

      *&v298 = v269;
      *(&v298 + 1) = v107;
      *&v299 = v106;
      *(&v299 + 1) = v117;
      type metadata accessor for MLS.OutgoingRecreateGroup(0, &v298);
      swift_getWitnessTable();
      v119 = v209;
      v147 = v226;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v197 + 8))(v146, v147);
      (*(v288 + 8))(v302, v114);
      swift_unknownObjectRelease();
      v121 = v287;
      goto LABEL_44;
    case 0xAu:
      LOBYTE(v298) = 10;
      v170 = v261;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v115)
      {
        goto LABEL_39;
      }

      v172 = v114;
      type metadata accessor for MLS.OutgoingApplicationSend(0, v107, v109, v171);
      swift_getWitnessTable();
      v119 = v210;
      v173 = v227;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v174 = v288;
      (*(v198 + 8))(v170, v173);
      (*(v174 + 8))(v302, v172);
      swift_unknownObjectRelease();
      v121 = v287;
      goto LABEL_44;
    case 0xBu:
      LOBYTE(v298) = 11;
      v131 = v262;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v115)
      {
        goto LABEL_39;
      }

      v133 = v114;
      type metadata accessor for MLS.OutgoingDowngrade(0, v107, v109, v132);
      swift_getWitnessTable();
      v119 = v211;
      v134 = v228;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v135 = v288;
      (*(v199 + 8))(v131, v134);
      (*(v135 + 8))(v302, v133);
      swift_unknownObjectRelease();
      v121 = v287;
      goto LABEL_44;
    case 0xCu:
      LOBYTE(v298) = 12;
      v141 = v263;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v115)
      {
        goto LABEL_39;
      }

      v143 = v114;
      type metadata accessor for MLS.OutgoingGroupNameChange(0, v107, v109, v142);
      swift_getWitnessTable();
      v119 = v212;
      v144 = v229;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v145 = v288;
      (*(v200 + 8))(v141, v144);
      (*(v145 + 8))(v302, v143);
      swift_unknownObjectRelease();
      v121 = v287;
      goto LABEL_44;
    case 0xDu:
      LOBYTE(v298) = 13;
      v166 = v264;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v115)
      {
        goto LABEL_39;
      }

      *&v298 = v269;
      *(&v298 + 1) = v107;
      *&v299 = v106;
      *(&v299 + 1) = v117;
      type metadata accessor for MLS.OutgoingReplaceExpiredCredentials(0, &v298);
      swift_getWitnessTable();
      v119 = v213;
      v167 = v230;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v201 + 8))(v166, v167);
      (*(v288 + 8))(v302, v114);
      swift_unknownObjectRelease();
      v121 = v287;
      goto LABEL_44;
    case 0xEu:
      LOBYTE(v298) = 14;
      v129 = v265;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v115)
      {
        goto LABEL_39;
      }

      *&v298 = v269;
      *(&v298 + 1) = v107;
      *&v299 = v106;
      *(&v299 + 1) = v117;
      type metadata accessor for MLS.OutgoingProposalCommitted(0, &v298);
      swift_getWitnessTable();
      v119 = v214;
      v130 = v231;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v202 + 8))(v129, v130);
      (*(v288 + 8))(v302, v114);
      swift_unknownObjectRelease();
      v121 = v287;
      goto LABEL_44;
    case 0xFu:
      LOBYTE(v298) = 15;
      v150 = v266;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v115)
      {
        goto LABEL_39;
      }

      *&v298 = v269;
      *(&v298 + 1) = v107;
      *&v299 = v106;
      *(&v299 + 1) = v117;
      type metadata accessor for MLS.OutgoingGroupRepaired(0, &v298);
      swift_getWitnessTable();
      v119 = v215;
      v151 = v232;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v203 + 8))(v150, v151);
      (*(v288 + 8))(v302, v114);
      swift_unknownObjectRelease();
      v121 = v287;
      goto LABEL_44;
    case 0x10u:
      LOBYTE(v298) = 16;
      v127 = v267;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v115)
      {
        goto LABEL_39;
      }

      *&v298 = v269;
      *(&v298 + 1) = v107;
      *&v299 = v106;
      *(&v299 + 1) = v117;
      type metadata accessor for MLS.OutgoingErrorOccurred(0, &v298);
      swift_getWitnessTable();
      v119 = v216;
      v128 = v233;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v204 + 8))(v127, v128);
      (*(v288 + 8))(v302, v114);
      swift_unknownObjectRelease();
      v121 = v287;
      goto LABEL_44;
    default:
      LOBYTE(v298) = 0;
      v118 = v236;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v115)
      {
LABEL_39:
        (*(v288 + 8))(v116, v114);
        goto LABEL_40;
      }

      *&v298 = v269;
      *(&v298 + 1) = v107;
      *&v299 = v106;
      *(&v299 + 1) = v117;
      type metadata accessor for MLS.OutgoingCreateGroup(0, &v298);
      swift_getWitnessTable();
      v119 = v187;
      v120 = v217;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v188 + 8))(v118, v120);
      (*(v288 + 8))(v302, v114);
      swift_unknownObjectRelease();
      v121 = v287;
LABEL_44:
      swift_storeEnumTagMultiPayload();
      v179 = v295;
      v180 = v296;
      v181 = *(v268 + 32);
      v181(v296, v119, v121);
      v181(v108, v180, v121);
      v176 = v179;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v176);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingReplaceExpiredCredentials<A, B>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingCreateGroup<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingCreateGroup<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingAddMember<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingAddMember<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingKickMember.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E9950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74696D6D6F63 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x737265626D656DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002651E9970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5474656863746172 && a2 == 0xEB00000000656572 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x666E4970756F7267 && a2 == 0xE90000000000006FLL)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t MLS.OutgoingKickMember.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x696669746E656469;
    v6 = 0x6F43746E65696C63;
    if (a1 != 2)
    {
      v6 = 0x6F4363697274656DLL;
    }

    if (a1)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x5474656863746172;
    if (a1 != 7)
    {
      v1 = 0x666E4970756F7267;
    }

    if (a1 == 6)
    {
      v2 = 0xD000000000000012;
    }

    else
    {
      v2 = v1;
    }

    v3 = 0x74696D6D6F63;
    if (a1 != 4)
    {
      v3 = 0x737265626D656DLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingEventType<A, B>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingKickMember<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingKickMember<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingKickMember.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v30 = *(a2 + 16);
  v31 = v8;
  v37 = v30;
  v38 = v6;
  v32 = v7;
  v33 = v6;
  v39 = v7;
  v40 = v8;
  type metadata accessor for MLS.OutgoingKickMember.CodingKeys(255, &v37);
  swift_getWitnessTable();
  v9 = type metadata accessor for KeyedEncodingContainer();
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v37) = 0;
  v12 = v35;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v12)
  {
    return (*(v34 + 8))(v11, v9);
  }

  v14 = v32;
  v15 = v34;
  LOBYTE(v37) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v37) = 2;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v16 = *(a2 + 60);
  v35 = v3;
  v37 = *(v3 + v16);
  v41 = 3;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

  KeyedEncodingContainer.encode<A>(_:forKey:)();

  v17 = (v35 + *(a2 + 64));
  v18 = v17[1];
  v20 = v17[2];
  v19 = v17[3];
  v37 = *v17;
  v38 = v18;
  v39 = v20;
  v40 = v19;
  v41 = 4;

  outlined copy of Data._Representation(v20, v19);
  lazy protocol witness table accessor for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v21 = v39;
  v22 = v40;

  outlined consume of Data._Representation(v21, v22);
  v37 = *(v35 + *(a2 + 68));
  v41 = 5;
  type metadata accessor for Set();
  v36 = *(v14 + 16);
  swift_getWitnessTable();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v23 = (v35 + *(a2 + 72));
  v24 = v23[1];
  v37 = *v23;
  v38 = v24;
  v41 = 6;
  outlined copy of Data._Representation(v37, v24);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v37, v38);
  v25 = (v35 + *(a2 + 76));
  v26 = v25[1];
  v37 = *v25;
  v38 = v26;
  v41 = 7;
  outlined copy of Data?(v37, v26);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of Data?(v37, v38);
  v27 = (v35 + *(a2 + 80));
  v28 = v27[1];
  v37 = *v27;
  v38 = v28;
  v41 = 8;
  outlined copy of Data._Representation(v37, v28);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v37, v38);
  return (*(v15 + 8))(v11, 0);
}

uint64_t MLS.OutgoingKickMember.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a6;
  v11 = type metadata accessor for Optional();
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x28223BE20](v11);
  v48 = &v42 - v12;
  *&v56 = a2;
  *(&v56 + 1) = a3;
  *&v57 = a4;
  *(&v57 + 1) = a5;
  type metadata accessor for MLS.OutgoingKickMember.CodingKeys(255, &v56);
  swift_getWitnessTable();
  v13 = type metadata accessor for KeyedDecodingContainer();
  v50 = *(v13 - 8);
  v51 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v44 = a4;
  v45 = a2;
  *&v56 = a2;
  *(&v56 + 1) = a3;
  *&v57 = a4;
  *(&v57 + 1) = a5;
  v49 = a5;
  v16 = type metadata accessor for MLS.OutgoingKickMember(0, &v56);
  v42 = *(v16 - 1);
  MEMORY[0x28223BE20](v16);
  v18 = (&v42 - v17);
  v19 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v52 = v15;
  v20 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v54);
  }

  v21 = v48;
  v23 = v50;
  v22 = v51;
  LOBYTE(v56) = 0;
  *v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v18[1] = v25;
  LOBYTE(v56) = 1;
  v18[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v18[3] = v26;
  LOBYTE(v56) = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v53 = 0;
  (*(v46 + 32))(v18 + v16[14], v21, v47);
  v58 = 3;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  v27 = v53;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v53 = v27;
  if (v27)
  {
    (*(v23 + 8))(v52, v22);
    v28 = 0;
    v29 = v18;
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1Tm(v54);

    v30 = 0;
    v31 = 0;
    goto LABEL_7;
  }

  *(v18 + v16[15]) = v56;
  v58 = 4;
  lazy protocol witness table accessor for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage();
  v35 = v53;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v53 = v35;
  v29 = v18;
  if (v35)
  {
    (*(v23 + 8))(v52, v22);
    v28 = 1;
    goto LABEL_6;
  }

  v36 = *(&v56 + 1);
  v37 = v18 + v16[16];
  *v37 = v56;
  *(v37 + 1) = v36;
  *(v37 + 1) = v57;
  v38 = v44;
  type metadata accessor for Set();
  v58 = 5;
  v55 = *(v38 + 8);
  swift_getWitnessTable();
  v39 = v53;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = v39 == 0;
  v53 = v39;
  if (!v39)
  {
    *(v18 + v16[17]) = v56;
    v58 = 6;
    lazy protocol witness table accessor for type Data and conformance Data();
    v40 = v53;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    if (!v40)
    {
      *(v18 + v16[18]) = v56;
      v58 = 7;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      *(v18 + v16[19]) = v56;
      v58 = 8;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v53 = 0;
      (*(v50 + 8))(v52, v51);
      *(v18 + v16[20]) = v56;
      v41 = v42;
      (*(v42 + 16))(v43, v18, v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      return (*(v41 + 8))(v18, v16);
    }

    v53 = v40;
  }

  (*(v50 + 8))(v52, v51);
  __swift_destroy_boxed_opaque_existential_1Tm(v54);

  v28 = 1;
  v30 = 1;
LABEL_7:
  result = (*(v46 + 8))(v29 + v16[14], v47);
  if (v28)
  {

    if ((v30 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v32 = v29 + v16[16];
    v33 = *(v32 + 2);
    v34 = *(v32 + 3);

    result = outlined consume of Data._Representation(v33, v34);
    if (v31)
    {
    }

    return result;
  }

  if (v30)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (v31)
  {
  }

  return result;
}

__n128 MLS.OutgoingKickMember.init(identifier:storageIdentifier:clientContext:metricCollector:commit:members:epochAuthenticator:ratchetTree:groupInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, __n128 *a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v21 = *a6;
  v32 = *a7;
  v22 = a7[1].n128_u64[0];
  v23 = a7[1].n128_u64[1];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v34[0] = a16;
  v34[1] = a17;
  v34[2] = a18;
  v34[3] = a19;
  v24 = type metadata accessor for MLS.OutgoingKickMember(0, v34);
  v25 = v24[14];
  v26 = type metadata accessor for Optional();
  (*(*(v26 - 8) + 32))(&a9[v25], a5, v26);
  *&a9[v24[15]] = v21;
  v27 = &a9[v24[16]];
  result = v32;
  *v27 = v32;
  *(v27 + 2) = v22;
  *(v27 + 3) = v23;
  *&a9[v24[17]] = a8;
  v29 = &a9[v24[18]];
  *v29 = a10;
  *(v29 + 1) = a11;
  v30 = &a9[v24[19]];
  *v30 = a12;
  *(v30 + 1) = a13;
  v31 = &a9[v24[20]];
  *v31 = a14;
  *(v31 + 1) = a15;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingProposalCommitted<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingProposalCommitted<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingRemoveSelf.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E9950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C61736F706F7270 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t MLS.OutgoingRemoveSelf.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x6F43746E65696C63;
  v3 = 0x6F4363697274656DLL;
  if (a1 != 3)
  {
    v3 = 0x6C61736F706F7270;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingRemoveSelf<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MLS.OutgoingRemoveSelf.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLS.OutgoingRemoveSelf<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = specialized MLS.IncomingApplicationMessage.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingRemoveSelf<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingRemoveSelf<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLS.OutgoingKeyUpdate<A>.CodingKeys@<X0>(_BYTE *a2@<X8>)
{
  result = specialized MLS.OutgoingProposalCommitted.CodingKeys.init(intValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingKeyUpdate<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingKeyUpdate<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingResync.identifier.getter()
{
  v0 = specialized MLS.IncomingEventType.identifier.getter();

  return v0;
}

uint64_t MLS.OutgoingResync.storageIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double MLS.OutgoingResync.metricCollector.getter@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(v2 + *(a1 + 60));

  return result;
}

uint64_t MLS.OutgoingKickMember.epochAuthenticator.getter(uint64_t a1, void (*a2)(void, void))
{
  v3 = (v2 + *(a1 + 72));
  v4 = *v3;
  a2(*v3, v3[1]);
  return v4;
}

uint64_t MLS.OutgoingProposalCommitted.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E9950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74696D6D6F63 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002651E9970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5474656863746172 && a2 == 0xEB00000000656572 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x666E4970756F7267 && a2 == 0xE90000000000006FLL)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t MLS.OutgoingProposalCommitted.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x5474656863746172;
  if (a1 != 6)
  {
    v2 = 0x666E4970756F7267;
  }

  v3 = 0x74696D6D6F63;
  if (a1 != 4)
  {
    v3 = 0xD000000000000012;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x6F43746E65696C63;
  if (a1 != 2)
  {
    v4 = 0x6F4363697274656DLL;
  }

  if (a1)
  {
    v1 = 0xD000000000000011;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingResync<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingResync<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingProposalCommitted.encode(to:)(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t *), uint64_t a4)
{
  v6 = *(a2 + 40);
  v30 = *(a2 + 16);
  v26 = *(a2 + 24);
  v31 = v26;
  v27 = v6;
  v32 = v6;
  a3(255, &v30);
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v28;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v30) = 0;
  v12 = v29;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v12)
  {
    LOBYTE(v30) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v30) = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v30 = *(v11 + *(a2 + 60));
    v33 = 3;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v14 = (v11 + *(a2 + 64));
    v15 = v14[1];
    v17 = v14[2];
    v16 = v14[3];
    v30 = *v14;
    *&v31 = v15;
    *(&v31 + 1) = v17;
    v32 = v16;
    v33 = 4;

    outlined copy of Data._Representation(v17, v16);
    lazy protocol witness table accessor for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = *(&v31 + 1);
    v19 = v32;

    outlined consume of Data._Representation(v18, v19);
    v20 = (v11 + *(a2 + 68));
    v21 = v20[1];
    v30 = *v20;
    *&v31 = v21;
    v33 = 5;
    outlined copy of Data._Representation(v30, v21);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v30, v31);
    v22 = (v11 + *(a2 + 72));
    v23 = v22[1];
    v30 = *v22;
    *&v31 = v23;
    v33 = 6;
    outlined copy of Data?(v30, v23);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v30, v31);
    v24 = (v11 + *(a2 + 76));
    v25 = v24[1];
    v30 = *v24;
    *&v31 = v25;
    v33 = 7;
    outlined copy of Data._Representation(v30, v25);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v30, v31);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t MLS.OutgoingProposalCommitted.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t (*a6)(uint64_t, __int128 *)@<X5>, uint64_t (*a8)(void, __int128 *)@<X7>, uint64_t a9@<X8>)
{
  v35 = a9;
  v16 = type metadata accessor for Optional();
  v36 = *(v16 - 8);
  v37 = v16;
  MEMORY[0x28223BE20](v16);
  v39 = &v34 - v17;
  *&v44 = a2;
  *(&v44 + 1) = a3;
  *&v45 = a4;
  *(&v45 + 1) = a5;
  a6(255, &v44);
  swift_getWitnessTable();
  v41 = type metadata accessor for KeyedDecodingContainer();
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v19 = &v34 - v18;
  *&v44 = a2;
  *(&v44 + 1) = a3;
  *&v45 = a4;
  *(&v45 + 1) = a5;
  v40 = a5;
  v20 = a8(0, &v44);
  v34 = *(v20 - 1);
  MEMORY[0x28223BE20](v20);
  v22 = (&v34 - v21);
  v23 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v24 = v42;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v43);
  }

  v25 = v39;
  v26 = v38;
  LOBYTE(v44) = 0;
  *v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v22[1] = v27;
  LOBYTE(v44) = 1;
  v22[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v22[3] = v28;
  LOBYTE(v44) = 2;
  v40 = v19;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v36 + 32))(v22 + v20[14], v25, v37);
  v46 = 3;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v22 + v20[15]) = v44;
  v46 = 4;
  lazy protocol witness table accessor for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  LODWORD(v42) = 1;
  v29 = *(&v44 + 1);
  v30 = v22 + v20[16];
  *v30 = v44;
  *(v30 + 1) = v29;
  *(v30 + 1) = v45;
  v46 = 5;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v22 + v20[17]) = v44;
  v46 = 6;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v22 + v20[18]) = v44;
  v46 = 7;
  v31 = v40;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v26 + 8))(v31, v41);
  *(v22 + v20[19]) = v44;
  v32 = v34;
  (*(v34 + 16))(v35, v22, v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  return (*(v32 + 8))(v22, v20);
}

__n128 MLS.OutgoingProposalCommitted.init(identifier:storageIdentifier:clientContext:metricCollector:commit:epochAuthenticator:ratchetTree:groupInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, __n128 *a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t (*a19)(void, void *))
{
  v21 = *a6;
  v32 = *a7;
  v22 = a7[1].n128_u64[0];
  v23 = a7[1].n128_u64[1];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v34[0] = a15;
  v34[1] = a16;
  v34[2] = a17;
  v34[3] = a18;
  v24 = a19(0, v34);
  v25 = v24[14];
  v26 = type metadata accessor for Optional();
  (*(*(v26 - 8) + 32))(&a9[v25], a5, v26);
  *&a9[v24[15]] = v21;
  v27 = &a9[v24[16]];
  result = v32;
  *v27 = v32;
  *(v27 + 2) = v22;
  *(v27 + 3) = v23;
  v29 = &a9[v24[17]];
  *v29 = a8;
  *(v29 + 1) = a10;
  v30 = &a9[v24[18]];
  *v30 = a11;
  *(v30 + 1) = a12;
  v31 = &a9[v24[19]];
  *v31 = a13;
  *(v31 + 1) = a14;
  return result;
}

uint64_t MLS.OutgoingFailureToDecrypt_v2.failedIdentifier.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 68));

  return v2;
}

uint64_t MLS.OutgoingFailureToDecrypt_v2.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E9950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7265626D656DLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002651E9990 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E99B0 == a2)
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

unint64_t MLS.OutgoingFailureToDecrypt_v2.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0xD000000000000010;
  if (a1 != 5)
  {
    v2 = 0xD000000000000011;
  }

  v3 = 0x6F4363697274656DLL;
  if (a1 != 3)
  {
    v3 = 0x7265626D656DLL;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000011;
  if (a1 != 1)
  {
    v4 = 0x6F43746E65696C63;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingFailureToDecrypt_v2<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingFailureToDecrypt_v2<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingFailureToDecrypt_v2.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v15[0] = *(a2 + 16);
  v15[1] = v6;
  v16[0] = v15[0];
  v16[1] = v4;
  v15[2] = v5;
  v15[3] = v4;
  v16[2] = v5;
  v16[3] = v6;
  type metadata accessor for MLS.OutgoingFailureToDecrypt_v2.CodingKeys(255, v16);
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v7;
  v12 = v15[4];
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16[0]) = 0;
  v13 = v15[5];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v13)
  {
    LOBYTE(v16[0]) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v16[0]) = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16[0] = *(v12 + *(a2 + 60));
    v17 = 3;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    LOBYTE(v16[0]) = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16[0]) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16[0] = *(v12 + *(a2 + 72));
    v17 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v11);
}

uint64_t MLS.OutgoingFailureToDecrypt_v2.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a6;
  v50 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v49 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for Optional();
  v51 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v52 = &v43 - v12;
  v60 = a2;
  v61 = a3;
  v62 = a4;
  v63 = a5;
  type metadata accessor for MLS.OutgoingFailureToDecrypt_v2.CodingKeys(255, &v60);
  swift_getWitnessTable();
  v57 = type metadata accessor for KeyedDecodingContainer();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v14 = &v43 - v13;
  v60 = a2;
  v61 = a3;
  v53 = a3;
  v54 = a5;
  v48 = a4;
  v62 = a4;
  v63 = a5;
  v15 = type metadata accessor for MLS.OutgoingFailureToDecrypt_v2(0, &v60);
  v46 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = (&v43 - v16);
  v18 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v19 = v58;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v59);
  }

  v20 = v52;
  v45 = v15;
  v58 = v17;
  v21 = v56;
  LOBYTE(v60) = 0;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v14;
  v25 = v58;
  *v58 = v22;
  *(v25 + 1) = v26;
  LOBYTE(v60) = 1;
  v44 = v24;
  *(v25 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v25 + 3) = v27;
  LOBYTE(v60) = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v28 = v45;
  (*(v51 + 32))(&v25[v45[14]], v20, v21);
  v64 = 3;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v25[v28[15]] = v60;
  LOBYTE(v60) = 4;
  v29 = v49;
  v30 = a2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v54 = 0;
  v31 = v50;
  (*(v50 + 32))(&v25[v28[16]], v29, v30);
  LOBYTE(v60) = 5;
  v34 = v54;
  v35 = KeyedDecodingContainer.decode(_:forKey:)();
  v54 = v34;
  v37 = v51;
  v38 = v55;
  if (v34)
  {
    (*(v55 + 8))(v44, v57);
    v39 = 0;
  }

  else
  {
    v40 = &v25[v28[17]];
    *v40 = v35;
    v40[1] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v64 = 6;
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808], MEMORY[0x277D83978]);
    v41 = v54;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v54 = v41;
    if (!v41)
    {
      (*(v38 + 8))(v44, v57);
      *&v25[v28[18]] = v60;
      v42 = v46;
      (*(v46 + 16))(v47, v25, v28);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      return (*(v42 + 8))(v25, v28);
    }

    (*(v38 + 8))(v44, v57);
    v39 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  v32 = v58;

  v33 = v45;
  (*(v37 + 8))(v32 + v45[14], v56);

  result = (*(v31 + 8))(v58 + v33[16], v30);
  if (v39)
  {
  }

  return result;
}

uint64_t MLS.OutgoingFailureToDecrypt_v2.init(identifier:storageIdentifier:clientContext:metricCollector:member:failedIdentifier:failedIdentifiers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = *a6;
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v25[0] = a12;
  v25[1] = a13;
  v25[2] = a14;
  v25[3] = a15;
  v19 = type metadata accessor for MLS.OutgoingFailureToDecrypt_v2(0, v25);
  v20 = v19[14];
  v21 = type metadata accessor for Optional();
  (*(*(v21 - 8) + 32))(&a9[v20], a5, v21);
  *&a9[v19[15]] = v18;
  result = (*(*(a12 - 8) + 32))(&a9[v19[16]], a7, a12);
  v23 = &a9[v19[17]];
  *v23 = a8;
  *(v23 + 1) = a10;
  *&a9[v19[18]] = a11;
  return result;
}

uint64_t MLS.OutgoingFailureToDecrypt.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E9950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E99B0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t MLS.OutgoingFailureToDecrypt.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x6F43746E65696C63;
  v3 = 0x6F4363697274656DLL;
  if (a1 != 3)
  {
    v3 = 0xD000000000000011;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingFailureToDecrypt<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MLS.OutgoingFailureToDecrypt.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingFailureToDecrypt<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingFailureToDecrypt<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingFailureToDecrypt.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = v6;
  type metadata accessor for MLS.OutgoingFailureToDecrypt.CodingKeys(255, v6, v16, a4);
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v7;
  v12 = v18;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v21) = 0;
  v13 = v19;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v13)
  {
    LOBYTE(v21) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v21) = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v21 = *(v12 + *(a2 + 44));
    v20 = 3;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v21 = *(v12 + *(a2 + 48));
    v20 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v11);
}

uint64_t MLS.OutgoingFailureToDecrypt.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  MEMORY[0x28223BE20](v7);
  v30 = v25 - v9;
  type metadata accessor for MLS.OutgoingFailureToDecrypt.CodingKeys(255, a2, a3, v10);
  swift_getWitnessTable();
  v34 = type metadata accessor for KeyedDecodingContainer();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v12 = v25 - v11;
  v31 = a3;
  v14 = type metadata accessor for MLS.OutgoingFailureToDecrypt(0, a2, a3, v13);
  v26 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v16 = (v25 - v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v33 = v12;
  v17 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = v30;
  v25[2] = a2;
  v35 = v16;
  LOBYTE(v37) = 0;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = v35;
  *v35 = v19;
  *(v20 + 1) = v21;
  v25[1] = v21;
  LOBYTE(v37) = 1;
  *(v20 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v20 + 3) = v22;
  LOBYTE(v37) = 2;
  v31 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v29 + 32))(&v20[v14[10]], v18, v28);
  v36 = 3;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v20[v14[11]] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v36 = 4;
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808], MEMORY[0x277D83978]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v32 + 8))(v33, v34);
  *&v20[v14[12]] = v37;
  v23 = v26;
  (*(v26 + 16))(v27, v20, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return (*(v23 + 8))(v20, v14);
}

uint64_t MLS.OutgoingFailureToDecrypt.init(identifier:storageIdentifier:clientContext:metricCollector:failedIdentifiers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v13 = *a6;
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v14 = type metadata accessor for MLS.OutgoingFailureToDecrypt(0, a8, a10, a4);
  v15 = v14[10];
  v16 = type metadata accessor for Optional();
  result = (*(*(v16 - 8) + 32))(&a9[v15], a5, v16);
  *&a9[v14[11]] = v13;
  *&a9[v14[12]] = a7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingRecreateGroup<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingRecreateGroup<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingResurrectGroup<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingResurrectGroup<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

__n128 MLS.OutgoingReplaceExpiredCredentials.init(identifier:storageIdentifier:clientContext:metricCollector:commit:welcome:members:epochAuthenticator:ratchetTree:groupInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, __int128 *a7@<X6>, __n128 *a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(void, void *))
{
  v23 = *a6;
  v24 = *(a7 + 2);
  v25 = *(a7 + 3);
  v37 = *a7;
  v38 = *a8;
  v26 = a8[1].n128_u64[0];
  v27 = a8[1].n128_u64[1];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v39[0] = a17;
  v39[1] = a18;
  v39[2] = a19;
  v39[3] = a20;
  v28 = a21(0, v39);
  v29 = v28[14];
  v30 = type metadata accessor for Optional();
  (*(*(v30 - 8) + 32))(&a9[v29], a5, v30);
  *&a9[v28[15]] = v23;
  v31 = &a9[v28[16]];
  result = v38;
  *v31 = v37;
  *(v31 + 2) = v24;
  *(v31 + 3) = v25;
  v33 = &a9[v28[17]];
  *v33 = v38;
  *(v33 + 2) = v26;
  *(v33 + 3) = v27;
  *&a9[v28[18]] = a10;
  v34 = &a9[v28[19]];
  *v34 = a11;
  *(v34 + 1) = a12;
  v35 = &a9[v28[20]];
  *v35 = a13;
  *(v35 + 1) = a14;
  v36 = &a9[v28[21]];
  *v36 = a15;
  *(v36 + 1) = a16;
  return result;
}

uint64_t MLS.OutgoingApplicationSend.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E9950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t MLS.OutgoingApplicationSend.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x6F43746E65696C63;
  v3 = 0x6F4363697274656DLL;
  if (a1 != 3)
  {
    v3 = 0x6567617373656DLL;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingApplicationSend<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MLS.OutgoingApplicationSend.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingApplicationSend<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingApplicationSend<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingRemoveSelf.encode(to:)(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v6 = *(a2 + 16);
  v21[0] = *(a2 + 24);
  v21[1] = v6;
  a3(255);
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v7;
  v12 = v21[2];
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = 0;
  v13 = v21[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v13)
  {
    LOBYTE(v22) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v22) = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = *(v12 + *(a2 + 44));
    v26 = 3;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v15 = (v12 + *(a2 + 48));
    v16 = v15[1];
    v18 = v15[2];
    v17 = v15[3];
    v22 = *v15;
    v23 = v16;
    v24 = v18;
    v25 = v17;
    v26 = 4;

    outlined copy of Data._Representation(v18, v17);
    lazy protocol witness table accessor for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v24;
    v20 = v25;

    outlined consume of Data._Representation(v19, v20);
  }

  return (*(v8 + 8))(v10, v11);
}

uint64_t MLS.OutgoingRemoveSelf.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t (*a6)(void, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v30 = a7;
  v12 = type metadata accessor for Optional();
  v31 = *(v12 - 8);
  v32 = v12;
  MEMORY[0x28223BE20](v12);
  v34 = &v28 - v13;
  a4(255, a2, a3);
  swift_getWitnessTable();
  v38 = type metadata accessor for KeyedDecodingContainer();
  v33 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v15 = &v28 - v14;
  v35 = a2;
  v36 = a3;
  v16 = a6(0, a2, a3);
  v29 = *(v16 - 1);
  MEMORY[0x28223BE20](v16);
  v18 = (&v28 - v17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v37 = v15;
  v19 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v21 = v33;
  v20 = v34;
  LOBYTE(v40) = 0;
  *v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v18[1] = v22;
  v39 = v22;
  LOBYTE(v40) = 1;
  v18[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v18[3] = v23;
  LOBYTE(v40) = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v31 + 32))(v18 + v16[10], v20, v32);
  v43 = 3;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v18 + v16[11]) = v40;
  v43 = 4;
  lazy protocol witness table accessor for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v21 + 8))(v37, v38);
  v24 = v41;
  v25 = v18 + v16[12];
  *v25 = v40;
  *(v25 + 1) = v24;
  *(v25 + 1) = v42;
  v26 = v29;
  (*(v29 + 16))(v30, v18, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return (*(v26 + 8))(v18, v16);
}

double MLS.OutgoingDowngrade.metricCollector.getter@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(v2 + *(a1 + 44));

  return result;
}

uint64_t _s15SecureMessaging3MLSO17OutgoingKeyUpdateV10CodingKeys33_6805464A40D5A82B3B26E3A825F35D96LLOy_x_Gs0gE0AAsAJP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MLS.OutgoingProposalCommitted.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingDowngrade<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingDowngrade<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingKeyUpdate.encode(to:)(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v6 = *(a2 + 16);
  v26[0] = *(a2 + 24);
  v26[1] = v6;
  a3(255);
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v26 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v26[2];
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v27) = 0;
  v12 = v26[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v12)
  {
    LOBYTE(v27) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v27) = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27 = *(v11 + *(a2 + 44));
    v31 = 3;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v14 = (v11 + *(a2 + 48));
    v15 = v14[1];
    v17 = v14[2];
    v16 = v14[3];
    v27 = *v14;
    v28 = v15;
    v29 = v17;
    v30 = v16;
    v31 = 4;

    outlined copy of Data._Representation(v17, v16);
    lazy protocol witness table accessor for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = v29;
    v19 = v30;

    outlined consume of Data._Representation(v18, v19);
    v20 = (v11 + *(a2 + 52));
    v21 = v20[1];
    v27 = *v20;
    v28 = v21;
    v31 = 5;
    outlined copy of Data._Representation(v27, v21);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v27, v28);
    v22 = (v11 + *(a2 + 56));
    v23 = v22[1];
    v27 = *v22;
    v28 = v23;
    v31 = 6;
    outlined copy of Data?(v27, v23);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v27, v28);
    v24 = (v11 + *(a2 + 60));
    v25 = v24[1];
    v27 = *v24;
    v28 = v25;
    v31 = 7;
    outlined copy of Data._Representation(v27, v25);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v27, v28);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t MLS.OutgoingKeyUpdate.init(from:)@<X0>(void *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, int *, uint64_t)@<X3>, uint64_t (*a6)(void, int *, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v42 = a7;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v43 = v12;
  v44 = v13;
  MEMORY[0x28223BE20](v12);
  v46 = &v41 - v14;
  a4(255, a2, a3);
  swift_getWitnessTable();
  v49 = type metadata accessor for KeyedDecodingContainer();
  v45 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v16 = &v41 - v15;
  v47 = a2;
  v48 = a3;
  v17 = a6(0, a2, a3);
  v41 = *(v17 - 1);
  MEMORY[0x28223BE20](v17);
  v19 = (&v41 - v18);
  v20 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v50 = v16;
  v21 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v52);
  }

  v23 = v45;
  v22 = v46;
  LOBYTE(v53) = 0;
  v24 = v49;
  *v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v19[1] = v26;
  LOBYTE(v53) = 1;
  v19[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v19[3] = v27;
  LOBYTE(v53) = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v51 = 0;
  (*(v44 + 32))(v19 + v17[10], v22, v43);
  v55 = 3;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  v28 = v51;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v51 = v28;
  if (v28)
  {
    (*(v23 + 8))(v50, v24);
    v29 = v17;
    __swift_destroy_boxed_opaque_existential_1Tm(v52);

    v30 = 0;
    v31 = 0;
  }

  else
  {
    *(v19 + v17[11]) = v53;
    v55 = 4;
    lazy protocol witness table accessor for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage();
    v35 = v51;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    LODWORD(v48) = v35 == 0;
    v51 = v35;
    if (v35)
    {
      (*(v23 + 8))(v50, v24);
    }

    else
    {
      v36 = *(&v53 + 1);
      v37 = v19 + v17[12];
      *v37 = v53;
      *(v37 + 1) = v36;
      *(v37 + 1) = v54;
      v55 = 5;
      lazy protocol witness table accessor for type Data and conformance Data();
      v38 = v51;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      if (!v38)
      {
        *(v19 + v17[13]) = v53;
        v55 = 6;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v47 = v17;
        *(v19 + v17[14]) = v53;
        v55 = 7;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v51 = 0;
        (*(v23 + 8))(v50, v49);
        v39 = v47;
        *(v19 + v47[15]) = v53;
        v40 = v41;
        (*(v41 + 16))(v42, v19, v39);
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        return (*(v40 + 8))(v19, v39);
      }

      v51 = v38;
      (*(v23 + 8))(v50, v49);
    }

    v29 = v17;
    __swift_destroy_boxed_opaque_existential_1Tm(v52);

    v30 = 1;
    v31 = v48;
  }

  result = (*(v44 + 8))(v19 + v29[10], v43);
  if (v30)
  {

    if ((v31 & 1) == 0)
    {
      return result;
    }

LABEL_10:
    v32 = v19 + v29[12];
    v33 = *(v32 + 2);
    v34 = *(v32 + 3);

    return outlined consume of Data._Representation(v33, v34);
  }

  if (v31)
  {
    goto LABEL_10;
  }

  return result;
}

__n128 MLS.OutgoingKeyUpdate.init(identifier:storageIdentifier:clientContext:metricCollector:commit:epochAuthenticator:ratchetTree:groupInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, __n128 *a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t (*a17)(void, uint64_t, uint64_t))
{
  v19 = *a6;
  v30 = *a7;
  v20 = a7[1].n128_u64[0];
  v21 = a7[1].n128_u64[1];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v22 = a17(0, a15, a16);
  v23 = v22[10];
  v24 = type metadata accessor for Optional();
  (*(*(v24 - 8) + 32))(&a9[v23], a5, v24);
  *&a9[v22[11]] = v19;
  v25 = &a9[v22[12]];
  result = v30;
  *v25 = v30;
  *(v25 + 2) = v20;
  *(v25 + 3) = v21;
  v27 = &a9[v22[13]];
  *v27 = a8;
  *(v27 + 1) = a10;
  v28 = &a9[v22[14]];
  *v28 = a11;
  *(v28 + 1) = a12;
  v29 = &a9[v22[15]];
  *v29 = a13;
  *(v29 + 1) = a14;
  return result;
}

uint64_t MLS.OutgoingRemoveSelf.clientContext.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void MLS.OutgoingRemoveSelf.proposal.getter(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 48));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;

  outlined copy of Data._Representation(v5, v6);
}

uint64_t MLS.OutgoingKeyUpdate.epochAuthenticator.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 52);
  v3 = *v2;
  outlined copy of Data._Representation(*v2, *(v2 + 8));
  return v3;
}

uint64_t MLS.OutgoingKeyUpdate.ratchetTree.getter(uint64_t a1, void (*a2)(void, void))
{
  v3 = (v2 + *(a1 + 56));
  v4 = *v3;
  a2(*v3, v3[1]);
  return v4;
}

uint64_t MLS.OutgoingKeyUpdate.groupInfo.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 60);
  v3 = *v2;
  outlined copy of Data._Representation(*v2, *(v2 + 8));
  return v3;
}

uint64_t MLS.OutgoingGroupNameChange.ratchetTree.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 64);
  v3 = *v2;
  outlined copy of Data?(*v2, *(v2 + 8));
  return v3;
}

uint64_t MLS.OutgoingProposalCommitted.epochAuthenticator.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 68);
  v3 = *v2;
  outlined copy of Data._Representation(*v2, *(v2 + 8));
  return v3;
}

uint64_t MLS.OutgoingGroupNameChange.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E9950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74696D6D6F63 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002651E99D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002651E99F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002651E9970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x5474656863746172 && a2 == 0xEB00000000656572 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x666E4970756F7267 && a2 == 0xE90000000000006FLL)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t MLS.OutgoingGroupNameChange.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x5474656863746172;
    if (a1 != 8)
    {
      v5 = 0x666E4970756F7267;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD000000000000015;
    if (a1 != 5)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0x6F43746E65696C63;
    v3 = 0x6F4363697274656DLL;
    if (a1 != 3)
    {
      v3 = 0x74696D6D6F63;
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
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.OutgoingRemoveSelf<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingGroupNameChange<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MLS.OutgoingGroupNameChange.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLS.OutgoingGroupNameChange<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = specialized MLS.IncomingEventType.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingGroupNameChange<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingGroupNameChange<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingGroupNameChange.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v30[0] = *(a2 + 24);
  v30[1] = v6;
  type metadata accessor for MLS.OutgoingGroupNameChange.CodingKeys(255, v6, v30[0], a4);
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v30 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v30[2];
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v31) = 0;
  v12 = v30[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v12)
  {
    LOBYTE(v31) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v31) = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v31 = *(v11 + *(a2 + 44));
    v35 = 3;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v13 = (v11 + *(a2 + 48));
    v14 = v13[1];
    v16 = v13[2];
    v15 = v13[3];
    v31 = *v13;
    v32 = v14;
    v33 = v16;
    v34 = v15;
    v35 = 4;

    outlined copy of Data._Representation(v16, v15);
    lazy protocol witness table accessor for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = v33;
    v18 = v34;

    outlined consume of Data._Representation(v17, v18);
    v19 = (v11 + *(a2 + 52));
    v20 = v19[1];
    v31 = *v19;
    v32 = v20;
    v35 = 5;
    outlined copy of Data._Representation(v31, v20);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v31, v32);
    v21 = (v11 + *(a2 + 56));
    v22 = v21[1];
    v31 = *v21;
    v32 = v22;
    v35 = 6;
    outlined copy of Data._Representation(v31, v22);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v31, v32);
    v23 = (v11 + *(a2 + 60));
    v24 = v23[1];
    v31 = *v23;
    v32 = v24;
    v35 = 7;
    outlined copy of Data._Representation(v31, v24);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v31, v32);
    v26 = (v11 + *(a2 + 64));
    v27 = v26[1];
    v31 = *v26;
    v32 = v27;
    v35 = 8;
    outlined copy of Data?(v31, v27);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v31, v32);
    v28 = (v11 + *(a2 + 68));
    v29 = v28[1];
    v31 = *v28;
    v32 = v29;
    v35 = 9;
    outlined copy of Data._Representation(v31, v29);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v31, v32);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t MLS.OutgoingGroupNameChange.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v7 = type metadata accessor for Optional();
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x28223BE20](v7);
  v34 = &v28 - v8;
  type metadata accessor for MLS.OutgoingGroupNameChange.CodingKeys(255, a2, a3, v9);
  swift_getWitnessTable();
  v10 = type metadata accessor for KeyedDecodingContainer();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v35 = a3;
  v14 = type metadata accessor for MLS.OutgoingGroupNameChange(0, a2, a3, v13);
  v30 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v16 = (&v28 - v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v38 = v12;
  v17 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = v34;
  v29 = a1;
  v39 = v16;
  LOBYTE(v40) = 0;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = v39;
  *v39 = v19;
  *(v20 + 1) = v21;
  LOBYTE(v40) = 1;
  *(v20 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v20 + 3) = v22;
  LOBYTE(v40) = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v35 = 0;
  (*(v32 + 32))(&v20[v14[10]], v18, v33);
  v42 = 3;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v20[v14[11]] = v40;
  v42 = 4;
  lazy protocol witness table accessor for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = *(&v40 + 1);
  v24 = &v20[v14[12]];
  *v24 = v40;
  *(v24 + 1) = v23;
  *(v24 + 1) = v41;
  v42 = 5;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v20[v14[13]] = v40;
  v42 = 6;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  LODWORD(v35) = 1;
  *&v20[v14[14]] = v40;
  v42 = 7;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v20[v14[15]] = v40;
  v42 = 8;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v20[v14[16]] = v40;
  v42 = 9;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v36 + 8))(v38, v37);
  v25 = v39;
  *(v39 + v14[17]) = v40;
  v26 = v30;
  (*(v30 + 16))(v31, v25, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  return (*(v26 + 8))(v25, v14);
}

void MLS.OutgoingCreateGroup.commit.getter(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 64));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;

  outlined copy of Data._Representation(v5, v6);
}

void MLS.OutgoingCreateGroup.welcome.getter(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 68));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;

  outlined copy of Data._Representation(v5, v6);
}

uint64_t MLS.OutgoingCreateGroup.epochAuthenticator.getter(uint64_t a1, void (*a2)(void, void))
{
  v3 = (v2 + *(a1 + 76));
  v4 = *v3;
  a2(*v3, v3[1]);
  return v4;
}

uint64_t MLS.OutgoingCreateGroup.ratchetTree.getter(uint64_t a1, void (*a2)(void, void))
{
  v3 = (v2 + *(a1 + 80));
  v4 = *v3;
  a2(*v3, v3[1]);
  return v4;
}

uint64_t MLS.OutgoingCreateGroup.groupInfo.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 84);
  v3 = *v2;
  outlined copy of Data._Representation(*v2, *(v2 + 8));
  return v3;
}

uint64_t MLS.OutgoingCreateGroup.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E9950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74696D6D6F63 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D6F636C6577 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737265626D656DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002651E9970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x5474656863746172 && a2 == 0xEB00000000656572 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x666E4970756F7267 && a2 == 0xE90000000000006FLL)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

unint64_t MLS.OutgoingCreateGroup.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x5474656863746172;
    if (a1 != 8)
    {
      v5 = 0x666E4970756F7267;
    }

    if (a1 == 7)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = v5;
    }

    v7 = 0x656D6F636C6577;
    if (a1 != 5)
    {
      v7 = 0x737265626D656DLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0x6F43746E65696C63;
    v3 = 0x6F4363697274656DLL;
    if (a1 != 3)
    {
      v3 = 0x74696D6D6F63;
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
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingReplaceExpiredCredentials<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingReplaceExpiredCredentials<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingCreateGroup.encode(to:)(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t *), uint64_t a4)
{
  v5 = v4;
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v38 = *(a2 + 16);
  v39 = v10;
  v45 = v38;
  v46 = v8;
  v40 = v9;
  v41 = v8;
  v47 = v9;
  v48 = v10;
  a3(255, &v45);
  swift_getWitnessTable();
  v11 = type metadata accessor for KeyedEncodingContainer();
  v42 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v45) = 0;
  v14 = v43;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v14)
  {
    return (*(v42 + 8))(v13, v11);
  }

  v16 = v40;
  v17 = v42;
  LOBYTE(v45) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v45) = 2;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v18 = *(a2 + 60);
  v43 = v5;
  v45 = *(v5 + v18);
  v49 = 3;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

  KeyedEncodingContainer.encode<A>(_:forKey:)();

  v19 = (v43 + *(a2 + 64));
  v20 = v19[1];
  v22 = v19[2];
  v21 = v19[3];
  v45 = *v19;
  v46 = v20;
  v47 = v22;
  v48 = v21;
  v49 = 4;

  outlined copy of Data._Representation(v22, v21);
  lazy protocol witness table accessor for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v23 = v47;
  v24 = v48;

  outlined consume of Data._Representation(v23, v24);
  v25 = (v43 + *(a2 + 68));
  v26 = v25[1];
  v28 = v25[2];
  v27 = v25[3];
  v45 = *v25;
  v46 = v26;
  v47 = v28;
  v48 = v27;
  v49 = 5;

  outlined copy of Data._Representation(v28, v27);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v29 = v47;
  v30 = v48;

  outlined consume of Data._Representation(v29, v30);
  v45 = *(v43 + *(a2 + 72));
  v49 = 6;
  type metadata accessor for Set();
  v44 = *(v16 + 16);
  swift_getWitnessTable();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v31 = (v43 + *(a2 + 76));
  v32 = v31[1];
  v45 = *v31;
  v46 = v32;
  v49 = 7;
  outlined copy of Data._Representation(v45, v32);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v45, v46);
  v33 = (v43 + *(a2 + 80));
  v34 = v33[1];
  v45 = *v33;
  v46 = v34;
  v49 = 8;
  outlined copy of Data?(v45, v34);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of Data?(v45, v46);
  v35 = (v43 + *(a2 + 84));
  v36 = v35[1];
  v45 = *v35;
  v46 = v36;
  v49 = 9;
  outlined copy of Data._Representation(v45, v36);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v45, v46);
  return (*(v17 + 8))(v13, 0);
}

uint64_t MLS.OutgoingCreateGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t, __int128 *)@<X5>, uint64_t (*a8)(void, __int128 *)@<X7>, uint64_t a9@<X8>)
{
  v52 = a9;
  v16 = type metadata accessor for Optional();
  v55 = *(v16 - 8);
  v56 = v16;
  MEMORY[0x28223BE20](v16);
  v57 = &v49 - v17;
  *&v65 = a2;
  *(&v65 + 1) = a3;
  *&v66 = a4;
  *(&v66 + 1) = a5;
  a6(255, &v65);
  swift_getWitnessTable();
  v18 = type metadata accessor for KeyedDecodingContainer();
  v60 = *(v18 - 8);
  v61 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  v53 = a4;
  v54 = a2;
  *&v65 = a2;
  *(&v65 + 1) = a3;
  v58 = a3;
  v59 = a5;
  *&v66 = a4;
  *(&v66 + 1) = a5;
  v21 = a8(0, &v65);
  v51 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = (&v49 - v22);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v62 = v20;
  v24 = v63;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25 = v57;
  v50 = v23;
  v63 = v21;
  LOBYTE(v65) = 0;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v50;
  *v50 = v26;
  *(v28 + 1) = v29;
  LOBYTE(v65) = 1;
  *(v28 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v28 + 3) = v30;
  LOBYTE(v65) = 2;
  v59 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v31 = v63;
  (*(v55 + 32))(&v28[v63[14]], v25, v56);
  v67 = 3;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v28[v31[15]] = v65;
  v67 = 4;
  lazy protocol witness table accessor for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = *(&v65 + 1);
  v33 = &v28[v31[16]];
  *v33 = v65;
  *(v33 + 1) = v32;
  *(v33 + 1) = v66;
  v67 = 5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v40 = *(&v65 + 1);
  v41 = &v28[v31[17]];
  *v41 = v65;
  *(v41 + 1) = v40;
  *(v41 + 1) = v66;
  v42 = v53;
  type metadata accessor for Set();
  v67 = 6;
  v64 = *(v42 + 8);
  swift_getWitnessTable();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v28[v31[18]] = v65;
  v67 = 7;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v28[v63[19]] = v65;
  v67 = 8;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v59 = 0;
  *&v28[v63[20]] = v65;
  v67 = 9;
  v44 = v59;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v59 = v44;
  (*(v60 + 8))(v62, v61);
  if (v44)
  {
    v45 = v50;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    v43 = v63;
    (*(v55 + 8))(v45 + v63[14], v56);

    v37 = v45 + v43[16];
    v38 = *(v37 + 2);
    v39 = *(v37 + 3);

    outlined consume of Data._Representation(v38, v39);
    v34 = v45 + v43[17];
    v35 = *(v34 + 2);
    v36 = *(v34 + 3);

    outlined consume of Data._Representation(v35, v36);

    outlined consume of Data._Representation(*(v45 + v43[19]), *(v45 + v43[19] + 8));
    return outlined consume of Data?(*(v45 + v43[20]), *(v45 + v43[20] + 8));
  }

  else
  {
    v46 = v63;
    v47 = v50;
    v48 = v51;
    *(v50 + v63[21]) = v65;
    (*(v48 + 16))(v52, v47, v46);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return (*(v48 + 8))(v47, v46);
  }
}

uint64_t MLS.OutgoingGroupRepaired.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E9950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t MLS.OutgoingGroupRepaired.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x6F43746E65696C63;
  if (a1 != 2)
  {
    v2 = 0x6F4363697274656DLL;
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingGroupRepaired<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingGroupRepaired<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingGroupRepaired.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v16 = *(a2 + 16);
  v12 = *(a2 + 24);
  v17 = v12;
  v13 = v4;
  v18 = v4;
  type metadata accessor for MLS.OutgoingGroupRepaired.CodingKeys(255, &v16);
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedEncodingContainer();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = v14;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  v10 = v15;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v10)
  {
    LOBYTE(v16) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v16) = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = *(v9 + *(a2 + 60));
    v19 = 3;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MLS.OutgoingGroupRepaired.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a6;
  v36 = type metadata accessor for Optional();
  v39 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v38 = v32 - v11;
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  type metadata accessor for MLS.OutgoingGroupRepaired.CodingKeys(255, &v45);
  swift_getWitnessTable();
  v42 = type metadata accessor for KeyedDecodingContainer();
  v37 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v13 = v32 - v12;
  v45 = a2;
  v46 = a3;
  v40 = a3;
  v41 = a5;
  v47 = a4;
  v48 = a5;
  v14 = type metadata accessor for MLS.OutgoingGroupRepaired(0, &v45);
  v34 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = (v32 - v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v43 = v13;
  v17 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = v37;
  v18 = v38;
  v33 = v16;
  v44 = a1;
  v20 = v39;
  LOBYTE(v45) = 0;
  v21 = v42;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v33;
  *v33 = v22;
  v23[1] = v24;
  v32[1] = v24;
  LOBYTE(v45) = 1;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v33;
  v33[2] = v25;
  v26[3] = v27;
  LOBYTE(v45) = 2;
  v41 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v20 + 32))(v33 + *(v14 + 56), v18, v36);
  v49 = 3;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v44;
  (*(v19 + 8))(v43, v21);
  v30 = v33;
  v29 = v34;
  *(v33 + *(v14 + 60)) = v45;
  (*(v29 + 16))(v35, v30, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return (*(v29 + 8))(v30, v14);
}

uint64_t MLS.OutgoingGroupRepaired.init(identifier:storageIdentifier:clientContext:metricCollector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v13 = *a6;
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v18[0] = a7;
  v18[1] = a8;
  v18[2] = a10;
  v18[3] = a11;
  v14 = type metadata accessor for MLS.OutgoingGroupRepaired(0, v18);
  v15 = *(v14 + 56);
  v16 = type metadata accessor for Optional();
  result = (*(*(v16 - 8) + 32))(&a9[v15], a5, v16);
  *&a9[*(v14 + 60)] = v13;
  return result;
}

uint64_t MLS.OutgoingErrorOccurred.Trigger.allMemberTrigger()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v6);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v11 + 16))(v10);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      v13 = &v10[*(swift_getTupleTypeMetadata2() + 48)];
      *(v40 + 12) = *(v13 + 44);
      v14 = v13[1];
      v38 = *v13;
      v39 = v14;
      v40[0] = v13[2];
      (*(v5 + 32))(v8, v10, v4);
      (*(*(a1 + 32) + 40))(&v34, v4);
      result = (*(v5 + 8))(v8, v4);
      v15 = v35;
      v16 = v36;
      *&v37[7] = v38;
      *&v37[23] = v39;
      *&v37[39] = v40[0];
      *&v37[51] = *(v40 + 12);
      *a2 = v34;
      *(a2 + 16) = v15;
      *(a2 + 24) = v16;
      v17 = *&v37[16];
      *(a2 + 25) = *v37;
      v18 = *&v37[32];
      v19 = *&v37[48];
      *(a2 + 88) = *&v37[63];
      *(a2 + 73) = v19;
      *(a2 + 57) = v18;
      *(a2 + 41) = v17;
      v20 = 1;
    }

    else
    {
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      v20 = 2;
    }

    *(a2 + 112) = v20;
  }

  else
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v22 = &v10[*(TupleTypeMetadata3 + 48)];
    *(v40 + 12) = *(v22 + 44);
    v23 = v22[1];
    v38 = *v22;
    v39 = v23;
    v40[0] = v22[2];
    v24 = &v10[*(TupleTypeMetadata3 + 64)];
    v25 = *v24;
    v26 = v24[1];
    (*(v5 + 32))(v8, v10, v4);
    (*(*(a1 + 32) + 40))(&v34, v4);
    result = (*(v5 + 8))(v8, v4);
    v27 = v35;
    v28 = v36;
    *&v33[7] = v38;
    *&v33[23] = v39;
    *&v33[39] = v40[0];
    *&v33[51] = *(v40 + 12);
    *a2 = v34;
    *(a2 + 16) = v27;
    *(a2 + 24) = v28;
    v29 = *&v33[16];
    *(a2 + 25) = *v33;
    v30 = *&v33[32];
    v31 = *&v33[48];
    *(a2 + 88) = *&v33[63];
    *(a2 + 73) = v31;
    *(a2 + 57) = v30;
    *(a2 + 41) = v29;
    *(a2 + 96) = v25;
    *(a2 + 104) = v26;
    *(a2 + 112) = 0;
  }

  return result;
}

BOOL static MLS.OutgoingErrorOccurred.Trigger.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = *(a3 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v83 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v73 - v6;
  v87 = v8;
  *&v103 = v8;
  *(&v103 + 1) = v9;
  v84 = v10;
  *&v104 = v10;
  *(&v104 + 1) = v11;
  v12 = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger(0, &v103);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v73 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v86 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v21 = &v73 + *(TupleTypeMetadata2 + 48) - v20;
  v85 = v13;
  v22 = *(v13 + 16);
  v23 = &v73 - v20;
  v22();
  (v22)(v21, a2, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v83 = v7;
    v82 = v23;
    (v22)(v18, v23, v12);
    v46 = v87;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v48 = &v18[*(TupleTypeMetadata3 + 48)];
    *&v105[12] = *(v48 + 44);
    v49 = *(v48 + 1);
    v103 = *v48;
    v104 = v49;
    *v105 = *(v48 + 2);
    v50 = *(TupleTypeMetadata3 + 64);
    v52 = *&v18[v50];
    v51 = *&v18[v50 + 8];
    if (!swift_getEnumCaseMultiPayload())
    {
      v81 = v52;
      v86 = v51;
      v54 = &v21[*(TupleTypeMetadata3 + 48)];
      v55 = *(v54 + 1);
      v100 = *v54;
      v101 = v55;
      *v102 = *(v54 + 2);
      *&v102[12] = *(v54 + 44);
      v57 = *&v21[v50];
      v56 = *&v21[v50 + 8];
      v58 = v88;
      v59 = v83;
      (*(v88 + 32))(v83, v21, v46);
      v60 = dispatch thunk of static Equatable.== infix(_:_:)();
      v61 = *(v58 + 8);
      v61(v18, v46);
      if (v60)
      {
        v84 = v57;
        v88 = v56;
        v79 = *(&v104 + 1);
        v80 = v104;
        v77 = *&v105[8];
        v78 = *v105;
        v76 = *&v105[16];
        v75 = *&v105[24];
        v62 = v101;
        v64 = *&v102[8];
        v63 = *v102;
        v65 = *&v102[16];
        v66 = *&v102[24];
        if (specialized static Data.== infix(_:_:)(v103, *(&v103 + 1), v100, *(&v100 + 1)))
        {
          v94 = v80;
          v95 = v79;
          v96 = v78;
          v97 = v77;
          v98 = v76;
          v99 = v75;
          v89 = v62;
          v90 = v63;
          v91 = v64;
          v92 = v65;
          v93 = v66;
          v73 = v63;
          v74 = v61;
          outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v80, v79, v78, v77, v76, v75, outlined copy of Data._Representation, outlined copy of Data?);
          outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v62, *(&v62 + 1), v73, v64, v65, v66, outlined copy of Data._Representation, outlined copy of Data?);
          v67 = specialized static MLS.EncryptedRCS.SigningInput.ContentType.== infix(_:_:)(&v94, &v89);
          outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v89, *(&v89 + 1), v90, v91, v92, v93, outlined consume of Data._Representation, outlined consume of Data?);
          v61 = v74;
          outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v94, v95, v96, v97, v98, v99, outlined consume of Data._Representation, outlined consume of Data?);
          if (v67)
          {
            v68 = v81;
            v69 = v86;
            v70 = v84;
            v71 = v88;
            v53 = specialized static Data.== infix(_:_:)(v81, v86, v84, v88);
            outlined consume of Data._Representation(v70, v71);
            outlined consume of Data._Representation(v68, v69);
            outlined destroy of MLS.SigningInput(&v100);
            outlined destroy of MLS.SigningInput(&v103);
            v61(v83, v46);
            (*(v85 + 8))(v82, v12);
            return v53;
          }
        }

        outlined consume of Data._Representation(v84, v88);
        outlined consume of Data._Representation(v81, v86);
        outlined destroy of MLS.SigningInput(&v100);
        outlined destroy of MLS.SigningInput(&v103);
        v61(v83, v46);
        goto LABEL_25;
      }

      v61(v59, v46);
      outlined consume of Data._Representation(v57, v56);
      outlined destroy of MLS.SigningInput(&v100);
      outlined consume of Data._Representation(v81, v86);
LABEL_24:
      outlined destroy of MLS.SigningInput(&v103);
LABEL_25:
      v45 = v85;
      goto LABEL_26;
    }

    outlined consume of Data._Representation(v52, v51);
    outlined destroy of MLS.SigningInput(&v103);
    (*(v88 + 8))(v18, v46);
    v23 = v82;
LABEL_14:
    (*(v86 + 8))(v23, TupleTypeMetadata2);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      (*(v85 + 8))(v23, v12);
      return 1;
    }

    goto LABEL_14;
  }

  (v22)(v16, v23, v12);
  v25 = v87;
  v26 = swift_getTupleTypeMetadata2();
  v27 = &v16[*(v26 + 48)];
  *&v105[12] = *(v27 + 44);
  v28 = *(v27 + 1);
  v103 = *v27;
  v104 = v28;
  *v105 = *(v27 + 2);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of MLS.SigningInput(&v103);
    (*(v88 + 8))(v16, v25);
    goto LABEL_14;
  }

  v82 = v23;
  v29 = &v21[*(v26 + 48)];
  v30 = *(v29 + 1);
  v100 = *v29;
  v101 = v30;
  *v102 = *(v29 + 2);
  *&v102[12] = *(v29 + 44);
  v31 = v88;
  v32 = v83;
  (*(v88 + 32))(v83, v21, v25);
  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
  v36 = *(v31 + 8);
  v35 = v31 + 8;
  v34 = v36;
  v36(v16, v25);
  if ((v33 & 1) == 0)
  {
    v34(v32, v25);
LABEL_23:
    outlined destroy of MLS.SigningInput(&v100);
    goto LABEL_24;
  }

  v88 = v35;
  v37 = *(&v104 + 1);
  v86 = v104;
  v84 = *&v105[8];
  v38 = *v105;
  v81 = *&v105[16];
  LODWORD(v80) = *&v105[24];
  v39 = v101;
  v41 = *&v102[8];
  v40 = *v102;
  v42 = *&v102[16];
  v43 = *&v102[24];
  if (!specialized static Data.== infix(_:_:)(v103, *(&v103 + 1), v100, *(&v100 + 1)))
  {
    v34(v83, v87);
    goto LABEL_23;
  }

  v94 = v86;
  v95 = v37;
  v96 = v38;
  v97 = v84;
  v98 = v81;
  v99 = v80;
  v89 = v39;
  v90 = v40;
  v91 = v41;
  v92 = v42;
  v93 = v43;
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v86, v37, v38, v84, v81, v80, outlined copy of Data._Representation, outlined copy of Data?);
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v39, *(&v39 + 1), v40, v41, v42, v43, outlined copy of Data._Representation, outlined copy of Data?);
  v44 = specialized static MLS.EncryptedRCS.SigningInput.ContentType.== infix(_:_:)(&v94, &v89);
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v89, *(&v89 + 1), v90, v91, v92, v93, outlined consume of Data._Representation, outlined consume of Data?);
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v94, v95, v96, v97, v98, v99, outlined consume of Data._Representation, outlined consume of Data?);
  v34(v83, v87);
  outlined destroy of MLS.SigningInput(&v100);
  outlined destroy of MLS.SigningInput(&v103);
  v45 = v85;
  if (!v44)
  {
LABEL_26:
    (*(v45 + 8))(v82, v12);
    return 0;
  }

  (*(v85 + 8))(v82, v12);
  return 1;
}

uint64_t MLS.OutgoingErrorOccurred.Trigger.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000002651E9A10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002651E9A30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002651E9A50 == a2)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t MLS.OutgoingErrorOccurred.Trigger.CodingKeys.stringValue.getter(char a1)
{
  result = 0xD000000000000012;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000019;
    }

    else
    {
      return 0xD000000000000017;
    }
  }

  return result;
}

uint64_t MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingErrorCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49676E696E676973 && a2 == 0xEC0000007475706ELL)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingErrorCodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingErrorCodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x49676E696E676973;
  }

  else
  {
    return 0x7265646E6573;
  }
}

uint64_t MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingMessageCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49676E696E676973 && a2 == 0xEC0000007475706ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614464656E676973 && a2 == 0xEA00000000006174)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingMessageCodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x7265646E6573;
  }

  if (a1 == 1)
  {
    return 0x49676E696E676973;
  }

  return 0x614464656E676973;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingErrorOccurred<A, B>.Trigger.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingErrorOccurred<A, B>.Trigger.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingErrorOccurred<A, B>.Trigger.ServerErrorMessageCodingKeys@<X0>(_BYTE *a2@<X8>)
{
  v3 = protocol witness for static Equatable.== infix(_:_:) in conformance MLS.IncomingEventType<A, B>.ApplicationMessageCodingKeys();

  *a2 = v3 & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLS.OutgoingEventType<A, B>.AddMemberCodingKeys@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingErrorOccurred<A, B>.Trigger.ServerErrorMessageCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingErrorOccurred<A, B>.Trigger.ServerErrorMessageCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.OutgoingErrorOccurred<A, B>.Trigger.UnhealableIncomingErrorCodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingErrorCodingKeys.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingErrorOccurred<A, B>.Trigger.UnhealableIncomingErrorCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingErrorOccurred<A, B>.Trigger.UnhealableIncomingErrorCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingErrorOccurred<A, B>.Trigger.UnhealableIncomingMessageCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingErrorOccurred<A, B>.Trigger.UnhealableIncomingMessageCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingErrorOccurred.Trigger.encode(to:)(void *a1, void *a2)
{
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  *&v85 = a2[2];
  v5 = v85;
  *(&v85 + 1) = v4;
  *&v86 = v7;
  *(&v86 + 1) = v6;
  v66 = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingErrorCodingKeys(255, &v85);
  WitnessTable = swift_getWitnessTable();
  v70 = type metadata accessor for KeyedEncodingContainer();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v56 - v8;
  *&v85 = v5;
  *(&v85 + 1) = v4;
  *&v86 = v7;
  *(&v86 + 1) = v6;
  v9 = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingMessageCodingKeys(255, &v85);
  v10 = swift_getWitnessTable();
  v64 = v9;
  v63 = v10;
  v76 = type metadata accessor for KeyedEncodingContainer();
  v62 = *(v76 - 8);
  v11 = MEMORY[0x28223BE20](v76);
  v75 = &v56 - v12;
  v73 = *(v5 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v67 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v71 = &v56 - v15;
  *&v85 = v5;
  *(&v85 + 1) = v4;
  *&v86 = v7;
  *(&v86 + 1) = v6;
  v16 = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger.ServerErrorMessageCodingKeys(255, &v85);
  v17 = swift_getWitnessTable();
  v61 = v16;
  v59 = v17;
  v60 = type metadata accessor for KeyedEncodingContainer();
  v58 = *(v60 - 8);
  v18 = MEMORY[0x28223BE20](v60);
  v57 = &v56 - v19;
  v20 = *(a2 - 1);
  MEMORY[0x28223BE20](v18);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v5;
  *&v85 = v5;
  *(&v85 + 1) = v4;
  v72 = v7;
  *&v86 = v7;
  *(&v86 + 1) = v6;
  type metadata accessor for MLS.OutgoingErrorOccurred.Trigger.CodingKeys(255, &v85);
  swift_getWitnessTable();
  v23 = type metadata accessor for KeyedEncodingContainer();
  v24 = *(v23 - 8);
  v79 = v23;
  v80 = v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v56 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v78 = v26;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v20 + 16))(v22, v77, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v28 = v74;
      v29 = &v22[*(swift_getTupleTypeMetadata2() + 48)];
      *&v87[12] = *(v29 + 44);
      v30 = *(v29 + 1);
      v85 = *v29;
      v86 = v30;
      *v87 = *(v29 + 2);
      v31 = v73;
      v32 = v67;
      (*(v73 + 32))(v67, v22, v28);
      LOBYTE(v82) = 2;
      v33 = v68;
      v35 = v78;
      v34 = v79;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v82) = 0;
      v36 = v70;
      v37 = v81;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v37)
      {
        outlined destroy of MLS.SigningInput(&v85);
        (*(v69 + 8))(v33, v36);
        (*(v31 + 8))(v32, v28);
        return (*(v80 + 8))(v35, v34);
      }

      else
      {
        v82 = v85;
        v83 = v86;
        *v84 = *v87;
        *&v84[12] = *&v87[12];
        v88 = 1;
        lazy protocol witness table accessor for type MLS.SigningInput and conformance MLS.SigningInput();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v69 + 8))(v33, v36);
        (*(v31 + 8))(v32, v28);
        (*(v80 + 8))(v35, v34);
        return outlined destroy of MLS.SigningInput(&v85);
      }
    }

    else
    {
      LOBYTE(v85) = 0;
      v50 = v57;
      v52 = v78;
      v51 = v79;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v58 + 8))(v50, v60);
      return (*(v80 + 8))(v52, v51);
    }
  }

  else
  {
    v39 = v74;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v41 = &v22[*(TupleTypeMetadata3 + 48)];
    *&v87[12] = *(v41 + 44);
    v42 = *(v41 + 1);
    v85 = *v41;
    v86 = v42;
    *v87 = *(v41 + 2);
    v43 = &v22[*(TupleTypeMetadata3 + 64)];
    v45 = *v43;
    v44 = v43[1];
    v46 = v73;
    (*(v73 + 32))(v71, v22, v39);
    LOBYTE(v82) = 1;
    v47 = v78;
    v48 = v79;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    LOBYTE(v82) = 0;
    v49 = v81;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v49)
    {
      outlined destroy of MLS.SigningInput(&v85);
      outlined consume of Data._Representation(v45, v44);
      (*(v62 + 8))(v75, v76);
      (*(v46 + 8))(v71, v39);
      return (*(v80 + 8))(v47, v48);
    }

    else
    {
      v53 = v47;
      v82 = v85;
      v83 = v86;
      *v84 = *v87;
      *&v84[12] = *&v87[12];
      v88 = 1;
      lazy protocol witness table accessor for type MLS.SigningInput and conformance MLS.SigningInput();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v81 = v44;
      *&v82 = v45;
      *(&v82 + 1) = v44;
      v88 = 2;
      lazy protocol witness table accessor for type Data and conformance Data();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v54 = v62;
      v55 = v71;
      outlined destroy of MLS.SigningInput(&v85);
      (*(v54 + 8))(v75, v76);
      (*(v46 + 8))(v55, v39);
      (*(v80 + 8))(v53, v48);
      return outlined consume of Data._Representation(v45, v81);
    }
  }
}

uint64_t MLS.OutgoingErrorOccurred.Trigger.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v84 = a6;
  *&v94 = a2;
  *(&v94 + 1) = a3;
  *&v95 = a4;
  *(&v95 + 1) = a5;
  v82 = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingErrorCodingKeys(255, &v94);
  WitnessTable = swift_getWitnessTable();
  v75 = type metadata accessor for KeyedDecodingContainer();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v87 = &v65 - v11;
  *&v94 = a2;
  *(&v94 + 1) = a3;
  *&v95 = a4;
  *(&v95 + 1) = a5;
  v12 = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingMessageCodingKeys(255, &v94);
  v13 = swift_getWitnessTable();
  v80 = v12;
  v79 = v13;
  v73 = type metadata accessor for KeyedDecodingContainer();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v83 = &v65 - v14;
  *&v94 = a2;
  *(&v94 + 1) = a3;
  *&v95 = a4;
  *(&v95 + 1) = a5;
  v15 = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger.ServerErrorMessageCodingKeys(255, &v94);
  v16 = swift_getWitnessTable();
  v77 = v15;
  v78 = v16;
  v71 = type metadata accessor for KeyedDecodingContainer();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v86 = &v65 - v17;
  *&v94 = a2;
  *(&v94 + 1) = a3;
  *&v95 = a4;
  *(&v95 + 1) = a5;
  type metadata accessor for MLS.OutgoingErrorOccurred.Trigger.CodingKeys(255, &v94);
  v91 = swift_getWitnessTable();
  v18 = type metadata accessor for KeyedDecodingContainer();
  v89 = *(v18 - 8);
  v90 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v65 - v19;
  v88 = a2;
  *&v94 = a2;
  *(&v94 + 1) = a3;
  v85 = a4;
  *&v95 = a4;
  *(&v95 + 1) = a5;
  v21 = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger(0, &v94);
  v76 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v65 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v65 - v28;
  v30 = a1[3];
  v93 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v31 = v92;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v31)
  {
    v32 = v86;
    v66 = v24;
    v67 = v27;
    v33 = v87;
    v69 = 0;
    v68 = v29;
    v91 = v21;
    v92 = v20;
    v34 = v90;
    *&v94 = KeyedDecodingContainer.allKeys.getter();
    type metadata accessor for Array();
    swift_getWitnessTable();
    *&v96 = ArraySlice.init<A>(_:)();
    *(&v96 + 1) = v35;
    *&v97 = v36;
    *(&v97 + 1) = v37;
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Collection<>.popFirst()();
    v38 = v94;
    if (v94 == 3 || (v65 = v96, v94 = v96, v95 = v97, (Collection.isEmpty.getter() & 1) == 0))
    {
      v46 = type metadata accessor for DecodingError();
      swift_allocError();
      v47 = v34;
      v49 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      v50 = v92;
      *v49 = v91;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v46 - 8) + 104))(v49, *MEMORY[0x277D84160], v46);
      swift_willThrow();
      (*(v89 + 8))(v50, v47);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1Tm(v93);
    }

    if (v38)
    {
      v39 = v92;
      if (v38 != 1)
      {
        LOBYTE(v94) = 2;
        v55 = v69;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v54 = v34;
        v64 = v84;
        if (!v55)
        {
          LOBYTE(v94) = 0;
          v56 = v66;
          v57 = v75;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_getTupleTypeMetadata2();
          LOBYTE(v94) = 1;
          lazy protocol witness table accessor for type MLS.SigningInput and conformance MLS.SigningInput();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v59 = v89;
          (*(v74 + 8))(v33, v57);
          (*(v59 + 8))(v92, v90);
          swift_unknownObjectRelease();
          v61 = v91;
          swift_storeEnumTagMultiPayload();
          v62 = *(v76 + 32);
          v63 = v68;
          v62(v68, v56, v61);
          goto LABEL_19;
        }

        v44 = *(v89 + 8);
        v45 = v39;
        goto LABEL_17;
      }

      LOBYTE(v94) = 1;
      v40 = v83;
      v41 = v69;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v41)
      {
        LOBYTE(v94) = 0;
        v42 = v67;
        v43 = v73;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        swift_getTupleTypeMetadata3();
        LOBYTE(v94) = 1;
        lazy protocol witness table accessor for type MLS.SigningInput and conformance MLS.SigningInput();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v58 = v89;
        v98 = 2;
        lazy protocol witness table accessor for type Data and conformance Data();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v60 = v42;
        (*(v72 + 8))(v40, v43);
        (*(v58 + 8))(v92, v90);
        swift_unknownObjectRelease();
        v61 = v91;
        swift_storeEnumTagMultiPayload();
        v62 = *(v76 + 32);
        v63 = v68;
        v62(v68, v60, v61);
        v64 = v84;
LABEL_19:
        v62(v64, v63, v61);
        return __swift_destroy_boxed_opaque_existential_1Tm(v93);
      }

      v44 = *(v89 + 8);
      v45 = v39;
    }

    else
    {
      LOBYTE(v94) = 0;
      v52 = v92;
      v53 = v69;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v53)
      {
        (*(v70 + 8))(v32, v71);
        (*(v89 + 8))(v52, v34);
        swift_unknownObjectRelease();
        v63 = v68;
        v61 = v91;
        swift_storeEnumTagMultiPayload();
        v62 = *(v76 + 32);
        v64 = v84;
        goto LABEL_19;
      }

      v44 = *(v89 + 8);
      v45 = v52;
    }

    v54 = v34;
LABEL_17:
    v44(v45, v54);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v93);
}

uint64_t MLS.OutgoingErrorOccurred.trigger.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v8[0] = *(a1 + 16);
  v8[1] = v5;
  v6 = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger(0, v8);
  return (*(*(v6 - 8) + 16))(a2, v2 + v4, v6);
}

uint64_t MLS.OutgoingErrorOccurred.clientContext.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

double MLS.OutgoingErrorOccurred.metricCollector.getter@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(v2 + *(a1 + 64));

  return result;
}

uint64_t MLS.OutgoingErrorOccurred.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E9950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72656767697274 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t MLS.OutgoingErrorOccurred.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x72656767697274;
  v3 = 0x6F43746E65696C63;
  if (a1 != 3)
  {
    v3 = 0x6F4363697274656DLL;
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

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.OutgoingEventType<A, B>.CodingKeys(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *, void, void, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5]);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLS.OutgoingEventType<A, B>.CodingKeys@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingErrorOccurred<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingErrorOccurred<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingErrorOccurred.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v18 = *(a2 + 24);
  v19 = v4;
  v22 = v4;
  v23 = v18;
  v16 = v5;
  v17 = v6;
  v24 = v5;
  v25 = v6;
  type metadata accessor for MLS.OutgoingErrorOccurred.CodingKeys(255, &v22);
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v20;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = 0;
  v12 = v21;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v12)
  {
    v13 = v18;
    v14 = v19;
    LOBYTE(v22) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(a2 + 56);
    v22 = v14;
    v26 = 2;
    v23 = v13;
    v24 = v16;
    v25 = v17;
    type metadata accessor for MLS.OutgoingErrorOccurred.Trigger(0, &v22);
    swift_getWitnessTable();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v22) = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = *(v11 + *(a2 + 64));
    v26 = 4;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t MLS.OutgoingErrorOccurred.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a6;
  v11 = type metadata accessor for Optional();
  v35 = *(v11 - 8);
  v36 = v11;
  MEMORY[0x28223BE20](v11);
  v33 = v30 - v12;
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v40 = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger(0, &v45);
  v37 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = v30 - v13;
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  type metadata accessor for MLS.OutgoingErrorOccurred.CodingKeys(255, &v45);
  swift_getWitnessTable();
  v43 = type metadata accessor for KeyedDecodingContainer();
  v38 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v15 = v30 - v14;
  v45 = a2;
  v46 = a3;
  v34 = a3;
  v47 = a4;
  v48 = a5;
  v41 = a5;
  v16 = type metadata accessor for MLS.OutgoingErrorOccurred(0, &v45);
  v31 = *(v16 - 1);
  MEMORY[0x28223BE20](v16);
  v18 = (v30 - v17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v42 = v15;
  v19 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v21 = v38;
  v20 = v39;
  v22 = v40;
  v44 = v18;
  LOBYTE(v45) = 0;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v44;
  *v44 = v23;
  *(v24 + 1) = v25;
  v30[2] = v25;
  LOBYTE(v45) = 1;
  *(v24 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v24 + 3) = v26;
  LOBYTE(v45) = 2;
  swift_getWitnessTable();
  v30[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v37 + 32))(&v24[v16[14]], v20, v22);
  LOBYTE(v45) = 3;
  v27 = v33;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v35 + 32))(&v24[v16[15]], v27, v36);
  v49 = 4;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v21 + 8))(v42, v43);
  *&v24[v16[16]] = v45;
  v28 = v31;
  (*(v31 + 16))(v32, v24, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return (*(v28 + 8))(v24, v16);
}

uint64_t MLS.OutgoingErrorOccurred.Trigger<>.convert<A, B>(memberType:clientContextType:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v10 = v5[5];
  *v36 = v5[4];
  *&v36[16] = v10;
  v37 = v5[6];
  v38 = *(v5 + 112);
  v11 = v5[1];
  v32 = *v5;
  v33 = v11;
  v12 = v5[3];
  v34 = v5[2];
  v35 = v12;
  if (v38)
  {
    if (v38 == 1)
    {
      v39 = a4;
      v29 = v32;
      v30 = v33;
      v31 = BYTE8(v33);
      v13 = *(a3 + 48);
      outlined copy of MLS.AllMember(v32, *(&v32 + 1));
      outlined init with copy of MLS.SigningInput(&v34, &v25);
      v13(&v29, a1, a3);
      if (v6)
      {
        return outlined destroy of MLS.SigningInput(&v34);
      }

      v17 = (a5 + *(swift_getTupleTypeMetadata2() + 48));
      v18 = v35;
      *v17 = v34;
      v17[1] = v18;
      v17[2] = *v36;
      *(v17 + 44) = *&v36[12];
      v25 = a1;
      v26 = a2;
      v27 = a3;
      v28 = v39;
      type metadata accessor for MLS.OutgoingErrorOccurred.Trigger(0, &v25);
    }

    else
    {
      v25 = a1;
      v26 = a2;
      v27 = a3;
      v28 = a4;
      type metadata accessor for MLS.OutgoingErrorOccurred.Trigger(0, &v25);
    }
  }

  else
  {
    v39 = a4;
    v15 = v37;
    v29 = v32;
    v30 = v33;
    v31 = BYTE8(v33);
    v16 = *(a3 + 48);
    outlined copy of MLS.AllMember(v32, *(&v32 + 1));
    outlined init with copy of MLS.SigningInput(&v34, &v25);
    outlined copy of Data._Representation(v15, *(&v15 + 1));
    v16(&v29, a1, a3);
    if (v6)
    {
      outlined consume of Data._Representation(v15, *(&v15 + 1));
      return outlined destroy of MLS.SigningInput(&v34);
    }

    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v20 = (a5 + *(TupleTypeMetadata3 + 48));
    v21 = (a5 + *(TupleTypeMetadata3 + 64));
    v22 = v35;
    *v20 = v34;
    v20[1] = v22;
    v20[2] = *v36;
    *(v20 + 44) = *&v36[12];
    *v21 = v15;
    v25 = a1;
    v26 = a2;
    v27 = a3;
    v28 = v39;
    type metadata accessor for MLS.OutgoingErrorOccurred.Trigger(0, &v25);
  }

  return swift_storeEnumTagMultiPayload();
}

double MLS.OutgoingEventType<>.convert<A, B>(memberType:clientContextType:)@<D0>(unint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v490 = a2;
  v486 = a1;
  v487 = a7;
  v504.n128_u64[0] = a3;
  v504.n128_u64[1] = a4;
  v488 = a5;
  *&v505 = a5;
  *(&v505 + 1) = a6;
  v492 = a6;
  v10 = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger(0, &v504);
  v471[1] = *(v10 - 8);
  v471[2] = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v480 = (v471 - v12);
  v489 = a3;
  MEMORY[0x28223BE20](v11);
  v472 = v471 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v493 = a4;
  v14 = type metadata accessor for Optional();
  v484 = *(v14 - 8);
  v485 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v473 = v471 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v474 = v471 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v476 = v471 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v483 = (v471 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v475 = v471 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v471 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = v471 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v482 = v471 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v481 = (v471 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = v471 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = v471 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = v471 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = v471 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v49 = v471 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v477 = v471 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v479 = v471 - v53;
  MEMORY[0x28223BE20](v52);
  v478 = v471 - v54;
  v55 = *(v7 + 144);
  v512[8] = *(v7 + 128);
  v512[9] = v55;
  v512[10] = *(v7 + 160);
  v513 = *(v7 + 176);
  v56 = *(v7 + 80);
  v512[4] = *(v7 + 64);
  v512[5] = v56;
  v57 = *(v7 + 112);
  v512[6] = *(v7 + 96);
  v512[7] = v57;
  v58 = *(v7 + 16);
  v512[0] = *v7;
  v512[1] = v58;
  v59 = *(v7 + 48);
  v512[2] = *(v7 + 32);
  v512[3] = v59;
  switch(_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOg(v512))
  {
    case 1u:
      destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
      v272 = v271;
      v274 = *v271;
      v273 = v271[1];
      v276 = v271[2];
      v275 = v271[3];
      v278 = v271[4];
      v277 = v271[5];

      v279 = v278;
      v280 = v491;
      v281 = v492;
      v282 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v279, v277, v493, v492, v479, v492);
      if (v280)
      {
        goto LABEL_38;
      }

      v482 = v275;
      v483 = v273;
      v472 = v276;
      v473 = v274;
      v490 = v471;
      v283 = v272[7];
      v495[0] = v272[6];
      v285 = v272[8];
      v284 = v272[9];
      v504.n128_u64[0] = v283;
      v504.n128_u64[1] = v285;
      v286 = v272[11];
      v491 = v272[10];
      *&v505 = v284;
      *(&v505 + 1) = v491;
      v287 = v272[12];
      v288 = v272[13];
      v496.n128_u64[0] = v286;
      v496.n128_u64[1] = v287;
      v289 = v272[14];
      v480 = v272[15];
      *&v497 = v288;
      *(&v497 + 1) = v289;
      v514 = v480;
      v290 = MEMORY[0x28223BE20](v495[0]);
      v481 = &v465;
      v466 = v489;
      v467 = v282;
      v468 = v488;
      v469 = v281;
      v470 = v486;
      v486 = v290;

      v477 = v285;

      v478 = v284;
      outlined copy of Data._Representation(v284, v491);
      v475 = v287;

      v474 = v288;
      v476 = v289;
      outlined copy of Data._Representation(v288, v289);

      v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
      v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v293 = lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance Set<A>();
      v294 = v489;
      v436 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in MLS.IncomingEventType<>.convert<A, B>(memberType:clientContextType:), v481, v291, v489, v292, v293, MEMORY[0x277D84950], &v494);

      v514 = v436;
      type metadata accessor for Array();
      v437 = v488;
      v438 = v492;
      swift_getWitnessTable();
      v439 = Set.init<A>(_:)();
      v441 = v272[16];
      v440 = v272[17];
      v442 = v272[19];
      v485 = v272[18];
      v486 = v442;
      v443 = v272[21];
      v490 = v272[20];
      v491 = v443;
      v444 = v493;
      MLS.OutgoingAddMember.init(identifier:storageIdentifier:clientContext:metricCollector:commit:welcome:members:epochAuthenticator:ratchetTree:groupInfo:)(v473, v483, v472, v482, v479, v495, &v504, &v496, v487, v439, v441, v440, v485, v442, v490, v443, v294, v493, v437, v438);
      v504.n128_u64[0] = v294;
      v504.n128_u64[1] = v444;
      *&v505 = v437;
      *(&v505 + 1) = v438;
      type metadata accessor for MLS.OutgoingEventType(0, &v504);
      swift_storeEnumTagMultiPayload();
      v434 = v441;
      v435 = v440;
      goto LABEL_45;
    case 2u:
      destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
      v211 = v210;
      v213 = *v210;
      v212 = v210[1];
      v215 = v210[2];
      v214 = v210[3];
      v217 = v210[4];
      v216 = v210[5];

      v218 = v217;
      v219 = v491;
      v220 = v492;
      v221 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v218, v216, v493, v492, v477, v492);
      if (v219)
      {
        goto LABEL_38;
      }

      v482 = v214;
      v483 = v212;
      v476 = v215;
      v478 = v213;
      v490 = v471;
      v222 = v211[7];
      v496.n128_u64[0] = v211[6];
      v224 = v211[8];
      v223 = v211[9];
      v504.n128_u64[0] = v222;
      v504.n128_u64[1] = v224;
      v225 = v211[10];
      v226 = v211[11];
      *&v505 = v223;
      *(&v505 + 1) = v225;
      v495[0] = v226;
      v227 = MEMORY[0x28223BE20](v496.n128_u64[0]);
      v491 = &v465;
      v228 = v489;
      v466 = v489;
      v467 = v221;
      v468 = v488;
      v469 = v220;
      v470 = v486;
      v486 = v227;

      v479 = v224;

      v480 = v225;
      v481 = v223;
      outlined copy of Data._Representation(v223, v225);

      v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
      v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v231 = lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance Set<A>();
      v232 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in MLS.IncomingEventType<>.convert<A, B>(memberType:clientContextType:), v491, v229, v228, v230, v231, MEMORY[0x277D84950], &v514);
      v491 = 0;
      v412 = v232;

      v495[0] = v412;
      type metadata accessor for Array();
      v413 = v488;
      swift_getWitnessTable();
      v414 = Set.init<A>(_:)();
      v416 = v211[12];
      v415 = v211[13];
      v417 = v211[14];
      v418 = v211[16];
      v419 = v211[17];
      v485 = v211[15];
      v486 = v418;
      v490 = v419;
      v420 = v492;
      v421 = v493;
      MLS.OutgoingKickMember.init(identifier:storageIdentifier:clientContext:metricCollector:commit:members:epochAuthenticator:ratchetTree:groupInfo:)(v478, v483, v476, v482, v477, &v496, &v504, v414, v487, v416, v415, v417, v485, v418, v419, v228, v493, v413, v492);
      v504.n128_u64[0] = v228;
      v504.n128_u64[1] = v421;
      *&v505 = v413;
      *(&v505 + 1) = v420;
      type metadata accessor for MLS.OutgoingEventType(0, &v504);
      swift_storeEnumTagMultiPayload();
      outlined copy of Data._Representation(v416, v415);
      v422 = v417;
      v423 = v485;
      goto LABEL_48;
    case 3u:
      destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
      v246 = *v245;
      v247 = v245[1];
      v248 = v245[3];
      v483 = v245[2];
      v484 = v246;
      v250 = v245[4];
      v249 = v245[5];
      v251 = v245[6];
      v482 = v245[7];
      v252 = v245[8];
      v253 = v245[9];
      v485 = v251;
      v486 = v252;
      v254 = v245[10];

      v255 = v250;
      v256 = v491;
      v258 = v492;
      v257 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v255, v249, v493, v492, v49, v492);
      if (v256)
      {
        goto LABEL_38;
      }

      v496.n128_u64[0] = v485;
      v504.n128_u64[0] = v482;
      v504.n128_u64[1] = v486;
      v481 = v253;
      *&v505 = v253;
      *(&v505 + 1) = v254;
      MLS.OutgoingRemoveSelf.init(identifier:storageIdentifier:clientContext:metricCollector:proposal:)(v484, v247, v483, v248, v49, &v496, &v504, v257, v487, v258);
      v504.n128_u64[0] = v489;
      v504.n128_u64[1] = v257;
      *&v505 = v488;
      *(&v505 + 1) = v258;
      type metadata accessor for MLS.OutgoingEventType(0, &v504);
      swift_storeEnumTagMultiPayload();

      outlined copy of Data._Representation(v481, v254);
      return result;
    case 4u:
      destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
      v145 = v144;
      v146 = v144[1];
      v486 = *v144;
      v148 = v144[2];
      v147 = v144[3];
      v150 = v144[4];
      v149 = v144[5];

      v151 = v150;
      v152 = v491;
      v154 = v492;
      v153 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v151, v149, v493, v492, v46, v492);
      if (v152)
      {
        goto LABEL_38;
      }

      v155 = v145[7];
      v496.n128_u64[0] = v145[6];
      v484 = v145[8];
      v485 = v496.n128_u64[0];
      v156 = v145[9];
      v504.n128_u64[0] = v155;
      v504.n128_u64[1] = v484;
      v158 = v145[10];
      v157 = v145[11];
      v482 = v156;
      v483 = v158;
      *&v505 = v156;
      *(&v505 + 1) = v158;
      v491 = 0;
      v139 = v145[12];
      v160 = v145[14];
      v159 = v145[15];
      v479 = v145[13];
      v480 = v160;
      v481 = v159;
      v490 = v145[16];
      v161 = v146;
      v143 = v157;
      MLS.OutgoingKeyUpdate.init(identifier:storageIdentifier:clientContext:metricCollector:commit:epochAuthenticator:ratchetTree:groupInfo:)(v486, v161, v148, v147, v46, &v496, &v504, v157, v487, v139, v479, v160, v159, v490, v153, v154);
      v504.n128_u64[0] = v489;
      v504.n128_u64[1] = v153;
      *&v505 = v488;
      *(&v505 + 1) = v154;
      type metadata accessor for MLS.OutgoingEventType(0, &v504);
      goto LABEL_12;
    case 5u:
      destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
      v296 = v295;
      v298 = *v295;
      v297 = v295[1];
      v299 = v295[3];
      v486 = v295[2];
      v301 = v295[4];
      v300 = v295[5];

      v302 = v301;
      v303 = v491;
      v305 = v492;
      v304 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v302, v300, v493, v492, v43, v492);
      if (v303)
      {
        goto LABEL_38;
      }

      v306 = v296[7];
      v496.n128_u64[0] = v296[6];
      v484 = v296[8];
      v485 = v496.n128_u64[0];
      v307 = v296[9];
      v504.n128_u64[0] = v306;
      v504.n128_u64[1] = v484;
      v308 = v296[11];
      v482 = v296[10];
      v483 = v307;
      *&v505 = v307;
      *(&v505 + 1) = v482;
      v309 = v296[13];
      v478 = v296[12];
      v479 = v309;
      v310 = v296[15];
      v480 = v296[14];
      v481 = v310;
      v490 = v296[16];
      v491 = 0;
      v311 = v488;
      v312 = v298;
      v313 = v489;
      v314 = v297;
      v315 = v308;
      MLS.OutgoingResync.init(identifier:storageIdentifier:clientContext:metricCollector:commit:epochAuthenticator:ratchetTree:groupInfo:)(v312, v314, v486, v299, v43, &v496, &v504, v308, v487, v478, v309, v480, v310, v490, v489, v304, v488, v305);
      v504.n128_u64[0] = v313;
      v504.n128_u64[1] = v304;
      *&v505 = v311;
      *(&v505 + 1) = v305;
      type metadata accessor for MLS.OutgoingEventType(0, &v504);
      swift_storeEnumTagMultiPayload();

      outlined copy of Data._Representation(v483, v482);
      v122 = v315;
      v123 = v478;
      goto LABEL_29;
    case 6u:
      destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
      v342 = *v341;
      v343 = *(v341 + 8);
      v344 = *(v341 + 24);
      v478 = *(v341 + 16);
      v479 = v342;
      v346 = *(v341 + 32);
      v345 = *(v341 + 40);
      v347 = *(v341 + 48);
      v482 = *(v341 + 56);
      v483 = v347;
      v348 = *(v341 + 64);
      v481 = *(v341 + 72);
      LODWORD(v480) = *(v341 + 80);
      v350 = *(v341 + 88);
      v349 = *(v341 + 96);
      v351 = *(v341 + 104);

      v352 = v346;
      v353 = v491;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v352, v345, v493, v492, v40, v492);
      if (v353)
      {
        goto LABEL_38;
      }

      v474 = v350;
      v475 = v349;
      v476 = v351;
      v477 = v344;
      v490 = v343;
      v354 = v482;
      v496.n128_u64[0] = v483;
      v504.n128_u64[0] = v482;
      v504.n128_u64[1] = v348;
      *&v505 = v481;
      BYTE8(v505) = v480;
      v355 = v488;
      v491 = *(v488 + 48);

      outlined copy of MLS.AllMember(v354, v348);
      v356 = v472;
      v357 = v489;
      v491(&v504, v489, v355);
      v452 = v356;
      v453 = v492;
      v454 = v493;
      v491 = 0;
      MLS.OutgoingFailureToDecrypt_v2.init(identifier:storageIdentifier:clientContext:metricCollector:member:failedIdentifier:failedIdentifiers:)(v479, v490, v478, v477, v40, &v496, v452, v474, v487, v475, v476, v357, v493, v355, v492);
      v504.n128_u64[0] = v357;
      v504.n128_u64[1] = v454;
      *&v505 = v355;
      *(&v505 + 1) = v453;
      type metadata accessor for MLS.OutgoingEventType(0, &v504);
      swift_storeEnumTagMultiPayload();

      goto LABEL_47;
    case 7u:
      destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
      v260 = *v259;
      v261 = v259[1];
      v262 = v259[3];
      v485 = v259[2];
      v486 = v260;
      v264 = v259[4];
      v263 = v259[5];
      v266 = v259[6];
      v265 = v259[7];

      v267 = v264;
      v268 = v491;
      v269 = v492;
      v270 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v267, v263, v493, v492, v37, v492);
      if (v268)
      {
        goto LABEL_38;
      }

      v504.n128_u64[0] = v266;
      v491 = 0;
      MLS.OutgoingFailureToDecrypt.init(identifier:storageIdentifier:clientContext:metricCollector:failedIdentifiers:)(v486, v261, v485, v262, v37, &v504, v265, v270, v487, v269);
      v504.n128_u64[0] = v489;
      v504.n128_u64[1] = v270;
      *&v505 = v488;
      *(&v505 + 1) = v269;
      type metadata accessor for MLS.OutgoingEventType(0, &v504);
      swift_storeEnumTagMultiPayload();

      goto LABEL_47;
    case 8u:
      destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
      v373 = v372;
      v375 = *v372;
      v374 = v372[1];
      v377 = v372[2];
      v376 = v372[3];
      v379 = v372[4];
      v378 = v372[5];

      v380 = v379;
      v381 = v491;
      v382 = v492;
      v383 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v380, v378, v493, v492, v481, v492);
      if (v381)
      {
        goto LABEL_38;
      }

      v482 = v376;
      v483 = v374;
      v472 = v377;
      v473 = v375;
      v490 = v471;
      v389 = v373[7];
      v495[0] = v373[6];
      v391 = v373[8];
      v390 = v373[9];
      v504.n128_u64[0] = v389;
      v504.n128_u64[1] = v391;
      v392 = v373[11];
      v491 = v373[10];
      *&v505 = v390;
      *(&v505 + 1) = v491;
      v393 = v373[12];
      v394 = v373[13];
      v496.n128_u64[0] = v392;
      v496.n128_u64[1] = v393;
      v395 = v373[14];
      v479 = v373[15];
      *&v497 = v394;
      *(&v497 + 1) = v395;
      v514 = v479;
      v396 = MEMORY[0x28223BE20](v495[0]);
      v480 = &v465;
      v466 = v489;
      v467 = v383;
      v468 = v488;
      v469 = v382;
      v470 = v486;
      v486 = v396;

      v477 = v391;

      v478 = v390;
      outlined copy of Data._Representation(v390, v491);
      v475 = v393;

      v474 = v394;
      v476 = v395;
      outlined copy of Data._Representation(v394, v395);

      v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
      v398 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v399 = lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance Set<A>();
      v400 = v489;
      v401 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in MLS.IncomingEventType<>.convert<A, B>(memberType:clientContextType:), v480, v397, v489, v398, v399, MEMORY[0x277D84950], &v494);
      v491 = 0;
      v455 = v401;

      v514 = v455;
      type metadata accessor for Array();
      v456 = v488;
      v457 = v492;
      swift_getWitnessTable();
      v458 = Set.init<A>(_:)();
      v460 = v373[16];
      v459 = v373[17];
      v461 = v373[19];
      v462 = v373[20];
      v463 = v373[21];
      v485 = v373[18];
      v486 = v462;
      v490 = v463;
      v464 = v493;
      MLS.OutgoingResurrectGroup.init(identifier:storageIdentifier:clientContext:metricCollector:commit:welcome:members:epochAuthenticator:ratchetTree:groupInfo:)(v473, v483, v472, v482, v481, v495, &v504, &v496, v487, v458, v460, v459, v485, v461, v462, v463, v400, v493, v456, v457);
      v504.n128_u64[0] = v400;
      v504.n128_u64[1] = v464;
      *&v505 = v456;
      *(&v505 + 1) = v457;
      type metadata accessor for MLS.OutgoingEventType(0, &v504);
      swift_storeEnumTagMultiPayload();
      outlined copy of Data._Representation(v460, v459);
      v422 = v485;
      v423 = v461;
LABEL_48:
      outlined copy of Data?(v422, v423);
      v185 = v486;
      goto LABEL_30;
    case 9u:
      destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
      v187 = v186;
      v189 = *v186;
      v188 = v186[1];
      v191 = v186[2];
      v190 = v186[3];
      v193 = v186[4];
      v192 = v186[5];

      v194 = v193;
      v195 = v491;
      v196 = v492;
      v197 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v194, v192, v493, v492, v482, v492);
      if (v195)
      {
        goto LABEL_38;
      }

      v481 = v190;
      v483 = v188;
      v472 = v191;
      v473 = v189;
      v490 = v471;
      v198 = v187[7];
      v495[0] = v187[6];
      v200 = v187[8];
      v199 = v187[9];
      v504.n128_u64[0] = v198;
      v504.n128_u64[1] = v200;
      v201 = v187[11];
      v491 = v187[10];
      *&v505 = v199;
      *(&v505 + 1) = v491;
      v202 = v187[12];
      v203 = v187[13];
      v496.n128_u64[0] = v201;
      v496.n128_u64[1] = v202;
      v204 = v187[14];
      v479 = v187[15];
      *&v497 = v203;
      *(&v497 + 1) = v204;
      v514 = v479;
      v205 = MEMORY[0x28223BE20](v495[0]);
      v480 = &v465;
      v466 = v489;
      v467 = v197;
      v468 = v488;
      v469 = v196;
      v470 = v486;
      v486 = v205;

      v477 = v200;

      v478 = v199;
      outlined copy of Data._Representation(v199, v491);
      v475 = v202;

      v474 = v203;
      v476 = v204;
      outlined copy of Data._Representation(v203, v204);

      v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
      v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v208 = lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance Set<A>();
      v209 = v489;
      v403 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in MLS.IncomingEventType<>.convert<A, B>(memberType:clientContextType:), v480, v206, v489, v207, v208, MEMORY[0x277D84950], &v494);

      v514 = v403;
      type metadata accessor for Array();
      v404 = v488;
      v405 = v492;
      swift_getWitnessTable();
      v406 = Set.init<A>(_:)();
      v408 = v187[16];
      v407 = v187[17];
      v409 = v187[19];
      v485 = v187[18];
      v486 = v409;
      v410 = v187[21];
      v490 = v187[20];
      v491 = v410;
      v411 = v493;
      MLS.OutgoingRecreateGroup.init(identifier:storageIdentifier:clientContext:metricCollector:commit:welcome:members:epochAuthenticator:ratchetTree:groupInfo:)(v473, v483, v472, v481, v482, v495, &v504, &v496, v487, v406, v408, v407, v485, v409, v490, v410, v209, v493, v404, v405);
      v504.n128_u64[0] = v209;
      v504.n128_u64[1] = v411;
      *&v505 = v404;
      *(&v505 + 1) = v405;
      type metadata accessor for MLS.OutgoingEventType(0, &v504);
      goto LABEL_46;
    case 0xAu:
      destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
      v359 = *v358;
      v360 = v358[1];
      v361 = v358[3];
      v483 = v358[2];
      v484 = v359;
      v363 = v358[4];
      v362 = v358[5];
      v364 = v358[6];
      v482 = v358[7];
      v365 = v358[8];
      v366 = v358[9];
      v485 = v364;
      v486 = v365;
      v367 = v358[10];

      v368 = v363;
      v369 = v491;
      v371 = v492;
      v370 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v368, v362, v493, v492, v30, v492);
      if (v369)
      {
        goto LABEL_38;
      }

      v496.n128_u64[0] = v485;
      v504.n128_u64[0] = v482;
      v504.n128_u64[1] = v486;
      v481 = v366;
      *&v505 = v366;
      *(&v505 + 1) = v367;
      MLS.OutgoingApplicationSend.init(identifier:storageIdentifier:clientContext:metricCollector:message:)(v484, v360, v483, v361, v30, &v496, &v504, v370, v487, v371);
      v504.n128_u64[0] = v489;
      v504.n128_u64[1] = v370;
      *&v505 = v488;
      *(&v505 + 1) = v371;
      type metadata accessor for MLS.OutgoingEventType(0, &v504);
      swift_storeEnumTagMultiPayload();

      outlined copy of Data._Representation(v481, v367);
      return result;
    case 0xBu:
      destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
      v125 = v124;
      v126 = v124[1];
      v486 = *v124;
      v128 = v124[2];
      v127 = v124[3];
      v130 = v124[4];
      v129 = v124[5];

      v131 = v130;
      v132 = v491;
      v134 = v492;
      v133 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v131, v129, v493, v492, v27, v492);
      if (v132)
      {
        goto LABEL_38;
      }

      v135 = v125[7];
      v496.n128_u64[0] = v125[6];
      v484 = v125[8];
      v485 = v496.n128_u64[0];
      v136 = v125[9];
      v504.n128_u64[0] = v135;
      v504.n128_u64[1] = v484;
      v138 = v125[10];
      v137 = v125[11];
      v482 = v136;
      v483 = v138;
      *&v505 = v136;
      *(&v505 + 1) = v138;
      v491 = 0;
      v139 = v125[12];
      v141 = v125[14];
      v140 = v125[15];
      v479 = v125[13];
      v480 = v141;
      v481 = v140;
      v490 = v125[16];
      v142 = v27;
      v143 = v137;
      MLS.OutgoingDowngrade.init(identifier:storageIdentifier:clientContext:metricCollector:commit:epochAuthenticator:ratchetTree:groupInfo:)(v486, v126, v128, v127, v142, &v496, &v504, v137, v487, v139, v479, v141, v140, v490, v133, v134);
      v504.n128_u64[0] = v489;
      v504.n128_u64[1] = v133;
      *&v505 = v488;
      *(&v505 + 1) = v134;
      type metadata accessor for MLS.OutgoingEventType(0, &v504);
LABEL_12:
      swift_storeEnumTagMultiPayload();

      outlined copy of Data._Representation(v482, v483);
      v122 = v143;
      v123 = v139;
      goto LABEL_29;
    case 0xCu:
      destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
      v163 = v162;
      v164 = v162[1];
      v486 = *v162;
      v166 = v162[2];
      v165 = v162[3];
      v168 = v162[4];
      v167 = v162[5];

      v169 = v475;
      v170 = v168;
      v171 = v491;
      v172 = v492;
      v173 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v170, v167, v493, v492, v475, v492);
      if (v171)
      {
        goto LABEL_38;
      }

      v174 = v163[7];
      v496.n128_u64[0] = v163[6];
      v481 = v163[8];
      v482 = v496.n128_u64[0];
      v175 = v163[9];
      v504.n128_u64[0] = v174;
      v504.n128_u64[1] = v481;
      v176 = v163[10];
      v177 = v163[11];
      v479 = v175;
      v480 = v176;
      *&v505 = v175;
      *(&v505 + 1) = v176;
      v491 = 0;
      v178 = v163[12];
      v474 = v163[13];
      v179 = v163[15];
      v476 = v163[14];
      v477 = v179;
      v180 = v163[17];
      v478 = v163[16];
      v182 = v163[18];
      v181 = v163[19];
      v483 = v180;
      v484 = v182;
      v485 = v181;
      v490 = v163[20];
      v183 = v164;
      v184 = v177;
      MLS.OutgoingGroupNameChange.init(identifier:storageIdentifier:clientContext:metricCollector:commit:encryptedGroupNameKey:encryptedGroupName:epochAuthenticator:ratchetTree:groupInfo:)(v486, v183, v166, v165, v169, &v496, &v504, v177, v487, v178, v474, v476, v179, v478, v180, v182, v181, v490, v173, v172);
      v504.n128_u64[0] = v489;
      v504.n128_u64[1] = v173;
      *&v505 = v488;
      *(&v505 + 1) = v172;
      type metadata accessor for MLS.OutgoingEventType(0, &v504);
      swift_storeEnumTagMultiPayload();

      outlined copy of Data._Representation(v479, v480);
      outlined copy of Data._Representation(v184, v178);
      outlined copy of Data._Representation(v474, v476);
      outlined copy of Data._Representation(v477, v478);
      outlined copy of Data?(v483, v484);
      v185 = v485;
      goto LABEL_30;
    case 0xDu:
      destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
      v318 = v317;
      v320 = *v317;
      v319 = v317[1];
      v322 = v317[2];
      v321 = v317[3];
      v324 = v317[4];
      v323 = v317[5];

      v325 = v324;
      v326 = v491;
      v327 = v492;
      v328 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v325, v323, v493, v492, v483, v492);
      if (v326)
      {
        goto LABEL_38;
      }

      v481 = v321;
      v482 = v319;
      v472 = v322;
      v473 = v320;
      v490 = v471;
      v329 = v318[7];
      v495[0] = v318[6];
      v331 = v318[8];
      v330 = v318[9];
      v504.n128_u64[0] = v329;
      v504.n128_u64[1] = v331;
      v332 = v318[11];
      v491 = v318[10];
      *&v505 = v330;
      *(&v505 + 1) = v491;
      v333 = v318[12];
      v334 = v318[13];
      v496.n128_u64[0] = v332;
      v496.n128_u64[1] = v333;
      v335 = v318[14];
      v479 = v318[15];
      *&v497 = v334;
      *(&v497 + 1) = v335;
      v514 = v479;
      v336 = MEMORY[0x28223BE20](v495[0]);
      v480 = &v465;
      v466 = v489;
      v467 = v328;
      v468 = v488;
      v469 = v327;
      v470 = v486;
      v486 = v336;

      v477 = v331;

      v478 = v330;
      outlined copy of Data._Representation(v330, v491);
      v475 = v333;

      v474 = v334;
      v476 = v335;
      outlined copy of Data._Representation(v334, v335);

      v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
      v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v339 = lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance Set<A>();
      v340 = v489;
      v445 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in MLS.IncomingEventType<>.convert<A, B>(memberType:clientContextType:), v480, v337, v489, v338, v339, MEMORY[0x277D84950], &v494);

      v514 = v445;
      type metadata accessor for Array();
      v446 = v488;
      v447 = v492;
      swift_getWitnessTable();
      v448 = Set.init<A>(_:)();
      v408 = v318[16];
      v407 = v318[17];
      v449 = v318[19];
      v485 = v318[18];
      v486 = v449;
      v450 = v318[21];
      v490 = v318[20];
      v491 = v450;
      v451 = v493;
      MLS.OutgoingReplaceExpiredCredentials.init(identifier:storageIdentifier:clientContext:metricCollector:commit:welcome:members:epochAuthenticator:ratchetTree:groupInfo:)(v473, v482, v472, v481, v483, v495, &v504, &v496, v487, v448, v408, v407, v485, v449, v490, v450, v340, v493, v446, v447);
      v504.n128_u64[0] = v340;
      v504.n128_u64[1] = v451;
      *&v505 = v446;
      *(&v505 + 1) = v447;
      type metadata accessor for MLS.OutgoingEventType(0, &v504);
LABEL_46:
      swift_storeEnumTagMultiPayload();
      outlined copy of Data._Representation(v408, v407);
      outlined copy of Data?(v485, v486);
      outlined copy of Data._Representation(v490, v491);
      return result;
    case 0xEu:
      destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
      v100 = v99;
      v101 = v99[1];
      v486 = *v99;
      v103 = v99[2];
      v102 = v99[3];
      v105 = v99[4];
      v104 = v99[5];

      v106 = v476;
      v107 = v105;
      v108 = v491;
      v109 = v492;
      v110 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v107, v104, v493, v492, v476, v492);
      if (v108)
      {
        goto LABEL_38;
      }

      v111 = v100[7];
      v496.n128_u64[0] = v100[6];
      v484 = v100[8];
      v485 = v496.n128_u64[0];
      v112 = v100[9];
      v504.n128_u64[0] = v111;
      v504.n128_u64[1] = v484;
      v113 = v100[10];
      v114 = v100[11];
      v482 = v112;
      v483 = v113;
      *&v505 = v112;
      *(&v505 + 1) = v113;
      v115 = v100[13];
      v478 = v100[12];
      v479 = v115;
      v116 = v100[15];
      v480 = v100[14];
      v481 = v116;
      v490 = v100[16];
      v491 = 0;
      v117 = v488;
      v118 = v106;
      v119 = v489;
      v120 = v101;
      v121 = v114;
      MLS.OutgoingProposalCommitted.init(identifier:storageIdentifier:clientContext:metricCollector:commit:epochAuthenticator:ratchetTree:groupInfo:)(v486, v120, v103, v102, v118, &v496, &v504, v114, v487, v478, v115, v480, v116, v490, v489, v110, v488, v109);
      v504.n128_u64[0] = v119;
      v504.n128_u64[1] = v110;
      *&v505 = v117;
      *(&v505 + 1) = v109;
      type metadata accessor for MLS.OutgoingEventType(0, &v504);
      swift_storeEnumTagMultiPayload();

      outlined copy of Data._Representation(v482, v483);
      v122 = v121;
      v123 = v478;
LABEL_29:
      outlined copy of Data._Representation(v122, v123);
      outlined copy of Data?(v479, v480);
      v185 = v481;
LABEL_30:
      outlined copy of Data._Representation(v185, v490);
      return result;
    case 0xFu:
      destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
      v234 = v233[1];
      v486 = *v233;
      v236 = v233[2];
      v235 = v233[3];
      v238 = v233[4];
      v237 = v233[5];
      v239 = v233[6];

      v240 = v474;
      v241 = v238;
      v242 = v491;
      v243 = v492;
      v244 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v241, v237, v493, v492, v474, v492);
      if (v242)
      {
        goto LABEL_38;
      }

      v504.n128_u64[0] = v239;
      v385 = v240;
      v386 = v488;
      v491 = 0;
      v387 = v234;
      v388 = v489;
      MLS.OutgoingGroupRepaired.init(identifier:storageIdentifier:clientContext:metricCollector:)(v486, v387, v236, v235, v385, &v504, v489, v244, v487, v488, v243);
      v504.n128_u64[0] = v388;
      v504.n128_u64[1] = v244;
      *&v505 = v386;
      *(&v505 + 1) = v243;
      type metadata accessor for MLS.OutgoingEventType(0, &v504);
      swift_storeEnumTagMultiPayload();
      goto LABEL_47;
    case 0x10u:
      destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
      v88 = v87;
      v89 = *(v87 + 8);
      v486 = *v87;
      v90 = *(v87 + 16);
      v91 = *(v87 + 24);
      v92 = *(v87 + 112);
      v508 = *(v87 + 96);
      v509 = v92;
      v510 = *(v87 + 128);
      v511 = *(v87 + 144);
      v93 = *(v87 + 48);
      v504 = *(v87 + 32);
      v505 = v93;
      v94 = *(v87 + 80);
      v506 = *(v87 + 64);
      v507 = v94;

      outlined init with copy of MLS.OutgoingErrorOccurred<MLS.AllMember, Data>.Trigger((v88 + 4), &v496);
      v95 = v488;
      v97 = v492;
      v96 = v493;
      v98 = v491;
      MLS.OutgoingErrorOccurred.Trigger<>.convert<A, B>(memberType:clientContextType:)(v489, v493, v488, v492, v480);
      if (v98)
      {
        v500 = v508;
        v501 = v509;
        v502 = v510;
        v503 = v511;
        v496 = v504;
        v497 = v505;
        v498 = v506;
        v499 = v507;
        outlined destroy of MLS.OutgoingErrorOccurred<MLS.AllMember, Data>.Trigger(&v496);
LABEL_38:
      }

      else
      {
        v484 = v90;
        v485 = v91;
        v500 = v508;
        v501 = v509;
        v502 = v510;
        v503 = v511;
        v496 = v504;
        v497 = v505;
        v498 = v506;
        v499 = v507;
        outlined destroy of MLS.OutgoingErrorOccurred<MLS.AllMember, Data>.Trigger(&v496);
        v384 = v473;
        static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v88[19], v88[20], v96, v97, v473, v97);
        v491 = 0;
        v495[0] = v88[21];
        v402 = v489;
        MLS.OutgoingErrorOccurred.init(identifier:storageIdentifier:trigger:clientContext:metricCollector:)(v486, v89, v484, v485, v480, v384, v495, v489, v487, v96, v95, v97);
        v495[0] = v402;
        v495[1] = v96;
        v495[2] = v95;
        v495[3] = v97;
        type metadata accessor for MLS.OutgoingEventType(0, v495);
        swift_storeEnumTagMultiPayload();
LABEL_47:
      }

      return result;
    default:
      destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
      v61 = v60;
      v63 = *v60;
      v62 = v60[1];
      v65 = v60[2];
      v64 = v60[3];
      v67 = v60[4];
      v66 = v60[5];

      v68 = v67;
      v69 = v491;
      v70 = v492;
      v71 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v68, v66, v493, v492, v478, v492);
      if (v69)
      {
        goto LABEL_38;
      }

      v481 = v64;
      v482 = v62;
      v474 = v65;
      v475 = v63;
      v483 = v471;
      v72 = v61[7];
      v495[0] = v61[6];
      v74 = v61[8];
      v73 = v61[9];
      v504.n128_u64[0] = v72;
      v504.n128_u64[1] = v74;
      v75 = v61[11];
      v490 = v61[10];
      v491 = v73;
      *&v505 = v73;
      *(&v505 + 1) = v490;
      v77 = v61[12];
      v76 = v61[13];
      v496.n128_u64[0] = v75;
      v496.n128_u64[1] = v77;
      v78 = v61[14];
      v79 = v61[15];
      *&v497 = v76;
      *(&v497 + 1) = v78;
      v514 = v79;
      v80 = MEMORY[0x28223BE20](v495[0]);
      v480 = &v465;
      v466 = v489;
      v467 = v71;
      v468 = v488;
      v469 = v70;
      v470 = v486;
      v486 = v80;

      v479 = v74;

      outlined copy of Data._Representation(v491, v490);
      v476 = v77;

      v477 = v78;
      outlined copy of Data._Representation(v76, v78);

      v81 = v70;
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v84 = lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance Set<A>();
      v85 = v82;
      v86 = v489;
      v424 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in MLS.IncomingEventType<>.convert<A, B>(memberType:clientContextType:), v480, v85, v489, v83, v84, MEMORY[0x277D84950], &v494);

      v514 = v424;
      type metadata accessor for Array();
      v425 = v81;
      v426 = v488;
      v427 = v493;
      swift_getWitnessTable();
      v428 = Set.init<A>(_:)();
      v429 = v61[16];
      v430 = v61[17];
      v431 = v61[19];
      v485 = v61[18];
      v486 = v431;
      v432 = v61[21];
      v490 = v61[20];
      v491 = v432;
      v433 = v429;
      MLS.OutgoingCreateGroup.init(identifier:storageIdentifier:clientContext:metricCollector:commit:welcome:members:epochAuthenticator:ratchetTree:groupInfo:)(v475, v482, v474, v481, v478, v495, &v504, &v496, v487, v428, v429, v430, v485, v431, v490, v432, v86, v427, v426, v425);
      v504.n128_u64[0] = v86;
      v504.n128_u64[1] = v427;
      *&v505 = v426;
      *(&v505 + 1) = v425;
      type metadata accessor for MLS.OutgoingEventType(0, &v504);
      swift_storeEnumTagMultiPayload();
      v434 = v433;
      v435 = v430;
LABEL_45:
      outlined copy of Data._Representation(v434, v435);
      outlined copy of Data?(v485, v486);
      outlined copy of Data._Representation(v490, v491);
      return result;
  }
}