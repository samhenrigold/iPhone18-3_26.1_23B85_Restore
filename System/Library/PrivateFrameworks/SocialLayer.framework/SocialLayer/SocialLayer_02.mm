id ProcessVerifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProcessVerifier.init()()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR___SLDProcessVerifier_useStaticKeyForTesting] = 0;
  v2 = OBJC_IVAR___SLDProcessVerifier____lazy_storage___staticTestingKey;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ProcessVerifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized GenericPasswordStore.storeKey<A>(_:account:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183E350;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  v7 = v6;
  *(inited + 40) = v8;
  strcpy((inited + 48), "sociallayerd");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v9;
  v10 = *MEMORY[0x277CDC238];
  type metadata accessor for CFStringRef(0);
  v12 = v11;
  *(inited + 120) = v11;
  *(inited + 96) = v10;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v13;
  *(inited + 168) = v7;
  *(inited + 144) = a2;
  *(inited + 152) = a3;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v14;
  v15 = *MEMORY[0x277CDBEE0];
  *(inited + 216) = v12;
  *(inited + 192) = v15;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v16;
  *(inited + 264) = MEMORY[0x277D839B0];
  *(inited + 240) = 1;
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v17;
  type metadata accessor for SymmetricKey();
  lazy protocol witness table accessor for type CryptoKitError and conformance CryptoKitError(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x277CC5330], MEMORY[0x277CC5318]);
  v18 = v10;

  v19 = v15;
  v20 = MEMORY[0x277CC9318];
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  *(inited + 312) = v20;
  *(inited + 288) = v31;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v22 = SecItemAdd(isa, 0);

  if (v22)
  {
    _StringGuts.grow(_:)(24);

    *&v32 = 0xD000000000000016;
    *(&v32 + 1) = 0x8000000231846A70;
    v23 = SecCopyErrorMessageString(v22, 0);
    if (v23)
    {
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = v25;
    }

    else
    {
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v29;
    }

    MEMORY[0x231934620](v28, v27);

    lazy protocol witness table accessor for type GenericPasswordStoreError and conformance GenericPasswordStoreError();
    swift_allocError();
    *v30 = v32;
    swift_willThrow();
  }
}

char *specialized ProcessVerifier.createSealedBox(from:using:tag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v36 = a4;
  v39 = a2;
  v40 = a3;
  v38 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  v12 = type metadata accessor for AES.GCM.SealedBox();
  v34 = *(v12 - 8);
  v35 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v37 = &v33 - v16;
  v17 = type metadata accessor for AES.GCM.Nonce();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  AES.GCM.Nonce.init()();
  v21 = (v18 + 16);
  v22 = (v18 + 56);
  if (a5 >> 60 == 15)
  {
    v43 = v38;
    v44 = v39;
    (*v21)(v9, v20, v17);
    (*v22)(v9, 0, 1, v17);
    lazy protocol witness table accessor for type Data and conformance Data();
    v23 = v45;
    static AES.GCM.seal<A>(_:using:nonce:)();
    if (v23)
    {
      outlined destroy of (CFStringRef, [CFStringRef? : Any])(v9, &_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
LABEL_10:
      (*(v18 + 8))(v20, v17);
      return v9;
    }

    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v9, &_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
    v9 = AES.GCM.SealedBox.combined.getter();
    v28 = v27;
    v29 = v15;
LABEL_8:
    (*(v34 + 8))(v29, v35);
    if (v28 >> 60 == 15)
    {
      v9 = 0x80000002318469F0;
      lazy protocol witness table accessor for type ProcessVerifierError and conformance ProcessVerifierError();
      swift_allocError();
      *v31 = 0xD000000000000045;
      v31[1] = 0x80000002318469F0;
      swift_willThrow();
    }

    goto LABEL_10;
  }

  v24 = a5;
  v43 = v38;
  v44 = v39;
  (*v21)(v11, v20, v17);
  (*v22)(v11, 0, 1, v17);
  v25 = v36;
  v41 = v36;
  v42 = v24;
  outlined copy of Data._Representation(v36, v24);
  lazy protocol witness table accessor for type Data and conformance Data();
  v26 = v45;
  static AES.GCM.seal<A, B>(_:using:nonce:authenticating:)();
  if (!v26)
  {
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v11, &_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
    v29 = v37;
    v9 = AES.GCM.SealedBox.combined.getter();
    v28 = v30;
    outlined consume of Data?(v25, v24);
    goto LABEL_8;
  }

  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v11, &_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
  (*(v18 + 8))(v20, v17);
  outlined consume of Data?(v25, v24);
  return v9;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t lazy protocol witness table accessor for type ProcessVerifierError and conformance ProcessVerifierError()
{
  result = lazy protocol witness table cache variable for type ProcessVerifierError and conformance ProcessVerifierError;
  if (!lazy protocol witness table cache variable for type ProcessVerifierError and conformance ProcessVerifierError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProcessVerifierError and conformance ProcessVerifierError);
  }

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

uint64_t getEnumTagSinglePayload for ProcessVerifierError(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for ProcessVerifierError(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for ProcessVerifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for ProcessVerifier;
  if (!type metadata singleton initialization cache for ProcessVerifier)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ProcessVerifier(uint64_t a1)
{
  type metadata accessor for SymmetricKey??(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for SymmetricKey??(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SymmetricKey??)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for SymmetricKey??);
    }
  }
}

uint64_t outlined assign with take of SymmetricKey??(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgSgMd, &_s9CryptoKit12SymmetricKeyVSgSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SymmetricKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type CryptoKitError and conformance CryptoKitError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type GenericPasswordStoreError and conformance GenericPasswordStoreError()
{
  result = lazy protocol witness table cache variable for type GenericPasswordStoreError and conformance GenericPasswordStoreError;
  if (!lazy protocol witness table cache variable for type GenericPasswordStoreError and conformance GenericPasswordStoreError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericPasswordStoreError and conformance GenericPasswordStoreError);
  }

  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, &_ss23_ContiguousArrayStorageCy9CryptoKit12SHA256DigestVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit12SHA256DigestVGMR, MEMORY[0x277CC5290], MEMORY[0x277CC5290]);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMR, MEMORY[0x277CC54E8], MEMORY[0x277CC54E8]);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t one-time initialization function for SL_GLT_SEED_EXTRACTION_LABEL()
{
  result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD000000000000017, 0x8000000231846BF0);
  SL_GLT_SEED_EXTRACTION_LABEL = result;
  unk_27DD6B610 = v1;
  return result;
}

uint64_t *SL_GLT_SEED_EXTRACTION_LABEL.unsafeMutableAddressor()
{
  if (one-time initialization token for SL_GLT_SEED_EXTRACTION_LABEL != -1)
  {
    swift_once();
  }

  return &SL_GLT_SEED_EXTRACTION_LABEL;
}

uint64_t KeyQueryController.service.getter()
{
  v1 = *(v0 + OBJC_IVAR___SLKeyQueryController_service);

  return v1;
}

void KeyQueryController.pushTokenForSelf.getter()
{
  v1 = (v0 + OBJC_IVAR___SLKeyQueryController____lazy_storage___pushTokenForSelf);
  v2 = *(v0 + OBJC_IVAR___SLKeyQueryController____lazy_storage___pushTokenForSelf);
  v3 = *(v0 + OBJC_IVAR___SLKeyQueryController____lazy_storage___pushTokenForSelf + 8);
  if (v3 >> 60 != 15)
  {
    goto LABEL_5;
  }

  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 pushToken];

    if (v6)
    {
      v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = *v1;
      v11 = v1[1];
      *v1 = v7;
      v1[1] = v9;
      outlined copy of Data._Representation(v7, v9);
      outlined consume of Data?(v10, v11);
LABEL_5:
      outlined copy of Data?(v2, v3);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

uint64_t KeyQueryController.pushTokenForSelf.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___SLKeyQueryController____lazy_storage___pushTokenForSelf);
  v4 = *(v2 + OBJC_IVAR___SLKeyQueryController____lazy_storage___pushTokenForSelf);
  v5 = *(v2 + OBJC_IVAR___SLKeyQueryController____lazy_storage___pushTokenForSelf + 8);
  *v3 = a1;
  v3[1] = a2;
  return outlined consume of Data?(v4, v5);
}

uint64_t (*KeyQueryController.pushTokenForSelf.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  KeyQueryController.pushTokenForSelf.getter();
  *a1 = v3;
  a1[1] = v4;
  return KeyQueryController.pushTokenForSelf.modify;
}

uint64_t KeyQueryController.pushTokenForSelf.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = (a1[2] + OBJC_IVAR___SLKeyQueryController____lazy_storage___pushTokenForSelf);
  v5 = *v4;
  v6 = v4[1];
  *v4 = *a1;
  v4[1] = v2;
  if (a2)
  {
    outlined copy of Data._Representation(v3, v2);
    outlined consume of Data?(v5, v6);

    return outlined consume of Data._Representation(v3, v2);
  }

  else
  {

    return outlined consume of Data?(v5, v6);
  }
}

id KeyQueryController.localAccountHandles.getter()
{
  v1 = OBJC_IVAR___SLKeyQueryController____lazy_storage___localAccountHandles;
  v2 = *(v0 + OBJC_IVAR___SLKeyQueryController____lazy_storage___localAccountHandles);
  v3 = v2;
  if (v2 != 1)
  {
    goto LABEL_4;
  }

  result = [*(v0 + OBJC_IVAR___SLKeyQueryController_idsService) accounts];
  if (result)
  {
    v5 = result;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSAccount, 0x277D186C0);
    lazy protocol witness table accessor for type IDSAccount and conformance NSObject();
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Sequence.compactMap<A>(_:)(v6);
    v3 = v7;

    v8 = *(v0 + v1);
    *(v0 + v1) = v3;

    outlined consume of [String]??(v8);
LABEL_4:
    outlined copy of [String]??(v2);
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type IDSAccount and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type IDSAccount and conformance NSObject;
  if (!lazy protocol witness table cache variable for type IDSAccount and conformance NSObject)
  {
    type metadata accessor for OS_dispatch_queue(255, &lazy cache variable for type metadata for IDSAccount, 0x277D186C0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IDSAccount and conformance NSObject);
  }

  return result;
}

uint64_t outlined consume of [String]??(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t outlined copy of [String]??(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t KeyQueryController.localAccountHandles.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___SLKeyQueryController____lazy_storage___localAccountHandles);
  *(v1 + OBJC_IVAR___SLKeyQueryController____lazy_storage___localAccountHandles) = a1;
  return outlined consume of [String]??(v2);
}

uint64_t (*KeyQueryController.localAccountHandles.modify(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = KeyQueryController.localAccountHandles.getter();
  return KeyQueryController.localAccountHandles.modify;
}

uint64_t KeyQueryController.localAccountHandles.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + OBJC_IVAR___SLKeyQueryController____lazy_storage___localAccountHandles);
  *(v2 + OBJC_IVAR___SLKeyQueryController____lazy_storage___localAccountHandles) = *a1;
  if (a2)
  {

    outlined consume of [String]??(v3);
  }

  else
  {

    return outlined consume of [String]??(v3);
  }
}

id KeyQueryController.__allocating_init(service:targetQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  ObjectType = swift_getObjectType();
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v11 = result;
    v13[3] = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSIDQueryController, 0x277D18728);
    v13[4] = &protocol witness table for IDSIDQueryController;
    v13[0] = v11;
    v12 = (*(ObjectType + 176))(a1, a2, a3, v13);
    swift_deallocPartialClassInstance();
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id KeyQueryController.init(service:targetQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v8 = result;
    v10[3] = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSIDQueryController, 0x277D18728);
    v10[4] = &protocol witness table for IDSIDQueryController;
    v10[0] = v8;
    v9 = (*(ObjectType + 176))(a1, a2, a3, v10);
    swift_deallocPartialClassInstance();
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t KeyQueryController.__allocating_init(service:targetQueue:queryController:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  specialized KeyQueryController.init(service:targetQueue:queryController:)(a1, a2, a3, a4);
  v11 = v10;

  return v11;
}

uint64_t KeyQueryController.init(service:targetQueue:queryController:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  specialized KeyQueryController.init(service:targetQueue:queryController:)(a1, a2, a3, a4);
  v6 = v5;

  return v6;
}

uint64_t KeyQueryController.publicKeysAndTPS(for:documentIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
  v5[18] = swift_task_alloc();
  v6 = type metadata accessor for P256.Signing.PublicKey();
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMR);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](KeyQueryController.publicKeysAndTPS(for:documentIdentifier:), 0, 0);
}

uint64_t KeyQueryController.publicKeysAndTPS(for:documentIdentifier:)()
{
  v23 = v0;
  if (one-time initialization token for keyController != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.keyController);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v8 = v0[13];
    v7 = v0[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v22);
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v6 + OBJC_IVAR___SLKeyQueryController_service), *(v6 + OBJC_IVAR___SLKeyQueryController_service + 8), &v22);
    _os_log_impl(&dword_231772000, v4, v5, "Querying for IDSEndpoints for handles %s on service: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2319361B0](v10, -1, -1);
    MEMORY[0x2319361B0](v9, -1, -1);
  }

  v11 = v0[17];
  v12 = *(v11 + OBJC_IVAR___SLKeyQueryController_queryController + 24);
  v13 = *(v11 + OBJC_IVAR___SLKeyQueryController_queryController + 32);
  __swift_project_boxed_opaque_existential_1((v11 + OBJC_IVAR___SLKeyQueryController_queryController), v12);
  v14 = *(v11 + OBJC_IVAR___SLKeyQueryController_service);
  v15 = *(v11 + OBJC_IVAR___SLKeyQueryController_service + 8);
  v16 = *(v11 + OBJC_IVAR___SLKeyQueryController_queue);
  v21 = (*(v13 + 8) + **(v13 + 8));
  v17 = swift_task_alloc();
  v0[29] = v17;
  *v17 = v0;
  v17[1] = KeyQueryController.publicKeysAndTPS(for:documentIdentifier:);
  v18 = v0[14];
  v19 = v0[13];

  return v21(v19, v18, v14, v15, v16, v12, v13);
}

{
  v1 = *(v0 + 240);
  if (*(v1 + 16))
  {
    result = outlined init with copy of HighlightDisambiguationPillMetricVariant(v1 + 32, v0 + 16);
    v3 = *(v1 + 16);
    if (!v3)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    v4 = *(v0 + 240);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 96) = v4;
    v6 = *(v0 + 240);
    if (!isUniquelyReferenced_nonNull_native || (v3 - 1) > v6[3] >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v3, 1, *(v0 + 240));
      *(v0 + 96) = v6;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
    (*(v8 + 8))(v7, v8);
    v9 = *((*MEMORY[0x277D85000] & **(v0 + 136)) + 0xD0);
    v13 = v9(*(v0 + 224), *(v0 + 200), 0, 0xF000000000000000, *(v0 + 120), *(v0 + 128));
    v15 = v14;
    v52 = v9;
    v16 = *(v0 + 216);
    v17 = *(v0 + 224);
    v49 = *(v0 + 208);
    v18 = *(v0 + 160);
    v56 = *(v0 + 152);
    v19 = (v17 + *(v49 + 48));
    v51 = *(v18 + 8);
    (v51)(*(v0 + 200));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    *v19 = v13;
    v19[1] = v15;
    outlined init with copy of (NSAttributedStringKey, Any)(v17, v16, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMR);
    v20 = (v16 + *(v49 + 48));
    v53 = v20[1];
    v54 = *v20;
    v51(v16, v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMR);
    v21 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v46 = *(v18 + 72);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_23183D7E0;
    outlined init with copy of (NSAttributedStringKey, Any)(v17, v16, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMR);
    outlined consume of Data._Representation(*(v16 + *(v49 + 48)), *(v16 + *(v49 + 48) + 8));
    v24 = v18 + 32;
    v23 = *(v18 + 32);
    v45 = v21;
    result = v23(v22 + v21, v16, v56);
    v58 = v22;
    v50 = v6[2];
    if (v50)
    {
      v25 = 0;
      v26 = *(v0 + 160);
      v27 = (v6 + 4);
      v47 = (v26 + 48);
      v48 = (v26 + 56);
      v57 = MEMORY[0x277D84F90];
      while (v25 < v6[2])
      {
        v28 = v24;
        outlined init with copy of HighlightDisambiguationPillMetricVariant(v27, v0 + 56);
        v30 = *(v0 + 80);
        v29 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v30);
        (*(v29 + 8))(v30, v29);
        v31 = v52(*(v0 + 184), *(v0 + 176), v54, v53, *(v0 + 120), *(v0 + 128));
        v33 = *(v0 + 176);
        v32 = *(v0 + 184);
        v35 = *(v0 + 144);
        v34 = *(v0 + 152);
        outlined consume of Data._Representation(v31, v36);
        v51(v33, v34);
        v23(v35, v32, v34);
        (*v48)(v35, 0, 1, v34);
        __swift_destroy_boxed_opaque_existential_0((v0 + 56));
        if ((*v47)(v35, 1, v34) == 1)
        {
          result = outlined destroy of (CFStringRef, [CFStringRef? : Any])(*(v0 + 144), &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
          v24 = v28;
        }

        else
        {
          v37 = *(v0 + 192);
          v38 = *(v0 + 168);
          v39 = *(v0 + 152);
          v23(v37, *(v0 + 144), v39);
          v23(v38, v37, v39);
          v24 = v28;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57[2] + 1, 1, v57, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMR, MEMORY[0x277CC54E8]);
          }

          v41 = v57[2];
          v40 = v57[3];
          if (v41 >= v40 >> 1)
          {
            v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v57, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMR, MEMORY[0x277CC54E8]);
          }

          v42 = *(v0 + 168);
          v43 = *(v0 + 152);
          v57[2] = v41 + 1;
          result = v23(v57 + v45 + v41 * v46, v42, v43);
        }

        ++v25;
        v27 += 40;
        if (v50 == v25)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_25;
    }

    v57 = MEMORY[0x277D84F90];
LABEL_23:
    v44 = *(v0 + 224);

    specialized Array.append<A>(contentsOf:)(v57, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMR, MEMORY[0x277CC54E8], MEMORY[0x277CC54E8]);
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v44, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMR);
    v55 = v58;
    v11 = v53;
    v10 = v54;
  }

  else
  {

    v55 = 0;
    v10 = 0;
    v11 = 0;
  }

  v12 = *(v0 + 8);

  return v12(v55, v10, v11);
}

