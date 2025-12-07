uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RequestInstall(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t storeEnumTagSinglePayload for RequestInstall(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FilePath.exists()()
{
  v1 = type metadata accessor for FilePath();
  MEMORY[0x28223BE20](v1);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v3);
  FileStat.init(_:)(v3, v8);
  if (v0)
  {
    *&v8[0] = v0;
    v5 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      if (v7[3] == 2)
      {
      }
    }
  }

  return v0 == 0;
}

uint64_t FilePath.fileExists()(uint64_t (*a1)(uint64_t))
{
  v4 = type metadata accessor for FilePath();
  MEMORY[0x28223BE20](v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v1);
  v8 = FileStat.init(_:)(v6, v13);
  if (v2)
  {
    *&v13[0] = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = swift_dynamicCast();
    if (v10 && LODWORD(v12[0]) == 2)
    {

      LOBYTE(v10) = 0;
    }
  }

  else
  {
    v12[6] = v13[6];
    v12[7] = v13[7];
    v12[8] = v13[8];
    v12[2] = v13[2];
    v12[3] = v13[3];
    v12[4] = v13[4];
    v12[5] = v13[5];
    v12[0] = v13[0];
    v12[1] = v13[1];
    LOBYTE(v10) = a1(v8);
  }

  return v10 & 1;
}

uint64_t closure #1 in ResponseInstalledInfoPlists.infoPlists.getter@<X0>(uint64_t a1@<X8>)
{
  v24[4] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = NSFileHandle.readToEnd()();
  if (v6 >> 60 != 15)
  {
    v10 = v5;
    v11 = v6;
    v12 = objc_opt_self();
    v13 = v10;
    v14 = v11;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v24[0] = 0;
    v16 = [v12 propertyListWithData:isa options:0 format:0 error:v24];

    if (v16)
    {
      v17 = v24[0];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      if (swift_dynamicCast())
      {
        result = outlined consume of Data?(v13, v14);
        v19 = 0;
        v7 = v23[1];
        goto LABEL_2;
      }

      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
      v7 = swift_allocError();
      static CryptexError.error(_:_:file:function:lineNumber:)(v4, 0xD00000000000002BLL, 0x8000000226117510, 0xD00000000000002BLL, 0x80000002261174E0, 0x73696C506F666E69, 0xEA00000000007374, 38, v22);
      outlined destroy of CryptexError(v4);
    }

    else
    {
      v21 = v24[0];
      v7 = _convertNSErrorToError(_:)();
    }

    swift_willThrow();
    result = outlined consume of Data?(v13, v14);
    v19 = 1;
    goto LABEL_2;
  }

  lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
  v7 = swift_allocError();
  v9 = v8;
  NSFileHandle.path.getter();
  v18 = type metadata accessor for FilePath();
  v19 = 1;
  (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
  swift_storeEnumTagMultiPayload();
  result = swift_willThrow();
LABEL_2:
  *a1 = v7;
  *(a1 + 8) = v19;
  return result;
}

uint64_t ResponseInstalledInfoPlists.decode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();

  v6 = PropertyListDecoder.init()();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v7[5] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVySaySo12NSFileHandleCGGMd, &_ss12LazySequenceVySaySo12NSFileHandleCGGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for Result();
  lazy protocol witness table accessor for type LazySequence<[NSFileHandle]> and conformance LazySequence<A>();
  LazySequenceProtocol.map<A>(_:)();

  return v9;
}

uint64_t closure #1 in ResponseInstalledInfoPlists.decode<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = NSFileHandle.readToEnd()();
  if (v10 >> 60 == 15)
  {
    type metadata accessor for CryptexError(0);
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
    v12 = swift_allocError();
    v14 = v13;
    NSFileHandle.path.getter();
    v17 = type metadata accessor for FilePath();
    (*(*(v17 - 8) + 56))(v14, 0, 1, v17);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    *a4 = v12;
  }

  else
  {
    v15 = v9;
    v16 = v10;
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    outlined consume of Data?(v15, v16);
    (*(v6 + 32))(a4, v8, a3);
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for Result();
  return swift_storeEnumTagMultiPayload();
}

unint64_t lazy protocol witness table accessor for type LazySequence<[NSFileHandle]> and conformance LazySequence<A>()
{
  result = lazy protocol witness table cache variable for type LazySequence<[NSFileHandle]> and conformance LazySequence<A>;
  if (!lazy protocol witness table cache variable for type LazySequence<[NSFileHandle]> and conformance LazySequence<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss12LazySequenceVySaySo12NSFileHandleCGGMd, &_ss12LazySequenceVySaySo12NSFileHandleCGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazySequence<[NSFileHandle]> and conformance LazySequence<A>);
  }

  return result;
}

BOOL ResponseInstalledInfoPlists.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ResponseInstalledInfoPlists.CodingKeys.init(rawValue:), v2);

  return v3 != 0;
}

BOOL ResponseInstalledInfoPlists.CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ResponseInstalledInfoPlists.CodingKeys.init(stringValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ResponseInstalledInfoPlists.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ResponseInstalledInfoPlists.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ResponseInstalledInfoPlists.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance ResponseInstalledInfoPlists.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ResponseInstalledInfoPlists.CodingKeys(uint64_t a1@<X8>)
{
  strcpy(a1, "infoPlistFDs");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ResponseInstalledInfoPlists.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance ResponseInstalledInfoPlists.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResponseInstalledInfoPlists.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResponseInstalledInfoPlists.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static ResponseInstalledInfoPlists.from(xpc:)@<X0>(void *a2@<X8>)
{
  v4 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12NSFileHandleCGMd, &_sSaySo12NSFileHandleCGMR);
  v16[3] = &type metadata for ResponseInstalledInfoPlists.CodingKeys;
  v16[4] = lazy protocol witness table accessor for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys();
  v9 = lazy protocol witness table accessor for type [NSFileHandle] and conformance <A> [A]();
  OS_xpc_object.decode<A>(_:forKey:)(v16, ObjectType, v8, v9, &v17);
  result = __swift_destroy_boxed_opaque_existential_0(v16);
  if (!v2)
  {
    if (v17)
    {
      *a2 = v17;
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      strcpy(v16, "Missing key ");
      BYTE5(v16[1]) = 0;
      HIWORD(v16[1]) = -5120;
      lazy protocol witness table accessor for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys();
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA74CD0](v11);

      v12 = v16[0];
      v13 = v16[1];
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
      swift_allocError();
      static CryptexError.error(_:_:file:function:lineNumber:)(v6, v12, v13, 0xD00000000000002BLL, 0x80000002261174E0, 0x637078286D6F7266, 0xEA0000000000293ALL, 73, v14);

      outlined destroy of CryptexError(v6);
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [NSFileHandle] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [NSFileHandle] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [NSFileHandle] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo12NSFileHandleCGMd, &_sSaySo12NSFileHandleCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [NSFileHandle] and conformance <A> [A]);
  }

  return result;
}

