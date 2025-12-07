uint64_t sub_2556571D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_255657250(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

Swift::Int RequesterCredentials.Errors.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x259C3C4C0](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RequesterCredentials.Errors()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C3C4C0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RequesterCredentials.Errors(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x259C3C4C0](v2);
  return Hasher._finalize()();
}

uint64_t RequesterCredentials.localPublicKeyData.getter()
{
  v0 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v4 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  (*(v1 + 8))(v3, v0);
  return v4;
}

BOOL RequesterCredentials.isExhausted.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  v7 = type metadata accessor for RequestKeyAgreement(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC12JoinRequests20RequesterCredentials_keyAgreement;
  swift_beginAccess();
  outlined init with copy of RequestKeyAgreement(v0 + v10, v9);
  outlined init with copy of SymmetricKey?(v9, v6);
  v11 = type metadata accessor for SymmetricKey();
  v12 = *(*(v11 - 8) + 48);
  if (v12(v6, 1, v11) == 1)
  {
    outlined destroy of SymmetricKey?(v6, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    outlined init with copy of SymmetricKey?(&v9[*(v7 + 20)], v4);
    outlined destroy of RequestKeyAgreement(v9);
    v13 = v12(v4, 1, v11) == 1;
    v6 = v4;
  }

  else
  {
    outlined destroy of RequestKeyAgreement(v9);
    v13 = 0;
  }

  outlined destroy of SymmetricKey?(v6, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  return v13;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined init with copy of RequestKeyAgreement(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestKeyAgreement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of SymmetricKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RequestKeyAgreement(uint64_t a1)
{
  v2 = type metadata accessor for RequestKeyAgreement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RequesterCredentials.__allocating_init(ownerPublicKey:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  RequesterCredentials.init(ownerPublicKey:)(a1, a2);
  return v4;
}

uint64_t RequesterCredentials.init(ownerPublicKey:)(uint64_t a1, void *a2)
{
  v35 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v32 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RequestKeyAgreement(0);
  MEMORY[0x28223BE20](v6 - 8);
  v28 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v18 = OBJC_IVAR____TtC12JoinRequests20RequesterCredentials_localKey;
  v31 = v2;
  P256.KeyAgreement.PrivateKey.init(compactRepresentable:)();
  v33 = a1;
  v34 = a2;
  outlined copy of Data._Representation(a1, a2);
  v19 = v30;
  P256.KeyAgreement.PublicKey.init<A>(compactRepresentation:)();
  v29 = v18;
  if (v19)
  {

    (*(v12 + 56))(v10, 1, 1, v11);
    outlined destroy of SymmetricKey?(v10, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
    lazy protocol witness table accessor for type RequesterCredentials.Errors and conformance RequesterCredentials.Errors();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
    outlined consume of Data._Representation(a1, a2);
    v21 = v31;
    (*(v32 + 8))(v31 + v29, v35);
    type metadata accessor for RequesterCredentials(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26 = a1;
    v30 = a2;
    (*(v12 + 56))(v10, 0, 1, v11);
    (*(v12 + 32))(v17, v10, v11);
    (*(v12 + 16))(v15, v17, v11);
    v21 = v31;
    v22 = v31 + v18;
    v23 = v27;
    (*(v32 + 16))(v27, v22, v35);
    RequestKeyAgreement.init(publicKey:privateKey:)(v15, v23, v28);
    outlined consume of Data._Representation(v26, v30);
    (*(v12 + 8))(v17, v11);
    outlined init with take of RequestKeyAgreement(v28, v21 + OBJC_IVAR____TtC12JoinRequests20RequesterCredentials_keyAgreement);
  }

  return v21;
}

void outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t outlined destroy of SymmetricKey?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type RequesterCredentials.Errors and conformance RequesterCredentials.Errors()
{
  result = lazy protocol witness table cache variable for type RequesterCredentials.Errors and conformance RequesterCredentials.Errors;
  if (!lazy protocol witness table cache variable for type RequesterCredentials.Errors and conformance RequesterCredentials.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequesterCredentials.Errors and conformance RequesterCredentials.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequesterCredentials.Errors and conformance RequesterCredentials.Errors;
  if (!lazy protocol witness table cache variable for type RequesterCredentials.Errors and conformance RequesterCredentials.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequesterCredentials.Errors and conformance RequesterCredentials.Errors);
  }

  return result;
}

void outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t type metadata accessor for RequesterCredentials(uint64_t a1)
{
  result = type metadata singleton initialization cache for RequesterCredentials;
  if (!type metadata singleton initialization cache for RequesterCredentials)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of RequestKeyAgreement(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestKeyAgreement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

NSObject *RequesterCredentials.encrypt(request:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = (*(*v2 + 120))();
  if (v8 >> 60 == 15)
  {
    if (one-time initialization token for credentials != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.credentials);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_255656000, v10, v11, "Failed to derive requester's public key from the locally-generated private key.", v12, 2u);
      MEMORY[0x259C3C770](v12, -1, -1);
    }

    lazy protocol witness table accessor for type RequesterCredentials.Errors and conformance RequesterCredentials.Errors();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
  }

  else
  {
    v14 = v7;
    v15 = v8;
    swift_beginAccess();
    v16 = RequestKeyAgreement.encrypt(request:)(a1, a2);
    if (v3)
    {
      swift_endAccess();
      outlined consume of Data?(v14, v15);
    }

    else
    {
      v4 = v16;
      swift_endAccess();
    }
  }

  return v4;
}

uint64_t RequesterCredentials.decrypt(response:)(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  v4 = RequestKeyAgreement.decrypt(response:)(a1, a2);
  swift_endAccess();
  return v4;
}

uint64_t RequesterCredentials.deinit()
{
  v1 = OBJC_IVAR____TtC12JoinRequests20RequesterCredentials_localKey;
  v2 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of RequestKeyAgreement(v0 + OBJC_IVAR____TtC12JoinRequests20RequesterCredentials_keyAgreement);
  return v0;
}

uint64_t RequesterCredentials.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12JoinRequests20RequesterCredentials_localKey;
  v2 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of RequestKeyAgreement(v0 + OBJC_IVAR____TtC12JoinRequests20RequesterCredentials_keyAgreement);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t variable initialization expression of RequestKeyAgreement.requestKey@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SymmetricKey();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    outlined consume of Data._Representation(a1, a2);
  }
}

uint64_t type metadata completion function for RequesterCredentials(uint64_t a1)
{
  result = type metadata accessor for P256.KeyAgreement.PrivateKey();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RequestKeyAgreement(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequesterCredentials.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RequesterCredentials.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

BOOL Subsystem.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Subsystem.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Subsystem()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Subsystem(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Subsystem@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance Subsystem, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t Logger.init<A>(subsystem:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  dispatch thunk of RawRepresentable.rawValue.getter();
  Logger.init(subsystem:category:)();
  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t one-time initialization function for credentials(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t Log.credentials.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static Log.credentials.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t >> prefix<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4[2] = a2;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in >> prefix<A>(_:), v4, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v2, v5);
  if (v5[1])
  {
    return v5[0];
  }

  else
  {
    return 7104878;
  }
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2)
{
  v6[2] = a2;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in DefaultStringInterpolation.appendInterpolation<A>(_:), v6, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v2, &v7);
  if (v8)
  {
    v3 = v7;
  }

  else
  {
    v3 = 7104878;
  }

  if (v8)
  {
    v4 = v8;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  MEMORY[0x259C3C390](v3, v4);
}

uint64_t closure #1 in >> prefix<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = String.init<A>(reflecting:)();
  *a3 = result;
  a3[1] = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type Subsystem and conformance Subsystem()
{
  result = lazy protocol witness table cache variable for type Subsystem and conformance Subsystem;
  if (!lazy protocol witness table cache variable for type Subsystem and conformance Subsystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Subsystem and conformance Subsystem);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Subsystem(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Subsystem(_WORD *result, int a2, int a3)
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

BOOL RequestKeyAgreement.isExhausted.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  outlined init with copy of SymmetricKey?(v0, &v13 - v5);
  v7 = type metadata accessor for SymmetricKey();
  v8 = *(*(v7 - 8) + 48);
  v9 = v8(v6, 1, v7);
  outlined destroy of SymmetricKey?(v6, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  if (v9 != 1)
  {
    return 0;
  }

  v10 = type metadata accessor for RequestKeyAgreement(0);
  outlined init with copy of SymmetricKey?(v0 + *(v10 + 20), v4);
  v11 = v8(v4, 1, v7) == 1;
  outlined destroy of SymmetricKey?(v4, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  return v11;
}

uint64_t type metadata accessor for RequestKeyAgreement(uint64_t a1)
{
  result = type metadata singleton initialization cache for RequestKeyAgreement;
  if (!type metadata singleton initialization cache for RequestKeyAgreement)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RequestKeyAgreement.init(publicKey:privateKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v34 = &v27 - v7;
  v8 = type metadata accessor for SharedSecret();
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SymmetricKey();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(a3, 1, 1, v11);
  v15 = *(type metadata accessor for RequestKeyAgreement(0) + 20);
  v41 = a3;
  v13(a3 + v15, 1, 1, v11);
  v16 = v37;
  P256.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
  if (v16)
  {
    v17 = type metadata accessor for P256.KeyAgreement.PrivateKey();
    (*(*(v17 - 8) + 8))(a2, v17);
    v18 = type metadata accessor for P256.KeyAgreement.PublicKey();
    (*(*(v18 - 8) + 8))(a1, v18);
    return outlined destroy of RequestKeyAgreement(v41);
  }

  else
  {
    v28 = v15;
    v29 = v14;
    v30 = v11;
    v31 = v13;
    v32 = 0;
    v33 = a2;
    v37 = a1;
    type metadata accessor for SHA256();
    v27 = xmmword_25565EAD0;
    v40 = xmmword_25565EAD0;
    if (one-time initialization token for requestSharedInfo != -1)
    {
      swift_once();
    }

    v38 = static RequestKeyAgreement.requestSharedInfo;
    v39 = qword_27F7BCB50;
    outlined copy of Data._Representation(static RequestKeyAgreement.requestSharedInfo, qword_27F7BCB50);
    lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    lazy protocol witness table accessor for type Data and conformance Data();
    v20 = v34;
    v21 = v10;
    SharedSecret.hkdfDerivedSymmetricKey<A, B, C>(using:salt:sharedInfo:outputByteCount:)();
    outlined consume of Data._Representation(v38, v39);
    outlined consume of Data._Representation(v40, *(&v40 + 1));
    v23 = v30;
    v22 = v31;
    v31(v20, 0, 1, v30);
    v24 = v41;
    outlined assign with take of SymmetricKey?(v20, v41);
    v40 = v27;
    if (one-time initialization token for responseSharedInfo != -1)
    {
      swift_once();
    }

    v38 = static RequestKeyAgreement.responseSharedInfo;
    v39 = qword_27F7BCB60;
    outlined copy of Data._Representation(static RequestKeyAgreement.responseSharedInfo, qword_27F7BCB60);
    SharedSecret.hkdfDerivedSymmetricKey<A, B, C>(using:salt:sharedInfo:outputByteCount:)();
    v25 = type metadata accessor for P256.KeyAgreement.PrivateKey();
    (*(*(v25 - 8) + 8))(v33, v25);
    v26 = type metadata accessor for P256.KeyAgreement.PublicKey();
    (*(*(v26 - 8) + 8))(v37, v26);
    outlined consume of Data._Representation(v38, v39);
    outlined consume of Data._Representation(v40, *(&v40 + 1));
    (*(v35 + 8))(v21, v36);
    v22(v20, 0, 1, v23);
    return outlined assign with take of SymmetricKey?(v20, v24 + v28);
  }
}

NSObject *RequestKeyAgreement.encrypt(request:)(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for AES.GCM.SealedBox();
  v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for SymmetricKey();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v2;
  outlined init with copy of SymmetricKey?(v2, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of SymmetricKey?(v12, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    if (one-time initialization token for credentials != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.credentials);
    v18 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v2))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_255656000, v18, v2, "Cannot encrypt request data because request key was already used (exhausted).", v19, 2u);
      MEMORY[0x259C3C770](v19, -1, -1);
    }

    lazy protocol witness table accessor for type RequestKeyAgreement.Errors and conformance RequestKeyAgreement.Errors();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v35 = a1;
    v36 = v34;
    v21 = type metadata accessor for AES.GCM.Nonce();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
    lazy protocol witness table accessor for type Data and conformance Data();
    v22 = v37;
    static AES.GCM.seal<A>(_:using:nonce:)();
    if (v22)
    {
      outlined destroy of SymmetricKey?(v6, &_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
    }

    else
    {
      outlined destroy of SymmetricKey?(v6, &_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
      v2 = AES.GCM.SealedBox.combined.getter();
      v24 = v23;
      (*(v33 + 8))(v9, v7);
      if (v24 >> 60 != 15)
      {
        (*(v14 + 8))(v16, v13);
        v30 = v32;
        outlined destroy of SymmetricKey?(v32, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
        (*(v14 + 56))(v30, 1, 1, v13);
        return v2;
      }

      if (one-time initialization token for credentials != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static Log.credentials);
      v2 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v2, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_255656000, v2, v26, "Failed to encrypt request.", v27, 2u);
        MEMORY[0x259C3C770](v27, -1, -1);
      }

      lazy protocol witness table accessor for type RequestKeyAgreement.Errors and conformance RequestKeyAgreement.Errors();
      swift_allocError();
      *v28 = 2;
      swift_willThrow();
    }

    (*(v14 + 8))(v16, v13);
  }

  return v2;
}

uint64_t RequestKeyAgreement.decrypt(response:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for AES.GCM.SealedBox();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for SymmetricKey();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for RequestKeyAgreement(0) + 20);
  v34 = v3;
  outlined init with copy of SymmetricKey?(v3 + v16, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of SymmetricKey?(v11, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    if (one-time initialization token for credentials != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.credentials);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_255656000, v18, v19, "Cannot decrypt response data because response key was already used (exhausted).", v20, 2u);
      MEMORY[0x259C3C770](v20, -1, -1);
    }

    lazy protocol witness table accessor for type RequestKeyAgreement.Errors and conformance RequestKeyAgreement.Errors();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    outlined copy of Data._Representation(a1, a2);
    v22 = v37;
    _s9CryptoKit3AESO3GCMO9SealedBoxV8combinedAGx_tKc10Foundation12DataProtocolRzlufCAI0I0V_Tt1g5(a1, a2);
    v3 = v22;
    if (v22)
    {
      v23 = v15;
      if (one-time initialization token for credentials != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Log.credentials);
      MEMORY[0x259C3C6B0](v22);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        MEMORY[0x259C3C6B0](v22);
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 4) = v29;
        *v28 = v29;
        _os_log_impl(&dword_255656000, v25, v26, "Failed to decrypt response data with error: %@", v27, 0xCu);
        outlined destroy of SymmetricKey?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x259C3C770](v28, -1, -1);
        MEMORY[0x259C3C770](v27, -1, -1);
      }

      lazy protocol witness table accessor for type RequestKeyAgreement.Errors and conformance RequestKeyAgreement.Errors();
      swift_allocError();
      *v30 = 3;
      swift_willThrow();

      (*(v13 + 8))(v23, v12);
    }

    else
    {
      v3 = static AES.GCM.open(_:using:)();
      (*(v35 + 8))(v8, v36);
      (*(v13 + 8))(v15, v12);
      v32 = v34;
      outlined destroy of SymmetricKey?(v34 + v16, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      (*(v13 + 56))(v32 + v16, 1, 1, v12);
    }
  }

  return v3;
}

Swift::Int RequestKeyAgreement.Errors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x259C3C4C0](a1);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for requestSharedInfo()
{
  result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD00000000000001BLL, 0x800000025565EF80);
  static RequestKeyAgreement.requestSharedInfo = result;
  qword_27F7BCB50 = v1;
  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t outlined assign with take of SymmetricKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ContiguousBytes(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  outlined destroy of SymmetricKey?(__src, &_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  closure #2 in Data.init<A>(_:)(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = specialized Data._Representation.init(count:)(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:), v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of Data?(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  outlined consume of Data?(v36, v6);
LABEL_63:
  v32 = __src[0];
  outlined copy of Data._Representation(*&__src[0], *(&__src[0] + 1));

  outlined consume of Data._Representation(v32, *(&v32 + 1));
  return v32;
}

uint64_t one-time initialization function for responseSharedInfo()
{
  result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD00000000000001CLL, 0x800000025565EF60);
  static RequestKeyAgreement.responseSharedInfo = result;
  qword_27F7BCB60 = v1;
  return result;
}

unint64_t lazy protocol witness table accessor for type RequestKeyAgreement.Errors and conformance RequestKeyAgreement.Errors()
{
  result = lazy protocol witness table cache variable for type RequestKeyAgreement.Errors and conformance RequestKeyAgreement.Errors;
  if (!lazy protocol witness table cache variable for type RequestKeyAgreement.Errors and conformance RequestKeyAgreement.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestKeyAgreement.Errors and conformance RequestKeyAgreement.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestKeyAgreement.Errors and conformance RequestKeyAgreement.Errors;
  if (!lazy protocol witness table cache variable for type RequestKeyAgreement.Errors and conformance RequestKeyAgreement.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestKeyAgreement.Errors and conformance RequestKeyAgreement.Errors);
  }

  return result;
}

uint64_t _s9CryptoKit3AESO3GCMO9SealedBoxV8combinedAGx_tKc10Foundation12DataProtocolRzlufCAI0I0V_Tt1g5(uint64_t a1, unint64_t a2)
{
  v29[5] = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 28)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 28)
      {
        goto LABEL_11;
      }

LABEL_8:
      outlined consume of Data._Representation(a1, a2);
      v7 = type metadata accessor for CryptoKitError();
      lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type CryptoKitError and conformance CryptoKitError, MEMORY[0x277CC51E8], MEMORY[0x277CC51F0]);
      swift_allocError();
      (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277CC51E0], v7);
      return swift_willThrow();
    }

    goto LABEL_35;
  }

  if (BYTE6(a2) < 0x1CuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29[3] = MEMORY[0x277CC9318];
  v29[4] = MEMORY[0x277CC9300];
  v29[0] = a1;
  v29[1] = a2;
  v10 = __swift_project_boxed_opaque_existential_1(v29, MEMORY[0x277CC9318]);
  v11 = *v10;
  v12 = v10[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v27, 0, 14);
      v15 = v27;
      v14 = v27;
      goto LABEL_33;
    }

    v16 = *(v11 + 16);
    v17 = *(v11 + 24);
    v18 = __DataStorage._bytes.getter();
    if (v18)
    {
      v19 = __DataStorage._offset.getter();
      v11 = v16 - v19;
      if (__OFSUB__(v16, v19))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v18 += v11;
    }

    v5 = __OFSUB__(v17, v16);
    v20 = v17 - v16;
    if (!v5)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v13)
  {
LABEL_21:
    v21 = v11;
    v22 = v11 >> 32;
    v20 = v22 - v21;
    if (v22 >= v21)
    {
      v18 = __DataStorage._bytes.getter();
      if (!v18)
      {
LABEL_25:
        v24 = MEMORY[0x259C3C140]();
        if (v24 >= v20)
        {
          v25 = v20;
        }

        else
        {
          v25 = v24;
        }

        v26 = (v25 + v18);
        if (v18)
        {
          v14 = v26;
        }

        else
        {
          v14 = 0;
        }

        v15 = v18;
        goto LABEL_33;
      }

      v23 = __DataStorage._offset.getter();
      if (!__OFSUB__(v21, v23))
      {
        v18 += v21 - v23;
        goto LABEL_25;
      }

LABEL_38:
      __break(1u);
    }

    goto LABEL_36;
  }

  v27[0] = *v10;
  LOWORD(v27[1]) = v12;
  BYTE2(v27[1]) = BYTE2(v12);
  BYTE3(v27[1]) = BYTE3(v12);
  BYTE4(v27[1]) = BYTE4(v12);
  BYTE5(v27[1]) = BYTE5(v12);
  v14 = v27 + BYTE6(v12);
  v15 = v27;