uint64_t KeyQueryController.publicKeysAndTPS(for:documentIdentifier:)(uint64_t a1)
{
  *(*v1 + 240) = a1;

  return MEMORY[0x2822009F8](KeyQueryController.publicKeysAndTPS(for:documentIdentifier:), 0, 0);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> KeyQueryController.validateKeyType(_:isPublicKey:)(SecKeyRef _, Swift::Bool isPublicKey)
{
  v2 = SecKeyCopyAttributes(_);
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v4 = 0;
      type metadata accessor for CFStringRef(0);
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  lazy protocol witness table accessor for type KeyQueryController.DiversificationErrors and conformance KeyQueryController.DiversificationErrors();
  swift_allocError();
  swift_willThrow();
}

id KeyQueryController.diversify(publicKey:tps:docId:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (a4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v11 = objc_opt_self();
  v12 = MEMORY[0x231934530](a5, a6);
  v19[0] = 0;
  v13 = [v11 diversifyPublicKey:a2 trackingPreventionSalt:isa withDocumentIdentifier:v12 error:v19];

  if (v13)
  {
    v14 = v19[0];
    v15 = [v13 diversifiedKey];
    v16 = v15;
    SecKeyRef.p256PublicKey.getter();
    if (v6)
    {
    }

    else
    {

      v17 = [v13 trackingPreventionSalt];
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  else
  {
    v16 = v19[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v16;
}

NSObject *KeyQueryController.diversifyKey(_:trackingPreventionSalt:documentIdentifier:)(uint64_t a1, uint64_t a2, void *a3, char *a4, char *a5, char *a6)
{
  v50 = a6;
  v7 = v6;
  v48 = a4;
  v49 = a5;
  v46 = a1;
  v47 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = type metadata accessor for P256.Signing.PublicKey();
  v45 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v44 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v44 - v22;
  v24 = P256.Signing.PublicKey.secKey.getter();
  if (v24)
  {
    v25 = v24;
    v26 = (*((*MEMORY[0x277D85000] & *v7) + 0xC8))(v46, v24, v47, v48, v49, v50);
  }

  else
  {
    v48 = v18;
    v49 = v21;
    v50 = v12;
    v51 = v23;
    v27 = v45;
    if (one-time initialization token for keyController != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Log.keyController);
    v29 = *(v27 + 16);
    v30 = v51;
    v31 = v15;
    v29(v51, a2, v15);
    v26 = Logger.logObject.getter();
    LODWORD(v32) = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v32))
    {
      v33 = v30;
      v34 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v52 = v47;
      *v34 = 136315138;
      v29(v14, v33, v15);
      (*(v27 + 56))(v14, 0, 1, v15);
      v35 = v50;
      outlined init with copy of (NSAttributedStringKey, Any)(v14, v50, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
      if ((*(v27 + 48))(v35, 1, v15) == 1)
      {
        v36 = 0xE300000000000000;
        v37 = 7104878;
      }

      else
      {
        v38 = *(v27 + 32);
        LODWORD(v46) = v32;
        v32 = v49;
        v38(v49, v35, v15);
        v29(v48, v32, v15);
        v37 = String.init<A>(reflecting:)();
        v36 = v39;
        v40 = v32;
        LOBYTE(v32) = v46;
        (*(v27 + 8))(v40, v31);
      }

      outlined destroy of (CFStringRef, [CFStringRef? : Any])(v14, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
      (*(v27 + 8))(v51, v31);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v36, &v52);

      *(v34 + 4) = v41;
      _os_log_impl(&dword_231772000, v26, v32, "Failed to create SecKey from P256 publicKey %s", v34, 0xCu);
      v42 = v47;
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x2319361B0](v42, -1, -1);
      MEMORY[0x2319361B0](v34, -1, -1);
    }

    else
    {

      (*(v27 + 8))(v30, v15);
    }

    lazy protocol witness table accessor for type KeyQueryController.DiversificationErrors and conformance KeyQueryController.DiversificationErrors();
    swift_allocError();
    swift_willThrow();
  }

  return v26;
}

uint64_t KeyQueryController.signData(data:documentIdentifier:trackingPreventionSalt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[24] = a5;
  v6[25] = v5;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  v6[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMR);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
  v6[29] = swift_task_alloc();
  v7 = swift_task_alloc();
  v6[30] = v7;
  v8 = *((*MEMORY[0x277D85000] & *v5) + 0xE0);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  v6[31] = v9;
  *v9 = v6;
  v9[1] = KeyQueryController.signData(data:documentIdentifier:trackingPreventionSalt:);

  return v11(v7);
}

uint64_t KeyQueryController.signData(data:documentIdentifier:trackingPreventionSalt:)()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = KeyQueryController.signData(data:documentIdentifier:trackingPreventionSalt:);
  }

  else
  {
    v2 = KeyQueryController.signData(data:documentIdentifier:trackingPreventionSalt:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v40 = v0;
  v1 = *(v0 + 232);
  outlined init with copy of (NSAttributedStringKey, Any)(*(v0 + 240), v1, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
  v2 = type metadata accessor for P256.Signing.PublicKey();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 232);
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(*(v0 + 240), &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
    v5 = v4;
LABEL_11:
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v5, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
LABEL_12:

    v19 = *(v0 + 8);

    return v19(0, 0xF000000000000000);
  }

  v6 = *(v0 + 232);
  v7 = P256.Signing.PublicKey.secKey.getter();
  *(v0 + 264) = v7;
  v8 = *(v3 + 8);
  v8(v6, v2);
  if (!v7)
  {
    v5 = *(v0 + 240);
    goto LABEL_11;
  }

  v9 = *(v0 + 256);
  v10 = (*((*MEMORY[0x277D85000] & **(v0 + 200)) + 0xC8))(*(v0 + 224), v7, *(v0 + 184), *(v0 + 192), *(v0 + 168), *(v0 + 176));
  if (v9)
  {
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(*(v0 + 240), &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.default);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v16 = *(v0 + 168);
      v15 = *(v0 + 176);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v39 = v18;
      *v17 = 136315138;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &v39);
      _os_log_impl(&dword_231772000, v13, v14, "Error while signing data for document with identifier: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x2319361B0](v18, -1, -1);
      MEMORY[0x2319361B0](v17, -1, -1);
    }

    goto LABEL_12;
  }

  v22 = *(v0 + 216);
  v21 = *(v0 + 224);
  v23 = *(v0 + 208);
  v37 = *(v0 + 200);
  v25 = *(v0 + 168);
  v24 = *(v0 + 176);
  v38 = *(v0 + 160);
  v26 = (v21 + *(v23 + 48));
  *v26 = v10;
  v26[1] = v11;
  outlined init with copy of (NSAttributedStringKey, Any)(v21, v22, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMR);
  v27 = (v22 + *(v23 + 48));
  v28 = *v27;
  v29 = v27[1];
  v30 = objc_allocWithZone(MEMORY[0x277D18A38]);
  v31 = MEMORY[0x231934530](v25, v24);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v33 = [v30 initWithDiversifier:v31 trackingPreventionSecret:isa];
  *(v0 + 272) = v33;

  outlined consume of Data._Representation(v28, v29);
  v8(v22, v2);
  v34 = [objc_allocWithZone(MEMORY[0x277D18A40]) initWithKeyType:1 diversifier:v33];
  *(v0 + 280) = v34;
  v35 = *(v37 + OBJC_IVAR___SLKeyQueryController_idsService);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = KeyQueryController.signData(data:documentIdentifier:trackingPreventionSalt:);
  v36 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation4DataVs5Error_pGMd, &_sSccy10Foundation4DataVs5Error_pGMR);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSData?, @unowned NSError?) -> () with result type Data;
  *(v0 + 104) = &block_descriptor_2;
  *(v0 + 112) = v36;
  [v35 signData:v38 withAlgorithm:1 options:v34 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = KeyQueryController.signData(data:documentIdentifier:trackingPreventionSalt:);
  }

  else
  {
    v2 = KeyQueryController.signData(data:documentIdentifier:trackingPreventionSalt:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[28];

  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v5, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMR);
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v4, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
  v7 = v0[18];
  v6 = v0[19];

  v8 = v0[1];

  return v8(v7, v6);
}

{
  v12 = v0;
  v1 = v0[32];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[21];
    v5 = v0[22];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v11);
    _os_log_impl(&dword_231772000, v3, v4, "Error while signing data for document with identifier: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2319361B0](v8, -1, -1);
    MEMORY[0x2319361B0](v7, -1, -1);
  }

  v9 = v0[1];

  return v9(0, 0xF000000000000000);
}

uint64_t KeyQueryController.signData(data:documentIdentifier:trackingPreventionSalt:)(uint64_t a1)
{
  v18 = v1;
  v2 = v1[35];
  v4 = v1[33];
  v3 = v1[34];
  v5 = v1[30];
  v6 = v1[28];
  swift_willThrow();

  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v6, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMR);
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v5, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);

  v7 = v1[36];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.default);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = v1[21];
    v11 = v1[22];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v17);
    _os_log_impl(&dword_231772000, v9, v10, "Error while signing data for document with identifier: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x2319361B0](v14, -1, -1);
    MEMORY[0x2319361B0](v13, -1, -1);
  }

  v15 = v1[1];

  return v15(0, 0xF000000000000000);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSData?, @unowned NSError?) -> () with result type Data(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return swift_continuation_throwingResume();
  }
}

uint64_t KeyQueryController.localPublicKey()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;

  return MEMORY[0x2822009F8](KeyQueryController.localPublicKey(), 0, 0);
}

{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](KeyQueryController.localPublicKey(), 0, 0);
}

uint64_t KeyQueryController.localPublicKey()()
{
  v29 = v0;
  v28[1] = *MEMORY[0x277D85DE8];
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x98))();
  if (v1)
  {
    if (v1[2])
    {
      v2 = v1[4];
      v3 = v1[5];
      *(v0 + 32) = v3;

      if (one-time initialization token for keyController != -1)
      {
        swift_once();
      }

      v4 = *(v0 + 24);
      v5 = type metadata accessor for Logger();
      *(v0 + 40) = v5;
      __swift_project_value_buffer(v5, static Log.keyController);

      v6 = v4;
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = *(v0 + 24);
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v28[0] = v11;
        *v10 = 136315394;
        *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, v28);
        *(v10 + 12) = 2080;
        *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v9 + OBJC_IVAR___SLKeyQueryController_service), *(v9 + OBJC_IVAR___SLKeyQueryController_service + 8), v28);
        _os_log_impl(&dword_231772000, v7, v8, "Querying for IDSEndpoints for handles %s on service: %s", v10, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2319361B0](v11, -1, -1);
        MEMORY[0x2319361B0](v10, -1, -1);
      }

      v12 = *(v0 + 24);
      v13 = *(v12 + OBJC_IVAR___SLKeyQueryController_queryController + 24);
      v14 = *(v12 + OBJC_IVAR___SLKeyQueryController_queryController + 32);
      __swift_project_boxed_opaque_existential_1((v12 + OBJC_IVAR___SLKeyQueryController_queryController), v13);
      v15 = *(v12 + OBJC_IVAR___SLKeyQueryController_service);
      v16 = *(v12 + OBJC_IVAR___SLKeyQueryController_service + 8);
      v17 = *(v12 + OBJC_IVAR___SLKeyQueryController_queue);
      v27 = (*(v14 + 8) + **(v14 + 8));
      v18 = swift_task_alloc();
      *(v0 + 48) = v18;
      *v18 = v0;
      v18[1] = KeyQueryController.localPublicKey();

      return v27(v2, v3, v15, v16, v17, v13, v14);
    }
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Log.default);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_231772000, v21, v22, "KeyQueryController.localPublicKey() Could not get localHandle", v23, 2u);
    MEMORY[0x2319361B0](v23, -1, -1);
  }

  v24 = *(v0 + 16);

  v25 = type metadata accessor for P256.Signing.PublicKey();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  v26 = *(v0 + 8);

  return v26();
}

{
  v53 = v0;
  v52 = *MEMORY[0x277D85DE8];
  v1 = specialized _arrayConditionalCast<A, B>(_:)(*(v0 + 56));

  if (!v1)
  {
    if (one-time initialization token for default != -1)
    {
      goto LABEL_87;
    }

    goto LABEL_67;
  }

  v47 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
    goto LABEL_78;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_79:

    v40 = *(v0 + 16);
    v41 = type metadata accessor for P256.Signing.PublicKey();
    (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
    goto LABEL_80;
  }

LABEL_4:
  v3 = 0;
  v44 = v0 + 64;
  v48 = *((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x80);
  v49 = v1 & 0xC000000000000001;
  v45 = v1;
  v46 = v0;
  while (1)
  {
    if (v49)
    {
      v4 = MEMORY[0x231934AB0](v3, v1);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (v3 >= *(v47 + 16))
      {
        goto LABEL_75;
      }

      v4 = *(v1 + 8 * v3 + 32);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        v2 = __CocoaSet.count.getter();
        if (!v2)
        {
          goto LABEL_79;
        }

        goto LABEL_4;
      }
    }

    v50 = v4;
    v6 = [v4 pushToken];
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = v48();
    v12 = v10;
    v13 = v11;
    v14 = v9 >> 62;
    v15 = v11 >> 62;
    if (v9 >> 62 == 3)
    {
      if (v7)
      {
        v16 = 0;
      }

      else
      {
        v16 = v9 == 0xC000000000000000;
      }

      v17 = 0;
      v18 = v16 && v11 >> 62 == 3;
      if (v18 && !v10 && v11 == 0xC000000000000000)
      {

        outlined consume of Data._Representation(0, 0xC000000000000000);
        v36 = 0;
        v37 = 0xC000000000000000;
        goto LABEL_72;
      }

LABEL_35:
      if (v15 > 1)
      {
        goto LABEL_29;
      }

      goto LABEL_36;
    }

    if (v14 <= 1)
    {
      break;
    }

    if (v14 == 2)
    {
      v24 = *(v7 + 16);
      v23 = *(v7 + 24);
      v21 = __OFSUB__(v23, v24);
      v17 = v23 - v24;
      if (v21)
      {
        goto LABEL_84;
      }

      goto LABEL_35;
    }

    v17 = 0;
    if (v15 > 1)
    {
LABEL_29:
      if (v15 != 2)
      {
        if (!v17)
        {
          goto LABEL_70;
        }

        goto LABEL_6;
      }

      v20 = *(v10 + 16);
      v19 = *(v10 + 24);
      v21 = __OFSUB__(v19, v20);
      v22 = v19 - v20;
      if (v21)
      {
        goto LABEL_77;
      }

      goto LABEL_38;
    }

LABEL_36:
    if (!v15)
    {
      v22 = BYTE6(v11);
LABEL_38:
      if (v17 == v22)
      {
        goto LABEL_42;
      }

      goto LABEL_6;
    }

    if (__OFSUB__(HIDWORD(v10), v10))
    {
      goto LABEL_76;
    }

    if (v17 == HIDWORD(v10) - v10)
    {
LABEL_42:
      if (v17 < 1)
      {
LABEL_70:

        outlined consume of Data._Representation(v12, v13);
        v36 = v7;
        v37 = v9;
LABEL_72:
        outlined consume of Data._Representation(v36, v37);
LABEL_73:
        IDSEndpoint.applicationPublicDeviceKey.getter();
        v38 = *(v0 + 16);
        v39 = type metadata accessor for P256.Signing.PublicKey();
        (*(*(v39 - 8) + 56))(v38, 0, 1, v39);

        goto LABEL_80;
      }

      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(v0 + 84) = 0;
          *(v0 + 78) = 0;
          outlined copy of Data._Representation(v10, v11);
          v25 = v0 + 78;
          goto LABEL_64;
        }

        v27 = *(v7 + 16);
        v26 = *(v7 + 24);
        outlined copy of Data._Representation(v10, v11);
        v28 = __DataStorage._bytes.getter();
        if (v28)
        {
          v29 = __DataStorage._offset.getter();
          if (__OFSUB__(v27, v29))
          {
            __break(1u);
LABEL_89:
            __break(1u);
          }

          v28 += v27 - v29;
        }

        v21 = __OFSUB__(v26, v27);
        v0 = v26 - v27;
        if (v21)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (!v14)
        {
          *(v0 + 64) = v7;
          *(v0 + 72) = v9;
          *(v0 + 74) = BYTE2(v9);
          *(v0 + 75) = BYTE3(v9);
          *(v0 + 76) = BYTE4(v9);
          *(v0 + 77) = BYTE5(v9);
          outlined copy of Data._Representation(v10, v11);
          v25 = v44;
LABEL_64:
          closure #1 in static Data.== infix(_:_:)(v25, v12, v13, v51);
          outlined consume of Data._Representation(v12, v13);
          outlined consume of Data._Representation(v7, v9);
          outlined consume of Data._Representation(v12, v13);
          if (v51[0])
          {
LABEL_71:

            goto LABEL_73;
          }

LABEL_65:

          goto LABEL_7;
        }

        v0 = v7;
        if (v7 >> 32 < v7)
        {
          goto LABEL_85;
        }

        outlined copy of Data._Representation(v10, v11);
        v28 = __DataStorage._bytes.getter();
        if (v28)
        {
          v30 = __DataStorage._offset.getter();
          if (__OFSUB__(v7, v30))
          {
            goto LABEL_89;
          }

          v28 += v7 - v30;
        }
      }

      MEMORY[0x231933EB0]();
      closure #1 in static Data.== infix(_:_:)(v28, v12, v13, v51);
      outlined consume of Data._Representation(v12, v13);
      outlined consume of Data._Representation(v7, v9);
      outlined consume of Data._Representation(v12, v13);
      v1 = v45;
      v0 = v46;
      if (v51[0])
      {
        goto LABEL_71;
      }

      goto LABEL_65;
    }

LABEL_6:

    outlined consume of Data._Representation(v12, v13);
    outlined consume of Data._Representation(v7, v9);
LABEL_7:
    ++v3;
    if (v5 == v2)
    {
      goto LABEL_79;
    }
  }

  if (!v14)
  {
    v17 = BYTE6(v9);
    if (v15 > 1)
    {
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  LODWORD(v17) = HIDWORD(v7) - v7;
  if (!__OFSUB__(HIDWORD(v7), v7))
  {
    v17 = v17;
    if (v15 > 1)
    {
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  swift_once();
LABEL_67:
  __swift_project_value_buffer(*(v0 + 40), static Log.default);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_231772000, v31, v32, "KeyQueryController.localPublicKey() Could not get currentRemoteDevice", v33, 2u);
    MEMORY[0x2319361B0](v33, -1, -1);
  }

  v34 = *(v0 + 16);

  v35 = type metadata accessor for P256.Signing.PublicKey();
  (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
LABEL_80:
  v42 = *(v0 + 8);

  return v42();
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 40)
  {
    outlined init with copy of HighlightDisambiguationPillMetricVariant(i, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SocialLayer8Endpoint_pMd, &_s11SocialLayer8Endpoint_pMR);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSEndpoint, 0x277D189C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void IDSEndpoint.applicationPublicDeviceKey.getter()
{
  v1 = [v0 applicationPublicDeviceIdentity];
  if (v1)
  {
    v2 = v1;
    SecKeyRef.p256PublicKey.getter();
  }

  else
  {
    if (one-time initialization token for keyController != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.keyController);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_231772000, v4, v5, "Failed to convert IDSEndpoint's publicIdentity to SecKey, this is a failing forward declare!", v6, 2u);
      MEMORY[0x2319361B0](v6, -1, -1);
    }

    lazy protocol witness table accessor for type KeyQueryController.DiversificationErrors and conformance KeyQueryController.DiversificationErrors();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t KeyQueryController.localPublicKey(using:trackingPreventionSalt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
  v7 = swift_task_alloc();
  v6[8] = v7;
  v8 = type metadata accessor for P256.Signing.PublicKey();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v9 = *((*MEMORY[0x277D85000] & *v5) + 0xE0);
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  v6[12] = v10;
  *v10 = v6;
  v10[1] = KeyQueryController.localPublicKey(using:trackingPreventionSalt:);

  return v12(v7);
}

uint64_t KeyQueryController.localPublicKey(using:trackingPreventionSalt:)()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = KeyQueryController.localPublicKey(using:trackingPreventionSalt:);
  }

  else
  {
    v2 = KeyQueryController.localPublicKey(using:trackingPreventionSalt:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v3, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
    lazy protocol witness table accessor for type KeyQueryController.DiversificationErrors and conformance KeyQueryController.DiversificationErrors();
    swift_allocError();
    swift_willThrow();
LABEL_5:

    v13 = v0[1];

    return v13();
  }

  v4 = v0[11];
  v5 = v0[7];
  v17 = v0[6];
  v18 = v0[13];
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[2];
  v9 = v0[3];
  (*(v2 + 32))(v4, v3, v1);
  v11 = (*((*MEMORY[0x277D85000] & *v5) + 0xD0))(v8, v4, v6, v17, v9, v7);
  v12 = v0[10];
  if (v18)
  {
    (*(v12 + 8))(v0[11], v0[9]);
    goto LABEL_5;
  }

  v15 = v10;
  (*(v12 + 8))();

  v16 = v0[1];

  return v16(v11, v15);
}

{

  v1 = *(v0 + 8);

  return v1();
}

id KeyQueryController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id KeyQueryController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KeyQueryController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int KeyQueryController.DiversificationErrors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x231934D10](0);
  return Hasher._finalize()();
}