uint64_t ResponseInstalledInfoPlists.populate(xpcDict:)(void *a1)
{
  v2 = *v1;
  swift_getObjectType();
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12NSFileHandleCGMd, &_sSaySo12NSFileHandleCGMR);
  v5[4] = lazy protocol witness table accessor for type [NSFileHandle] and conformance <A> [A]();
  v5[0] = v2;
  v4[3] = &type metadata for ResponseInstalledInfoPlists.CodingKeys;
  v4[4] = lazy protocol witness table accessor for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys();

  OS_xpc_object.encode(_:forKey:)(v5, v4);
  __swift_destroy_boxed_opaque_existential_0(v4);
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance InstallOptionsCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InstallOptionsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InstallOptionsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Cryptex.InstallOptions.populate(xpcDict:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  LOBYTE(v12[0]) = v3;
  BYTE1(v12[0]) = v4;
  BYTE2(v12[0]) = v5;
  BYTE3(v12[0]) = v6;
  lazy protocol witness table accessor for type Cryptex.InstallOptions and conformance Cryptex.InstallOptions();
  v7 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v9 = v8;

  if (!v2)
  {
    swift_getObjectType();
    v12[3] = MEMORY[0x277CC9318];
    v12[4] = &protocol witness table for Data;
    v12[0] = v7;
    v12[1] = v9;
    v11[3] = &unk_2839565F8;
    v11[4] = lazy protocol witness table accessor for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys();
    outlined copy of Data._Representation(v7, v9);
    OS_xpc_object.encode(_:forKey:)(v12, v11);
    outlined consume of Data._Representation(v7, v9);
    __swift_destroy_boxed_opaque_existential_0(v11);
    return __swift_destroy_boxed_opaque_existential_0(v12);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Cryptex.InstallOptions and conformance Cryptex.InstallOptions()
{
  result = lazy protocol witness table cache variable for type Cryptex.InstallOptions and conformance Cryptex.InstallOptions;
  if (!lazy protocol witness table cache variable for type Cryptex.InstallOptions and conformance Cryptex.InstallOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex.InstallOptions and conformance Cryptex.InstallOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Cryptex.InstallOptions and conformance Cryptex.InstallOptions;
  if (!lazy protocol witness table cache variable for type Cryptex.InstallOptions and conformance Cryptex.InstallOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex.InstallOptions and conformance Cryptex.InstallOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys()
{
  result = lazy protocol witness table cache variable for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys;
  if (!lazy protocol witness table cache variable for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys;
  if (!lazy protocol witness table cache variable for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys;
  if (!lazy protocol witness table cache variable for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys;
  if (!lazy protocol witness table cache variable for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys);
  }

  return result;
}

uint64_t static Cryptex.InstallOptions.from(xpc:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v6[3] = &unk_2839565F8;
  v6[4] = lazy protocol witness table accessor for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys();
  OS_xpc_object.decodeRequiredObject<A>(_:forKey:)(MEMORY[0x277CC9318], v6, ObjectType, MEMORY[0x277CC9318], &protocol witness table for Data);
  result = __swift_destroy_boxed_opaque_existential_0(v6);
  if (!v1)
  {
    v4 = v6[5];
    v5 = v6[6];
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    lazy protocol witness table accessor for type Cryptex.InstallOptions and conformance Cryptex.InstallOptions();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    return outlined consume of Data._Representation(v4, v5);
  }

  return result;
}

uint64_t protocol witness for static XpcCodable.from(xpc:) in conformance UInt@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized static UInt.from(xpc:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t specialized static UInt.from(xpc:)(void *a1)
{
  v2 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x22AA75EA0](a1);
  if (v5 == XPC_TYPE_UINT64.getter())
  {
    return xpc_uint64_get_value(a1);
  }

  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
  swift_allocError();
  static CryptexError.error(_:_:file:function:lineNumber:)(v4, 0xD000000000000013, 0x8000000226117540, 0xD000000000000020, 0x8000000226117560, 0x637078286D6F7266, 0xEA0000000000293ALL, 13, v6);
  outlined destroy of CryptexError(v4);
  return swift_willThrow();
}

id SendableXPCObj.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC10CryptexKit14SendableXPCObj_value] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SendableXPCObj.init(_:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC10CryptexKit14SendableXPCObj_value] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SendableXPCObj();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SendableXPCObj.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SendableXPCObj.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SendableXPCObj();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Image4PropertySpec._4ccStr.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Image4PropertySpec._4cc.getter()
{
  v0 = String.utf8CString.getter();
  v1 = _str24cc((v0 + 32));

  return v1;
}

uint64_t Image4PropertySpec.init(_4ccStr:trustSection:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void static Image4PropertySpec.type.getter(void *a1@<X8>)
{
  *a1 = 1701869940;
  a1[1] = 0xE400000000000000;
  v1 = MEMORY[0x277D84D38];
  a1[2] = 1;
  a1[3] = v1;
}

void static Image4PropertySpec.subType.getter(void *a1@<X8>)
{
  *a1 = 1887007859;
  a1[1] = 0xE400000000000000;
  v1 = MEMORY[0x277D84D38];
  a1[2] = 1;
  a1[3] = v1;
}

void static Image4PropertySpec.dataOnly.getter(void *a1@<X8>)
{
  *a1 = 1635017060;
  a1[1] = 0xE400000000000000;
  v1 = MEMORY[0x277D839B0];
  a1[2] = 1;
  a1[3] = v1;
}

BOOL static Image4PropertySpec.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v4 && v3 == v5;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v7)
  {
    return v2 == v4 && v3 == v5;
  }

  return result;
}

uint64_t Image4Auth.read(property:from:)(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v12 = 0;
  v13[0] = 0;

  result = specialized Image4Auth.evaluate(ticketData:type:configure:)(a2, a3, MEMORY[0x277D829D0], v10, v6, v7, v8, v9, &v12, v13);
  if (!v3)
  {
    if (v13[0])
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v12 = 0;
  v13[0] = 0;

  result = specialized Image4Auth.evaluate(ticketData:type:configure:)(a2, a3, MEMORY[0x277D829D0], v10, v6, v7, v8, v9, &v12, v13);
  if (!v3)
  {
    if (v13[0])
    {
      return v12;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t specialized Image4Auth.evaluate(ticketData:type:configure:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!image4_environment_new())
  {
    type metadata accessor for CryptexError(0);
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v13 != 2)
    {
      if (a3)
      {
        goto LABEL_25;
      }

      goto LABEL_40;
    }

    v14 = *(a1 + 16);
    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
LABEL_37:
      MEMORY[0x22AA74760]();
      if (!a3)
      {
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    v16 = v15;
    v17 = __DataStorage._offset.getter();
    v18 = __OFSUB__(v14, v17);
    v19 = v14 - v17;
    if (v18)
    {
      goto LABEL_33;
    }

    MEMORY[0x22AA74760]();
    if (!a3)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (!(v19 + v16))
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      result = MEMORY[0x22AA74760]();
      if (!a3)
      {
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (!__OFSUB__(*(a1 + 24), *(a1 + 16)))
    {
LABEL_21:
      v25 = image4_trust_new();
      if (v25)
      {
        v26 = String.utf8CString.getter();
        _str24cc((v26 + 32));

        image4_trust_record_property_integer();
        type metadata accessor for CryptexError(0);
        lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
        v27 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        image4_trust_evaluate();
        if (v27)
        {
          goto LABEL_27;
        }

        goto LABEL_29;
      }

LABEL_28:
      type metadata accessor for CryptexError(v25);
      lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
LABEL_30:
      image4_environment_destroy();
    }

    __break(1u);
  }

  else if (!v13)
  {
    if (a3)
    {
LABEL_25:
      v25 = image4_trust_new();
      if (v25)
      {
        v28 = String.utf8CString.getter();
        _str24cc((v28 + 32));

        image4_trust_record_property_integer();
        type metadata accessor for CryptexError(0);
        lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
        v29 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        image4_trust_evaluate();
        if (v29)
        {
LABEL_27:
          swift_willThrow();
        }

LABEL_29:
        image4_trust_destroy();
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_37;
  }

  if (a1 > a1 >> 32)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v20 = __DataStorage._bytes.getter();
  if (!v20)
  {
    goto LABEL_41;
  }

  v21 = v20;
  v22 = __DataStorage._offset.getter();
  v23 = a1 - v22;
  if (__OFSUB__(a1, v22))
  {
    goto LABEL_34;
  }

  result = MEMORY[0x22AA74760]();
  if (!a3)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v23 + v21)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_21;
    }

LABEL_35:
    __break(1u);
  }

LABEL_43:
  __break(1u);
  return result;
}

{
  if (!image4_environment_new())
  {
    type metadata accessor for CryptexError(0);
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v13 != 2)
    {
      if (a3)
      {
        goto LABEL_25;
      }

      goto LABEL_40;
    }

    v14 = *(a1 + 16);
    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
LABEL_37:
      MEMORY[0x22AA74760]();
      if (!a3)
      {
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    v16 = v15;
    v17 = __DataStorage._offset.getter();
    v18 = __OFSUB__(v14, v17);
    v19 = v14 - v17;
    if (v18)
    {
      goto LABEL_33;
    }

    MEMORY[0x22AA74760]();
    if (!a3)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (!(v19 + v16))
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      result = MEMORY[0x22AA74760]();
      if (!a3)
      {
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (!__OFSUB__(*(a1 + 24), *(a1 + 16)))
    {
LABEL_21:
      v25 = image4_trust_new();
      if (v25)
      {
        v26 = String.utf8CString.getter();
        _str24cc((v26 + 32));

        image4_trust_record_property_BOOL();
        type metadata accessor for CryptexError(0);
        lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
        v27 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        image4_trust_evaluate();
        if (v27)
        {
          goto LABEL_27;
        }

        goto LABEL_29;
      }

LABEL_28:
      type metadata accessor for CryptexError(v25);
      lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
LABEL_30:
      image4_environment_destroy();
    }

    __break(1u);
  }

  else if (!v13)
  {
    if (a3)
    {
LABEL_25:
      v25 = image4_trust_new();
      if (v25)
      {
        v28 = String.utf8CString.getter();
        _str24cc((v28 + 32));

        image4_trust_record_property_BOOL();
        type metadata accessor for CryptexError(0);
        lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
        v29 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        image4_trust_evaluate();
        if (v29)
        {
LABEL_27:
          swift_willThrow();
        }

LABEL_29:
        image4_trust_destroy();
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_37;
  }

  if (a1 > a1 >> 32)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v20 = __DataStorage._bytes.getter();
  if (!v20)
  {
    goto LABEL_41;
  }

  v21 = v20;
  v22 = __DataStorage._offset.getter();
  v23 = a1 - v22;
  if (__OFSUB__(a1, v22))
  {
    goto LABEL_34;
  }

  result = MEMORY[0x22AA74760]();
  if (!a3)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v23 + v21)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_21;
    }

LABEL_35:
    __break(1u);
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t specialized Image4Auth.evaluate(ticketData:type:configure:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!image4_environment_new())
  {
    type metadata accessor for CryptexError(0);
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_36:
    v31 = a5;
LABEL_37:
    outlined consume of Data._Representation(v31, a6);
  }

  v15 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v15 != 2)
    {
      if (a3)
      {
LABEL_25:
        v27 = image4_trust_new();
        if (!v27)
        {
          type metadata accessor for CryptexError(0);
          lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          goto LABEL_35;
        }

        closure #1 in Image4Auth.authenticate(fileData:with4cc:against:)(v27, a5, a6, a7);
        if (v8)
        {
          image4_trust_destroy();
LABEL_35:
          image4_environment_destroy();
          goto LABEL_36;
        }

        v28 = a5;
        type metadata accessor for CryptexError(0);
        lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
        v29 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        image4_trust_evaluate();
        if (v29)
        {
          swift_willThrow();
          image4_trust_destroy();
          a5 = v28;
          goto LABEL_35;
        }

        image4_trust_destroy();
        v32 = v28;
LABEL_40:
        image4_environment_destroy();
        v31 = v32;
        goto LABEL_37;
      }

      goto LABEL_49;
    }

    v34 = a5;
    v33 = a6;
    v16 = *(a1 + 16);
    v17 = __DataStorage._bytes.getter();
    if (!v17)
    {
LABEL_46:
      MEMORY[0x22AA74760]();
      if (!a3)
      {
        goto LABEL_47;
      }

      goto LABEL_48;
    }

    v18 = v17;
    v19 = __DataStorage._offset.getter();
    v20 = __OFSUB__(v16, v19);
    a6 = v16 - v19;
    if (v20)
    {
      goto LABEL_42;
    }

    a5 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    MEMORY[0x22AA74760]();
    if (!a3)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (!(a6 + v18))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      result = MEMORY[0x22AA74760]();
      if (!a3)
      {
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    if (!__OFSUB__(*(a1 + 24), *(a1 + 16)))
    {
LABEL_21:
      v26 = image4_trust_new();
      a6 = v33;
      if (v26)
      {
        closure #1 in Image4Auth.authenticate(fileData:with4cc:against:)(v26, v34, v33, a7);
        if (v8)
        {
          image4_trust_destroy();
        }

        else
        {
          type metadata accessor for CryptexError(0);
          lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
          v30 = swift_allocError();
          swift_storeEnumTagMultiPayload();
          image4_trust_evaluate();
          if (!v30)
          {
            image4_trust_destroy();
            v32 = v34;
            goto LABEL_40;
          }

          swift_willThrow();
          image4_trust_destroy();
        }
      }

      else
      {
        type metadata accessor for CryptexError(0);
        lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      a5 = v34;
      goto LABEL_35;
    }

    __break(1u);
  }

  else if (!v15)
  {
    if (a3)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_46;
  }

  v34 = a5;
  v33 = a6;
  if (a1 > a1 >> 32)
  {
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v21 = __DataStorage._bytes.getter();
  if (!v21)
  {
    goto LABEL_50;
  }

  v22 = v21;
  v23 = __DataStorage._offset.getter();
  v24 = a1 - v23;
  if (__OFSUB__(a1, v23))
  {
    goto LABEL_43;
  }

  result = MEMORY[0x22AA74760]();
  if (!a3)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v24 + v22)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_21;
    }

LABEL_44:
    __break(1u);
  }

LABEL_52:
  __break(1u);
  return result;
}

uint64_t Image4Auth.evaluate(ticketData:type:configure:)(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!image4_environment_new())
  {
    type metadata accessor for CryptexError(0);
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      if (a3)
      {
        goto LABEL_24;
      }

      goto LABEL_43;
    }

    v24 = a4;
    v11 = *(a1 + 16);
    v12 = __DataStorage._bytes.getter();
    if (!v12)
    {
LABEL_40:
      MEMORY[0x22AA74760]();
      if (!a3)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    v13 = v12;
    v14 = __DataStorage._offset.getter();
    v15 = __OFSUB__(v11, v14);
    v16 = v11 - v14;
    if (!v15)
    {
      MEMORY[0x22AA74760]();
      if (!a3)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (!(v16 + v13))
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        result = MEMORY[0x22AA74760]();
        if (!a3)
        {
          goto LABEL_45;
        }

        goto LABEL_46;
      }

      if (!__OFSUB__(*(a1 + 24), *(a1 + 16)))
      {
LABEL_20:
        v21 = image4_trust_new();
        if (v21)
        {
          v24();
          if (v4)
          {
            goto LABEL_32;
          }

          type metadata accessor for CryptexError(0);
          lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
          v23 = swift_allocError();
          swift_storeEnumTagMultiPayload();
          image4_trust_evaluate();
          if (!v23)
          {
            goto LABEL_32;
          }

LABEL_31:
          swift_willThrow();
LABEL_32:
          image4_trust_destroy();
          return image4_environment_destroy();
        }

LABEL_27:
        type metadata accessor for CryptexError(v21);
        lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return image4_environment_destroy();
      }

      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if (!v9)
  {
    if (a3)
    {
LABEL_24:
      v21 = image4_trust_new();
      if (v21)
      {
        a4();
        if (v4)
        {
          goto LABEL_32;
        }

        type metadata accessor for CryptexError(0);
        lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
        v22 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        image4_trust_evaluate();
        if (!v22)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_40;
  }

  v24 = a4;
  if (a1 > a1 >> 32)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v17 = __DataStorage._bytes.getter();
  if (!v17)
  {
    goto LABEL_44;
  }

  v18 = v17;
  v19 = __DataStorage._offset.getter();
  v20 = a1 - v19;
  if (__OFSUB__(a1, v19))
  {
    goto LABEL_36;
  }

  result = MEMORY[0x22AA74760]();
  if (!a3)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v20 + v18)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_20;
    }

LABEL_38:
    __break(1u);
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t Image4Auth.authenticate(fileData:with4cc:against:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  outlined copy of Data._Representation(a1, a2);

  return specialized Image4Auth.evaluate(ticketData:type:configure:)(a5, a6, MEMORY[0x277D829C0], v12, a1, a2, a3, a4);
}

uint64_t closure #1 in Image4Auth.authenticate(fileData:with4cc:against:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_3;
    }

    v7 = *(a2 + 16);
    v8 = __DataStorage._bytes.getter();
    if (v8)
    {
      v9 = __DataStorage._offset.getter();
      if (__OFSUB__(v7, v9))
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
      }

      v8 += v7 - v9;
    }

    MEMORY[0x22AA74760]();
    v10 = String.utf8CString.getter();
    _str24cc((v10 + 32));

    if (!v8)
    {
      __break(1u);
      goto LABEL_27;
    }

    if (!__OFSUB__(*(a2 + 24), *(a2 + 16)))
    {
LABEL_17:

      return image4_trust_set_payload();
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v5)
  {
LABEL_3:
    v6 = String.utf8CString.getter();
    _str24cc((v6 + 32));

    return image4_trust_set_payload();
  }

  if (a2 > a2 >> 32)
  {
    __break(1u);
    goto LABEL_22;
  }

  v12 = __DataStorage._bytes.getter();
  if (v12)
  {
    v13 = __DataStorage._offset.getter();
    if (__OFSUB__(a2, v13))
    {
      goto LABEL_25;
    }

    v12 += a2 - v13;
  }

  MEMORY[0x22AA74760]();
  v14 = String.utf8CString.getter();
  _str24cc((v14 + 32));

  if (v12)
  {
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      goto LABEL_17;
    }

    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t protocol witness for AssetAuthenticatorProtocol.authenticate(fileData:with4cc:against:) in conformance Image4Auth(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  outlined copy of Data._Representation(a1, a2);

  return specialized Image4Auth.evaluate(ticketData:type:configure:)(a5, a6, MEMORY[0x277D829C0], v12, a1, a2, a3, a4);
}

uint64_t protocol witness for AssetAuthenticatorProtocol.read(property:from:) in conformance Image4Auth(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  result = Image4Auth.read(property:from:)(a1, a2, a3);
  if (v3)
  {
    return v5;
  }

  return result;
}

{
  return Image4Auth.read(property:from:)(a1, a2, a3);
}

uint64_t dispatch thunk of AssetAuthenticatorProtocol.read(property:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 16))(a1, a2, a3, a4);
}

{
  return (*(a5 + 24))(a1, a2, a3, a4);
}

uint64_t type metadata instantiation function for Image4PropertySpec(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Image4PropertySpec(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Image4PropertySpec(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for image4_trust_section_t()
{
  if (!lazy cache variable for type metadata for image4_trust_section_t)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for image4_trust_section_t);
    }
  }
}

void specialized closure #1 in closure #1 in closure #1 in Image4Auth.evaluate(ticketData:type:configure:)(uint64_t a1, NSObject **a2)
{
  if (a2)
  {
    v3 = a1;
    if (!a1)
    {
      v16 = *a2;
      *a2 = 0;

      goto LABEL_10;
    }

    type metadata accessor for CryptexError(0);
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
    v4 = swift_allocError();
    v6 = v5;
    v7 = POSIXErrorCode.init(rawValue:)();
    *v6 = v7;
    *(v6 + 4) = BYTE4(v7) & 1;
    swift_storeEnumTagMultiPayload();
    v8 = *a2;
    *a2 = v4;

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, logger);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v10))
    {
LABEL_8:
      v16 = oslog;

LABEL_10:

      return;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    if (strerror(v3))
    {
      v13 = String.init(cString:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v18);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_2260DF000, oslog, v10, "Authentication failed: %s\n", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x22AA75CB0](v12, -1, -1);
      MEMORY[0x22AA75CB0](v11, -1, -1);
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t _img4_nonce.init(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVy10Foundation4DataV_GMd, &_ss18EnumeratedSequenceV8IteratorVy10Foundation4DataV_GMR);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v32 - v11);
  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v15 = *(a1 + 16);
      v14 = *(a1 + 24);
      v16 = __OFSUB__(v14, v15);
      v17 = v14 - v15;
      if (v16)
      {
        goto LABEL_44;
      }

      if (v17 == 48)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    if (!v13)
    {
      if (BYTE6(a2) != 48)
      {
        goto LABEL_14;
      }

LABEL_8:
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      v37 = 0u;
      v34 = v10;
      if (v13 == 2)
      {
        goto LABEL_24;
      }

      if (v13 != 1)
      {
        HIDWORD(v40) = BYTE6(a2);
        goto LABEL_29;
      }

      LODWORD(v18) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v18 = v18;
        goto LABEL_25;
      }

      goto LABEL_46;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_45;
    }

    if (HIDWORD(a1) - a1 == 48)
    {
      goto LABEL_8;
    }
  }

LABEL_14:
  swift_storeEnumTagMultiPayload();
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_41;
  }