LABEL_33:
  closure #1 in Data.init<A>(_:)(v15, v14, &v28);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return AES.GCM.SealedBox.init(combined:)();
}

uint64_t RequestKeyAgreement.retrieveKeyPair()(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  outlined init with copy of SymmetricKey?(v2, &v29 - v9);
  v11 = type metadata accessor for SymmetricKey();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v10, 1, v11) == 1)
  {
    outlined destroy of SymmetricKey?(v10, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    if (one-time initialization token for credentials != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Log.credentials);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_255656000, v15, v16, "Cannot retrieve key pair because request key was already used (exhausted).", v17, 2u);
      MEMORY[0x259C3C770](v17, -1, -1);
    }

    lazy protocol witness table accessor for type RequestKeyAgreement.Errors and conformance RequestKeyAgreement.Errors();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }

  else
  {
    v29 = v3;
    v20 = a1;
    v21 = *(v12 + 32);
    v30 = v20;
    v21();
    v22 = *(type metadata accessor for RequestKeyAgreement(0) + 20);
    outlined init with copy of SymmetricKey?(v2 + v22, v8);
    if (v13(v8, 1, v11) == 1)
    {
      outlined destroy of SymmetricKey?(v8, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      if (one-time initialization token for credentials != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Log.credentials);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_255656000, v24, v25, "Cannot retrieve key pair because response key was already used (exhausted).", v26, 2u);
        MEMORY[0x259C3C770](v26, -1, -1);
      }

      lazy protocol witness table accessor for type RequestKeyAgreement.Errors and conformance RequestKeyAgreement.Errors();
      swift_allocError();
      *v27 = 1;
      swift_willThrow();
      return (*(v12 + 8))(v30, v11);
    }

    else
    {
      (v21)(v31, v8, v11);
      outlined destroy of SymmetricKey?(v2, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      v28 = *(v12 + 56);
      v28(v2, 1, 1, v11);
      outlined destroy of SymmetricKey?(v2 + v22, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      return (v28)(v2 + v22, 1, 1, v11);
    }
  }
}