uint64_t IDSIDQueryController.currentRemoteDevice(for:service:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x2822009F8](IDSIDQueryController.currentRemoteDevice(for:service:queue:), 0, 0);
}

uint64_t IDSIDQueryController.currentRemoteDevice(for:service:queue:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = objc_opt_self();
  v4 = MEMORY[0x231934530](v1, v2);
  v5 = [v3 normalizedHandleWithDestinationID_];

  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [v5 value];

  if (!v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = MEMORY[0x231934530](v7);
  }

  v8 = [v6 IDSFormattedDestinationID];

  if (v8)
  {
    v9 = *(v0 + 64);
    v10 = *(v0 + 40);
    v24 = *(v0 + 48);
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    *(v0 + 72) = v13;
    v14 = swift_task_alloc();
    *(v0 + 80) = v14;
    *(v14 + 16) = v9;
    *(v14 + 24) = v11;
    *(v14 + 32) = v13;
    *(v14 + 40) = v10;
    *(v14 + 48) = v24;
    v15 = swift_task_alloc();
    *(v0 + 88) = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SocialLayer8Endpoint_pGMd, &_sSay11SocialLayer8Endpoint_pGMR);
    *v15 = v0;
    v15[1] = IDSIDQueryController.currentRemoteDevice(for:service:queue:);

    return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000027, 0x8000000231846AF0, partial apply for closure #1 in IDSIDQueryController.currentRemoteDevice(for:service:queue:), v14, v16);
  }

  else
  {
LABEL_8:
    if (one-time initialization token for keyController != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.keyController);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_231772000, v18, v19, "Failed to format destination handle to IDS destinationID", v20, 2u);
      MEMORY[0x2319361B0](v20, -1, -1);
    }

    v21 = *(v0 + 8);
    v22 = MEMORY[0x277D84F90];

    return v21(v22);
  }
}

{

  return MEMORY[0x2822009F8](IDSIDQueryController.currentRemoteDevice(for:service:queue:), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

void closure #1 in IDSIDQueryController.currentRemoteDevice(for:service:queue:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v40 = a2;
  v41 = a7;
  v36 = a6;
  v37 = a5;
  v38 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay11SocialLayer8Endpoint_pGs5NeverOGMd, &_sScCySay11SocialLayer8Endpoint_pGs5NeverOGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  v43 = MEMORY[0x231934530](a3, a4);
  v42 = MEMORY[0x231934530](a5, a6);
  v17 = [objc_opt_self() mainBundle];
  v39 = [v17 bundleIdentifier];

  (*(v13 + 16))(v16, a1, v12);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v13 + 32))(v22 + v18, v16, v12);
  v24 = v40;
  v23 = v41;
  *(v22 + v19) = v40;
  v25 = (v22 + v20);
  v26 = v37;
  *v25 = v38;
  v25[1] = a4;
  v27 = (v22 + v21);
  v28 = v36;
  *v27 = v26;
  v27[1] = v28;
  *(v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)) = v23;
  aBlock[4] = partial apply for closure #1 in closure #1 in IDSIDQueryController.currentRemoteDevice(for:service:queue:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned IDSIDStatus) -> ();
  aBlock[3] = &block_descriptor_25;
  v29 = _Block_copy(aBlock);
  v30 = v24;

  v31 = v23;

  v32 = v30;
  v34 = v42;
  v33 = v43;
  v35 = v39;
  [v32 refreshIDStatusForDestination:v43 service:v42 listenerID:v39 queue:v31 completionBlock:v29];
  _Block_release(v29);
}

void closure #1 in closure #1 in IDSIDQueryController.currentRemoteDevice(for:service:queue:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a3;
  v35 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay11SocialLayer8Endpoint_pGs5NeverOGMd, &_sScCySay11SocialLayer8Endpoint_pGs5NeverOGMR);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - v16;
  if (a1 == 2)
  {
    if (one-time initialization token for keyController != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Log.keyController);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_231772000, v19, v20, "Failed to refresh IDSStatus, can't proceed", v21, 2u);
      MEMORY[0x2319361B0](v21, -1, -1);
    }

    aBlock[0] = MEMORY[0x277D84F90];
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    v33 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_23183D7E0;
    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 32) = a4;
    *(v22 + 40) = a5;

    isa = Array._bridgeToObjectiveC()().super.isa;

    v31 = MEMORY[0x231934530](a6, a7);
    v23 = [objc_opt_self() mainBundle];
    v24 = [v23 bundleIdentifier];

    if (v24)
    {
      (*(v15 + 16))(v17, v33, v14);
      v25 = (*(v15 + 80) + 48) & ~*(v15 + 80);
      v26 = swift_allocObject();
      *(v26 + 2) = a6;
      *(v26 + 3) = a7;
      *(v26 + 4) = a4;
      *(v26 + 5) = a5;
      (*(v15 + 32))(&v26[v25], v17, v14);
      aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in IDSIDQueryController.currentRemoteDevice(for:service:queue:);
      aBlock[5] = v26;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [AnyHashable : Any]?) -> ();
      aBlock[3] = &block_descriptor_31;
      v27 = _Block_copy(aBlock);

      v29 = v31;
      v28 = isa;
      [v34 currentRemoteDevicesForDestinations:isa service:v31 listenerID:v24 queue:v35 completionBlock:v27];
      _Block_release(v27);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t closure #1 in closure #1 in closure #1 in IDSIDQueryController.currentRemoteDevice(for:service:queue:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (one-time initialization token for keyController != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.keyController);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v23);
    _os_log_impl(&dword_231772000, v11, v12, "Received IDSEndpoints on service: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x2319361B0](v14, -1, -1);
    MEMORY[0x2319361B0](v13, -1, -1);
  }

  if (!a1)
  {
    goto LABEL_12;
  }

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v15 = specialized __RawDictionaryStorage.find<A>(_:)(v23), (v16 & 1) == 0))
  {
    outlined destroy of AnyHashable(v23);
LABEL_12:
    v24 = 0u;
    v25 = 0u;
    goto LABEL_13;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v15, &v24);
  outlined destroy of AnyHashable(v23);
  if (!*(&v25 + 1))
  {
LABEL_13:
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(&v24, &_sypSgMd, &_sypSgMR);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11IDSEndpointCGMd, &_sSaySo11IDSEndpointCGMR);
  if (swift_dynamicCast())
  {
    v17 = specialized _arrayForceCast<A, B>(_:)(v23[0]);

    v23[0] = v17;
    goto LABEL_17;
  }

LABEL_14:

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v23);
    _os_log_impl(&dword_231772000, v18, v19, "Failed to find remoteDevices for destination %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x2319361B0](v21, -1, -1);
    MEMORY[0x2319361B0](v20, -1, -1);
  }

  v23[0] = MEMORY[0x277D84F90];
LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay11SocialLayer8Endpoint_pGs5NeverOGMd, &_sScCySay11SocialLayer8Endpoint_pGs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

void *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x231934AB0](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSEndpoint, 0x277D189C0);
        v16 = &protocol witness table for IDSEndpoint;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        outlined init with take of Endpoint(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSEndpoint, 0x277D189C0);
        v16 = &protocol witness table for IDSEndpoint;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        outlined init with take of Endpoint(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned IDSIDStatus) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t protocol witness for EndpointQueryController.currentRemoteDevice(for:service:queue:) in conformance IDSIDQueryController(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = protocol witness for EndpointQueryController.currentRemoteDevice(for:service:queue:) in conformance IDSIDQueryController;

  return IDSIDQueryController.currentRemoteDevice(for:service:queue:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for EndpointQueryController.currentRemoteDevice(for:service:queue:) in conformance IDSIDQueryController(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x231933EB0]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x231933EB0]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v13, a3, a4, &v12);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVGMd, &_ss23_ContiguousArrayStorageCy11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVGMR, type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9CryptoKit12SHA256DigestVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit12SHA256DigestVGMR, MEMORY[0x277CC5290]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMR, MEMORY[0x277CC54E8]);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SocialLayer8Endpoint_pGMd, &_ss23_ContiguousArrayStorageCy11SocialLayer8Endpoint_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SocialLayer8Endpoint_pMd, &_s11SocialLayer8Endpoint_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x231933EB0]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

void specialized KeyQueryController.init(service:targetQueue:queryController:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v23 = a3;
  v24 = a4;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v11);
  v12 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v12 - 8);
  *&v4[OBJC_IVAR___SLKeyQueryController____lazy_storage___pushTokenForSelf] = xmmword_23183D0D0;
  *&v4[OBJC_IVAR___SLKeyQueryController____lazy_storage___localAccountHandles] = 1;
  v13 = &v4[OBJC_IVAR___SLKeyQueryController_service];
  *v13 = a1;
  *(v13 + 1) = a2;
  v14 = objc_allocWithZone(MEMORY[0x277D18778]);

  v15 = MEMORY[0x231934530](a1, a2);
  v16 = [v14 initWithService_];

  if (v16)
  {

    *&v4[OBJC_IVAR___SLKeyQueryController_idsService] = v16;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v17 = v23;
    static DispatchQoS.unspecified.getter();
    v26 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v21 + 104))(v10, *MEMORY[0x277D85260], v22);
    *&v4[OBJC_IVAR___SLKeyQueryController_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v18 = v24;
    outlined init with copy of HighlightDisambiguationPillMetricVariant(v24, v5 + OBJC_IVAR___SLKeyQueryController_queryController);
    Controller = type metadata accessor for KeyQueryController();
    v25.receiver = v5;
    v25.super_class = Controller;
    objc_msgSendSuper2(&v25, sel_init);
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    __break(1u);
  }
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SocialLayer8Endpoint_pMd, &_s11SocialLayer8Endpoint_pMR);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KeyQueryController.DiversificationErrors and conformance KeyQueryController.DiversificationErrors()
{
  result = lazy protocol witness table cache variable for type KeyQueryController.DiversificationErrors and conformance KeyQueryController.DiversificationErrors;
  if (!lazy protocol witness table cache variable for type KeyQueryController.DiversificationErrors and conformance KeyQueryController.DiversificationErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyQueryController.DiversificationErrors and conformance KeyQueryController.DiversificationErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KeyQueryController.DiversificationErrors and conformance KeyQueryController.DiversificationErrors;
  if (!lazy protocol witness table cache variable for type KeyQueryController.DiversificationErrors and conformance KeyQueryController.DiversificationErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyQueryController.DiversificationErrors and conformance KeyQueryController.DiversificationErrors);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of EndpointQueryController.currentRemoteDevice(for:service:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 8) + **(a7 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = protocol witness for EndpointQueryController.currentRemoteDevice(for:service:queue:) in conformance IDSIDQueryController;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of KeyQueryController.publicKeysAndTPS(for:documentIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0xB8);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of KeyQueryController.publicKeysAndTPS(for:documentIdentifier:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of KeyQueryController.publicKeysAndTPS(for:documentIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t dispatch thunk of KeyQueryController.signData(data:documentIdentifier:trackingPreventionSalt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *((*MEMORY[0x277D85000] & *v5) + 0xD8);
  v15 = (v12 + *v12);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = dispatch thunk of KeyQueryController.signData(data:documentIdentifier:trackingPreventionSalt:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of KeyQueryController.localPublicKey()(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xE0);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of CollaborationInitiationRequest.initiateCollaboration();

  return v7(a1);
}

uint64_t dispatch thunk of KeyQueryController.localPublicKey(using:trackingPreventionSalt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *((*MEMORY[0x277D85000] & *v5) + 0xE8);
  v15 = (v12 + *v12);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = dispatch thunk of KeyQueryController.localPublicKey(using:trackingPreventionSalt:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of KeyQueryController.localPublicKey(using:trackingPreventionSalt:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

void partial apply for closure #1 in closure #1 in IDSIDQueryController.currentRemoteDevice(for:service:queue:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay11SocialLayer8Endpoint_pGs5NeverOGMd, &_sScCySay11SocialLayer8Endpoint_pGs5NeverOGMR) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = *(v1 + v7);
  v12 = *(v1 + v7 + 8);
  v13 = *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #1 in IDSIDQueryController.currentRemoteDevice(for:service:queue:)(a1, v1 + v4, v8, v9, v10, v11, v12, v13);
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in IDSIDQueryController.currentRemoteDevice(for:service:queue:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay11SocialLayer8Endpoint_pGs5NeverOGMd, &_sScCySay11SocialLayer8Endpoint_pGs5NeverOGMR);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];

  return closure #1 in closure #1 in closure #1 in IDSIDQueryController.currentRemoteDevice(for:service:queue:)(a1, v3, v4, v5, v6);
}

uint64_t outlined init with take of Endpoint(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

void __swiftcall HeaderFallback.init(title:subtitle:image:)(SocialLayer::HeaderFallback *__return_ptr retstr, Swift::String title, Swift::String subtitle, UIImage_optional image)
{
  retstr->title = title;
  retstr->subtitle = subtitle;
  retstr->image.value.super.isa = image.value.super.isa;
}

uint64_t HeaderFallback.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HeaderFallback.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HeaderFallback.subtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t HeaderFallback.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void *HeaderFallback.image.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t HeaderFallback.imageView.getter()
{
  v1 = *(v0 + 32);
  v2 = HeaderFallback.isComplete.getter();
  if ((v2 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!v1)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x28212FFE8](v2);
  }

  v2 = v1;

  return MEMORY[0x28212FFE8](v2);
}

BOOL HeaderFallback.isComplete.getter()
{
  if (!v0[4])
  {
    return 0;
  }

  v1 = v0[1];
  if (!((v1 & 0x2000000000000000) != 0 ? HIBYTE(v1) & 0xF : *v0 & 0xFFFFFFFFFFFFLL))
  {
    return 0;
  }

  v3 = v0[3];
  v4 = v0[2] & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  return v4 != 0;
}

uint64_t CollaborationAttributionViewRepresentable.fallback.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  v6 = v5;
}

__n128 CollaborationAttributionViewRepresentable.init(highlight:fallback:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  *a3 = a1;
  *(a3 + 8) = result;
  *(a3 + 24) = v4;
  *(a3 + 40) = v5;
  return result;
}

void *CollaborationAttributionViewRepresentable.makeUIView(context:)()
{
  v1 = *v0;
  v2 = *(v0 + 40);
  v3 = objc_allocWithZone(type metadata accessor for CollaborationAttributionView());
  v4 = v1;
  v5 = specialized CollaborationAttributionView.init(highlight:variant:)(v4, 0);

  LODWORD(v6) = 1132068864;
  [v5 setContentCompressionResistancePriority:0 forAxis:v6];
  [v5 setRemoteRenderingEnabled_];
  (*((*MEMORY[0x277D85000] & *v5) + 0x108))(1);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.default);
  v8 = v2;
  v9 = v4;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    v14 = [v9 attributions];
    v15 = type metadata accessor for SLAttribution();
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = MEMORY[0x231934700](v16, v15);
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v22);

    *(v12 + 4) = v20;
    _os_log_impl(&dword_231772000, v10, v11, "LTP: makeUIView called with highlight: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x2319361B0](v13, -1, -1);
    MEMORY[0x2319361B0](v12, -1, -1);
  }

  return v5;
}

uint64_t CollaborationAttributionViewRepresentable.updateUIView(_:context:)(void *a1)
{
  v2 = *v1;
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0xC0);
  v4 = v2;
  return v3(v2);
}

uint64_t protocol witness for UIViewRepresentable.updateUIView(_:context:) in conformance CollaborationAttributionViewRepresentable(void *a1)
{
  v2 = *v1;
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0xC0);
  v4 = v2;
  return v3(v2);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance CollaborationAttributionViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CollaborationAttributionViewRepresentable and conformance CollaborationAttributionViewRepresentable();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance CollaborationAttributionViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CollaborationAttributionViewRepresentable and conformance CollaborationAttributionViewRepresentable();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance CollaborationAttributionViewRepresentable(uint64_t a1)
{
  lazy protocol witness table accessor for type CollaborationAttributionViewRepresentable and conformance CollaborationAttributionViewRepresentable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type CollaborationAttributionViewRepresentable and conformance CollaborationAttributionViewRepresentable()
{
  result = lazy protocol witness table cache variable for type CollaborationAttributionViewRepresentable and conformance CollaborationAttributionViewRepresentable;
  if (!lazy protocol witness table cache variable for type CollaborationAttributionViewRepresentable and conformance CollaborationAttributionViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollaborationAttributionViewRepresentable and conformance CollaborationAttributionViewRepresentable);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollaborationAttributionViewRepresentable and conformance CollaborationAttributionViewRepresentable;
  if (!lazy protocol witness table cache variable for type CollaborationAttributionViewRepresentable and conformance CollaborationAttributionViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollaborationAttributionViewRepresentable and conformance CollaborationAttributionViewRepresentable);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for HeaderFallback(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for HeaderFallback(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CollaborationAttributionViewRepresentable(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for CollaborationAttributionViewRepresentable(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t Logger.init<A>(subsystem:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  dispatch thunk of RawRepresentable.rawValue.getter();
  Logger.init(subsystem:category:)();
  return (*(*(a4 - 8) + 8))(a1, a4);
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

uint64_t one-time initialization function for personIdentityGenerator()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.personIdentityGenerator);
  __swift_project_value_buffer(v0, static Log.personIdentityGenerator);
  return Logger.init(subsystem:category:)();
}

uint64_t Log.default.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t one-time initialization function for keyController(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for collaborationRenderer()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.collaborationRenderer);
  __swift_project_value_buffer(v0, static Log.collaborationRenderer);
  return Logger.init(subsystem:category:)();
}

uint64_t static Log.keyController.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
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

  MEMORY[0x231934620](v3, v4);
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
    outlined init with take of Endpoint(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_0(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(__src, &_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
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

Swift::Int PersonIdentityGenerator.GenerationErrors.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x231934D10](a1 & 1);
  return Hasher._finalize()();
}

id PersonIdentityGenerator.init(queue:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = objc_allocWithZone(type metadata accessor for KeyQueryController());
  v4 = swift_getObjectType();
  v5 = objc_opt_self();
  v6 = a1;
  result = [v5 sharedInstance];
  if (result)
  {
    v8 = result;
    v13[3] = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSIDQueryController, 0x277D18728);
    v13[4] = &protocol witness table for IDSIDQueryController;
    v13[0] = v8;
    v9 = (*(v4 + 176))(0xD00000000000001ELL, 0x8000000231846C50, v6, v13);
    swift_deallocPartialClassInstance();
    v10 = objc_allocWithZone(ObjectType);
    *&v10[OBJC_IVAR___SLPersonIdentityGenerator_queue] = v6;
    *&v10[OBJC_IVAR___SLPersonIdentityGenerator_keyQueryController] = v9;
    v12.receiver = v10;
    v12.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v12, sel_init);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PersonIdentityGenerator.__allocating_init(queue:keyQueryController:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___SLPersonIdentityGenerator_queue] = a1;
  *&v5[OBJC_IVAR___SLPersonIdentityGenerator_keyQueryController] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id PersonIdentityGenerator.init(queue:keyQueryController:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___SLPersonIdentityGenerator_queue] = a1;
  *&v2[OBJC_IVAR___SLPersonIdentityGenerator_keyQueryController] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = type metadata accessor for P256.Signing.PublicKey();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = type metadata accessor for NodeIdentity(0);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:), 0, 0);
}

{
  v5 = *v4;
  v5[26] = a1;
  v5[27] = a2;
  v5[28] = a3;
  v5[29] = v3;

  if (v3)
  {

    v6 = PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:);
  }

  else
  {
    v6 = PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:)()
{
  v0[7] = MEMORY[0x277D84F98];
  v1 = v0[9];
  v2 = v1[2];
  v0[20] = v2;
  if (v2)
  {
    v3 = v1[4];
    v0[22] = v3;
    v4 = v1[5];
    v0[23] = v4;
    v0[24] = 1;

    v5 = swift_task_alloc();
    v0[25] = v5;
    *v5 = v0;
    v5[1] = PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:);
    v6 = v0[11];
    v7 = v0[10];

    return PersonIdentityGenerator.paddedPublicKeys(for:using:alignment:)(v3, v4, v7, v6, 32);
  }

  else
  {

    v9 = v0[1];
    v10 = MEMORY[0x277D84F98];

    return v9(v10);
  }
}

{
  v1 = *(v0 + 208);
  if (!v1)
  {

LABEL_10:
    v22 = *(v0 + 192);
    v23 = *(v0 + 160);
    if (v22 != v23)
    {
      if (v22 < v23)
      {
        goto LABEL_12;
      }

      goto LABEL_37;
    }

    goto LABEL_33;
  }

  v3 = *(v0 + 216);
  v2 = *(v0 + 224);

  outlined copy of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v3, v2);
  v4 = *(v1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = *(v0 + 112);
    *(v0 + 64) = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = *(v0 + 64);
    v7 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    v9 = *(v6 + 16);
    do
    {
      v9(*(v0 + 144), v7, *(v0 + 104));
      swift_storeEnumTagMultiPayload();
      *(v0 + 64) = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v5 = *(v0 + 64);
      }

      v13 = *(v0 + 136);
      v12 = *(v0 + 144);
      *(v5 + 16) = v11 + 1;
      outlined init with take of NodeIdentity(v12, v5 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v11);
      v7 += v8;
      --v4;
    }

    while (v4);
  }

  v14 = *(v0 + 152);
  type metadata accessor for MerkleTree();
  swift_allocObject();
  v15 = MerkleTree.init(nodeIdentities:)(v5);
  (*(*v15 + 120))();
  v16 = type metadata accessor for SHA256Digest();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    v19 = *(v0 + 216);
    v18 = *(v0 + 224);
    v20 = *(v0 + 208);
    v21 = *(v0 + 152);

    outlined consume of (keys: [P256.Signing.PublicKey], tps: Data)?(v20, v19, v18);
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v21, &_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
    goto LABEL_10;
  }

  lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest();
  v31 = Digest.makeIterator()();
  v33 = specialized _copySequenceToContiguousArray<A>(_:)(v31, v32);

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  *(v0 + 40) = v34;
  *(v0 + 48) = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  *(v0 + 16) = v33;
  v35 = __swift_project_boxed_opaque_existential_1((v0 + 16), v34);
  v36 = *v35;
  v37 = *(*v35 + 16);
  if (!v37)
  {
    v75 = 0;
    v69 = *(v0 + 168);
    v41 = 0xC000000000000000;
LABEL_22:
    v74 = v41;
    goto LABEL_25;
  }

  if (v37 <= 0xE)
  {
    v42 = *(v0 + 168);
    *(v0 + 240) = 0;
    *(v0 + 246) = 0;
    *(v0 + 254) = v37;
    memcpy((v0 + 240), (v36 + 32), v37);
    v75 = *(v0 + 240);
    v41 = v42 & 0xF00000000000000 | *(v0 + 248) | ((*(v0 + 252) | (*(v0 + 254) << 16)) << 32);
    v69 = v41;
    goto LABEL_22;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  v38 = __DataStorage.init(bytes:length:)();
  v39 = v38;
  if (v37 >= 0x7FFFFFFF)
  {
    type metadata accessor for Data.RangeReference();
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = v37;
    v75 = v43;
    v40 = v39 | 0x8000000000000000;
  }

  else
  {
    v75 = v37 << 32;
    v40 = v38 | 0x4000000000000000;
  }

  v74 = v40;
  v69 = *(v0 + 168);
LABEL_25:
  v44 = *(v0 + 152);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v17 + 8))(v44, v16);
  v45 = *(v1 + 16);
  if (v45)
  {
    v46 = *(v0 + 112);
    v47 = v1 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v76 = *(v46 + 72);
    v48 = *(v46 + 16);
    v49 = MEMORY[0x277D84F90];
    do
    {
      v51 = *(v0 + 112);
      v50 = *(v0 + 120);
      v52 = *(v0 + 104);
      v53 = v48(v50, v47, v52);
      v54 = MEMORY[0x2319343F0](v53);
      v56 = v55;
      (*(v51 + 8))(v50, v52);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
      }

      v58 = *(v49 + 2);
      v57 = *(v49 + 3);
      if (v58 >= v57 >> 1)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v49);
      }

      *(v49 + 2) = v58 + 1;
      v59 = &v49[16 * v58];
      *(v59 + 4) = v54;
      *(v59 + 5) = v56;
      v47 += v76;
      --v45;
    }

    while (v45);
  }

  v61 = *(v0 + 216);
  v60 = *(v0 + 224);
  v77 = *(v0 + 192);
  v71 = *(v0 + 184);
  v72 = *(v0 + 208);
  v70 = *(v0 + 176);
  v73 = *(v0 + 160);

  outlined copy of Data._Representation(v61, v60);

  v62 = objc_allocWithZone(MEMORY[0x277CDC6B0]);
  outlined copy of Data._Representation(v75, v74);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v64 = Array._bridgeToObjectiveC()().super.isa;

  v65 = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v61, v60);
  v66 = [v62 initWithRootHash:isa publicKeys:v64 trackingPreventionSalt:v65];

  outlined consume of Data._Representation(v75, v74);
  specialized Dictionary.subscript.setter(v66, v70, v71);
  outlined consume of (keys: [P256.Signing.PublicKey], tps: Data)?(v72, v61, v60);
  outlined consume of Data._Representation(v75, v74);

  if (v77 != v73)
  {
    v22 = *(v0 + 192);
    *(v0 + 168) = v69;
    if (v22 < *(v0 + 160))
    {
LABEL_12:
      v24 = *(v0 + 72) + 16 * v22;
      v25 = *(v24 + 32);
      *(v0 + 176) = v25;
      v26 = *(v24 + 40);
      *(v0 + 184) = v26;
      *(v0 + 192) = v22 + 1;
      if (!__OFADD__(v22, 1))
      {

        v27 = swift_task_alloc();
        *(v0 + 200) = v27;
        *v27 = v0;
        v27[1] = PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:);
        v28 = *(v0 + 88);
        v29 = *(v0 + 80);

        return PersonIdentityGenerator.paddedPublicKeys(for:using:alignment:)(v25, v26, v29, v28, 32);
      }

LABEL_38:
      __break(1u);
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_33:
  v67 = *(v0 + 56);

  v68 = *(v0 + 8);

  return v68(v67);
}