LABEL_15:
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, logger);
  outlined copy of Data._Representation(a1, a2);
  v12 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v12, v20))
  {
    outlined consume of Data._Representation(a1, a2);
LABEL_39:

    _s10CryptexKit0A5ErrorOACs0C0AAWlTm_1(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError, &protocol conformance descriptor for CryptexError);
    swift_allocError();
    outlined init with copy of CryptexError(v8, v31);
    swift_willThrow();
    outlined consume of Data._Representation(a1, a2);
    return outlined destroy of CryptexError(v8);
  }

  v21 = swift_slowAlloc();
  *v21 = 134218240;
  if (v13 <= 1)
  {
    if (v13)
    {
      LODWORD(v22) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_48;
      }

      v22 = v22;
    }

    else
    {
      v22 = BYTE6(a2);
    }

    goto LABEL_38;
  }

  if (v13 != 2)
  {
    v22 = 0;
LABEL_38:
    *(v21 + 4) = v22;
    v30 = v21;
    outlined consume of Data._Representation(a1, a2);
    *(v30 + 12) = 1024;
    *(v30 + 14) = 48;
    _os_log_impl(&dword_2260DF000, v12, v20, "Nonce length (%ld) != expected (%u)", v30, 0x12u);
    MEMORY[0x22AA75CB0](v30, -1, -1);
    goto LABEL_39;
  }

  v24 = *(a1 + 16);
  v23 = *(a1 + 24);
  v16 = __OFSUB__(v23, v24);
  v22 = v23 - v24;
  if (!v16)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_24:
  v26 = *(a1 + 16);
  v25 = *(a1 + 24);
  v16 = __OFSUB__(v25, v26);
  v18 = v25 - v26;
  if (v16)
  {
    goto LABEL_47;
  }