void type metadata completion function for RequestKeyAgreement(uint64_t a1)
{
  type metadata accessor for SymmetricKey?(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for SymmetricKey?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SymmetricKey?)
  {
    type metadata accessor for SymmetricKey();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for SymmetricKey?);
    }
  }
}

uint64_t getEnumTagSinglePayload for RequestKeyAgreement.Errors(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RequestKeyAgreement.Errors(uint64_t result, unsigned int a2, unsigned int a3)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *closure #2 in Data.init<A>(_:)@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a3 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      outlined consume of Data._Representation(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v7, v6);
    *v4 = xmmword_25565EAD0;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    outlined consume of Data._Representation(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_25565EAD0;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t lazy protocol witness table accessor for type SHA256 and conformance SHA256(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x259C3C140]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x259C3C3C0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Data._Representation.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return specialized Data.InlineData.init(count:)(result);
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *partial apply for specialized closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t outlined init with take of ContiguousBytes(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t JoinRequestError.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E776F6E6B6E75;
  }

  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return 0x5564696C61566F6ELL;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance JoinRequestError(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000018;
  v4 = 0x800000025565EED0;
  if (v2 == 1)
  {
    v5 = 0x800000025565EED0;
  }

  else
  {
    v3 = 0x5564696C61566F6ELL;
    v5 = 0xEA00000000004952;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xD000000000000018;
  if (*a2 != 1)
  {
    v8 = 0x5564696C61566F6ELL;
    v4 = 0xEA00000000004952;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance JoinRequestError()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance JoinRequestError(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance JoinRequestError(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance JoinRequestError@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized JoinRequestError.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance JoinRequestError(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x800000025565EED0;
  v5 = 0xD000000000000018;
  if (v2 != 1)
  {
    v5 = 0x5564696C61566F6ELL;
    v4 = 0xEA00000000004952;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for IDSServiceProtocol.serviceIdentifier.getter in conformance IDSService()
{
  v1 = [*v0 serviceIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t protocol witness for IDSServiceProtocol.accounts.getter in conformance IDSService()
{
  v1 = [*v0 accounts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for IDSAccount();
  lazy protocol witness table accessor for type IDSAccount and conformance NSObject();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id protocol witness for IDSServiceProtocol.pseudonymProperties(withFeatureID:expiryDurationInSeconds:) in conformance IDSService(double a1)
{
  v3 = *v1;
  v4 = MEMORY[0x259C3C350]();
  v5 = [v3 pseudonymPropertiesWithFeatureID:v4 expiryDurationInSeconds:a1];

  return v5;
}

uint64_t protocol witness for IDSServiceProtocol.provisionPseudonym(for:with:completion:) in conformance IDSService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IDSPseudonym?, @guaranteed Error?) -> ();
  v10[3] = &block_descriptor;
  v8 = _Block_copy(v10);

  [v7 provisionPseudonymForURI:a1 withProperties:a2 completion:v8];
  _Block_release(v8);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IDSPseudonym?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

JoinRequests::JoinRequestProvider_optional __swiftcall JoinRequestProvider.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of JoinRequestProvider.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = JoinRequests_JoinRequestProvider_GroupTestService;
  }

  else
  {
    v4.value = JoinRequests_JoinRequestProvider_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t JoinRequestProvider.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x72656C676E617257;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance JoinRequestProvider(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x72656C676E617257;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x800000025565EF00;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x72656C676E617257;
  }

  if (*a2)
  {
    v6 = 0x800000025565EF00;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance JoinRequestProvider()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance JoinRequestProvider(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance JoinRequestProvider(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance JoinRequestProvider@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of JoinRequestProvider.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance JoinRequestProvider(unint64_t *a1@<X8>)
{
  v2 = 0x800000025565EF00;
  v3 = 0x72656C676E617257;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t specialized JoinRequestError.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of JoinRequestError.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type JoinRequestError and conformance JoinRequestError()
{
  result = lazy protocol witness table cache variable for type JoinRequestError and conformance JoinRequestError;
  if (!lazy protocol witness table cache variable for type JoinRequestError and conformance JoinRequestError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JoinRequestError and conformance JoinRequestError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JoinRequestProvider and conformance JoinRequestProvider()
{
  result = lazy protocol witness table cache variable for type JoinRequestProvider and conformance JoinRequestProvider;
  if (!lazy protocol witness table cache variable for type JoinRequestProvider and conformance JoinRequestProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JoinRequestProvider and conformance JoinRequestProvider);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JoinRequestError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JoinRequestError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for IDSAccount()
{
  result = lazy cache variable for type metadata for IDSAccount;
  if (!lazy cache variable for type metadata for IDSAccount)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for IDSAccount);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IDSAccount and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type IDSAccount and conformance NSObject;
  if (!lazy protocol witness table cache variable for type IDSAccount and conformance NSObject)
  {
    type metadata accessor for IDSAccount();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IDSAccount and conformance NSObject);
  }

  return result;
}

Swift::Int OwnerCredentials.Errors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x259C3C4C0](a1);
  return Hasher._finalize()();
}

uint64_t OwnerCredentials.publicKeyData.getter()
{
  v0 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v4 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t OwnerCredentials.__allocating_init()()
{
  v0 = swift_allocObject();
  P256.KeyAgreement.PrivateKey.init(compactRepresentable:)();
  return v0;
}

uint64_t OwnerCredentials.init()()
{
  v1 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  P256.KeyAgreement.PrivateKey.init(compactRepresentable:)();
  (*(v2 + 32))(v0 + OBJC_IVAR____TtC12JoinRequests16OwnerCredentials_privateKey, v4, v1);
  return v0;
}

uint64_t OwnerCredentials.__allocating_init(privateKeyData:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  v11[0] = a1;
  v11[1] = a2;
  P256.KeyAgreement.PrivateKey.init<A>(rawRepresentation:)();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v6 + 32))(v9 + OBJC_IVAR____TtC12JoinRequests16OwnerCredentials_privateKey, v8, v5);
  }

  return v9;
}

uint64_t OwnerCredentials.init(privateKeyData:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = a1;
  v11[1] = a2;
  P256.KeyAgreement.PrivateKey.init<A>(rawRepresentation:)();
  if (v3)
  {
    type metadata accessor for OwnerCredentials(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v7 + 32))(v2 + OBJC_IVAR____TtC12JoinRequests16OwnerCredentials_privateKey, v9, v6);
  }

  return v2;
}

uint64_t type metadata accessor for OwnerCredentials(uint64_t a1)
{
  result = type metadata singleton initialization cache for OwnerCredentials;
  if (!type metadata singleton initialization cache for OwnerCredentials)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

NSObject *OwnerCredentials.decrypt(request:publicKey:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v67 = a4;
  v56 = a1;
  v57 = a2;
  v5 = type metadata accessor for AES.GCM.SealedBox();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x28223BE20](v5);
  v58 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SymmetricKey();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v63 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v62 = &v52 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v61 = &v52 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - v14;
  v16 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v64 = *(v16 - 8);
  v65 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for RequestKeyAgreement(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v52 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v52 - v30;
  v68 = a3;
  v69 = v67;
  outlined copy of Data._Representation(a3, v67);
  v32 = v70;
  P256.KeyAgreement.PublicKey.init<A>(compactRepresentation:)();
  if (v32)
  {
    if (one-time initialization token for credentials != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Log.credentials);
    MEMORY[0x259C3C6B0](v32);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      MEMORY[0x259C3C6B0](v32);
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v38;
      *v37 = v38;
      _os_log_impl(&dword_255656000, v34, v35, "Failed to derive public key from requester public key data provided alongside request: %@", v36, 0xCu);
      outlined destroy of SymmetricKey?(v37, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x259C3C770](v37, -1, -1);
      MEMORY[0x259C3C770](v36, -1, -1);
    }

    lazy protocol witness table accessor for type OwnerCredentials.Errors and conformance OwnerCredentials.Errors();
    swift_allocError();
    *v39 = 0;
    swift_willThrow();
  }

  else
  {
    v53 = v15;
    (*(v23 + 32))(v31, v29, v22);
    (*(v23 + 16))(v26, v31, v22);
    (*(v64 + 16))(v18, &v66[OBJC_IVAR____TtC12JoinRequests16OwnerCredentials_privateKey], v65);
    RequestKeyAgreement.init(publicKey:privateKey:)(v26, v18, v21);
    v40 = v62;
    v41 = v63;
    RequestKeyAgreement.retrieveKeyPair()(v62, v63);
    v66 = v31;
    v67 = v21;
    v70 = v22;
    v44 = v59;
    v43 = v60;
    v45 = *(v59 + 32);
    v46 = v53;
    v45(v53, v40, v60);
    v47 = v61;
    v45(v61, v41, v43);
    v49 = v56;
    v48 = v57;
    outlined copy of Data._Representation(v56, v57);
    v50 = v58;
    _s9CryptoKit3AESO3GCMO9SealedBoxV8combinedAGx_tKc10Foundation12DataProtocolRzlufCAI0I0V_Tt1g5(v49, v48);
    v34 = static AES.GCM.open(_:using:)();
    (*(v54 + 8))(v50, v55);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v51 = *(v44 + 8);
    v51(v47, v43);
    v51(v46, v43);
    outlined destroy of RequestKeyAgreement(v67);
    (*(v23 + 8))(v66, v70);
  }

  return v34;
}

unint64_t lazy protocol witness table accessor for type OwnerCredentials.Errors and conformance OwnerCredentials.Errors()
{
  result = lazy protocol witness table cache variable for type OwnerCredentials.Errors and conformance OwnerCredentials.Errors;
  if (!lazy protocol witness table cache variable for type OwnerCredentials.Errors and conformance OwnerCredentials.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OwnerCredentials.Errors and conformance OwnerCredentials.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OwnerCredentials.Errors and conformance OwnerCredentials.Errors;
  if (!lazy protocol witness table cache variable for type OwnerCredentials.Errors and conformance OwnerCredentials.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OwnerCredentials.Errors and conformance OwnerCredentials.Errors);
  }

  return result;
}

NSObject *OwnerCredentials.encrypt(response:responseKeyData:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for AES.GCM.SealedBox();
  v30 = *(v11 - 8);
  v31 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SymmetricKey();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a3;
  v33 = a4;
  outlined copy of Data._Representation(a3, a4);
  v18 = MEMORY[0x277CC9318];
  SymmetricKey.init<A>(data:)();
  v32 = a1;
  v33 = a2;
  v19 = type metadata accessor for AES.GCM.Nonce();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  lazy protocol witness table accessor for type Data and conformance Data();
  v20 = v34;
  static AES.GCM.seal<A>(_:using:nonce:)();
  if (v20)
  {
    outlined destroy of SymmetricKey?(v10, &_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
    (*(v15 + 8))(v17, v14);
  }

  else
  {
    v21 = v14;
    outlined destroy of SymmetricKey?(v10, &_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
    v18 = AES.GCM.SealedBox.combined.getter();
    v23 = v22;
    (*(v30 + 8))(v13, v31);
    if (v23 >> 60 == 15)
    {
      v24 = v15;
      if (one-time initialization token for credentials != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static Log.credentials);
      v18 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_255656000, v18, v26, "Failed to encrypt response.", v27, 2u);
        MEMORY[0x259C3C770](v27, -1, -1);
      }

      lazy protocol witness table accessor for type OwnerCredentials.Errors and conformance OwnerCredentials.Errors();
      swift_allocError();
      *v28 = 2;
      swift_willThrow();
      (*(v24 + 8))(v17, v21);
    }

    else
    {
      (*(v15 + 8))(v17, v21);
    }
  }

  return v18;
}

uint64_t OwnerCredentials.deinit()
{
  v1 = OBJC_IVAR____TtC12JoinRequests16OwnerCredentials_privateKey;
  v2 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t OwnerCredentials.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12JoinRequests16OwnerCredentials_privateKey;
  v2 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata completion function for OwnerCredentials(uint64_t a1)
{
  result = type metadata accessor for P256.KeyAgreement.PrivateKey();
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

uint64_t SymmetricKey.init<A>(rawRepresentation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  SymmetricKey.init<A>(data:)();
  return (*(v5 + 8))(a1, a2);
}

uint64_t closure #1 in SymmetricKey.rawRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x277D838B0];
  v14[4] = MEMORY[0x277CC9C18];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x277D838B0]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = specialized Data.InlineData.init(_:)(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = specialized Data.LargeSlice.init(_:)(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = specialized Data.InlineSlice.init(_:)(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t specialized Data.InlineData.init(count:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return __DataStorage.init(bytes:length:copy:deallocator:offset:)();
}