{
  v15 = v0;
  v14[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.default);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14[0] = v8;
    *v7 = 136315394;
    v9 = MEMORY[0x231934700](v6, MEMORY[0x277D837D0]);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v14);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, v14);
    _os_log_impl(&dword_231772000, v2, v3, "Error while requesting public keys for handle: %s documentIdentifier: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2319361B0](v8, -1, -1);
    MEMORY[0x2319361B0](v7, -1, -1);
  }

  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t PersonIdentityGenerator.paddedPublicKeys(for:using:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for P256.Signing.PrivateKey();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for P256.Signing.PublicKey();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](PersonIdentityGenerator.paddedPublicKeys(for:using:alignment:), 0, 0);
}

uint64_t PersonIdentityGenerator.paddedPublicKeys(for:using:alignment:)()
{
  v1 = *((*MEMORY[0x277D85000] & **(v0[7] + OBJC_IVAR___SLPersonIdentityGenerator_keyQueryController)) + 0xB8);
  v8 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = PersonIdentityGenerator.paddedPublicKeys(for:using:alignment:);
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  return v8(v6, v5, v3, v4);
}

{
  v1 = v0[15];
  if (v1)
  {
    v3 = v0[16];
    v2 = v0[17];
    v4 = v0[6];

    outlined copy of Data._Representation(v3, v2);
    result = outlined consume of Data._Representation(v3, v2);
    if (!v4)
    {
      __break(1u);
      goto LABEL_25;
    }

    v6 = v0[6];
    v7 = *(v1 + 16) % v6;
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = v6 - v7;
    if (__OFSUB__(v6, v7))
    {
      __break(1u);
    }

    else if ((v8 & 0x8000000000000000) == 0)
    {
      if (v8)
      {
        v9 = v0[12];
        v10 = (v0[9] + 8);
        v3 = MEMORY[0x277D84F90];
        do
        {
          v11 = v0[10];
          v12 = v0[8];
          v13 = MEMORY[0x2319343D0](1);
          MEMORY[0x2319343C0](v13);
          (*v10)(v11, v12);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
          }

          v15 = v3[2];
          v14 = v3[3];
          if (v15 >= v14 >> 1)
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v3);
          }

          v16 = v0[13];
          v17 = v0[11];
          v3[2] = v15 + 1;
          (*(v9 + 32))(v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, v16, v17);
          --v8;
        }

        while (v8);
LABEL_15:
        if (one-time initialization token for personIdentityGenerator == -1)
        {
LABEL_16:
          v18 = type metadata accessor for Logger();
          __swift_project_value_buffer(v18, static Log.personIdentityGenerator);

          v19 = Logger.logObject.getter();
          v20 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            *v21 = 134217984;
            *(v21 + 4) = v3[2];

            _os_log_impl(&dword_231772000, v19, v20, "Added %ld anonymous keys", v21, 0xCu);
            MEMORY[0x2319361B0](v21, -1, -1);
          }

          else
          {
          }

          specialized Array.append<A>(contentsOf:)(v3);

          v22 = v1;
          v23 = v0[16];
          v1 = v0[17];
          goto LABEL_21;
        }

LABEL_25:
        swift_once();
        goto LABEL_16;
      }

LABEL_14:
      v3 = MEMORY[0x277D84F90];
      goto LABEL_15;
    }

    __break(1u);
    return result;
  }

  v22 = 0;
  v23 = 0;
LABEL_21:

  v24 = v0[1];

  return v24(v22, v23, v1);
}

uint64_t PersonIdentityGenerator.paddedPublicKeys(for:using:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v5[15] = a1;
  v5[16] = a2;
  v5[17] = a3;

  if (v3)
  {

    v7 = v6[1];

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](PersonIdentityGenerator.paddedPublicKeys(for:using:alignment:), 0, 0);
  }
}

uint64_t Digest.data.getter(uint64_t a1, uint64_t a2)
{
  v2 = Digest.bytes.getter(a1, a2);
  v3 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v2);

  return v3;
}

uint64_t @objc closure #1 in PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:)(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[4] = v6;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = @objc closure #1 in PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:);

  return PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:)(v6, v7, v9);
}

uint64_t @objc closure #1 in PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:)(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SWPersonIdentity, 0x277CDC6B0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:), 0, 0);
}

uint64_t PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:)()
{
  v1 = (*((*MEMORY[0x277D85000] & **(v0[4] + OBJC_IVAR___SLPersonIdentityGenerator_keyQueryController)) + 0x98))();
  v0[5] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:);
    v4 = v0[3];
    v5 = v0[2];

    return PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:)(v2, v5, v4);
  }

  else
  {
    v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So16SWPersonIdentityCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v8 = v0[1];

    return v8(v7);
  }
}

{

  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:);
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t @objc closure #1 in PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:)(uint64_t a1, void *aBlock, void *a3)
{
  v3[4] = a3;
  v3[5] = _Block_copy(aBlock);
  v3[2] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[3] = v5;
  v3[6] = v5;
  v6 = a3;

  return MEMORY[0x2822009F8](@objc closure #1 in PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:), 0, 0);
}

uint64_t @objc closure #1 in PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:)()
{
  v1 = (*((*MEMORY[0x277D85000] & **(v0[4] + OBJC_IVAR___SLPersonIdentityGenerator_keyQueryController)) + 0x98))();
  v0[7] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[2];
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = @objc closure #1 in PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:);
    v5 = v0[6];

    return PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:)(v2, v3, v5);
  }

  else
  {
    v7 = v0[4];

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So16SWPersonIdentityCTt0g5Tf4g_n(MEMORY[0x277D84F90]);

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SWPersonIdentity, 0x277CDC6B0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v9 = v0[5];
    (v9)[2](v9, isa, 0);

    _Block_release(v9);
    v10 = v0[1];

    return v10();
  }
}

{

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SWPersonIdentity, 0x277CDC6B0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v2 = *(v0 + 40);
  (v2)[2](v2, isa, 0);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = *(v0 + 72);

  v2 = _convertErrorToNSError(_:)();

  v3 = *(v0 + 40);
  (v3)[2](v3, 0, v2);

  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t @objc closure #1 in PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = @objc closure #1 in PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:);
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = @objc closure #1 in PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = a3;
  v4[33] = v3;
  v4[30] = a1;
  v4[31] = a2;
  v5 = type metadata accessor for SHA256Digest();
  v4[34] = v5;
  v4[35] = *(v5 - 8);
  v4[36] = swift_task_alloc();
  v4[37] = type metadata accessor for NodeIdentity(0);
  v4[38] = swift_task_alloc();
  v4[39] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMR);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
  v4[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
  v4[44] = swift_task_alloc();
  v6 = type metadata accessor for P256.Signing.PublicKey();
  v4[45] = v6;
  v4[46] = *(v6 - 8);
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:), 0, 0);
}

uint64_t PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:)()
{
  v115 = v0;
  v114[1] = *MEMORY[0x277D85DE8];
  v1 = v0[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v109 = v0;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D0C0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  v4 = *MEMORY[0x277CDC040];
  type metadata accessor for CFStringRef(0);
  v6 = v5;
  *(inited + 72) = v5;
  *(inited + 48) = v4;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v7;
  v8 = *MEMORY[0x277CDC000];
  *(inited + 120) = v6;
  *(inited + 96) = v8;
  v9 = v4;
  v10 = v8;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v11 = [v1 publicKeys];
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = 0;
  v111 = MEMORY[0x277D84F90];
  v114[0] = MEMORY[0x277D84F90];
  v15 = *(v12 + 16);
  v16 = v12 + 40;
LABEL_2:
  v17 = (v16 + 16 * v14);
  while (1)
  {
    if (v15 == v14)
    {

      v13 = v111;
      if (v111 >> 62)
      {
        goto LABEL_34;
      }

      v24 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v25 = v109;
      if (v24)
      {
        goto LABEL_11;
      }

      goto LABEL_35;
    }

    if (v14 >= *(v12 + 16))
    {
      break;
    }

    v18 = v17 + 2;
    ++v14;
    v20 = *(v17 - 1);
    v19 = *v17;
    outlined copy of Data._Representation(v20, *v17);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v22 = Dictionary._bridgeToObjectiveC()().super.isa;
    v23 = SecKeyCreateWithData(isa, v22, 0);

    v13 = outlined consume of Data._Representation(v20, v19);
    v17 = v18;
    if (v23)
    {
      MEMORY[0x2319346D0](v13);
      if (*((v114[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v13 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v111 = v114[0];
      v16 = v12 + 40;
      goto LABEL_2;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v56 = v13;
    v24 = __CocoaSet.count.getter();
    v13 = v56;
    v25 = v109;
    if (!v24)
    {
      break;
    }

LABEL_11:
    v26 = 0;
    v27 = v25[46];
    v107 = v13 & 0xFFFFFFFFFFFFFF8;
    v108 = v13 & 0xC000000000000001;
    v105 = v27;
    v106 = (v27 + 56);
    v28 = (v27 + 48);
    v29 = (v27 + 32);
    v113 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v108)
      {
        v13 = MEMORY[0x231934AB0](v26, v13);
      }

      else
      {
        if (v26 >= *(v107 + 16))
        {
          goto LABEL_33;
        }

        v13 = *(v13 + 8 * v26 + 32);
      }

      v30 = v13;
      v31 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      v32 = SecKeyCopyExternalRepresentation(v13, 0);
      if (!v32)
      {
        if (one-time initialization token for default != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        __swift_project_value_buffer(v46, static Log.default);
        v47 = v30;
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v114[0] = v51;
          *v50 = 136315138;
          v25[29] = v47;
          type metadata accessor for SecKeyRef(0);
          v52 = v47;
          v53 = String.init<A>(reflecting:)();
          v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v114);

          *(v50 + 4) = v55;
          _os_log_impl(&dword_231772000, v48, v49, "Failed to create external representation of current SecKey %s", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v51);
          MEMORY[0x2319361B0](v51, -1, -1);
          MEMORY[0x2319361B0](v50, -1, -1);
        }

        lazy protocol witness table accessor for type SecKeyRef.SecKeyConversionErrors and conformance SecKeyRef.SecKeyConversionErrors();
        v110 = swift_allocError();
        swift_willThrow();

        goto LABEL_49;
      }

      v33 = v32;
      v25[26] = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v25[27] = v34;
      P256.Signing.PublicKey.init<A>(x963Representation:)();
      v36 = v25[44];
      v35 = v25[45];

      (*v106)(v36, 0, 1, v35);
      if ((*v28)(v36, 1, v35) == 1)
      {
        outlined destroy of (CFStringRef, [CFStringRef? : Any])(v25[44], &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
      }

      else
      {
        v38 = v25[47];
        v37 = v25[48];
        v39 = v25[44];
        v40 = v25[45];
        v41 = *v29;
        (*v29)(v37, v39, v40);
        v41(v38, v37, v40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v113[2] + 1, 1, v113);
        }

        v43 = v113[2];
        v42 = v113[3];
        if (v43 >= v42 >> 1)
        {
          v113 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v113);
        }

        v44 = v109[47];
        v45 = v109[45];
        v113[2] = v43 + 1;
        v41(v113 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v43, v44, v45);
        v25 = v109;
      }

      ++v26;
      v13 = v111;
      if (v31 == v24)
      {
        goto LABEL_36;
      }
    }
  }

LABEL_35:
  v113 = MEMORY[0x277D84F90];
LABEL_36:
  v57 = v25[43];
  v58 = v109[35];
  v59 = v109[34];

  v60 = specialized PersonIdentityGenerator.merkleTreeForPublicKeys(_:)(v113);
  v109[49] = v60;

  (*(*v60 + 120))(v61);
  v62 = (*(v58 + 48))(v57, 1, v59);
  v25 = v109;
  v63 = v109[43];
  if (v62 == 1)
  {
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v109[43], &_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
    v64 = 0;
    v65 = 0xF000000000000000;
  }

  else
  {
    v66 = v109[35];
    v67 = v109[34];
    lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest();
    v68 = Digest.makeIterator()();
    v70 = specialized _copySequenceToContiguousArray<A>(_:)(v68, v69);

    v64 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v70);
    v65 = v71;

    (*(v66 + 8))(v63, v67);
    v25 = v109;
  }

  v72 = [v25[30] rootHash];
  v73 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v75 = v74;

  if (v65 >> 60 == 15)
  {
    if (v75 >> 60 == 15)
    {
      outlined consume of Data?(v64, v65);
LABEL_57:
      v94 = *(v25[33] + OBJC_IVAR___SLPersonIdentityGenerator_keyQueryController);
      v95 = [v25[30] trackingPreventionSalt];
      if (v95)
      {
        v96 = v95;
        v97 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v99 = v98;
      }

      else
      {
        v97 = 0;
        v99 = 0xF000000000000000;
      }

      v25[50] = v97;
      v25[51] = v99;
      v100 = *((*MEMORY[0x277D85000] & *v94) + 0xE8);
      v112 = (v100 + *v100);
      v101 = swift_task_alloc();
      v25[52] = v101;
      *v101 = v25;
      v101[1] = PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:);
      v102 = v25[42];
      v103 = v25[31];
      v104 = v25[32];

      return v112(v102, v103, v104, v97, v99);
    }

    goto LABEL_43;
  }

  if (v75 >> 60 == 15)
  {
LABEL_43:
    outlined consume of Data?(v64, v65);
    outlined consume of Data?(v73, v75);
    goto LABEL_44;
  }

  outlined copy of Data?(v64, v65);
  outlined copy of Data._Representation(v73, v75);
  v93 = specialized static Data.== infix(_:_:)(v64, v65, v73, v75);
  outlined consume of Data?(v73, v75);
  outlined consume of Data._Representation(v73, v75);
  outlined consume of Data?(v64, v65);
  outlined consume of Data?(v64, v65);
  if (v93)
  {
    goto LABEL_57;
  }

LABEL_44:
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v76 = type metadata accessor for Logger();
  __swift_project_value_buffer(v76, static Log.default);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_231772000, v77, v78, "PersonIdentityGenerator: Root hash of given identity did not match the root hash of the tree generated by the identity.", v79, 2u);
    MEMORY[0x2319361B0](v79, -1, -1);
  }

  lazy protocol witness table accessor for type PersonIdentityGenerator.GenerationErrors and conformance PersonIdentityGenerator.GenerationErrors();
  v80 = swift_allocError();
  *v81 = 1;
  v110 = v80;
  swift_willThrow();