LABEL_25:
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }

  if (HIDWORD(v18))
  {
    goto LABEL_43;
  }

  HIDWORD(v40) = v18;
  outlined copy of Data._Representation(a1, a2);
LABEL_29:
  Data.Iterator.init(_:at:)();
  v8 = type metadata accessor for Data.Iterator();
  _s10CryptexKit0A5ErrorOACs0C0AAWlTm_1(&lazy protocol witness table cache variable for type Data.Iterator and conformance Data.Iterator, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
  dispatch thunk of IteratorProtocol.next()();
  v13 = 0;
  if (v36)
  {
    goto LABEL_34;
  }

  v33 = a3;
  v27 = 0;
  a3 = &v37 + 2;
  do
  {
    v13 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_41:
      swift_once();
      goto LABEL_15;
    }

    *(&v37 + v27 + 2) = v35;
    dispatch thunk of IteratorProtocol.next()();
    ++v27;
  }

  while ((v36 & 1) == 0);
  a3 = v33;
LABEL_34:
  outlined consume of Data._Representation(a1, a2);
  *(&v12->isa + *(v34 + 36)) = v13;
  result = outlined destroy of EnumeratedSequence<Data>.Iterator(v12);
  v29 = v38;
  *a3 = v37;
  *(a3 + 1) = v29;
  *(a3 + 2) = v39;
  *(a3 + 6) = v40;
  return result;
}

uint64_t _img4_nonce.data.getter()
{
  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  return 0x3000000000;
}

uint64_t _s10CryptexKit0A5ErrorOACs0C0AAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of EnumeratedSequence<Data>.Iterator(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVy10Foundation4DataV_GMd, &_ss18EnumeratedSequenceV8IteratorVy10Foundation4DataV_GMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int CryptexPersonalizationService.SigningPolicy.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x22AA75290](v1);
  return Hasher._finalize()();
}

uint64_t CryptexPersonalizationService.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CryptexPersonalizationService.signingPolicy.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CryptexPersonalizationService(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for CryptexPersonalizationService(uint64_t a1)
{
  result = type metadata singleton initialization cache for CryptexPersonalizationService;
  if (!type metadata singleton initialization cache for CryptexPersonalizationService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CryptexPersonalizationService.init(url:signingPolicy:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for CryptexPersonalizationService(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t one-time initialization function for tatsu()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for CryptexPersonalizationService(0);
  __swift_allocate_value_buffer(v3, static CryptexPersonalizationService.tatsu);
  v4 = __swift_project_value_buffer(v3, static CryptexPersonalizationService.tatsu);
  URL.init(string:)();
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v2, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    result = (*(v6 + 32))(v4, v2, v5);
    *(v4 + *(v3 + 20)) = 0;
  }

  return result;
}

uint64_t one-time initialization function for diavlo()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for CryptexPersonalizationService(0);
  __swift_allocate_value_buffer(v3, static CryptexPersonalizationService.diavlo);
  v4 = __swift_project_value_buffer(v3, static CryptexPersonalizationService.diavlo);
  URL.init(string:)();
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v2, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    result = (*(v6 + 32))(v4, v2, v5);
    *(v4 + *(v3 + 20)) = 1;
  }

  return result;
}

uint64_t CryptexPersonalizationService.tatsu.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for CryptexPersonalizationService(0);

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static CryptexPersonalizationService.tatsu.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for CryptexPersonalizationService(0);
  v7 = __swift_project_value_buffer(v6, a2);

  return outlined init with copy of CryptexPersonalizationService(v7, a4);
}

unint64_t lazy protocol witness table accessor for type CryptexPersonalizationService.SigningPolicy and conformance CryptexPersonalizationService.SigningPolicy()
{
  result = lazy protocol witness table cache variable for type CryptexPersonalizationService.SigningPolicy and conformance CryptexPersonalizationService.SigningPolicy;
  if (!lazy protocol witness table cache variable for type CryptexPersonalizationService.SigningPolicy and conformance CryptexPersonalizationService.SigningPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexPersonalizationService.SigningPolicy and conformance CryptexPersonalizationService.SigningPolicy);
  }

  return result;
}