LABEL_49:
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v82 = type metadata accessor for Logger();
  __swift_project_value_buffer(v82, static Log.default);
  v83 = v110;
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v114[0] = v87;
    *v86 = 136315138;
    swift_getErrorValue();
    v88 = Error.localizedDescription.getter();
    v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, v114);

    *(v86 + 4) = v90;
    _os_log_impl(&dword_231772000, v84, v85, "PersonIdentityGenerator: Error while generating identity proof: %s", v86, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v87);
    MEMORY[0x2319361B0](v87, -1, -1);
    MEMORY[0x2319361B0](v86, -1, -1);
  }

  swift_willThrow();

  v91 = v25[1];

  return v91();
}

{
  v81 = v0;
  v80 = *MEMORY[0x277D85DE8];
  v1 = v0[22].i64[1];
  v2 = v0[23].i64[0];
  v4 = v0[20].i64[1];
  v3 = v0[21].i64[0];
  v5 = v0[19].i64[1];
  *(v3 + v0[28].i32[0]) = vextq_s8(v0[27], v0[27], 8uLL);
  outlined init with copy of (NSAttributedStringKey, Any)(v3, v4, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMR);
  outlined consume of Data._Representation(*(v4 + *(v5 + 48)), *(v4 + *(v5 + 48) + 8));
  v6 = P256.Signing.PublicKey.secKeyData.getter();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  if (v8 >> 60 == 15)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.default);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_231772000, v10, v11, "PersonIdentityGenerator: Could not generate local key data", v12, 2u);
      MEMORY[0x2319361B0](v12, -1, -1);
    }

    v13 = v0[21].i64[0];

    lazy protocol witness table accessor for type PersonIdentityGenerator.GenerationErrors and conformance PersonIdentityGenerator.GenerationErrors();
    v14 = swift_allocError();
    *v15 = 0;
    swift_willThrow();

    goto LABEL_19;
  }

  v74 = v6;
  v16 = v0[24].i64[1];
  v17 = v0[22].i64[1];
  v18 = v0[23].i64[0];
  v20 = v0[19].i64[1];
  v19 = v0[20].i64[0];
  v21 = v0[19].i64[0];
  outlined init with copy of (NSAttributedStringKey, Any)(v0[21].i64[0], v19, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMR);
  outlined consume of Data._Representation(*(v19 + *(v20 + 48)), *(v19 + *(v20 + 48) + 8));
  (*(v18 + 32))(v21, v19, v17);
  swift_storeEnumTagMultiPayload();
  v22 = (*(*v16 + 136))(v21);
  if (!v22)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Log.default);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_18;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "PersonIdentityGenerator: Could not get inclusionNodes to generate the identity proof";
    goto LABEL_17;
  }

  if (v24)
  {

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Log.default);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_18;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "PersonIdentityGenerator: Could not get localKeyIndex to generate the identity proof";
LABEL_17:
    _os_log_impl(&dword_231772000, v26, v27, v29, v28, 2u);
    MEMORY[0x2319361B0](v28, -1, -1);
LABEL_18:
    v13 = v0[21].i64[0];
    v31 = v0[19].i64[0];

    lazy protocol witness table accessor for type PersonIdentityGenerator.GenerationErrors and conformance PersonIdentityGenerator.GenerationErrors();
    v14 = swift_allocError();
    *v32 = 1;
    swift_willThrow();
    outlined consume of Data?(v74, v8);

    outlined destroy of NodeIdentity(v31);
LABEL_19:
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v13, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMR);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Log.default);
    v34 = v14;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *__dst = v38;
      *v37 = 136315138;
      swift_getErrorValue();
      v39 = Error.localizedDescription.getter();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, __dst);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_231772000, v35, v36, "PersonIdentityGenerator: Error while generating identity proof: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x2319361B0](v38, -1, -1);
      MEMORY[0x2319361B0](v37, -1, -1);
    }

    swift_willThrow();

    v42 = v0->i64[1];

    return v42();
  }

  v72 = v8;
  v73 = v23;
  v44 = *(v22 + 16);
  if (v44)
  {
    v45 = v0[17].i64[1];
    v46 = *(v45 + 16);
    v45 += 16;
    v47 = v22 + ((*(v45 + 64) + 32) & ~*(v45 + 64));
    v76 = *(v45 + 56);
    v77 = v46;
    v48 = MEMORY[0x277D84F90];
    v49 = (v45 - 8);
    do
    {
      v77(v0[18].i64[0], v47, v0[17].i64[0]);
      lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest();
      v50 = Digest.makeIterator()();
      v52 = specialized _copySequenceToContiguousArray<A>(_:)(v50, v51);

      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v0[10].i64[1] = v53;
      v0[11].i64[0] = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
      v0[9].i64[0] = v52;
      v54 = __swift_project_boxed_opaque_existential_1(v0[9].i64, v53);
      v55 = *v54;
      v56 = *(*v54 + 16);
      if (v56)
      {
        v57 = v0[18].i64[0];
        v58 = v0[17].i64[0];
        if (v56 <= 0xE)
        {
          memset(__dst, 0, sizeof(__dst));
          v79 = v56;
          memcpy(__dst, (v55 + 32), v56);
          (*v49)(v57, v58);
          v60 = *__dst;
          v61 = v75 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v79 << 16)) << 32);
          v75 = v61;
        }

        else
        {
          type metadata accessor for __DataStorage();
          swift_allocObject();
          v59 = __DataStorage.init(bytes:length:)();
          (*v49)(v57, v58);
          if (v56 >= 0x7FFFFFFF)
          {
            type metadata accessor for Data.RangeReference();
            v60 = swift_allocObject();
            *(v60 + 16) = 0;
            *(v60 + 24) = v56;
            v61 = v59 | 0x8000000000000000;
          }

          else
          {
            v60 = v56 << 32;
            v61 = v59 | 0x4000000000000000;
          }
        }
      }

      else
      {
        (*v49)(v0[18].i64[0], v0[17].i64[0]);
        v60 = 0;
        v61 = 0xC000000000000000;
      }

      __swift_destroy_boxed_opaque_existential_0(v0[9].i64);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48);
      }

      v63 = *(v48 + 2);
      v62 = *(v48 + 3);
      if (v63 >= v62 >> 1)
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v48);
      }

      *(v48 + 2) = v63 + 1;
      v64 = &v48[16 * v63];
      *(v64 + 4) = v60;
      *(v64 + 5) = v61;
      v47 += v76;
      --v44;
    }

    while (v44);
  }

  v65 = v0[21].i64[0];
  v66 = v0[19].i64[0];

  v67 = objc_allocWithZone(MEMORY[0x277CDC6B8]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v69 = [v67 initWithInclusionHashes_];

  [v69 setLocalKeyIndex_];
  v70 = Data._bridgeToObjectiveC()().super.isa;
  [v69 setPublicKey_];
  outlined consume of Data?(v74, v72);

  outlined destroy of NodeIdentity(v66);
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v65, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMR);

  v71 = v0->i64[1];

  return v71(v69);
}

{
  v14 = v0;
  v13[1] = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 424);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13[0] = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_231772000, v4, v5, "PersonIdentityGenerator: Error while generating identity proof: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2319361B0](v7, -1, -1);
    MEMORY[0x2319361B0](v6, -1, -1);
  }

  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 424) = v2;

  v7 = *(v6 + 408);
  v8 = *(v6 + 400);
  if (v2)
  {
    outlined consume of Data?(v8, v7);
    v9 = PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:);
  }

  else
  {
    v10 = *(v6 + 312);
    *(v6 + 432) = a2;
    *(v6 + 440) = a1;
    outlined consume of Data?(v8, v7);
    *(v6 + 448) = *(v10 + 48);
    v9 = PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t @objc closure #1 in PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:)(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  v10 = a1;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = @objc closure #1 in PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:);

  return PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:)(v10, v7, v9);
}

uint64_t @objc closure #1 in PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:)(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:), 0, 0);
}

uint64_t PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:)()
{
  v1 = *((*MEMORY[0x277D85000] & **(v0[7] + OBJC_IVAR___SLPersonIdentityGenerator_keyQueryController)) + 0xD8);
  v9 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:);
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return v9(v7, v5, v6, v3, v4);
}

uint64_t PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:)(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t @objc closure #1 in PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:)(void *a1, uint64_t a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v5[5] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5[6] = v9;
  if (a3)
  {
    v10 = a3;
    v11 = a1;
    v12 = a5;
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v16 = a1;
    v17 = a5;
    v13 = 0;
    v15 = 0xF000000000000000;
  }

  v5[7] = v13;
  v5[8] = v15;

  return MEMORY[0x2822009F8](@objc closure #1 in PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:), 0, 0);
}

uint64_t @objc closure #1 in PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:)()
{
  v1 = *((*MEMORY[0x277D85000] & **(v0[3] + OBJC_IVAR___SLPersonIdentityGenerator_keyQueryController)) + 0xD8);
  v9 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = @objc closure #1 in PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:);
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[2];

  return v9(v7, v5, v6, v3, v4);
}

{
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 24);

  outlined consume of Data?(v3, v2);

  v5 = _convertErrorToNSError(_:)();

  v6 = *(v0 + 32);
  (v6)[2](v6, 0, v5);

  _Block_release(v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t @objc closure #1 in PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:)(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  *(v6 + 80) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](@objc closure #1 in PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:), 0, 0);
  }

  else
  {
    v8 = *(v6 + 56);
    v7 = *(v6 + 64);
    v9 = *(v6 + 24);

    outlined consume of Data?(v8, v7);

    if (a2 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data?(a1, a2);
    }

    v11 = *(v6 + 32);
    (v11)[2](v11, isa, 0);

    _Block_release(v11);
    v12 = *(v6 + 8);

    return v12();
  }
}

id PersonIdentityGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PersonIdentityGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *Digest.bytes.getter(uint64_t a1, uint64_t a2)
{
  v2 = Digest.makeIterator()();
  v4 = specialized _copySequenceToContiguousArray<A>(_:)(v2, v3);

  return v4;
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = partial apply for specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);

  return v6();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = dispatch thunk of CollaborationInitiationRequest.initiateCollaboration();

  return v7();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  outlined init with copy of (NSAttributedStringKey, Any)(a3, v23 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v11, &_sScPSgMd, &_sScPSgMR);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    outlined destroy of (CFStringRef, [CFStringRef? : Any])(a3, &_sScPSgMd, &_sScPSgMR);

    return v21;
  }

LABEL_8:
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(a3, &_sScPSgMd, &_sScPSgMR);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVGMd, &_ss23_ContiguousArrayStorageCy11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVGMR, type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11SocialLayer12NodeIdentityOGMd, &_ss23_ContiguousArrayStorageCy11SocialLayer12NodeIdentityOGMR, type metadata accessor for NodeIdentity);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SocialLayer8Endpoint_pGMd, &_ss23_ContiguousArrayStorageCy11SocialLayer8Endpoint_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SocialLayer8Endpoint_pMd, &_s11SocialLayer8Endpoint_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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
    *v4 = xmmword_23183E920;
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
    *v4 = xmmword_23183E920;
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

uint64_t outlined consume of (keys: [P256.Signing.PublicKey], tps: Data)?(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return outlined consume of Data._Representation(a2, a3);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest()
{
  result = lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest;
  if (!lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest)
  {
    type metadata accessor for SHA256Digest();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest);
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

  v12 = MEMORY[0x231933EB0]();
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
    v5 = MEMORY[0x231934650](15, a1 >> 16);
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

void *specialized _copySequenceToContiguousArray<A>(_:)(void *result, uint64_t a2)
{
  v2 = result[2];
  v3 = MEMORY[0x277D84F90];
  v4 = v2 - a2;
  if (v2 != a2)
  {
    if (v2 > a2)
    {
      if (a2 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (!v2)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v5 = 0;
      v6 = result + a2 + 32;
      v7 = (MEMORY[0x277D84F90] + 32);
      while (1)
      {
        v9 = *v6++;
        v8 = v9;
        if (!v5)
        {
          v10 = v3[3];
          if (((v10 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_28;
          }

          v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
          if (v11 <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v11;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
          v13 = swift_allocObject();
          v14 = 2 * _swift_stdlib_malloc_size(v13) - 64;
          v13[2] = v12;
          v13[3] = v14;
          v15 = (v13 + 4);
          v16 = v3[3] >> 1;
          if (v3[2])
          {
            if (v13 != v3 || v15 >= v3 + v16 + 32)
            {
              memmove(v13 + 4, v3 + 4, v16);
            }

            v3[2] = 0;
          }

          v7 = (v15 + v16);
          v5 = (v14 >> 1) - v16;

          v3 = v13;
        }

        v18 = __OFSUB__(v5--, 1);
        if (v18)
        {
          break;
        }

        *v7++ = v8;
        if (!--v4)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v5 = 0;
LABEL_23:
  v19 = v3[3];
  if (v19 < 2)
  {
    return v3;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v5);
  v21 = v20 - v5;
  if (!v18)
  {
    v3[2] = v21;
    return v3;
  }

LABEL_32:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  }

  return result;
}

BOOL specialized static Data.== infix(_:_:)(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
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
  result = __DataStorage.init(bytes:length:)();
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
  return result;
}

uint64_t specialized Data._Representation.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
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

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  closure #1 in Data.init<A>(_:)(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t specialized PersonIdentityGenerator.merkleTreeForPublicKeys(_:)(uint64_t a1)
{
  v16 = type metadata accessor for NodeIdentity(0);
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v17 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v17;
    v15 = type metadata accessor for P256.Signing.PublicKey();
    v7 = *(v15 - 8);
    v8 = *(v7 + 16);
    v9 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v10 = *(v7 + 72);
    do
    {
      v8(v4, v9, v15);
      swift_storeEnumTagMultiPayload();
      v17 = v6;
      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v6 = v17;
      }

      *(v6 + 16) = v12 + 1;
      outlined init with take of NodeIdentity(v4, v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v12);
      v9 += v10;
      --v5;
    }

    while (v5);
  }

  type metadata accessor for MerkleTree();
  swift_allocObject();
  return MerkleTree.init(nodeIdentities:)(v6);
}

unint64_t lazy protocol witness table accessor for type PersonIdentityGenerator.GenerationErrors and conformance PersonIdentityGenerator.GenerationErrors()
{
  result = lazy protocol witness table cache variable for type PersonIdentityGenerator.GenerationErrors and conformance PersonIdentityGenerator.GenerationErrors;
  if (!lazy protocol witness table cache variable for type PersonIdentityGenerator.GenerationErrors and conformance PersonIdentityGenerator.GenerationErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonIdentityGenerator.GenerationErrors and conformance PersonIdentityGenerator.GenerationErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonIdentityGenerator.GenerationErrors and conformance PersonIdentityGenerator.GenerationErrors;
  if (!lazy protocol witness table cache variable for type PersonIdentityGenerator.GenerationErrors and conformance PersonIdentityGenerator.GenerationErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonIdentityGenerator.GenerationErrors and conformance PersonIdentityGenerator.GenerationErrors);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersonIdentityGenerator.GenerationErrors(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PersonIdentityGenerator.GenerationErrors(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t partial apply for @objc closure #1 in PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);

  return @objc closure #1 in PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:)(v2, v3, v4, v5, v6);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);

  return _sIeghH_IeAgH_TR(v2, v3, v4);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_33(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of CollaborationInitiationRequest.initiateCollaboration();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v4);
}

uint64_t partial apply for @objc closure #1 in PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);

  return @objc closure #1 in PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:)(v2, v3, v5, v4);
}

uint64_t partial apply for @objc closure #1 in PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of CollaborationInitiationRequest.initiateCollaboration();

  return @objc closure #1 in PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:)(v2, v3, v4);
}

uint64_t objectdestroy_40Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for @objc closure #1 in PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);

  return @objc closure #1 in PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:)(v2, v3, v5, v4);
}

uint64_t objectdestroy_19Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
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

void GenericPasswordStore.storeKey<A>(_:account:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183E350;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  v10 = v9;
  *(inited + 40) = v11;
  strcpy((inited + 48), "sociallayerd");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v12;
  v13 = *MEMORY[0x277CDC238];
  type metadata accessor for CFStringRef(0);
  v15 = v14;
  *(inited + 120) = v14;
  *(inited + 96) = v13;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v16;
  *(inited + 168) = v10;
  *(inited + 144) = a2;
  *(inited + 152) = a3;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v17;
  v18 = *MEMORY[0x277CDBEE0];
  *(inited + 216) = v15;
  *(inited + 192) = v18;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v19;
  *(inited + 264) = MEMORY[0x277D839B0];
  *(inited + 240) = 1;
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v20;
  v21 = *(a5 + 24);
  v22 = v13;

  v23 = v18;
  v24 = v21(a4, a5);
  *(inited + 312) = MEMORY[0x277CC9318];
  *(inited + 288) = v24;
  *(inited + 296) = v25;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v27 = SecItemAdd(isa, 0);

  if (v27)
  {
    _StringGuts.grow(_:)(24);

    v28 = SecCopyErrorMessageString(v27, 0);
    if (v28)
    {
      v29 = v28;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = v30;
    }

    else
    {
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v34;
    }

    MEMORY[0x231934620](v33, v32);

    lazy protocol witness table accessor for type GenericPasswordStoreError and conformance GenericPasswordStoreError();
    swift_allocError();
    *v35 = 0xD000000000000016;
    v35[1] = 0x8000000231846A70;
    swift_willThrow();
  }
}

uint64_t GenericPasswordStore.readKey<A>(account:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result[35] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183E340;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v11;
  strcpy((inited + 48), "sociallayerd");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v12;
  v13 = *MEMORY[0x277CDC238];
  type metadata accessor for CFStringRef(0);
  *(inited + 120) = v14;
  *(inited + 96) = v13;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v15;
  *(inited + 168) = v10;
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v16;
  v17 = MEMORY[0x277D839B0];
  *(inited + 216) = MEMORY[0x277D839B0];
  v18 = 1;
  *(inited + 192) = 1;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v19;
  *(inited + 264) = v17;
  *(inited + 240) = 1;
  v20 = v13;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  result[0] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v22 = SecItemCopyMatching(isa, result);

  if (v22 == -25300)
  {
    goto LABEL_7;
  }

  if (v22)
  {
    _StringGuts.grow(_:)(24);

    *&v35 = 0xD000000000000016;
    *(&v35 + 1) = 0x8000000231846A90;
    v24 = SecCopyErrorMessageString(v22, 0);
    if (v24)
    {
      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = v26;
    }

    else
    {
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v30;
    }

    MEMORY[0x231934620](v29, v28);

    lazy protocol witness table accessor for type GenericPasswordStoreError and conformance GenericPasswordStoreError();
    swift_allocError();
    *v31 = v35;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  if (!result[0])
  {
LABEL_7:
    v23 = a5;
    goto LABEL_8;
  }

  swift_unknownObjectRetain();
  v23 = a5;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    (*(*(a3 - 8) + 56))(v23, v18, 1, a3);
    return swift_unknownObjectRelease();
  }

  (*(a4 + 16))(&v35, MEMORY[0x277CC9318], MEMORY[0x277CC9300], a3);
  if (!v5)
  {
    v18 = 0;
    goto LABEL_8;
  }

  return swift_unknownObjectRelease();
}

uint64_t GenericPasswordStoreError.message.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Int32.message.getter(OSStatus a1)
{
  v1 = SecCopyErrorMessageString(a1, 0);
  if (!v1)
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GenericPasswordStore.deleteKey(account:)(Swift::String account)
{
  object = account._object;
  countAndFlagsBits = account._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7F0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v4;
  v5 = *MEMORY[0x277CDC238];
  type metadata accessor for CFStringRef(0);
  *(inited + 72) = v6;
  *(inited + 48) = v5;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v7;
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = 1;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v8;
  *(inited + 168) = MEMORY[0x277D837D0];
  *(inited + 144) = countAndFlagsBits;
  *(inited + 152) = object;
  v9 = v5;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = SecItemDelete(isa);

  if (v11 != -25300 && v11)
  {
    _StringGuts.grow(_:)(29);

    v12 = SecCopyErrorMessageString(v11, 0);
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = v14;
    }

    else
    {
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v18;
    }

    MEMORY[0x231934620](v17, v16);

    lazy protocol witness table accessor for type GenericPasswordStoreError and conformance GenericPasswordStoreError();
    swift_allocError();
    *v19 = 0xD00000000000001BLL;
    v19[1] = 0x8000000231846E20;
    swift_willThrow();
  }
}

uint64_t SLLocString(key:localization:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v5);
  v8 = (*(v7 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v9 = SLFrameworkBundle(v8);

  static Locale.current.getter();
  return String.init(localized:table:bundle:localization:locale:comment:)();
}

Swift::Int AttributionTextPrefix.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x231934D10](a1 & 1);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for senderName()
{
  result = MEMORY[0x231934530](0xD000000000000017, 0x8000000231846E40);
  static NSAttributedStringKey.senderName = result;
  return result;
}

uint64_t *NSAttributedStringKey.senderName.unsafeMutableAddressor()
{
  if (one-time initialization token for senderName != -1)
  {
    swift_once();
  }

  return &static NSAttributedStringKey.senderName;
}

uint64_t one-time initialization function for numContacts()
{
  result = MEMORY[0x231934530](0xD000000000000018, 0x8000000231846E60);
  static NSAttributedStringKey.numContacts = result;
  return result;
}

uint64_t *NSAttributedStringKey.numContacts.unsafeMutableAddressor()
{
  if (one-time initialization token for numContacts != -1)
  {
    swift_once();
  }

  return &static NSAttributedStringKey.numContacts;
}

uint64_t one-time initialization function for listOfNames()
{
  result = MEMORY[0x231934530](0xD000000000000022, 0x8000000231846E80);
  static NSAttributedStringKey.listOfNames = result;
  return result;
}

uint64_t *NSAttributedStringKey.listOfNames.unsafeMutableAddressor()
{
  if (one-time initialization token for listOfNames != -1)
  {
    swift_once();
  }

  return &static NSAttributedStringKey.listOfNames;
}

id static NSAttributedStringKey.senderName.getter(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t AttributeScopes.HighlightPillAttributes.foundation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributeScopes.FoundationAttributes();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for static DecodingConfigurationProviding.decodingConfiguration.getter in conformance AttributeScopes.HighlightPillAttributes(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type AttributeScopes.HighlightPillAttributes and conformance AttributeScopes.HighlightPillAttributes, type metadata accessor for AttributeScopes.HighlightPillAttributes, &protocol conformance descriptor for AttributeScopes.HighlightPillAttributes);

  return MEMORY[0x28211BCD8](a1, v2);
}

uint64_t protocol witness for static EncodingConfigurationProviding.encodingConfiguration.getter in conformance AttributeScopes.HighlightPillAttributes(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type AttributeScopes.HighlightPillAttributes and conformance AttributeScopes.HighlightPillAttributes, type metadata accessor for AttributeScopes.HighlightPillAttributes, &protocol conformance descriptor for AttributeScopes.HighlightPillAttributes);

  return MEMORY[0x28211BCD8](a1, v2);
}

uint64_t SLLocAttributedString(key:localization:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[1] = a2;
  v4 = type metadata accessor for AttributedString.FormattingOptions();
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v8);
  v11 = (*(v10 + 16))(v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v12 = SLFrameworkBundle(v11);
  v13 = type metadata accessor for Locale();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  swift_getKeyPath();
  v15[3] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions, MEMORY[0x277CC8B58], MEMORY[0x277CC8B60]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd, &_sSay10Foundation16AttributedStringV17FormattingOptionsVGMR);
  lazy protocol witness table accessor for type [AttributedString.FormattingOptions] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for AttributeScopes.HighlightPillAttributes(0);
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type AttributeScopes.HighlightPillAttributes and conformance AttributeScopes.HighlightPillAttributes, type metadata accessor for AttributeScopes.HighlightPillAttributes, &protocol conformance descriptor for AttributeScopes.HighlightPillAttributes);
  return AttributedString.init<A>(localized:options:table:bundle:localization:locale:comment:including:)();
}

unint64_t lazy protocol witness table accessor for type [AttributedString.FormattingOptions] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [AttributedString.FormattingOptions] and conformance [A];
  if (!lazy protocol witness table cache variable for type [AttributedString.FormattingOptions] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd, &_sSay10Foundation16AttributedStringV17FormattingOptionsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AttributedString.FormattingOptions] and conformance [A]);
  }

  return result;
}