uint64_t type metadata completion function for CryptexPersonalizationService(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t CryptexErrorMessage.CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CryptexErrorMessage.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t CryptexErrorMessage.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x726F727265;
  v2 = 1701603686;
  v3 = 0x6E6F6974636E7566;
  if (a1 != 3)
  {
    v3 = 0x626D754E656E696CLL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6567617373656DLL;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CryptexErrorMessage.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x726F727265;
  v3 = *a1;
  v4 = 0xE500000000000000;
  v5 = *a2;
  v6 = 0xE400000000000000;
  v7 = 1701603686;
  v8 = 0xE800000000000000;
  v9 = 0x6E6F6974636E7566;
  if (v3 != 3)
  {
    v9 = 0x626D754E656E696CLL;
    v8 = 0xEA00000000007265;
  }

  if (v3 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0x6567617373656DLL;
  if (*a1)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v10 = 0x726F727265;
  }

  if (*a1 <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if (v3 <= 1)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  v13 = 0xE500000000000000;
  v14 = 0xE400000000000000;
  v15 = 1701603686;
  v16 = 0xE800000000000000;
  v17 = 0x6E6F6974636E7566;
  if (v5 != 3)
  {
    v17 = 0x626D754E656E696CLL;
    v16 = 0xEA00000000007265;
  }

  if (v5 != 2)
  {
    v15 = v17;
    v14 = v16;
  }

  if (*a2)
  {
    v2 = 0x6567617373656DLL;
    v13 = 0xE700000000000000;
  }

  if (*a2 <= 1u)
  {
    v18 = v2;
  }

  else
  {
    v18 = v15;
  }

  if (*a2 <= 1u)
  {
    v19 = v13;
  }

  else
  {
    v19 = v14;
  }

  if (v11 == v18 && v12 == v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v20 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CryptexErrorMessage.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CryptexErrorMessage.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CryptexErrorMessage.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CryptexErrorMessage.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CryptexErrorMessage.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CryptexErrorMessage.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x726F727265;
  v5 = 0xE400000000000000;
  v6 = 1701603686;
  v7 = 0xE800000000000000;
  v8 = 0x6E6F6974636E7566;
  if (v2 != 3)
  {
    v8 = 0x626D754E656E696CLL;
    v7 = 0xEA00000000007265;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6567617373656DLL;
    v3 = 0xE700000000000000;
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

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CryptexErrorMessage.CodingKeys()
{
  v1 = *v0;
  v2 = 0x726F727265;
  v3 = 1701603686;
  v4 = 0x6E6F6974636E7566;
  if (v1 != 3)
  {
    v4 = 0x626D754E656E696CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6567617373656DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance CryptexErrorMessage.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized CryptexErrorMessage.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CryptexErrorMessage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CryptexErrorMessage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void static CryptexErrorMessage.from(xpc:)(CryptexKit::CryptexErrorMessage *a2@<X8>)
{
  v4 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v39 = &type metadata for CryptexErrorMessage.CodingKeys;
  v8 = lazy protocol witness table accessor for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys();
  v40 = v8;
  LOBYTE(v38[0]) = 0;
  OS_xpc_object.decode<A>(_:forKey:)(v38, ObjectType, MEMORY[0x277D837D0], &protocol witness table for String, &v41);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v38);
    return;
  }

  __swift_destroy_boxed_opaque_existential_0(v38);
  v9 = v42;
  if (!v42)
  {
    swift_storeEnumTagMultiPayload();
    strcpy(v38, "Expected key ");
    HIWORD(v38[1]) = -4864;
    LOBYTE(v41) = 0;
    lazy protocol witness table accessor for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys();
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AA74CD0](v11);

    v12 = v38[0];
    v13 = v38[1];
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    v15 = v14;
    v16 = v6;
    v17 = v12;
    v18 = v13;
    v19 = 16;
LABEL_6:
    static CryptexError.error(_:_:file:function:lineNumber:)(v16, v17, v18, 0xD000000000000033, 0x8000000226117670, 0x637078286D6F7266, 0xEA0000000000293ALL, v19, v15);

    outlined destroy of CryptexError(v6);
    swift_willThrow();
    return;
  }

  v43 = a2;
  v10 = v41;
  v39 = &type metadata for CryptexErrorMessage.CodingKeys;
  v40 = v8;
  LOBYTE(v38[0]) = 1;
  OS_xpc_object.decode<A>(_:forKey:)(v38, ObjectType, MEMORY[0x277D837D0], &protocol witness table for String, &v41);
  v37 = v10;
  __swift_destroy_boxed_opaque_existential_0(v38);
  v20 = v42;
  if (!v42)
  {

    swift_storeEnumTagMultiPayload();
    strcpy(v38, "Expected key ");
    HIWORD(v38[1]) = -4864;
    LOBYTE(v41) = 1;
    lazy protocol witness table accessor for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys();
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AA74CD0](v22);

    v23 = v38[0];
    v24 = v38[1];
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    v15 = v25;
    v16 = v6;
    v17 = v23;
    v18 = v24;
    v19 = 19;
    goto LABEL_6;
  }

  v21 = v41;
  v39 = &type metadata for CryptexErrorMessage.CodingKeys;
  v40 = v8;
  LOBYTE(v38[0]) = 2;
  OS_xpc_object.decode<A>(_:forKey:)(v38, ObjectType, MEMORY[0x277D837D0], &protocol witness table for String, &v41);
  v36 = v21;
  __swift_destroy_boxed_opaque_existential_0(v38);
  v27 = v41;
  v26 = v42;
  v39 = &type metadata for CryptexErrorMessage.CodingKeys;
  v40 = v8;
  LOBYTE(v38[0]) = 3;
  OS_xpc_object.decode<A>(_:forKey:)(v38, ObjectType, MEMORY[0x277D837D0], &protocol witness table for String, &v41);
  v35.value._countAndFlagsBits = v27;
  v35.value._object = v26;
  __swift_destroy_boxed_opaque_existential_0(v38);
  v29 = v41;
  v28 = v42;
  v39 = &type metadata for CryptexErrorMessage.CodingKeys;
  v40 = v8;
  LOBYTE(v38[0]) = 4;
  OS_xpc_object.decode<A>(_:forKey:)(v38, ObjectType, MEMORY[0x277D83E88], &protocol witness table for UInt, &v41);
  __swift_destroy_boxed_opaque_existential_0(v38);
  lineNumber.is_nil = v42;
  lineNumber.value = v41;
  v31._countAndFlagsBits = v36;
  v30._countAndFlagsBits = v37;
  v30._object = v9;
  v31._object = v20;
  v32.value._countAndFlagsBits = v29;
  v32.value._object = v28;
  CryptexErrorMessage.init(_:_:file:function:lineNumber:)(v43, v30, v31, v35, v32, lineNumber);
}

uint64_t CryptexErrorMessage.populate(xpcDict:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v14 = v1[2];
  v22 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v5 = v1[7];
  v11 = v1[6];
  v6 = v1[8];
  v7 = *(v1 + 72);
  swift_getObjectType();
  v20 = MEMORY[0x277D837D0];
  v21 = &protocol witness table for String;
  v18 = v3;
  v19 = v4;
  v16 = &type metadata for CryptexErrorMessage.CodingKeys;
  v8 = lazy protocol witness table accessor for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys();
  v17 = v8;
  LOBYTE(v15[0]) = 0;

  OS_xpc_object.encode(_:forKey:)(&v18, v15);
  if (v2)
  {
    goto LABEL_3;
  }

  __swift_destroy_boxed_opaque_existential_0(v15);
  __swift_destroy_boxed_opaque_existential_0(&v18);
  v9 = MEMORY[0x277D837D0];
  v20 = MEMORY[0x277D837D0];
  v21 = &protocol witness table for String;
  v18 = v14;
  v19 = v22;
  v16 = &type metadata for CryptexErrorMessage.CodingKeys;
  v17 = v8;
  LOBYTE(v15[0]) = 1;

  OS_xpc_object.encode(_:forKey:)(&v18, v15);
  __swift_destroy_boxed_opaque_existential_0(v15);
  __swift_destroy_boxed_opaque_existential_0(&v18);
  if (v13)
  {
    v20 = v9;
    v21 = &protocol witness table for String;
    v18 = v12;
    v19 = v13;
    v16 = &type metadata for CryptexErrorMessage.CodingKeys;
    v17 = v8;
    LOBYTE(v15[0]) = 2;

    OS_xpc_object.encode(_:forKey:)(&v18, v15);
    __swift_destroy_boxed_opaque_existential_0(v15);
    __swift_destroy_boxed_opaque_existential_0(&v18);
  }

  result = v5;
  if (v5)
  {
    v20 = v9;
    v21 = &protocol witness table for String;
    v18 = v11;
    v19 = v5;
    v16 = &type metadata for CryptexErrorMessage.CodingKeys;
    v17 = v8;
    LOBYTE(v15[0]) = 3;

    OS_xpc_object.encode(_:forKey:)(&v18, v15);
    __swift_destroy_boxed_opaque_existential_0(v15);
    result = __swift_destroy_boxed_opaque_existential_0(&v18);
  }

  if ((v7 & 1) == 0)
  {
    v20 = MEMORY[0x277D83E88];
    v21 = &protocol witness table for UInt;
    v17 = v8;
    v18 = v6;
    v16 = &type metadata for CryptexErrorMessage.CodingKeys;
    LOBYTE(v15[0]) = 4;
    OS_xpc_object.encode(_:forKey:)(&v18, v15);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_0(v15);
    return __swift_destroy_boxed_opaque_existential_0(&v18);
  }

  return result;
}

unint64_t specialized CryptexErrorMessage.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CryptexErrorMessage.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for CryptexErrorMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CryptexErrorMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::UInt64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FilePath.inode()()
{
  v7 = *MEMORY[0x277D85DE8];
  memset(&v6, 0, sizeof(v6));
  FilePath.string.getter();
  v0 = String.utf8CString.getter();

  v1 = stat((v0 + 32), &v6);

  if (!v1)
  {
    return v6.st_ino;
  }

  v3 = MEMORY[0x22AA74A20](v2);
  lazy protocol witness table accessor for type Errno and conformance Errno();
  swift_allocError();
  *v4 = v3;
  return swift_willThrow();
}

char *FilePath.directoryContents()()
{
  v24[1] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for FilePath.Component();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = FilePath.directoryExists()();
  if (v9)
  {
    return v0;
  }

  if (!v8)
  {
    swift_storeEnumTagMultiPayload();
    v0 = "pcDictCodable.swift";
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)(v7, 0x6964206120746F4ELL, 0xEF79726F74636572, 0xD000000000000023, 0x80000002261176B0, 0xD000000000000013, 0x80000002261176E0, 17, v21);
    outlined destroy of CryptexError(v7);
LABEL_12:
    swift_willThrow();
    return v0;
  }

  v23[1] = 0;
  v10 = [objc_opt_self() defaultManager];
  v11 = FilePath.string.getter();
  v12 = MEMORY[0x22AA74BE0](v11);

  v24[0] = 0;
  v13 = [v10 contentsOfDirectoryAtPath:v12 error:v24];

  v14 = v24[0];
  if (!v13)
  {
    v0 = v24[0];
    _convertNSErrorToError(_:)();

    goto LABEL_12;
  }

  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v14;

  v17 = *(v15 + 16);
  if (v17)
  {
    v24[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
    v0 = v24[0];
    v23[0] = v15;
    v18 = v15 + 40;
    do
    {

      FilePath.Component.init(stringLiteral:)();
      v24[0] = v0;
      v20 = *(v0 + 2);
      v19 = *(v0 + 3);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v0 = v24[0];
      }

      *(v0 + 2) = v20 + 1;
      (*(v2 + 32))(&v0[((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v20], v4, v1);
      v18 += 16;
      --v17;
    }

    while (v17);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v0;
}

char *specialized FilePath._recurseDirectory(relpath:_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v98 = a1;
  v99 = a3;
  v100 = type metadata accessor for FilePath();
  v4 = *(v100 - 8);
  v5 = MEMORY[0x28223BE20](v100);
  v86 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v85 = &v83 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v89 = &v83 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v88 = &v83 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v87 = &v83 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v83 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v83 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v83 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v83 - v24;
  v26 = type metadata accessor for FilePath.Component();
  v96 = *(v26 - 8);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v83 - v30;
  v32 = v111;
  result = FilePath.directoryContents()();
  v111 = v32;
  if (!v32)
  {
    v104 = v29;
    v106 = v23;
    v94 = v17;
    v95 = v25;
    v93 = v20;
    v97 = v31;
    v112 = v26;
    v90 = *(result + 2);
    if (!v90)
    {
    }

    v34 = 0;
    v35 = v96;
    v108 = (v4 + 16);
    v109 = v96 + 16;
    v103 = (v4 + 8);
    v92 = (v96 + 8);
    v83 = v4 + 32;
    v102 = a2;
    v36 = v97;
    v37 = v95;
    v38 = v106;
    v84 = v4;
    v91 = result;
    while (1)
    {
      if (v34 >= *(result + 2))
      {
        __break(1u);
        return result;
      }

      v41 = &result[(*(v35 + 80) + 32) & ~*(v35 + 80)];
      v42 = *(v35 + 72);
      v101 = v34;
      v43 = v38;
      v44 = *(v35 + 16);
      v45 = v112;
      v44(v36, &v41[v42 * v34], v112);
      v46 = v100;
      v110 = *v108;
      v110(v43, a2, v100);
      v107 = v44;
      v44(v104, v36, v45);
      FilePath.appending(_:)();
      v47 = FilePath.directoryExists()();
      if (v48)
      {
        v111 = v48;

        (*v103)(v37, v46);
        return (*v92)(v36, v112);
      }

      v49 = v47;
      v105 = *v103;
      v105(v37, v46);
      if (v49)
      {
        v50 = v106;
        v51 = v110;
        v110(v106, v98, v46);
        v52 = v104;
        v107(v104, v36, v112);
        v53 = v93;
        v54 = v52;
        FilePath.appending(_:)();
        v51(v94, v53, v46);
        v55 = v99;
        v56 = *v99;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v55 = v56;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56[2] + 1, 1, v56);
          *v55 = v56;
        }

        v59 = v56[2];
        v58 = v56[3];
        v111 = 0;
        if (v59 >= v58 >> 1)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v56);
          *v99 = v56;
        }

        v56[2] = v59 + 1;
        (*(v84 + 32))(v56 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v59, v94, v46);
        v105(v93, v46);
        v110(v50, v102, v46);
        v60 = v54;
        v61 = v54;
        v62 = v97;
        v63 = v112;
        v64 = v107;
        v107(v61, v97, v112);
        v39 = v46;
        v65 = v87;
        FilePath.appending(_:)();
        v110(v106, v98, v39);
        v38 = v106;
        v64(v60, v62, v63);
        v66 = v88;
        FilePath.appending(_:)();
        v67 = v111;
        specialized FilePath._recurseDirectory(relpath:_:)(v66, v65, v99);
        v111 = v67;
        if (v67)
        {

          v82 = v105;
          v105(v66, v39);
          v82(v65, v39);
          v36 = v97;
          return (*v92)(v36, v112);
        }

        v68 = v105;
        v105(v66, v39);
        v40 = v65;
        v69 = v101;
      }

      else
      {
        v38 = v106;
        v110(v106, v102, v46);
        v107(v104, v36, v112);
        v70 = v89;
        FilePath.appending(_:)();
        v71 = FilePath.fileExists()();
        v111 = v72;
        if (v72)
        {

          v105(v70, v46);
          return (*v92)(v36, v112);
        }

        v73 = v71;
        v105(v70, v46);
        if (!v73)
        {
          v37 = v95;
          v69 = v101;
          a2 = v102;
          goto LABEL_6;
        }

        v74 = v110;
        v110(v38, v98, v46);
        v107(v104, v36, v112);
        v75 = v85;
        FilePath.appending(_:)();
        v74(v86, v75, v46);
        v76 = v99;
        v77 = *v99;
        v78 = swift_isUniquelyReferenced_nonNull_native();
        *v76 = v77;
        if ((v78 & 1) == 0)
        {
          v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v77[2] + 1, 1, v77);
          *v76 = v77;
        }

        v79 = v84;
        v81 = v77[2];
        v80 = v77[3];
        v69 = v101;
        v68 = v105;
        if (v81 >= v80 >> 1)
        {
          v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1, v77);
          *v99 = v77;
        }

        v77[2] = v81 + 1;
        v39 = v100;
        (*(v79 + 32))(v77 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v81, v86, v100);
        v40 = v85;
      }

      a2 = v102;
      v68(v40, v39);
      v36 = v97;
      v37 = v95;
LABEL_6:
      v34 = v69 + 1;
      (*v92)(v36, v112);
      v35 = v96;
      result = v91;
      if (v90 == v34)
      {
      }
    }
  }

  return result;
}