uint64_t type metadata accessor for AttributeScopes.HighlightPillAttributes(uint64_t a1)
{
  result = type metadata singleton initialization cache for AttributeScopes.HighlightPillAttributes;
  if (!type metadata singleton initialization cache for AttributeScopes.HighlightPillAttributes)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::tuple_localizedString_NSMutableAttributedString_baseFontTargetRanges_OpaquePointer_senderFontTargetRanges_OpaquePointer __swiftcall MeAttributionLocAttributedString(prefix:multiline:localization:)(SocialLayer::AttributionTextPrefix prefix, Swift::Bool multiline, Swift::String_optional localization)
{
  v32 = localization;
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v31 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  String.LocalizationValue.init(_:)();
  SLLocAttributedString(key:localization:)(v6, v32.value._countAndFlagsBits, v32.value._object);
  v17 = v6;
  v18 = v7;
  (*(v4 + 8))(v17, v3);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x277CCAB48);
  v32.value._object = v8;
  (v8)[2](v14, v16, v7);
  swift_getKeyPath();
  type metadata accessor for AttributeScopes.HighlightPillAttributes(0);
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type AttributeScopes.HighlightPillAttributes and conformance AttributeScopes.HighlightPillAttributes, type metadata accessor for AttributeScopes.HighlightPillAttributes, &protocol conformance descriptor for AttributeScopes.HighlightPillAttributes);
  v19 = NSAttributedString.init<A>(_:including:)();
  v20 = [v19 length];
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v11 = v20;
    v34 = MEMORY[0x277D84F90];
    v35 = MEMORY[0x277D84F90];
    if (one-time initialization token for senderName == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v21 = static NSAttributedStringKey.senderName;
  v22 = swift_allocObject();
  *(v22 + 16) = &v34;
  *(v22 + 24) = &v35;
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for closure #1 in MeAttributionLocAttributedString(prefix:multiline:localization:);
  *(v23 + 24) = v22;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_3;
  v24 = _Block_copy(aBlock);

  [v19 enumerateAttribute:v21 inRange:0 options:v11 usingBlock:{0, v24}];
  _Block_release(v24);

  (*(v32.value._object + 1))(v16, v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v30 = v34;
    v29 = v35;

    v26 = v19;
    v27 = v29;
    v28 = v30;
  }

  result.senderFontTargetRanges._rawValue = v28;
  result.baseFontTargetRanges._rawValue = v27;
  result.localizedString.super.super.isa = v26;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    outlined init with take of Any(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return outlined destroy of (CFStringRef, [CFStringRef? : Any])(v13, &_sypSgMd, &_sypSgMR);
}

Swift::tuple_localizedString_NSMutableAttributedString_baseFontTargetRanges_OpaquePointer_senderFontTargetRanges_OpaquePointer __swiftcall NameAttributionLocAttributedString(prefix:name:multiline:localization:)(SocialLayer::AttributionTextPrefix prefix, Swift::String name, Swift::Bool multiline, Swift::String_optional localization)
{
  v42 = localization;
  v41 = name;
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for AttributedString();
  v12 = *(v11 - 8);
  v43 = v11;
  v44 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v40 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - v19;
  v21 = (v7 + 8);
  if (prefix)
  {
    if (multiline)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v22 = 1752459607;
LABEL_6:
      v23 = v22 | 0x3E72623C00000000;
      v24 = 0xEA00000000005B5ELL;
      goto LABEL_10;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v25 = 1752459607;
  }

  else
  {
    if (multiline)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v22 = 1836020294;
      goto LABEL_6;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v25 = 1836020294;
  }

  v23 = v25 | 0x5B5E2000000000;
  v24 = 0xE700000000000000;
LABEL_10:
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v23);
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v41);
  v26._object = 0x8000000231846F90;
  v26._countAndFlagsBits = 0xD000000000000020;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);
  String.LocalizationValue.init(stringInterpolation:)();
  SLLocAttributedString(key:localization:)(v9, v42.value._countAndFlagsBits, v42.value._object);
  (*v21)(v9, v6);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x277CCAB48);
  v27 = v43;
  (*(v44 + 16))(v18, v20, v43);
  swift_getKeyPath();
  type metadata accessor for AttributeScopes.HighlightPillAttributes(0);
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type AttributeScopes.HighlightPillAttributes and conformance AttributeScopes.HighlightPillAttributes, type metadata accessor for AttributeScopes.HighlightPillAttributes, &protocol conformance descriptor for AttributeScopes.HighlightPillAttributes);
  v28 = NSAttributedString.init<A>(_:including:)();
  v29 = [v28 length];
  if ((v29 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v15 = v29;
    v46 = MEMORY[0x277D84F90];
    v47 = MEMORY[0x277D84F90];
    if (one-time initialization token for senderName == -1)
    {
      goto LABEL_12;
    }
  }

  swift_once();
LABEL_12:
  v30 = static NSAttributedStringKey.senderName;
  v31 = swift_allocObject();
  *(v31 + 16) = &v46;
  *(v31 + 24) = &v47;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for closure #1 in NameAttributionLocAttributedString(prefix:name:multiline:localization:);
  *(v32 + 24) = v31;
  aBlock[4] = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_13;
  v33 = _Block_copy(aBlock);

  [v28 enumerateAttribute:v30 inRange:0 options:v15 usingBlock:{0, v33}];
  _Block_release(v33);

  (*(v44 + 8))(v20, v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v39 = v46;
    v38 = v47;

    v35 = v28;
    v36 = v38;
    v37 = v39;
  }

  result.senderFontTargetRanges._rawValue = v37;
  result.baseFontTargetRanges._rawValue = v36;
  result.localizedString.super.super.isa = v35;
  return result;
}

uint64_t closure #1 in MeAttributionLocAttributedString(prefix:multiline:localization:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  outlined init with copy of (NSAttributedStringKey, Any)(a1, v18, &_sypSgMd, &_sypSgMR);
  if (v19)
  {
    if ((swift_dynamicCast() & 1) != 0 && v17 == 1)
    {
      v10 = *a5;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a5 = v10;
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
        *a5 = result;
      }

      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
        v10 = result;
        *a5 = result;
      }

      goto LABEL_13;
    }
  }

  else
  {
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v18, &_sypSgMd, &_sypSgMR);
  }

  v10 = *a6;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a6 = v10;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
    v10 = result;
    *a6 = result;
  }

  v13 = *(v10 + 16);
  v15 = *(v10 + 24);
  v14 = v13 + 1;
  if (v13 >= v15 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v13 + 1, 1, v10);
    v10 = result;
    *a6 = result;
  }

LABEL_13:
  *(v10 + 16) = v14;
  v16 = v10 + 16 * v13;
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  return result;
}

Swift::tuple_localizedString_NSMutableAttributedString_baseFontTargetRanges_OpaquePointer_senderFontTargetRanges_OpaquePointer __swiftcall NumContactsAttributionLocAttributedString(prefix:numContacts:multiline:localization:)(SocialLayer::AttributionTextPrefix prefix, Swift::Int numContacts, Swift::Bool multiline, Swift::String_optional localization)
{
  object = localization.value._object;
  countAndFlagsBits = localization.value._countAndFlagsBits;
  v55 = prefix;
  v56 = multiline;
  v54 = numContacts;
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for AttributedString();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v53 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v53 - v11;
  MEMORY[0x28223BE20](v10);
  v61 = &v53 - v13;
  v14 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v53 - v20;
  String.LocalizationValue.init(stringLiteral:)();
  v22 = (*(v16 + 16))(v19, v21, v15);
  v23 = SLFrameworkBundle(v22);

  static Locale.current.getter();
  v57 = countAndFlagsBits;
  v58 = object;
  String.init(localized:table:bundle:localization:locale:comment:)();
  v24 = *(v16 + 8);
  v24(v21, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D83B88];
  *(v25 + 16) = xmmword_23183D7E0;
  v27 = MEMORY[0x277D83C10];
  *(v25 + 56) = v26;
  *(v25 + 64) = v27;
  *(v25 + 32) = v54;
  v28 = static String.localizedStringWithFormat(_:_:)();
  v30 = v29;

  if (v55)
  {
    if (v56)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v31 = 1752459607;
LABEL_6:
      v32 = v31 | 0x3E72623C00000000;
      v33 = 0xEA00000000005B5ELL;
      goto LABEL_10;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v34 = 1752459607;
  }

  else
  {
    if (v56)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v31 = 1836020294;
      goto LABEL_6;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v34 = 1836020294;
  }

  v32 = v34 | 0x5B5E2000000000;
  v33 = 0xE700000000000000;
LABEL_10:
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v32);
  v35 = v61;
  v36._countAndFlagsBits = v28;
  v36._object = v30;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v36);

  v37._countAndFlagsBits = 0xD000000000000021;
  v37._object = 0x8000000231846FC0;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v37);
  String.LocalizationValue.init(stringInterpolation:)();
  SLLocAttributedString(key:localization:)(v21, v57, v58);
  v24(v21, v15);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x277CCAB48);
  v39 = v59;
  v38 = v60;
  v40 = *(v59 + 16);
  v40(v12, v35, v60);
  swift_getKeyPath();
  type metadata accessor for AttributeScopes.HighlightPillAttributes(0);
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type AttributeScopes.HighlightPillAttributes and conformance AttributeScopes.HighlightPillAttributes, type metadata accessor for AttributeScopes.HighlightPillAttributes, &protocol conformance descriptor for AttributeScopes.HighlightPillAttributes);
  v41 = NSAttributedString.init<A>(_:including:)();
  v42 = [v41 length];
  if ((v42 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v40 = v42;
    v63 = MEMORY[0x277D84F90];
    v64 = MEMORY[0x277D84F90];
    if (one-time initialization token for numContacts == -1)
    {
      goto LABEL_12;
    }
  }

  swift_once();
LABEL_12:
  v43 = static NSAttributedStringKey.numContacts;
  v44 = swift_allocObject();
  *(v44 + 16) = &v63;
  *(v44 + 24) = &v64;
  v45 = swift_allocObject();
  *(v45 + 16) = partial apply for closure #1 in NameAttributionLocAttributedString(prefix:name:multiline:localization:);
  *(v45 + 24) = v44;
  aBlock[4] = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_23;
  v46 = _Block_copy(aBlock);

  [v41 enumerateAttribute:v43 inRange:0 options:v40 usingBlock:{0, v46}];
  _Block_release(v46);

  (*(v39 + 8))(v61, v38);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v52 = v63;
    v51 = v64;

    v48 = v41;
    v49 = v51;
    v50 = v52;
  }

  result.senderFontTargetRanges._rawValue = v50;
  result.baseFontTargetRanges._rawValue = v49;
  result.localizedString.super.super.isa = v48;
  return result;
}

Swift::String __swiftcall formattedDisplayNameListAndNOthers(prefix:names:nOthers:localization:)(SocialLayer::AttributionTextPrefix prefix, Swift::OpaquePointer names, Swift::Int nOthers, Swift::String_optional localization)
{
  v49 = localization;
  v43 = prefix;
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8);
  v48 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue();
  v9 = MEMORY[0x28223BE20](v8);
  v47 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v38 - v12;
  v50 = 0;
  v51 = 0xE000000000000000;
  v14 = *(names._rawValue + 2);
  if (v14)
  {
    v15 = 0;
    v39 = nOthers;
    v40 = v14 - 1;
    v44 = (v11 + 16);
    v46 = (v11 + 8);
    v38[2] = "AND_N_OTHERS_FORMAT";
    v38[3] = "umContacts: true)";
    v38[1] = "WITH_NAME_OR_ADDRESS_FINAL_ITEM";
    v38[0] = "RESS_NON_FINAL_ITEM";
    v38[4] = "FROM_NAME_OR_ADDRESS_FIRST_ITEM";
    v38[5] = "RESS_NON_FINAL_ITEM";
    v16 = (names._rawValue + 40);
    v45 = xmmword_23183D7E0;
    v42 = v14;
    do
    {
      v25 = *(v16 - 1);
      v24 = *v16;

      String.LocalizationValue.init(stringLiteral:)();
      v41 = *v44;
      v17 = v41(v47, v13, v8);
      v18 = SLFrameworkBundle(v17);

      static Locale.current.getter();
      String.init(localized:table:bundle:localization:locale:comment:)();
      ++v15;
      v19 = *v46;
      (*v46)(v13, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v20 = swift_allocObject();
      *(v20 + 16) = v45;
      *(v20 + 56) = MEMORY[0x277D837D0];
      *(v20 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v20 + 32) = v25;
      *(v20 + 40) = v24;
      v21 = static String.localizedStringWithFormat(_:_:)();
      v23 = v22;

      MEMORY[0x231934610](v21, v23);

      v16 += 2;
    }

    while (v42 != v15);
    v26 = v39;
    if (v39 >= 1)
    {
      String.LocalizationValue.init(stringLiteral:)();
      v27 = v41(v47, v13, v8);
      v28 = SLFrameworkBundle(v27);

      static Locale.current.getter();
      String.init(localized:table:bundle:localization:locale:comment:)();
      v19(v13, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v29 = swift_allocObject();
      v30 = MEMORY[0x277D83B88];
      *(v29 + 16) = v45;
      v31 = MEMORY[0x277D83C10];
      *(v29 + 56) = v30;
      *(v29 + 64) = v31;
      *(v29 + 32) = v26;
      v32 = static String.localizedStringWithFormat(_:_:)();
      v34 = v33;

      MEMORY[0x231934610](v32, v34);
    }
  }

  v35 = v50;
  v36 = v51;
  result._object = v36;
  result._countAndFlagsBits = v35;
  return result;
}

Swift::tuple_localizedString_NSMutableAttributedString_baseFontTargetRanges_OpaquePointer_senderFontTargetRanges_OpaquePointer __swiftcall ListOfNamesAttributionLocAttributedString(prefix:listOfNamesString:multiline:localization:)(SocialLayer::AttributionTextPrefix prefix, Swift::String listOfNamesString, Swift::Bool multiline, Swift::String_optional localization)
{
  v42 = localization;
  v41 = listOfNamesString;
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for AttributedString();
  v12 = *(v11 - 8);
  v43 = v11;
  v44 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v40 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - v19;
  v21 = (v7 + 8);
  if (prefix)
  {
    if (multiline)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v22 = 1752459607;
LABEL_6:
      v23 = v22 | 0x3E72623C00000000;
      v24 = 0xEA00000000005B5ELL;
      goto LABEL_10;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v25 = 1752459607;
  }

  else
  {
    if (multiline)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v22 = 1836020294;
      goto LABEL_6;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v25 = 1836020294;
  }

  v23 = v25 | 0x5B5E2000000000;
  v24 = 0xE700000000000000;
LABEL_10:
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v23);
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v41);
  v26._object = 0x80000002318470F0;
  v26._countAndFlagsBits = 0xD00000000000002BLL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);
  String.LocalizationValue.init(stringInterpolation:)();
  SLLocAttributedString(key:localization:)(v9, v42.value._countAndFlagsBits, v42.value._object);
  (*v21)(v9, v6);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x277CCAB48);
  v27 = v43;
  (*(v44 + 16))(v18, v20, v43);
  swift_getKeyPath();
  type metadata accessor for AttributeScopes.HighlightPillAttributes(0);
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type AttributeScopes.HighlightPillAttributes and conformance AttributeScopes.HighlightPillAttributes, type metadata accessor for AttributeScopes.HighlightPillAttributes, &protocol conformance descriptor for AttributeScopes.HighlightPillAttributes);
  v28 = NSAttributedString.init<A>(_:including:)();
  v29 = [v28 length];
  if ((v29 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v15 = v29;
    v46 = MEMORY[0x277D84F90];
    v47 = MEMORY[0x277D84F90];
    if (one-time initialization token for listOfNames == -1)
    {
      goto LABEL_12;
    }
  }

  swift_once();
LABEL_12:
  v30 = static NSAttributedStringKey.listOfNames;
  v31 = swift_allocObject();
  *(v31 + 16) = &v46;
  *(v31 + 24) = &v47;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for closure #1 in NameAttributionLocAttributedString(prefix:name:multiline:localization:);
  *(v32 + 24) = v31;
  aBlock[4] = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_33_0;
  v33 = _Block_copy(aBlock);

  [v28 enumerateAttribute:v30 inRange:0 options:v15 usingBlock:{0, v33}];
  _Block_release(v33);

  (*(v44 + 8))(v20, v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v39 = v46;
    v38 = v47;

    v35 = v28;
    v36 = v38;
    v37 = v39;
  }

  result.senderFontTargetRanges._rawValue = v37;
  result.baseFontTargetRanges._rawValue = v36;
  result.localizedString.super.super.isa = v35;
  return result;
}

void attributedStringSplitByLineBreak(inString:)(void *a1)
{
  v2 = [a1 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.components<A>(separatedBy:)();

  v13 = MEMORY[0x277D84F90];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (v3 + 40);
    while (1)
    {
      v7 = (*v6 & 0x1000000000000000) != 0 ? String.UTF16View._foreignCount()() : String.UTF16View._nativeGetOffset(for:)();
      v8 = v7;
      v9 = [a1 attributedSubstringFromRange_];
      MEMORY[0x2319346D0]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = String.count.getter();

      v11 = v8 + v10;
      if (__OFADD__(v8, v10))
      {
        break;
      }

      v12 = __OFADD__(v5, v11);
      v5 += v11;
      if (v12)
      {
        goto LABEL_14;
      }

      v6 += 2;
      if (!--v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

void specialized HighlightPillMetricVariant.avatarContainerWidth.getter(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 preferredContentSizeCategory];
  v6 = 3;
  if ((v5 - 9) < 3)
  {
    v6 = 1;
  }

  if (v6 >= a3)
  {
    v6 = a3;
  }

  if (__OFSUB__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    [a1 preferredContentSizeCategory];
    v7 = [a1 preferredContentSizeCategory];
    if (v7 > 0xB)
    {
      v8 = 19.92;
    }

    else
    {
      v8 = dbl_23183F508[v7];
    }

    SLRoundToScale(v8, [a1 displayScale]);
  }
}

{
  v5 = [a1 preferredContentSizeCategory];
  v6 = 3;
  if ((v5 - 9) < 3)
  {
    v6 = 1;
  }

  if (v6 >= a3)
  {
    v6 = a3;
  }

  if (__OFSUB__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    [a1 preferredContentSizeCategory];
    v7 = [a1 preferredContentSizeCategory];
    v8 = 12.0;
    if (v7 <= 0xB)
    {
      v8 = dbl_23183F6E8[v7];
    }

    SLRoundToScale(v8, [a1 displayScale]);
  }
}

uint64_t specialized HighlightPillMetricVariant.chevronFontDescriptor.getter(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADypGtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADypGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7E0;
  v3 = *MEMORY[0x277CC4950];
  *(inited + 32) = *MEMORY[0x277CC4950];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_23183D0C0;
  v5 = *MEMORY[0x277CC4948];
  *(v4 + 32) = *MEMORY[0x277CC4948];
  v6 = MEMORY[0x277D83B88];
  *(v4 + 40) = 0x8000;
  v7 = *MEMORY[0x277CC49B8];
  v8 = MEMORY[0x277CC49A0];
  *(v4 + 64) = v6;
  *(v4 + 72) = v7;
  v9 = *v8;
  *(v4 + 104) = MEMORY[0x277D85048];
  *(v4 + 80) = v9;
  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(v4);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  swift_arrayDestroy();
  *(inited + 40) = v13;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDyADypGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(inited + 32, &_sSo11CFStringRefa_SDyABypGtMd, &_sSo11CFStringRefa_SDyABypGtMR);
  type metadata accessor for CFStringRef(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaypGMd, &_sSDySo11CFStringRefaypGMR);
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = [a1 fontContentSizeCategory];
  v16 = CTFontDescriptorCreateWithTextStyleAndAttributes();

  return v16;
}

void specialized HighlightPillMetricVariant.chevronSize.getter(void *a1)
{
  v2 = [a1 layoutDirection];
  v3 = specialized HighlightPillMetricVariant.chevronFontDescriptor.getter(a1);
  if (CTFontDescriptorCopyAttribute(v3, *MEMORY[0x277CC4938]))
  {
    if (v2 == 1)
    {
      v4 = 0xEC0000007466656CLL;
    }

    else
    {
      v4 = 0xED00007468676972;
    }

    type metadata accessor for CFNumberRef(0);
    v5 = swift_dynamicCastUnknownClassUnconditional();
    CGFloat.init(truncating:)();
    v7 = v6;

    v8 = MEMORY[0x231934530](0x2E6E6F7276656863, v4);

    v9 = SLDSystemVectorGlyphWithSlotStyle(a1, v8, 1, 5, v7);

    [v9 contentBounds];
  }

  else
  {
    __break(1u);
  }
}

CTFontRef specialized HighlightPillMetricVariant.baseFont.getter(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADSiGtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADSiGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7E0;
  v3 = *MEMORY[0x277CC4950];
  *(inited + 32) = *MEMORY[0x277CC4950];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SitGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SitGMR);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_23183D7E0;
  v5 = *MEMORY[0x277CC4948];
  *(v4 + 32) = *MEMORY[0x277CC4948];
  *(v4 + 40) = 0x8000;
  v6 = v3;
  v7 = v5;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SiTt0g5Tf4g_n(v4);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v4 + 32, &_sSo11CFStringRefa_SitMd, &_sSo11CFStringRefa_SitMR);
  *(inited + 40) = v8;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDyADSiGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(inited + 32, &_sSo11CFStringRefa_SDyABSiGtMd, &_sSo11CFStringRefa_SDyABSiGtMR);
  type metadata accessor for CFStringRef(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaSiGMd, &_sSDySo11CFStringRefaSiGMR);
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = CTContentSizeCategoryForSlotStyle(a1);
  v11 = CTFontDescriptorCreateWithTextStyleAndAttributes();
  v12 = CTFontCreateWithFontDescriptor(v11, 0.0, 0);

  return v12;
}

CTFontRef specialized HighlightPillMetricVariant.baseFont.getter(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADSiGtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADSiGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7E0;
  v6 = *MEMORY[0x277CC4950];
  *(inited + 32) = *MEMORY[0x277CC4950];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SitGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SitGMR);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_23183D7E0;
  v8 = *MEMORY[0x277CC4948];
  *(v7 + 32) = *MEMORY[0x277CC4948];
  *(v7 + 40) = 0x8000;
  v9 = v6;
  v10 = v8;
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SiTt0g5Tf4g_n(v7);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v7 + 32, &_sSo11CFStringRefa_SitMd, &_sSo11CFStringRefa_SitMR);
  *(inited + 40) = v11;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDyADSiGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(inited + 32, &_sSo11CFStringRefa_SDyABSiGtMd, &_sSo11CFStringRefa_SDyABSiGtMR);
  type metadata accessor for CFStringRef(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaSiGMd, &_sSDySo11CFStringRefaSiGMR);
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = CTContentSizeCategoryForSlotStyle(a1);
  v14 = CTFontDescriptorCreateWithTextStyleAndAttributes();
  v15 = CTFontCreateWithFontDescriptor(v14, 0.0, 0);

  return v15;
}

CTFontRef specialized HighlightPillMetricVariant.senderFont.getter(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADypGtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADypGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7E0;
  v3 = *MEMORY[0x277CC4950];
  *(inited + 32) = *MEMORY[0x277CC4950];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_23183D0C0;
  v5 = *MEMORY[0x277CC4948];
  *(v4 + 32) = *MEMORY[0x277CC4948];
  v6 = MEMORY[0x277D83B88];
  *(v4 + 40) = 32770;
  v7 = *MEMORY[0x277CC49B8];
  v8 = MEMORY[0x277CC49B0];
  *(v4 + 64) = v6;
  *(v4 + 72) = v7;
  v9 = *v8;
  *(v4 + 104) = MEMORY[0x277D85048];
  *(v4 + 80) = v9;
  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(v4);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  swift_arrayDestroy();
  *(inited + 40) = v13;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDyADypGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(inited + 32, &_sSo11CFStringRefa_SDyABypGtMd, &_sSo11CFStringRefa_SDyABypGtMR);
  type metadata accessor for CFStringRef(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaypGMd, &_sSDySo11CFStringRefaypGMR);
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = [a1 fontContentSizeCategory];
  v16 = CTFontDescriptorCreateWithTextStyleAndAttributes();
  v17 = CTFontCreateWithFontDescriptor(v16, 0.0, 0);

  return v17;
}

CTFontRef specialized HighlightPillMetricVariant.senderFont.getter(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADypGtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADypGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7E0;
  v6 = *MEMORY[0x277CC4950];
  *(inited + 32) = *MEMORY[0x277CC4950];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_23183D0C0;
  v8 = *MEMORY[0x277CC4948];
  *(v7 + 32) = *MEMORY[0x277CC4948];
  v9 = MEMORY[0x277D83B88];
  *(v7 + 40) = 32770;
  v10 = *MEMORY[0x277CC49B8];
  v11 = MEMORY[0x277CC49B0];
  *(v7 + 64) = v9;
  *(v7 + 72) = v10;
  v12 = *v11;
  *(v7 + 104) = MEMORY[0x277D85048];
  *(v7 + 80) = v12;
  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  swift_arrayDestroy();
  *(inited + 40) = v16;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDyADypGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(inited + 32, &_sSo11CFStringRefa_SDyABypGtMd, &_sSo11CFStringRefa_SDyABypGtMR);
  type metadata accessor for CFStringRef(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaypGMd, &_sSDySo11CFStringRefaypGMR);
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v18 = [a1 fontContentSizeCategory];
  v19 = CTFontDescriptorCreateWithTextStyleAndAttributes();
  v20 = CTFontCreateWithFontDescriptor(v19, 0.0, 0);

  return v20;
}

double VisionPillMetric.maximumWidth.getter(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  if ((v1 - 5) > 6)
  {
    return 340.0;
  }

  else
  {
    return dbl_23183F410[(v1 - 5)];
  }
}

double VisionPillMetric.labelHorizontalMargins.getter(void *a1, double a2)
{
  v4 = [a1 preferredContentSizeCategory];
  if ((v4 - 7) < 2)
  {
    if (a2 <= 380.0)
    {
      return 0.0;
    }

    goto LABEL_12;
  }

  if ((v4 - 10) < 2)
  {
    if (a2 < 466.0)
    {
      return 0.0;
    }

    goto LABEL_12;
  }

  if (v4 != 9 || a2 > 353.0)
  {
LABEL_12:
    [a1 preferredContentSizeCategory];
  }

  return 0.0;
}

BOOL VisionPillMetric.useDoubleLineLabel.getter(void *a1, double a2)
{
  v3 = [a1 preferredContentSizeCategory];
  v4 = a2 <= 353.0;
  if (v3 != 9)
  {
    v4 = 0;
  }

  if ((v3 - 10) >= 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2 < 466.0;
  }

  if ((v3 - 7) >= 2)
  {
    return v5;
  }

  else
  {
    return a2 <= 380.0;
  }
}

double VisionPillMetric.avatarDiameter.getter(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  result = 24.0;
  if ((v1 - 9) <= 2)
  {
    return dbl_23183F3F8[(v1 - 9)];
  }

  return result;
}

double VisionPillMetric.overlappedAvatarVisibleWidth.getter(void *a1)
{
  v2 = [a1 preferredContentSizeCategory];
  if (v2 > 0xB)
  {
    v3 = 19.92;
  }

  else
  {
    v3 = dbl_23183F508[v2];
  }

  v4 = [a1 displayScale];

  return SLRoundToScale(v3, v4);
}

BOOL VisionPillMetric.allowLineWrapForMultilineSingleSenderName.getter(void *a1, double a2)
{
  v4 = [a1 preferredContentSizeCategory];
  if ((v4 - 7) < 2)
  {
    v5 = 380.0;
    goto LABEL_8;
  }

  if ((v4 - 10) >= 2)
  {
    if (v4 != 9)
    {
      return 0;
    }

    v5 = 353.0;
LABEL_8:
    if (a2 <= v5)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (a2 >= 466.0)
  {
    return 0;
  }

LABEL_9:
  if ([a1 preferredContentSizeCategory] - 9 > 2)
  {
    return 0;
  }

  v6 = [a1 localization];
  if (!v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = MEMORY[0x231934530](v7);
  }

  v8 = [objc_allocWithZone(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier_];

  IsHyphenationAvailableForLocale = CFStringIsHyphenationAvailableForLocale(v8);
  return IsHyphenationAvailableForLocale != 0;
}

void specialized HighlightPillMetricVariant.chevronSize.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void))
{
  v6 = [a1 layoutDirection];
  v7 = a4(a1, 0);
  if (CTFontDescriptorCopyAttribute(v7, *MEMORY[0x277CC4938]))
  {
    if (v6 == 1)
    {
      v8 = 0xEC0000007466656CLL;
    }

    else
    {
      v8 = 0xED00007468676972;
    }

    type metadata accessor for CFNumberRef(0);
    v9 = swift_dynamicCastUnknownClassUnconditional();
    CGFloat.init(truncating:)();
    v11 = v10;

    v12 = MEMORY[0x231934530](0x2E6E6F7276656863, v8);

    v13 = SLDSystemVectorGlyphWithSlotStyle(a1, v12, 1, 5, v11);

    [v13 contentBounds];
  }

  else
  {
    __break(1u);
  }
}

double protocol witness for HighlightPillMetricVariant.maximumWidth.getter in conformance VisionPillMetric()
{
  v1 = [*v0 preferredContentSizeCategory];
  if ((v1 - 5) > 6)
  {
    return 340.0;
  }

  else
  {
    return dbl_23183F410[(v1 - 5)];
  }
}

double protocol witness for HighlightPillMetricVariant.labelHorizontalMargins.getter in conformance VisionPillMetric()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = [*v0 preferredContentSizeCategory];
  if ((v3 - 7) < 2)
  {
    if (v2 <= 380.0)
    {
      return 0.0;
    }

    goto LABEL_12;
  }

  if ((v3 - 10) < 2)
  {
    if (v2 < 466.0)
    {
      return 0.0;
    }

    goto LABEL_12;
  }

  if (v3 != 9 || v2 > 353.0)
  {
LABEL_12:
    [v1 preferredContentSizeCategory];
  }

  return 0.0;
}

double protocol witness for HighlightPillMetricVariant.avatarDiameter.getter in conformance VisionPillMetric()
{
  v1 = [*v0 preferredContentSizeCategory];
  result = 24.0;
  if (v1 <= 0xB)
  {
    return dbl_23183F4A8[v1];
  }

  return result;
}

double protocol witness for HighlightPillMetricVariant.overlappedAvatarVisibleWidth.getter in conformance VisionPillMetric()
{
  v1 = *v0;
  v2 = [*v0 preferredContentSizeCategory];
  if (v2 > 0xB)
  {
    v3 = 19.92;
  }

  else
  {
    v3 = dbl_23183F508[v2];
  }

  v4 = [v1 displayScale];

  return SLRoundToScale(v3, v4);
}

BOOL protocol witness for HighlightPillMetricVariant.useDoubleLineLabel.getter in conformance VisionPillMetric()
{
  v1 = *(v0 + 16);
  v2 = [*v0 preferredContentSizeCategory];
  v3 = v1 <= 353.0;
  if (v2 != 9)
  {
    v3 = 0;
  }

  if ((v2 - 10) >= 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v1 < 466.0;
  }

  if ((v2 - 7) >= 2)
  {
    return v4;
  }

  else
  {
    return v1 <= 380.0;
  }
}

double VisionSafariBannerPillMetric.overlappedAvatarVisibleWidth.getter(void *a1)
{
  v1 = [a1 displayScale];

  return SLRoundToScale(19.92, v1);
}

uint64_t VisionPillMetric.chevronFontDescriptor.getter(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyAD12CoreGraphics7CGFloatVGtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyAD12CoreGraphics7CGFloatVGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7E0;
  v3 = *MEMORY[0x277CC4950];
  *(inited + 32) = *MEMORY[0x277CC4950];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_12CoreGraphics7CGFloatVtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_12CoreGraphics7CGFloatVtGMR);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_23183D7E0;
  v5 = *MEMORY[0x277CC49B8];
  *(v4 + 32) = *MEMORY[0x277CC49B8];
  *(v4 + 40) = *MEMORY[0x277CC49B0];
  v6 = v3;
  v7 = v5;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_12CoreGraphics7CGFloatVTt0g5Tf4g_n(v4);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v4 + 32, &_sSo11CFStringRefa_12CoreGraphics7CGFloatVtMd, &_sSo11CFStringRefa_12CoreGraphics7CGFloatVtMR);
  *(inited + 40) = v8;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDyAD12CoreGraphics7CGFloatVGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(inited + 32, &_sSo11CFStringRefa_SDyAB12CoreGraphics7CGFloatVGtMd, &_sSo11CFStringRefa_SDyAB12CoreGraphics7CGFloatVGtMR);
  type metadata accessor for CFStringRef(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefa12CoreGraphics7CGFloatVGMd, &_sSDySo11CFStringRefa12CoreGraphics7CGFloatVGMR);
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = [a1 fontContentSizeCategory];
  v11 = CTFontDescriptorCreateWithTextStyleAndAttributes();

  return v11;
}