char *FilePath._recurseDirectory(relpath:_:)(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v85 = a2;
  v86 = a3;
  v82 = a1;
  v5 = type metadata accessor for FilePath();
  v6 = *(v5 - 8);
  v93 = v5;
  v94 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v74 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v76 = &v72 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v75 = &v72 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v72 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v72 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v72 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v72 - v22;
  v24 = type metadata accessor for FilePath.Component();
  v84 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v72 - v28;
  result = FilePath.directoryContents()();
  if (!v4)
  {
    v97 = 0;
    v91 = v27;
    v83 = v21;
    v81 = v23;
    v73 = v18;
    v80 = v15;
    v87 = v3;
    v88 = v29;
    v77 = *(result + 2);
    if (!v77)
    {
    }

    v31 = 0;
    v33 = v83;
    v32 = v84;
    v90 = v84 + 16;
    v95 = v24;
    v96 = (v94 + 2);
    v78 = result;
    v79 = (v84 + 8);
    v34 = v87;
    v35 = v88;
    ++v94;
    while (1)
    {
      if (v31 >= *(result + 2))
      {
        __break(1u);
        return result;
      }

      v37 = &result[(*(v32 + 80) + 32) & ~*(v32 + 80)];
      v38 = *(v32 + 72);
      v89 = v31;
      v39 = *(v32 + 16);
      v39(v35, &v37[v38 * v31], v24);
      v40 = v33;
      v41 = v93;
      v42 = *v96;
      (*v96)(v40, v34, v93);
      v39(v91, v35, v24);
      v43 = v81;
      FilePath.appending(_:)();
      v44 = FilePath.directoryExists()();
      v97 = v45;
      if (v45)
      {

        (*v94)(v43, v41);
LABEL_24:
        v35 = v88;
        return (*v79)(v35, v24);
      }

      v46 = v44;
      v92 = *v94;
      v92(v43, v41);
      v47 = v41;
      if (v46)
      {
        break;
      }

      v33 = v83;
      v34 = v87;
      v42(v83, v87, v47);
      v35 = v88;
      v39(v91, v88, v95);
      v60 = v76;
      FilePath.appending(_:)();
      v61 = FilePath.fileExists()();
      v97 = v62;
      if (v62)
      {

        v67 = v60;
        v68 = v47;
        goto LABEL_21;
      }

      v63 = v61;
      v64 = v60;
      v58 = v92;
      v92(v64, v47);
      if (v63)
      {
        v42(v33, v82, v47);
        v39(v91, v35, v95);
        v65 = v74;
        FilePath.appending(_:)();
        v66 = v97;
        v85(v65);
        v36 = v89;
        v97 = v66;
        if (v66)
        {

          v58(v65, v47);
LABEL_22:
          v24 = v95;
          return (*v79)(v35, v24);
        }

        v59 = v65;
LABEL_16:
        v58(v59, v47);
        goto LABEL_5;
      }

      v36 = v89;
LABEL_5:
      v31 = v36 + 1;
      v24 = v95;
      (*v79)(v35, v95);
      result = v78;
      v32 = v84;
      if (v77 == v31)
      {
      }
    }

    v48 = v82;
    v33 = v83;
    v42(v83, v82, v47);
    v49 = v91;
    v35 = v88;
    v39(v91, v88, v95);
    v50 = v73;
    FilePath.appending(_:)();
    v51 = v97;
    v85(v50);
    v97 = v51;
    if (v51)
    {

      v67 = v50;
      v68 = v93;
LABEL_21:
      v92(v67, v68);
      goto LABEL_22;
    }

    v52 = v50;
    v53 = v93;
    v92(v52, v93);
    v42(v33, v87, v53);
    v39(v49, v35, v95);
    FilePath.appending(_:)();
    v42(v33, v48, v53);
    v39(v49, v35, v95);
    v54 = v75;
    FilePath.appending(_:)();
    v55 = v80;
    v56 = v97;
    FilePath._recurseDirectory(relpath:_:)(v54, v85, v86);
    v97 = v56;
    if (v56)
    {

      v69 = v54;
      v71 = v92;
      v70 = v93;
      v92(v69, v93);
      v71(v55, v70);
      v24 = v95;
      goto LABEL_24;
    }

    v57 = v54;
    v58 = v92;
    v47 = v93;
    v92(v57, v93);
    v59 = v55;
    v34 = v87;
    v35 = v88;
    v36 = v89;
    goto LABEL_16;
  }

  return result;
}