CTFontRef VisionPillMetric.baseFont.getter(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyAD12CoreGraphics7CGFloatVGtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyAD12CoreGraphics7CGFloatVGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7E0;
  v3 = *MEMORY[0x277CC4950];
  *(inited + 32) = *MEMORY[0x277CC4950];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_12CoreGraphics7CGFloatVtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_12CoreGraphics7CGFloatVtGMR);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_23183D7E0;
  v5 = *MEMORY[0x277CC49B8];
  *(v4 + 32) = *MEMORY[0x277CC49B8];
  *(v4 + 40) = *MEMORY[0x277CC49B0];
  v6 = v3;
  v7 = v5;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_12CoreGraphics7CGFloatVTt0g5Tf4g_n(v4);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v4 + 32, &_sSo11CFStringRefa_12CoreGraphics7CGFloatVtMd, &_sSo11CFStringRefa_12CoreGraphics7CGFloatVtMR);
  *(inited + 40) = v8;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDyAD12CoreGraphics7CGFloatVGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(inited + 32, &_sSo11CFStringRefa_SDyAB12CoreGraphics7CGFloatVGtMd, &_sSo11CFStringRefa_SDyAB12CoreGraphics7CGFloatVGtMR);
  type metadata accessor for CFStringRef(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefa12CoreGraphics7CGFloatVGMd, &_sSDySo11CFStringRefa12CoreGraphics7CGFloatVGMR);
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = CTContentSizeCategoryForSlotStyle(a1);
  v11 = CTFontDescriptorCreateWithTextStyleAndAttributes();
  v12 = CTFontCreateWithFontDescriptor(v11, 0.0, 0);

  return v12;
}

CTFontRef VisionPillMetric.senderFont.getter(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyAD12CoreGraphics7CGFloatVGtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyAD12CoreGraphics7CGFloatVGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7E0;
  v3 = *MEMORY[0x277CC4950];
  *(inited + 32) = *MEMORY[0x277CC4950];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_12CoreGraphics7CGFloatVtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_12CoreGraphics7CGFloatVtGMR);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_23183D7E0;
  v5 = *MEMORY[0x277CC49B8];
  *(v4 + 32) = *MEMORY[0x277CC49B8];
  *(v4 + 40) = *MEMORY[0x277CC49B0];
  v6 = v3;
  v7 = v5;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_12CoreGraphics7CGFloatVTt0g5Tf4g_n(v4);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v4 + 32, &_sSo11CFStringRefa_12CoreGraphics7CGFloatVtMd, &_sSo11CFStringRefa_12CoreGraphics7CGFloatVtMR);
  *(inited + 40) = v8;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDyAD12CoreGraphics7CGFloatVGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(inited + 32, &_sSo11CFStringRefa_SDyAB12CoreGraphics7CGFloatVGtMd, &_sSo11CFStringRefa_SDyAB12CoreGraphics7CGFloatVGtMR);
  type metadata accessor for CFStringRef(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefa12CoreGraphics7CGFloatVGMd, &_sSDySo11CFStringRefa12CoreGraphics7CGFloatVGMR);
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = [a1 fontContentSizeCategory];
  v11 = CTFontDescriptorCreateWithTextStyleAndAttributes();
  v12 = CTFontCreateWithFontDescriptor(v11, 0.0, 0);

  return v12;
}

double protocol witness for HighlightPillMetricVariant.overlappedAvatarVisibleWidth.getter in conformance VisionSafariBannerPillMetric()
{
  v1 = [*v0 displayScale];

  return SLRoundToScale(19.92, v1);
}

void protocol witness for HighlightPillMetricVariant.avatarContainerWidth.getter in conformance VisionSafariBannerPillMetric()
{
  v1 = *(v0 + 24);
  if (v1 >= 3)
  {
    v1 = 3;
  }

  if (__OFSUB__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    SLRoundToScale(19.92, [*v0 displayScale]);
  }
}

uint64_t iOSPillMetric.maxImageCount.getter(void *a1)
{
  if ([a1 preferredContentSizeCategory] - 9 < 3)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t iOSPillMetric.maxNameCount.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

double iOSPillMetric.maximumWidth.getter(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  if ((v1 - 5) > 6)
  {
    return 250.0;
  }

  else
  {
    return dbl_23183F590[(v1 - 5)];
  }
}

double iOSPillMetric.labelHorizontalMargins.getter(void *a1, double a2)
{
  v4 = [a1 preferredContentSizeCategory];
  if ((v4 - 7) < 2)
  {
    if (a2 <= 280.0)
    {
      return 0.0;
    }

    goto LABEL_12;
  }

  if ((v4 - 10) < 2)
  {
    if (a2 < 343.0)
    {
      return 0.0;
    }

    goto LABEL_12;
  }

  if (v4 != 9 || a2 > 260.0)
  {
LABEL_12:
    [a1 preferredContentSizeCategory];
  }

  return 0.0;
}

BOOL iOSPillMetric.useDoubleLineLabel.getter(void *a1, double a2)
{
  v3 = [a1 preferredContentSizeCategory];
  v4 = a2 <= 260.0;
  if (v3 != 9)
  {
    v4 = 0;
  }

  if ((v3 - 10) >= 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2 < 343.0;
  }

  if ((v3 - 7) >= 2)
  {
    return v5;
  }

  else
  {
    return a2 <= 280.0;
  }
}

double iOSPillMetric.avatarDiameter.getter(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  result = 16.0;
  if ((v1 - 7) <= 4)
  {
    return dbl_23183F568[(v1 - 7)];
  }

  return result;
}

double iOSPillMetric.avatarOverlapKnockoutWidth.getter(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 preferredContentSizeCategory];
  v5 = 3;
  if ((v4 - 9) < 3)
  {
    v5 = 1;
  }

  if (v5 >= a3)
  {
    v5 = a3;
  }

  result = 0.0;
  if (v5 > 1)
  {
    return 1.0;
  }

  return result;
}

BOOL iOSPillMetric.allowLineWrapForMultilineSingleSenderName.getter(void *a1, double a2)
{
  v4 = [a1 preferredContentSizeCategory];
  if ((v4 - 7) < 2)
  {
    v5 = 280.0;
    goto LABEL_8;
  }

  if ((v4 - 10) >= 2)
  {
    if (v4 != 9)
    {
      return 0;
    }

    v5 = 260.0;
LABEL_8:
    if (a2 <= v5)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (a2 >= 343.0)
  {
    return 0;
  }

LABEL_9:
  if ([a1 preferredContentSizeCategory] - 9 > 2)
  {
    return 0;
  }

  v6 = [a1 localization];
  if (!v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = MEMORY[0x231934530](v7);
  }

  v8 = [objc_allocWithZone(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier_];

  IsHyphenationAvailableForLocale = CFStringIsHyphenationAvailableForLocale(v8);
  return IsHyphenationAvailableForLocale != 0;
}

double protocol witness for HighlightPillMetricVariant.maximumWidth.getter in conformance iOSPillMetric()
{
  v1 = [*v0 preferredContentSizeCategory];
  if ((v1 - 5) > 6)
  {
    return 250.0;
  }

  else
  {
    return dbl_23183F590[(v1 - 5)];
  }
}

double protocol witness for HighlightPillMetricVariant.labelHorizontalMargins.getter in conformance iOSPillMetric()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = [*v0 preferredContentSizeCategory];
  if ((v3 - 7) < 2)
  {
    if (v2 <= 280.0)
    {
      return 0.0;
    }

    goto LABEL_12;
  }

  if ((v3 - 10) < 2)
  {
    if (v2 < 343.0)
    {
      return 0.0;
    }

    goto LABEL_12;
  }

  if (v3 != 9 || v2 > 260.0)
  {
LABEL_12:
    [v1 preferredContentSizeCategory];
  }

  return 0.0;
}

double protocol witness for HighlightPillMetricVariant.avatarDiameter.getter in conformance iOSPillMetric()
{
  v1 = [*v0 preferredContentSizeCategory];
  result = 16.0;
  if (v1 <= 0xB)
  {
    return dbl_23183F688[v1];
  }

  return result;
}

double protocol witness for HighlightPillMetricVariant.overlappedAvatarVisibleWidth.getter in conformance iOSPillMetric()
{
  v1 = *v0;
  v2 = [*v0 preferredContentSizeCategory];
  v3 = 12.0;
  if (v2 <= 0xB)
  {
    v3 = dbl_23183F6E8[v2];
  }

  v4 = [v1 displayScale];

  return SLRoundToScale(v3, v4);
}

double protocol witness for HighlightPillMetricVariant.avatarOverlapKnockoutWidth.getter in conformance VisionPillMetric()
{
  v1 = *(v0 + 24);
  v2 = [*v0 preferredContentSizeCategory];
  v3 = 3;
  if ((v2 - 9) < 3)
  {
    v3 = 1;
  }

  if (v1 < v3)
  {
    v3 = v1;
  }

  result = 0.0;
  if (v3 > 1)
  {
    return 1.0;
  }

  return result;
}

BOOL protocol witness for HighlightPillMetricVariant.useDoubleLineLabel.getter in conformance iOSPillMetric()
{
  v1 = *(v0 + 16);
  v2 = [*v0 preferredContentSizeCategory];
  v3 = v1 <= 260.0;
  if (v2 != 9)
  {
    v3 = 0;
  }

  if ((v2 - 10) >= 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v1 < 343.0;
  }

  if ((v2 - 7) >= 2)
  {
    return v4;
  }

  else
  {
    return v1 <= 280.0;
  }
}

double TVPillMetrics.avatarOverlapKnockoutWidth.getter(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  if (a2 > 1)
  {
    return 2.0;
  }

  return result;
}

uint64_t protocol witness for HighlightPillMetricVariant.finalImageCount.getter in conformance TVPillMetrics()
{
  if (*(v0 + 16) >= 3)
  {
    return 3;
  }

  else
  {
    return *(v0 + 16);
  }
}

double protocol witness for HighlightPillMetricVariant.overlappedAvatarVisibleWidth.getter in conformance TVPillMetrics()
{
  v1 = [*v0 displayScale];

  return SLRoundToScale(24.0, v1);
}

void protocol witness for HighlightPillMetricVariant.avatarContainerWidth.getter in conformance TVPillMetrics()
{
  v1 = *(v0 + 16);
  if (v1 >= 3)
  {
    v1 = 3;
  }

  if (__OFSUB__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    SLRoundToScale(24.0, [*v0 displayScale]);
  }
}

double protocol witness for HighlightPillMetricVariant.avatarOverlapKnockoutWidth.getter in conformance TVPillMetrics()
{
  result = 0.0;
  if (*(v0 + 16) > 1)
  {
    return 2.0;
  }

  return result;
}

uint64_t MacPillMetric.maxNameCount.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

double MacPillMetric.avatarOverlapKnockoutWidth.getter(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 2)
  {
    return 0.0;
  }

  v5 = [a1 displayScale];

  return SLRoundToScale(0.75, v5);
}

double protocol witness for HighlightPillMetricVariant.overlappedAvatarVisibleWidth.getter in conformance MacPillMetric()
{
  v1 = [*v0 displayScale];

  return SLRoundToScale(9.0, v1);
}

void protocol witness for HighlightPillMetricVariant.avatarContainerWidth.getter in conformance MacPillMetric()
{
  v1 = *(v0 + 24);
  if (v1 >= 3)
  {
    v1 = 3;
  }

  if (__OFSUB__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    SLRoundToScale(9.0, [*v0 displayScale]);
  }
}

double protocol witness for HighlightPillMetricVariant.avatarOverlapKnockoutWidth.getter in conformance MacPillMetric()
{
  if (*(v0 + 24) < 2)
  {
    return 0.0;
  }

  v1 = [*v0 displayScale];

  return SLRoundToScale(0.75, v1);
}

double MacSafariBannerPillMetrics.avatarOverlapKnockoutWidth.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0.0;
  if (a3 > 1)
  {
    return 1.0;
  }

  return result;
}

double protocol witness for HighlightPillMetricVariant.overlappedAvatarVisibleWidth.getter in conformance MacSafariBannerPillMetrics()
{
  v1 = [*v0 displayScale];

  return SLRoundToScale(12.0, v1);
}

void protocol witness for HighlightPillMetricVariant.avatarContainerWidth.getter in conformance MacSafariBannerPillMetrics()
{
  v1 = *(v0 + 24);
  if (v1 >= 3)
  {
    v1 = 3;
  }

  if (__OFSUB__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    SLRoundToScale(12.0, [*v0 displayScale]);
  }
}

double protocol witness for HighlightPillMetricVariant.overlappedAvatarVisibleWidth.getter in conformance iOSSafariBannerPillMetrics()
{
  v1 = [*v0 displayScale];

  return SLRoundToScale(26.25, v1);
}

void protocol witness for HighlightPillMetricVariant.avatarContainerWidth.getter in conformance iOSSafariBannerPillMetrics()
{
  v1 = *(v0 + 24);
  if (v1 >= 3)
  {
    v1 = 3;
  }

  if (__OFSUB__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    SLRoundToScale(26.25, [*v0 displayScale]);
  }
}

id PillMetrics.__allocating_init(slotStyle:tag:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithSlotStyle:a1 tag:a2 variant:{objc_msgSend(a2, sel_variant)}];

  return v5;
}

id PillMetrics.init(slotStyle:tag:)(void *a1, id a2)
{
  v5 = [v2 initWithSlotStyle:a1 tag:a2 variant:{objc_msgSend(a2, sel_variant)}];

  return v5;
}

id PillMetrics.init(slotStyle:tag:variant:)(void *a1, void *a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR___SLHighlightPillMetrics____lazy_storage___pillMetrics];
  _s11SocialLayer23SLDHighlightPillMetrics33_00C2B47D0280335DFFDBB3BC8927527ALLVSgWOi0_(v38);
  v8 = v38[5];
  *(v7 + 4) = v38[4];
  *(v7 + 5) = v8;
  v9 = v38[7];
  *(v7 + 6) = v38[6];
  *(v7 + 7) = v9;
  v10 = v38[1];
  *v7 = v38[0];
  *(v7 + 1) = v10;
  v11 = v38[3];
  *(v7 + 2) = v38[2];
  *(v7 + 3) = v11;
  switch(a3)
  {
    case 0:
      v12 = a1;
      [a2 maxWidth];
      v14 = v13;
      v15 = [a2 maxPossibleImageCount];
      v16 = &v3[OBJC_IVAR___SLHighlightPillMetrics_metrics];
      v16[3] = &type metadata for iOSPillMetric;
      v16[4] = &protocol witness table for iOSPillMetric;
      goto LABEL_13;
    case 1:
      v19 = a1;
      [a2 maxWidth];
      v14 = v26;
      v15 = [a2 maxPossibleImageCount];
      v21 = &v3[OBJC_IVAR___SLHighlightPillMetrics_metrics];
      v21[3] = &type metadata for iOSPillMetric;
      v21[4] = &protocol witness table for iOSPillMetric;
      goto LABEL_15;
    case 2:
      v12 = a1;
      [a2 maxWidth];
      v14 = v23;
      v15 = [a2 maxPossibleImageCount];
      v16 = &v3[OBJC_IVAR___SLHighlightPillMetrics_metrics];
      v16[3] = &type metadata for MacPillMetric;
      v16[4] = &protocol witness table for MacPillMetric;
      goto LABEL_13;
    case 3:
      v19 = a1;
      [a2 maxWidth];
      v14 = v24;
      v15 = [a2 maxPossibleImageCount];
      v21 = &v3[OBJC_IVAR___SLHighlightPillMetrics_metrics];
      v21[3] = &type metadata for MacPillMetric;
      v21[4] = &protocol witness table for MacPillMetric;
      goto LABEL_15;
    case 4:
      v12 = a1;
      [a2 maxWidth];
      v14 = v18;
      v15 = [a2 maxPossibleImageCount];
      v16 = &v3[OBJC_IVAR___SLHighlightPillMetrics_metrics];
      v16[3] = &type metadata for MacSafariBannerPillMetrics;
      v16[4] = &protocol witness table for MacSafariBannerPillMetrics;
      goto LABEL_13;
    case 5:
      v19 = a1;
      [a2 maxWidth];
      v14 = v27;
      v15 = [a2 maxPossibleImageCount];
      v21 = &v3[OBJC_IVAR___SLHighlightPillMetrics_metrics];
      v21[3] = &type metadata for MacSafariBannerPillMetrics;
      v21[4] = &protocol witness table for MacSafariBannerPillMetrics;
      goto LABEL_15;
    case 6:
      v12 = a1;
      [a2 maxWidth];
      v14 = v28;
      v15 = [a2 maxPossibleImageCount];
      v16 = &v3[OBJC_IVAR___SLHighlightPillMetrics_metrics];
      v16[3] = &type metadata for iOSSafariBannerPillMetrics;
      v16[4] = &protocol witness table for iOSSafariBannerPillMetrics;
      goto LABEL_13;
    case 7:
      v19 = a1;
      [a2 maxWidth];
      v14 = v25;
      v15 = [a2 maxPossibleImageCount];
      v21 = &v3[OBJC_IVAR___SLHighlightPillMetrics_metrics];
      v21[3] = &type metadata for iOSSafariBannerPillMetrics;
      v21[4] = &protocol witness table for iOSSafariBannerPillMetrics;
      goto LABEL_15;
    case 8:
      v32 = a1;
      [a2 maxWidth];
      v34 = v33;
      v35 = [a2 maxPossibleImageCount];
      v36 = &v3[OBJC_IVAR___SLHighlightPillMetrics_metrics];
      *v36 = v32;
      *(v36 + 1) = v34;
      *(v36 + 3) = &type metadata for TVPillMetrics;
      *(v36 + 4) = &protocol witness table for TVPillMetrics;
      *(v36 + 2) = v35;
      goto LABEL_17;
    case 9:
      v12 = a1;
      [a2 maxWidth];
      v14 = v22;
      v15 = [a2 maxPossibleImageCount];
      v16 = &v3[OBJC_IVAR___SLHighlightPillMetrics_metrics];
      v16[3] = &type metadata for VisionPillMetric;
      v16[4] = &protocol witness table for VisionPillMetric;
      goto LABEL_13;
    case 10:
      v19 = a1;
      [a2 maxWidth];
      v14 = v30;
      v15 = [a2 maxPossibleImageCount];
      v21 = &v3[OBJC_IVAR___SLHighlightPillMetrics_metrics];
      v21[3] = &type metadata for VisionPillMetric;
      v21[4] = &protocol witness table for VisionPillMetric;
      goto LABEL_15;
    case 11:
      v12 = a1;
      [a2 maxWidth];
      v14 = v17;
      v15 = [a2 maxPossibleImageCount];
      v16 = &v3[OBJC_IVAR___SLHighlightPillMetrics_metrics];
      v16[3] = &type metadata for VisionSafariBannerPillMetric;
      v16[4] = &protocol witness table for VisionSafariBannerPillMetric;
LABEL_13:
      v29 = swift_allocObject();
      *v16 = v29;
      *(v29 + 16) = v12;
      *(v29 + 24) = 0;
      goto LABEL_16;
    case 12:
      v19 = a1;
      [a2 maxWidth];
      v14 = v20;
      v15 = [a2 maxPossibleImageCount];
      v21 = &v3[OBJC_IVAR___SLHighlightPillMetrics_metrics];
      v21[3] = &type metadata for VisionSafariBannerPillMetric;
      v21[4] = &protocol witness table for VisionSafariBannerPillMetric;
LABEL_15:
      v29 = swift_allocObject();
      *v21 = v29;
      *(v29 + 16) = v19;
      *(v29 + 24) = 1;
LABEL_16:
      *(v29 + 32) = v14;
      *(v29 + 40) = v15;
LABEL_17:
      *&v3[OBJC_IVAR___SLHighlightPillMetrics_style] = a1;
      *&v3[OBJC_IVAR___SLHighlightPillMetrics_tag] = a2;
      *&v3[OBJC_IVAR___SLHighlightPillMetrics_variant] = a3;
      v37.receiver = v3;
      v37.super_class = type metadata accessor for PillMetrics();
      result = objc_msgSendSuper2(&v37, sel_init);
      break;
    default:
      type metadata accessor for SLHighlightPillMetricVariant(0);
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}