void *FilePath.recurseDirectory(bottomUp:relpath:_:)(char a1, uint64_t a2, void (*a3)(char *))
{
  v7 = type metadata accessor for FilePath();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  v22 = MEMORY[0x277D84F90];
  MEMORY[0x22AA74AB0](46, 0xE100000000000000);
  specialized FilePath._recurseDirectory(relpath:_:)(v13, v3, &v22);
  if (v4)
  {
    (*(v8 + 8))(v13, v7);
  }

  v20 = *(v8 + 8);
  v21 = v8 + 8;
  result = v20(v13, v7);
  v15 = v22;
  if (a1)
  {
    result = specialized Sequence.reversed()(v22);
    v15 = result;
    v22 = result;
  }

  v16 = v15[2];
  if (!v16)
  {
  }

  v19 = a3;
  v17 = 0;
  while (v17 < v15[2])
  {
    (*(v8 + 16))(v11, v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17, v7);
    v19(v11);
    ++v17;
    result = v20(v11, v7);
    if (v16 == v17)
    {
    }
  }

  __break(1u);
  return result;
}

void *specialized Sequence.reversed()(void *a1)
{
  v2 = type metadata accessor for FilePath();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v3);
  v29 = v23 - v8;
  v9 = a1[2];
  if (v9 < 2)
  {
    return a1;
  }

  v10 = 0;
  v11 = v9 >> 1;
  v12 = v9 - 1;
  v24 = v9 >> 1;
  v25 = v7;
  v23[1] = v7 + 16;
  v26 = (v7 + 40);
  while (1)
  {
    if (v10 == v12)
    {
      goto LABEL_5;
    }

    v13 = a1[2];
    if (v10 >= v13)
    {
      break;
    }

    v14 = v5;
    v28 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v15 = a1 + v28;
    v16 = *(v7 + 72);
    v17 = a1;
    v18 = *(v7 + 16);
    v27 = v16 * v10;
    result = v18(v29, &v15[v16 * v10], v2);
    if (v12 >= v13)
    {
      goto LABEL_14;
    }

    v19 = v16 * v12;
    v20 = &v15[v16 * v12];
    v5 = v14;
    v18(v14, v20, v2);
    a1 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
    }

    v21 = a1 + v28;
    v22 = *v26;
    result = (*v26)(a1 + v28 + v27, v5, v2);
    if (v12 >= a1[2])
    {
      goto LABEL_15;
    }

    result = v22(&v21[v19], v29, v2);
    v11 = v24;
    v7 = v25;
LABEL_5:
    ++v10;
    --v12;
    if (v11 == v10)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6System8FilePathVGMd, &_ss23_ContiguousArrayStorageCy6System8FilePathVGMR);
  v10 = *(type metadata accessor for FilePath() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(type metadata accessor for FilePath() - 8);
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

uint64_t String.init(cString:)()
{
  return MEMORY[0x2821FBE78]();
}

{
  return MEMORY[0x2821FBE80]();
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x2821FBF68]();
}

{
  return MEMORY[0x2821FBFB0]();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD990]();
}

{
  return MEMORY[0x2821FD9B0]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAC8]();
}

{
  return MEMORY[0x2821FDAE8]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return MEMORY[0x2821FDE60]();
}

{
  return MEMORY[0x2821FDE68]();
}